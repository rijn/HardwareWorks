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
  * @addtogroup IRTIM_SignalGeneration
  * @{
  */

/* Private defines -----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void TIM2_Config(void);
static void TIM3_Config(void);
static void IRTIM_Config(void);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{

  /* ----------------TIM2 configuration--------------- */
  TIM2_Config();
  
  /* ----------------TIM3 configuration--------------- */
  TIM3_Config();  
  
  /* ----------------IRTIM configuration--------------- */

  IRTIM_Config();
  
  while(1)
  {}
}

/**
  * @brief  Configure timer2 peripheral  
  * @param  None
  * @retval None
  */
static void TIM2_Config(void)
{  
  /* Enable TIM2 clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
  
  /* DeInit TIM2 */
  TIM2_DeInit();
  
  /* TIM2 Time base configuration */
  TIM2_TimeBaseInit(TIM2_Prescaler_1, TIM2_CounterMode_Up, 0xFFFF);
  
  /* TIM2 channel 1 configuration */
  TIM2_OC1Init(TIM2_OCMode_PWM1, TIM2_OutputState_Enable, 0x7FFF, TIM2_OCPolarity_High, TIM2_OCIdleState_Reset);
  
  /* TIM2 Counter Enable */
  TIM2_Cmd(ENABLE);
  TIM2_CtrlPWMOutputs(ENABLE);
}

/**
  * @brief  Configure timer3 peripheral  
  * @param  None
  * @retval None
  */
static void TIM3_Config(void)
{
  /* Enable TIM3 clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM3, ENABLE);
  
  /* DeInit TIM3 */
  TIM3_DeInit();
  
  /* TIM3 Time base configuration */
  TIM3_TimeBaseInit(TIM3_Prescaler_16, TIM3_CounterMode_Up, 0xFFFF);
  
  /* TIM3 channel 1 configuration */
  TIM3_OC1Init(TIM3_OCMode_PWM1, TIM3_OutputState_Enable, 0x7FFF, TIM3_OCPolarity_High, TIM3_OCIdleState_Reset);
  
  /* TIM3 Counter Enable */
  TIM3_Cmd(ENABLE);
  TIM3_CtrlPWMOutputs(ENABLE);
}

/**
  * @brief  Configure IRTIM peripheral  
  * @param  None
  * @retval None
  */
static void IRTIM_Config(void)
{
  /* DeInit IRTIM */
  IRTIM_DeInit();
  
  /* Enable IRTIM */
  IRTIM_Cmd(ENABLE);
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
