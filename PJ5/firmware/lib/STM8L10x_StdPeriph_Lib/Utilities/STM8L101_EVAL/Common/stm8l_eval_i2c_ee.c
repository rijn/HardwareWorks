/**
  ******************************************************************************
  * @file    stm8l_eval_i2c_ee.c
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   This file provides a set of functions needed to manage the I2C M24CXX
  *          EEPROM memory mounted on STM8xx-EVAL board.
  *          It implements a high level communication layer for read and write
  *          from/to this memory. The needed STM8 hardware resources (I2C and
  *          GPIO) are defined in stm8l101_eval.h file, and the initialization is
  *          performed in sEE_LowLevel_Init() function declared in stm8l101_eval.c
  *          file.
  *          You can easily tailor this driver to any other development board,
  *          by just adapting the defines for hardware resources and
  *          sEE_LowLevel_Init() function.
  *
  *          @note In this driver, basic read and write functions (sEE_ReadBuffer()
  *                and sEE_WritePage()) use the I2C in polling mode to perform 
  *                the data transfer to/from EEPROM memory 
  *                Safe procedure is implemented to handle the read operation, 
  *                ensuring safe data reception in case of 1, 2, 3 or more bytes
  *                The application should then monitor the variable holding
  *                the number of data in order to determine when the transfer is
  *                completed (variable decremented to 0). 
  *                For more details on the use of this driver you can refer to 
  *                the I2C_EEPROM example provided within the STM8L10x_StdPeriph_Lib 
  *                package.     
  *
  *     +-----------------------------------------------------------------+
  *     |                        Pin assignment                           |
  *     +---------------------------------------+-----------+-------------+
  *     |  STM8 I2C Pins                       |   sEE     |   Pin       |
  *     +---------------------------------------+-----------+-------------+
  *     | .                                     |   E0(GND) |    1  (0V)  |
  *     | .                                     |   E1(GND) |    2  (0V)  |
  *     | .                                     |   E2(GND) |    3  (0V)  |
  *     | .                                     |   E0(VSS) |    4  (0V)  |
  *     | sEE_I2C_SDA_PIN/ SDA                  |   SDA     |    5        |
  *     | sEE_I2C_SCL_PIN/ SCL                  |   SCL     |    6        |
  *     | .                                     |   /WC(VDD)|    7 (3.3V) |
  *     | .                                     |   VDD     |    8 (3.3V) |
  *     +---------------------------------------+-----------+-------------+
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

/** @addtogroup Utilities
  * @{
  */

/** @addtogroup STM8L101_EVAL
  * @{
  */

/** @addtogroup Common
  * @{
  */

/** @addtogroup STM8L_EVAL_I2C_EE
  * @brief      This file includes the I2C EEPROM driver of STM8-EVAL boards.
  * @{
  */

/* Private types -------------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/


/** @defgroup STM8L_EVAL_I2C_EE_Private_Variables
  * @{
  */
__IO uint16_t sEEAddress = 0;
__IO uint32_t sEETimeout = sEE_TIMEOUT_MAX;
__IO uint16_t* sEEDataReadPointer;
__IO uint8_t* sEEDataWritePointer;
__IO uint8_t sEEDataNum;
/**
  * @}
  */

/* Private function prototypes -----------------------------------------------*/


/** @defgroup STM8L_EVAL_I2C_EE_Private_Functions
  * @{
  */

/**
  * @brief  DeInitializes peripherals used by the I2C EEPROM driver.
  * @param  None
  * @retval None
  */
void sEE_DeInit(void)
{
  sEE_LowLevel_DeInit();
}

/**
  * @brief  Initializes peripherals used by the I2C EEPROM driver.
  * @param  None
  * @retval None
  */
void sEE_Init(void)
{
  sEE_LowLevel_Init();

  /* I2C configuration */
  /* sEE_I2C Peripheral Enable */
  I2C_Cmd(ENABLE);
  /* sEE_I2C configuration after enabling it */
  I2C_Init(I2C_SPEED, I2C_SLAVE_ADDRESS7, I2C_DutyCycle_2,
           I2C_Ack_Enable, I2C_AcknowledgedAddress_7bit);

#if defined (sEE_M24C64_32)
  /* Select the EEPROM address according to the state of E0, E1, E2 pins */
  sEEAddress = sEE_HW_ADDRESS;
#endif /* sEE_M24C64_32 */
}

/**
  * @brief  Writes one byte to the I2C EEPROM.
  * @param  pBuffer : pointer to the buffer  containing the data to be written
  *         to the EEPROM.
  * @param  WriteAddr : EEPROM's internal address to write to.
  * @retval None
  */
void sEE_WriteByte(uint8_t* pBuffer, uint16_t WriteAddr)
{
  /* Send STRAT condition */
  I2C_GenerateSTART(ENABLE);

  /* Test on EV5 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT))
  {}

  /* Send EEPROM address for write */
  I2C_Send7bitAddress((uint8_t)sEEAddress, I2C_Direction_Transmitter);

  /* Test on EV6 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED))
  {}

#ifdef sEE_M24C64_32

  /* Send the EEPROM's internal address to write to : MSB of the address first */
  I2C_SendData((uint8_t)((WriteAddr & 0xFF00) >> 8));

  /* Test on EV8 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED))
  {}

  /* Send the EEPROM's internal address to write to : LSB of the address */
  I2C_SendData((uint8_t)(WriteAddr & 0x00FF));

#endif /* sEE_M24C64_32 */

  /* Test on EV8 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED))
  {}

  /* Send the byte to be written */
  I2C_SendData(*pBuffer);

  /* Test on EV8 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED))
  {}

  /* Send STOP condition */
  I2C_GenerateSTOP(ENABLE);
}

/**
  * @brief  Reads a block of data from the EEPROM.
  * @param  pBuffer : pointer to the buffer that receives the data read from
  *         the EEPROM.
  * @param  ReadAddr : EEPROM's internal address to read from.
  * @param  NumByteToRead : pointer to the variable holding number of bytes to
  *         read from the EEPROM.
  *
  *        @note The variable pointed by NumByteToRead is reset to 0 when all the
  *              data are read from the EEPROM. Application should monitor this
  *              variable in order know when the transfer is complete.
  *
  * @note This function ensures data reading from EEPROM, it assumes that I2C is 
  *       used with polling or its interrupt priority is not the highest in the 
  *       application. 
  *       Method 2 transfer sequence is implemented in this function(refer to RM0013
  *       for more details). 3 bytes, 2bytes and 1 byte reception cases are handled. 
  *
  * @retval None
  */
void sEE_ReadBuffer(uint8_t* pBuffer, uint16_t ReadAddr, uint16_t* NumByteToRead)
{
  __IO uint32_t timeout = 0xFFFF;

  /* Wait the end of last communication */
  for (;timeout > 0; timeout--);

  /* While the bus is busy */
  while (I2C_GetFlagStatus(I2C_FLAG_BUSY))
  {}

  /* Send START condition */
  I2C_GenerateSTART(ENABLE);

  /* Test on EV5 and clear it (cleared by reading SR1 then writing to DR) */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT))
  {}

  /* Send EEPROM address for write */
  I2C_Send7bitAddress((uint8_t)sEEAddress, I2C_Direction_Transmitter);

  /* Test on EV6 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED))
  {}

#ifdef sEE_M24C64_32

  /* Send the EEPROM's internal address to read from: MSB of the address first */
  I2C_SendData((uint8_t)((ReadAddr & 0xFF00) >> 8));

  /* Test on EV8 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED))
  {}

  /* Send the EEPROM's internal address to read from: LSB of the address */
  I2C_SendData((uint8_t)(ReadAddr & 0x00FF));

#endif /* sEE_M24C64_32 */

  /* Test on EV8 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED))
  {}

  /* Send STRAT condition a second time */
  I2C_GenerateSTART(ENABLE);

  /* Test on EV5 and clear it (cleared by reading SR1 then writing to DR) */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT))
  {}

  /* Send EEPROM address for read */
  I2C_Send7bitAddress((uint8_t)sEEAddress, I2C_Direction_Receiver);

  /* Test on EV6 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED))
  {}

  /* Read data from first byte until byte N-3 */
  if ((uint16_t)(*NumByteToRead)> 3) 
    {
      /* Poll on BTF */
       while (I2C_GetFlagStatus(I2C_FLAG_BTF) == RESET)
      {
      }   

      /* Read a byte from the EEPROM */
      *pBuffer = I2C_ReceiveData();

      /* Point to the next location where the byte read will be saved */
      *pBuffer++;

      /* Decrement the read bytes counter */
      (uint16_t)(*NumByteToRead)--;
    }

  /*  Remains three data for read: data N-2, data N-1, Data N */
  /* Three Bytes Master Reception procedure (POLLING) ------------------------*/
  if ((uint16_t)(*NumByteToRead) == 3)  
  {
    /* Data N-2 in DR and data N -1 in shift register */
    /* Poll on BTF */
      while (I2C_GetFlagStatus( I2C_FLAG_BTF) == RESET)
      {
      } 

      /* Clear ACK */
      I2C_AcknowledgeConfig(DISABLE);

      /* disable general interrupts */
      disableInterrupts(); 

      /* Read Data N-2 */
      *pBuffer = I2C_ReceiveData();

      /* Point to the next location where the byte read will be saved */
      *pBuffer++;

      /* Program the STOP */
      I2C_GenerateSTOP(ENABLE);

      /* Read DataN-1 */
      *pBuffer = I2C_ReceiveData();

       /* re-enable interrupts */
        enableInterrupts(); 

      /* Point to the next location where the byte read will be saved */
      *pBuffer++;

      /* Poll on RxNE */
      while (I2C_GetFlagStatus(I2C_FLAG_RXNE) == RESET)
      {
      }
      /* Read DataN */
      *pBuffer = I2C_ReceiveData();

      /* Reset the number of bytes to be read from the EEPROM */
      NumByteToRead = 0;
    }

  /* If number of data to be read is 2 */
  /* Tow Bytes Master Reception procedure (POLLING) ---------------------------*/
  if ((uint16_t)(*NumByteToRead) == 2)
  {
    /* Enable acknowledgement on next byte (set POS and ACK bits)*/
    I2C_AcknowledgeConfig(ENABLE);
    I2C_AckPositionConfig(I2C_AckPosition_Next);
    
    /* Wait on ADDR flag to be set (ADDR is still not cleared at this level */
    while(I2C_GetFlagStatus( I2C_FLAG_ADDR) == RESET)
    {
    }

    /* Clear ADDR register by reading SR1 then SR3 register (SR1 has already been read) */
     (void)I2C->SR3;
        
    /* Disable Acknowledgement */
    I2C_AcknowledgeConfig(DISABLE);
    
    /* Wait for BTF flag to be set */
      while (I2C_GetFlagStatus( I2C_FLAG_BTF) == RESET)
      {
      } 
    
    /* Disable interrupts */
    disableInterrupts();
    
    /* Program the STOP */
      I2C_GenerateSTOP(ENABLE);
      
    /* Read Data N-1 */
      *pBuffer = I2C_ReceiveData();

      /* Point to the next location where the byte read will be saved */
      *pBuffer++;  
           
    /* re-enable interrupts */
    enableInterrupts();
       
    /* Read Data N */
      *pBuffer = I2C_ReceiveData();
          
    /* Reset the number of bytes to be read from the EEPROM */
      NumByteToRead = 0;   
  }

  /* If number of data to be read is 1 */
  /* One Byte Master Reception procedure (POLLING) ---------------------------*/
  if ((uint16_t)(*NumByteToRead) < 2)
  {
    /* Wait on ADDR flag to be set (ADDR is still not cleared at this level */
    while(I2C_GetFlagStatus( I2C_FLAG_ADDR) == RESET)
    {
    } 
       
    /* Disable Acknowledgement */
    I2C_AcknowledgeConfig(DISABLE); 

    /* Disable interrupts */
    disableInterrupts();
    
    /* Clear ADDR register by reading SR1 then SR3 register (SR1 has already been read) */
    (void)sEE_I2C->SR3;
    
    /* Send STOP Condition */
    I2C_GenerateSTOP( ENABLE);
   
    /* re-enable interrupts */
    enableInterrupts();
    
    /* Wait for the byte to be received */
    while(I2C_GetFlagStatus( I2C_FLAG_RXNE) == RESET)
    {
    }
    
    /* Read the byte received from the EEPROM */
    *pBuffer = I2C_ReceiveData();
    
    /* Decrement the read bytes counter */
    (uint16_t)(*NumByteToRead)--;        
    
    /* Wait to make sure that STOP control bit has been cleared */
    while(sEE_I2C->CR2 & I2C_CR2_STOP)
    {
    }  
    
    /* Re-Enable Acknowledgement to be ready for another reception */
    I2C_AcknowledgeConfig(ENABLE);  
  }
}

/**
  * @brief  Writes buffer of data to the I2C EEPROM.
  * @param  pBuffer : pointer to the buffer  containing the data to be written
  *         to the EEPROM.
  * @param  WriteAddr : EEPROM's internal address to write to.
  * @param  NumByteToWrite : number of bytes to write to the EEPROM.
  * @retval None
  */
void sEE_WriteBuffer(uint8_t* pBuffer, uint16_t WriteAddr, uint16_t NumByteToWrite)
{
  uint8_t NumOfPage = 0, NumOfSingle = 0, count = 0;
  uint16_t Addr = 0;

  Addr = WriteAddr % sEE_PAGESIZE;
  count = (uint8_t)(sEE_PAGESIZE - (uint16_t)Addr);
  NumOfPage =  (uint8_t)(NumByteToWrite / sEE_PAGESIZE);
  NumOfSingle = (uint8_t)(NumByteToWrite % sEE_PAGESIZE);

  /* If WriteAddr is sEE_PAGESIZE aligned  */
  if (Addr == 0)
  {
    /* If NumByteToWrite < sEE_PAGESIZE */
    if (NumOfPage == 0)
    {
      /* Store the number of data to be written */
      sEEDataNum = NumOfSingle;
      /* Start writing data */
      sEE_WritePage(pBuffer, WriteAddr, (uint8_t*)(&sEEDataNum));
      /* Wait data transfer to be complete */
      sEETimeout = sEE_TIMEOUT_MAX;
      while ((sEEDataNum > 0) && (sEETimeout-- > 0))
      {}
      
      sEE_WaitEepromStandbyState();
    }
    /* If NumByteToWrite > sEE_PAGESIZE */
    else
    {
      while (NumOfPage--)
      {
        /* Store the number of data to be written */
        sEEDataNum = sEE_PAGESIZE;
        sEE_WritePage(pBuffer, WriteAddr, (uint8_t*)(&sEEDataNum));
        /* Wait data transfer to be complete */
        sEETimeout = sEE_TIMEOUT_MAX;
        while ((sEEDataNum > 0) && (sEETimeout-- > 0))
        {}
        sEE_WaitEepromStandbyState();
        WriteAddr +=  sEE_PAGESIZE;
        pBuffer += sEE_PAGESIZE;
      }

      if (NumOfSingle != 0)
      {
        /* Store the number of data to be written */
        sEEDataNum = NumOfSingle;
        sEE_WritePage(pBuffer, WriteAddr, (uint8_t*)(&sEEDataNum));
        /* Wait data transfer to be complete */
        sEETimeout = sEE_TIMEOUT_MAX;
        while ((sEEDataNum > 0) && (sEETimeout-- > 0))
        {}
        sEE_WaitEepromStandbyState();
      }
    }
  }
  /* If WriteAddr is not sEE_PAGESIZE aligned  */
  else
  {
    /* If NumByteToWrite < sEE_PAGESIZE */
    if (NumOfPage == 0)
    {
      /* If the number of data to be written is more than the remaining space
      in the current page: */
      if (NumByteToWrite > count)
      {
        /* Store the number of data to be written */
        sEEDataNum = count;
        /* Write the data contained in the same page */
        sEE_WritePage(pBuffer, WriteAddr, (uint8_t*)(&sEEDataNum));
        /* Wait data transfer to be complete */
        sEETimeout = sEE_TIMEOUT_MAX;
        while ((sEEDataNum > 0) && (sEETimeout-- > 0))
        {}
        sEE_WaitEepromStandbyState();

        /* Store the number of data to be written */
        sEEDataNum = (uint8_t)(NumByteToWrite - count);
        /* Write the remaining data in the following page */
        sEE_WritePage((uint8_t*)(pBuffer + count), (WriteAddr + count), (uint8_t*)(&sEEDataNum));
        /* Wait data transfer to be complete */
        sEETimeout = sEE_TIMEOUT_MAX;
        while ((sEEDataNum > 0) && (sEETimeout-- > 0))
        {}
        sEE_WaitEepromStandbyState();
      }
      else
      {
        /* Store the number of data to be written */
        sEEDataNum = NumOfSingle;
        sEE_WritePage(pBuffer, WriteAddr, (uint8_t*)(&sEEDataNum));
        /* Wait data transfer to be complete */
        sEETimeout = sEE_TIMEOUT_MAX;
        while ((sEEDataNum > 0) && (sEETimeout-- > 0))
        {}
        sEE_WaitEepromStandbyState();
      }
    }
    /* If NumByteToWrite > sEE_PAGESIZE */
    else
    {
      NumByteToWrite -= count;
      NumOfPage = (uint8_t)(NumByteToWrite / sEE_PAGESIZE);
      NumOfSingle = (uint8_t)(NumByteToWrite % sEE_PAGESIZE);

      if (count != 0)
      {
        /* Store the number of data to be written */
        sEEDataNum = count;
        sEE_WritePage(pBuffer, WriteAddr, (uint8_t*)(&sEEDataNum));
        /* Wait data transfer to be complete */
        sEETimeout = sEE_TIMEOUT_MAX;
        while ((sEEDataNum > 0) && (sEETimeout-- > 0))
        {}
        sEE_WaitEepromStandbyState();
        WriteAddr += count;
        pBuffer += count;
      }

      while (NumOfPage--)
      {
        /* Store the number of data to be written */
        sEEDataNum = sEE_PAGESIZE;
        sEE_WritePage(pBuffer, WriteAddr, (uint8_t*)(&sEEDataNum));
        /* Wait data transfer to be complete */
        sEETimeout = sEE_TIMEOUT_MAX;
        while ((sEEDataNum > 0) && (sEETimeout-- > 0))
        {}
        sEE_WaitEepromStandbyState();
        WriteAddr +=  sEE_PAGESIZE;
        pBuffer += sEE_PAGESIZE;
      }
      if (NumOfSingle != 0)
      {
        /* Store the number of data to be written */
        sEEDataNum = NumOfSingle;
        sEE_WritePage(pBuffer, WriteAddr, (uint8_t*)(&sEEDataNum));
        /* Wait data transfer to be complete */
        sEETimeout = sEE_TIMEOUT_MAX;
        while ((sEEDataNum > 0) && (sEETimeout-- > 0))
        {}
        sEE_WaitEepromStandbyState();
      }
    }
  }
}

/**
  * @brief  Writes more than one byte to the EEPROM with a single WRITE cycle.
  *   
  * @note   The number of bytes (combined to write start address) must not 
  *         cross the EEPROM page boundary. This function can only write into
  *         the boundaries of an EEPROM page.
  *         This function doesn't check on boundaries condition (in this driver 
  *         the function sEE_WriteBuffer() which calls sEE_WritePage() is 
  *         responsible of checking on Page boundaries).
  * 
  * @param  pBuffer: pointer to the buffer containing the data to be written to 
  *         the EEPROM.
  * @param  WriteAddr: EEPROM's internal address to write to.
  * @param  NumByteToWrite: pointer to the variable holding number of bytes to 
  *         be written into the EEPROM. 
  * 
  *        @note The variable pointed by NumByteToWrite is reset to 0 when all the 
  *              data are written to the EEPROM. Application should monitor this 
  *              variable in order know when the transfer is complete.
  *
  * @retval None
  */
void sEE_WritePage(uint8_t* pBuffer, uint16_t WriteAddr, uint8_t* NumByteToWrite)
{
  __IO uint32_t timeout = 0xFFFF;

  /* Wait the end of last communication */
  for (;timeout > 0; timeout--);

  /* Set the pointer to the Number of data to be written. 
     User should check on this variable in order to know if the 
     data transfer has been completed or not. */
  sEEDataWritePointer = NumByteToWrite;

  /* While the bus is busy */
  while (I2C_GetFlagStatus(I2C_FLAG_BUSY))
  {}

  /* Send START condition */
  I2C_GenerateSTART(ENABLE);

  /* Test on EV5 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT))
  {}

  /* Send EEPROM address for write */
  I2C_Send7bitAddress((uint8_t)sEEAddress, I2C_Direction_Transmitter);

  /* Test on EV6 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED))
  {}

#ifdef sEE_M24C64_32

  /* Send the EEPROM's internal address to write to : MSB of the address first */
  I2C_SendData((uint8_t)((WriteAddr & 0xFF00) >> 8));

  /* Test on EV8 and clear it */
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED))
  {}

  /* Send the EEPROM's internal address to write to : LSB of the address */
  I2C_SendData((uint8_t)(WriteAddr & 0x00FF));

#endif /* sEE_M24C64_32 */

  /* Test on EV8 and clear it */
  while (! I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED))
  {}

  /* While there is data to be written */
  while((uint16_t)(*NumByteToWrite) > 0)
  {
    /* Send the byte to be written */
    I2C_SendData( *pBuffer);

    /* Test on EV8 and clear it */
    /* Wait till all data have been physically transferred on the bus */
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED))
    {}
    (uint16_t)(*NumByteToWrite)--;
  }
  
   /* Send STOP condition */
    I2C_GenerateSTOP(ENABLE);
    
    /* Perform a read on SR1 and SR3 register to clear eventually pending flags */
    (void)sEE_I2C->SR1;
    (void)sEE_I2C->SR3;
}

/**
  * @brief  Wait for EEPROM Standby state.
  * 
  * @note  This function allows to wait and check that EEPROM has finished the 
  *        last Write operation. It is mostly used after a Write operation: after 
  *        receiving the buffer to be written, the EEPROM may need additional 
  *        time to actually perform the write operation. During this time, it 
  *        doesn't answer to I2C packets addressed to it. Once the write operation 
  *        is complete the EEPROM responds to its address.
  *        
  * @note  It is not necessary to call this function after sEE_WriteBuffer() 
  *        function (sEE_WriteBuffer() already calls this function after each
  *        write page operation).    
  * 
  * @param  None
  * @retval None
  */
void sEE_WaitEepromStandbyState(void) 
{
  __IO uint8_t tempreg = 0;
  __IO uint32_t timeout = 0xFFFF;

  do
  {
    /*!< Send START condition */
    I2C_GenerateSTART(ENABLE);

    /* Test on EEPROM_I2C EV5 and clear it */
    while (!I2C_GetFlagStatus(I2C_FLAG_SB))  /* EV5 */
    {
    }

    /*!< Send EEPROM address for write */
    I2C_Send7bitAddress((uint8_t)sEEAddress, I2C_Direction_Transmitter);

    /*!< Wait for address acknowledgement */
    for (;timeout > 0; timeout--);

    /*!< Read sEE SR1 register to clear pending flags */
    tempreg = I2C->SR1;

  }
  while (!(tempreg & 0x02));

  /*!< Clear AF flag */
  I2C_ClearFlag(I2C_FLAG_AF);

  /*!< STOP condition */
  I2C_GenerateSTOP(ENABLE);
}

/**
  * @}
  */

/**
  * @}
  */
  
/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
