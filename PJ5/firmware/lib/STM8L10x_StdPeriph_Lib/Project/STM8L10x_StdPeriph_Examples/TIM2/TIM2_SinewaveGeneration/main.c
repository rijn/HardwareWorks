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
#include "main.h"

__IO MySin_Typedef sin ;/* Stores the sin structure */
__IO uint8_t counter = 0;   /* The counter variable for counting the Update cycles in TIM2 */
/* Private defines -----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  * @addtogroup TIM2_SinewaveGeneration
  * @{
  */

/* This shows the value of the samples for the different no of samples in half
sine wave. The last value corresponds to the amplitude of the sine wave.*/

#if  nbr_of_samples_half == 16
CONST uint8_t sample[9]={0,20,38,56,71,83,92,98,100};

#elif  nbr_of_samples_half == 18
CONST uint8_t sample[10]={0,17,34,50,64,76,86,93,97,99};

#elif  nbr_of_samples_half == 22
CONST uint8_t sample[12]={0,14,28,42,54,65,76,84,91,96,99,100};

#elif  nbr_of_samples_half == 24
CONST uint8_t sample[13]={0,13,25,38,49,60,69,78,85,91,95,97,98};

#elif  nbr_of_samples_half == 26
CONST uint8_t sample[14]={0,12,24,35,46,56,66,74,81,88,93,96,98,99};

#elif  nbr_of_samples_half == 28
CONST uint8_t sample[15]={0,11,22,33,43,53,62,71,78,85,90,94,97,99,100};

#elif   nbr_of_samples_half == 30 
CONST uint8_t sample[16]={0,10,21,31,41,50,59,67,74,81,87,91,95,98,99,100};

#elif  nbr_of_samples_half == 46
CONST uint8_t sample[24]={0,7,13,20,26,33,39,45,51,57,62,67,72,76,80,84,87,90,92, \
                     94,96,97,98,98};
#endif
/* Private defines -----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
void LoadValueIntoSinStruct(void);
static void TIM_Config(void);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{ 
  /* select Clock = 4 MHz */
  CLK_MasterPrescalerConfig(CLK_MasterPrescaler_HSIDiv4);
  
  /* Call LoadValueIntoSinStruct() & TIM_Config()*/
  LoadValueIntoSinStruct();           

  TIM_Config();

  /* Enable interrupts*/
  enableInterrupts();        
  
  /* Infinite loop*/
  while(1)
  {}
}  

/**
  * @brief  Fill Sin Struncture with the correct values
  * @param  None
  * @retval None
  */
void LoadValueIntoSinStruct(void)
{
  uint8_t  offset=0,diff=0;
  
  while(offset <= (nbr_of_samples_half/2))
  {
      /*First half of upper half samples of sine wave is loaded into "value" of sin structure.*/
      sin.Value[offset] = sample[offset]; 
      offset++;                      
  }
  diff = (uint8_t)(offset - 1);
  while(offset < nbr_of_samples_half)
  {                                    
      diff--;  
      /* Second half of upper half samples of sine wave is loaded into "value" of sin structure.*/
      sin.Value[offset] = sample[diff];    
      offset++;                         
  }
  /*Index is initialized to 0.Sin wave upper half is generated at start*/
  sin.Index = 0;                      
  sin.Up = TRUE;                      
}

/**
  * @brief  Configure TIM2 for the Sine wave generation
  * @param  None
  * @retval None
  */
void TIM_Config(void)
{
  /* Enable TIM2 clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
  
  /* Config TIM2 Channel 1 and channel 2 pins */
  GPIO_Init(GPIOB, GPIO_Pin_0, GPIO_Mode_Out_PP_High_Fast);
  
  TIM2_DeInit();
  
  /* Time base configuration */
  TIM2_TimeBaseInit(TIM2_Prescaler_1, TIM2_CounterMode_Up, INIT_TIM2_ARR);
  
  /* PWM configuration */
  TIM2_OC1Init(TIM2_OCMode_PWM1, TIM2_OutputState_Enable,INIT_TIM2_CCR1, TIM2_OCPolarity_Low, TIM2_OCIdleState_Reset);
  
  /* Update Interrupt Enable */
  TIM2_ITConfig(TIM2_IT_Update, ENABLE);
  
  /* ARRPreload Enable */
  TIM2_ARRPreloadConfig(ENABLE);
  
  /* Enable TIM2 */
  TIM2_Cmd(ENABLE);
  
  /* Enable CC1 output*/
  TIM2_CtrlPWMOutputs(ENABLE);
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
