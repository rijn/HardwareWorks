#dexmo makefile

#ST-Link configuration
STFLASH 			?= st-flash
CROSS_COMPILE 		?= arm-none-eabi-
PYTHON2 			?= python

CLOAD 				?= 0
DEBUG 				?= 0
PLATFORM			?= DEXMO1
# PLATFORM_TYPE 		?= DEXMO1_RIGHT
PLATFORM_TYPE 		?= DEXMO1_LEFT


ifeq ($(PLATFORM), DEXMO1)
STFLASH_ADDRESS		?= 0x8000000
endif

ifeq ($(PLATFORM), DEXMO1)
REV               	?= F
endif

ifeq ($(PLATFORM), DEXMO1)
LINKER_DIR = scripts/F103/linker
ST_OBJ_DIR  = scripts/F103
endif

STLIB = lib

# St Lib
VPATH_DEXMO1 += $(STLIB)/CMSIS/Core/CM3
VPATH_DEXMO1 += $(STLIB)/CMSIS/Core/CM3/startup/gcc
VPATH_DEXMO1 += $(STLIB)/STM32_CPAL_Driver/src
VPATH_DEXMO1 += $(STLIB)/STM32_CPAL_Driver/devices/stm32f10x
CRT0_DEXMO1 = startup_stm32f10x_md.o system_stm32f10x.o

# Should maybe be in separate file?
-include $(ST_OBJ_DIR)/st_obj.mk

ST_OBJ_DEXMO1 =  #cpal_hal.o cpal_i2c.o cpal_usercallback_template.o cpal_i2c_hal_stm32f10x.o

VPATH += init hal/src modules/src utils/src drivers/src drivers/eMPL
VPATH_DEXMO1 += platform/dexmo1

ifeq ($(PLATFORM), DEXMO1)
VPATH +=$(VPATH_DEXMO1)
endif

#core
# PROJ_OBJ += core_cm3.o

# Init
PROJ_OBJ += main.o
PROJ_OBJ_DEXMO1 += platform_dexmo1.o

# Drivers
PROJ_OBJ += led.o nrf24l01.o i2cs.o mpu9150.o inv_mpu.o quaternionFilters.o adc.o tim.o
# PROJ_OBJ_DEXMO1 += adc.o i2cs.o MPU9150.o nRF24L01.o tim.o inv_mpu_dmp_motion_driver.o inv_mpu.o

# Hal

PROJ_OBJ += exti.o nvic.o uart.o rcc.o sbn1.o
# PROJ_OBJ_DEXMO1 +=  SBN1.o

# Modules
PROJ_OBJ += system.o

# Utilities
PROJ_OBJ += eprintf.o debug.o stub.o

OBJ = $(FREERTOS_OBJ) $(PORT_OBJ) $(ST_OBJ) $(PROJ_OBJ)
ifeq ($(PLATFORM), DEXMO1)
OBJ += $(CRT0_DEXMO1) $(ST_OBJ_DEXMO1) $(PROJ_OBJ_DEXMO1)
endif

ifdef P
  C_PROFILE = -D P_$(P)
endif

############### Compilation configuration ################
AS = $(CROSS_COMPILE)as
CC = $(CROSS_COMPILE)gcc
LD = $(CROSS_COMPILE)gcc
SIZE = $(CROSS_COMPILE)size
OBJCOPY = $(CROSS_COMPILE)objcopy

INCLUDES  = -I$(FREERTOS)/include -I$(PORT) -I.
INCLUDES += -Iconfig -Ihal/interface -Imodules/interface -Idrivers/eMPL
INCLUDES += -Iutils/interface -Idrivers/interface -Iplatform
INCLUDES += -I$(STLIB)/CMSIS/Include

INCLUDES_DEXMO1 += -I$(STLIB)/STM32F10x_StdPeriph_Driver/inc
INCLUDES_DEXMO1 += -I$(STLIB)/CMSIS/Core/CM3
INCLUDES_DEXMO1 += -I$(STLIB)/STM32_CPAL_Driver/inc
INCLUDES_DEXMO1 += -I$(STLIB)/STM32_CPAL_Driver/devices/stm32f10x

ifeq ($(PLATFORM), DEXMO1)
	PROCESSOR = -mcpu=cortex-m3 -mthumb -mfloat-abi=soft
endif

#Flags required by the ST library
STFLAGS_DEXMO1 = -DSTM32F10X_MD -DHSE_VALUE=16000000 -include stm32f10x_conf.h -DPLATFORM_DEXMO1 -D$(PLATFORM_TYPE)


ifeq ($(DEBUG), 1)
  CFLAGS += -O0 -g3 -DDEBUG
else
  CFLAGS += -Os -g3
endif

ifeq ($(LTO), 1)
  CFLAGS += -flto
endif

ifeq ($(USE_ESKYLINK), 1)
  CFLAGS += -DUSE_ESKYLINK
endif

CFLAGS += -DBOARD_REV_$(REV)

CFLAGS += $(PROCESSOR) $(INCLUDES) $(STFLAGS)
ifeq ($(PLATFORM), DEXMO1)
CFLAGS += $(INCLUDES_DEXMO1) $(STFLAGS_DEXMO1)
endif


CFLAGS += -Wall -fno-strict-aliasing $(C_PROFILE) -Wunused-but-set-variable
# Compiler flags to generate dependency files:
CFLAGS += -MD -MP -MF $(BIN)/dep/$(@).d -MQ $(@)
#Permits to remove un-used functions and global variables from output file
CFLAGS += -ffunction-sections -fdata-sections

ASFLAGS = $(PROCESSOR) $(INCLUDES)
LDFLAGS = --specs=nano.specs $(PROCESSOR) -Wl,-Map=$(PROG).map,--cref,--gc-sections

#Flags required by the ST library
LDFLAGS += -T $(LINKER_DIR)/FLASH.ld
LOAD_ADDRESS = 0x8000000

ifeq ($(LTO), 1)
  LDFLAGS += -Os -flto -fuse-linker-plugin
endif

#Program name
ifeq ($(PLATFORM), DEXMO1)
PROG = DEXMO1
endif
#Where to compile the .o
BIN = bin
VPATH += $(BIN)

#Dependency files to include
DEPS := $(foreach o,$(OBJ),$(BIN)/dep/$(o).d)

##################### Misc. ################################
ifeq ($(SHELL),/bin/sh)
  COL_RED=\033[1;31m
  COL_GREEN=\033[1;32m
  COL_RESET=\033[m
endif

#################### Targets ###############################


all: build
build: compile size
compile: $(PROG).hex $(PROG).bin $(PROG).dfu

size: compile
	@$(SIZE) -B $(PROG).elf

#Flash the stm.
flash: all
	$(STFLASH) write $(PROG).bin $(STFLASH_ADDRESS)

#$(OPENOCD) -d2 -f $(OPENOCD_INTERFACE) -f $(OPENOCD_TARGET) -c init -c targets -c "reset halt" \
#                -c "flash write_image erase $(PROG).elf" -c "verify_image $(PROG).elf" -c "reset run" -c shutdown

erase:
	$(STFLASH) erase

#Print preprocessor #defines
prep:
	@$(CC) -dD

include scripts/targets.mk

#include dependencies
-include $(DEPS)
