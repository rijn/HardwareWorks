/** @page COMP_Interrupt  Comparator Interrupt Mode example

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    COMP/COMP_Interrupt/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the Comparator in interrupt mode example
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

  This example is demonstrating the comparator interrupt capability on the detection
  of an input voltage applied to the COMP2 Channel 3,  higher than its reference.
  - Using the potentiometer RV1, the input voltage is changed. 
  Each time it's higher than the external comparator reference, an interrupt is 
  generated and accordingly leds from 2 to 4 light up.

@par Directory contents

  - COMP\COMP_Interrupt\main.c             Main file containing the "main" function
  - COMP\COMP_Interrupt\stm8l10x_conf.h    Library Configuration file
  - COMP\COMP_Interrupt\stm8l10x_it.c      Interrupt routines source
  - COMP\COMP_Interrupt\stm8l10x_it.h      Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
    
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1x-EVAL Set-up
     - Three leds LD2, LD3 and LD4
     - RV1 the potentiometer
     
  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - Using the potentiometer RV1 change the input voltage on COMP2 channel 3
  - An interrupt is generated each time the input voltage is higher than the 
  reference.
  - LEDs from 2 to 4 will light up consecuently. 

@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
