################################################################################
#   ____    ____    __   __   ______  ______
#  /\  _`\ /\  _`\ /\ \ /\ \ /\__  _\/\  _  \
#  \ \ \/\ \ \ \L\_\ `\`\/'/'\/_/\ \/\ \ \L\ \
#   \ \ \ \ \ \  _\L`\/ > <     \ \ \ \ \  __ \
#    \ \ \_\ \ \ \L\ \ \/'/\`\   \ \ \ \ \ \/\ \
#     \ \____/\ \____/ /\_\\ \_\  \ \_\ \ \_\ \_\
#      \/___/  \/___/  \/_/ \/_/   \/_/  \/_/\/_/
#
#  Originally created by Dexta Robotics.
#  Copyright <C> Dexta Robotics, 2015.
#  All rights reserved.
#
################################################################################
SHELL                = bash

# Debug mode
DEBUG				?= 0

######################## Toolchain Configuration ###############################
STFLASH             ?= st-flash
CROSS_COMPILE		?= arm-none-eabi-
PYTHON2				?= python
CTAGS               ?= ctags
LIB_DIR              = ../lib
BUILD_SCRIPTS_DIR    = ../util/build-scripts
AS                   = $(CROSS_COMPILE)as
CC                   = $(CROSS_COMPILE)gcc
LD                   = $(CROSS_COMPILE)gcc
SIZE                 = $(CROSS_COMPILE)size
OBJCOPY              = $(CROSS_COMPILE)objcopy
DFU_CONVERT          = $(BUILD_SCRIPTS_DIR)/dfu-convert.py
TARGETS              = $(BUILD_SCRIPTS_DIR)/targets.mk
TAGS_TARGETS         = $(BUILD_SCRIPTS_DIR)/tags.mk
YCM_FLAGS_TARGETS    = $(BUILD_SCRIPTS_DIR)/ycm_flags.mk
YCM_FLAGS_TEMPLATE   = $(BUILD_SCRIPTS_DIR)/ycm_extra_conf_template.py
################################################################################



######################## ST Device Related Settings ############################
# [CHANGE THIS] ST Device Family
DEVICE_NAME=STM32F030

# make sure it is upper case
DEVICE=$(shell echo $(DEVICE_NAME) | tr a-z A-Z)
# convert to lower case for other use
DEVICE_LOWER=$(shell echo $(DEVICE) | tr A-Z a-z)
# should always be STM32
DEVICE_BIT_FAMILY=$(shell echo $(DEVICE) | sed -E "s/([0-9]+).*/\1/g")
DEVICE_STM32_SERIES=$(shell echo $(DEVICE) | sed -E "s/STM32([LF][0-9]).*/\1/g")
ifeq ($(DEVICE_STM32_SERIES), F0)
	DEVICE_STM32XXXX=STM32F0xx
endif
ifeq ($(DEVICE_STM32_SERIES), F1)
	DEVICE_STM32XXXX=STM32F10x
endif
ifeq ($(DEVICE_STM32_SERIES), F4)
	DEVICE_STM32XXXX=STM32F4xx
endif

# set the linker file path
LDFILE_DIR           = $(BUILD_SCRIPTS_DIR)/$(DEVICE_STM32_SERIES)/linker
LDFILE_PATH          = $(LDFILE_DIR)/FLASH.ld

# set the flash address
ifeq ($(DEVICE_STM32_SERIES), F0)
	STFLASH_ADDRESS  = 0x8000000
endif
ifeq ($(DEVICE_STM32_SERIES), F1)
	STFLASH_ADDRESS  = 0x8000000
endif
# For converting DFU
LOAD_ADDRESS         = $(STFLASH_ADDRESS)
################################################################################



############################# Platform Settings ################################
## [ --CHANGE THIS-- Project Specific Configurations ] #########################
PLATFORM_NAME       ?= BLINKY
PLATFORM_NAME_LOWER ?= $(shell echo $(PLATFORM_NAME) | tr A-Z a-z)
PLATFORM_TYPE       ?= STM32F0
PLATFORM_REVISION   ?= A

### THE FOLLOWING ARE FOR BACKWORD_COMPATABILITY
PLATFORM_DEVICE     ?= $(PLATFORM_NAME)_$(PLATFORM_TYPE)
PLATFORM_DEVICE_LOWER ?= $(shell echo $(PLATFORM_DEVICE) | tr A-Z a-z)
PLATFORM_REV        ?= $(PLATFORM_NAME)_$(PLATFORM_TYPE)_$(PLATFORM_REVISION)

# Final output name
PROG     = $(PLATFORM_DEVICE)
################################################################################



############################# Library Settings #################################
## [ CMSIS ] ###################################################################
CMSIS_DIR            = $(LIB_DIR)/CMSIS
CMSIS_INCLUDE_DIR    = $(CMSIS_DIR)/Include
CMSIS_DEVICE_DIR     = $(CMSIS_DIR)/${DEVICE_STM32XXXX}
CMSIS_DEVICE_INCLUDE_DIR = $(CMSIS_DEVICE_DIR)/Include
CMSIS_STARTUP_SOURCE_DIR = $(CMSIS_DEVICE_DIR)/Source/Templates/gcc_ride7
# CHANGE THIS TO MATCH THE DEVICE
CMSIS_STARTUP_OBJECT = startup_stm32f030.o

## [ Startup ] #################################################################
STARTUP_DIR          = ./startup
STARTUP_SOURCE_DIR   = $(STARTUP_DIR)/src
STARTUP_INCLUDE_DIR  = $(STARTUP_DIR)/inc
STARTUP_OBJECT       = system.o

## [ SPL ] #####################################################################
# ST Standard Peripheral Library
SPL_DIR              = $(LIB_DIR)/${DEVICE_STM32XXXX}_StdPeriph_Driver
SPL_INCLUDE_DIR      = $(SPL_DIR)/inc
SPL_SOURCE_DIR       = $(SPL_DIR)/src
SPL_OBJECT           =
# kept in a separate file
-include spl_object.mk

## [ Config ] ##################################################################
CONFIG_DIR           = ./config
CONFIG_INCLUDE_DIR   = $(CONFIG_DIR)
#CONFIG_SOURCE_DIR    = $(CONFIG_DIR)
#CONFIG_OBJECT        =

## [ HAL ] #####################################################################
# Hardware Abstraction Layer
HAL_DIR              = ./hal
HAL_INCLUDE_DIR      = $(HAL_DIR)/inc
HAL_SOURCE_DIR       = $(HAL_DIR)/src
HAL_OBJECT           = 

## [ Platform ] ################################################################
# Platform-specific Sources
PLATFORM_DIR         = ./platform
PLATFORM_INCLUDE_DIR = $(PLATFORM_DIR)/inc
PLATFORM_SOURCE_DIR  = $(PLATFORM_DIR)/src
PLATFORM_OBJECT      = platform_${PLATFORM_DEVICE_LOWER}.o

## [ Drivers ] #################################################################
# Drivers
DRIVERS_DIR          = ./drivers
DRIVERS_INCLUDE_DIR  = $(DRIVERS_DIR)/inc
DRIVERS_SOURCE_DIR   = $(DRIVERS_DIR)/src
DRIVERS_OBJECT       = 

## [ Utils ] ###################################################################
# Utils
UTILS_DIR            = ./utils
UTILS_INCLUDE_DIR    = $(UTILS_DIR)/inc
UTILS_SOURCE_DIR     = $(UTILS_DIR)/src
UTILS_OBJECT         = 

## [ Init/Main ] ###############################################################
# Init/Main, No inc/src folder
INIT_DIR             = ./init
INIT_INCLUDE_DIR     = $(INIT_DIR)
INIT_SOURCE_DIR      = $(INIT_DIR)
INIT_OBJECT          = main.o

## [ VPATH/OBJ/INCLUDE Configurations ] ########################################
# Add all source dir to VPATH
VPATH += $(CMSIS_STARTUP_SOURCE_DIR) $(STARTUP_SOURCE_DIR)
VPATH += $(SPL_SOURCE_DIR) $(HAL_SOURCE_DIR)
VPATH += $(DRIVERS_SOURCE_DIR) $(UTILS_SOURCE_DIR) $(PLATFORM_SOURCE_DIR)
VPATH += $(INIT_SOURCE_DIR)

# Add all OBJECT to OBJ
OBJ   += $(CMSIS_STARTUP_OBJECT) $(STARTUP_OBJECT)
OBJ   += $(SPL_OBJECT) $(HAL_OBJECT)
OBJ   += $(DRIVERS_OBJECT) $(UTILS_OBJECT) $(PLATFORM_OBJECT)
OBJ   += $(INIT_OBJECT)

# Add all INCLUDE_DIR to INCLUDE_FLAGS
INCLUDE_FLAGS  = -I.
INCLUDE_FLAGS += -I$(CMSIS_INCLUDE_DIR) -I$(CMSIS_DEVICE_INCLUDE_DIR)
INCLUDE_FLAGS += -I$(CONFIG_INCLUDE_DIR) -I$(STARTUP_INCLUDE_DIR)
INCLUDE_FLAGS += -I$(SPL_INCLUDE_DIR) -I$(HAL_INCLUDE_DIR)
INCLUDE_FLAGS += -I$(DRIVERS_INCLUDE_DIR) -I$(UTILS_INCLUDE_DIR)
INCLUDE_FLAGS += -I$(PLATFORM_INCLUDE_DIR)

## [ TAGS_DIR Configurations ] #################################################
# Directories Containing Tags to add into the vim script
TAGS_DIR += . $(CMSIS_DIR) $(CMSIS_DEVICE_DIR) $(SPL_DIR)
################################################################################



############################ CC/AS/LD Flags Settings ###########################
## [ Processor-specific Flags ] ################################################
ifeq ($(DEVICE_STM32_SERIES), F0)
	PROCESSOR_FLAGS = -mcpu=cortex-m0
endif
ifeq ($(DEVICE_STM32_SERIES), F1)
	PROCESSOR_FLAGS = -mcpu=cortex-m3
endif
PROCESSOR_FLAGS    += -mthumb -mfloat-abi=soft

## [ Standard Peripheral Library Flags ] #######################################
SPL_FLAGS          += -D$(DEVICE) -DHSI_VALUE=8000000 -DHSE_VALUE=8000000
SPL_FLAGS          += -DUSE_STDPERIPH_DRIVER

## [ Device-specific Flags ] ###################################################
DEVICE_FLAGS       += -D_DEVICE_$(DEVICE)
DEVICE_FLAGS       += -D_DEVICE_STM32_SERIES_$(DEVICE_STM32_SERIES)

## [ Platform-specific Flags ] #################################################
PLATFORM_FLAGS     += -D_PLATFORM_NAME_$(PLATFORM_NAME)
PLATFORM_FLAGS     += -D_PLATFORM_TYPE_$(PLATFORM_TYPE)
PLATFORM_FLAGS     += -D_PLATFORM_REVISION_$(PLATFORM_REVISION)

# The following are old old flags
#Flags required by the ST library
#PLATFORM_FLAGS += -DPLATFORM_$(PLATFORM) -DPLATFORM_DEVICE_$(PLATFORM_DEVICE) -DPLATFORM_REV_$(PLATFORM_REV)

## [ DEBUG Flags ] #############################################################
ifeq ($(DEBUG), 1)
  CFLAGS += -O0 -g3 -DDEBUG
else
  CFLAGS += -Os -g3
endif

## [  Compiler Flags  ] ########################################################
# Link Time Optimization compiler flags
ifeq ($(LTO), 1)
  CFLAGS += -flto
endif
# idk what this is doing here ####
ifdef P
  C_PROFILE = -D P_$(P)
endif

# [CHANGE THIS] Add processor/include flags
CFLAGS += $(PROCESSOR_FLAGS) $(INCLUDE_FLAGS) $(SPL_FLAGS)

# Supress warnings
CFLAGS += -Wall -fno-strict-aliasing $(C_PROFILE) -Wunused-but-set-variable
# Compiler flags to generate dependency files:
CFLAGS += -MD -MP -MF $(BIN)/dep/$(@).d -MQ $(@)
# Permits to remove un-used functions and global variables from output file
CFLAGS += -ffunction-sections -fdata-sections

## [ Assembler Flags ] #########################################################
ASFLAGS = $(PROCESSOR_FLAGS) $(INCLUDE_FLAGS)

## [  Linker  Flags  ] #########################################################
# Linking Time Optimization linker flags
ifeq ($(LTO), 1)
  LDFLAGS += -Os -flto -fuse-linker-plugin
endif

# Device-specific flags
LDFLAGS += --specs=nano.specs $(PROCESSOR_FLAGS) -Wl,-Map=$(PROG).map,--cref,--gc-sections
# Flags required by the ST library
LDFLAGS += -L$(LDFILE_DIR) -T $(LDFILE_PATH)

## [ YCM Additional Flags ] ####################################################
# These are for Vim auto-completion plugin
YCM_FLAGS += $(INCLUDE_FLAGS)
YCM_FLAGS += $(SPL_FLAGS) $(PLATFORM_FLAGS) $(DEVICE_FLAGS)

################################################################################



############################# General Settings #################################
# Where to compile the .o
BIN      = bin
VPATH   += $(BIN)
# Dependency files to include
DEPS    := $(foreach o,$(OBJ),$(BIN)/dep/$(o).d)
################################################################################



################################## Targets #####################################
all: view_target make_dir build cloc
build: compile size tags ycm_extra_conf
compile: $(PROG).hex $(PROG).bin $(PROG).dfu
	@echo -e "\033[44;37m$$ build $(PLATFORM_REV) successfully. \033[0m"

size: compile
	@$(SIZE) -B $(PROG).elf

flash: all
	$(STFLASH) write $(PROG).bin $(STFLASH_ADDRESS)
	@echo -e "\033[44;37m$$ done. \033[0m"

## OPENOCD Not Used ##
#$(OPENOCD) -d2 -f $(OPENOCD_INTERFACE) -f $(OPENOCD_TARGET) -c init -c targets -c "reset halt" \
#                -c "flash write_image erase $(PROG).elf" -c "verify_image $(PROG).elf" -c "reset run" -c shutdown

view_target:
	@echo -e "  PLATFORM = $(PLATFORM)"
	@echo -e "  PLATFORM_DEVICE = $(PLATFORM_DEVICE)"
	@echo -e "  PLATFORM_REV = $(PLATFORM_REV)"
	@echo -e "  CFLAGS = $(CFLAGS)"
	@echo -e "\033[41;37m$$ start to build $(PLATFORM_REV) \033[0m"
	@echo -e "  OBJ = $(OBJ)"

make_dir:
	# @rm -rf bin
	@if [ ! -d "bin" ]; then mkdir bin bin/dep; fi

erase:
	$(STFLASH) erase
	@echo -e "\033[44;37m$$ done. \033[0m"

prep:
	@$(CC) -dD

clean: clean_bin clean_tags clean_ycm_extra_conf
	@rm -f *.bin *.dfu *.elf *.hex *.map
	@echo -e "\033[44;37m$$ clean successfully. \033[0m"

new: clean all

cloc:
	@echo -e "\033[;32m"
	@cloc . --exclude-dir=eMPL --ignore-whitespace --exclude-lang="D"
	@echo -e "\033[0m"

new_flash: new flash

include $(TARGETS)
include $(TAGS_TARGETS)
include $(YCM_FLAGS_TARGETS)
################################################################################

# conversion for dependency
-include $(DEPS)
