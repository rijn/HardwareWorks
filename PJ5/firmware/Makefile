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
STOBJ += stm8l10x_clk.rel
STOBJ += stm8l10x_gpio.rel
STOBJ += stm8l10x_i2c.rel
STOBJ += stm8l10x_spi.rel
STOBJ += stm8l10x_usart.rel

#target
VPATH += init
INCLUDES = -Iinit -Iconfig

TARGET = main.ihx

#flags
STFLAGS = -lstm8 -mstm8 --out-fmt-ihx
CFLAGS += $(STLIB) $(INCLUDES)

.PHONY: all clean flash

all: start $(STOBJ) $(TARGET)
	@echo "\033[44;37m$$ compile done. \033[0m"

clean:
	@rm -f *.asm *.ihx *.lst *.rel *.sym *.map *.rst *.lk
	@echo "\033[44;37m$$ clean done. \033[0m"

flash: $(OBJECT).ihx
	sudo stm8flash -c stlinkv2 -p stm8s103 -w blinky.ihx
	@echo "\033[44;37m$$ flash done. \033[0m"

new: clean all

start:
	@echo "\033[41;37m$$ start to compile \033[0m"

%.ihx: %.c
	@echo "  compile       $@"
	@$(SDCC) $< $(STOBJ) $(STFLAGS) $(CFLAGS) $(LDFLAGS)

%.rel: %.c
	@echo "  compile dep   $@"
	@$(SDCC) -c $< $(STFLAGS) $(CFLAGS) $(LDFLAGS)
