/**
  ******************************************************************************
  * @file    stm8l101_eval.h
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   This file contains definitions for STM8L101_EVAL's Leds, push-buttons
  *          and COM ports hardware resources.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
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
#ifndef __STM8L101_EVAL_H
#define __STM8L101_EVAL_H

/* Includes ------------------------------------------------------------------*/
#include "stm8l10x.h"

/** @addtogroup Utilities
  * @{
  */

/** @addtogroup STM8L101_EVAL
  * @{
  */
/** @defgroup STM8L_EVAL_HARDWARE_RESOURCES
  * @{
  */

/**
@code
 The table below gives an overview of the hardware resources supported by the 
 STM8L101 EVAL board.
     - LCD: Mono LCD (Serial (SPI))
     - sEE: serial I2C EEPROM (M24C32)
     - SD: SD Card memory (SPI (SD Card MODE))
  =============================================================================================+
    STM8 EVAL     | LED | Buttons  | Com Ports |    LCD    | sFLASH | sEE | TSENSOR | SD (SPI) |
  -============================================================================================+
   STM8L101-EVAL  |  5  |    6     |     1     | YES (SPI) |  NO    | YES |   NO    |    YES   |
  =============================================================================================+
@endcode
*/
/**
  * @}
  */
  
/** @addtogroup STM8L101_EVAL_LOW_LEVEL
  * @{
  */

/** @defgroup STM8L_EVAL_Exported_Types
  * @{
  */
typedef enum
{
  LED1 = 0,
  LED2 = 1,
  LED3 = 2,
  LED4 = 3,
  LED5 = 4  /* Bicolor Led */
} Led_TypeDef;

typedef enum
{
  BUTTON_KEY = 0,
  BUTTON_RIGHT = 1,
  BUTTON_LEFT = 2,
  BUTTON_UP = 3,
  BUTTON_DOWN = 4,
  BUTTON_SEL = 5,
  BUTTON_TAMPER = 6
} Button_TypeDef;

typedef enum
{
  BUTTON_MODE_GPIO = 0,
  BUTTON_MODE_EXTI = 1
} ButtonMode_TypeDef;

typedef enum
{
  JOY_NONE = 0,
  JOY_SEL = 1,
  JOY_DOWN = 2,
  JOY_LEFT = 3,
  JOY_RIGHT = 4,
  JOY_UP = 5
} JOYState_TypeDef;

typedef enum
{
  COM1 = 0
} COM_TypeDef;

/** @defgroup STM8L_EVAL_LOW_LEVEL_Exported_Constants
  * @{
  */
/** @addtogroup STM8L_EVAL_LOW_LEVEL_LED
  * @{
  */

#define LEDn                        4
#define LED1_GPIO_PORT              GPIOB
#define LED1_GPIO_PIN               GPIO_Pin_0

#define LED2_GPIO_PORT              GPIOD
#define LED2_GPIO_PIN               GPIO_Pin_4

#define LED3_GPIO_PORT              GPIOD
#define LED3_GPIO_PIN               GPIO_Pin_5

#define LED4_GPIO_PORT              GPIOD
#define LED4_GPIO_PIN               GPIO_Pin_6

/**
  * @}
  */

/** @addtogroup STM8L_EVAL_LOW_LEVEL_BUTTON
  * @{
  */
#define BUTTONn                     6

/**
 * @brief Key push-button
 */
#define KEY_BUTTON_PORT             GPIOA
#define KEY_BUTTON_PIN              GPIO_Pin_5

/**
 * @brief Joystick Right push-button
 */
#define RIGHT_BUTTON_PORT           GPIOB
#define RIGHT_BUTTON_PIN            GPIO_Pin_2

/**
 * @brief Joystick Left push-button
 */
#define LEFT_BUTTON_PORT            GPIOB
#define LEFT_BUTTON_PIN             GPIO_Pin_1

/**
 * @brief Joystick Up push-button
 */
#define UP_BUTTON_PORT              GPIOB
#define UP_BUTTON_PIN               GPIO_Pin_3

/**
 * @brief Joystick Down push-button
 */
#define DOWN_BUTTON_PORT            GPIOA
#define DOWN_BUTTON_PIN             GPIO_Pin_4

/**
 * @brief Joystick Sel push-button
 */
#define SEL_BUTTON_PORT             GPIOD
#define SEL_BUTTON_PIN              GPIO_Pin_7


/**
 * @brief Joystick EXTI push-button definition
 */
#define KEY_BUTTON_EXTI             EXTI_Pin_5
#define RIGHT_BUTTON_EXTI           EXTI_Pin_2
#define LEFT_BUTTON_EXTI            EXTI_Pin_1
#define UP_BUTTON_EXTI              EXTI_Pin_3
#define DOWN_BUTTON_EXTI            EXTI_Pin_4
#define SEL_BUTTON_EXTI             EXTI_Pin_7

/**
  * @}
  */

/** @addtogroup STM8L_EVAL_LOW_LEVEL_COM
  * @{
  */
#define COMn                        1

/**
 * @brief Definition for COM port1
 */
#define EVAL_COM1                   USART
#define EVAL_COM1_GPIO              GPIOC
#define EVAL_COM1_CLK               CLK_Peripheral_USART
#define EVAL_COM1_RxPin             GPIO_Pin_2
#define EVAL_COM1_TxPin             GPIO_Pin_3

/**
  * @}
  */
/** @addtogroup STM8L_EVAL_SD_SPI
  * @{
  */
/**
  * @brief  SD SPI Interface pins
  */
#define SD_SPI                           SPI
#define SD_SPI_CLK                       CLK_Peripheral_SPI
#define SD_SPI_SCK_PIN                   GPIO_Pin_5                  /* PB.05 */
#define SD_SPI_SCK_GPIO_PORT             GPIOB                       /* GPIOB */
#define SD_SPI_MISO_PIN                  GPIO_Pin_7                  /* PB.07 */
#define SD_SPI_MISO_GPIO_PORT            GPIOB                       /* GPIOB */
#define SD_SPI_MOSI_PIN                  GPIO_Pin_6                  /* PB.06 */
#define SD_SPI_MOSI_GPIO_PORT            GPIOB                       /* GPIOB */
#define SD_CS_PIN                        GPIO_Pin_4                  /* PB.04 */
#define SD_CS_GPIO_PORT                  GPIOB                       /* GPIOB */

/**
  * @}
  */

/** @addtogroup STM8L_EVAL_LOW_LEVEL_I2C_EE
  * @{
  */
/**
  * @brief  I2C EEPROM Interface pins
  */
#define sEE_I2C                          I2C
#define sEE_I2C_CLK                      CLK_Peripheral_I2C
#define sEE_I2C_SCL_PIN                  GPIO_Pin_1                  /* PC.01 */
#define sEE_I2C_SCL_GPIO_PORT            GPIOC                       /* GPIOC */
#define sEE_I2C_SDA_PIN                  GPIO_Pin_0                  /* PC.00 */
#define sEE_I2C_SDA_GPIO_PORT            GPIOC                       /* GPIOC */
#define sEE_M24C64_32

#define sEE_DIRECTION_TX                 0
#define sEE_DIRECTION_RX                 1

/**
  * @}
  */

/* Exported Macros ------------------------------------------------------------*/

/** @defgroup STM8L_EVAL_LOW_LEVEL_Exported_Functions
  * @{
  */
void STM_EVAL_LEDInit(Led_TypeDef Led);
void STM_EVAL_LEDOn(Led_TypeDef Led);
void STM_EVAL_LEDOff(Led_TypeDef Led);
void STM_EVAL_LEDToggle(Led_TypeDef Led);
void STM_EVAL_PBInit(Button_TypeDef Button, ButtonMode_TypeDef Button_Mode);
uint8_t STM_EVAL_PBGetState(Button_TypeDef Button);
void STM_EVAL_COMInit(COM_TypeDef COM, uint32_t USART_BaudRate, USART_WordLength_TypeDef USART_WordLength,\
                      USART_StopBits_TypeDef USART_StopBits,\
                      USART_Parity_TypeDef USART_Parity,\
                      USART_Mode_TypeDef USART_Mode);
void SD_LowLevel_DeInit(void);
void SD_LowLevel_Init(void);
void sEE_LowLevel_DeInit(void);
void sEE_LowLevel_Init(void);

/**
  * @}
  */

#endif /* __STM8L101_EVAL_H */

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
