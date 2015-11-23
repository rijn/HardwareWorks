#ifndef __OLED_H
#define __OLED_H

/* includes */
#include "stm32f10x.h"

/* defines */
/*
#define     RCC_APB2Periph_OLED_PORT        RCC_APB2Periph_GPIOA

#define     OLED_PORT                       GPIOA

#define     OLED_RST_PIN                    GPIO_Pin_12

#define     OLED_RST_L                      GPIO_ResetBits(GPIOA, GPIO_Pin_12)
#define     OLED_RST_H                      GPIO_SetBits(GPIOA, GPIO_Pin_12)

#define     OLED_DC_PIN                     GPIO_Pin_11

#define	    OLED_DC_L                       GPIO_ResetBits(GPIOA, GPIO_Pin_11);
#define     OLED_DC_H                       GPIO_SetBits(GPIOA, GPIO_Pin_11);

#define  	OLED_SCK_PIN					GPIO_Pin_5
#define		OLED_SDA_PIN					GPIO_Pin_7
   */
#define     RCC_APB2Periph_OLED_PORT        RCC_APB2Periph_GPIOA
#define     OLED_PORT                       GPIOA
#define     OLED_RST_PIN                    GPIO_Pin_12
#define     OLED_RST_L                      GPIO_ResetBits(GPIOA, GPIO_Pin_12);
#define     OLED_RST_H                      GPIO_SetBits(GPIOA, GPIO_Pin_12);
#define     OLED_MISO_PIN                   GPIO_Pin_6
#define	    OLED_MISO_PIN_L                 GPIO_ResetBits(GPIOA, GPIO_Pin_6);
#define     OLED_MISO_PIN_H                 GPIO_SetBits(GPIOA, GPIO_Pin_6);
#define     OLED_NSS_PIN                    GPIO_Pin_4
#define	    OLED_NSS_L                      GPIO_ResetBits(GPIOA, GPIO_Pin_4);
#define     OLED_NSS_H                      GPIO_SetBits(GPIOA, GPIO_Pin_4);
#define     OLED_DC_PIN                    	GPIO_Pin_8
#define	    OLED_DC_L                      	GPIO_ResetBits(GPIOA, GPIO_Pin_8);
#define     OLED_DC_H                      	GPIO_SetBits(GPIOA, GPIO_Pin_8);
#define  		OLED_SCLK_PIN										GPIO_Pin_5
#define			OLED_MOSI_PIN										GPIO_Pin_7
	 
/* OLED_WriteByte */
void SPI1_Configuration(void);

void OLED_WB(u8 data);
void OLED_CLS(void);

void OLED_Init(void);
void Next_Frame(void);
void Fill_Screen(u8 x0, u8 page0, u8 x1, u8 page1, u8 data);
void Draw_Char(u8 x, u8 page, u8 chr);
void Draw_String(u8 x, u8 page, u8 chr[]);
void Push_Notification( u8 chr[] );

#endif

