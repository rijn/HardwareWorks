# st_obj.mk - Selection of the ST library objects to compile

VPATH+=$(STLIB)/STM32F0xx_StdPeriph_Driver/src/
ST_OBJ=
ST_OBJ+=stm32f0xx_adc.o
#ST_OBJ+=stm32f0xx_can.o
#ST_OBJ+=stm32f0xx_cec.o
#ST_OBJ+=stm32f0xx_comp.o
#ST_OBJ+=stm32f0xx_crc.o
#ST_OBJ+=stm32f0xx_crs.o
#ST_OBJ+=stm32f0xx_dac.o
ST_OBJ+=stm32f0xx_dbgmcu.o
ST_OBJ+=stm32f0xx_dma.o
ST_OBJ+=stm32f0xx_exti.o
ST_OBJ+=stm32f0xx_flash.o
ST_OBJ+=stm32f0xx_gpio.o
ST_OBJ+=stm32f0xx_i2c.o
ST_OBJ+=stm32f0xx_iwdg.o
ST_OBJ+=stm32f0xx_misc.o
#ST_OBJ+=stm32f0xx_pwr.o
ST_OBJ+=stm32f0xx_rcc.o
#ST_OBJ+=stm32f0xx_rtc.o
ST_OBJ+=stm32f0xx_spi.o
#ST_OBJ+=stm32f0xx_syscfg.o
ST_OBJ+=stm32f0xx_tim.o
ST_OBJ+=stm32f0xx_usart.o
#ST_OBJ+=stm32f0xx_wwdg.o
