                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Sep 26 2015) (Mac OS X x86_64)
                                      4 ; This file was generated Tue Oct 13 14:47:16 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8l10x_spi
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _SPI_DeInit
                                     13 	.globl _SPI_Init
                                     14 	.globl _SPI_Cmd
                                     15 	.globl _SPI_ITConfig
                                     16 	.globl _SPI_SendData
                                     17 	.globl _SPI_ReceiveData
                                     18 	.globl _SPI_NSSInternalSoftwareCmd
                                     19 	.globl _SPI_BiDirectionalLineConfig
                                     20 	.globl _SPI_GetFlagStatus
                                     21 	.globl _SPI_ClearFlag
                                     22 	.globl _SPI_GetITStatus
                                     23 	.globl _SPI_ClearITPendingBit
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DATA
                                     28 ;--------------------------------------------------------
                                     29 ; ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area INITIALIZED
                                     32 ;--------------------------------------------------------
                                     33 ; absolute external ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DABS (ABS)
                                     36 ;--------------------------------------------------------
                                     37 ; global & static initialisations
                                     38 ;--------------------------------------------------------
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area GSINIT
                                     43 ;--------------------------------------------------------
                                     44 ; Home
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area HOME
                                     48 ;--------------------------------------------------------
                                     49 ; code
                                     50 ;--------------------------------------------------------
                                     51 	.area CODE
                                     52 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 55: void SPI_DeInit(void)
                                     53 ;	-----------------------------------------
                                     54 ;	 function SPI_DeInit
                                     55 ;	-----------------------------------------
      008603                         56 _SPI_DeInit:
                                     57 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 57: SPI->CR1 = SPI_CR1_RESET_VALUE;
      008603 AE 52 00         [ 2]   58 	ldw	x, #0x5200
      008606 7F               [ 1]   59 	clr	(x)
                                     60 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 58: SPI->CR2 = SPI_CR2_RESET_VALUE;
      008607 AE 52 01         [ 2]   61 	ldw	x, #0x5201
      00860A 7F               [ 1]   62 	clr	(x)
                                     63 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 59: SPI->ICR = SPI_ICR_RESET_VALUE;
      00860B AE 52 02         [ 2]   64 	ldw	x, #0x5202
      00860E 7F               [ 1]   65 	clr	(x)
                                     66 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 60: SPI->SR = SPI_SR_RESET_VALUE;
      00860F AE 52 03         [ 2]   67 	ldw	x, #0x5203
      008612 A6 02            [ 1]   68 	ld	a, #0x02
      008614 F7               [ 1]   69 	ld	(x), a
      008615 81               [ 4]   70 	ret
                                     71 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 103: void SPI_Init(SPI_FirstBit_TypeDef SPI_FirstBit, SPI_BaudRatePrescaler_TypeDef SPI_BaudRatePrescaler,
                                     72 ;	-----------------------------------------
                                     73 ;	 function SPI_Init
                                     74 ;	-----------------------------------------
      008616                         75 _SPI_Init:
                                     76 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 119: (uint8_t)(SPI_BaudRatePrescaler) |
      008616 7B 03            [ 1]   77 	ld	a, (0x03, sp)
      008618 1A 04            [ 1]   78 	or	a, (0x04, sp)
                                     79 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 120: (uint8_t)(SPI_CPOL) |
      00861A 1A 06            [ 1]   80 	or	a, (0x06, sp)
                                     81 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 121: (uint8_t)(SPI_CPHA));
      00861C 1A 07            [ 1]   82 	or	a, (0x07, sp)
      00861E AE 52 00         [ 2]   83 	ldw	x, #0x5200
      008621 F7               [ 1]   84 	ld	(x), a
                                     85 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 124: SPI->CR2 = (uint8_t)((uint8_t)(SPI_DirectionMode) | (uint8_t)(SPI_NSS));
      008622 7B 08            [ 1]   86 	ld	a, (0x08, sp)
      008624 1A 09            [ 1]   87 	or	a, (0x09, sp)
      008626 AE 52 01         [ 2]   88 	ldw	x, #0x5201
      008629 F7               [ 1]   89 	ld	(x), a
                                     90 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 126: if (SPI_Mode == SPI_Mode_Master)
      00862A 7B 05            [ 1]   91 	ld	a, (0x05, sp)
      00862C A1 04            [ 1]   92 	cp	a, #0x04
      00862E 26 09            [ 1]   93 	jrne	00102$
                                     94 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 128: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
      008630 AE 52 01         [ 2]   95 	ldw	x, #0x5201
      008633 F6               [ 1]   96 	ld	a, (x)
      008634 AA 01            [ 1]   97 	or	a, #0x01
      008636 F7               [ 1]   98 	ld	(x), a
      008637 20 04            [ 2]   99 	jra	00103$
      008639                        100 00102$:
                                    101 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 132: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
      008639 72 11 52 01      [ 1]  102 	bres	0x5201, #0
      00863D                        103 00103$:
                                    104 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 136: SPI->CR1 |= (uint8_t)(SPI_Mode);
      00863D AE 52 00         [ 2]  105 	ldw	x, #0x5200
      008640 F6               [ 1]  106 	ld	a, (x)
      008641 1A 05            [ 1]  107 	or	a, (0x05, sp)
      008643 AE 52 00         [ 2]  108 	ldw	x, #0x5200
      008646 F7               [ 1]  109 	ld	(x), a
      008647 81               [ 4]  110 	ret
                                    111 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 145: void SPI_Cmd(FunctionalState NewState)
                                    112 ;	-----------------------------------------
                                    113 ;	 function SPI_Cmd
                                    114 ;	-----------------------------------------
      008648                        115 _SPI_Cmd:
                                    116 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 151: if (NewState != DISABLE)
      008648 0D 03            [ 1]  117 	tnz	(0x03, sp)
      00864A 27 09            [ 1]  118 	jreq	00102$
                                    119 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 153: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral */
      00864C AE 52 00         [ 2]  120 	ldw	x, #0x5200
      00864F F6               [ 1]  121 	ld	a, (x)
      008650 AA 40            [ 1]  122 	or	a, #0x40
      008652 F7               [ 1]  123 	ld	(x), a
      008653 20 07            [ 2]  124 	jra	00104$
      008655                        125 00102$:
                                    126 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 157: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral */
      008655 AE 52 00         [ 2]  127 	ldw	x, #0x5200
      008658 F6               [ 1]  128 	ld	a, (x)
      008659 A4 BF            [ 1]  129 	and	a, #0xbf
      00865B F7               [ 1]  130 	ld	(x), a
      00865C                        131 00104$:
      00865C 81               [ 4]  132 	ret
                                    133 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 174: void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
                                    134 ;	-----------------------------------------
                                    135 ;	 function SPI_ITConfig
                                    136 ;	-----------------------------------------
      00865D                        137 _SPI_ITConfig:
      00865D 52 02            [ 2]  138 	sub	sp, #2
                                    139 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 182: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
      00865F 7B 05            [ 1]  140 	ld	a, (0x05, sp)
      008661 A4 0F            [ 1]  141 	and	a, #0x0f
      008663 95               [ 1]  142 	ld	xh, a
      008664 A6 01            [ 1]  143 	ld	a, #0x01
      008666 6B 01            [ 1]  144 	ld	(0x01, sp), a
      008668 9E               [ 1]  145 	ld	a, xh
      008669 4D               [ 1]  146 	tnz	a
      00866A 27 05            [ 1]  147 	jreq	00111$
      00866C                        148 00110$:
      00866C 08 01            [ 1]  149 	sll	(0x01, sp)
      00866E 4A               [ 1]  150 	dec	a
      00866F 26 FB            [ 1]  151 	jrne	00110$
      008671                        152 00111$:
                                    153 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 184: if (NewState != DISABLE)
      008671 0D 06            [ 1]  154 	tnz	(0x06, sp)
      008673 27 0C            [ 1]  155 	jreq	00102$
                                    156 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 186: SPI->ICR |= itpos; /* Enable interrupt*/
      008675 AE 52 02         [ 2]  157 	ldw	x, #0x5202
      008678 F6               [ 1]  158 	ld	a, (x)
      008679 1A 01            [ 1]  159 	or	a, (0x01, sp)
      00867B AE 52 02         [ 2]  160 	ldw	x, #0x5202
      00867E F7               [ 1]  161 	ld	(x), a
      00867F 20 0F            [ 2]  162 	jra	00104$
      008681                        163 00102$:
                                    164 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 190: SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
      008681 AE 52 02         [ 2]  165 	ldw	x, #0x5202
      008684 F6               [ 1]  166 	ld	a, (x)
      008685 6B 02            [ 1]  167 	ld	(0x02, sp), a
      008687 7B 01            [ 1]  168 	ld	a, (0x01, sp)
      008689 43               [ 1]  169 	cpl	a
      00868A 14 02            [ 1]  170 	and	a, (0x02, sp)
      00868C AE 52 02         [ 2]  171 	ldw	x, #0x5202
      00868F F7               [ 1]  172 	ld	(x), a
      008690                        173 00104$:
      008690 5B 02            [ 2]  174 	addw	sp, #2
      008692 81               [ 4]  175 	ret
                                    176 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 199: void SPI_SendData(uint8_t Data)
                                    177 ;	-----------------------------------------
                                    178 ;	 function SPI_SendData
                                    179 ;	-----------------------------------------
      008693                        180 _SPI_SendData:
                                    181 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 201: SPI->DR = Data; /* Write in the DR register the data to be sent*/
      008693 AE 52 04         [ 2]  182 	ldw	x, #0x5204
      008696 7B 03            [ 1]  183 	ld	a, (0x03, sp)
      008698 F7               [ 1]  184 	ld	(x), a
      008699 81               [ 4]  185 	ret
                                    186 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 209: uint8_t SPI_ReceiveData(void)
                                    187 ;	-----------------------------------------
                                    188 ;	 function SPI_ReceiveData
                                    189 ;	-----------------------------------------
      00869A                        190 _SPI_ReceiveData:
                                    191 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 211: return ((uint8_t)SPI->DR); /* Return the data in the DR register */
      00869A AE 52 04         [ 2]  192 	ldw	x, #0x5204
      00869D F6               [ 1]  193 	ld	a, (x)
      00869E 81               [ 4]  194 	ret
                                    195 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 221: void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
                                    196 ;	-----------------------------------------
                                    197 ;	 function SPI_NSSInternalSoftwareCmd
                                    198 ;	-----------------------------------------
      00869F                        199 _SPI_NSSInternalSoftwareCmd:
                                    200 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 227: if (NewState != DISABLE)
      00869F 0D 03            [ 1]  201 	tnz	(0x03, sp)
      0086A1 27 09            [ 1]  202 	jreq	00102$
                                    203 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 229: SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software */
      0086A3 AE 52 01         [ 2]  204 	ldw	x, #0x5201
      0086A6 F6               [ 1]  205 	ld	a, (x)
      0086A7 AA 01            [ 1]  206 	or	a, #0x01
      0086A9 F7               [ 1]  207 	ld	(x), a
      0086AA 20 04            [ 2]  208 	jra	00104$
      0086AC                        209 00102$:
                                    210 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 233: SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software */
      0086AC 72 11 52 01      [ 1]  211 	bres	0x5201, #0
      0086B0                        212 00104$:
      0086B0 81               [ 4]  213 	ret
                                    214 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 246: void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
                                    215 ;	-----------------------------------------
                                    216 ;	 function SPI_BiDirectionalLineConfig
                                    217 ;	-----------------------------------------
      0086B1                        218 _SPI_BiDirectionalLineConfig:
                                    219 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 251: if (SPI_Direction != SPI_Direction_Rx)
      0086B1 0D 03            [ 1]  220 	tnz	(0x03, sp)
      0086B3 27 09            [ 1]  221 	jreq	00102$
                                    222 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 253: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
      0086B5 AE 52 01         [ 2]  223 	ldw	x, #0x5201
      0086B8 F6               [ 1]  224 	ld	a, (x)
      0086B9 AA 40            [ 1]  225 	or	a, #0x40
      0086BB F7               [ 1]  226 	ld	(x), a
      0086BC 20 07            [ 2]  227 	jra	00104$
      0086BE                        228 00102$:
                                    229 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 257: SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
      0086BE AE 52 01         [ 2]  230 	ldw	x, #0x5201
      0086C1 F6               [ 1]  231 	ld	a, (x)
      0086C2 A4 BF            [ 1]  232 	and	a, #0xbf
      0086C4 F7               [ 1]  233 	ld	(x), a
      0086C5                        234 00104$:
      0086C5 81               [ 4]  235 	ret
                                    236 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 275: FlagStatus SPI_GetFlagStatus(SPI_FLAG_TypeDef SPI_FLAG)
                                    237 ;	-----------------------------------------
                                    238 ;	 function SPI_GetFlagStatus
                                    239 ;	-----------------------------------------
      0086C6                        240 _SPI_GetFlagStatus:
                                    241 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 282: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
      0086C6 AE 52 03         [ 2]  242 	ldw	x, #0x5203
      0086C9 F6               [ 1]  243 	ld	a, (x)
      0086CA 14 03            [ 1]  244 	and	a, (0x03, sp)
      0086CC 4D               [ 1]  245 	tnz	a
      0086CD 27 04            [ 1]  246 	jreq	00102$
                                    247 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 284: status = SET; /* SPI_FLAG is set */
      0086CF A6 01            [ 1]  248 	ld	a, #0x01
      0086D1 20 01            [ 2]  249 	jra	00103$
      0086D3                        250 00102$:
                                    251 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 288: status = RESET; /* SPI_FLAG is reset*/
      0086D3 4F               [ 1]  252 	clr	a
      0086D4                        253 00103$:
                                    254 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 292: return status;
      0086D4 81               [ 4]  255 	ret
                                    256 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 306: void SPI_ClearFlag(void)
                                    257 ;	-----------------------------------------
                                    258 ;	 function SPI_ClearFlag
                                    259 ;	-----------------------------------------
      0086D5                        260 _SPI_ClearFlag:
                                    261 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 309: SPI->SR = (uint8_t)(~SPI_SR_WKUP);
      0086D5 AE 52 03         [ 2]  262 	ldw	x, #0x5203
      0086D8 A6 F7            [ 1]  263 	ld	a, #0xf7
      0086DA F7               [ 1]  264 	ld	(x), a
      0086DB 81               [ 4]  265 	ret
                                    266 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 323: ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
                                    267 ;	-----------------------------------------
                                    268 ;	 function SPI_GetITStatus
                                    269 ;	-----------------------------------------
      0086DC                        270 _SPI_GetITStatus:
      0086DC 52 03            [ 2]  271 	sub	sp, #3
                                    272 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 332: itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
      0086DE 7B 06            [ 1]  273 	ld	a, (0x06, sp)
      0086E0 A4 0F            [ 1]  274 	and	a, #0x0f
      0086E2 95               [ 1]  275 	ld	xh, a
      0086E3 A6 01            [ 1]  276 	ld	a, #0x01
      0086E5 6B 03            [ 1]  277 	ld	(0x03, sp), a
      0086E7 9E               [ 1]  278 	ld	a, xh
      0086E8 4D               [ 1]  279 	tnz	a
      0086E9 27 05            [ 1]  280 	jreq	00116$
      0086EB                        281 00115$:
      0086EB 08 03            [ 1]  282 	sll	(0x03, sp)
      0086ED 4A               [ 1]  283 	dec	a
      0086EE 26 FB            [ 1]  284 	jrne	00115$
      0086F0                        285 00116$:
                                    286 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 335: itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
      0086F0 7B 06            [ 1]  287 	ld	a, (0x06, sp)
      0086F2 4E               [ 1]  288 	swap	a
      0086F3 A4 0F            [ 1]  289 	and	a, #0x0f
      0086F5 95               [ 1]  290 	ld	xh, a
                                    291 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 337: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      0086F6 A6 01            [ 1]  292 	ld	a, #0x01
      0086F8 6B 02            [ 1]  293 	ld	(0x02, sp), a
      0086FA 9E               [ 1]  294 	ld	a, xh
      0086FB 4D               [ 1]  295 	tnz	a
      0086FC 27 05            [ 1]  296 	jreq	00118$
      0086FE                        297 00117$:
      0086FE 08 02            [ 1]  298 	sll	(0x02, sp)
      008700 4A               [ 1]  299 	dec	a
      008701 26 FB            [ 1]  300 	jrne	00117$
      008703                        301 00118$:
                                    302 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 339: enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
      008703 AE 52 03         [ 2]  303 	ldw	x, #0x5203
      008706 F6               [ 1]  304 	ld	a, (x)
      008707 14 02            [ 1]  305 	and	a, (0x02, sp)
      008709 6B 01            [ 1]  306 	ld	(0x01, sp), a
                                    307 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 341: if (((SPI->ICR & itpos) != (uint8_t)RESET) && enablestatus)
      00870B AE 52 02         [ 2]  308 	ldw	x, #0x5202
      00870E F6               [ 1]  309 	ld	a, (x)
      00870F 14 03            [ 1]  310 	and	a, (0x03, sp)
      008711 4D               [ 1]  311 	tnz	a
      008712 27 08            [ 1]  312 	jreq	00102$
      008714 0D 01            [ 1]  313 	tnz	(0x01, sp)
      008716 27 04            [ 1]  314 	jreq	00102$
                                    315 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 344: pendingbitstatus = SET;
      008718 A6 01            [ 1]  316 	ld	a, #0x01
      00871A 20 01            [ 2]  317 	jra	00103$
      00871C                        318 00102$:
                                    319 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 349: pendingbitstatus = RESET;
      00871C 4F               [ 1]  320 	clr	a
      00871D                        321 00103$:
                                    322 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 352: return  pendingbitstatus;
      00871D 5B 03            [ 2]  323 	addw	sp, #3
      00871F 81               [ 4]  324 	ret
                                    325 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 367: void SPI_ClearITPendingBit(void)
                                    326 ;	-----------------------------------------
                                    327 ;	 function SPI_ClearITPendingBit
                                    328 ;	-----------------------------------------
      008720                        329 _SPI_ClearITPendingBit:
                                    330 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_spi.c: 370: SPI->SR = (uint8_t)(~SPI_SR_WKUP);
      008720 AE 52 03         [ 2]  331 	ldw	x, #0x5203
      008723 A6 F7            [ 1]  332 	ld	a, #0xf7
      008725 F7               [ 1]  333 	ld	(x), a
      008726 81               [ 4]  334 	ret
                                    335 	.area CODE
                                    336 	.area INITIALIZER
                                    337 	.area CABS (ABS)
