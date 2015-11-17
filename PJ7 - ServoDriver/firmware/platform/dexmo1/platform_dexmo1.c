#define DEBUG_MODULE "PLATFORM"

/* Project includes */
#include "config.h"

/* ST includes */
#include "misc.h"
#include "stm32f10x.h"

#include "rcc.h"

#include "debug.h"

#include "adc.h"

#include "tim.h"

#include "led.h"

int platformInit(void)
{
	//Low level init: Clock and Interrupt controller
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);

	// Disable the jtag gpio
	GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE);

	// adcInit();

	ledInit();

	ledSet(0, 0);
	ledSet(1, 0);
	ledSet(2, 0);

	delay_ms(500);
	ledSet(0, 1);
	delay_ms(500);
	ledSet(1, 1);
	delay_ms(500);
	ledSet(2, 1);

	delay_ms(500);

	// while(1)
	// {
	// 	uint8_t i;
	// 	for(i = 0; i < 3; i++)
	// 	{
	// 		ledSet(i, 1);
	// 		delay_ms(1000);
	// 		ledSet(0, 0);
	// 		ledSet(1, 0);
	// 		ledSet(2, 0);
	// 	}

	// }

	uartInit();

	timInit();

	return 0;
}

