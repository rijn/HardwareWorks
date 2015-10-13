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
  * @addtogroup ITC_SoftwarePriority
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void EXTI_Config(void);
static void ITC_Config(void);
void Delay (uint16_t nCount);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  /* Initialize Leds mounted on evaluation board */
  STM_EVAL_LEDInit(LED2);
  STM_EVAL_LEDInit(LED3);
  
  /* Initialize key button and joystick on evaluation board */
  /* Key button */
  STM_EVAL_PBInit(BUTTON_KEY, BUTTON_MODE_EXTI);
  /* Joystick */
  STM_EVAL_PBInit(BUTTON_DOWN, BUTTON_MODE_EXTI);

  /* ----------------EXTI configuration--------------- */
  EXTI_Config();  
  
  /* ----------------ITC configuration--------------- */
  /*
    Change the software priority between button and joystick:
    - By hardware the Pin_4 (joystick_down) has a higher priority than Pin_5 (key button)
    - We configure the Pin_5 (key) to have a higher sw priority than Pin_4 (joystick_down)
  */
  ITC_Config();
  
  enableInterrupts();

  /* LEDs are ON together */
  STM_EVAL_LEDOn(LED2);
  STM_EVAL_LEDOn(LED3);
 
  while (1)
  {}
}

/**
  * @brief  Configure EXTI to define key and joystick interrupt sensitivity  
  * @param  None
  * @retval None
  */
static void EXTI_Config(void)
{
  /* Initialize the Interrupt sensitivity for key and joystick */
  EXTI_SetPinSensitivity(EXTI_Pin_4, EXTI_Trigger_Falling_Low);
  EXTI_SetPinSensitivity(EXTI_Pin_5, EXTI_Trigger_Falling_Low);
}

/**
  * @brief  Configure ITC to change the software priority between button and joystick  
  * @param  None
  * @retval None
  */
static void ITC_Config(void)
{
  /*
    Change the software priority between button and joystick:
    - By hardware the Pin_4 (joystick_down) has a higher priority than Pin_5 (key button)
    - We configure the Pin_5 (key) to have a higher sw priority than Pin_4 (joystick_down)
  */
  ITC_SetSoftwarePriority(EXTI4_IRQn, ITC_PriorityLevel_1); /* joystick */
  ITC_SetSoftwarePriority(EXTI5_IRQn, ITC_PriorityLevel_2); /* key = higher sw priority */
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
