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
  * @addtogroup TIM3_SynchronisationwithTIM4
  * @{
  */
/* Private defines -----------------------------------------------------------*/
#define TIMEOUT ((uint8_t)0xFF)
/* Private function prototypes -----------------------------------------------*/
static void TIM_Config(void);
static FunctionalState TIM3_Status(void);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  __IO uint8_t Result = 0;
  __IO uint8_t timeout = TIMEOUT;
  
  /* Initialize LED2 and LED3 */
  STM_EVAL_LEDInit(LED2);
  STM_EVAL_LEDInit(LED3);
  
  /* Config TIM3 and TIM4 clocks */
  TIM_Config();

  while((TIM3_Status() == DISABLE) && (timeout != 0))
  {
    /* Decrement timeout */
    timeout--;
  }
  
  if (TIM3_Status() != DISABLE)
  {
    /*If the program counter reachs this section, 
    the TIM3 is correctly triggered by TIM4 */
    /*Insert break point in the folloing line */
    Result = 1;
    STM_EVAL_LEDToggle(LED2);
  }
  else
  {
    /*If the program counter reachs this section, 
    the TIM3 is not correctly triggered by TIM4 */
    /*Insert break point in the folloing line */
    Result = 0;
    STM_EVAL_LEDToggle(LED3);
  }
  /* infinite loop */
  while(1)
  {}
}


/**
  * @brief  Configure TIM4 and TIM3 peripherals
  * @param  None
  * @retval None
  */
static void TIM_Config(void)
{
    /* Enable TIM3 CLK */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM3, ENABLE);
  
  /* Enable TIM4 CLK */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM4, ENABLE);
  
  /*DeInit all TIM3 and TIM4 registers*/
  TIM3_DeInit();
  TIM4_DeInit();
    
  /* Time base configuration */
  TIM3_TimeBaseInit(TIM3_Prescaler_1, TIM3_CounterMode_Up, 0xFF );
  TIM4_TimeBaseInit(TIM4_Prescaler_1, 0xFF );

  /* Select TIM4 Update event as source of TIM4 Trigger Output*/
  TIM4_SelectOutputTrigger(TIM4_TRGOSource_Update);
  
  /* Select TIM4 as source of TIM3 Trigger Input*/
  TIM3_SelectInputTrigger(TIM3_TRGSelection_TIM4);
  
  /* configurate TIM3 as slave of Trigger input*/
  TIM3_SelectSlaveMode(TIM3_SlaveMode_Trigger);
  
    /*Enable TIM4*/
  TIM4_Cmd(ENABLE);/* if this line is commented, TIM4 will not be enabled and */
                   /* TIM3  will not detect an Edge on its TRGI => Result =0  */
}

static FunctionalState TIM3_Status(void)
{
   return ((FunctionalState)(TIM3->CR1 & TIM_CR1_CEN));
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
