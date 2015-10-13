;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Sep 26 2015) (Mac OS X x86_64)
; This file was generated Tue Oct 13 14:47:16 2015
;--------------------------------------------------------
	.module stm8l10x_i2c
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _I2C_DeInit
	.globl _I2C_Init
	.globl _I2C_Cmd
	.globl _I2C_GeneralCallCmd
	.globl _I2C_GenerateSTART
	.globl _I2C_GenerateSTOP
	.globl _I2C_SoftwareResetCmd
	.globl _I2C_StretchClockCmd
	.globl _I2C_AcknowledgeConfig
	.globl _I2C_AckPositionConfig
	.globl _I2C_FastModeDutyCycleConfig
	.globl _I2C_Send7bitAddress
	.globl _I2C_SendData
	.globl _I2C_ReceiveData
	.globl _I2C_ITConfig
	.globl _I2C_CheckEvent
	.globl _I2C_GetLastEvent
	.globl _I2C_GetFlagStatus
	.globl _I2C_ClearFlag
	.globl _I2C_GetITStatus
	.globl _I2C_ClearITPendingBit
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
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 122: void I2C_DeInit(void)
;	-----------------------------------------
;	 function I2C_DeInit
;	-----------------------------------------
_I2C_DeInit:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 124: I2C->CR1 = I2C_CR1_RESET_VALUE;
	ldw	x, #0x5210
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 125: I2C->CR2 = I2C_CR2_RESET_VALUE;
	ldw	x, #0x5211
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 126: I2C->FREQR = I2C_FREQR_RESET_VALUE;
	ldw	x, #0x5212
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 127: I2C->OARL = I2C_OARL_RESET_VALUE;
	ldw	x, #0x5213
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 128: I2C->OARH = I2C_OARH_RESET_VALUE;
	ldw	x, #0x5214
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 129: I2C->ITR = I2C_ITR_RESET_VALUE;
	ldw	x, #0x521a
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 130: I2C->CCRL = I2C_CCRL_RESET_VALUE;
	ldw	x, #0x521b
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 131: I2C->CCRH = I2C_CCRH_RESET_VALUE;
	ldw	x, #0x521c
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 132: I2C->TRISER = I2C_TRISER_RESET_VALUE;
	ldw	x, #0x521d
	ld	a, #0x02
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 157: void I2C_Init(uint32_t OutputClockFrequency, uint16_t OwnAddress,
;	-----------------------------------------
;	 function I2C_Init
;	-----------------------------------------
_I2C_Init:
	sub	sp, #19
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 163: uint8_t tmpccrh = 0;
	clr	(0x02, sp)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 174: input_clock = (uint8_t)(CLK_GetClockFreq() / 1000000);
	call	_CLK_GetClockFreq
	push	#0x40
	push	#0x42
	push	#0x0f
	push	#0x00
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x09, sp), x
	ld	a, (0x0a, sp)
	ld	(0x01, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 178: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
	ldw	x, #0x5212
	ld	a, (x)
	and	a, #0xc0
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 180: I2C->FREQR |= input_clock;
	ldw	x, #0x5212
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5212
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 184: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
	bres	0x5210, #0
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 187: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
	ldw	x, #0x521c
	ld	a, (x)
	and	a, #0x30
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 188: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
	ldw	x, #0x521b
	ld	a, (x)
	ldw	x, #0x521b
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 199: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 3));
	ld	a, (0x01, sp)
	ld	(0x13, sp), a
	clr	(0x12, sp)
	clrw	x
	ldw	y, (0x12, sp)
	pushw	y
	pushw	x
	push	#0x40
	push	#0x42
	push	#0x0f
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x0e, sp), x
	ldw	(0x0c, sp), y
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 191: if (OutputClockFrequency > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
	ldw	x, #0x86a0
	cpw	x, (0x18, sp)
	ld	a, #0x01
	sbc	a, (0x17, sp)
	clr	a
	sbc	a, (0x16, sp)
	jrc	00129$
	jp	00109$
00129$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 194: tmpccrh = I2C_CCRH_FS;
	ld	a, #0x80
	ld	(0x02, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 196: if (I2C_DutyCycle == I2C_DutyCycle_2)
	tnz	(0x1c, sp)
	jrne	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 199: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 3));
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
	push	#0x03
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x05, sp), x
	ldw	(0x03, sp), y
	jra	00103$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 204: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 25));
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
	push	#0x19
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x05, sp), x
	ldw	(0x03, sp), y
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 206: tmpccrh |= I2C_CCRH_DUTY;
	ld	a, #0xc0
	ld	(0x02, sp), a
00103$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 210: if (result < (uint16_t)0x0001)
	ldw	x, (0x05, sp)
	cpw	x, #0x0001
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrnc	00105$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 213: result = (uint16_t)0x0001;
	ldw	x, #0x0001
	ldw	(0x05, sp), x
	clrw	x
	ldw	(0x03, sp), x
00105$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 219: tmpval = ((input_clock * 3) / 10) + 1;
	ld	a, (0x01, sp)
	ld	xl, a
	ld	a, #0x03
	mul	x, a
	push	#0x0a
	push	#0x00
	pushw	x
	call	__divsint
	addw	sp, #4
	incw	x
	ld	a, xl
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 220: I2C->TRISER = (uint8_t)tmpval;
	ldw	x, #0x521d
	ld	(x), a
	jra	00110$
00109$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 226: result = (uint16_t)((input_clock * 1000000) / (OutputClockFrequency << (uint8_t)1));
	ldw	y, (0x18, sp)
	ldw	x, (0x16, sp)
	sllw	y
	rlcw	x
	pushw	y
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	exgw	x, y
	clrw	x
	ldw	(0x05, sp), y
	ldw	(0x03, sp), x
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 229: if (result < (uint16_t)0x0004)
	ldw	x, (0x05, sp)
	cpw	x, #0x0004
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrnc	00107$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 232: result = (uint16_t)0x0004;
	ldw	x, #0x0004
	ldw	(0x05, sp), x
	clrw	x
	ldw	(0x03, sp), x
00107$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 238: I2C->TRISER = (uint8_t)((uint8_t)input_clock + (uint8_t)1);
	ld	a, (0x01, sp)
	inc	a
	ldw	x, #0x521d
	ld	(x), a
00110$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 242: I2C->CCRL = (uint8_t)result;
	ld	a, (0x06, sp)
	ldw	x, #0x521b
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 243: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)((uint8_t)result >> 8) & I2C_CCRH_CCR) | tmpccrh);
	ldw	x, #0x521c
	ld	a, (0x02, sp)
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 246: I2C->CR1 |= I2C_CR1_PE;
	bset	0x5210, #0
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 249: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
	ldw	x, #0x5211
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 252: I2C->CR2 |= (uint8_t)I2C_Ack;
	ldw	x, #0x5211
	ld	a, (x)
	or	a, (0x1d, sp)
	ldw	x, #0x5211
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 255: I2C->OARL = (uint8_t)(OwnAddress);
	ld	a, (0x1b, sp)
	ldw	x, #0x5213
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 256: I2C->OARH = (uint8_t)((uint8_t)(I2C_AcknowledgedAddress | I2C_OARH_ADDCONF) |
	ld	a, (0x1e, sp)
	or	a, #0x40
	ld	(0x0b, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 257: (uint8_t)((uint16_t)( (uint16_t)OwnAddress &  (uint16_t)0x0300) >> 7));
	clr	a
	ld	xl, a
	ld	a, (0x1a, sp)
	and	a, #0x03
	ld	xh, a
	ld	a, #0x80
	div	x, a
	ld	a, xl
	or	a, (0x0b, sp)
	ldw	x, #0x5214
	ld	(x), a
	addw	sp, #19
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 266: void I2C_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_Cmd
;	-----------------------------------------
_I2C_Cmd:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 271: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 274: I2C->CR1 |= I2C_CR1_PE;
	ldw	x, #0x5210
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 279: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
	bres	0x5210, #0
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 289: void I2C_GeneralCallCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_GeneralCallCmd
;	-----------------------------------------
_I2C_GeneralCallCmd:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 294: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 297: I2C->CR1 |= I2C_CR1_ENGC;
	ldw	x, #0x5210
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 302: I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
	ldw	x, #0x5210
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 314: void I2C_GenerateSTART(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_GenerateSTART
;	-----------------------------------------
_I2C_GenerateSTART:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 319: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 322: I2C->CR2 |= I2C_CR2_START;
	ldw	x, #0x5211
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 327: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
	bres	0x5211, #0
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 337: void I2C_GenerateSTOP(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_GenerateSTOP
;	-----------------------------------------
_I2C_GenerateSTOP:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 342: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 345: I2C->CR2 |= I2C_CR2_STOP;
	ldw	x, #0x5211
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 350: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
	ldw	x, #0x5211
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 362: void I2C_SoftwareResetCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_SoftwareResetCmd
;	-----------------------------------------
_I2C_SoftwareResetCmd:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 367: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 370: I2C->CR2 |= I2C_CR2_SWRST;
	ldw	x, #0x5211
	ld	a, (x)
	or	a, #0x80
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 375: I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
	bres	0x5211, #7
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 385: void I2C_StretchClockCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_StretchClockCmd
;	-----------------------------------------
_I2C_StretchClockCmd:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 390: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 393: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
	ldw	x, #0x5210
	ld	a, (x)
	and	a, #0x7f
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 398: I2C->CR1 |= I2C_CR1_NOSTRETCH;
	bset	0x5210, #7
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 408: void I2C_AcknowledgeConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_AcknowledgeConfig
;	-----------------------------------------
_I2C_AcknowledgeConfig:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 413: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 416: I2C->CR2 |= I2C_CR2_ACK;
	ldw	x, #0x5211
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 421: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
	ldw	x, #0x5211
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 434: void I2C_AckPositionConfig(I2C_AckPosition_TypeDef I2C_AckPosition)
;	-----------------------------------------
;	 function I2C_AckPositionConfig
;	-----------------------------------------
_I2C_AckPositionConfig:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 440: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
	ldw	x, #0x5211
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 443: I2C->CR2 |= (uint8_t)I2C_AckPosition;
	ldw	x, #0x5211
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x5211
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 454: void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
;	-----------------------------------------
;	 function I2C_FastModeDutyCycleConfig
;	-----------------------------------------
_I2C_FastModeDutyCycleConfig:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 459: if (I2C_DutyCycle == I2C_DutyCycle_16_9)
	ld	a, (0x03, sp)
	cp	a, #0x40
	jrne	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 462: I2C->CCRH |= I2C_CCRH_DUTY;
	ldw	x, #0x521c
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 467: I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
	ldw	x, #0x521c
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 481: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef I2C_Direction)
;	-----------------------------------------
;	 function I2C_Send7bitAddress
;	-----------------------------------------
_I2C_Send7bitAddress:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 488: if (I2C_Direction != I2C_Direction_Transmitter)
	tnz	(0x04, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 491: Address |= OAR1_ADD0_Set;
	ld	a, (0x03, sp)
	or	a, #0x01
	ld	(0x03, sp), a
	jra	00103$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 496: Address &= OAR1_ADD0_Reset;
	ld	a, (0x03, sp)
	and	a, #0xfe
	ld	(0x03, sp), a
00103$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 499: I2C->DR = Address;
	ldw	x, #0x5216
	ld	a, (0x03, sp)
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 523: void I2C_SendData(uint8_t Data)
;	-----------------------------------------
;	 function I2C_SendData
;	-----------------------------------------
_I2C_SendData:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 526: I2C->DR = Data;
	ldw	x, #0x5216
	ld	a, (0x03, sp)
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 534: uint8_t I2C_ReceiveData(void)
;	-----------------------------------------
;	 function I2C_ReceiveData
;	-----------------------------------------
_I2C_ReceiveData:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 537: return ((uint8_t)I2C->DR);
	ldw	x, #0x5216
	ld	a, (x)
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 648: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_ITConfig
;	-----------------------------------------
_I2C_ITConfig:
	sub	sp, #2
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 657: I2C->ITR |= (uint8_t)I2C_IT;
	ld	a, (0x06, sp)
	ld	(0x02, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 654: if (NewState != DISABLE)
	tnz	(0x07, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 657: I2C->ITR |= (uint8_t)I2C_IT;
	ldw	x, #0x521a
	ld	a, (x)
	or	a, (0x02, sp)
	ldw	x, #0x521a
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 662: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
	ldw	x, #0x521a
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x02, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x521a
	ld	(x), a
00104$:
	addw	sp, #2
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 700: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
;	-----------------------------------------
;	 function I2C_CheckEvent
;	-----------------------------------------
_I2C_CheckEvent:
	sub	sp, #3
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 710: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
	ldw	x, (0x06, sp)
	cpw	x, #0x0004
	jrne	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 713: lastevent = (uint16_t)(I2C->SR2& I2C_SR2_AF);
	ldw	x, #0x5218
	ld	a, (x)
	and	a, #0x04
	ld	xl, a
	clr	a
	jra	00103$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 718: flag1 = I2C->SR1;
	ldw	x, #0x5217
	ld	a, (x)
	ld	(0x01, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 719: flag2 = I2C->SR3;
	ldw	x, #0x5219
	ld	a, (x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 720: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ld	a, (0x01, sp)
	ld	(0x03, sp), a
	clr	(0x02, sp)
	ld	a, xl
	or	a, (0x03, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x02, sp)
00103$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 724: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
	and	a, (0x06, sp)
	ld	xh, a
	ld	a, xl
	and	a, (0x07, sp)
	ld	xl, a
	cpw	x, (0x06, sp)
	jrne	00105$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 727: status = SUCCESS;
	ld	a, #0x01
	jra	00106$
00105$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 732: status = ERROR;
	clr	a
00106$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 736: return status;
	addw	sp, #3
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 754: I2C_Event_TypeDef I2C_GetLastEvent(void)
;	-----------------------------------------
;	 function I2C_GetLastEvent
;	-----------------------------------------
_I2C_GetLastEvent:
	sub	sp, #6
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 756: __IO uint16_t lastevent = 0;
	clrw	x
	ldw	(0x03, sp), x
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 760: if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
	ldw	x, #0x5218
	ld	a, (x)
	bcp	a, #0x04
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 762: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
	ldw	x, #0x0004
	ldw	(0x03, sp), x
	jra	00103$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 767: flag1 = I2C->SR1;
	ldw	x, #0x5217
	ld	a, (x)
	clrw	x
	ld	xl, a
	ldw	(0x01, sp), x
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 768: flag2 = I2C->SR3;
	ldw	x, #0x5219
	ld	a, (x)
	clrw	x
	ld	xl, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 771: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ld	a, xl
	or	a, (0x02, sp)
	ld	(0x06, sp), a
	ld	a, xh
	or	a, (0x01, sp)
	ld	(0x03, sp), a
	ld	a, (0x06, sp)
	ld	(0x04, sp), a
00103$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 774: return (I2C_Event_TypeDef)lastevent;
	ldw	x, (0x03, sp)
	addw	sp, #6
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 805: FlagStatus I2C_GetFlagStatus(I2C_FLAG_TypeDef I2C_FLAG)
;	-----------------------------------------
;	 function I2C_GetFlagStatus
;	-----------------------------------------
_I2C_GetFlagStatus:
	sub	sp, #2
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 807: uint8_t tempreg = 0;
	clr	a
	ld	xh, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 815: regindex = (uint8_t)((uint16_t)I2C_FLAG >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 818: switch (regindex)
	cp	a, #0x01
	jreq	00101$
	cp	a, #0x02
	jreq	00102$
	cp	a, #0x03
	jreq	00103$
	jra	00105$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 821: case 0x01:
00101$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 822: tempreg = (uint8_t)I2C->SR1;
	ldw	x, #0x5217
	ld	a, (x)
	ld	xh, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 823: break;
	jra	00105$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 826: case 0x02:
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 827: tempreg = (uint8_t)I2C->SR2;
	ldw	x, #0x5218
	ld	a, (x)
	ld	xh, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 828: break;
	jra	00105$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 831: case 0x03:
00103$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 832: tempreg = (uint8_t)I2C->SR3;
	ldw	x, #0x5219
	ld	a, (x)
	ld	xh, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 836: }
00105$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 839: if ((tempreg & (uint8_t)I2C_FLAG) != 0)
	ld	a, (0x06, sp)
	pushw	x
	and	a, (1, sp)
	popw	x
	tnz	a
	jreq	00107$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 842: bitstatus = SET;
	ld	a, #0x01
	jra	00108$
00107$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 847: bitstatus = RESET;
	clr	a
00108$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 850: return bitstatus;
	addw	sp, #2
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 879: void I2C_ClearFlag(I2C_FLAG_TypeDef I2C_FLAG)
;	-----------------------------------------
;	 function I2C_ClearFlag
;	-----------------------------------------
_I2C_ClearFlag:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 886: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
	ld	a, (0x04, sp)
	ld	xl, a
	clr	a
	ld	xh, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 888: I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
	cplw	x
	ld	a, xl
	ldw	x, #0x5218
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 910: ITStatus I2C_GetITStatus(I2C_IT_TypeDef I2C_IT)
;	-----------------------------------------
;	 function I2C_GetITStatus
;	-----------------------------------------
_I2C_GetITStatus:
	sub	sp, #10
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 913: __IO uint8_t enablestatus = 0;
	clr	(0x03, sp)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 919: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_IT & ITEN_Mask)) >> 8);
	clr	(0x0a, sp)
	ld	a, (0x0d, sp)
	and	a, #0x07
	ld	(0x09, sp), a
	ld	a, (0x09, sp)
	ld	(0x08, sp), a
	clr	a
	ld	a, (0x08, sp)
	ld	(0x06, sp), a
	ld	a, (0x06, sp)
	ld	(0x02, sp), a
	clr	a
	ld	(0x01, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 922: enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
	ldw	x, #0x521a
	ld	a, (x)
	push	a
	ld	a, (0x03, sp)
	ld	(0x06, sp), a
	pop	a
	and	a, (0x05, sp)
	ld	(0x03, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 924: if ((uint16_t)((uint16_t)I2C_IT & REGISTER_Mask) == REGISTER_SR1_Index)
	clr	a
	ld	xl, a
	ld	a, (0x0d, sp)
	and	a, #0x30
	ld	xh, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 927: if (((I2C->SR1 & (uint8_t)I2C_IT) != RESET) && enablestatus)
	ld	a, (0x0e, sp)
	ld	(0x04, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 924: if ((uint16_t)((uint16_t)I2C_IT & REGISTER_Mask) == REGISTER_SR1_Index)
	cpw	x, #0x0100
	jrne	00110$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 927: if (((I2C->SR1 & (uint8_t)I2C_IT) != RESET) && enablestatus)
	ldw	x, #0x5217
	ld	a, (x)
	and	a, (0x04, sp)
	tnz	a
	jreq	00102$
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 930: bitstatus = SET;
	ld	a, #0x01
	jra	00111$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 935: bitstatus = RESET;
	clr	a
	jra	00111$
00110$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 941: if (((I2C->SR2 & (uint8_t)I2C_IT) != RESET) && enablestatus)
	ldw	x, #0x5218
	ld	a, (x)
	and	a, (0x04, sp)
	tnz	a
	jreq	00106$
	tnz	(0x03, sp)
	jreq	00106$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 944: bitstatus = SET;
	ld	a, #0x01
	jra	00111$
00106$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 949: bitstatus = RESET;
	clr	a
00111$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 953: return  bitstatus;
	addw	sp, #10
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 982: void I2C_ClearITPendingBit(I2C_IT_TypeDef I2C_IT)
;	-----------------------------------------
;	 function I2C_ClearITPendingBit
;	-----------------------------------------
_I2C_ClearITPendingBit:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 990: flagpos = (uint16_t)I2C_IT & FLAG_Mask;
	ld	a, (0x04, sp)
	ld	xl, a
	clr	a
	ld	xh, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 993: I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
	cplw	x
	ld	a, xl
	ldw	x, #0x5218
	ld	(x), a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
