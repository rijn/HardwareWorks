/** @page TIM2_SinewaveGeneration Generate a sinewave in the range of 45Hz to 65Hz with the resolution of 0.1Hz

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    TIM2/TIM2_SinewaveGeneration/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the sine wave generation example with TIM2
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

  This example shows how user can get the variation in sine wave frequency from 65Hz
  to 45Hz using TIM2. 
    
  TIM2 CLK is fixed to 4 MHz, the TIM2 Prescaler is equal to 0 so the TIM2 counter
  clock used is 4 MHz. 
  
  The TIM2 Channel 1 is configured as PWM Output Mode 1.
  
  To generate a sine wave of frequency 65.3595, you have to uncomment "#define FREQ_65_3595"
  (User can define only specific frequencies, which are commented out in "main.h"). 
  According to frequency selected by define directive, five parameters will be defined. 
  These parameters will make the corresponding sine wave frequency.
  
  The TIM2_CC1 must be connected to a "Low Pass" filter (Rfilter =1.8Kohm, Cfilter= 0.47uF)

 @code  
  TIM2_CC1 |-><-----[Rfilter=1.8Kohm]----+-------------> to the ossilloscope
                                         |
                  [Cfilter=0.47uF]
                         |
                      ///// GND
 @endcode 

  @par Directory content

  - TIM2\TIM2_SinewaveGeneration\main.h               Defines macroes for all the frequencies in the range
                                                      of 45Hz to 65Hz with the resolution of 0.1Hz. 
  - TIM2\TIM2_SinewaveGeneration\main.c               Main file containing the "main" function
  - TIM2\TIM2_SinewaveGeneration\stm8l10x_conf.h      Library Configuration file
  - TIM2\TIM2_SinewaveGeneration\stm8l10x_it.c        Interrupt routines source
  - TIM2\TIM2_SinewaveGeneration\stm8l10x_it.h        Interrupt routines declaration


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1x-EVAL Set-up
     - Connect  TIM2_CC1 pin (PB.0) to a "Low Pass" filter (Rfilter =1.8Kohm, Cfilter= 0.47uF).
     - Connect the "Low Pass" filter output to an oscilloscope.


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  - Connect TIM2_CC1 to a "Low Pass" Filter (Rfilter =1.8Kohm, Cfilter= 0.47uF)
  - Connect the "Low Pass" filter output to an oscilloscope.

 
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
