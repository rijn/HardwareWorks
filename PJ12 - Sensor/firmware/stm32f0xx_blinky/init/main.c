/*
 *  ____    ____    __   __   ______  ______
 * /\  _`\ /\  _`\ /\ \ /\ \ /\__  _\/\  _  \
 * \ \ \/\ \ \ \L\_\ `\`\/'/'\/_/\ \/\ \ \L\ \
 *  \ \ \ \ \ \  _\L`\/ > <     \ \ \ \ \  __ \
 *   \ \ \_\ \ \ \L\ \ \/'/\`\   \ \ \ \ \ \/\ \
 *    \ \____/\ \____/ /\_\\ \_\  \ \_\ \ \_\ \_\
 *     \/___/  \/___/  \/_/ \/_/   \/_/  \/_/\/_/ *
 * Originally created by Dexta Robotics.
 * Copyright <C> Dexta Robotics, 2015.
 * All rights reserved.
 */

#define DEBUG_MODULE "MAIN"

#define LED_PIN             GPIO_Pin_5
#define LED_BLINKING_PERIOD 1000

#include "stm32f0xx.h"
#include "stm32f0xx_gpio.h"
#include "stm32f0xx_rcc.h"

static __IO uint32_t timing_delay = 0;

// Define USART input and output buffer
void Delay(uint32_t nTime) {
    timing_delay = nTime;
    while (timing_delay != 0) {
        __ASM volatile("nop");
    }
}

void loop_delay(int n) {
    volatile int i, j;
    for (i = 0, j = 0; i < n; i ++, j ++);
    return;
}

int main()
{
    GPIO_InitTypeDef gpio;
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);

    GPIO_StructInit(&gpio);
    gpio.GPIO_Pin = LED_PIN;
    gpio.GPIO_Mode = GPIO_Mode_OUT;
    gpio.GPIO_Speed = GPIO_Speed_Level_3;
    gpio.GPIO_PuPd = GPIO_PuPd_NOPULL;
    gpio.GPIO_OType = GPIO_OType_PP;
    GPIO_Init(GPIOA, &gpio);
	while ( 1 )
	{
        GPIO_SetBits(GPIOA, LED_PIN);
        loop_delay(LED_BLINKING_PERIOD * 1250);
        GPIO_ResetBits(GPIOA, LED_PIN);
        loop_delay(LED_BLINKING_PERIOD * 1250);
	}

	return 0;
}
