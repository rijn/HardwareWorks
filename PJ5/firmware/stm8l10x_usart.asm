;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Sep 26 2015) (Mac OS X x86_64)
; This file was generated Tue Oct 13 14:47:16 2015
;--------------------------------------------------------
	.module stm8l10x_usart
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _USART_DeInit
	.globl _USART_Init
	.globl _USART_ClockInit
	.globl _USART_Cmd
	.globl _USART_ITConfig
	.globl _USART_ReceiveData8
	.globl _USART_ReceiveData9
	.globl _USART_ReceiverWakeUpCmd
	.globl _USART_SendBreak
	.globl _USART_SendData8
	.globl _USART_SendData9
	.globl _USART_SetAddress
	.globl _USART_WakeUpConfig
	.globl _USART_GetFlagStatus
	.globl _USART_ClearFlag
	.globl _USART_GetITStatus
	.globl _USART_ClearITPendingBit
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
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 59: void USART_DeInit(void)
;	-----------------------------------------
;	 function USART_DeInit
;	-----------------------------------------
_USART_DeInit:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 63: (void)USART->SR;
	ldw	x, #0x5230
	ld	a, (x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 64: (void)USART->DR;
	ldw	x, #0x5231
	ld	a, (x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 66: USART->BRR2 = USART_BRR2_RESET_VALUE;  /* Set USART_BRR2 to reset value 0x00 */
	ldw	x, #0x5233
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 67: USART->BRR1 = USART_BRR1_RESET_VALUE;  /* Set USART_BRR1 to reset value 0x00 */
	ldw	x, #0x5232
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 69: USART->CR1 = USART_CR1_RESET_VALUE;  /* Set USART_CR1 to reset value 0x00 */
	ldw	x, #0x5234
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 70: USART->CR2 = USART_CR2_RESET_VALUE;  /* Set USART_CR2 to reset value 0x00 */
	ldw	x, #0x5235
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 71: USART->CR3 = USART_CR3_RESET_VALUE;  /* Set USART_CR3 to reset value 0x00 */
	ldw	x, #0x5236
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 72: USART->CR4 = USART_CR4_RESET_VALUE;  /* Set USART_CR4 to reset value 0x00 */
	ldw	x, #0x5237
	clr	(x)
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 100: void USART_Init(uint32_t BaudRate, USART_WordLength_TypeDef USART_WordLength,
;	-----------------------------------------
;	 function USART_Init
;	-----------------------------------------
_USART_Init:
	sub	sp, #22
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 118: USART->CR1 &= (uint8_t)(~(USART_CR1_PCEN | USART_CR1_PS | USART_CR1_M));
	ldw	x, #0x5234
	ld	a, (x)
	and	a, #0xe9
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 121: USART->CR1 |= (uint8_t)((uint8_t)USART_WordLength | (uint8_t)USART_Parity);
	ldw	x, #0x5234
	ld	a, (x)
	ld	(0x16, sp), a
	ld	a, (0x1d, sp)
	or	a, (0x1f, sp)
	or	a, (0x16, sp)
	ldw	x, #0x5234
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 124: USART->CR3 &= (uint8_t)(~USART_CR3_STOP);
	ldw	x, #0x5236
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 126: USART->CR3 |= (uint8_t)USART_StopBits;
	ldw	x, #0x5236
	ld	a, (x)
	or	a, (0x1e, sp)
	ldw	x, #0x5236
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 129: USART->BRR1 &= (uint8_t)(~USART_BRR1_DIVM);
	ldw	x, #0x5232
	ld	a, (x)
	ldw	x, #0x5232
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 131: USART->BRR2 &= (uint8_t)(~USART_BRR2_DIVM);
	ldw	x, #0x5233
	ld	a, (x)
	and	a, #0x0f
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 133: USART->BRR2 &= (uint8_t)(~USART_BRR2_DIVF);
	ldw	x, #0x5233
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 135: BaudRate_Mantissa  = ((uint32_t)CLK_GetClockFreq() / BaudRate);
	call	_CLK_GetClockFreq
	ldw	(0x14, sp), x
	ldw	x, (0x1b, sp)
	pushw	x
	ldw	x, (0x1b, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x03, sp), x
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 137: USART->BRR2 = (uint8_t)((BaudRate_Mantissa >> (uint8_t)8) & (uint8_t)0xF0);
	ldw	x, y
	ld	a, (0x03, sp)
	ld	(0x11, sp), a
	clr	(0x0e, sp)
	ld	a, (0x11, sp)
	and	a, #0xf0
	push	a
	clr	(0x0d, sp)
	clr	(0x0c, sp)
	clr	(0x0b, sp)
	pop	a
	ldw	x, #0x5233
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 139: USART->BRR2 |= (uint8_t)(BaudRate_Mantissa & (uint8_t)0x0F);
	ldw	x, #0x5233
	ld	a, (x)
	ld	xh, a
	ld	a, (0x04, sp)
	and	a, #0x0f
	ld	(0x09, sp), a
	clr	(0x08, sp)
	clr	(0x07, sp)
	clr	a
	ld	a, (0x09, sp)
	ld	(0x05, sp), a
	ld	a, xh
	or	a, (0x05, sp)
	ldw	x, #0x5233
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 141: USART->BRR1 = (uint8_t)(BaudRate_Mantissa >> (uint8_t)4);
	ldw	x, (0x03, sp)
	ld	a, #0x04
	tnz	a
	jreq	00104$
00103$:
	srlw	y
	rrcw	x
	dec	a
	jrne	00103$
00104$:
	ld	a, xl
	ldw	x, #0x5232
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 144: USART->CR2 &= (uint8_t)~(USART_CR2_TEN | USART_CR2_REN);
	ldw	x, #0x5235
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 146: USART->CR2 |= (uint8_t)USART_Mode;
	ldw	x, #0x5235
	ld	a, (x)
	or	a, (0x20, sp)
	ldw	x, #0x5235
	ld	(x), a
	addw	sp, #22
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 171: void USART_ClockInit(USART_Clock_TypeDef USART_Clock, USART_CPOL_TypeDef USART_CPOL,
;	-----------------------------------------
;	 function USART_ClockInit
;	-----------------------------------------
_USART_ClockInit:
	push	a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 181: USART->CR3 &= (uint8_t)~(USART_CR3_CPOL | USART_CR3_CPHA | USART_CR3_LBCL);
	ldw	x, #0x5236
	ld	a, (x)
	and	a, #0xf8
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 183: USART->CR3 |= (uint8_t)((uint8_t)USART_CPOL | (uint8_t)USART_CPHA | (uint8_t)USART_LastBit);
	ldw	x, #0x5236
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	or	a, (0x06, sp)
	or	a, (0x07, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5236
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 185: if (USART_Clock != USART_Clock_Disable)
	tnz	(0x04, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 187: USART->CR3 |= (uint8_t)(USART_CR3_CLKEN); /* Set the Clock Enable bit */
	ldw	x, #0x5236
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 191: USART->CR3 &= (uint8_t)(~USART_CR3_CLKEN); /* Clear the Clock Enable bit */
	ldw	x, #0x5236
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	pop	a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 201: void USART_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function USART_Cmd
;	-----------------------------------------
_USART_Cmd:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 205: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 207: USART->CR1 &= (uint8_t)(~USART_CR1_USARTD); /**< USART Enable */
	ldw	x, #0x5234
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 211: USART->CR1 |= USART_CR1_USARTD;  /**< USART Disable */
	ldw	x, #0x5234
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 229: void USART_ITConfig(USART_IT_TypeDef USART_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function USART_ITConfig
;	-----------------------------------------
_USART_ITConfig:
	sub	sp, #4
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 236: uartreg = (uint8_t)((uint16_t)USART_IT >> (uint8_t)0x08);
	ld	a, (0x07, sp)
	clr	(0x02, sp)
	ld	xh, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 238: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
	ld	a, (0x08, sp)
	and	a, #0x0f
	ld	xl, a
	ld	a, #0x01
	ld	(0x01, sp), a
	ld	a, xl
	tnz	a
	jreq	00125$
00124$:
	sll	(0x01, sp)
	dec	a
	jrne	00124$
00125$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 243: if (uartreg == 0x01)
	ld	a, xh
	cp	a, #0x01
	jrne	00127$
	ld	a, #0x01
	jra	00128$
00127$:
	clr	a
00128$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 240: if (NewState != DISABLE)
	tnz	(0x09, sp)
	jreq	00108$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 243: if (uartreg == 0x01)
	tnz	a
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 245: USART->CR1 |= itpos;
	ldw	x, #0x5234
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5234
	ld	(x), a
	jra	00110$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 250: USART->CR2 |= itpos;
	ldw	x, #0x5235
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5235
	ld	(x), a
	jra	00110$
00108$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 258: USART->CR1 &= (uint8_t)(~itpos);
	push	a
	ld	a, (0x02, sp)
	cpl	a
	ld	(0x05, sp), a
	pop	a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 256: if (uartreg == 0x01)
	tnz	a
	jreq	00105$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 258: USART->CR1 &= (uint8_t)(~itpos);
	ldw	x, #0x5234
	ld	a, (x)
	and	a, (0x04, sp)
	ldw	x, #0x5234
	ld	(x), a
	jra	00110$
00105$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 263: USART->CR2 &= (uint8_t)(~itpos);
	ldw	x, #0x5235
	ld	a, (x)
	and	a, (0x04, sp)
	ldw	x, #0x5235
	ld	(x), a
00110$:
	addw	sp, #4
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 275: uint8_t USART_ReceiveData8(void)
;	-----------------------------------------
;	 function USART_ReceiveData8
;	-----------------------------------------
_USART_ReceiveData8:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 277: return USART->DR;
	ldw	x, #0x5231
	ld	a, (x)
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 287: uint16_t USART_ReceiveData9(void)
;	-----------------------------------------
;	 function USART_ReceiveData9
;	-----------------------------------------
_USART_ReceiveData9:
	sub	sp, #4
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 291: temp = ((uint16_t)(((uint16_t)((uint16_t)USART->CR1 & (uint16_t)USART_CR1_R8)) << 1));
	ldw	x, #0x5234
	ld	a, (x)
	clr	(0x03, sp)
	and	a, #0x80
	ld	xl, a
	clr	a
	ld	xh, a
	sllw	x
	ldw	(0x01, sp), x
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 292: return (uint16_t)( ((uint16_t)((uint16_t)USART->DR) | temp) & ((uint16_t)0x01FF));
	ldw	x, #0x5231
	ld	a, (x)
	clrw	x
	ld	xl, a
	or	a, (0x02, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x01, sp)
	and	a, #0x01
	ld	xh, a
	addw	sp, #4
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 301: void USART_ReceiverWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function USART_ReceiverWakeUpCmd
;	-----------------------------------------
_USART_ReceiverWakeUpCmd:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 305: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 308: USART->CR2 |= USART_CR2_RWU;
	ldw	x, #0x5235
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 313: USART->CR2 &= ((uint8_t)~USART_CR2_RWU);
	ldw	x, #0x5235
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 322: void USART_SendBreak(void)
;	-----------------------------------------
;	 function USART_SendBreak
;	-----------------------------------------
_USART_SendBreak:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 324: USART->CR2 |= USART_CR2_SBK;
	bset	0x5235, #0
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 332: void USART_SendData8(uint8_t Data)
;	-----------------------------------------
;	 function USART_SendData8
;	-----------------------------------------
_USART_SendData8:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 335: USART->DR = Data;
	ldw	x, #0x5231
	ld	a, (0x03, sp)
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 344: void USART_SendData9(uint16_t Data)
;	-----------------------------------------
;	 function USART_SendData9
;	-----------------------------------------
_USART_SendData9:
	push	a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 348: USART->CR1 &= ((uint8_t)~USART_CR1_T8);                    /* Clear the transmit data bit 8     */
	ldw	x, #0x5234
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 349: USART->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & USART_CR1_T8); /* Write the transmit data bit [8]   */
	ldw	x, #0x5234
	ld	a, (x)
	ld	(0x01, sp), a
	ldw	x, (0x04, sp)
	srlw	x
	srlw	x
	ld	a, xl
	and	a, #0x40
	or	a, (0x01, sp)
	ldw	x, #0x5234
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 350: USART->DR   = (uint8_t)(Data);                             /* Write the transmit data bit [0:7] */
	ld	a, (0x05, sp)
	ldw	x, #0x5231
	ld	(x), a
	pop	a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 360: void USART_SetAddress(uint8_t Address)
;	-----------------------------------------
;	 function USART_SetAddress
;	-----------------------------------------
_USART_SetAddress:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 366: USART->CR4 &= ((uint8_t)~USART_CR4_ADD);
	ldw	x, #0x5237
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 368: USART->CR4 |= Address;
	ldw	x, #0x5237
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x5237
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 379: void USART_WakeUpConfig(USART_WakeUp_TypeDef USART_WakeUp)
;	-----------------------------------------
;	 function USART_WakeUpConfig
;	-----------------------------------------
_USART_WakeUpConfig:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 383: USART->CR1 &= ((uint8_t)~USART_CR1_WAKE);
	ldw	x, #0x5234
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 384: USART->CR1 |= (uint8_t)USART_WakeUp;
	ldw	x, #0x5234
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x5234
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 400: FlagStatus USART_GetFlagStatus(USART_FLAG_TypeDef USART_FLAG)
;	-----------------------------------------
;	 function USART_GetFlagStatus
;	-----------------------------------------
_USART_GetFlagStatus:
	push	a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 409: if ((USART->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
	ld	a, (0x05, sp)
	ld	(0x01, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 407: if (USART_FLAG == USART_FLAG_SBK)
	ldw	x, (0x04, sp)
	cpw	x, #0x0101
	jrne	00108$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 409: if ((USART->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5235
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 412: status = SET;
	ld	a, #0x01
	jra	00109$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 417: status = RESET;
	clr	a
	jra	00109$
00108$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 422: if ((USART->SR & (uint8_t)USART_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5230
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00105$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 425: status = SET;
	ld	a, #0x01
	jra	00109$
00105$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 430: status = RESET;
	clr	a
00109$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 434: return status;
	addw	sp, #1
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 454: void USART_ClearFlag(void)
;	-----------------------------------------
;	 function USART_ClearFlag
;	-----------------------------------------
_USART_ClearFlag:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 457: USART->SR = (uint8_t)~(USART_SR_RXNE);
	ldw	x, #0x5230
	ld	a, #0xdf
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 472: ITStatus USART_GetITStatus(USART_IT_TypeDef USART_IT)
;	-----------------------------------------
;	 function USART_GetITStatus
;	-----------------------------------------
_USART_GetITStatus:
	sub	sp, #4
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 484: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
	ld	a, (0x08, sp)
	ld	xh, a
	and	a, #0x0f
	ld	xl, a
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, xl
	tnz	a
	jreq	00135$
00134$:
	sll	(0x03, sp)
	dec	a
	jrne	00134$
00135$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 486: itmask1 = (uint8_t)((uint8_t)USART_IT >> (uint8_t)4);
	rlwa	x
	swap	a
	and	a, #0x0f
	rrwa	x
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 488: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xh
	tnz	a
	jreq	00137$
00136$:
	sll	(0x02, sp)
	dec	a
	jrne	00136$
00137$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 492: if (USART_IT == USART_IT_PE)
	ldw	x, (0x07, sp)
	cpw	x, #0x0100
	jrne	00110$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 495: enablestatus = (uint8_t)((uint8_t)USART->CR1 & itmask2);
	ldw	x, #0x5234
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x04, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 498: if (((USART->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5230
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00102$
	tnz	(0x04, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 501: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00111$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 506: pendingbitstatus = RESET;
	clr	a
	jra	00111$
00110$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 512: enablestatus = (uint8_t)((uint8_t)USART->CR2 & itmask2);
	ldw	x, #0x5235
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 514: if (((USART->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5230
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00106$
	tnz	(0x01, sp)
	jreq	00106$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 517: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00111$
00106$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 522: pendingbitstatus = RESET;
	clr	a
00111$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 527: return  pendingbitstatus;
	addw	sp, #4
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 546: void USART_ClearITPendingBit(void)
;	-----------------------------------------
;	 function USART_ClearITPendingBit
;	-----------------------------------------
_USART_ClearITPendingBit:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 549: USART->SR = (uint8_t)~(USART_SR_RXNE);
	ldw	x, #0x5230
	ld	a, #0xdf
	ld	(x), a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
