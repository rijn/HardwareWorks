/** @page BEEP_3SignalsGeneration Generation of the 3 beep signals

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    BEEP/BEEP_3SignalsGeneration/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the BEEP example
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

  This example provides a short description of how to use the BEEP peripheral:
  - Initialization of the BEEP peripheral
  - Initialization of a GPIO in input mode in order to read the Key Button state
  - Initialization of GPIO in output mode to drive LEDs
  - Each action on the Key button toggles between the 3 beep frequencies


  @par Directory content

  - BEEP\BEEP_3SignalsGeneration\main.c                       Main file containing the "main" function
  - BEEP\BEEP_3SignalsGeneration\stm8l10x_conf.h              Library Configuration file
  - BEEP\BEEP_3SignalsGeneration\stm8l10x_it.c                Interrupt routines source
  - BEEP\BEEP_3SignalsGeneration\stm8l10x_it.h                Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1x-EVAL Set-up
     - Make sure that the JP9 is on the Beep position (to enable the beeper)
     - Make sure that the JP10 is installed (to enable the speaker)
     - Adjust the speaker volume by the mean of the RV2 potentiometer
     - Three leds (LD2, LD3 and LD4)
     - Key push button.
     - PA0 used to drive the buzzer


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - Per default, the BEEP signal is OFF and the 3 LEDs are ON.
  - Everytime you press the Key button on the board, you will toggle the
    buzzer frequency in this way: 1kHz -> 2kHz -> 4kHz -> OFF -> 1kHz -> etc...
  - The 3 LEDs will toggle respectively.
  

@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
