/** @page SPI_FullDuplexUSART Full duplex master/slave communication with USART.

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    SPI/SPI_FullDuplexUSART/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the USART in full duplex mode example
  ******************************************************************************
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
  @endverbatim

  @par Example description

  This example provides a short description of how to make a master/slave communication
  between the SPI and the USART, the last is configured in master mode.
  
  Data transmitted by USART "DataTx" and data received by SPI "DataRx" are both 
  printed on the LCD to be compared.
  
  @par Directory content

  - SPI\SPI_FullDuplexUSART\main.c                       Main file containing the "main" function
  - SPI\SPI_FullDuplexUSART\stm8l10x_conf.h              Library Configuration file
  - SPI\SPI_FullDuplexUSART\stm8l10x_it.c                Interrupt routines source
  - SPI\SPI_FullDuplexUSART\stm8l10x_it.h                Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.

  - STM8L1x-EVAL Set-up    
      - Connect USART and SPI pins as follows:
         - USART TX (PC3) to SPI MOSI (PB6)
         - USART RX (PC2) to SPI MISO (PB7)
         - USART CLK (PC4) to SPI SCK (PB5)


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Follow instructions on the LCD
  
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
