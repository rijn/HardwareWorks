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
  * @addtogroup USART_HyperTerminalInterrupt
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void USART_Config(void);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{

   /* USART Configuration -----------------------------------------------------*/
   USART_Config();
       
   while (1)
   {}
}

/**
  * @brief  Configure USART peripheral
  * @param  None
  * @retval None
  */
static void USART_Config(void)
{
    /*High speed internal clock prescaler: 1*/
    CLK_MasterPrescalerConfig(CLK_MasterPrescaler_HSIDiv1);
    
    /*Set the USART RX and USART TX at high level*/
    GPIO_ExternalPullUpConfig(GPIOC,GPIO_Pin_3|GPIO_Pin_4, ENABLE);
    
    /* Enable USART clock */
    CLK_PeripheralClockConfig(CLK_Peripheral_USART, ENABLE);
    
    USART_DeInit();
    /* USART configuration ------------------------------------------------------*/
    /* USART configured as follow:
          - BaudRate = 9600 baud  
          - Word Length = 8 Bits
          - One Stop Bit
          - Odd parity
          - Receive and transmit enabled
    */
    USART_Init((uint32_t)9600, USART_WordLength_8D, USART_StopBits_1,
               USART_Parity_Odd, (USART_Mode_TypeDef)(USART_Mode_Rx | USART_Mode_Tx));

    /* Enable the USART Transmit interrupt: this interrupt is generated when the
       USART transmit data register is empty */
    USART_ITConfig(USART_IT_TXE, ENABLE);
    /* Enable the USART Receive interrupt: this interrupt is generated when the
       USART receive data register is not empty */
    USART_ITConfig(USART_IT_RXNE, ENABLE);

    /* Enable general interrupts */
    enableInterrupts();
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
