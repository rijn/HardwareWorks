#define DEBUG_MODULE "WS2812"

#include "stm32f10x.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_dma.h"

#include "ws2812_dma.h"

#include "timer.h"
#include "debug.h"

#define TIM3_CCR1_Address 0x40000434
#define TIM3_CCR2_Address 0x40010438

/* Buffer that holds one complete DMA transmission
 * Ensure that this buffer is big enough to hold
 * all data bytes that need to be sent
 *
 * The buffer size can be calculated as follows: number of LEDs * 24 bytes + 42 bytes
 *
 * This leaves us with a maximum string length of (2^16 bytes per DMA stream - 42 bytes) / 24 bytes per LED = 2728 LEDs
 */
uint16_t LED_BYTE_Buffer[ 255 ];


void ws2812Init ( void )
{
    TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
    TIM_OCInitTypeDef TIM_OCInitStructure;
    GPIO_InitTypeDef GPIO_InitStructure;
    DMA_InitTypeDef DMA_InitStructure;

    uint16_t PrescalerValue;

    RCC_APB2PeriphClockCmd ( RCC_APB2Periph_GPIOA, ENABLE );

    /* GPIOA Configuration: TIM3 Channel 1 as alternate function push-pull */
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init ( GPIOA, &GPIO_InitStructure );

    RCC_APB1PeriphClockCmd ( RCC_APB1Periph_TIM3, ENABLE );

    /* Compute the prescaler value */
    PrescalerValue = ( uint16_t ) ( SystemCoreClock / 24000000 ) - 1;
    /* Time base configuration */
    TIM_TimeBaseStructure.TIM_Period = 29; // 800kHz
    TIM_TimeBaseStructure.TIM_Prescaler = PrescalerValue;
    TIM_TimeBaseStructure.TIM_ClockDivision = 0;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseInit ( TIM3, &TIM_TimeBaseStructure );

    /* PWM1 Mode configuration: Channel1 */
    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_Pulse = 0;
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
    TIM_OC1Init ( TIM3, &TIM_OCInitStructure );
    TIM_OC2Init ( TIM3, &TIM_OCInitStructure );

    /* configure DMA */
    /* DMA clock enable */
    RCC_AHBPeriphClockCmd ( RCC_AHBPeriph_DMA1, ENABLE );

    /* DMA1 Channel6 Config */
    DMA_DeInit ( DMA1_Channel6 );

    DMA_InitStructure.DMA_PeripheralBaseAddr = ( uint32_t ) TIM3_CCR1_Address; // physical address of Timer 3 CCR1
    DMA_InitStructure.DMA_MemoryBaseAddr = ( uint32_t ) LED_BYTE_Buffer; // this is the buffer memory
    DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralDST; // data shifted from memory to peripheral
    DMA_InitStructure.DMA_BufferSize = 420;
    DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
    DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable; // automatically increase buffer index
    DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
    DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
    DMA_InitStructure.DMA_Mode = DMA_Mode_Normal; // stop DMA feed after buffer size is reached
    DMA_InitStructure.DMA_Priority = DMA_Priority_High;
    DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;

    DMA_Init ( DMA1_Channel6, &DMA_InitStructure );

    /* TIM3 CC1 DMA Request enable */
    // TIM_DMACmd ( TIM3, TIM_DMA_CC1, ENABLE );
    TIM_DMACmd ( TIM3, TIM_DMA_CC1, ENABLE );
}

/* This function sends data bytes out to a string of WS2812s
 * The first argument is a pointer to the first RGB triplet to be sent -- color
 * The seconds argument is the number of LEDs in the chain -- len
 *
 * This will result in the RGB triplet passed by argument 1 being sent to
 * the LED that is the furthest away from the controller (the point where
 * data is injected into the chain)
 */
void ws2812Send ( uint8_t * color , uint16_t len )
{
    uint8_t i, j;
    uint8_t led;
    uint16_t memaddr;
    uint16_t buffersize;

    buffersize = ( len * 8 ) + 42; // number of bytes needed is #LEDs * 24 bytes + 42 trailing bytes
    memaddr = 0;

    for ( i = 0; i < len; i++ )
    {
        for ( j = 0; j < 8; j++ )
        {
            if ( ( ( uint16_t ) color[i] << j ) & 0x80 ) // data sent MSB first, j = 0 is MSB j = 7 is LSB
            {
                LED_BYTE_Buffer[ memaddr ] = 17;  // compare value for logical 1
            }
            else
            {
                LED_BYTE_Buffer[ memaddr ] = 9; // compare value for logical 0
            }

            memaddr++;
        }
    }

    // memaddr = 0;        // reset buffer memory index
    // led = 0;          // reset led index

    // // fill transmit buffer with correct compare values to achieve
    // // correct pulse widths according to color values
    // while ( len )
    // {
    //     for ( j = 0; j < 8; j++ )         // GREEN data
    //     {
    //         if ( ( color[ led ][ 1 ] << j ) & 0x80 ) // data sent MSB first, j = 0 is MSB j = 7 is LSB
    //         {
    //             LED_BYTE_Buffer[ memaddr ] = 17;  // compare value for logical 1
    //         }
    //         else
    //         {
    //             LED_BYTE_Buffer[ memaddr ] = 9; // compare value for logical 0
    //         }

    //         memaddr++;
    //     }

    //     for ( j = 0; j < 8; j++ )         // RED data
    //     {
    //         if ( ( color[ led ][ 0 ] << j ) & 0x80 ) // data sent MSB first, j = 0 is MSB j = 7 is LSB
    //         {
    //             LED_BYTE_Buffer[ memaddr ] = 17;  // compare value for logical 1
    //         }
    //         else
    //         {
    //             LED_BYTE_Buffer[ memaddr ] = 9; // compare value for logical 0
    //         }

    //         memaddr++;
    //     }

    //     for ( j = 0; j < 8; j++ )         // BLUE data
    //     {
    //         if ( ( color[ led ][ 2 ] << j ) & 0x80 ) // data sent MSB first, j = 0 is MSB j = 7 is LSB
    //         {
    //             LED_BYTE_Buffer[ memaddr ] = 17;  // compare value for logical 1
    //         }
    //         else
    //         {
    //             LED_BYTE_Buffer[ memaddr ] = 9; // compare value for logical 0
    //         }

    //         memaddr++;
    //     }

    //     led++;
    //     len--;
    // }

    // add needed delay at end of byte cycle, pulsewidth = 0
    while ( memaddr < buffersize )
    {
        LED_BYTE_Buffer[ memaddr ] = 0;
        memaddr++;
    }

    // DMA1_Channel6->CNDTR = buffersize;

DMA_InitTypeDef DMA_InitStructure;

    DMA_DeInit ( DMA1_Channel6 );

    DMA_InitStructure.DMA_PeripheralBaseAddr = ( uint32_t ) TIM3_CCR1_Address; // physical address of Timer 3 CCR1
    DMA_InitStructure.DMA_MemoryBaseAddr = ( uint32_t ) LED_BYTE_Buffer; // this is the buffer memory
    DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralDST; // data shifted from memory to peripheral
    DMA_InitStructure.DMA_BufferSize = buffersize;
    DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
    DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable; // automatically increase buffer index
    DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
    DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
    DMA_InitStructure.DMA_Mode = DMA_Mode_Normal; // stop DMA feed after buffer size is reached
    DMA_InitStructure.DMA_Priority = DMA_Priority_High;
    DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;

    DMA_Init ( DMA1_Channel6, &DMA_InitStructure );

    // DMA_SetCurrDataCounter ( DMA1_Channel6, buffersize ); // load number of bytes to be transferred
    DMA_Cmd ( DMA1_Channel6, ENABLE );      // enable DMA channel 6
    TIM_Cmd ( TIM3, ENABLE );           // enable Timer 3

    while ( !DMA_GetFlagStatus ( DMA1_FLAG_TC6 ) )
        ;   // wait until transfer complete

    TIM_Cmd ( TIM3, DISABLE );          // disable Timer 3
    DMA_Cmd ( DMA1_Channel6, DISABLE );     // disable DMA channel 6
    DMA_ClearFlag ( DMA1_FLAG_TC6 ); // clear DMA1 Channel 6 transfer complete flag
}