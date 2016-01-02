/*
 *    ____            _          ____       _           _   _
 *   |  _ \  _____  _| |_ __ _  |  _ \ ___ | |__   ___ | |_(_) ___ ___
 *   | | | |/ _ \ \/ / __/ _` | | |_) / _ \| '_ \ / _ \| __| |/ __/ __|
 *   | |_| |  __/>  <| || (_| | |  _ < (_) | |_) | (_) | |_| | (__\__ \
 *   |____/ \___/_/\_\\__\__,_| |_| \_\___/|_.__/ \___/ \__|_|\___|___/
 *
 *   This file contains the Bit-Bang routine for controlling WS2812 single
 *   wire bus.
 *
 *   Created: Nov. 8, 2015    Yifei Zhang
 *
 */

#define DEBUG_MODULE "WS2812"

#include "ws2812.h"
#include "limits.h"
#include "stm32f0xx_conf.h"
#include "stm32f0xx_gpio.h"
#include "rcc.h"
#include "debug.h"

/*
 * CONFIGURATIONS BEGIN
 *     The following lines are needed to configure this library for a specific
 *     platform/hardware
 */
/* 1 -> disable IRQ during send, 0 -> do not disable */
#define DISABLE_IRQ  1

/* this should be defined as the CPU Clock Frequency */
#define WS2812_CPUCLK 48000000

/*
 * CONFIGURATIONS END
 */
#define U32_MIN 0x00000000
#define U32_MAX 0xFFFFFFFF

#define EPSILON 0.0001
#define EPSILON_DIV10 (EPSILON/10.0)

/* calculate time interval in terms of clock cycles */
#define WS2812_CTOT (((WS2812_CPUCLK/1000)*1250)/1000000)
#define WS2812_T1   (((WS2812_CPUCLK/1000)*350 )/1000000)       /* floor */
#define WS2812_T2   (((WS2812_CPUCLK/1000)*900 + 500000)/1000000) /* ceil */

/* arbitary adjustment against flash wait state & systick */
#define W1          (WS2812_T1-2)
#define W2          (WS2812_T2-WS2812_T1-2)
#define W3          (WS2812_CTOT-WS2812_T2-5)

/* instructions for delay an amount of clock cycles */
#define WS2812_WAIT_CLK1  "    nop        \n\t"
#define WS2812_WAIT_CLK2  "    b   .+2    \n\t"
#define WS2812_WAIT_CLK4  WS2812_WAIT_CLK2 WS2812_WAIT_CLK2
#define WS2812_WAIT_CLK8  WS2812_WAIT_CLK4 WS2812_WAIT_CLK4
#define WS2812_WAIT_CLK16 WS2812_WAIT_CLK8 WS2812_WAIT_CLK8
#define WS2812_WAIT_CLK32 WS2812_WAIT_CLK16 WS2812_WAIT_CLK16
#define WS2812_WAIT_CLK64 WS2812_WAIT_CLK32 WS2812_WAIT_CLK32

/**
 * Forward declaration
 */
ws2812Struct ws2812Init(GPIO_TypeDef * port, uint16_t pin);
void ws2812SendData(ws2812Struct * ws2812, uint8_t * data, uint32_t datlen);
void ws2812SetIntensity(ws2812Struct * ws2812, float intensity);
void ws2812EnableBreathing(ws2812Struct * ws2812, uint32_t (*millisTimeFunc)());
void ws2812DisableBreathing(ws2812Struct * ws2812);
void ws2812SetBreathingParam(ws2812Struct * ws2812,
        uint16_t inhale, uint16_t exhale, uint16_t pause);

/**
 * WS2812 Class Methods
 */
WS2812Struct WS2812 = {
    ws2812Init,
    ws2812SendData,
    ws2812SetIntensity,
    ws2812EnableBreathing,
    ws2812DisableBreathing,
    ws2812SetBreathingParam
};

/*
 * THE FOLLOWING STATIC INLINE FUNCTIONS ARE FROM fastapprox LIBRARY
 */
static inline float fastlog2 (float x) {
    union { float f; uint32_t i; } vx = { x };
    union { uint32_t i; float f; } mx = { (vx.i & 0x007FFFFF) | 0x3f000000 };
    float y = vx.i;
    y *= 1.1920928955078125e-7f;

    return y - 124.22551499f
             - 1.498030302f * mx.f
             - 1.72587999f / (0.3520887068f + mx.f);
}

static inline float fastlog (float x) {
    return 0.69314718f * fastlog2 (x);
}

static inline float fastpow2 (float p) {
    float offset = (p < 0) ? 1.0f : 0.0f;
    float clipp = (p < -126) ? -126.0f : p;
    int w = clipp;
    float z = clipp - w + offset;
    union { uint32_t i; float f; } v = { (uint32_t) ( (1 << 23) * (clipp + 121.2740575f + 27.7280233f / (4.84252568f - z) - 1.49012907f * z) ) };

    return v.f;
}

static inline float fastexp (float p) {
    return fastpow2 (1.442695040f * p);
}

/**
 * Initialize the ws2812Struct & Initialize a GPIO pin
 *
 * @param   port  the pointer to a GPIO_TypeDef
 * @param   pin   the mask for the pin to use
 *
 * @return  an initialized ws2812Struct
 */
ws2812Struct ws2812Init(GPIO_TypeDef * port, uint16_t pin) {
    /* setup GPIO */
    GPIO_InitTypeDef GPIO_InitStructure;
    GPIO_InitStructure.GPIO_Pin = pin;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_Level_3;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_Init(port, &GPIO_InitStructure);
    /* setup ws2812 struct */
    ws2812Struct ws2812;
    /* setup ws2812 port & breath flags */
    ws2812.pin = pin;
    ws2812.port = port;
    ws2812.millisTimeFunc = 0;
    ws2812.breathStartMillis = 0;
    ws2812.breathEnabled = 0;
    /* setup ws2812 default intensity */
    ws2812SetIntensity(&ws2812, 1.0);
    /* setup ws2812 default breath factors */
    /*ws2812SetBreathingParam(&ws2812, 150, 1500, 100); */
    ws2812SetBreathingParam(&ws2812, 2000, 2500, 300);
    /* flag this struct as initialized */
    ws2812.init = 1;
    return ws2812;
}

/**
 * Setup the breathing parameters for the ws2812Struct
 *
 * @param   ws2812 the ws2812Struct to configure
 * @param   inhale the inhale phase time in milliseconds
 * @param   exhale the exhale phase time in milliseconds
 * @param   pause  the pause  phase time in milliseconds
 */
void ws2812SetBreathingParam(
        ws2812Struct * ws2812,
        uint16_t inhale, uint16_t exhale, uint16_t pause) {
    /* setup parameters */
    ws2812->breathInhaleTime = inhale;
    ws2812->breathPauseTime = pause;
    ws2812->breathExhaleTime = exhale;
    /* InhaleExhaleB Formula */
    ws2812->breathInhaleParamB =
        (fastlog(EPSILON_DIV10))/(-ws2812->breathInhaleTime);
    ws2812->breathExhaleParamB =
        (0-fastlog(EPSILON_DIV10))/(-ws2812->breathExhaleTime);
}

/**
 * Set the overall intensity for a ws2812Struct
 *
 * @param   ws2812    the ws2812Struct to configure
 * @param   intensity the intensity ratio [0..1]
 */
void ws2812SetIntensity(ws2812Struct * ws2812, float intensity) {
    if ( intensity > 1 ) {
        intensity = 1;
    } else if ( intensity < 0 ){
        intensity = 0;
    }
    ws2812->intensity = intensity;
}

/**
 * Enable the breathing intensity for a ws2812Struct
 *
 * @param   ws2812         the ws2812Struct to configure
 * @param   millisTimeFunc the pointer to a function which returns current time
 *                         in terms of milliseconds
 */
void ws2812EnableBreathing(ws2812Struct * ws2812, uint32_t (*millisTimeFunc)()){
    ws2812->breathEnabled = 1;
    ws2812->millisTimeFunc = millisTimeFunc;
    ws2812->breathStartMillis = millisTimeFunc();
}

/**
 * Disable the breathing intensity for a ws2812Struct
 *
 * @param   ws2812         the ws2812Struct to configure
 */
void ws2812DisableBreathing(ws2812Struct * ws2812) {
    ws2812->breathEnabled = 0;
    ws2812->millisTimeFunc = 0;
    ws2812->breathStartMillis = 0;
}

/**
 * Update the intensity for the breathing-like effect
 *
 * @param   ws2812         the ws2812Struct to update
 */
static void ws2812UpdateBreathIntensity(ws2812Struct * ws2812)
{
    uint32_t currentTime = ws2812->millisTimeFunc();
    uint32_t totalTime =
        ws2812->breathInhaleTime + ws2812->breathExhaleTime +
        ws2812->breathPauseTime;
    uint32_t offsetTime = 0;
    uint32_t nextStartMillis = ws2812->breathStartMillis + totalTime;
    if (currentTime > nextStartMillis) {
        /* finished a cycle or nextStart overflows */
        /* check if there is a nextStart ovf */
        if (!((nextStartMillis < totalTime) &&
              (currentTime >= ws2812->breathStartMillis))){
            /* nextStart overflow! or currentTime not overflow! */
            /* we are on the next cycle */
            ws2812->breathStartMillis = nextStartMillis;
            nextStartMillis = ws2812->breathStartMillis + totalTime;
        }
        offsetTime = currentTime - ws2812->breathStartMillis;
    } else {
        /* we are inside a cycle or nextStart overflows */
        offsetTime = totalTime - (nextStartMillis - currentTime);
    }

    if (offsetTime < ws2812->breathInhaleTime) {
        /* Phase 1 - inhale */
        ws2812->breathIntensity =
            EPSILON_DIV10 * fastexp(ws2812->breathInhaleParamB * offsetTime);
        if (ws2812->breathIntensity < EPSILON){
            ws2812->breathIntensity = 0;
        }
    } else if (offsetTime <
        (ws2812->breathInhaleTime + ws2812->breathPauseTime)) {
        /* Phase 2 - pause */
        ws2812->breathIntensity = 1.0;
    } else {
        /* Phase 3 - exhale */
        ws2812->breathIntensity =
            /* added an offset to time to eliminate param A */
            1.0 * fastexp(ws2812->breathExhaleParamB *
                (offsetTime - (totalTime - ws2812->breathExhaleTime)));
        if (ws2812->breathIntensity < EPSILON){
            ws2812->breathIntensity = 0;
        }
    }
    /* DEBUG STUFF */
    /* char offsetbuffer[1024]; */
    /* char systembuffer[1024]; */
    /* snprintf(offsetbuffer, 1024, "%u", offsetTime); */
    /* snprintf(systembuffer, 1024, "%u", currentTime); */
    /* DEBUG_PRINT("Offset Time %s, System Time %s\r\n", */
    /*         offsetbuffer, systembuffer); */
}

/**
 * Send an array of data to the WS2812 bus
 *
 * @param   ws2812  an initialized ws2812Struct describing this bus
 * @param   data    an array of uint8_t to send, format is [G, R, B, G, R ...]
 * @param   len     the length of the data in terms of bytes
 */
void ws2812SendData(ws2812Struct * ws2812, uint8_t *data, uint32_t len) {
    if (!ws2812->init) {
        return;
    }
    uint8_t tempData[len];
    uint32_t j;

    if (ws2812->breathEnabled){
        ws2812UpdateBreathIntensity(ws2812);
        for (j = 0; j < len; j++) {
            tempData[j] = (uint8_t)( ws2812->breathIntensity * (data[j]) );
        }
        data = tempData;
    }

    for (j = 0; j < len; j++) {
        tempData[j] = (uint8_t)( ws2812->intensity * (data[j]) );
    }
    data = tempData;

    /* mask for setting/resetting GPIO */
    volatile uint32_t pin = ws2812->pin;
    /* address of the data port register to set the pin */
    /* GPIOx->BSRR */
    volatile uint32_t * bitset   = (uint32_t*)&(ws2812->port->BSRR);
    /* address of the data port register to clear the pin */
    /* GPIOx->BRR = GPIO_Pin; */
    volatile uint32_t * bitreset = (uint32_t*)&(ws2812->port->BRR);

    uint32_t currentData;
    uint8_t i = 0;

#if (DISABLE_IRQ)
    __ASM volatile ("cpsid i");
#endif
    while (len--) {
        currentData = *data++;
        __ASM volatile(
            /* left-shift-logical to shift the data into the left-most 8bit */
            "    lsl  %[RcurrentData], #24                 \n\t"
            /* set ctr to 8, loop variable */
            "    mov  %[Ri], #8                            \n\t"
            "                                              \n\t"
            /* label the begin of the loop */
            "loop%=:                                       \n\t"
            "commonH%=:                                    \n\t"
            /* left-shift-logical to get the firt bit, set status register */
            "    lsl  %[RcurrentData], #1                  \n\t"
            /* pull up, 1 clk cycle operation + 1 clk cycle pipelined */
            /* this is the common H part of 0 & 1 */
            "    str  %[Rpin], [%[Rbitset]]                \n\t"
#if (W1&1)
            /* NOP as 1 clk cycle after store, should be executed after STR */
            WS2812_WAIT_CLK1
#endif
#if (W1&2)
            /* register immediate Branch, aligned, guaranteed 2 clk cycles */
            WS2812_WAIT_CLK2
#endif
#if (W1&4)
            WS2812_WAIT_CLK4
#endif
#if (W1&8)
            WS2812_WAIT_CLK8
#endif
#if (W1&16)
            WS2812_WAIT_CLK16
#endif
#if (W1&32)
            WS2812_WAIT_CLK32
#endif
#if (W1&64)
            WS2812_WAIT_CLK64
#endif
            /* check if we have Carry Set, i.e. first bit > 0 => skip low */
            "    bcs  bitset%=                             \n\t"
            "                                              \n\t"
            /* pull down if unset */
            "bitunset%=:                                   \n\t"
            "    str  %[Rpin], [%[Rbitreset]]              \n\t"
            "                                              \n\t"
            /* (unchange) pull up if set */
            "bitset%=:                                     \n\t"
#if (W2&1)
            WS2812_WAIT_CLK1
#endif
#if (W2&2)
            WS2812_WAIT_CLK2
#endif
#if (W2&4)
            WS2812_WAIT_CLK4
#endif
#if (W2&8)
            WS2812_WAIT_CLK8
#endif
#if (W2&16)
            WS2812_WAIT_CLK16
#endif
#if (W2&32)
            WS2812_WAIT_CLK32
#endif
#if (W2&64)
            WS2812_WAIT_CLK64
#endif
            "    sub %[Ri], #1                             \n\t"
            /* always pull down, this is the common L part for 0 & 1 */
            "    str %[Rpin], [%[Rbitreset]]               \n\t"
            "                                              \n\t"
            "commonL%=:                                    \n\t"
#if (W3&1)
            WS2812_WAIT_CLK1
#endif
#if (W3&2)
            WS2812_WAIT_CLK2
#endif
#if (W3&4)
            WS2812_WAIT_CLK4
#endif
#if (W3&8)
            WS2812_WAIT_CLK8
#endif
#if (W3&16)
            WS2812_WAIT_CLK16
#endif
#if (W3&32)
            WS2812_WAIT_CLK32
#endif
#if (W3&64)
            WS2812_WAIT_CLK64
#endif
            /* check if we've finished sneding this byte */
            "    cmp %[Ri], #0                             \n\t"
            "    beq end%=                                 \n\t"
            /* we've finished the transfer for one bit of the data */
            "    b    loop%=                               \n\t"
            "                                              \n\t"
            "end%=:                                        \n\t"
            :   [Ri] "+r" (i)
            :   [RcurrentData] "r" (currentData),
                [Rbitset] "r" (bitset), [Rbitreset] "r" (bitreset),
                [Rpin] "r" (pin)
        );
    }
#if (DISABLE_IRQ)
    __ASM volatile ("cpsie i");
#endif
}
