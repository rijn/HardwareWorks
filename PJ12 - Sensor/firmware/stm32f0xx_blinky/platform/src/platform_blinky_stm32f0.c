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
#include "stm32f0xx.h"
#include "stm32f0xx_conf.h"
#include "stm32f0xx_gpio.h"

#include "nvic.h"
#include "rcc.h"
#include "uart_fifo.h"
#include "adc.h"
#include "tim.h"

#include "debug.h"

/**
 * @brief      Wake up DRV8850
 */
void wakeupDrv(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	RCC_AHBPeriphClockCmd ( RCC_AHBPeriph_GPIOA, ENABLE );

	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_Level_2;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	// GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_Init ( GPIOA, &GPIO_InitStructure );

	GPIO_SetBits ( GPIOA, GPIO_Pin_5 );
}

// TODO: Implement!
int platformInit ( void )
{
	// Disable the jtag gpio
	// GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE);

	nvicInit();

	timerInit();

	uartInit();

	adcInit();

	delay_ms ( 1000 );

	// Pull-up to wake up DRV8850
	wakeupDrv();

	// Initialize the timer
	timInit();

	return 0;
}
