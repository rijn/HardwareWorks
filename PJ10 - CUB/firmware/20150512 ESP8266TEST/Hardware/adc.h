#ifndef __ADC_H
#define __ADC_H 	

#include "stm32f10x.h"

#define ADC1_DR_Address    ((u32)0x4001244C)

extern vu16 ADC_ConvertedValue[11];

void DMA_Configuration(void);
void ADC_Configuration(void);

#endif
