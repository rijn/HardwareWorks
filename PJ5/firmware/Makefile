#          __    __
#    _ __ /\_\  /\_\    ___
#   /\`'__\/\ \ \/\ \ /' _ `\
#   \ \ \/ \ \ \ \ \ \/\ \/\ \
#    \ \_\  \ \_\_\ \ \ \_\ \_\
#     \/_/   \/_/\ \_\ \/_/\/_/
#               \ \____/
#                \/___/
#
#   Copyright rijn, 2015.
#   rijnx.com
#

#stm8l makefile

#SDCC
SDCC=sdcc
SDLD=sdld

#st object
VPATH += lib/STM8L10x_StdPeriph_Driver/src/
STLIB = -Ilib/STM8L10x_StdPeriph_Driver/inc

STOBJ =
STOBJ += stm8l10x_awu.rel
STOBJ += stm8l10x_beep.rel
STOBJ += stm8l10x_clk.rel
STOBJ += stm8l10x_comp.rel
STOBJ += stm8l10x_exti.rel
# STOBJ += stm8l10x_flash.rel
STOBJ += stm8l10x_gpio.rel
STOBJ += stm8l10x_i2c.rel
STOBJ += stm8l10x_irtim.rel
STOBJ += stm8l10x_itc.rel
STOBJ += stm8l10x_iwdg.rel
STOBJ += stm8l10x_rst.rel
STOBJ += stm8l10x_spi.rel
STOBJ += stm8l10x_tim2.rel
STOBJ += stm8l10x_tim3.rel
STOBJ += stm8l10x_tim4.rel
STOBJ += stm8l10x_usart.rel
STOBJ += stm8l10x_wfe.rel

#target
VPATH += init drivers/src hal/src
INCLUDES = -Iinit -Iconfig -Idrivers/interface -Ihal/interface

DEP_OBJ =
DEP_OBJ += led.rel delay.rel

TARGET = main.ihx

#compile bin
VPATH += bin
BIN = bin/
INCLUDES += -Ibin

#flags
STFLAGS = -lstm8 -mstm8 --out-fmt-ihx
CFLAGS += $(STLIB) $(INCLUDES)

.PHONY: all clean flash

all: start $(STOBJ) $(DEP_OBJ) generate_lib $(TARGET) move_object
	@echo "\033[44;37m$$ compile done. \033[0m"

clean:
	@rm -f *.ihx bin/*
	@echo "\033[44;37m$$ clean done. \033[0m"

flash: all
	stm8flash -c stlinkv2 -p stm8s103 -w $(TARGET)
	@echo "\033[44;37m$$ flash done. \033[0m"

# sudo stm8flash -c stlinkv2 -p stm8s103 -w blinky.ihx

new: clean all

start:
	@echo "\033[41;37m$$ start to compile \033[0m"

%.ihx: %.c
	@echo "  compile       $@"
	@$(SDCC) $< bin/library.lib $(STFLAGS) $(CFLAGS) $(LDFLAGS) -o $(BIN)$@

%.rel: %.c
	@echo "  compile dep   $@"
	@$(SDCC) -c $< $(STFLAGS) $(CFLAGS) $(LDFLAGS) -o $(BIN)$@

generate_lib: $(STOBJ)
	@echo "  generate library"
	@cd bin; sdar -rc library.lib $(STOBJ) $(DEP_OBJ)

move_object:
	@cp bin/main.ihx main.ihx

