/** @page USART_MultiProcessor Use the USART in multi-processor mode

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    USART/USART_MultiProcessor/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the USART multi-processor Example.
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

  This example provides a description of how to use the USART in multi-processor mode.
  The USART Master and USART Slave addresses are set to 0x1 and 0x2, 
  respectively.
   
  - In the Master board (define USART_Master in main.h), USART Master continuously
    sends the 0x33 character to second board (define USART_Slave in main.h) USART Slave. 
  - In the Slave board, four LEDs (LD2, LD3 and LD4) are toggled while the USART receives 0x33.
  - In the Slave board when KEY pushbutton is pressed, an interrupt is generated
    and in the EXTI Interrupt service routine, the USART enters mute mode and 
    remains in this mode (no LEDs toggling) 
  - In the Master board when KEY pushbutton is pressed, an interrupt is 
    generated and in the EXTI Interrupt service routine, USART Master sends the 
    address mark character (0x102) to wake up USART Slave. 
  - In the Slave board the USART slave receives the wake up and the LEDs restart 
    toggling. 

  USART Master and Slave configured as follow:
  - BaudRate = 9600 baud  
  - Word Length = 9 Bits
  - One Stop Bit
  - No parity
  - Receive and transmit enabled

              
   @par Directory content

  - USART\USART_MultiProcessor\main.c                       Main file containing the "main" function
  - USART\USART_MultiProcessor\main.h                       Main functions prototype  
  - USART\USART_MultiProcessor\stm8l10x_conf.h              Library Configuration file
  - USART\USART_MultiProcessor\stm8l10x_it.c                Interrupt routines source
  - USART\USART_MultiProcessor\stm8l10x_it.h                Interrupt routines declaration


  @par Hardware and software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.

  - STM8L1x-EVAL Set-up    
     - To run this example it is necessary to use two STM8L1x-EVAL boards: one to run
       the USART Master and another to run the USART Salve 
       Connect USART_Tx(PC.03) and USART_Rx(PC.02) on the first STM8L1x-EVAL board 
       to respectively USART_Rx(PC.02) and USART_Tx(PC.03) on the second STM8L1x-EVAL
       board( or connect a null-modem female/female RS232 cable between 2 STM8L1x-EVAL
       boards: CN8 connector on each board).
       Make sure that the two boards are connected to the same ground.
    - Three leds LD2 to LD4 and Key push-button are used.
    
   
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
