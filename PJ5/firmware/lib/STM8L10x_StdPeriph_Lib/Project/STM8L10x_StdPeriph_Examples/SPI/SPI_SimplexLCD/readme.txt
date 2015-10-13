/** @page SPI_SimplexLCD Communication with a monochrome LCD

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    SPI/SPI_SimplexLCD/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the SPI simplex LCD example
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

  This example provides a short description of how to use the SPI peripheral 
  in order to communicate with a monochrome LCD peripheral like the one present 
  on the eval-board.


  @par Directory content

  - SPI\SPI_SimplexLCD\main.c                       Main file containing the "main" function
  - SPI\SPI_SimplexLCD\main.h                       Main functions prototype
  - SPI\SPI_SimplexLCD\stm8l10x_conf.h              Library Configuration file
  - SPI\SPI_SimplexLCD\stm8l10x_it.c                Interrupt routines source
  - SPI\SPI_SimplexLCD\stm8l10x_it.h                Interrupt routines declaration
  

  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1x-EVAL Set-up
     - Three leds LD2, LD3 and LD4 
     - Key push button.
     - LCD Display
 
  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - A welcome message should be displayed on the LCD
  - Press the Key button in order to change the message on the LCD and the LED2,
    LED3 and LED4 states.
  
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
