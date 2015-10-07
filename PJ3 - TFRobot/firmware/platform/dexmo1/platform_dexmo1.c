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

#include "nRF24L01.h"
#include "SBN1.h"

#include "mpu9150.h"

// TODO: Implement!
int platformInit(void)
{
	//Low level init: Clock and Interrupt controller
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);

	// Disable the jtag gpio
	GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE);

	// adcInit();

	timInit();

	nrf24l01Init();

	nrf24l01SetAddress();
	// nrf24l01ConnectCheck();

	// mpu9150Init();
	// mpu9150Status();

	return 0;
}

