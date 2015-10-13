/**
  ******************************************************************************
  * @file    main.c
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Main program body
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

/* Includes ------------------------------------------------------------------*/
#include "stm8l101_eval.h"
#include "stm8l_eval_lcd.h"
#include <stdio.h>
/**
  * @addtogroup SPI_FullDuplexUSART
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
bool ButtonPressed = FALSE;
/* Private function prototypes -----------------------------------------------*/
static void CLK_Config(void);
static void USART_Config(void);
void Delay (uint16_t nCount);
bool GetVar_ButtonPressed(void);
void SetVar_ButtonPressed(void);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  uint8_t i = 0;
  uint8_t DataTx = 0;
  uint8_t DataRx = 0;
  uint8_t StrName[16]={0};
    
  /* Clock configuration -----------------------------------------*/
  CLK_Config();  
  
  /* Initialize LED2,LED3 and LED4 */
  STM_EVAL_LEDInit(LED2);
  STM_EVAL_LEDInit(LED3);
  STM_EVAL_LEDInit(LED4);
  
  /* Initialize KEY button */
  STM_EVAL_PBInit(BUTTON_KEY, BUTTON_MODE_EXTI);

  STM8L_EVAL_LCD_Init();

  /* USART configuration -----------------------------------------*/
  USART_Config(); 

  /* Initialize LCD and display welcome message */
  LCD_SetCursorPos(LCD_LINE1, 0);
  
  LCD_Print("  *** STM8L *** ");
  
  LCD_SetCursorPos(LCD_LINE2, 0);
  
  LCD_Print("  SPI example  ");
  
  for (i = 0; i < 5; i++)
  {
    Delay(0xFFFF);
  }
  
  LCD_Clear();
  
  LCD_SetCursorPos(LCD_LINE1, 0);
  
  LCD_Print("Press KEY...");
  
  DataTx = 0x00;

  /* Enable general interrupts for Key button reading */
  enableInterrupts();

  while (1)
  {
    /* Check button status */
    if (GetVar_ButtonPressed() == TRUE) /* Button is pressed */
    {
      
      ButtonPressed = FALSE;
      
      /* Set SPI in Slave mode for communication with USART */
      SPI_Init(SPI_FirstBit_LSB, SPI_BaudRatePrescaler_128, SPI_Mode_Slave,
               SPI_CPOL_Low, SPI_CPHA_1Edge,  SPI_Direction_2Lines_FullDuplex, SPI_NSS_Soft);
      USART_Cmd(ENABLE);
      Delay(300);
      SPI_Cmd(ENABLE);
      
      /* Send data with USART */
      USART_SendData8(DataTx);

      /* Receive data with SPI */
      DataRx = SPI_ReceiveData();
      
      USART_Cmd(DISABLE);
      
      STM8L_EVAL_LCD_Init();
      
      LCD_SetCursorPos(LCD_LINE1, 0);
      LCD_Print("Press KEY...");
      LCD_SetCursorPos(LCD_LINE2, 0);
      LCD_Print("TX=");
      LCD_SetCursorPos(LCD_LINE2, 2);
      sprintf((char*)StrName, "%x", (int)DataTx);
      LCD_Print(StrName);
      
      LCD_SetCursorPos(LCD_LINE2, 4);
      LCD_Print(" RX=");
      LCD_SetCursorPos(LCD_LINE2, 6);
      sprintf((char*)StrName, "%x", (int)DataRx);
      LCD_Print(StrName);
      
      DataTx++; /* Change next data to be sent */
      
    }
  }
}

/**
  * @brief  Enable peripheral clocks
  * @param  None
  * @retval None
  */
static void CLK_Config(void)
{
  /*Enable clock SPI */
  CLK_PeripheralClockConfig(CLK_Peripheral_SPI, ENABLE);
  
  /*Enable clock USART */
  CLK_PeripheralClockConfig(CLK_Peripheral_USART, ENABLE); 
}

/**
  * @brief  Configure USART to run in master mode
  * @param  None
  * @retval None
  */
static void USART_Config(void)
{
  /* Initialize USART in Master mode */
  USART_DeInit();
  USART_Init((uint32_t)4800, USART_WordLength_8D, USART_StopBits_1, USART_Parity_No,
            (USART_Mode_TypeDef)(USART_Mode_Rx | USART_Mode_Tx));
  
  USART_ClockInit(USART_Clock_Enable, USART_CPOL_Low, USART_CPHA_1Edge,  USART_LastBit_Enable);
  
  USART_Cmd(DISABLE);
}

/**
  * @brief Returns ButtonPressed value.
  * @param  None
  * @retval BoolT: ButtonPressed
  */
bool GetVar_ButtonPressed(void)
{
  return ButtonPressed;
}

/**
  * @brief Set the ButtonPressed value.
  * @param  None
  * @retval None
  */
void SetVar_ButtonPressed(void)
{
  ButtonPressed = TRUE;
}

/**
  * @brief  Delay.
  * @param  nCount
  * @retval None
  */
void Delay(uint16_t nCount)
{
  /* Decrement nCount value */
  while (nCount != 0)
  {
    nCount--;
  }
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
