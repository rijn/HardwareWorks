/** @page TIM2_PWMDutyCycleConfiguration Generate two different signals with two different duty cycles 

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    TIM2/TIM2_PWMDutyCycleConfiguration/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the TIM2 PWM Duty Cycle Configuration example
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

  This example shows how to configure the TIM2 peripheral in PWM (Pulse Width Modulation) 
  mode.
  The TIM2CLK frequency is 2MHz, the Prescaler is 1 so the TIM2 counter clock is 2MHz. 

  The TIM2 is running at 30 Hz: TIM2 Frequency = TIM2 counter clock/(ARR + 1) 
  
  So TIM2 frequency is 30 Hz.


  The TIM2 CCR1 register value is equal to 32767, so the TIM2 Channel 1 generates a 
  PWM signal with a frequency equal to 30 Hz and a duty cycle equal to 50%:
  TIM2 Channel1 duty cycle = [TIM2_CCR1/(TIM2_ARR + 1)] * 100 = 50%

  The TIM2 CCR2 register value is equal to 16383, so the TIM2 Channel 2 generates a 
  PWM signal with a frequency equal to 30 Hz and a duty cycle equal to 25%:
  TIM2 Channel2 duty cycle = [TIM2_CCR2/ (TIM2_ARR + 1)] * 100 = 25%


  The PWM waveform can be displayed using an oscilloscope.


  @par Directory content

  - TIM2\TIM2_PWMDutyCycleConfiguration\main.c                      Main file containing the "main" function
  - TIM2\TIM2_PWMDutyCycleConfiguration\stm8l10x_conf.h             Library Configuration file
  - TIM2\TIM2_PWMDutyCycleConfiguration\stm8l10x_it.c               Interrupt routines source
  - TIM2\TIM2_PWMDutyCycleConfiguration\stm8l10x_it.h               Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1x-EVAL Set-up
    - Connect TIM2 pins to an oscilloscope:
       - TIM2_CH1  pin (PB.0)  
       - TIM2_CH2  pin (PB.2)  


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - Connect the TIM2 pins to an oscilloscope 

@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
