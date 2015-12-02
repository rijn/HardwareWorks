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
  * @addtogroup TIM2_InputCapture 
  * @{
  */
/* Private variables -----------------------------------------------------------*/	
uint16_t Period = 125;
uint32_t TIM2ClockFreq = 16000000;
uint32_t TIM3ClockFreq = 0;
uint16_t ICValue1 = 0, ICValue2 = 0;
/* Private defines -----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void TIM2_Config(void);
static void TIM3_Config(void);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  /*--------------------- TIM2 Clock = 16Mhz ----------------*/
  CLK_MasterPrescalerConfig(CLK_MasterPrescaler_HSIDiv1);
    
  /*--------------------- TIM3 Config------------------------*/
  TIM3_Config();
  
  /*--------------------- TIM2 Config------------------------*/
  TIM2_Config();

  /* Compute TIM3 CC2 clock frequency */
  TIM3ClockFreq = (8 * TIM2ClockFreq) / (ICValue2 - ICValue1);
  
  /* Insert a break point here */
  nop();

  while (1)
  {}
}

static void TIM2_Config(void)
{
  /* Enable TIM2 CLK */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
  
  /* Capture only every 8 events!!! */
  /* Enable capture of TIM2 */
  TIM2_ICInit(TIM2_Channel_1, TIM2_ICPolarity_Falling, TIM2_ICSelection_DirectTI, TIM2_ICPSC_Div8, 0);
  
  /* Enable timer1 */
  TIM2_Cmd(ENABLE);
  
  /* Config Channel 1 pin*/
  GPIO_Init(GPIOB, GPIO_Pin_0, GPIO_Mode_In_PU_No_IT);

  /* Clear CC1 Flag*/
  TIM2_ClearFlag(TIM2_FLAG_CC1);
  
  /* wait a Capture on CC1 */
  while((TIM2->SR1 & TIM2_FLAG_CC1) != TIM2_FLAG_CC1);
  
  /* Get CCR1 value*/
  ICValue1 = TIM2_GetCapture1();
  /* Clear CC1 Flag*/
  TIM2_ClearFlag(TIM2_FLAG_CC1);
  
  /* wait a capture on cc1 */
  while((TIM2->SR1 & TIM2_FLAG_CC1) != TIM2_FLAG_CC1);
  /* Get CCR1 value*/
  ICValue2 = TIM2_GetCapture1();
  TIM2_ClearFlag(TIM2_FLAG_CC1); 
}

static void TIM3_Config(void)
{
  /* Enable TIM3 CLK */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM3, ENABLE);
  
  /* TIM3 Time Base configuration */
  TIM3_TimeBaseInit(TIM3_Prescaler_1, TIM3_CounterMode_Up, Period);
  
  /* Channel 2 Configuration in PWM mode */
  TIM3_OC2Init(TIM3_OCMode_PWM2, TIM3_OutputState_Enable, Period,  TIM3_OCPolarity_Low, TIM3_OCIdleState_Set);
  
  /* TIM3 counter enable */
  TIM3_Cmd(ENABLE);

  /* Main Output Enable */
  TIM3_CtrlPWMOutputs(ENABLE);

  /* GPIO TIM3 Channel1 configuration */
  GPIO_Init(GPIOD, GPIO_Pin_0, GPIO_Mode_Out_PP_Low_Fast);
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
