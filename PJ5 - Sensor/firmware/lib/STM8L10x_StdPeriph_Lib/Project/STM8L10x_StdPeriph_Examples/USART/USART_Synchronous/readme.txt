/** @page USART_Synchronous A basic communication between USART and SPI using flags

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    USART/USART_Synchronous/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the USART synchronuous mode example
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

  This example provides a basic communication between USART (Synchronous mode) 
  and SPI using flags.

  First, the USART sends data from TxBuffer1 buffer to SPI using TXE flag.
  Data received using RXNE flag by SPI is stored in RxBuffer2 then compared with
  the sent ones and the result of this comparison is stored in the "TransferStatus1" 
  variable.
 
  Then, the SPI sends data from TxBuffer2 buffer to USART using TXE flag.
  Data received using RXNE flag by USART is stored in RxBuffer1 then compared with
  the sent ones and the result of this comparison is stored in the "TransferStatus2" 
  variable.   


  The USART is configured as follows:
    - BaudRate = 9600 baud  
    - Word Length = 8 Bits
    - One Stop Bit
    - No parity
    - Receive and transmit enabled
    - USART Clock enabled
    - USART CPOL: Clock is active low
    - USART CPHA: Data is captured in middle of data bit 
    - USART LastBit: The clock pulse of the last data bit is output to the SCLK pin

  The SPI is configured as follows:
    - Direction = 2 Lines FullDuplex
    - Mode = Slave Mode
    - DataSize = 8 Bits
    - CPOL = Clock is active low
    - CPHA = Data is captured on the first edge 
    - NSS = NSS Software
    - First Bit = First Bit is the LSB   


  @par Directory content

  - USART\USART_Synchronous\main.c                    Main file containing the "main" function
  - USART\USART_Synchronous\stm8l10x_conf.h           Library Configuration file
  - USART\USART_Synchronous\stm8l10x_it.c             Interrupt routines source (not used in this example)
  - USART\USART_Synchronous\stm8l10x_it.h             Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.

  - STM8L1x-EVAL Set-up
     - Connect USART TX (PC3) to SPI MOSI (PB6)
     - Connect USART RX (PC2) to SPI MISO (PB7)
     - Connect USART CK (PC4) to SPI SCK (PB5)


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
