;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Sep 26 2015) (Mac OS X x86_64)
; This file was generated Tue Oct 13 14:47:14 2015
;--------------------------------------------------------
	.module stm8l10x_gpio
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_DeInit
	.globl _GPIO_Init
	.globl _GPIO_Write
	.globl _GPIO_WriteBit
	.globl _GPIO_SetBits
	.globl _GPIO_ResetBits
	.globl _GPIO_ToggleBits
	.globl _GPIO_ReadInputData
	.globl _GPIO_ReadOutputData
	.globl _GPIO_ReadInputDataBit
	.globl _GPIO_ReadOutputDataBit
	.globl _GPIO_ExternalPullUpConfig
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
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 57: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_DeInit
;	-----------------------------------------
_GPIO_DeInit:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 59: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
	ldw	y, (0x03, sp)
	clr	(y)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 60: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
	ldw	x, y
	incw	x
	incw	x
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 61: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
	ldw	x, y
	addw	x, #0x0003
	clr	(x)
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 62: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
	ldw	x, y
	addw	x, #0x0004
	clr	(x)
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 98: void GPIO_Init(GPIO_TypeDef* GPIOx,
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
_GPIO_Init:
	sub	sp, #3
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 117: GPIOx->ODR |= GPIO_Pin;
	ldw	y, (0x06, sp)
	ldw	(0x02, sp), y
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 120: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
	ld	a, (0x08, sp)
	cpl	a
	ld	(0x01, sp), a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 123: GPIOx->DDR |= GPIO_Pin;
	ldw	x, (0x02, sp)
	incw	x
	incw	x
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 113: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
	ld	a, (0x09, sp)
	sll	a
	jrnc	00105$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 115: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
	ld	a, (0x09, sp)
	bcp	a, #0x10
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 117: GPIOx->ODR |= GPIO_Pin;
	ldw	y, (0x02, sp)
	ld	a, (y)
	or	a, (0x08, sp)
	ldw	y, (0x02, sp)
	ld	(y), a
	jra	00103$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 120: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
	ldw	y, (0x02, sp)
	ld	a, (y)
	and	a, (0x01, sp)
	ldw	y, (0x02, sp)
	ld	(y), a
00103$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 123: GPIOx->DDR |= GPIO_Pin;
	ld	a, (x)
	or	a, (0x08, sp)
	ld	(x), a
	jra	00106$
00105$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 127: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
	ld	a, (x)
	and	a, (0x01, sp)
	ld	(x), a
00106$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 136: GPIOx->CR1 |= GPIO_Pin;
	ldw	x, (0x02, sp)
	addw	x, #0x0003
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 134: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
	ld	a, (0x09, sp)
	bcp	a, #0x40
	jreq	00108$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 136: GPIOx->CR1 |= GPIO_Pin;
	ld	a, (x)
	or	a, (0x08, sp)
	ld	(x), a
	jra	00109$
00108$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 139: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	ld	a, (x)
	and	a, (0x01, sp)
	ld	(x), a
00109$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 148: GPIOx->CR2 |= GPIO_Pin;
	ldw	x, (0x02, sp)
	addw	x, #0x0004
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 146: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
	ld	a, (0x09, sp)
	bcp	a, #0x20
	jreq	00111$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 148: GPIOx->CR2 |= GPIO_Pin;
	ld	a, (x)
	or	a, (0x08, sp)
	ld	(x), a
	jra	00113$
00111$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 151: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ld	a, (x)
	and	a, (0x01, sp)
	ld	(x), a
00113$:
	addw	sp, #3
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 163: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t GPIO_PortVal)
;	-----------------------------------------
;	 function GPIO_Write
;	-----------------------------------------
_GPIO_Write:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 165: GPIOx->ODR = GPIO_PortVal;
	ldw	x, (0x03, sp)
	ld	a, (0x05, sp)
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 185: void GPIO_WriteBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, BitAction GPIO_BitVal)
;	-----------------------------------------
;	 function GPIO_WriteBit
;	-----------------------------------------
_GPIO_WriteBit:
	sub	sp, #2
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 193: SetBit(GPIOx->ODR, GPIO_Pin);
	ldw	x, (0x05, sp)
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, (0x07, sp)
	tnz	a
	jreq	00111$
00110$:
	sll	(0x02, sp)
	dec	a
	jrne	00110$
00111$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 191: if (GPIO_BitVal != RESET)
	tnz	(0x08, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 193: SetBit(GPIOx->ODR, GPIO_Pin);
	ld	a, (x)
	or	a, (0x02, sp)
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 198: ClrBit(GPIOx->ODR, GPIO_Pin);
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x02, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
00104$:
	addw	sp, #2
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 218: void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_SetBits
;	-----------------------------------------
_GPIO_SetBits:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 220: GPIOx->ODR |= GPIO_Pin;
	ldw	x, (0x03, sp)
	ld	a, (x)
	or	a, (0x05, sp)
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 239: void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ResetBits
;	-----------------------------------------
_GPIO_ResetBits:
	push	a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 241: GPIOx->ODR &= (uint8_t)(~GPIO_Pin);
	ldw	x, (0x04, sp)
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
	pop	a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 251: void GPIO_ToggleBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ToggleBits
;	-----------------------------------------
_GPIO_ToggleBits:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 253: GPIOx->ODR ^= GPIO_Pin;
	ldw	x, (0x03, sp)
	ld	a, (x)
	xor	a, (0x05, sp)
	ld	(x), a
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 262: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_ReadInputData
;	-----------------------------------------
_GPIO_ReadInputData:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 264: return ((uint8_t)GPIOx->IDR);
	ldw	x, (0x03, sp)
	ld	a, (0x1, x)
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 273: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_ReadOutputData
;	-----------------------------------------
_GPIO_ReadOutputData:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 275: return ((uint8_t)GPIOx->ODR);
	ldw	x, (0x03, sp)
	ld	a, (x)
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 294: BitStatus GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ReadInputDataBit
;	-----------------------------------------
_GPIO_ReadInputDataBit:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 296: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
	ldw	x, (0x03, sp)
	ld	a, (0x1, x)
	and	a, (0x05, sp)
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 315: BitStatus GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ReadOutputDataBit
;	-----------------------------------------
_GPIO_ReadOutputDataBit:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 317: return ((BitStatus)(GPIOx->ODR & (uint8_t)GPIO_Pin));
	ldw	x, (0x03, sp)
	ld	a, (x)
	and	a, (0x05, sp)
	ret
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 337: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin, FunctionalState NewState)
;	-----------------------------------------
;	 function GPIO_ExternalPullUpConfig
;	-----------------------------------------
_GPIO_ExternalPullUpConfig:
	push	a
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 345: GPIOx->CR1 |= GPIO_Pin;
	ldw	x, (0x04, sp)
	addw	x, #0x0003
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 343: if (NewState != DISABLE) /* External Pull-Up Set*/
	tnz	(0x07, sp)
	jreq	00102$
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 345: GPIOx->CR1 |= GPIO_Pin;
	ld	a, (x)
	or	a, (0x06, sp)
	ld	(x), a
	jra	00104$
00102$:
;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 348: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
00104$:
	pop	a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
