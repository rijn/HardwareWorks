#include "stm32f10x.h"

#ifndef __STATUSLIGHT_H
#define __STATUSLIGHT_H 			   



//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Pin Definition
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

#define     RCC_APB2Periph_STATUSLIGHT_PORT 	RCC_APB2Periph_GPIOB
#define     STATUSLIGHT_PORT                	GPIOB
#define     STATUSLIGHT_PIN           				GPIO_Pin_0

void STATUSLIGHT_Configuration(void);
void Set_StatusLight(u8 mode);
void Flash_StatusLight(void);

#endif
