/** @page EXTI_IOControl Reading buttons state using external interrupts

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    EXTI/EXTI_IOControl/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the EXTI IO Control Example.
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

  This basic firwmare example shows how to use the EXTI peripheral.
  It does the following:
  - Configures three I/Os in output push-pull for driving three LEDs
  - Configures two I/Os in input with interrupt for reading two buttons
  - Configures the two External Interrupt lines in Falling edge + Low level (GPIOB Pin1 and Pin2)


  @par Directory content

  - EXTI\EXTI_IOControl\main.c                       Main file containing the "main" function
  - EXTI\EXTI_IOControl\stm8l10x_conf.h              Library Configuration file
  - EXTI\EXTI_IOControl\stm8l10x_it.c                Interrupt routines source
  - EXTI\EXTI_IOControl\stm8l10x_it.h                Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  -   - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1x-EVAL Set-up
     - Three leds LD2 to LD4.
     - Joystick LEFT and RIGHT buttons.


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example  
  - The LED2, LED3 and LED4 are OFF per default
  - When the Joystick LEFT button is kept pressed, the Leds blink
  - When the Joystick RIGHT button is kept pressed, the Leds scroll

 
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
