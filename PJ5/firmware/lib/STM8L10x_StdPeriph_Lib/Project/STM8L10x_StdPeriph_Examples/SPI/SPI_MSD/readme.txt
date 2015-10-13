/** @page SPI_MSD Fast communication with a MicroSD memory card

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    SPI/SPI_MSD/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the SPI MSD Example.
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

  This example provides a short description of how to make a communication 
  (Write & Read data) between the SPI and a MicroSD memory card like the one 
  present on the evalboard.
	
  First, Fill the Tx_Buffer with data to be written into the MicroSD memory 
  followed by a read of that data.
  Then data read from the MicroSD memory stored in the Rx_Buffer are compared
  with the expected values of the Tx_Buffer. The result of this comparison is 
  stored in the "TransferStatus" variable.

 @par Directory contents

  - SPI\SPI_MSD\main.c                       Main file containing the "main" function
  - SPI\SPI_MSD\stm8l10x_conf.h              Library Configuration file
  - SPI\SPI_MSD\stm8l10x_it.c                Interrupt routines source 
  - SPI\SPI_MSD\stm8l10x_it.h                Interrupt routines declaration
  

  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
  
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.

  - STM8L1 Set-up
     - Plug a MicroSD memory card into the dedicated connector (CN1).
     - LCD display.
     - Key button.
     

  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Add the required files:
    - stm8l_eval_spi_sd.c (under Utilities/STM8L101_EVAL/Common)
  - Rebuild all files and load your image into target memory
  - Run the example
  - Run program: Debug->Run (Ctrl+F5)
  - The LCD displays " SPI example SPI & MicroSD Communication"
  - Insert MicroSD memory then validate by pressing Key button
  - If the read data from the MicroSD memory are the same as the written ones
    the LCD displays "W&R block Success" otherwise "W&R block Error".
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
