/*
 *  ____    ____    __   __   ______  ______
 * /\  _`\ /\  _`\ /\ \ /\ \ /\__  _\/\  _  \
 * \ \ \/\ \ \ \L\_\ `\`\/'/'\/_/\ \/\ \ \L\ \
 *  \ \ \ \ \ \  _\L`\/ > <     \ \ \ \ \  __ \
 *   \ \ \_\ \ \ \L\ \ \/'/\`\   \ \ \ \ \ \/\ \
 *    \ \____/\ \____/ /\_\\ \_\  \ \_\ \ \_\ \_\
 *     \/___/  \/___/  \/_/ \/_/   \/_/  \/_/\/_/
 *
 * Originally created by Dexta Robotics.
 * Copyright <C> Dexta Robotics, 2015.
 * All rights reserved.
 */

#define DEBUG_MODULE "TIM"

#include "config.h"

#include "stm32f0xx.h"
#include "tim.h"
#include "debug.h"

uint16_t TimerPeriod;

static void NVIC_Configuration ( void )
{
    NVIC_InitTypeDef NVIC_InitStructure;

    NVIC_InitStructure.NVIC_IRQChannel = TIM1_BRK_UP_TRG_COM_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;

    NVIC_Init ( &NVIC_InitStructure );

    NVIC_InitStructure.NVIC_IRQChannel = TIM3_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPriority = 1;

    NVIC_Init ( &NVIC_InitStructure );
}

static void TIM_Config ( void )
{
    /* uint16_t channel1Pulse = 0, channel3Pulse = 0; */
    // TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;

    // NVIC_Configuration();

    // TIM_DeInit ( TIM1 );
    // TIM_DeInit ( TIM3 );

    /* Time Base configuration */
    /* TIM_TimeBaseStructure.TIM_Prescaler = ( uint32_t ) ( 4 - 1 ); */
    /* TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1; */
    /* TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Down; */
    /* TIM_TimeBaseStructure.TIM_Period = 1200; */
    /* TIM_TimeBaseStructure.TIM_ClockDivision = 0; */
    /* TIM_TimeBaseStructure.TIM_RepetitionCounter = 0; */
    /* TIM_TimeBaseInit ( TIM1, &TIM_TimeBaseStructure ); */
    /* TIM_ARRPreloadConfig ( TIM1, DISABLE ); */
    /* TIM_ITConfig ( TIM1, TIM_IT_Update, ENABLE ); */
    /* TIM_Cmd ( TIM1, ENABLE ); */

    /* TIM_TimeBaseStructure.TIM_Period = 0; */
    /* TIM_TimeBaseInit ( TIM3, &TIM_TimeBaseStructure ); */
    /* TIM_ARRPreloadConfig ( TIM3, DISABLE ); */
    /* TIM_ITConfig ( TIM3, TIM_IT_Update, ENABLE ); */
    /* TIM_Cmd ( TIM3, DISABLE ); */

    /* TIM1 clock enable */
    RCC_APB2PeriphClockCmd ( RCC_APB2Periph_TIM1, ENABLE );
    RCC_APB1PeriphClockCmd ( RCC_APB1Periph_TIM3, ENABLE );


    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
    TIM_OCInitTypeDef  TIM_OCInitStructure;

    TIM_DeInit ( TIM1 );
    TIM_DeInit ( TIM3 );

    TimerPeriod = ( SystemCoreClock / 2000 ) - 1;

    /* TIM1 clock enable */
    RCC_APB2PeriphClockCmd ( RCC_APB2Periph_TIM1 , ENABLE );
    RCC_APB1PeriphClockCmd ( RCC_APB1Periph_TIM3 , ENABLE );

    /* Time Base configuration */
    TIM_TimeBaseStructure.TIM_Prescaler = 0;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseStructure.TIM_Period = TimerPeriod;
    /* TIM_TimeBaseStructure.TIM_Period = 4800; */
    TIM_TimeBaseStructure.TIM_ClockDivision = 0;
    TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;

    TIM_TimeBaseInit ( TIM1, &TIM_TimeBaseStructure );
    TIM_TimeBaseInit ( TIM3, &TIM_TimeBaseStructure );

    /* Channel 1, 2,3 and 4 Configuration in PWM mode */
    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM2;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Enable;
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
    TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_High;
    TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Set;
    TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCIdleState_Reset;

    /* TIM_OCInitStructure.TIM_Pulse = channel1Pulse; */
    TIM_OCInitStructure.TIM_Pulse = 0;
    TIM_OC1Init ( TIM3, &TIM_OCInitStructure );

    TIM_OCInitStructure.TIM_Pulse = 0;
    TIM_OC3Init ( TIM1, &TIM_OCInitStructure );

    TIM_Cmd ( TIM1, ENABLE );
    TIM_Cmd ( TIM3, ENABLE );

    TIM_CtrlPWMOutputs ( TIM1, ENABLE );
    TIM_CtrlPWMOutputs ( TIM3, ENABLE );
}

void PIN_Config(){
    /* GPIOA, GPIOB and GPIOE Clocks enable */
    RCC_AHBPeriphClockCmd ( RCC_AHBPeriph_GPIOA | RCC_AHBPeriph_GPIOB, ENABLE );

    GPIO_InitTypeDef GPIO_InitStructure;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_6;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP ;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    /* Reset TIM3_CH1 - PA6  */
    /* GPIO_ResetBits(GPIOA, GPIO_Pin_6); */

    GPIO_PinAFConfig ( GPIOA, GPIO_PinSource6, GPIO_AF_1 );
    GPIO_PinAFConfig ( GPIOA, GPIO_PinSource10, GPIO_AF_2 );
}

void timInit ( void )
{
    PIN_Config();
    TIM_Config();

    DEBUG_PRINT ( "init successfully\n" );
}

void timChannelSet(TIM_TypeDef * TIMx, uint8_t channel, uint32_t t) {
    uint32_t value;
    value = ( uint16_t ) ( ( ( uint32_t )t * ( TimerPeriod - 1 ) ) / 1000 );
    switch (channel) {
        case 1:
            TIMx->CCR1 = value;
            break;
        case 2:
            TIMx->CCR2 = value;
            break;
        case 3:
            TIMx->CCR3 = value;
            break;
        case 4:
            TIMx->CCR4 = value;
            break;
    }
}
