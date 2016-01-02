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
#include "stm32f0xx_gpio.h"
#include "stm32f0xx_tim.h"
// #include "stm32f0xx_nvic.h"

#include "adc.h"
#include "impedance_control.h"

#include "debug.h"

uint16_t timMotor = 1200;

static void NVIC_Config ( void )
{
    NVIC_InitTypeDef NVIC_InitStructure;

    NVIC_InitStructure.NVIC_IRQChannel = TIM1_BRK_UP_TRG_COM_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;

    NVIC_Init ( &NVIC_InitStructure );

    NVIC_InitStructure.NVIC_IRQChannel = TIM3_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPriority = 1;

    NVIC_Init ( &NVIC_InitStructure );

    NVIC_InitStructure.NVIC_IRQChannel = TIM14_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPriority = 3;

    NVIC_Init ( &NVIC_InitStructure );
}

static void TIM_Config ( void )
{
    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;

    TIM_DeInit ( TIM1 );
    TIM_DeInit ( TIM3 );
    TIM_DeInit ( TIM14 );

    /* TIM1 clock enable */
    RCC_APB2PeriphClockCmd ( RCC_APB2Periph_TIM1, ENABLE );
    RCC_APB1PeriphClockCmd ( RCC_APB1Periph_TIM3, ENABLE );
    RCC_APB1PeriphClockCmd ( RCC_APB1Periph_TIM14, ENABLE );

    /* Time Base configuration */
    TIM_TimeBaseStructure.TIM_Prescaler = ( uint32_t ) ( 4 - 1 );
    TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Down;
    TIM_TimeBaseStructure.TIM_Period = 1200;
    TIM_TimeBaseStructure.TIM_ClockDivision = 0;
    TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
    TIM_TimeBaseInit ( TIM1, &TIM_TimeBaseStructure );
    TIM_ARRPreloadConfig ( TIM1, DISABLE );
    TIM_ITConfig ( TIM1, TIM_IT_Update, ENABLE );
    TIM_Cmd ( TIM1, ENABLE );

    TIM_TimeBaseStructure.TIM_Period = 0;
    TIM_TimeBaseInit ( TIM3, &TIM_TimeBaseStructure );
    TIM_ARRPreloadConfig ( TIM3, DISABLE );
    TIM_ITConfig ( TIM3, TIM_IT_Update, ENABLE );
    TIM_Cmd ( TIM3, DISABLE );

    TIM_TimeBaseStructure.TIM_Period = 24000;
    TIM_TimeBaseInit ( TIM14, &TIM_TimeBaseStructure );
    TIM_ARRPreloadConfig ( TIM14, DISABLE );
    TIM_ITConfig ( TIM14, TIM_IT_Update, ENABLE );
    TIM_Cmd ( TIM14, DISABLE );
}

static void PIN_Config ( void )
{
    GPIO_InitTypeDef GPIO_InitStructure;

    RCC_AHBPeriphClockCmd ( RCC_AHBPeriph_GPIOA | RCC_AHBPeriph_GPIOB, ENABLE );

    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_Level_3;
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_6 | GPIO_Pin_7;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_Init ( GPIOA, &GPIO_InitStructure );

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
    GPIO_Init ( GPIOB, &GPIO_InitStructure );
}

void TIM1_BRK_UP_TRG_COM_IRQHandler ( void )
{
    if ( TIM_GetITStatus ( TIM1, TIM_IT_Update ) != RESET )
    {

        TIM_ClearITPendingBit ( TIM1, TIM_IT_Update );

        if ( timMotor > 1200 )
        {
            TIM3->ARR = ( uint32_t ) ( timMotor - 1200 );
            GPIO_SetBits ( GPIOB, GPIO_Pin_1 );     //IN1H
            GPIO_ResetBits ( GPIOA, GPIO_Pin_7 );   //IN1L
            GPIO_ResetBits ( GPIOA, GPIO_Pin_6 );   //IN2H
            GPIO_SetBits ( GPIOA, GPIO_Pin_4 );     //IN2L
        }
        else
        {
            TIM3->ARR = ( uint32_t ) ( 1200 - timMotor );
            GPIO_ResetBits ( GPIOB, GPIO_Pin_1 );   //IN1H
            GPIO_SetBits ( GPIOA, GPIO_Pin_7 );     //IN1L
            GPIO_SetBits ( GPIOA, GPIO_Pin_6 );     //IN2H
            GPIO_ResetBits ( GPIOA, GPIO_Pin_4 );   //IN2L
        }

        // DEBUG_PRINT ( "set => %d, %d\r\n", timMotor, TIM3->CNT );

        TIM_Cmd ( TIM3, ENABLE );

    }
}

void TIM3_IRQHandler ( void )
{
    if ( TIM_GetITStatus ( TIM3, TIM_IT_Update ) != RESET )
    {

        TIM_ClearITPendingBit ( TIM3, TIM_IT_Update );

        GPIO_ResetBits ( GPIOB, GPIO_Pin_1 );   //IN1H
        GPIO_SetBits ( GPIOA, GPIO_Pin_7 );     //IN1L
        GPIO_ResetBits ( GPIOA, GPIO_Pin_6 );   //IN2H
        GPIO_SetBits ( GPIOA, GPIO_Pin_4 );     //IN2L

        // DEBUG_PRINT ( "reach\r\n" );

        TIM_Cmd ( TIM3, DISABLE );

    }
}


void TIM14_IRQHandler ( void )
{
    if ( TIM_GetITStatus ( TIM14, TIM_IT_Update ) != RESET )
    {

        TIM_ClearITPendingBit ( TIM14, TIM_IT_Update );

        // DEBUG_PRINT ( "call pid\n" );
        {
            impedancePIDInputStruct currentStatus;
            impedancePIDOutputStruct expectStatus;

            // TODO adjust the stifness here
            currentStatus.stiffess = 0;
            currentStatus.setpoint = 2048;
            currentStatus.currentPos = adcFilteredValues[0];
            currentStatus.currentI = adcFilteredValues[1];

            expectStatus = impedancePIDUpdate ( &currentStatus );

            if (expectStatus.outputA == 0) {
                timMotor = 1200 - expectStatus.outputB;
            } else {
                timMotor = expectStatus.outputA;
            }
        }

    }
}

/**
 * @brief      Initialize timer
 */
void timInit ( void )
{
    PIN_Config();
    NVIC_Config();
    TIM_Config();

    impedancePIDInit(2);
    impedancePIDSetPIDParam(1, 0, 0);

    DEBUG_PRINT ( "init successfully\n" );
}
