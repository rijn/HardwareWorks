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
#include "stm8l10x.h"
#include "stm8l101_eval.h"
#include "stm8l_eval_lcd.h"
#include <stdio.h>

/**
  * @addtogroup SPI_SimplexLCD
  * @{
  */

/* Private typedef -----------------------------------------------------------*/

/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
bool ButtonPressed = FALSE;
uint8_t i =0;
__IO uint8_t LedState = 1, ButtonIndex = 0;
uint8_t pos =0;
uint8_t StrName[16];
/* Private function prototypes -----------------------------------------------*/
void Delay(uint16_t nCount);
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
    STM_EVAL_LEDInit(LED2);
    STM_EVAL_LEDInit(LED3);
    STM_EVAL_LEDInit(LED4);

    /* Initialize KEY button */
    STM_EVAL_PBInit(BUTTON_KEY, BUTTON_MODE_EXTI);

    /* Enable general interrupts for Key button reading */
    enableInterrupts();

    /* Initialize LCD */
    STM8L_EVAL_LCD_Init();

    /* Clear LCD lines */
    LCD_Clear();

    /* Display "moving" ST logo on first line */
    for (pos = 0x80; pos < 0x88; pos++)
    {
        LCD_Clear();
        LCD_DisplayLogo(pos);
        Delay(5000);
    }

    /* Display "moving" ST logo on second line */
    for (pos = 0x90; pos < 0x98; pos++)
    {
        LCD_Clear();
        LCD_DisplayLogo(pos);
        Delay(5000);
    }

    /* Clear LCD lines */
    LCD_Clear();

    /* Max 15 characters per line */
    LCD_SetCursorPos(LCD_LINE1, 0);
    LCD_Print(" *** STM8L *** ");
    LCD_SetCursorPos(LCD_LINE2, 0);
    LCD_Print("SPI-LCD example");

    for (i = 0; i < 10; i++)
    {
        Delay(0xFFFF);
    }

    /* Clear LCD lines */
    LCD_Clear();

    LCD_Print("Press KEY...");

    while (1)
    {
      /* Check button status */
      if (GetVar_ButtonPressed() == TRUE) /* Button is pressed */
      {
        ButtonPressed = FALSE;
        LCD_SetCursorPos(LCD_LINE2, 0);
        LCD_Clear();
        LCD_Print("LED #");
        sprintf((char*)StrName, "%d", (int)(ButtonIndex + 2));

        LCD_Print(StrName);
        LCD_SetCursorPos(LCD_LINE2, 2); /* 8th position */
        if (LedState == 0)
        {
          LCD_Print("OFF");
        }
        else
        {
          LCD_Print("ON");
        }
        switch (ButtonIndex)
        {
          case 0:
            STM_EVAL_LEDToggle(LED2);
            ButtonIndex++;
          break;
          
          case 1:
            STM_EVAL_LEDToggle(LED3);
            ButtonIndex++;
          break;

          case 2:
            STM_EVAL_LEDToggle(LED4);
            ButtonIndex = 0;
            LedState ^= 0x01;
          break;
        }
    }
  }
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
