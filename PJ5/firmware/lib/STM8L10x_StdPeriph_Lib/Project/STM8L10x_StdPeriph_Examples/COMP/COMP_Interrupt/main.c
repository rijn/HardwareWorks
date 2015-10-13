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

/* Private defines -----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void CLK_Config(void);
static void COMP_Config(void);
static void TIM_Config(void);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  /* CLK configuration -------------------------------------------*/
  CLK_Config(); 
  
  /* Initialize Leds mounted on evaluation board */
  STM_EVAL_LEDInit(LED2);
  STM_EVAL_LEDInit(LED3);
  STM_EVAL_LEDInit(LED4);
  
  /* COMP configuration-------------------------------------------*/
  COMP_Config();
  
  /* Timer configuration -----------------------------------------*/
  TIM_Config();
  
  /*Enable general interrupts */
  enableInterrupts();
  
  /* Infinite loop */
  while (1)
  {
  }
}

/**
  * @brief  Configure peripheral clock 
  * @param  None
  * @retval None
  */
static void CLK_Config(void)
{
  /* Configure system clock*/
  CLK_MasterPrescalerConfig(CLK_MasterPrescaler_HSIDiv1);
  
  /* Enable TIM3 Clock input */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM3, ENABLE);
}

/**
  * @brief  Configure Comparator peripheral 
  * @param  None
  * @retval None
  */
static void COMP_Config(void)
{
  /*Configure COMP2 */
  COMP_DeInit();
  /*Enable Comparator interface */
  COMP_Cmd(ENABLE);
  /*Configure COMP2 channel3 with external reference source and polarity high*/
  COMP_Init(COMP_Selection_COMP2, COMP_Reference_External, COMP_Polarity_High);
  COMP_SwitchConfig(COMP_Switch_COMP2Ch3, ENABLE);
  /*Enable COMP2 interrupt */
  COMP_ITConfig(COMP_IT_ITEN2, ENABLE);
}

/**
  * @brief  Configure peripheral timer 
  * @param  None
  * @retval None
  */
static void TIM_Config(void)
{
  /*Configure Timer3*/
  TIM3_DeInit();
  /*Configure Timer3 to generate time base interrupt each 2ms*/
  TIM3_TimeBaseInit(TIM3_Prescaler_128, TIM3_CounterMode_Up, 0xFA);
  /*Enable Timer3 interrupt */
  TIM3_ITConfig(TIM3_IT_Update, ENABLE);
  /*Enable Timer3 */
  TIM3_Cmd(ENABLE);
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

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
