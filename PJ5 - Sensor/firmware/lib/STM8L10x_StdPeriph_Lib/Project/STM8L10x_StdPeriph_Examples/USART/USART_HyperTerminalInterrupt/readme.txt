/** @page USART_HyperTerminalInterrupt Communication between USART and hyperterminal using interrupts

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    USART/USART_HyperTerminalInterrupt/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the AWU example
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

  This example provides a description of how  to use the USART interrupts to 
  communicate with the hyperterminal.
  The USART sends a predefined buffer to the hyperterminal and keep waiting 
  for a string from the hyperterminal which length is defined by RxBufferSize. 
  The communication is managed by Transmit and Receive interrupts. 

  The USART is configured as follow:
    - BaudRate = 9600 baud  
    - Word Length = 8 Bits (Word Length = 7 data bit + 1 parity bit)
    - One Stop Bit
    - Odd parity
    - Receive and transmit enabled
    - USART Clock disabled
  
  @note When the parity is enabled, the computed parity is inserted at the MSB
          position of the transmitted data.

    
  @par Directory content

    - USART\USART_HyperTerminalInterrupt\main.c                  Main file containing the "main" function
    - USART\USART_HyperTerminalInterrupt\stm8l10x_conf.h         Library Configuration file
    - USART\USART_HyperTerminalInterrupt\stm8l10x_it.c           Interrupt routines source
    - USART\USART_HyperTerminalInterrupt\stm8l10x_it.h           Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.

  - STM8L1x-EVAL Set-up
     - Connect a null-modem female/female RS232 cable between the DB9 connector
       CN8 and PC serial port.
     - Hyperterminal configuration:
      - Word Length = 7 Bits
      - One Stop Bit
      - Odd parity
      - BaudRate = 9600 baud
      - flow control: None


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
