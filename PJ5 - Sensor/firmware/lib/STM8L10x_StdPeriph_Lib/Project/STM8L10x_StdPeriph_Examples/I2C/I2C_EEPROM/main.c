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
#include "stm8l_eval_i2c_ee.h"

/**
  * @addtogroup I2C_EEPROM
  * @{
  */

/* Private define ------------------------------------------------------------*/
#define sEE_WRITE_ADDRESS1        0x50
#define sEE_READ_ADDRESS1         0x50
#define BUFFER_SIZE1             (countof(Tx1_Buffer)-1)
#define BUFFER_SIZE2             (countof(Tx2_Buffer)-1)
#define sEE_WRITE_ADDRESS2       (sEE_WRITE_ADDRESS1 + BUFFER_SIZE1)
#define sEE_READ_ADDRESS2        (sEE_READ_ADDRESS1 + BUFFER_SIZE1)

/* Private typedef -----------------------------------------------------------*/
typedef enum {FAILED = 0, PASSED = !FAILED} TestStatus;
/* Private macro -------------------------------------------------------------*/
#define countof(a) (sizeof(a) / sizeof(*(a)))

/* Private variables ---------------------------------------------------------*/
uint8_t Tx1_Buffer[] = " STM8L I2C Firmware Library EEPROM driver example";
uint8_t Tx2_Buffer[] = "/* buffer transfer into address sEE_WRITE_ADDRESS2 */";
uint8_t Rx1_Buffer[BUFFER_SIZE1], Rx2_Buffer[BUFFER_SIZE2];
__IO  TestStatus TransferStatus1 = FAILED, TransferStatus2 = FAILED;
__IO  uint16_t NumDataRead = 0;
/* Private function prototypes -----------------------------------------------*/
TestStatus Buffercmp(uint8_t* pBuffer1, uint8_t* pBuffer2, uint16_t BufferLength);
/* Private functions ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main()
{
  /* Initialization of the clock */
  /* Clock divider to HSI/1 */
  CLK_MasterPrescalerConfig(CLK_MasterPrescaler_HSIDiv1);
  

  /* Initialize the I2C EEPROM driver ---------------------------------------*/
  sEE_Init();

  /* First write in the memory followed by a read of the written data --------*/
  /* Write on I2C EEPROM from EEPROM_WRITE_ADDRESS1 */
  sEE_WriteBuffer(Rx1_Buffer, sEE_WRITE_ADDRESS1, BUFFER_SIZE1);

  /* Set the Number of data to be read */
  NumDataRead = BUFFER_SIZE1;

  /* Read from I2C EEPROM from EEPROM_READ_ADDRESS1 */
  sEE_ReadBuffer(Rx1_Buffer, sEE_READ_ADDRESS1, (uint16_t*)&NumDataRead);
  
  /* Wait till transfer is complete */
  while (NumDataRead > 0)
  {}
  
  /* Check if the data written to the memory is read correctly */
  TransferStatus1 = Buffercmp(Tx1_Buffer, Rx1_Buffer, BUFFER_SIZE1);
  /* TransferStatus1 = PASSED, if the transmitted and received data 
     to/from the EEPROM are the same */
  /* TransferStatus1 = FAILED, if the transmitted and received data 
     to/from the EEPROM are different */
  

  /* Second write in the memory followed by a read of the written data -------*/
  /* Write on I2C EEPROM from sEE_WRITE_ADDRESS2 */
  sEE_WriteBuffer(Tx2_Buffer, sEE_WRITE_ADDRESS2, BUFFER_SIZE2); 

  /* Wait for EEPROM standby state */
  sEE_WaitEepromStandbyState();  
  
  /* Set the Number of data to be read */
  NumDataRead = BUFFER_SIZE2;  
  
  /* Read from I2C EEPROM from sEE_READ_ADDRESS2 */
  sEE_ReadBuffer(Rx2_Buffer, sEE_READ_ADDRESS2, (uint16_t *)(&NumDataRead));

  /* Wait till transfer is complete */
  while (NumDataRead > 0)
  {}
  
  /* Check if the data written to the memory is read correctly */
  TransferStatus2 = Buffercmp(Tx2_Buffer, Rx2_Buffer, BUFFER_SIZE2);
  /* TransferStatus2 = PASSED, if the transmitted and received data 
     to/from the EEPROM are the same */
  /* TransferStatus2 = FAILED, if the transmitted and received data 
     to/from the EEPROM are different */
  
  /* Free all used resources */
  sEE_DeInit();

  while (1)
  {}
}

/**
  * @brief  Compares two buffers.
  * @param  pBuffer1, pBuffer2: buffers to be compared.
  * @param  BufferLength: buffer's length
  * @retval PASSED: pBuffer1 identical to pBuffer2
  *         FAILED: pBuffer1 differs from pBuffer2
  */
TestStatus Buffercmp(uint8_t* pBuffer1, uint8_t* pBuffer2, uint16_t BufferLength)
{
  while(BufferLength--)
  {
    if(*pBuffer1 != *pBuffer2)
    {
      return FAILED;
    }
    
    pBuffer1++;
    pBuffer2++;
  }

  return PASSED;  
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
