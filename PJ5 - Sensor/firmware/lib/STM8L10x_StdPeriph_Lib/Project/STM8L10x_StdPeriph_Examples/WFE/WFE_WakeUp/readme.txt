/** @page WFE_WakeUp wake up from wait for event mode

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    WFE/WFE_WakeUp/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the WFE example
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

  This example provides a short description of how the CPU operates when entering 
  in wait for event mode.
  After entering in WFE mode and when pressing the KEY button an interrupt is 
  generated: the CPU wakes up from WFE mode and services the interrupt and goes 
  back to  WFE mode..
  When pressing the Joystick select button a WFE event occurs: the CPU wakes up 
  and resumes processing without serving the interrupt.
  

  @par Directory content

  - WFE\WFE_WakeUp\main.c                       Main file containing the "main" function
  - WFE\WFE_WakeUp\stm8l10x_conf.h              Library Configuration file
  - WFE\WFE_WakeUp\stm8l10x_it.c                Interrupt routines source
  - WFE\WFE_WakeUp\stm8l10x_it.h                Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.

  - STM8L1x-EVAL Set-up
     - LED2, LED3 and LED4
     - Key push button
     - Joystick SEL button

  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - The LED2, LED3 and LED4 are ON
  - Firstly, press the Key button, an interrupt is generated the CPU wakes up from
   WFE mode, toggles the LED2.
  - Then press the Joystick select button, an event is generated: LD2, LD3 and
   LD4 are blinking continuously.

@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
