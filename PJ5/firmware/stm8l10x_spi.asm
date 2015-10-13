;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Sep 26 2015) (Mac OS X x86_64)
; This file was generated Tue Oct 13 14:47:16 2015
;--------------------------------------------------------
	.module stm8l10x_spi
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_DeInit
	.globl _SPI_Init
	.globl _SPI_Cmd
	.globl _SPI_ITConfig
	.globl _SPI_SendData
	.globl _SPI_ReceiveData
	.globl _SPI_NSSInternalSoftwareCmd
	.globl _SPI_BiDirectionalLineConfig
	.globl _SPI_GetFlagStatus
	.globl _SPI_ClearFlag
	.globl _SPI_GetITStatus
	.globl _SPI_ClearITPendingBit
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
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 55: void SPI_DeInit(void)
;	-----------------------------------------
;	 function SPI_DeInit
;	-----------------------------------------
_SPI_DeInit:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 57: SPI->CR1 = SPI_CR1_RESET_VALUE;
	ldw	x, #0x5200
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 58: SPI->CR2 = SPI_CR2_RESET_VALUE;
	ldw	x, #0x5201
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 59: SPI->ICR = SPI_ICR_RESET_VALUE;
	ldw	x, #0x5202
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 60: SPI->SR = SPI_SR_RESET_VALUE;
	ldw	x, #0x5203
	ld	a, #0x02
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 103: void SPI_Init(SPI_FirstBit_TypeDef SPI_FirstBit, SPI_BaudRatePrescaler_TypeDef SPI_BaudRatePrescaler,
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
_SPI_Init:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 119: (uint8_t)(SPI_BaudRatePrescaler) |
	ld	a, (0x03, sp)
	or	a, (0x04, sp)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 120: (uint8_t)(SPI_CPOL) |
	or	a, (0x06, sp)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 121: (uint8_t)(SPI_CPHA));
	or	a, (0x07, sp)
	ldw	x, #0x5200
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 124: SPI->CR2 = (uint8_t)((uint8_t)(SPI_DirectionMode) | (uint8_t)(SPI_NSS));
	ld	a, (0x08, sp)
	or	a, (0x09, sp)
	ldw	x, #0x5201
	ld	(x), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 126: if (SPI_Mode == SPI_Mode_Master)
	ld	a, (0x05, sp)
	cp	a, #0x04
	jrne	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 128: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
	ldw	x, #0x5201
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	jra	00103$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 132: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
	bres	0x5201, #0
00103$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 136: SPI->CR1 |= (uint8_t)(SPI_Mode);
	ldw	x, #0x5200
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x5200
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 145: void SPI_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function SPI_Cmd
;	-----------------------------------------
_SPI_Cmd:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 151: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 153: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral */
	ldw	x, #0x5200
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 157: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral */
	ldw	x, #0x5200
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 174: void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function SPI_ITConfig
;	-----------------------------------------
_SPI_ITConfig:
	sub	sp, #2
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 182: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
	ld	a, (0x05, sp)
	and	a, #0x0f
	ld	xh, a
	ld	a, #0x01
	ld	(0x01, sp), a
	ld	a, xh
	tnz	a
	jreq	00111$
00110$:
	sll	(0x01, sp)
	dec	a
	jrne	00110$
00111$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 184: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 186: SPI->ICR |= itpos; /* Enable interrupt*/
	ldw	x, #0x5202
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5202
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 190: SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
	ldw	x, #0x5202
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x01, sp)
	cpl	a
	and	a, (0x02, sp)
	ldw	x, #0x5202
	ld	(x), a
00104$:
	addw	sp, #2
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 199: void SPI_SendData(uint8_t Data)
;	-----------------------------------------
;	 function SPI_SendData
;	-----------------------------------------
_SPI_SendData:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 201: SPI->DR = Data; /* Write in the DR register the data to be sent*/
	ldw	x, #0x5204
	ld	a, (0x03, sp)
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 209: uint8_t SPI_ReceiveData(void)
;	-----------------------------------------
;	 function SPI_ReceiveData
;	-----------------------------------------
_SPI_ReceiveData:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 211: return ((uint8_t)SPI->DR); /* Return the data in the DR register */
	ldw	x, #0x5204
	ld	a, (x)
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 221: void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function SPI_NSSInternalSoftwareCmd
;	-----------------------------------------
_SPI_NSSInternalSoftwareCmd:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 227: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 229: SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software */
	ldw	x, #0x5201
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 233: SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software */
	bres	0x5201, #0
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 246: void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
;	-----------------------------------------
;	 function SPI_BiDirectionalLineConfig
;	-----------------------------------------
_SPI_BiDirectionalLineConfig:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 251: if (SPI_Direction != SPI_Direction_Rx)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 253: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
	ldw	x, #0x5201
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 257: SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
	ldw	x, #0x5201
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00104$:
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 275: FlagStatus SPI_GetFlagStatus(SPI_FLAG_TypeDef SPI_FLAG)
;	-----------------------------------------
;	 function SPI_GetFlagStatus
;	-----------------------------------------
_SPI_GetFlagStatus:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 282: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
	ldw	x, #0x5203
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 284: status = SET; /* SPI_FLAG is set */
	ld	a, #0x01
	jra	00103$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 288: status = RESET; /* SPI_FLAG is reset*/
	clr	a
00103$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 292: return status;
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 306: void SPI_ClearFlag(void)
;	-----------------------------------------
;	 function SPI_ClearFlag
;	-----------------------------------------
_SPI_ClearFlag:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 309: SPI->SR = (uint8_t)(~SPI_SR_WKUP);
	ldw	x, #0x5203
	ld	a, #0xf7
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 323: ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
;	-----------------------------------------
;	 function SPI_GetITStatus
;	-----------------------------------------
_SPI_GetITStatus:
	sub	sp, #3
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 332: itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
	ld	a, (0x06, sp)
	and	a, #0x0f
	ld	xh, a
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, xh
	tnz	a
	jreq	00116$
00115$:
	sll	(0x03, sp)
	dec	a
	jrne	00115$
00116$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 335: itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
	ld	a, (0x06, sp)
	swap	a
	and	a, #0x0f
	ld	xh, a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 337: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xh
	tnz	a
	jreq	00118$
00117$:
	sll	(0x02, sp)
	dec	a
	jrne	00117$
00118$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 339: enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
	ldw	x, #0x5203
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 341: if (((SPI->ICR & itpos) != (uint8_t)RESET) && enablestatus)
	ldw	x, #0x5202
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00102$
	tnz	(0x01, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 344: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 349: pendingbitstatus = RESET;
	clr	a
00103$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 352: return  pendingbitstatus;
	addw	sp, #3
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 367: void SPI_ClearITPendingBit(void)
;	-----------------------------------------
;	 function SPI_ClearITPendingBit
;	-----------------------------------------
_SPI_ClearITPendingBit:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 370: SPI->SR = (uint8_t)(~SPI_SR_WKUP);
	ldw	x, #0x5203
	ld	a, #0xf7
	ld	(x), a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
