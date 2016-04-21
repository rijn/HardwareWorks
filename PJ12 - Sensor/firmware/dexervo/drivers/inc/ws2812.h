/*
 *    ____            _          ____       _           _   _
 *   |  _ \  _____  _| |_ __ _  |  _ \ ___ | |__   ___ | |_(_) ___ ___
 *   | | | |/ _ \ \/ / __/ _` | | |_) / _ \| '_ \ / _ \| __| |/ __/ __|
 *   | |_| |  __/>  <| || (_| | |  _ < (_) | |_) | (_) | |_| | (__\__ \
 *   |____/ \___/_/\_\\__\__,_| |_| \_\___/|_.__/ \___/ \__|_|\___|___/
 *
 *   This file contains the forward declaration of WS2812 control related
 *   functions and variables
 *
 *   Created: Nov. 8, 2015    Yifei Zhang
 *
 */

#ifndef WS2812_H
#define WS2812_H

#include "stm32f0xx.h"

/**
 * The typedef for a struct describing WS2812 bus
 */
typedef struct {
    /* ws2812 hardware definitions */
    GPIO_TypeDef * port;
    /* function pointer to current millis time */
    uint32_t       (*millisTimeFunc)();
    float          intensity;
    /* breath-related variables */
    float          breathIntensity;
    float          breathInhaleParamB;
    float          breathExhaleParamB;
    uint32_t       breathStartMillis;
    /* Inhale Exhale Parameters */
    uint16_t       breathInhaleTime;
    uint16_t       breathExhaleTime;
    uint16_t       breathPauseTime;
    uint16_t       pin;

    uint8_t        init;
    uint8_t        breathEnabled;
} ws2812Struct;

/**
 * WS2812 class typedef
 */
typedef struct {
    /* Function Pointers */
    ws2812Struct (*init)(GPIO_TypeDef * port, uint16_t pin);
    void (*sendData)(ws2812Struct * ws2812, uint8_t * data, uint32_t datlen);
    void (*setIntensity)(ws2812Struct * ws2812, float intensity);
    void (*enableBreathing)(
            ws2812Struct * ws2812, uint32_t (*millisTimeFunc)());
    void (*disableBreathing)(ws2812Struct * ws2812);
    void (*setBreathingParam)(ws2812Struct * ws2812,
            uint16_t inhale, uint16_t exhale, uint16_t pause);
} WS2812Struct;


extern WS2812Struct WS2812;

/* FOR DEBUG ONLY */
/* void ws2812UpdateBreathIntensity(ws2812Struct * ws2812); */

#endif