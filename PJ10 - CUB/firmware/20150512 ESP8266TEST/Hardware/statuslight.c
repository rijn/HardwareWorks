#include "statuslight.h"
#include "stm32f10x.h"
#include "delay.h"
	
void STATUSLIGHT_Configuration(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_STATUSLIGHT_PORT, ENABLE); 
	
	GPIO_InitStructure.GPIO_Pin = STATUSLIGHT_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP; 
	GPIO_Init(STATUSLIGHT_PORT, &GPIO_InitStructure);
}

void Set_StatusLight(u8 mode)
{
	if(mode)
		GPIO_SetBits(STATUSLIGHT_PORT, STATUSLIGHT_PIN);
	else
		GPIO_ResetBits(STATUSLIGHT_PORT, STATUSLIGHT_PIN);
}

void Flash_StatusLight(void)
{
	Set_StatusLight(1);
	delay_ms(100);
	Set_StatusLight(0);
	return;
}
