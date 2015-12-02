/** @page IRTIM_SignalGeneration generating a Infra Red signal

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    IRTIM/IRTIM_SignalGeneration/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the IRTIM example
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

  This example provides a short description of how to use the IRTIM peripheral:
  - Initialization and configuration of the TIM2 and TIM3 
  - Enabling IRTIM
 

  @par Directory content

  - IRTIM\IRTIM_SignalGeneration\main.c                  Main file containing the "main" function
  - IRTIM\IRTIM_SignalGeneration\stm8l10x_conf.h         Library Configuration file
  - IRTIM\IRTIM_SignalGeneration\stm8l10x_it.c           Interrupt routines source (not used in this example)
  - IRTIM\IRTIM_SignalGeneration\stm8l10x_it.h           Interrupt routines declaration

  
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
  - Connect PA0 to the osciloscope, an IRTIM signal is generated

@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
