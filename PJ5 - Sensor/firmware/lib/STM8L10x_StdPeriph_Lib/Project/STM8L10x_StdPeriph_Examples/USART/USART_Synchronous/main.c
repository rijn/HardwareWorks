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
  * @addtogroup USART_Synchronous
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
typedef enum {FAILED = 0, PASSED = !FAILED} TestStatus;

/* Private define ------------------------------------------------------------*/
#define TxBufferSize1   (countof(TxBuffer1) - 1)
#define TxBufferSize2   (countof(TxBuffer2) - 1)
#define DYMMY_BYTE      0x00

/* Private macro -------------------------------------------------------------*/
#define countof(a)   (sizeof(a) / sizeof(*(a)))

/* Private variables ---------------------------------------------------------*/
__IO TestStatus TransferStatus1 = FAILED, TransferStatus2 = FAILED;

/* Private function prototypes -----------------------------------------------*/
TestStatus Buffercmp(uint8_t* pBuffer1, uint8_t* pBuffer2, uint16_t BufferLength);
void Delay (uint16_t nCount);
static void CLK_Config(void);
static void USART_Config(void);
static void SPI_Config(void);

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
uint8_t TxBuffer1[] = "USART Example: USART -> SPI using TXE and RXNE Flags";
uint8_t TxBuffer2[] = "USART Example: SPI -> USART using TXE and RXNE Flags";
uint8_t RxBuffer1[TxBufferSize2];
uint8_t RxBuffer2[TxBufferSize1];
uint8_t NbrOfDataToRead1 = TxBufferSize2;
uint8_t NbrOfDataToRead2 = TxBufferSize1;
uint8_t TxCounter1 = 0, RxCounter1 = 0;
uint8_t TxCounter2 = 0, RxCounter2 = 0;

  /* Clock config */
  CLK_Config();
    
  /* USART config */
  USART_Config();

  /* SPI config */
  SPI_Config();
  
  /* Enable the USART*/
  USART_Cmd(ENABLE);
  Delay(300);
  
  /* Enable the SPI*/
  SPI_Cmd(ENABLE);
  
    while (NbrOfDataToRead2--)
    {
        /* Write one byte in the USART Transmit Data Register */
        USART_SendData8(TxBuffer1[TxCounter1++]);
        /* Wait until end of transmit */
        while (USART_GetFlagStatus(USART_FLAG_TC) == RESET)
        {
        }
        /* Wait the byte is entirtly received by SPI */
        while (SPI_GetFlagStatus(SPI_FLAG_RXNE) == RESET)
        {
        }
        /* Store the received byte in the RxBuffer2 */
        RxBuffer2[RxCounter2++] = SPI_ReceiveData();
    }

    /* Clear the USART Data Register */
    USART_ReceiveData8();

    while (NbrOfDataToRead1--)
    {
        /* Wait until end of transmit */
        while (SPI_GetFlagStatus(SPI_FLAG_TXE)== RESET)
        {
        }
        /* Write one byte in the SPI Transmit Data Register */
        SPI_SendData(TxBuffer2[TxCounter2++]);

        /* Send a Dummy byte to generate clock to slave */
        USART_SendData8(DYMMY_BYTE);
        /* Wait until end of transmit */
        while (USART_GetFlagStatus(USART_FLAG_TC) == RESET)
        {
        }
        /* Wait the byte is entirtly received by USART */
        while (USART_GetFlagStatus(USART_FLAG_RXNE) == RESET)
        {
        }
        /* Store the received byte in the RxBuffer1 */
        RxBuffer1[RxCounter1++] = USART_ReceiveData8();
    }

    /* Check the received data with the send ones */
    TransferStatus1 = Buffercmp(TxBuffer1, RxBuffer2, TxBufferSize1);
    /* TransferStatus = PASSED, if the data transmitted from USART and received by SPI are the same */
    /* TransferStatus = FAILED, if the data transmitted from USART and received by SPI are different */
    TransferStatus2 = Buffercmp(TxBuffer2, RxBuffer1, TxBufferSize2);
    /* TransferStatus = PASSED, if the data transmitted from SPI and received by USART are the same */
    /* TransferStatus = FAILED, if the data transmitted from SPI and received by USART1 are different */

    while (1)
    {}
}

/**
  * @brief  Configure system clock
  * @param  None
  * @retval None
  */
static void CLK_Config(void)
{
    /*High speed internal clock prescaler: 1*/
    CLK_MasterPrescalerConfig(CLK_MasterPrescaler_HSIDiv1);
    
    /* Enable USART clock */
    CLK_PeripheralClockConfig(CLK_Peripheral_USART, ENABLE);
    
    /* Enable SPI clock */
    CLK_PeripheralClockConfig(CLK_Peripheral_SPI, ENABLE);
}

/**
  * @brief  Configure USART for the synchronous mode communication
  * @param  None
  * @retval None
  */
static void USART_Config(void)
{
     /*Set the USART RX and USART TX at high level*/
  GPIO_ExternalPullUpConfig(GPIOC,GPIO_Pin_3|GPIO_Pin_4, ENABLE);
     
   /* USART configured as follow:
          - Word Length = 8 Bits
          - 1 Stop Bit
          - No parity
          - BaudRate = 9600 baud
   */
  USART_Init((uint32_t)9600, USART_WordLength_8D, USART_StopBits_1,
             USART_Parity_No, (USART_Mode_TypeDef)(USART_Mode_Rx | USART_Mode_Tx));  
  /* USART configured as follow:
          - USART Clock enabled
          - Polarity Low
          - Phase Middle
          - Last Bit enabled
          - Receive and transmit enabled
  */
  USART_ClockInit(USART_Clock_Enable, USART_CPOL_Low, USART_CPHA_1Edge,USART_LastBit_Enable);
  USART_Cmd(DISABLE);
}

/**
  * @brief  Configure SPI for the full duplex communication with UART1
  * @param  None
  * @retval None
  */
static void SPI_Config(void)
{
  /*Set the MOSI,MISO and SCK at high level*/
  GPIO_ExternalPullUpConfig(GPIOB,GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7, ENABLE);
  
  SPI_DeInit();
  /* Initialize SPI in Slave mode  */
  SPI_Init(SPI_FirstBit_LSB, SPI_BaudRatePrescaler_2, SPI_Mode_Slave, SPI_CPOL_Low,
           SPI_CPHA_1Edge, SPI_Direction_2Lines_FullDuplex, SPI_NSS_Soft);

}

/**
  * @brief  Compares two buffers.
  * @param  pBuffer1 First buffer to be compared.
  * @param  pBuffer2 Second buffer to be compared.
  * @param  BufferLength Buffer's length
  * @retval TestStatus Status of buffer comparison
  * - PASSED: pBuffer1 identical to pBuffer2
  * - FAILED: pBuffer1 differs from pBuffer2
  */
TestStatus Buffercmp(uint8_t* pBuffer1, uint8_t* pBuffer2, uint16_t BufferLength)
{
    while (BufferLength--)
    {
        if (*pBuffer1 != *pBuffer2)
        {
            return FAILED;
        }

        pBuffer1++;
        pBuffer2++;
    }

    return PASSED;
}

/**
  * @brief  Insert a delay.
  * @param  nCount specifies the counter value.
  * @retval none
  */
void Delay (uint16_t nCount)
{
    /* Decrement nCount value */
    for (; nCount != 0; nCount--);
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

