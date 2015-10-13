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


/**
  * @addtogroup EXTI_IOControl
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define JOYSTICK_PORT       (GPIOB)
#define JOYSTICK_LEFT_PIN   (GPIO_Pin_1)
#define JOYSTICK_RIGHT_PIN  (GPIO_Pin_2)
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
void Delay(uint16_t nCount);

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  /* Initialize I/Os in Output Mode for LEDs */
  STM_EVAL_LEDInit(LED2);
  STM_EVAL_LEDInit(LED3);
  STM_EVAL_LEDInit(LED4);
  
  /* Initialize I/O in Input Mode with Interrupt for Joystick */
  GPIO_Init(JOYSTICK_PORT, JOYSTICK_LEFT_PIN | JOYSTICK_RIGHT_PIN, GPIO_Mode_In_FL_IT);

  /* Initialize the Interrupt sensitivity joystick */
  EXTI_SetPinSensitivity(EXTI_Pin_1, EXTI_Trigger_Falling_Low);
  EXTI_SetPinSensitivity(EXTI_Pin_2, EXTI_Trigger_Falling_Low);
  
  enableInterrupts();

  while (1)
  {
    /* The LED toggles in the interrupt routines */
  }
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
