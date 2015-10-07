#define DEBUG_MODULE "SYSTEM"

#include <stdbool.h>
#include <stdio.h>
#include "config.h"
#include "system.h"

#include "debug.h"
#include "rcc.h"
#include "led.h"

/* Private variable */
static uint8_t isInit;

// This must be the first module to be initialized!
void systemInit(void)
{
	if(isInit)
		return;

	rccInit();
	timerInit();

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

	DEBUG_PRINT("init successfully\n");

	isInit = 1;
}
