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

#include "timer.h"

#include "debug.h"

#include "nRF24L01.h"

#include "led.h"

// TODO: Implement!
int platformInit(void)
{
	uint8_t i = 1, checksum = 2;

	//Low level init: Clock and Interrupt controller
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);

	// Disable the jtag gpio
	GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE);

	ledInit();

	ledSet(0, 1);
	ledSet(1, 1);

	delay_ms(500);

	ledSet(0, 0);
	ledSet(1, 0);

	delay_ms(500);

	ledSet(0, 1);
	ledSet(1, 1);

	uartInit();
	checksum--;
	ledSet(0, 0);

	DEBUG_PRINT("uart init successfully\n");

	nrf24l01Init();

	nrf24l01SetAddress();
	// i = nrf24l01ConnectCheck();

	if(i)
	{
		checksum--;
		ledSet(1, 0);
	}

	if(checksum == 0)
	{
		for(i = 0; i < 3; i++)
		{
			ledSet(0, 1);
			ledSet(1, 1);

			delay_ms(100);

			ledSet(0, 0);
			ledSet(1, 0);

			delay_ms(100);
		}
	} else {
		while(1);
	}

	// test
	// sbn1Test();


	return 0;
}


