                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Sep 26 2015) (Mac OS X x86_64)
                                      4 ; This file was generated Tue Oct 13 14:47:16 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8l10x_usart
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _CLK_GetClockFreq
                                     13 	.globl _USART_DeInit
                                     14 	.globl _USART_Init
                                     15 	.globl _USART_ClockInit
                                     16 	.globl _USART_Cmd
                                     17 	.globl _USART_ITConfig
                                     18 	.globl _USART_ReceiveData8
                                     19 	.globl _USART_ReceiveData9
                                     20 	.globl _USART_ReceiverWakeUpCmd
                                     21 	.globl _USART_SendBreak
                                     22 	.globl _USART_SendData8
                                     23 	.globl _USART_SendData9
                                     24 	.globl _USART_SetAddress
                                     25 	.globl _USART_WakeUpConfig
                                     26 	.globl _USART_GetFlagStatus
                                     27 	.globl _USART_ClearFlag
                                     28 	.globl _USART_GetITStatus
                                     29 	.globl _USART_ClearITPendingBit
                                     30 ;--------------------------------------------------------
                                     31 ; ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DATA
                                     34 ;--------------------------------------------------------
                                     35 ; ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area INITIALIZED
                                     38 ;--------------------------------------------------------
                                     39 ; absolute external ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DABS (ABS)
                                     42 ;--------------------------------------------------------
                                     43 ; global & static initialisations
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area GSINIT
                                     49 ;--------------------------------------------------------
                                     50 ; Home
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area HOME
                                     54 ;--------------------------------------------------------
                                     55 ; code
                                     56 ;--------------------------------------------------------
                                     57 	.area CODE
                                     58 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 59: void USART_DeInit(void)
                                     59 ;	-----------------------------------------
                                     60 ;	 function USART_DeInit
                                     61 ;	-----------------------------------------
      008727                         62 _USART_DeInit:
                                     63 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 63: (void)USART->SR;
      008727 AE 52 30         [ 2]   64 	ldw	x, #0x5230
      00872A F6               [ 1]   65 	ld	a, (x)
                                     66 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 64: (void)USART->DR;
      00872B AE 52 31         [ 2]   67 	ldw	x, #0x5231
      00872E F6               [ 1]   68 	ld	a, (x)
                                     69 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 66: USART->BRR2 = USART_BRR2_RESET_VALUE;  /* Set USART_BRR2 to reset value 0x00 */
      00872F AE 52 33         [ 2]   70 	ldw	x, #0x5233
      008732 7F               [ 1]   71 	clr	(x)
                                     72 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 67: USART->BRR1 = USART_BRR1_RESET_VALUE;  /* Set USART_BRR1 to reset value 0x00 */
      008733 AE 52 32         [ 2]   73 	ldw	x, #0x5232
      008736 7F               [ 1]   74 	clr	(x)
                                     75 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 69: USART->CR1 = USART_CR1_RESET_VALUE;  /* Set USART_CR1 to reset value 0x00 */
      008737 AE 52 34         [ 2]   76 	ldw	x, #0x5234
      00873A 7F               [ 1]   77 	clr	(x)
                                     78 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 70: USART->CR2 = USART_CR2_RESET_VALUE;  /* Set USART_CR2 to reset value 0x00 */
      00873B AE 52 35         [ 2]   79 	ldw	x, #0x5235
      00873E 7F               [ 1]   80 	clr	(x)
                                     81 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 71: USART->CR3 = USART_CR3_RESET_VALUE;  /* Set USART_CR3 to reset value 0x00 */
      00873F AE 52 36         [ 2]   82 	ldw	x, #0x5236
      008742 7F               [ 1]   83 	clr	(x)
                                     84 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 72: USART->CR4 = USART_CR4_RESET_VALUE;  /* Set USART_CR4 to reset value 0x00 */
      008743 AE 52 37         [ 2]   85 	ldw	x, #0x5237
      008746 7F               [ 1]   86 	clr	(x)
      008747 81               [ 4]   87 	ret
                                     88 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 100: void USART_Init(uint32_t BaudRate, USART_WordLength_TypeDef USART_WordLength,
                                     89 ;	-----------------------------------------
                                     90 ;	 function USART_Init
                                     91 ;	-----------------------------------------
      008748                         92 _USART_Init:
      008748 52 16            [ 2]   93 	sub	sp, #22
                                     94 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 118: USART->CR1 &= (uint8_t)(~(USART_CR1_PCEN | USART_CR1_PS | USART_CR1_M));
      00874A AE 52 34         [ 2]   95 	ldw	x, #0x5234
      00874D F6               [ 1]   96 	ld	a, (x)
      00874E A4 E9            [ 1]   97 	and	a, #0xe9
      008750 F7               [ 1]   98 	ld	(x), a
                                     99 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 121: USART->CR1 |= (uint8_t)((uint8_t)USART_WordLength | (uint8_t)USART_Parity);
      008751 AE 52 34         [ 2]  100 	ldw	x, #0x5234
      008754 F6               [ 1]  101 	ld	a, (x)
      008755 6B 16            [ 1]  102 	ld	(0x16, sp), a
      008757 7B 1D            [ 1]  103 	ld	a, (0x1d, sp)
      008759 1A 1F            [ 1]  104 	or	a, (0x1f, sp)
      00875B 1A 16            [ 1]  105 	or	a, (0x16, sp)
      00875D AE 52 34         [ 2]  106 	ldw	x, #0x5234
      008760 F7               [ 1]  107 	ld	(x), a
                                    108 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 124: USART->CR3 &= (uint8_t)(~USART_CR3_STOP);
      008761 AE 52 36         [ 2]  109 	ldw	x, #0x5236
      008764 F6               [ 1]  110 	ld	a, (x)
      008765 A4 CF            [ 1]  111 	and	a, #0xcf
      008767 F7               [ 1]  112 	ld	(x), a
                                    113 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 126: USART->CR3 |= (uint8_t)USART_StopBits;
      008768 AE 52 36         [ 2]  114 	ldw	x, #0x5236
      00876B F6               [ 1]  115 	ld	a, (x)
      00876C 1A 1E            [ 1]  116 	or	a, (0x1e, sp)
      00876E AE 52 36         [ 2]  117 	ldw	x, #0x5236
      008771 F7               [ 1]  118 	ld	(x), a
                                    119 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 129: USART->BRR1 &= (uint8_t)(~USART_BRR1_DIVM);
      008772 AE 52 32         [ 2]  120 	ldw	x, #0x5232
      008775 F6               [ 1]  121 	ld	a, (x)
      008776 AE 52 32         [ 2]  122 	ldw	x, #0x5232
      008779 7F               [ 1]  123 	clr	(x)
                                    124 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 131: USART->BRR2 &= (uint8_t)(~USART_BRR2_DIVM);
      00877A AE 52 33         [ 2]  125 	ldw	x, #0x5233
      00877D F6               [ 1]  126 	ld	a, (x)
      00877E A4 0F            [ 1]  127 	and	a, #0x0f
      008780 F7               [ 1]  128 	ld	(x), a
                                    129 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 133: USART->BRR2 &= (uint8_t)(~USART_BRR2_DIVF);
      008781 AE 52 33         [ 2]  130 	ldw	x, #0x5233
      008784 F6               [ 1]  131 	ld	a, (x)
      008785 A4 F0            [ 1]  132 	and	a, #0xf0
      008787 F7               [ 1]  133 	ld	(x), a
                                    134 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 135: BaudRate_Mantissa  = ((uint32_t)CLK_GetClockFreq() / BaudRate);
      008788 CD 81 16         [ 4]  135 	call	_CLK_GetClockFreq
      00878B 1F 14            [ 2]  136 	ldw	(0x14, sp), x
      00878D 1E 1B            [ 2]  137 	ldw	x, (0x1b, sp)
      00878F 89               [ 2]  138 	pushw	x
      008790 1E 1B            [ 2]  139 	ldw	x, (0x1b, sp)
      008792 89               [ 2]  140 	pushw	x
      008793 1E 18            [ 2]  141 	ldw	x, (0x18, sp)
      008795 89               [ 2]  142 	pushw	x
      008796 90 89            [ 2]  143 	pushw	y
      008798 CD 89 D2         [ 4]  144 	call	__divulong
      00879B 5B 08            [ 2]  145 	addw	sp, #8
      00879D 1F 03            [ 2]  146 	ldw	(0x03, sp), x
                                    147 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 137: USART->BRR2 = (uint8_t)((BaudRate_Mantissa >> (uint8_t)8) & (uint8_t)0xF0);
      00879F 93               [ 1]  148 	ldw	x, y
      0087A0 7B 03            [ 1]  149 	ld	a, (0x03, sp)
      0087A2 6B 11            [ 1]  150 	ld	(0x11, sp), a
      0087A4 0F 0E            [ 1]  151 	clr	(0x0e, sp)
      0087A6 7B 11            [ 1]  152 	ld	a, (0x11, sp)
      0087A8 A4 F0            [ 1]  153 	and	a, #0xf0
      0087AA 88               [ 1]  154 	push	a
      0087AB 0F 0D            [ 1]  155 	clr	(0x0d, sp)
      0087AD 0F 0C            [ 1]  156 	clr	(0x0c, sp)
      0087AF 0F 0B            [ 1]  157 	clr	(0x0b, sp)
      0087B1 84               [ 1]  158 	pop	a
      0087B2 AE 52 33         [ 2]  159 	ldw	x, #0x5233
      0087B5 F7               [ 1]  160 	ld	(x), a
                                    161 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 139: USART->BRR2 |= (uint8_t)(BaudRate_Mantissa & (uint8_t)0x0F);
      0087B6 AE 52 33         [ 2]  162 	ldw	x, #0x5233
      0087B9 F6               [ 1]  163 	ld	a, (x)
      0087BA 95               [ 1]  164 	ld	xh, a
      0087BB 7B 04            [ 1]  165 	ld	a, (0x04, sp)
      0087BD A4 0F            [ 1]  166 	and	a, #0x0f
      0087BF 6B 09            [ 1]  167 	ld	(0x09, sp), a
      0087C1 0F 08            [ 1]  168 	clr	(0x08, sp)
      0087C3 0F 07            [ 1]  169 	clr	(0x07, sp)
      0087C5 4F               [ 1]  170 	clr	a
      0087C6 7B 09            [ 1]  171 	ld	a, (0x09, sp)
      0087C8 6B 05            [ 1]  172 	ld	(0x05, sp), a
      0087CA 9E               [ 1]  173 	ld	a, xh
      0087CB 1A 05            [ 1]  174 	or	a, (0x05, sp)
      0087CD AE 52 33         [ 2]  175 	ldw	x, #0x5233
      0087D0 F7               [ 1]  176 	ld	(x), a
                                    177 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 141: USART->BRR1 = (uint8_t)(BaudRate_Mantissa >> (uint8_t)4);
      0087D1 1E 03            [ 2]  178 	ldw	x, (0x03, sp)
      0087D3 A6 04            [ 1]  179 	ld	a, #0x04
      0087D5 4D               [ 1]  180 	tnz	a
      0087D6 27 06            [ 1]  181 	jreq	00104$
      0087D8                        182 00103$:
      0087D8 90 54            [ 2]  183 	srlw	y
      0087DA 56               [ 2]  184 	rrcw	x
      0087DB 4A               [ 1]  185 	dec	a
      0087DC 26 FA            [ 1]  186 	jrne	00103$
      0087DE                        187 00104$:
      0087DE 9F               [ 1]  188 	ld	a, xl
      0087DF AE 52 32         [ 2]  189 	ldw	x, #0x5232
      0087E2 F7               [ 1]  190 	ld	(x), a
                                    191 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 144: USART->CR2 &= (uint8_t)~(USART_CR2_TEN | USART_CR2_REN);
      0087E3 AE 52 35         [ 2]  192 	ldw	x, #0x5235
      0087E6 F6               [ 1]  193 	ld	a, (x)
      0087E7 A4 F3            [ 1]  194 	and	a, #0xf3
      0087E9 F7               [ 1]  195 	ld	(x), a
                                    196 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 146: USART->CR2 |= (uint8_t)USART_Mode;
      0087EA AE 52 35         [ 2]  197 	ldw	x, #0x5235
      0087ED F6               [ 1]  198 	ld	a, (x)
      0087EE 1A 20            [ 1]  199 	or	a, (0x20, sp)
      0087F0 AE 52 35         [ 2]  200 	ldw	x, #0x5235
      0087F3 F7               [ 1]  201 	ld	(x), a
      0087F4 5B 16            [ 2]  202 	addw	sp, #22
      0087F6 81               [ 4]  203 	ret
                                    204 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 171: void USART_ClockInit(USART_Clock_TypeDef USART_Clock, USART_CPOL_TypeDef USART_CPOL,
                                    205 ;	-----------------------------------------
                                    206 ;	 function USART_ClockInit
                                    207 ;	-----------------------------------------
      0087F7                        208 _USART_ClockInit:
      0087F7 88               [ 1]  209 	push	a
                                    210 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 181: USART->CR3 &= (uint8_t)~(USART_CR3_CPOL | USART_CR3_CPHA | USART_CR3_LBCL);
      0087F8 AE 52 36         [ 2]  211 	ldw	x, #0x5236
      0087FB F6               [ 1]  212 	ld	a, (x)
      0087FC A4 F8            [ 1]  213 	and	a, #0xf8
      0087FE F7               [ 1]  214 	ld	(x), a
                                    215 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 183: USART->CR3 |= (uint8_t)((uint8_t)USART_CPOL | (uint8_t)USART_CPHA | (uint8_t)USART_LastBit);
      0087FF AE 52 36         [ 2]  216 	ldw	x, #0x5236
      008802 F6               [ 1]  217 	ld	a, (x)
      008803 6B 01            [ 1]  218 	ld	(0x01, sp), a
      008805 7B 05            [ 1]  219 	ld	a, (0x05, sp)
      008807 1A 06            [ 1]  220 	or	a, (0x06, sp)
      008809 1A 07            [ 1]  221 	or	a, (0x07, sp)
      00880B 1A 01            [ 1]  222 	or	a, (0x01, sp)
      00880D AE 52 36         [ 2]  223 	ldw	x, #0x5236
      008810 F7               [ 1]  224 	ld	(x), a
                                    225 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 185: if (USART_Clock != USART_Clock_Disable)
      008811 0D 04            [ 1]  226 	tnz	(0x04, sp)
      008813 27 09            [ 1]  227 	jreq	00102$
                                    228 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 187: USART->CR3 |= (uint8_t)(USART_CR3_CLKEN); /* Set the Clock Enable bit */
      008815 AE 52 36         [ 2]  229 	ldw	x, #0x5236
      008818 F6               [ 1]  230 	ld	a, (x)
      008819 AA 08            [ 1]  231 	or	a, #0x08
      00881B F7               [ 1]  232 	ld	(x), a
      00881C 20 07            [ 2]  233 	jra	00104$
      00881E                        234 00102$:
                                    235 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 191: USART->CR3 &= (uint8_t)(~USART_CR3_CLKEN); /* Clear the Clock Enable bit */
      00881E AE 52 36         [ 2]  236 	ldw	x, #0x5236
      008821 F6               [ 1]  237 	ld	a, (x)
      008822 A4 F7            [ 1]  238 	and	a, #0xf7
      008824 F7               [ 1]  239 	ld	(x), a
      008825                        240 00104$:
      008825 84               [ 1]  241 	pop	a
      008826 81               [ 4]  242 	ret
                                    243 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 201: void USART_Cmd(FunctionalState NewState)
                                    244 ;	-----------------------------------------
                                    245 ;	 function USART_Cmd
                                    246 ;	-----------------------------------------
      008827                        247 _USART_Cmd:
                                    248 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 205: if (NewState != DISABLE)
      008827 0D 03            [ 1]  249 	tnz	(0x03, sp)
      008829 27 09            [ 1]  250 	jreq	00102$
                                    251 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 207: USART->CR1 &= (uint8_t)(~USART_CR1_USARTD); /**< USART Enable */
      00882B AE 52 34         [ 2]  252 	ldw	x, #0x5234
      00882E F6               [ 1]  253 	ld	a, (x)
      00882F A4 DF            [ 1]  254 	and	a, #0xdf
      008831 F7               [ 1]  255 	ld	(x), a
      008832 20 07            [ 2]  256 	jra	00104$
      008834                        257 00102$:
                                    258 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 211: USART->CR1 |= USART_CR1_USARTD;  /**< USART Disable */
      008834 AE 52 34         [ 2]  259 	ldw	x, #0x5234
      008837 F6               [ 1]  260 	ld	a, (x)
      008838 AA 20            [ 1]  261 	or	a, #0x20
      00883A F7               [ 1]  262 	ld	(x), a
      00883B                        263 00104$:
      00883B 81               [ 4]  264 	ret
                                    265 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 229: void USART_ITConfig(USART_IT_TypeDef USART_IT, FunctionalState NewState)
                                    266 ;	-----------------------------------------
                                    267 ;	 function USART_ITConfig
                                    268 ;	-----------------------------------------
      00883C                        269 _USART_ITConfig:
      00883C 52 04            [ 2]  270 	sub	sp, #4
                                    271 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 236: uartreg = (uint8_t)((uint16_t)USART_IT >> (uint8_t)0x08);
      00883E 7B 07            [ 1]  272 	ld	a, (0x07, sp)
      008840 0F 02            [ 1]  273 	clr	(0x02, sp)
      008842 95               [ 1]  274 	ld	xh, a
                                    275 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 238: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
      008843 7B 08            [ 1]  276 	ld	a, (0x08, sp)
      008845 A4 0F            [ 1]  277 	and	a, #0x0f
      008847 97               [ 1]  278 	ld	xl, a
      008848 A6 01            [ 1]  279 	ld	a, #0x01
      00884A 6B 01            [ 1]  280 	ld	(0x01, sp), a
      00884C 9F               [ 1]  281 	ld	a, xl
      00884D 4D               [ 1]  282 	tnz	a
      00884E 27 05            [ 1]  283 	jreq	00125$
      008850                        284 00124$:
      008850 08 01            [ 1]  285 	sll	(0x01, sp)
      008852 4A               [ 1]  286 	dec	a
      008853 26 FB            [ 1]  287 	jrne	00124$
      008855                        288 00125$:
                                    289 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 243: if (uartreg == 0x01)
      008855 9E               [ 1]  290 	ld	a, xh
      008856 A1 01            [ 1]  291 	cp	a, #0x01
      008858 26 04            [ 1]  292 	jrne	00127$
      00885A A6 01            [ 1]  293 	ld	a, #0x01
      00885C 20 01            [ 2]  294 	jra	00128$
      00885E                        295 00127$:
      00885E 4F               [ 1]  296 	clr	a
      00885F                        297 00128$:
                                    298 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 240: if (NewState != DISABLE)
      00885F 0D 09            [ 1]  299 	tnz	(0x09, sp)
      008861 27 1B            [ 1]  300 	jreq	00108$
                                    301 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 243: if (uartreg == 0x01)
      008863 4D               [ 1]  302 	tnz	a
      008864 27 0C            [ 1]  303 	jreq	00102$
                                    304 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 245: USART->CR1 |= itpos;
      008866 AE 52 34         [ 2]  305 	ldw	x, #0x5234
      008869 F6               [ 1]  306 	ld	a, (x)
      00886A 1A 01            [ 1]  307 	or	a, (0x01, sp)
      00886C AE 52 34         [ 2]  308 	ldw	x, #0x5234
      00886F F7               [ 1]  309 	ld	(x), a
      008870 20 2C            [ 2]  310 	jra	00110$
      008872                        311 00102$:
                                    312 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 250: USART->CR2 |= itpos;
      008872 AE 52 35         [ 2]  313 	ldw	x, #0x5235
      008875 F6               [ 1]  314 	ld	a, (x)
      008876 1A 01            [ 1]  315 	or	a, (0x01, sp)
      008878 AE 52 35         [ 2]  316 	ldw	x, #0x5235
      00887B F7               [ 1]  317 	ld	(x), a
      00887C 20 20            [ 2]  318 	jra	00110$
      00887E                        319 00108$:
                                    320 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 258: USART->CR1 &= (uint8_t)(~itpos);
      00887E 88               [ 1]  321 	push	a
      00887F 7B 02            [ 1]  322 	ld	a, (0x02, sp)
      008881 43               [ 1]  323 	cpl	a
      008882 6B 05            [ 1]  324 	ld	(0x05, sp), a
      008884 84               [ 1]  325 	pop	a
                                    326 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 256: if (uartreg == 0x01)
      008885 4D               [ 1]  327 	tnz	a
      008886 27 0C            [ 1]  328 	jreq	00105$
                                    329 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 258: USART->CR1 &= (uint8_t)(~itpos);
      008888 AE 52 34         [ 2]  330 	ldw	x, #0x5234
      00888B F6               [ 1]  331 	ld	a, (x)
      00888C 14 04            [ 1]  332 	and	a, (0x04, sp)
      00888E AE 52 34         [ 2]  333 	ldw	x, #0x5234
      008891 F7               [ 1]  334 	ld	(x), a
      008892 20 0A            [ 2]  335 	jra	00110$
      008894                        336 00105$:
                                    337 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 263: USART->CR2 &= (uint8_t)(~itpos);
      008894 AE 52 35         [ 2]  338 	ldw	x, #0x5235
      008897 F6               [ 1]  339 	ld	a, (x)
      008898 14 04            [ 1]  340 	and	a, (0x04, sp)
      00889A AE 52 35         [ 2]  341 	ldw	x, #0x5235
      00889D F7               [ 1]  342 	ld	(x), a
      00889E                        343 00110$:
      00889E 5B 04            [ 2]  344 	addw	sp, #4
      0088A0 81               [ 4]  345 	ret
                                    346 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 275: uint8_t USART_ReceiveData8(void)
                                    347 ;	-----------------------------------------
                                    348 ;	 function USART_ReceiveData8
                                    349 ;	-----------------------------------------
      0088A1                        350 _USART_ReceiveData8:
                                    351 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 277: return USART->DR;
      0088A1 AE 52 31         [ 2]  352 	ldw	x, #0x5231
      0088A4 F6               [ 1]  353 	ld	a, (x)
      0088A5 81               [ 4]  354 	ret
                                    355 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 287: uint16_t USART_ReceiveData9(void)
                                    356 ;	-----------------------------------------
                                    357 ;	 function USART_ReceiveData9
                                    358 ;	-----------------------------------------
      0088A6                        359 _USART_ReceiveData9:
      0088A6 52 04            [ 2]  360 	sub	sp, #4
                                    361 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 291: temp = ((uint16_t)(((uint16_t)((uint16_t)USART->CR1 & (uint16_t)USART_CR1_R8)) << 1));
      0088A8 AE 52 34         [ 2]  362 	ldw	x, #0x5234
      0088AB F6               [ 1]  363 	ld	a, (x)
      0088AC 0F 03            [ 1]  364 	clr	(0x03, sp)
      0088AE A4 80            [ 1]  365 	and	a, #0x80
      0088B0 97               [ 1]  366 	ld	xl, a
      0088B1 4F               [ 1]  367 	clr	a
      0088B2 95               [ 1]  368 	ld	xh, a
      0088B3 58               [ 2]  369 	sllw	x
      0088B4 1F 01            [ 2]  370 	ldw	(0x01, sp), x
                                    371 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 292: return (uint16_t)( ((uint16_t)((uint16_t)USART->DR) | temp) & ((uint16_t)0x01FF));
      0088B6 AE 52 31         [ 2]  372 	ldw	x, #0x5231
      0088B9 F6               [ 1]  373 	ld	a, (x)
      0088BA 5F               [ 1]  374 	clrw	x
      0088BB 97               [ 1]  375 	ld	xl, a
      0088BC 1A 02            [ 1]  376 	or	a, (0x02, sp)
      0088BE 97               [ 1]  377 	ld	xl, a
      0088BF 9E               [ 1]  378 	ld	a, xh
      0088C0 1A 01            [ 1]  379 	or	a, (0x01, sp)
      0088C2 A4 01            [ 1]  380 	and	a, #0x01
      0088C4 95               [ 1]  381 	ld	xh, a
      0088C5 5B 04            [ 2]  382 	addw	sp, #4
      0088C7 81               [ 4]  383 	ret
                                    384 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 301: void USART_ReceiverWakeUpCmd(FunctionalState NewState)
                                    385 ;	-----------------------------------------
                                    386 ;	 function USART_ReceiverWakeUpCmd
                                    387 ;	-----------------------------------------
      0088C8                        388 _USART_ReceiverWakeUpCmd:
                                    389 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 305: if (NewState != DISABLE)
      0088C8 0D 03            [ 1]  390 	tnz	(0x03, sp)
      0088CA 27 09            [ 1]  391 	jreq	00102$
                                    392 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 308: USART->CR2 |= USART_CR2_RWU;
      0088CC AE 52 35         [ 2]  393 	ldw	x, #0x5235
      0088CF F6               [ 1]  394 	ld	a, (x)
      0088D0 AA 02            [ 1]  395 	or	a, #0x02
      0088D2 F7               [ 1]  396 	ld	(x), a
      0088D3 20 07            [ 2]  397 	jra	00104$
      0088D5                        398 00102$:
                                    399 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 313: USART->CR2 &= ((uint8_t)~USART_CR2_RWU);
      0088D5 AE 52 35         [ 2]  400 	ldw	x, #0x5235
      0088D8 F6               [ 1]  401 	ld	a, (x)
      0088D9 A4 FD            [ 1]  402 	and	a, #0xfd
      0088DB F7               [ 1]  403 	ld	(x), a
      0088DC                        404 00104$:
      0088DC 81               [ 4]  405 	ret
                                    406 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 322: void USART_SendBreak(void)
                                    407 ;	-----------------------------------------
                                    408 ;	 function USART_SendBreak
                                    409 ;	-----------------------------------------
      0088DD                        410 _USART_SendBreak:
                                    411 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 324: USART->CR2 |= USART_CR2_SBK;
      0088DD 72 10 52 35      [ 1]  412 	bset	0x5235, #0
      0088E1 81               [ 4]  413 	ret
                                    414 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 332: void USART_SendData8(uint8_t Data)
                                    415 ;	-----------------------------------------
                                    416 ;	 function USART_SendData8
                                    417 ;	-----------------------------------------
      0088E2                        418 _USART_SendData8:
                                    419 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 335: USART->DR = Data;
      0088E2 AE 52 31         [ 2]  420 	ldw	x, #0x5231
      0088E5 7B 03            [ 1]  421 	ld	a, (0x03, sp)
      0088E7 F7               [ 1]  422 	ld	(x), a
      0088E8 81               [ 4]  423 	ret
                                    424 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 344: void USART_SendData9(uint16_t Data)
                                    425 ;	-----------------------------------------
                                    426 ;	 function USART_SendData9
                                    427 ;	-----------------------------------------
      0088E9                        428 _USART_SendData9:
      0088E9 88               [ 1]  429 	push	a
                                    430 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 348: USART->CR1 &= ((uint8_t)~USART_CR1_T8);                    /* Clear the transmit data bit 8     */
      0088EA AE 52 34         [ 2]  431 	ldw	x, #0x5234
      0088ED F6               [ 1]  432 	ld	a, (x)
      0088EE A4 BF            [ 1]  433 	and	a, #0xbf
      0088F0 F7               [ 1]  434 	ld	(x), a
                                    435 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 349: USART->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & USART_CR1_T8); /* Write the transmit data bit [8]   */
      0088F1 AE 52 34         [ 2]  436 	ldw	x, #0x5234
      0088F4 F6               [ 1]  437 	ld	a, (x)
      0088F5 6B 01            [ 1]  438 	ld	(0x01, sp), a
      0088F7 1E 04            [ 2]  439 	ldw	x, (0x04, sp)
      0088F9 54               [ 2]  440 	srlw	x
      0088FA 54               [ 2]  441 	srlw	x
      0088FB 9F               [ 1]  442 	ld	a, xl
      0088FC A4 40            [ 1]  443 	and	a, #0x40
      0088FE 1A 01            [ 1]  444 	or	a, (0x01, sp)
      008900 AE 52 34         [ 2]  445 	ldw	x, #0x5234
      008903 F7               [ 1]  446 	ld	(x), a
                                    447 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 350: USART->DR   = (uint8_t)(Data);                             /* Write the transmit data bit [0:7] */
      008904 7B 05            [ 1]  448 	ld	a, (0x05, sp)
      008906 AE 52 31         [ 2]  449 	ldw	x, #0x5231
      008909 F7               [ 1]  450 	ld	(x), a
      00890A 84               [ 1]  451 	pop	a
      00890B 81               [ 4]  452 	ret
                                    453 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 360: void USART_SetAddress(uint8_t Address)
                                    454 ;	-----------------------------------------
                                    455 ;	 function USART_SetAddress
                                    456 ;	-----------------------------------------
      00890C                        457 _USART_SetAddress:
                                    458 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 366: USART->CR4 &= ((uint8_t)~USART_CR4_ADD);
      00890C AE 52 37         [ 2]  459 	ldw	x, #0x5237
      00890F F6               [ 1]  460 	ld	a, (x)
      008910 A4 F0            [ 1]  461 	and	a, #0xf0
      008912 F7               [ 1]  462 	ld	(x), a
                                    463 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 368: USART->CR4 |= Address;
      008913 AE 52 37         [ 2]  464 	ldw	x, #0x5237
      008916 F6               [ 1]  465 	ld	a, (x)
      008917 1A 03            [ 1]  466 	or	a, (0x03, sp)
      008919 AE 52 37         [ 2]  467 	ldw	x, #0x5237
      00891C F7               [ 1]  468 	ld	(x), a
      00891D 81               [ 4]  469 	ret
                                    470 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 379: void USART_WakeUpConfig(USART_WakeUp_TypeDef USART_WakeUp)
                                    471 ;	-----------------------------------------
                                    472 ;	 function USART_WakeUpConfig
                                    473 ;	-----------------------------------------
      00891E                        474 _USART_WakeUpConfig:
                                    475 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 383: USART->CR1 &= ((uint8_t)~USART_CR1_WAKE);
      00891E AE 52 34         [ 2]  476 	ldw	x, #0x5234
      008921 F6               [ 1]  477 	ld	a, (x)
      008922 A4 F7            [ 1]  478 	and	a, #0xf7
      008924 F7               [ 1]  479 	ld	(x), a
                                    480 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 384: USART->CR1 |= (uint8_t)USART_WakeUp;
      008925 AE 52 34         [ 2]  481 	ldw	x, #0x5234
      008928 F6               [ 1]  482 	ld	a, (x)
      008929 1A 03            [ 1]  483 	or	a, (0x03, sp)
      00892B AE 52 34         [ 2]  484 	ldw	x, #0x5234
      00892E F7               [ 1]  485 	ld	(x), a
      00892F 81               [ 4]  486 	ret
                                    487 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 400: FlagStatus USART_GetFlagStatus(USART_FLAG_TypeDef USART_FLAG)
                                    488 ;	-----------------------------------------
                                    489 ;	 function USART_GetFlagStatus
                                    490 ;	-----------------------------------------
      008930                        491 _USART_GetFlagStatus:
      008930 88               [ 1]  492 	push	a
                                    493 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 409: if ((USART->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
      008931 7B 05            [ 1]  494 	ld	a, (0x05, sp)
      008933 6B 01            [ 1]  495 	ld	(0x01, sp), a
                                    496 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 407: if (USART_FLAG == USART_FLAG_SBK)
      008935 1E 04            [ 2]  497 	ldw	x, (0x04, sp)
      008937 A3 01 01         [ 2]  498 	cpw	x, #0x0101
      00893A 26 10            [ 1]  499 	jrne	00108$
                                    500 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 409: if ((USART->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
      00893C AE 52 35         [ 2]  501 	ldw	x, #0x5235
      00893F F6               [ 1]  502 	ld	a, (x)
      008940 14 01            [ 1]  503 	and	a, (0x01, sp)
      008942 4D               [ 1]  504 	tnz	a
      008943 27 04            [ 1]  505 	jreq	00102$
                                    506 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 412: status = SET;
      008945 A6 01            [ 1]  507 	ld	a, #0x01
      008947 20 11            [ 2]  508 	jra	00109$
      008949                        509 00102$:
                                    510 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 417: status = RESET;
      008949 4F               [ 1]  511 	clr	a
      00894A 20 0E            [ 2]  512 	jra	00109$
      00894C                        513 00108$:
                                    514 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 422: if ((USART->SR & (uint8_t)USART_FLAG) != (uint8_t)0x00)
      00894C AE 52 30         [ 2]  515 	ldw	x, #0x5230
      00894F F6               [ 1]  516 	ld	a, (x)
      008950 14 01            [ 1]  517 	and	a, (0x01, sp)
      008952 4D               [ 1]  518 	tnz	a
      008953 27 04            [ 1]  519 	jreq	00105$
                                    520 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 425: status = SET;
      008955 A6 01            [ 1]  521 	ld	a, #0x01
      008957 20 01            [ 2]  522 	jra	00109$
      008959                        523 00105$:
                                    524 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 430: status = RESET;
      008959 4F               [ 1]  525 	clr	a
      00895A                        526 00109$:
                                    527 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 434: return status;
      00895A 5B 01            [ 2]  528 	addw	sp, #1
      00895C 81               [ 4]  529 	ret
                                    530 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 454: void USART_ClearFlag(void)
                                    531 ;	-----------------------------------------
                                    532 ;	 function USART_ClearFlag
                                    533 ;	-----------------------------------------
      00895D                        534 _USART_ClearFlag:
                                    535 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 457: USART->SR = (uint8_t)~(USART_SR_RXNE);
      00895D AE 52 30         [ 2]  536 	ldw	x, #0x5230
      008960 A6 DF            [ 1]  537 	ld	a, #0xdf
      008962 F7               [ 1]  538 	ld	(x), a
      008963 81               [ 4]  539 	ret
                                    540 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 472: ITStatus USART_GetITStatus(USART_IT_TypeDef USART_IT)
                                    541 ;	-----------------------------------------
                                    542 ;	 function USART_GetITStatus
                                    543 ;	-----------------------------------------
      008964                        544 _USART_GetITStatus:
      008964 52 04            [ 2]  545 	sub	sp, #4
                                    546 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 484: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
      008966 7B 08            [ 1]  547 	ld	a, (0x08, sp)
      008968 95               [ 1]  548 	ld	xh, a
      008969 A4 0F            [ 1]  549 	and	a, #0x0f
      00896B 97               [ 1]  550 	ld	xl, a
      00896C A6 01            [ 1]  551 	ld	a, #0x01
      00896E 6B 03            [ 1]  552 	ld	(0x03, sp), a
      008970 9F               [ 1]  553 	ld	a, xl
      008971 4D               [ 1]  554 	tnz	a
      008972 27 05            [ 1]  555 	jreq	00135$
      008974                        556 00134$:
      008974 08 03            [ 1]  557 	sll	(0x03, sp)
      008976 4A               [ 1]  558 	dec	a
      008977 26 FB            [ 1]  559 	jrne	00134$
      008979                        560 00135$:
                                    561 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 486: itmask1 = (uint8_t)((uint8_t)USART_IT >> (uint8_t)4);
      008979 02               [ 1]  562 	rlwa	x
      00897A 4E               [ 1]  563 	swap	a
      00897B A4 0F            [ 1]  564 	and	a, #0x0f
      00897D 01               [ 1]  565 	rrwa	x
                                    566 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 488: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      00897E A6 01            [ 1]  567 	ld	a, #0x01
      008980 6B 02            [ 1]  568 	ld	(0x02, sp), a
      008982 9E               [ 1]  569 	ld	a, xh
      008983 4D               [ 1]  570 	tnz	a
      008984 27 05            [ 1]  571 	jreq	00137$
      008986                        572 00136$:
      008986 08 02            [ 1]  573 	sll	(0x02, sp)
      008988 4A               [ 1]  574 	dec	a
      008989 26 FB            [ 1]  575 	jrne	00136$
      00898B                        576 00137$:
                                    577 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 492: if (USART_IT == USART_IT_PE)
      00898B 1E 07            [ 2]  578 	ldw	x, (0x07, sp)
      00898D A3 01 00         [ 2]  579 	cpw	x, #0x0100
      008990 26 1C            [ 1]  580 	jrne	00110$
                                    581 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 495: enablestatus = (uint8_t)((uint8_t)USART->CR1 & itmask2);
      008992 AE 52 34         [ 2]  582 	ldw	x, #0x5234
      008995 F6               [ 1]  583 	ld	a, (x)
      008996 14 02            [ 1]  584 	and	a, (0x02, sp)
      008998 6B 04            [ 1]  585 	ld	(0x04, sp), a
                                    586 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 498: if (((USART->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00899A AE 52 30         [ 2]  587 	ldw	x, #0x5230
      00899D F6               [ 1]  588 	ld	a, (x)
      00899E 14 03            [ 1]  589 	and	a, (0x03, sp)
      0089A0 4D               [ 1]  590 	tnz	a
      0089A1 27 08            [ 1]  591 	jreq	00102$
      0089A3 0D 04            [ 1]  592 	tnz	(0x04, sp)
      0089A5 27 04            [ 1]  593 	jreq	00102$
                                    594 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 501: pendingbitstatus = SET;
      0089A7 A6 01            [ 1]  595 	ld	a, #0x01
      0089A9 20 1D            [ 2]  596 	jra	00111$
      0089AB                        597 00102$:
                                    598 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 506: pendingbitstatus = RESET;
      0089AB 4F               [ 1]  599 	clr	a
      0089AC 20 1A            [ 2]  600 	jra	00111$
      0089AE                        601 00110$:
                                    602 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 512: enablestatus = (uint8_t)((uint8_t)USART->CR2 & itmask2);
      0089AE AE 52 35         [ 2]  603 	ldw	x, #0x5235
      0089B1 F6               [ 1]  604 	ld	a, (x)
      0089B2 14 02            [ 1]  605 	and	a, (0x02, sp)
      0089B4 6B 01            [ 1]  606 	ld	(0x01, sp), a
                                    607 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 514: if (((USART->SR & itpos) != (uint8_t)0x00) && enablestatus)
      0089B6 AE 52 30         [ 2]  608 	ldw	x, #0x5230
      0089B9 F6               [ 1]  609 	ld	a, (x)
      0089BA 14 03            [ 1]  610 	and	a, (0x03, sp)
      0089BC 4D               [ 1]  611 	tnz	a
      0089BD 27 08            [ 1]  612 	jreq	00106$
      0089BF 0D 01            [ 1]  613 	tnz	(0x01, sp)
      0089C1 27 04            [ 1]  614 	jreq	00106$
                                    615 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 517: pendingbitstatus = SET;
      0089C3 A6 01            [ 1]  616 	ld	a, #0x01
      0089C5 20 01            [ 2]  617 	jra	00111$
      0089C7                        618 00106$:
                                    619 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 522: pendingbitstatus = RESET;
      0089C7 4F               [ 1]  620 	clr	a
      0089C8                        621 00111$:
                                    622 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 527: return  pendingbitstatus;
      0089C8 5B 04            [ 2]  623 	addw	sp, #4
      0089CA 81               [ 4]  624 	ret
                                    625 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 546: void USART_ClearITPendingBit(void)
                                    626 ;	-----------------------------------------
                                    627 ;	 function USART_ClearITPendingBit
                                    628 ;	-----------------------------------------
      0089CB                        629 _USART_ClearITPendingBit:
                                    630 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_usart.c: 549: USART->SR = (uint8_t)~(USART_SR_RXNE);
      0089CB AE 52 30         [ 2]  631 	ldw	x, #0x5230
      0089CE A6 DF            [ 1]  632 	ld	a, #0xdf
      0089D0 F7               [ 1]  633 	ld	(x), a
      0089D1 81               [ 4]  634 	ret
                                    635 	.area CODE
                                    636 	.area INITIALIZER
                                    637 	.area CABS (ABS)
