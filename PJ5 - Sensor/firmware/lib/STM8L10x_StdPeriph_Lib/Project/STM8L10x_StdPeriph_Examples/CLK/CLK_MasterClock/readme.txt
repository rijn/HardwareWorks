/** @page CLK_MasterClock  Master Clock Prescaler Configuration example

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    CLK/CLK_MasterClock/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the Master Clock configuration example
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

  This example is demonstrating the different Master Prescaler configuartions,
  using the joystick available on the evaluation board.
  - Each time a clock is selected LEDs from 2 to 4 start blinking for a while
    according to the selected clock frequency.

@par Directory contents

  - CLK\CLK_MasterClock\main.c             Main file containing the "main" function
  - CLK\CLK_MasterClock\stm8l10x_conf.h    Library Configuration file
  - CLK\CLK_MasterClock\stm8l10x_it.c      Interrupt routines source
  - CLK\CLK_MasterClock\stm8l10x_it.h      Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.

  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.

  -  Connect PC4 pin (CCO) to an Oscilloscope

  - STM8L1x-EVAL Set-up
     - Three leds LD2, LD3 and LD4 
     - Joystick button.
     
  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - Using the joystick choose the desired Master clock:
    UP = HSI/4, DOWN = HSI/8, RIGHT = HSI, LEFT = HSI/2
  - Observe the LEDs frequency blinking according to the selected clock. 
  - The clock output can be monitored by putting a scope on PC4 (CCO).

@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */