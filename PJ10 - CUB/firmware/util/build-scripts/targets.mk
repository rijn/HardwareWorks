#
# Makefile for STM32 targets
#    This file contains tragets required for automated compiling of STM32 
#    targets, adapted from Crazyflie Makefile
#
# Required Envrionment Vars:
#  - CC, LD, AS, DFU_CONVERT, PYTHON2
#  - CFLAGS, LDFLAGS, ASFLAGS
#  - LOAD_ADDRESS
#  - BIN, OBJ, VPATH
#

ifeq ($(V),)
  VERBOSE=_SILENT
endif

ifeq ($(V),0)
  QUIET=1
endif

target = @$(if $(QUIET), ,echo $($1_COMMAND$(VERBOSE)) ); @$($1_COMMAND)

#
# NOT USING VERSION TEMPLATING SCRIPTS
# 
#   THIS IS A TODO
#
# VTMPL_COMMAND=$(PYTHON2) scripts/versionTemplate.py $< $@
# $(BIN)/$(lastword $(subst /, ,$@))
# VTMPL_COMMAND_SILENT="  VTMPL $@"
# %.c: %.vtpl
#	@$(if $(QUIET), ,echo $(VTMPL_COMMAND$(VERBOSE)) )
#	@$(VTMPL_COMMAND)
#

CC_COMMAND=$(CC) $(CFLAGS) -c $< -o $(BIN)/$@
CC_COMMAND_SILENT="  CC    $@"
.c.o: 
	@$(if $(QUIET), ,echo $(CC_COMMAND$(VERBOSE)) )
	@$(CC_COMMAND)

LD_COMMAND=$(LD) $(LDFLAGS) $(foreach o,$(OBJ),$(BIN)/$(o)) -lm -o $@
LD_COMMAND_SILENT="  LD    $@"
$(PROG).elf: $(OBJ)
	@$(if $(QUIET), ,echo $(LD_COMMAND$(VERBOSE)) )
	@$(LD_COMMAND)

HEX_COMMAND=$(OBJCOPY) $< -O ihex $@
HEX_COMMAND_SILENT="  COPY  $@"
$(PROG).hex: $(PROG).elf
	@$(if $(QUIET), ,echo $(HEX_COMMAND$(VERBOSE)) )
	@$(HEX_COMMAND)

BIN_COMMAND=$(OBJCOPY) $< -O binary --pad-to 0 $@
BIN_COMMAND_SILENT="  COPY  $@"
$(PROG).bin: $(PROG).elf
	@$(if $(QUIET), ,echo $(BIN_COMMAND$(VERBOSE)) )
	@$(BIN_COMMAND)

DFU_COMMAND=$(PYTHON2) $(DFU_CONVERT) -b $(LOAD_ADDRESS):$< $@
DFU_COMMAND_SILENT="  DFUse $@"
$(PROG).dfu: $(PROG).bin
	@$(if $(QUIET), ,echo $(DFU_COMMAND$(VERBOSE)) )
	@$(DFU_COMMAND)

AS_COMMAND=$(AS) $(ASFLAGS) $< -o $(BIN)/$@
AS_COMMAND_SILENT="  AS    $@"
.s.o:
	@$(if $(QUIET), ,echo $(AS_COMMAND$(VERBOSE)) )
	@$(AS_COMMAND)

CLEAN_OBJ_COMMAND=rm -f $(foreach o,$(OBJ),$(BIN)/$(o))
CLEAN_OBJ_COMMAND_SILENT="  CLEAN_OBJ"
clean_obj:
	@$(if $(QUIET), ,echo $(CLEAN_OBJ_COMMAND$(VERBOSE)) )
	@$(CLEAN_OBJ_COMMAND)

CLEAN_COMMAND=rm -f *.elf *.hex *.bin *.dfu *.map $(BIN)/dep/*.d $(BIN)/*.o
CLEAN_COMMAND_SILENT="  CLEAN"
clean_bin:
	@$(if $(QUIET), ,echo $(CLEAN_COMMAND$(VERBOSE)) )
	@$(CLEAN_COMMAND)
