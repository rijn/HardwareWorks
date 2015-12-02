/** @page project_r Template project for ST Visual Develop (STVD) toolchain with Raisonance compiler

  @verbatim
  ******************** (C)COPYRIGHT 2012 STMicroelectronics *******************
  * @file     Project/STM8L10x_StdPeriph_Templates/STVD/Raisonance/readme.txt 
  * @author   MCD Application Team
  * @version  V1.2.0
  * @date     01-June-2012
  * @brief    This sub-directory contains all the user-modifiable files needed
  *           to create a new project linked with the STM8L Standard Peripheral 
  *           Library and working with STVD and Raisonance software toolchain.
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
  
  @par Project description
 
  This folder contains a standard STVD template workspace with a project 
  including all the user-modifiable files that are necessary to create a new project.
  This project template can be used by mean of minor updates in the library files
  to run the StdPeriph_Lib examples, or custom user applications.   

  
  @par Directories contents

  -  Project\STM8L10x_StdPeriph_Templates\\STVD\\Raisonnance
     - project.stw              Workspace file
     - stm8l10x.stp             Project file for STM8L10x devices.


  @par How to use it ?

  - Open the STVD workspace
  - Select your debug instrument: Debug instrument -> Target Settings, select the 
    target you want to use for debug session (Swim ST-Link or Swim Rlink)
  - Rebuild all files: Build -> Rebuild all. 
  - Load project image: Debug ->Start Debugging
  - Run program: Debug ->Run (Ctrl+F5)
  
  @b Tip: If it is your first time using STVD, you have to confirm the default 
  toolset and path information that will be used when building your application, 
  to do so:
    - Select Tools-> Options
    - In the Options window click on the Toolset tab
    - Select your toolset from the Toolset list box.
    If the path is incorrect you can type the correct path in the Root Path 
    field, or use the browse button to locate it.
    - In the subpath fields, type the correct subpath if necessary 

@note
 - STM8L10x devices are STM8L microcontrollers with a flash memory density up to 8 Kbytes.  
 
 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
