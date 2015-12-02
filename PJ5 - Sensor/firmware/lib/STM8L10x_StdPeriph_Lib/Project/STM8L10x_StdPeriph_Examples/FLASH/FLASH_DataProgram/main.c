/**
  ******************************************************************************
  * @file    FLASH/FLASH_DataProgram/main.c
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

/** @addtogroup STM8L10x_StdPeriph_Examples
  * @{
  */

/**
  * @addtogroup FLASH_DataProgram
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
typedef enum { FAILED = 0, PASSED = !FAILED} TestStatus;
/* Private define ------------------------------------------------------------*/
#define BLOCK_OPERATION    0    /* block 0 in data eeprom memory: address is 0x1000 */
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
uint8_t GBuffer[FLASH_BLOCK_SIZE];
TestStatus OperationStatus = FAILED;

#ifdef _RAISONANCE_
/* needed by memcpy for raisonance */
 #include <string.h>
 extern int __address__FLASH_EraseBlock;
 extern int __size__FLASH_EraseBlock;
 extern int __address__FLASH_ProgramBlock;
 extern int __size__FLASH_ProgramBlock;
#endif /*_RAISONANCE_*/

/* Private function prototypes -----------------------------------------------*/
/* Declare _fctcpy function prototype as it is packaged by default in the Cosmic
   machine library */
#ifdef _COSMIC_
 int _fctcpy(char name);
#endif /*_COSMIC_*/
void Delay(uint32_t nCount);

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  uint32_t add = 0, startadd = 0, stopadd = 0;
  uint8_t newval = 0xAA;
  uint8_t i = 0;

#ifdef _COSMIC_
/* Call the _fctcpy() function with the first segment character as parameter 
   "_fctcpy('F');"  for a manual copy of the declared moveable code segment
   (FLASH_CODE) in RAM before execution*/
  _fctcpy('F');
#endif /*_COSMIC_*/

#ifdef _RAISONANCE_
/* Call the standard C library: memcpy() or fmemcpy() functions available through 
   the <string.h> to copy the inram function to the RAM destination address */
  MEMCPY(FLASH_EraseBlock,
         (void PointerAttr*)&__address__FLASH_EraseBlock,
         (int)&__size__FLASH_EraseBlock);
  MEMCPY(FLASH_ProgramBlock,
         (void PointerAttr*)&__address__FLASH_ProgramBlock,
         (int)&__size__FLASH_ProgramBlock);
#endif /*_RAISONANCE_*/

  /* Initialize I/Os in Output Mode */
  STM_EVAL_LEDInit(LED2);
  STM_EVAL_LEDInit(LED3);
  STM_EVAL_LEDInit(LED4);

  /* High speed internal clock prescaler */
  CLK_MasterPrescalerConfig(CLK_MasterPrescaler_HSIDiv1);

  /* Define flash programming Time*/
  FLASH_SetProgrammingTime(FLASH_ProgramTime_Standard);

  FLASH_Unlock(FLASH_MemType_Program);
  /* Wait until Flash Program area unlocked flag is set*/
  while (FLASH_GetFlagStatus(FLASH_FLAG_PUL) == RESET)
  {}

  /* Unlock flash data eeprom memory */
  FLASH_Unlock(FLASH_MemType_Data);
  /* Wait until Data EEPROM area unlocked flag is set*/
  while (FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET)
  {}

  /* Fill the buffer in RAM */
  for (i = 0; i < FLASH_BLOCK_SIZE; i++)
  {
    GBuffer[i] = newval;
  }
  /* This function is executed from RAM */
  FLASH_ProgramBlock(BLOCK_OPERATION, FLASH_ProgramMode_Standard, GBuffer);
	  
  /* Check the programmed block */
  startadd = FLASH_START_PHYSICAL_ADDRESS + ((uint16_t)BLOCK_OPERATION * (uint16_t)FLASH_BLOCK_SIZE);
  stopadd = startadd + (uint16_t)FLASH_BLOCK_SIZE;
  for (add = startadd; add < stopadd; add++)
      {
        if (FLASH_ReadByte(add) != newval)
        {
          /* Error */
          OperationStatus = FAILED;
          /* OperationStatus = PASSED, if the data written/read to/from Flash program memory is correct */
          /* OperationStatus = FAILED, if the data written/read to/from Flash program memory is corrupted */
          while (1)
          {
            STM_EVAL_LEDToggle(LED1); /*FAIL: write error */
            
            Delay(0xFFFF);
          }
        }
      }
  /* Erase block 0 and verify it */
  /* This function is executed from RAM */
  FLASH_EraseBlock(BLOCK_OPERATION);

  for (add = startadd; add < stopadd; add++)
      {
        if (FLASH_ReadByte(add) != 0x00)
        {
          /* Error */
          OperationStatus = FAILED;
          /* OperationStatus = PASSED, if the data written/read to/from Flash program memory is correct */
          /* OperationStatus = FAILED, if the data written/read to/from Flash program memory is corrupted */
          while (1)
          {
            STM_EVAL_LEDToggle(LED2); /* FAIL: Erase error */
            
           Delay(0xFFFF);
          }
        }
      }

  /* Pass */
  OperationStatus = PASSED;
  /* OperationStatus = PASSED, if the data written/read to/from Flash program memory is correct */
  /* OperationStatus = FAILED, if the data written/read to/from Flash program memory is corrupted */
  while (1)
  {
    STM_EVAL_LEDToggle(LED3); /* PASS: without errors*/
    
    Delay(0xFFFF);
  }
}

/**
  * @brief  Delay.
  * @param  nCount
  * @retval None
  */
void Delay(uint32_t nCount)
{
    /* Decrement nCount value */
    while (nCount != 0)
    {
        nCount--;
    }
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {}
}
#endif

/**
  * @}
  */

/**
  * @}
  */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/