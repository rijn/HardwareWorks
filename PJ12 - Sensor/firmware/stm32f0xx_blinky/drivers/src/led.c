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

#define DEBUG_MODULE "LED"

#include "config.h"

#include "stm32f0xx.h"
#include "stm32f0xx_rcc.h"
#include "stm32f0xx_gpio.h"

#include "debug.h"

#include "led.h"

typedef struct
{
	GPIO_TypeDef * _port;
	uint16_t _pin;
} led_struct;

led_struct led_array[10];

void ledInit(void)
{

	GPIO_InitTypeDef GPIO_InitStructure;

	RCC_AHBPeriphClockCmd ( RCC_AHBPeriph_GPIOA, ENABLE );

	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_Level_3;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	// GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_DOWN;
	GPIO_Init ( GPIOA, &GPIO_InitStructure );

	led_array[0]._port = GPIOA;
	led_array[0]._pin = GPIO_Pin_4;

	// DEBUG_PRINT("init successfully\n");

}

void ledSet(uint8_t _i, uint8_t _on)
{
	if(_on)
	{
		GPIO_SetBits(led_array[_i]._port, led_array[_i]._pin);
	} else {
		GPIO_ResetBits(led_array[_i]._port, led_array[_i]._pin);
	}
}
