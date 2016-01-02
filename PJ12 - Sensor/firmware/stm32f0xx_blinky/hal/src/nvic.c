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

#include "stm32f0xx.h"
#include "stm32f0xx_misc.h"

#include "nvic.h"
// #include "uart_fifo.h"

// #define DONT_DISCARD __attribute__((used))

void nvicInit(void)
{
	// NVIC_InitTypeDef NVIC_InitStructure;

	// #ifdef  VECT_TAB_RAM
	// /* Set the Vector Table base location at 0x20000000 */
	// NVIC_SetVectorTable ( NVIC_VectTab_RAM, 0x0 );
	// #else  /* VECT_TAB_FLASH  */
	//  Set the Vector Table base location at 0x08000000 
	// NVIC_SetVectorTable ( NVIC_VectTab_FLASH, 0x0 );
	// #endif

	// /* Configure one bit for preemption priority */
	// NVIC_PriorityGroupConfig ( NVIC_PriorityGroup_1 );
}

// void DONT_DISCARD SysTick_Handler(void)
// {
//     // tickFreeRTOS();
// }
