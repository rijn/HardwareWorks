/** @page ITC_SoftwarePriority Changing software priority on two external interrupt lines

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    ITC/ITC_SoftwarePriority/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the ITC software priority example
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

  This example shows how to use the ITC peripheral.
  It does the following:
  - Configures two I/Os in output push-pull for driving two LEDs
  - Configures two I/Os in input with interrupt for reading two buttons
  - Configures the two External Interrupt lines in Falling edge + Low level (GPIOA Pin4 and Pin5)
  - Changes software priority between GPIOA Pin4 and Pin5 (GPIOA Pin5 has a higher sw priority)


  @par Directory content

  - ITC\ITC_SoftwarePriority\main.c                       Main file containing the "main" function
  - ITC\ITC_SoftwarePriority\stm8l10x_conf.h              Library Configuration file
  - ITC\ITC_SoftwarePriority\stm8l10x_it.c                Interrupt routines source
  - ITC\ITC_SoftwarePriority\stm8l10x_it.h                Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.

  - STM8L1x-EVAL Set-up
     - Two leds LED2 and LED3,
     - Key push button
     - Joystick Down button.
 
  
  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - The LED2 and LED3 are ON per default
  - When the Joystick Down button is pressed, the LED2 toggles and LED3 is OFF
  - When the Key button is pressed, the LED3 toggles and LED2 is OFF
  - Play with the Button and the Joystick Down in order to see which one has
    the highest priority:
     - press and maintain the Joystick Down Button -> LED2 toggles, LED3 OFF
     - Continue pressing the Joystick Down Button and press the Key button -> 
        LED3 toggles instead, LED2 OFF (Key has the priority)
        If you do the reverse, you can see that the KEY button is not interrupted by
        the Joystick button as configured by hardware.

@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
