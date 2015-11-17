#include "config.h"
#include "stm32f10x.h"
#include "misc.h"
#include "delay.h"
#include "core_cm3.h"

static uint8_t fac_clk;
static uint8_t  fac_us;
static uint16_t fac_ms;



void DELAY_Configuration(uint8_t SYSCLK)
{
	SysTick_CLKSourceConfig(SysTick_CLKSource_HCLK_Div8);
	fac_clk = SYSCLK;
	fac_us = SYSCLK/8;
	fac_ms = (u16)fac_us*1000;
}

void delay_clk(uint32_t clk)
{
	u32 temp;
	SysTick->LOAD=clk*fac_clk; //时间加载
	SysTick->VAL=0x00;        //清空计数器
	SysTick->CTRL|=SysTick_CTRL_ENABLE_Msk ;          //开始倒数
	do
	{
		temp=SysTick->CTRL;
	}
	while(temp&0x01&&!(temp&(1<<16)));//等待时间到达
	SysTick->CTRL&=~SysTick_CTRL_ENABLE_Msk;       //关闭计数器
	SysTick->VAL =0X00;       //清空计数器
}

void delay_us(uint32_t nus)
{
	u32 temp;
	SysTick->LOAD=nus*fac_us; //时间加载
	SysTick->VAL=0x00;        //清空计数器
	SysTick->CTRL|=SysTick_CTRL_ENABLE_Msk ;          //开始倒数
	do
	{
		temp=SysTick->CTRL;
	}
	while(temp&0x01&&!(temp&(1<<16)));//等待时间到达
	SysTick->CTRL&=~SysTick_CTRL_ENABLE_Msk;       //关闭计数器
	SysTick->VAL =0X00;       //清空计数器
}

void delay_ms(uint16_t nms)
{
	u32 temp;
	SysTick->LOAD=(u32)nms*fac_ms;//时间加载(SysTick->LOAD为24bit)
	SysTick->VAL =0x00;           //清空计数器
	SysTick->CTRL|=SysTick_CTRL_ENABLE_Msk ;          //开始倒数
	do
	{
		temp=SysTick->CTRL;
	}
	while(temp&0x01&&!(temp&(1<<16)));//等待时间到达
	SysTick->CTRL&=~SysTick_CTRL_ENABLE_Msk;       //关闭计数器
	SysTick->VAL =0X00;       //清空计数器
}
