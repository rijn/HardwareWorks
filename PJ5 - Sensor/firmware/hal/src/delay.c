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

#define DEBUG_MODULE "DELAY"

#include "config.h"

#include "stm8l10x.h"
#include "stm8l10x_clk.h"
#include "stm8l10x_tim2.h"

#include "delay.h"

#define STM8_DELAY_US_MULT 3

// void delay_us ( uint32_t n_us )
// {
// 	n_us *= STM8_DELAY_US_MULT;
// 	n_us--;
// 	__asm
// 		mov r0, n_us
// 		1:
// 			subs r0, #1
// 		bhi 1b
// 	__endasm;
// }

void delay_ms ( uint32_t n_ms )
{
	/* Init TIMER 4 */
	CLK_PeripheralClockConfig ( CLK_Peripheral_TIM2, ENABLE );

	/* Init TIMER 4 prescaler: / (2^6) = /64 */
	TIM2->PSCR = 6;

	/* HSI div by 1 --> Auto-Reload value: 16M / 64 = 1/4M, 1/4M / 1k = 250*/
	TIM2->ARRH = 0;
	TIM2->ARRL = 250;

	/* Counter value: 2, to compensate the initialization of TIMER*/

	TIM2->CNTRH = 0;
	TIM2->CNTRL = 2;

	/* clear update flag */
	TIM2->SR1 &= ~TIM_SR1_UIF;

	/* Enable Counter */
	TIM2->CR1 |= TIM_CR1_CEN;

	while ( n_ms-- )
	{
		while ( ( TIM2->SR1 & TIM_SR1_UIF ) == 0 ) ;

		TIM2->SR1 &= ~TIM_SR1_UIF;
	}

	/* Disable Counter */
	TIM2->CR1 &= ~TIM_CR1_CEN;
}