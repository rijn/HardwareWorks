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
  * @addtogroup TIM2_OCInactiveMode
  * @{
  */

/* Private defines -----------------------------------------------------------*/
#define CCR1_Val  ((uint16_t)15625)
#define CCR2_Val  ((uint16_t)7812)
/* Private function prototypes -----------------------------------------------*/
static void TIM2_Config(void);
static void GPIO_Config(void);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  /* Config TIM2 clock */
  TIM2_Config();
  
  /* Config GPIO */
  GPIO_Config();
  
  /* TIM2 enable counter */
  TIM2_Cmd(ENABLE);
  
  enableInterrupts();

  while (1)
  {}
}

/**
  * @brief  Configure GPIO 
  * @param  None
  * @retval None
  */
static void GPIO_Config(void)
{
  /* Set pin PC.0, PC5 & PC.6 to high state */
  GPIO_Init(GPIOC, (GPIO_Pin_0 | GPIO_Pin_5 | GPIO_Pin_6), GPIO_Mode_Out_PP_Low_Fast);
  GPIO_SetBits(GPIOC, GPIO_Pin_0);
  GPIO_ResetBits(GPIOC, GPIO_Pin_5 | GPIO_Pin_6);
}

/**
  * @brief  Configure TIM2 peripheral
  * @param  None
  * @retval None
  */
static void TIM2_Config(void)
{
   /* Enable TIM2 clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
   
   /* Time base configuration */
  TIM2_TimeBaseInit(TIM2_Prescaler_128, TIM2_CounterMode_Up, 65535);

  /* Prescaler configuration */
  TIM2_PrescalerConfig(TIM2_Prescaler_128, TIM2_PSCReloadMode_Immediate);
  
  /* Output Compare Active Mode configuration: Channel1 */
  TIM2_OC1Init(TIM2_OCMode_Inactive, TIM2_OutputState_Enable, CCR1_Val, TIM2_OCPolarity_High, TIM2_OCIdleState_Reset); 
  TIM2_OC1PreloadConfig(DISABLE);                                      

  /* Output Compare Active Mode configuration: Channel2 */
  TIM2_OC2Init(TIM2_OCMode_Inactive, TIM2_OutputState_Enable, CCR2_Val, TIM2_OCPolarity_High, TIM2_OCIdleState_Reset); 
  TIM2_OC2PreloadConfig(DISABLE);

  TIM2_ARRPreloadConfig(ENABLE);
  
  /* TIM IT enable */
  TIM2_ITConfig(TIM2_IT_CC1, ENABLE);
  TIM2_ITConfig(TIM2_IT_CC2, ENABLE);
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
