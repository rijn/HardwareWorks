/** @page TIM2_InputCapture: Signal frequency Capture by TIM2 

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    TIM2/TIM2_InputCapture/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the TIM2 Input Capture example
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

  This example shows how to configure the TIM2 peripheral to capture a signal frequency.
  TIM2CLK is fixed to 16 MHz, the TIM2 used Prescaler is 1 so the TIM2 counter clock used 
  is 16 MHz.
  The TIM2 Channel 1 is configured as Input capture.
  TIM3 channel 2 is configured to generate a 128khz signal frequency. 
  The TIM2 Channel 1 is connected to the TIM3 Channel 2 pin. 
  The value of TIM2 CC1 Frequency is stored in the TIM2ClockFreq variable.


  @par Directory content

  - TIM2\TIM2_InputCapture\main.c                       Main file containing the "main" function
  - TIM2\TIM2_InputCapture\stm8l10x_conf.h              Library Configuration file
  - TIM2\TIM2_InputCapture\stm8l10x_it.c                Interrupt routines source (not used in this example)
  - TIM2\TIM2_InputCapture\stm8l10x_it.h                Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1x-EVAL Set-up
     - Connect the TIM2 Channel 1 (PB.0) to the TIM3 Channel 2 pin (PD.0).  


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - Connect the TIM2 CH1 (TIM2_CC1) to the TIM3 CH2 (TIM3_CC2).
  - Read the value of TIM3ClockFreq variable

  
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
