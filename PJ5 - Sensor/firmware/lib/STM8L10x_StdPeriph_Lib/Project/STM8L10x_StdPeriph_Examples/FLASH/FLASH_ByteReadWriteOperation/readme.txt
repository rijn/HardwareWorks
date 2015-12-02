/** @page FLASH_ByteReadWriteOperation Read, Write, Erase byte

  @verbatim
  ******************** (C)COPYRIGHT 2014 STMicroelectronics *******************
  * @file    FLASH/FLASH_ByteReadWriteOperation/readme.txt 
  * @author  MCD Application Team
  * @version V1.2.1
  * @date    30-September-2014
  * @brief   Description of the Byte read, write operation from/to FLASH
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

  This example provides a short description on how to use FLASH Read/Write/Erase byte modes:
  - Read a byte at a specified address (0x9000).
  - Write complement value (of previous byte value) at address +1 (0x9001).
  - Check programmed byte (using read function)
  - Erase 2 bytes at address & address+1
  - Check 2 bytes are erased (value must be equal to 0x00).


  @par Directory content

  - FLASH\FLASH_ByteReadWriteOperation\main.c                    Main file containing the "main" function
  - FLASH\FLASH_ByteReadWriteOperation\stm8l10x_conf.h           Library Configuration file
  - FLASH\FLASH_ByteReadWriteOperation\stm8l10x_it.c             Interrupt routines source (not used in this example)
  - FLASH\FLASH_ByteReadWriteOperation\stm8l10x_it.h             Interrupt routines declaration


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
  - You can check the value of the bytes at the specified addresses by using the memory window in STVD.
  - The data read from the data memory is compared with the expected values.
    The result of this comparison is stored in the "OperationStatus" variable.
   
@note
 - STM8L10x devices are STM8L microcontrollers with a Flash memory density up to 8 Kbytes.
  
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
