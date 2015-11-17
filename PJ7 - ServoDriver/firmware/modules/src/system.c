#define DEBUG_MODULE "SYSTEM"

#include <stdbool.h>
#include <stdio.h>
#include "config.h"
#include "system.h"

#include "debug.h"
#include "rcc.h"

/* Private variable */
static uint8_t isInit;

// This must be the first module to be initialized!
void systemInit(void)
{
	if(isInit)
		return;

	rccInit();
	timerInit();

	DEBUG_PRINT("init successfully\n");

	isInit = 1;
}
