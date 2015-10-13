/**
  ******************************************************************************
  * @file    stm8l_eval_lcd.h
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   This file contains all the functions prototypes for the Dot matrix 
  *          LCD firmware driver.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __STM8L_EVAL_LCD_H
#define __STM8L_EVAL_LCD_H

/* Includes ------------------------------------------------------------------*/
#include "stm8l101_eval.h"

/** @addtogroup Utilities
  * @{
  */
  
/** @addtogroup STM8L101_EVAL
  * @{
  */ 

/** @addtogroup Common
  * @{
  */

/** @addtogroup STM8L_EVAL_LCD
  * @{
  */  
  
/* Exported constants --------------------------------------------------------*/

/*
 * Uncomment the line below if you want to use user defined Delay function
 * (for precise timing), otherwise default _delay_ function defined within
 *  this driver is used (less precise timing).  
 */
 
/* #define USE_Delay */

#ifdef USE_Delay
#include "main.h"
 
  #define _delay_     Delay  /* !< User can provide more timing precise _delay_ 
                                   function (with at least 1ms time base), using
                                   Timer for example */
#else
  #define _delay_     delay      /* !< Default _delay_ function with less precise timing */
#endif 	



/** @addtogroup STM8L_EVAL_LOW_LEVEL_DOT_MATRIX_LCD
  * @{
  */
/**
  * @brief  Defines for the SPI and GPIO pins used to drive the SPI Flash
  */

 #define LCD_SPI                         SPI
 #define LCD_CS_GPIO_PORT                GPIOD /* LCD Chip Select I/O definition */
 #define LCD_CS_PIN                      GPIO_Pin_1
 #define LCD_SPI_CLK                     CLK_Peripheral_SPI
 #define LCD_SPI_SCK_PIN                 GPIO_Pin_5
 #define LCD_SPI_MOSI_PIN                GPIO_Pin_6
 #define LCD_SPI_MISO_PIN                GPIO_Pin_7
 #define LCD_SPI_GPIO_PORT               GPIOB

/**
  * @}
  */

/* LCD managed as 2 Lines of 15 characters (2Lines * 15Char) */
#define LCD_LINE_MAX_CHAR    ((uint8_t)15)
#define LCD_LINE1            ((uint8_t)0x80)
#define LCD_LINE2            ((uint8_t)0x90)

/* LCD Commands */
#define COMMAND_TYPE         ((uint8_t)0xF8)
#define DATA_TYPE            ((uint8_t)0xFA)
#define SET_TEXT_MODE        ((uint8_t)0x30) /* 8-Bits Interface, Normal inst., Text mode */
#define SET_EXTENDED_INST    ((uint8_t)0x34)
#define SET_GRAPHIC_MODE     ((uint8_t)0x36) /* 8-Bits Interface, Extended inst., Graphic mode */
#define DISPLAY_ON           ((uint8_t)0x0C) /* Cursor and blink off */
#define DISPLAY_OFF          ((uint8_t)0x08)
#define DISPLAY_CLR          ((uint8_t)0x01)
#define ENTRY_MODE_SET_INC   ((uint8_t)0x06)


/** @defgroup STM8L_EVAL_LCD_Exported_Macros
  * @{
  */

/** 
  * @brief  Deselect LCD: ChipSelect pin low : LCD disabled
  */  
#define LCD_CS_LOW()     GPIO_ResetBits(LCD_CS_GPIO_PORT, LCD_CS_PIN)
/** 
  * @brief  Select LCD : ChipSelect pin high : LCD enabled   
  */ 
#define LCD_CS_HIGH()    GPIO_SetBits(LCD_CS_GPIO_PORT, LCD_CS_PIN)
/**
  * @}
  */
  
/* Exported functions --------------------------------------------------------*/
void STM8L_EVAL_LCD_Init(void);
void LCD_SetCursorPos(uint8_t Line, uint8_t Offset);
void LCD_SendByte(uint8_t DataType, uint8_t DataToSend);
void LCD_Clear(void);
void LCD_Print(uint8_t *ptr);
void LCD_DisplayLogo(uint8_t address);
void LCD_RollString(uint8_t Line, uint8_t *ptr, uint16_t speed);

#endif /* __STM8L_EVAL_LCD_H */

/**
  * @}
  */

/**
  * @}
  */ 

/**
  * @}
  */ 
  
/**
  * @}
  */  
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
