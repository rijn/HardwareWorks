/** @page TIM3_SynchronisationWithTIM4 Synchronisation of TIM3 using TIM4

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    TIM4/TIM3_SynchronisationWithTIM4/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the synchronisation of TIM3 using TIM4 example
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

  This example provides a short description of how to use the TIM3 peripheral
  synchronised by TIM4. TIM3 is configured as a slave of TIM4. 

  TIM3 is configured to be enabled if it detects an edge on its input trigger (TRGI).
  TIM4 is configured to generate an edge through its (TRGO) at the update event.
  TIM3 TRGI is configured to be connected (internal connection) to TIM4 TRGO.

  If line "Inc1:" in main.c is commented, TIM4 is not enabled => no Edge is detected on TIM3 TRGI),
  ==> Result variable value will be equal to 0 (FAILED).
  If line "Inc1" in main.c is uncommented, TIM4 is enabled => TIM4 generate an Edge on its TRGO and 
  an Edge is detected on TIM3 TRGI. ==> Result variable value will be equal to 1 (PASS).


  @par Directory content

  - TIM4\TIM3_SynchronisationWithTIM4\main.c                       Main file containing the "main" function
  - TIM4\TIM3_SynchronisationWithTIM4\stm8l10x_conf.h              Library Configuration file
  - TIM4\TIM3_SynchronisationWithTIM4\stm8l10x_it.c                Interrupt routines source
  - TIM4\TIM3_SynchronisationWithTIM4\stm8l10x_it.h                Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
     
@par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - Insert break point on main.c line "Inc2"
  - Insert break point on main.c line "Inc3"
 
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
