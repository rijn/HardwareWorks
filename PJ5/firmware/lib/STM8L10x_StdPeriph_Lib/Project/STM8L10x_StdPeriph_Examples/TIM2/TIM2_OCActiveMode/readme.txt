/** @page TIM2_OCActiveMode Generate two different signals with two different delays with Active Mode

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    TIM2/TIM2_OCActiveMode/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the TIM2 Output Compare active mode example 
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

  This example shows how to configure the TIM2 peripheral to generate two different 
  signals with two different delays.

  The TIM2CLK frequency is set to 2 MHz, the Prescaler is set to 128 and used in 
  Output Compare Active Mode.
 
  TIM2 counter clock = TIM2CLK / (Prescaler) = 15625 Hz 

  The TIM2 CCR1 register value is equal to 15625:
  TIM2_CH1 delay = CCR1_Val/TIM2 counter clock  = 1000 ms
  so the TIM2 Channel 1 generates a signal with a delay equal to 1000 ms.

  The TIM2 CCR2 register value is equal to 7812:
  TIM2_CH2 delay = CCR2_Val/TIM2 counter clock = 500 ms
  so the TIM2 Channel 2 generates a signal with a delay equal to 500 ms.
  
  The delay corresponds to the time difference between PC.6 and TIM2_CHx signal rising edges


  @par Directory content

  - TIM2\TIM2_OCActiveMode\main.c                      Main file containing the "main" function
  - TIM2\TIM2_OCActiveMode\stm8l10x_conf.h             Library Configuration file
  - TIM2\TIM2_OCActiveMode\stm8l10x_it.c               Interrupt routines source (not used in this example)
  - TIM2\TIM2_OCActiveMode\stm8l10x_it.h               Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1x-EVAL Set-up
    - Connect the following pins to an oscilloscope:
      - PC.6
      - TIM2_CH1  pin (PB.0)  
      - TIM2_CH2  pin (PB.2)  


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - Connect the TIM2 pins and PC.6 pin to an oscilloscope 
  

@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
