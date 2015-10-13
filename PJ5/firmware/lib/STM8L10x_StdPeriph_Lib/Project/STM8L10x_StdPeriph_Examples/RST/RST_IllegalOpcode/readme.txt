/** @page RST_IllegalOpcode Illegal Opcode Reset

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    RST/RST_IllegalOpcode/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the Illegal Opcode example
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

  This example provides a short description of how to generate detect 
  and manage an illegal opcode reset. 
	Pressing the KEY button will cause a jump to a specific memory 
  address where an illegal opcode is written, so a reset is generated. 
  LEDs from 2 to 4 start blinking fast signaling the illegal opcode "ILLOP" reset.
	When the reset flag is cleared they will blink slowly.


  @par Directory content

  - RST\RST_IllegalOpcode\main.c                    Main file containing the "main" function
  - RST\RST_IllegalOpcode\stm8l10x_conf.h           Library Configuration file
  - RST\RST_IllegalOpcode\stm8l10x_it.c             Interrupt routines source
  - RST\RST_IllegalOpcode\stm8l10x_it.h             Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.

  - STM8L1x-EVAL Set-up
     - Three leds LD2, LD3 and LD4 and 
     - Key push button.


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - The LD2, LD3 and LD4 are blinking slowly
  - If you press the button, a Reset occurs and LD2, LD3 and LD4 blink fast


@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
