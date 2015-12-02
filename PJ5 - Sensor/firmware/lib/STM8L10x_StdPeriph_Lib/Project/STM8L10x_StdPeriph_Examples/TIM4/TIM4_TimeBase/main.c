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

/**
  * @addtogroup TIM4_TimeBase
  * @{
  */

/* Private defines -----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void TIM4_Config(void);
/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  
  /* TIM4 configuration ------------------------------------------------------*/
  TIM4_Config();
  
  /* Toggles PB.0 in ISR routine*/
  while (1)
  {}
}

/**
  * @brief  Configure TIM4 peripheral to generate an interrupt each 128µs
  * @param  None
  * @retval None
  */
static void TIM4_Config(void)
{
  /* Enable TIM4 CLK */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM4, ENABLE);
  
  TIM4_DeInit();
  
  /* Time base configuration */ 
  TIM4_TimeBaseInit(TIM4_Prescaler_1, 0xFF);
  TIM4_ITConfig(TIM4_IT_Update, ENABLE);
  
  enableInterrupts();

  /* Initialize I/Os in Output Mode */
  GPIO_Init(GPIOB, GPIO_Pin_0, GPIO_Mode_Out_PP_Low_Fast);

  /* Enable TIM4 */
  TIM4_Cmd(ENABLE);
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
