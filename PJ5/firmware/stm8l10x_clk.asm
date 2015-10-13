;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Sep 26 2015) (Mac OS X x86_64)
; This file was generated Tue Oct 13 14:47:14 2015
;--------------------------------------------------------
	.module stm8l10x_clk
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _HSIDivFactor
	.globl _CLK_DeInit
	.globl _CLK_CCOCmd
	.globl _CLK_PeripheralClockConfig
	.globl _CLK_MasterPrescalerConfig
	.globl _CLK_CCOConfig
	.globl _CLK_GetClockFreq
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 68: void CLK_DeInit(void)
;	-----------------------------------------
;	 function CLK_DeInit
;	-----------------------------------------
_CLK_DeInit:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 70: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
	ldw	x, #0x50c0
	ld	a, #0x03
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 71: CLK->PCKENR = CLK_PCKENR_RESET_VALUE;
	ldw	x, #0x50c3
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 72: CLK->CCOR  = CLK_CCOR_RESET_VALUE;
	ldw	x, #0x50c5
	clr	(x)
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 80: void CLK_CCOCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_CCOCmd
;	-----------------------------------------
_CLK_CCOCmd:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 85: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 88: CLK->CCOR |= CLK_CCOR_CCOEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 93: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
	bres	0x50c5, #0
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 113: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_PeripheralClockConfig
;	-----------------------------------------
_CLK_PeripheralClockConfig:
	push	a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 119: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 122: CLK->PCKENR |= ((uint8_t)CLK_Peripheral);
	ldw	x, #0x50c3
	ld	a, (x)
	or	a, (0x04, sp)
	ldw	x, #0x50c3
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 127: CLK->PCKENR &= (uint8_t)(~(uint8_t)CLK_Peripheral);
	ldw	x, #0x50c3
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x04, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x50c3
	ld	(x), a
00104$:
	pop	a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 141: void CLK_MasterPrescalerConfig(CLK_MasterPrescaler_TypeDef CLK_MasterPrescaler)
;	-----------------------------------------
;	 function CLK_MasterPrescalerConfig
;	-----------------------------------------
_CLK_MasterPrescalerConfig:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 146: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	ldw	x, #0x50c0
	ld	a, (x)
	and	a, #0xfc
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 147: CLK->CKDIVR = (uint8_t)CLK_MasterPrescaler;
	ldw	x, #0x50c0
	ld	a, (0x03, sp)
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 161: void CLK_CCOConfig(CLK_Output_TypeDef CLK_Output)
;	-----------------------------------------
;	 function CLK_CCOConfig
;	-----------------------------------------
_CLK_CCOConfig:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 167: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, #0xf9
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 170: CLK->CCOR |= ((uint8_t)CLK_Output);
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x50c5
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 173: CLK->CCOR |= CLK_CCOR_CCOEN;
	bset	0x50c5, #0
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 181: uint32_t CLK_GetClockFreq(void)
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
_CLK_GetClockFreq:
	sub	sp, #2
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 186: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
	ldw	x, #0x50c0
	ld	a, (x)
	and	a, #0x03
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 187: presc = HSIDivFactor[tmp];
	ldw	x, #_HSIDivFactor+0
	ldw	(0x01, sp), x
	clrw	x
	ld	xl, a
	addw	x, (0x01, sp)
	ld	a, (x)
	ld	xl, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 188: clockfrequency = HSI_VALUE / presc;
	clr	a
	ld	xh, a
	clrw	y
	pushw	x
	pushw	y
	push	#0x00
	push	#0x24
	push	#0xf4
	push	#0x00
	call	__divulong
	addw	sp, #8
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 190: return((uint32_t)clockfrequency);
	addw	sp, #2
	ret
	.area CODE
_HSIDivFactor:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.area INITIALIZER
	.area CABS (ABS)
