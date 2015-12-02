/** @page I2C_DataExchange I2C1 Master and Slave data exchange   

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    I2C/I2C_TwoBoards/I2C_DataExchange/readme.txt 
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

  This is a typical example of how to use the I2C software library to ensure the
  steps of an I2C communication between slave and master.

   This is a two phase example that requires two boards(Master an Slave)  
   - Phase 1:
   In master board I2C peripheral is configured in Master Transmitter with Interrupt,
   where in Slave board I2C peripheral is configured in Slave Receiver with Interrupt.
   The master will send Data to Slave according to the defined buffer size.
   
   - Phase 2: 
   In master board I2C peripheral is configured in Master Receiver with Polling,
   where in Slave board I2C peripheral is configured in Slave Transmitter with 
   Interrupt. 
   Once the master has initiated the communication (Start condition), the slave
   will send back the previously received data to the master
   
   At the end of the data transfer, a data consistency check will be performed 
   in master side and in case of mismatch between sent and received data, LED4 
   will toggle infinitely. Otherwise LED1 will toggle. 

  Communication error are handled in Slave side, their occurrence will be signaled
  by puting On LED2.
  
  The "main.h" file allows different possibilities of configuration of this example:
  - Addressing mode : 7-bit or 10-bit
  - Safe procedure for master receiver
  - I2C speed: Fast mode or Standard mode
  - Buffer size also can be configured
  and though by choosing the desired configuration within main.h file.


  @par Directory contents

  - I2C/I2C_TwoBoards/I2C_DataExchange/X/main.c              Main file
  - I2C/I2C_TwoBoards/I2C_DataExchange/X/main.h              Header for Main file
  - I2C/I2C_TwoBoards/I2C_DataExchange/X/stm8l10x_conf.h     Library Configuration file
  - I2C/I2C_TwoBoards/I2C_DataExchange/X/stm8l10x_it.c       Interrupt routines source
  - I2C/I2C_TwoBoards/I2C_DataExchange/X/stm8l10x_it.h       Interrupt routines declaration
  
  where X stands for Master or Slave directories.


  @par Hardware and Software environment

  - This example runs on STM8L10x devices.
    
  - This example has been tested with STMicroelectronics STM8L101-EVAL evaluation
    board and can be easily tailored to any other development board.
    
  - STM8L1x-EVAL Set-up
    - Connect I2C1 Master SCL pin (PC.01) to I2C1 Slave SCL (PC.01)  
    - Connect I2C1 Master SDA pin (PC.00) to I2C1 Slave SDA (PC.00) 
    - Connect the two-boards grounds together

  - Other platform Set-up
    - Connect I2C1 Master SCL pin (PC.01) to I2C1 Slave SCL (PC.01)  
    - Connect I2C1 Master SDA pin (PC.00) to I2C1 Slave SDA (PC.00) 
    - Check that a pull-up resistor (4.7K) is connected on one I2C SDA pin
    - Check that a pull-up resistor (4.7K) is connected on one I2C SCL pin
    - Connect the two-boards grounds together
    @note The pull-up resitors are already implemented on the STM8L1x-EVAL evaluation boards. 
    
  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\STM8L10x_StdPeriph_Templates
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example
  
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
