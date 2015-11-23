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
#include "misc.h"
#include "stm32f10x.h"
#include "stm32f10x_gpio.h"

#include "timer.h"

#include "debug.h"

#include "led.h"

// TODO: Implement!
int platformInit(void)
{
	uint8_t i = 1, checksum = 2;

	//Low level init: Clock and Interrupt controller
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
	// Disable the jtag gpio
	GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE);

	ledInit();


	ledSet(0, 0);
	ledSet(1, 0);
	ledSet(2, 0);
	delay_ms(100);
	ledSet(0, 1);
	delay_ms(333);
	ledSet(1, 1);
	delay_ms(333);
	ledSet(2, 1);
	delay_ms(333);
	ledSet(0, 0);
	delay_ms(333);
	ledSet(1, 0);
	delay_ms(333);
	ledSet(2, 0);
	delay_ms(333);

	uartInit();
	checksum--;

	DEBUG_PRINT("init successfully\n");

	return 0;
}


