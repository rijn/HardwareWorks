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

#include "stm32f10x.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x_gpio.h"

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

#if defined PLATFORM_REV_DEXMO_A_RIGHT

	GPIO_InitTypeDef GPIO_InitStructure;

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD | RCC_APB2Periph_AFIO, ENABLE);

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(GPIOD, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	led_array[0]._port = GPIOC;
	led_array[0]._pin = GPIO_Pin_12;

	led_array[1]._port = GPIOD;
	led_array[1]._pin = GPIO_Pin_2;

#elif defined PLATFORM_REV_DEXMO_A_LEFT

	GPIO_InitTypeDef GPIO_InitStructure;

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOC | RCC_APB2Periph_AFIO, ENABLE);

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	led_array[0]._port = GPIOC;
	led_array[0]._pin = GPIO_Pin_8;

	led_array[1]._port = GPIOA;
	led_array[1]._pin = GPIO_Pin_12;

#elif defined PLATFORM_DEVICE_DEXMO_DONGLE

	GPIO_InitTypeDef GPIO_InitStructure;

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO, ENABLE);

	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	led_array[0]._port = GPIOB;
	led_array[0]._pin = GPIO_Pin_3;

	led_array[1]._port = GPIOB;
	led_array[1]._pin = GPIO_Pin_4;

#endif

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
