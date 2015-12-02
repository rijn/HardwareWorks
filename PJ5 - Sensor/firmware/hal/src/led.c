/*
 *         __    __
 *   _ __ /\_\  /\_\    ___
 *  /\`'__\/\ \ \/\ \ /' _ `\
 *  \ \ \/ \ \ \ \ \ \/\ \/\ \
 *   \ \_\  \ \_\_\ \ \ \_\ \_\
 *    \/_/   \/_/\ \_\ \/_/\/_/
 *              \ \____/
 *               \/___/
 *
 *  Copyright rijn, 2015.
 *  rijnx.com
 */

#define DEBUG_MODULE "LED"

#include "config.h"

#include "stm8l10x.h"
#include "stm8l10x_gpio.h"

#include "led.h"

typedef struct
{
	GPIO_TypeDef * _port;
	uint8_t _pin;
} led_struct;

led_struct led_array[LED_QTY];

void ledInit(void)
{

	GPIO_Init(GPIOB, GPIO_Pin_0, GPIO_Mode_Out_PP_High_Fast);
	GPIO_Init(GPIOB, GPIO_Pin_1, GPIO_Mode_Out_PP_High_Fast);

	led_array[0]._port = GPIOB;
	led_array[0]._pin = GPIO_Pin_0;

	led_array[1]._port = GPIOB;
	led_array[1]._pin = GPIO_Pin_1;

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
