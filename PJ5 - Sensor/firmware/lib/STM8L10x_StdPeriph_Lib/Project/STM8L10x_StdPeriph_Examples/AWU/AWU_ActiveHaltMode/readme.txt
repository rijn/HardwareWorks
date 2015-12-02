/** @page AWU_ActiveHaltMode Using the AWU to wake-up the CPU from Active Halt mode

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    AWU/AWU_ActiveHalt/readme.txt 
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

  This example provides a short description of how to use the AWU peripheral:
  - Initialization of the AWU peripheral
  - Initialization of GPIO pins in output mode in order to drive LEDs
  - Initialization of a GPIO in input mode in order to read the Key Button state


  @par Directory content

  - AWU\AWU_ActiveHaltMode\main.c                       Main file containing the "main" function
  - AWU\AWU_ActiveHaltMode\stm8l10x_conf.h              Library Configuration file
  - AWU\AWU_ActiveHaltMode\stm8l10x_it.c                Interrupt routines source
  - AWU\AWU_ActiveHaltMode\stm8l10x_it.h                Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1x-EVAL Set-up
     - LED2, LED3 and LED4
     - Key push button.

  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - The 3 LEDs (LED2, LED3 and LED4) blink continuously and slowly
  - If you press the Key button on the board, the LEDs will blink faster for
    few seconds and then will be switched off.
  - At this stage, the CPU is in Active Halt mode.
  - After few seconds (12s), the MCU will exit from halt mode thanks to the AWU.
  - The 3 LEDs will continue to blink slowly.

@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
