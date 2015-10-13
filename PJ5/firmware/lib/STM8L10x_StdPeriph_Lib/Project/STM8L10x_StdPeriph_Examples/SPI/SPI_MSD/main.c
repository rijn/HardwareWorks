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
#include "stm8l_eval_lcd.h"
#include "stm8l_eval_spi_sd.h"

/**
  * @addtogroup SPI_MSD
  * @{
  */

/* Private macro -------------------------------------------------------------*/
#define countof(a) (sizeof(a) / sizeof(*(a)))
/* Private define ------------------------------------------------------------*/
#define BufferSize (countof(Tx_Buffer)-1)
/* Private variables ---------------------------------------------------------*/
uint16_t Status = 0;
uint8_t Tx_Buffer[] = "STM8l10x SPI Firmware Library Example: communication with a microSD card";
uint8_t Rx_Buffer[BufferSize] = {0};
__IO ErrorStatus TransferStatus = ERROR;
extern __IO uint8_t ButtonPressed;
    
/* Private function prototypes -----------------------------------------------*/
void Delay (uint16_t nCount);
ErrorStatus Buffercmp(uint8_t* pBuffer1, uint8_t* pBuffer2, uint16_t BufferLength);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{    
    uint8_t i = 0;
    
    /*High speed internal clock prescaler: 4*/  
    CLK_MasterPrescalerConfig(CLK_MasterPrescaler_HSIDiv4);
    
    /* Initialize KEY button */
    STM_EVAL_PBInit(BUTTON_KEY, BUTTON_MODE_EXTI);
    
    /* Initialize LCD and display welcome message */
    STM8L_EVAL_LCD_Init();

    LCD_SetCursorPos(LCD_LINE1, 0);
    LCD_Print(" SPI & MicroSD ");
    LCD_SetCursorPos(LCD_LINE2, 0);
    LCD_Print(" Communication ");
    for (i = 0; i < 6; i++)
    {
        Delay(0xFFFF);
    }

    /* Enable general interrupts for Key button reading */
    enableInterrupts();

    /* Display second message */
    LCD_Clear();
    LCD_SetCursorPos(LCD_LINE1, 0);
    LCD_Print("Insert MicroSD ");
    LCD_SetCursorPos(LCD_LINE2, 0);
    LCD_Print("   Press KEY   ");
    
    /* Check button status */
    /* Wait external interrupt */
    while (ButtonPressed != TRUE);

    /* MicroSD card detection */
    for (i = 0; i < 6; i++)
    {
        Delay(0xFFFF);
    }
      
    /* Clear the LCD */
    LCD_Clear();

    /* Init the flash micro SD*/
    Status = SD_Init();

    /***************************Block Read/Write******************************/
    /* Write block of 512 bytes on address 0 */
    Status = SD_WriteBlock(Tx_Buffer, 0, BufferSize);
    /* Read block of 512 bytes from address 0 */
    Status = SD_ReadBlock(Rx_Buffer, 0, BufferSize);

    /* Check data */
    TransferStatus = Buffercmp(Tx_Buffer, Rx_Buffer, BufferSize);
  
    /*Print result of test on LCD */
    LCD_SetCursorPos(LCD_LINE1, 0);
    LCD_Print("   W&R block   ");

    if (TransferStatus == ERROR)
    {
        LCD_SetCursorPos(LCD_LINE2, 0);
        LCD_Print("     ERROR     ");
    }
    else
    {
        LCD_SetCursorPos(LCD_LINE2, 0);
        LCD_Print("    SUCCESS    ");
    }

    for (i = 0; i < 7; i++) /* Delay */
    {
        Delay(0xFFFF);
    }
    /* Notify user the end of demo */
    LCD_Clear();
    LCD_SetCursorPos(LCD_LINE1, 0);
    LCD_Print("   THE END !   ");
    while (1)
    {
    }
}

/**
  * @brief Compares two buffers.
  * @par Parameters:
  * - pBuffer1, pBuffer2: buffers to be compared.
  * - BufferLength: buffer's length
  * @retval
  * - PASSED: pBuffer1 identical to pBuffer2
  * - FAILED: pBuffer1 differs from pBuffer2
  */
ErrorStatus Buffercmp(uint8_t* pBuffer1, uint8_t* pBuffer2, uint16_t BufferLength)
{
    while (BufferLength--)
    {
        if (*pBuffer1 != *pBuffer2)
        {
            return ERROR;
        }

        pBuffer1++;
        pBuffer2++;
    }

    return SUCCESS;
}
/**
  * @brief  Delay.
  * @param  nCount
  * @retval None
  */
void Delay(uint16_t nCount)
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
