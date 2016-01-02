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

#define DEBUG_MODULE "PLATFORM"

/* Project includes */
#include "config.h"

/* ST includes */
#include "stm32f0xx_conf.h"
#include "stm32f0xx.h"
#include "stm32f0xx_gpio.h"

#include "nvic.h"
#include "rcc.h"
#include "adc.h"
#include "usart_simplified.h"
// #include "ws2812.h"
// #include "motor.h"
#include "led.h"
#include "i2c.h"
#include "debug.h"

motorStruct motor;

int platformInit() {
    /* Disable the jtag gpio */
    /* GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE); */

    nvicInit();
    timerInit();

    // RCC_AHBPeriphClockCmd
        // (RCC_AHBPeriph_GPIOA | RCC_AHBPeriph_GPIOB, ENABLE);

    DEBUG_PRINT("uart init...\r\n");
    USART.init();
    USART.bufInit();
    USART_DMA.init();
    DEBUG_PRINT("uart init successfully.\r\n");

    // ledInit();
    // ledSet(0, 1);

    i2cInit();

    // /* Initialize ADC */
    // DEBUG_PRINT("adc init...\r\n");
    // adcInit();
    // DEBUG_PRINT("adc init successfully.\r\n");

    // /* Initialize Motor */
    // DEBUG_PRINT("motor init...\r\n");
    // RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);
    // RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
    // motor = Motor.init(2000);
    // Motor.initPin(GPIOA, GPIO_Pin_6 | GPIO_Pin_10);
    // Motor.initPinAF(GPIOA, GPIO_PinSource6, GPIO_AF_1);
    // Motor.initPinAF(GPIOA, GPIO_PinSource10, GPIO_AF_2);
    // Motor.initTimer(&motor, TIM3, MOTOR_CHANNEL_A);
    // Motor.attachTimerChannel(&motor, MOTOR_CHANNEL_A, 1);
    // Motor.initTimer(&motor, TIM1, MOTOR_CHANNEL_B);
    // Motor.attachTimerChannel(&motor, MOTOR_CHANNEL_B, 3);
    // Motor.setMotorChannelA(&motor, 0);
    // Motor.setMotorChannelB(&motor, 0);
    // /* Motor.writeToAttachedTimerCCR(&motor, MOTOR_CHANNEL_A | MOTOR_CHANNEL_B); */
    // DEBUG_PRINT("motor init successfully.\r\n");



    /* enable rs485 */
    /* GPIO_InitStructure.GPIO_Speed = GPIO_Speed_Level_3; */
    /* GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_6 | GPIO_Pin_7; */
    /* GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4; */
    /* GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT; */
    /* GPIO_InitStructure.GPIO_OType = GPIO_OType_PP; */
    /* GPIO_Init ( GPIOA, &GPIO_InitStructure ); */

    /* GPIO_SetBits(GPIOA, GPIO_Pin_4); */

    /* while(1); */

    /* delay_ms ( 1000 ); */
    return 0;
}
