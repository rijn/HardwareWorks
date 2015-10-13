/**
  ******************************************************************************
  * @file    main.c
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   This file is used to configure the Library.
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

/**
  * @addtogroup BEEP_3SignalsGeneration
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/

/* Evalboard I/Os configuration */

#define LEDS_PORT (GPIOD)
#define LED2_PIN  (GPIO_Pin_4)
#define LED3_PIN  (GPIO_Pin_5)
#define LED4_PIN  (GPIO_Pin_6)

#define BUTTON_PORT (GPIOA)
#define BUTTON_PIN  (GPIO_Pin_5)


/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void CLK_Config(void);
void Delay (uint16_t nCount);
uint32_t LSIMeasurment(void);
/* Private functions ---------------------------------------------------------*/
/* Global variables ----------------------------------------------------------*/
bool ButtonPressed = FALSE;

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{

    uint8_t i = 0;

  /* Clock configuration -----------------------------------------*/
  CLK_Config();
    
  /* Initialize LEDs mounted on the EVAL board */
  STM_EVAL_LEDInit(LED2);
  STM_EVAL_LEDInit(LED3);
  STM_EVAL_LEDInit(LED4);

  /* Initialize KEY pushbutton mounted on the EVAL board */
  STM_EVAL_PBInit(BUTTON_KEY, BUTTON_MODE_EXTI);

  /* All LEDs ON */  
  STM_EVAL_LEDOn(LED2);
  STM_EVAL_LEDOn(LED3);
  STM_EVAL_LEDOn(LED4);

  /* Configure LCD mounted on the EVAL board ----------------*/
  STM8L_EVAL_LCD_Init();
    
  /* Clear LCD */
  LCD_Clear();
    
  /* Enable general interrupts for Key button reading */
  enableInterrupts();

  /* Print "  BEEPER OFF  " on LCD line1*/
  LCD_SetCursorPos(LCD_LINE1, 0);
  LCD_Print("  BEEPER OFF  ");
  /* Print "Press Key" on LCD line2*/
  LCD_SetCursorPos(LCD_LINE2, 0);
  LCD_Print("  Press Key   ");
    
  /* BEEP calibration */
  BEEP_LSICalibrationConfig(LSIMeasurment());
    
    while (1)
    {
        /* Check button status */
        if (ButtonPressed == TRUE) /* Button is pressed */
        {
            ButtonPressed = FALSE;
            /* Change BEEP frequency */
            switch (i)
            {
            case 0:
                BEEP_Cmd(DISABLE);
                Delay(100);
                BEEP_Init(BEEP_Frequency_1KHz);
                BEEP_Cmd(ENABLE);
                /* LED2 ON */
                STM_EVAL_LEDOn(LED2);
                STM_EVAL_LEDOff(LED3);
                STM_EVAL_LEDOff(LED4); 
                LCD_SetCursorPos(LCD_LINE1, 0);
                LCD_Print("  BEEPER 1kHz ");
                i = 1;
                break;
            case 1:
                BEEP_Cmd(DISABLE);
                Delay(100);
                BEEP_Init(BEEP_Frequency_2KHz);
                BEEP_Cmd(ENABLE);
                /* LED3 ON */
                STM_EVAL_LEDOn(LED3);
                STM_EVAL_LEDOff(LED2);
                STM_EVAL_LEDOff(LED4); 
                LCD_SetCursorPos(LCD_LINE1, 0);
                LCD_Print("  BEEPER 2kHz ");
                i = 2;
                break;
            case 2:
                BEEP_Cmd(DISABLE);
                Delay(100);
                BEEP_Init(BEEP_Frequency_4KHz);
                BEEP_Cmd(ENABLE);
                /* LED4 ON */
                STM_EVAL_LEDOn(LED4);
                STM_EVAL_LEDOff(LED2);
                STM_EVAL_LEDOff(LED3); 
                LCD_SetCursorPos(LCD_LINE1, 0);
                LCD_Print("  BEEPER 4kHz ");
                i = 3;
                break;
            case 3:
                BEEP_Cmd(DISABLE);
                /* All LEDs ON */
                STM_EVAL_LEDOn(LED4);
                STM_EVAL_LEDOn(LED2);
                STM_EVAL_LEDOn(LED3); 
                LCD_SetCursorPos(LCD_LINE1, 0);
                LCD_Print("  BEEPER OFF  ");
                i = 0;
                break;
            default:
                break;
            }
        }

    }

}

/**
  * @brief  Configure system clock to run at 16Mhz
  * @param  None
  * @retval None
  */
static void CLK_Config(void)
{
  /* Initialization of the clock */
  /* Clock divider to HSI/1 */
  CLK_MasterPrescalerConfig(CLK_MasterPrescaler_HSIDiv1);
    
  /* Enable SPI clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
  CLK_PeripheralClockConfig(CLK_Peripheral_AWU, ENABLE);
}

/**
  * @brief Measure the LSI frequency using timer IC1 and update the calibration registers.
  * @note   It is recommended to use a timer clock frequency of at least 10MHz in order 
  *         to obtain a better in the LSI frequency measurement.
  * @param  None
  * @retval None
  */
uint32_t LSIMeasurment(void)
{

  uint32_t lsi_freq_hz = 0x0;
  uint32_t fmaster = 0x0;
  uint16_t ICValue1 = 0x0;
  uint16_t ICValue2 = 0x0;

  /* Get master frequency */
  fmaster = CLK_GetClockFreq();

  /* Enable the LSI measurement: LSI clock connected to timer Input Capture 1 */
  AWU->CSR |= AWU_CSR_MSR;

  /* Capture only every 8 events!!! */
  TIM2_ICInit(  TIM2_Channel_1, TIM2_ICPolarity_Rising, TIM2_ICSelection_DirectTI, TIM2_ICPSC_Div8, 0x0);

  /* Enable TIM2 */
  TIM2_Cmd(ENABLE);

  /* wait a capture on cc1 */
  while ((TIM2->SR1 & (uint8_t)TIM2_FLAG_CC1) != TIM2_FLAG_CC1);
  /* Get CCR1 value*/
  ICValue1 = TIM2_GetCapture1();
  TIM2_ClearFlag(TIM2_FLAG_CC1);

  /* wait a capture on cc1 */
  while ((TIM2->SR1 & (uint8_t)TIM2_FLAG_CC1) != TIM2_FLAG_CC1);
  /* Get CCR1 value*/
  ICValue2 = TIM2_GetCapture1();
  TIM2_ClearFlag(TIM2_FLAG_CC1);

  /* Disable IC1 input capture */
  TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
  /* Disable TIM2 */
  TIM2_Cmd(DISABLE);

  /* Compute LSI clock frequency */
  lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);

  /* Disable the LSI measurement: LSI clock disconnected from timer Input Capture 1 */
  AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);
  
  return (lsi_freq_hz);

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