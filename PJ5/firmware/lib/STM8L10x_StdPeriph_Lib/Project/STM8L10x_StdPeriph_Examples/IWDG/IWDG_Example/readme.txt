/** @page IWDG_Example IWDG refreshing, IWDG Reset

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    IWDG/IWDG_Example/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the IWDG example
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
  
 This example shows how to update at regular period the IWDG reload counter and 
 how to simulate a software fault generating an MCU IWDG reset on expiry of a 
 programmed time period.

 The IWDG timeout is set to 214 ms (the timeout may varies due to LSI frequency 
 dispersion).

 First, the TIM2 timer is configured to measure the LSI frequency as the 
 LSI is internally connected to it, in order to adjust the IWDG clock.
 The IWDG reload counter is configured to obtain 214ms according to the 
 measured LSI frequency.


 The Key button is used to generate an interrupt that will simulate a software 
 failure by pressing it.
 In the ISR, a trap instruction is executed generating a TRAP interrupt containing
 an infinite loop and preventing to return to main program (the IWDG reload counter 
 is no more refreshed).
 As a result, when the IWDG counter reaches 00h, the IWDG reset occurs.
 If the IWDG reset is generated, after the system resumes from reset, LED2 turns on.

 If the Key button is not pressed, the IWDG counter is refreshed in an infinite loop
 and there is no IWDG reset.

  @par Directory content

  - IWDG\IWDG_Example\main.c                       Main file containing the "main" function
  - IWDG\IWDG_Example\stm8l10x_conf.h              Library Configuration file
  - IWDG\IWDG_Example\stm8l10x_it.c                Interrupt routines source 
  - IWDG\IWDG_Example\stm8l10x_it.h                Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1-EVAL Set-up
     - LD2
     - Key push button.


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - If you press the key button, a Reset occurs and LED2 turn on.
    
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
