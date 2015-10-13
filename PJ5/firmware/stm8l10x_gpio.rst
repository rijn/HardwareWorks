                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Sep 26 2015) (Mac OS X x86_64)
                                      4 ; This file was generated Tue Oct 13 14:47:14 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8l10x_gpio
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _GPIO_DeInit
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_Write
                                     15 	.globl _GPIO_WriteBit
                                     16 	.globl _GPIO_SetBits
                                     17 	.globl _GPIO_ResetBits
                                     18 	.globl _GPIO_ToggleBits
                                     19 	.globl _GPIO_ReadInputData
                                     20 	.globl _GPIO_ReadOutputData
                                     21 	.globl _GPIO_ReadInputDataBit
                                     22 	.globl _GPIO_ReadOutputDataBit
                                     23 	.globl _GPIO_ExternalPullUpConfig
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
                                     52 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 57: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     53 ;	-----------------------------------------
                                     54 ;	 function GPIO_DeInit
                                     55 ;	-----------------------------------------
      008145                         56 _GPIO_DeInit:
                                     57 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 59: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      008145 16 03            [ 2]   58 	ldw	y, (0x03, sp)
      008147 90 7F            [ 1]   59 	clr	(y)
                                     60 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 60: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      008149 93               [ 1]   61 	ldw	x, y
      00814A 5C               [ 2]   62 	incw	x
      00814B 5C               [ 2]   63 	incw	x
      00814C 7F               [ 1]   64 	clr	(x)
                                     65 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 61: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      00814D 93               [ 1]   66 	ldw	x, y
      00814E 1C 00 03         [ 2]   67 	addw	x, #0x0003
      008151 7F               [ 1]   68 	clr	(x)
                                     69 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 62: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      008152 93               [ 1]   70 	ldw	x, y
      008153 1C 00 04         [ 2]   71 	addw	x, #0x0004
      008156 7F               [ 1]   72 	clr	(x)
      008157 81               [ 4]   73 	ret
                                     74 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 98: void GPIO_Init(GPIO_TypeDef* GPIOx,
                                     75 ;	-----------------------------------------
                                     76 ;	 function GPIO_Init
                                     77 ;	-----------------------------------------
      008158                         78 _GPIO_Init:
      008158 52 03            [ 2]   79 	sub	sp, #3
                                     80 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 117: GPIOx->ODR |= GPIO_Pin;
      00815A 16 06            [ 2]   81 	ldw	y, (0x06, sp)
      00815C 17 02            [ 2]   82 	ldw	(0x02, sp), y
                                     83 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 120: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      00815E 7B 08            [ 1]   84 	ld	a, (0x08, sp)
      008160 43               [ 1]   85 	cpl	a
      008161 6B 01            [ 1]   86 	ld	(0x01, sp), a
                                     87 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 123: GPIOx->DDR |= GPIO_Pin;
      008163 1E 02            [ 2]   88 	ldw	x, (0x02, sp)
      008165 5C               [ 2]   89 	incw	x
      008166 5C               [ 2]   90 	incw	x
                                     91 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 113: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008167 7B 09            [ 1]   92 	ld	a, (0x09, sp)
      008169 48               [ 1]   93 	sll	a
      00816A 24 22            [ 1]   94 	jrnc	00105$
                                     95 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 115: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      00816C 7B 09            [ 1]   96 	ld	a, (0x09, sp)
      00816E A5 10            [ 1]   97 	bcp	a, #0x10
      008170 27 0C            [ 1]   98 	jreq	00102$
                                     99 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 117: GPIOx->ODR |= GPIO_Pin;
      008172 16 02            [ 2]  100 	ldw	y, (0x02, sp)
      008174 90 F6            [ 1]  101 	ld	a, (y)
      008176 1A 08            [ 1]  102 	or	a, (0x08, sp)
      008178 16 02            [ 2]  103 	ldw	y, (0x02, sp)
      00817A 90 F7            [ 1]  104 	ld	(y), a
      00817C 20 0A            [ 2]  105 	jra	00103$
      00817E                        106 00102$:
                                    107 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 120: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      00817E 16 02            [ 2]  108 	ldw	y, (0x02, sp)
      008180 90 F6            [ 1]  109 	ld	a, (y)
      008182 14 01            [ 1]  110 	and	a, (0x01, sp)
      008184 16 02            [ 2]  111 	ldw	y, (0x02, sp)
      008186 90 F7            [ 1]  112 	ld	(y), a
      008188                        113 00103$:
                                    114 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 123: GPIOx->DDR |= GPIO_Pin;
      008188 F6               [ 1]  115 	ld	a, (x)
      008189 1A 08            [ 1]  116 	or	a, (0x08, sp)
      00818B F7               [ 1]  117 	ld	(x), a
      00818C 20 04            [ 2]  118 	jra	00106$
      00818E                        119 00105$:
                                    120 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 127: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      00818E F6               [ 1]  121 	ld	a, (x)
      00818F 14 01            [ 1]  122 	and	a, (0x01, sp)
      008191 F7               [ 1]  123 	ld	(x), a
      008192                        124 00106$:
                                    125 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 136: GPIOx->CR1 |= GPIO_Pin;
      008192 1E 02            [ 2]  126 	ldw	x, (0x02, sp)
      008194 1C 00 03         [ 2]  127 	addw	x, #0x0003
                                    128 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 134: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008197 7B 09            [ 1]  129 	ld	a, (0x09, sp)
      008199 A5 40            [ 1]  130 	bcp	a, #0x40
      00819B 27 06            [ 1]  131 	jreq	00108$
                                    132 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 136: GPIOx->CR1 |= GPIO_Pin;
      00819D F6               [ 1]  133 	ld	a, (x)
      00819E 1A 08            [ 1]  134 	or	a, (0x08, sp)
      0081A0 F7               [ 1]  135 	ld	(x), a
      0081A1 20 04            [ 2]  136 	jra	00109$
      0081A3                        137 00108$:
                                    138 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 139: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      0081A3 F6               [ 1]  139 	ld	a, (x)
      0081A4 14 01            [ 1]  140 	and	a, (0x01, sp)
      0081A6 F7               [ 1]  141 	ld	(x), a
      0081A7                        142 00109$:
                                    143 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 148: GPIOx->CR2 |= GPIO_Pin;
      0081A7 1E 02            [ 2]  144 	ldw	x, (0x02, sp)
      0081A9 1C 00 04         [ 2]  145 	addw	x, #0x0004
                                    146 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 146: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      0081AC 7B 09            [ 1]  147 	ld	a, (0x09, sp)
      0081AE A5 20            [ 1]  148 	bcp	a, #0x20
      0081B0 27 06            [ 1]  149 	jreq	00111$
                                    150 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 148: GPIOx->CR2 |= GPIO_Pin;
      0081B2 F6               [ 1]  151 	ld	a, (x)
      0081B3 1A 08            [ 1]  152 	or	a, (0x08, sp)
      0081B5 F7               [ 1]  153 	ld	(x), a
      0081B6 20 04            [ 2]  154 	jra	00113$
      0081B8                        155 00111$:
                                    156 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 151: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0081B8 F6               [ 1]  157 	ld	a, (x)
      0081B9 14 01            [ 1]  158 	and	a, (0x01, sp)
      0081BB F7               [ 1]  159 	ld	(x), a
      0081BC                        160 00113$:
      0081BC 5B 03            [ 2]  161 	addw	sp, #3
      0081BE 81               [ 4]  162 	ret
                                    163 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 163: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t GPIO_PortVal)
                                    164 ;	-----------------------------------------
                                    165 ;	 function GPIO_Write
                                    166 ;	-----------------------------------------
      0081BF                        167 _GPIO_Write:
                                    168 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 165: GPIOx->ODR = GPIO_PortVal;
      0081BF 1E 03            [ 2]  169 	ldw	x, (0x03, sp)
      0081C1 7B 05            [ 1]  170 	ld	a, (0x05, sp)
      0081C3 F7               [ 1]  171 	ld	(x), a
      0081C4 81               [ 4]  172 	ret
                                    173 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 185: void GPIO_WriteBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, BitAction GPIO_BitVal)
                                    174 ;	-----------------------------------------
                                    175 ;	 function GPIO_WriteBit
                                    176 ;	-----------------------------------------
      0081C5                        177 _GPIO_WriteBit:
      0081C5 52 02            [ 2]  178 	sub	sp, #2
                                    179 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 193: SetBit(GPIOx->ODR, GPIO_Pin);
      0081C7 1E 05            [ 2]  180 	ldw	x, (0x05, sp)
      0081C9 A6 01            [ 1]  181 	ld	a, #0x01
      0081CB 6B 02            [ 1]  182 	ld	(0x02, sp), a
      0081CD 7B 07            [ 1]  183 	ld	a, (0x07, sp)
      0081CF 4D               [ 1]  184 	tnz	a
      0081D0 27 05            [ 1]  185 	jreq	00111$
      0081D2                        186 00110$:
      0081D2 08 02            [ 1]  187 	sll	(0x02, sp)
      0081D4 4A               [ 1]  188 	dec	a
      0081D5 26 FB            [ 1]  189 	jrne	00110$
      0081D7                        190 00111$:
                                    191 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 191: if (GPIO_BitVal != RESET)
      0081D7 0D 08            [ 1]  192 	tnz	(0x08, sp)
      0081D9 27 06            [ 1]  193 	jreq	00102$
                                    194 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 193: SetBit(GPIOx->ODR, GPIO_Pin);
      0081DB F6               [ 1]  195 	ld	a, (x)
      0081DC 1A 02            [ 1]  196 	or	a, (0x02, sp)
      0081DE F7               [ 1]  197 	ld	(x), a
      0081DF 20 09            [ 2]  198 	jra	00104$
      0081E1                        199 00102$:
                                    200 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 198: ClrBit(GPIOx->ODR, GPIO_Pin);
      0081E1 F6               [ 1]  201 	ld	a, (x)
      0081E2 6B 01            [ 1]  202 	ld	(0x01, sp), a
      0081E4 7B 02            [ 1]  203 	ld	a, (0x02, sp)
      0081E6 43               [ 1]  204 	cpl	a
      0081E7 14 01            [ 1]  205 	and	a, (0x01, sp)
      0081E9 F7               [ 1]  206 	ld	(x), a
      0081EA                        207 00104$:
      0081EA 5B 02            [ 2]  208 	addw	sp, #2
      0081EC 81               [ 4]  209 	ret
                                    210 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 218: void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
                                    211 ;	-----------------------------------------
                                    212 ;	 function GPIO_SetBits
                                    213 ;	-----------------------------------------
      0081ED                        214 _GPIO_SetBits:
                                    215 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 220: GPIOx->ODR |= GPIO_Pin;
      0081ED 1E 03            [ 2]  216 	ldw	x, (0x03, sp)
      0081EF F6               [ 1]  217 	ld	a, (x)
      0081F0 1A 05            [ 1]  218 	or	a, (0x05, sp)
      0081F2 F7               [ 1]  219 	ld	(x), a
      0081F3 81               [ 4]  220 	ret
                                    221 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 239: void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
                                    222 ;	-----------------------------------------
                                    223 ;	 function GPIO_ResetBits
                                    224 ;	-----------------------------------------
      0081F4                        225 _GPIO_ResetBits:
      0081F4 88               [ 1]  226 	push	a
                                    227 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 241: GPIOx->ODR &= (uint8_t)(~GPIO_Pin);
      0081F5 1E 04            [ 2]  228 	ldw	x, (0x04, sp)
      0081F7 F6               [ 1]  229 	ld	a, (x)
      0081F8 6B 01            [ 1]  230 	ld	(0x01, sp), a
      0081FA 7B 06            [ 1]  231 	ld	a, (0x06, sp)
      0081FC 43               [ 1]  232 	cpl	a
      0081FD 14 01            [ 1]  233 	and	a, (0x01, sp)
      0081FF F7               [ 1]  234 	ld	(x), a
      008200 84               [ 1]  235 	pop	a
      008201 81               [ 4]  236 	ret
                                    237 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 251: void GPIO_ToggleBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
                                    238 ;	-----------------------------------------
                                    239 ;	 function GPIO_ToggleBits
                                    240 ;	-----------------------------------------
      008202                        241 _GPIO_ToggleBits:
                                    242 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 253: GPIOx->ODR ^= GPIO_Pin;
      008202 1E 03            [ 2]  243 	ldw	x, (0x03, sp)
      008204 F6               [ 1]  244 	ld	a, (x)
      008205 18 05            [ 1]  245 	xor	a, (0x05, sp)
      008207 F7               [ 1]  246 	ld	(x), a
      008208 81               [ 4]  247 	ret
                                    248 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 262: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    249 ;	-----------------------------------------
                                    250 ;	 function GPIO_ReadInputData
                                    251 ;	-----------------------------------------
      008209                        252 _GPIO_ReadInputData:
                                    253 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 264: return ((uint8_t)GPIOx->IDR);
      008209 1E 03            [ 2]  254 	ldw	x, (0x03, sp)
      00820B E6 01            [ 1]  255 	ld	a, (0x1, x)
      00820D 81               [ 4]  256 	ret
                                    257 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 273: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    258 ;	-----------------------------------------
                                    259 ;	 function GPIO_ReadOutputData
                                    260 ;	-----------------------------------------
      00820E                        261 _GPIO_ReadOutputData:
                                    262 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 275: return ((uint8_t)GPIOx->ODR);
      00820E 1E 03            [ 2]  263 	ldw	x, (0x03, sp)
      008210 F6               [ 1]  264 	ld	a, (x)
      008211 81               [ 4]  265 	ret
                                    266 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 294: BitStatus GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    267 ;	-----------------------------------------
                                    268 ;	 function GPIO_ReadInputDataBit
                                    269 ;	-----------------------------------------
      008212                        270 _GPIO_ReadInputDataBit:
                                    271 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 296: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      008212 1E 03            [ 2]  272 	ldw	x, (0x03, sp)
      008214 E6 01            [ 1]  273 	ld	a, (0x1, x)
      008216 14 05            [ 1]  274 	and	a, (0x05, sp)
      008218 81               [ 4]  275 	ret
                                    276 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 315: BitStatus GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    277 ;	-----------------------------------------
                                    278 ;	 function GPIO_ReadOutputDataBit
                                    279 ;	-----------------------------------------
      008219                        280 _GPIO_ReadOutputDataBit:
                                    281 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 317: return ((BitStatus)(GPIOx->ODR & (uint8_t)GPIO_Pin));
      008219 1E 03            [ 2]  282 	ldw	x, (0x03, sp)
      00821B F6               [ 1]  283 	ld	a, (x)
      00821C 14 05            [ 1]  284 	and	a, (0x05, sp)
      00821E 81               [ 4]  285 	ret
                                    286 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 337: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin, FunctionalState NewState)
                                    287 ;	-----------------------------------------
                                    288 ;	 function GPIO_ExternalPullUpConfig
                                    289 ;	-----------------------------------------
      00821F                        290 _GPIO_ExternalPullUpConfig:
      00821F 88               [ 1]  291 	push	a
                                    292 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 345: GPIOx->CR1 |= GPIO_Pin;
      008220 1E 04            [ 2]  293 	ldw	x, (0x04, sp)
      008222 1C 00 03         [ 2]  294 	addw	x, #0x0003
                                    295 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 343: if (NewState != DISABLE) /* External Pull-Up Set*/
      008225 0D 07            [ 1]  296 	tnz	(0x07, sp)
      008227 27 06            [ 1]  297 	jreq	00102$
                                    298 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 345: GPIOx->CR1 |= GPIO_Pin;
      008229 F6               [ 1]  299 	ld	a, (x)
      00822A 1A 06            [ 1]  300 	or	a, (0x06, sp)
      00822C F7               [ 1]  301 	ld	(x), a
      00822D 20 09            [ 2]  302 	jra	00104$
      00822F                        303 00102$:
                                    304 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_gpio.c: 348: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00822F F6               [ 1]  305 	ld	a, (x)
      008230 6B 01            [ 1]  306 	ld	(0x01, sp), a
      008232 7B 06            [ 1]  307 	ld	a, (0x06, sp)
      008234 43               [ 1]  308 	cpl	a
      008235 14 01            [ 1]  309 	and	a, (0x01, sp)
      008237 F7               [ 1]  310 	ld	(x), a
      008238                        311 00104$:
      008238 84               [ 1]  312 	pop	a
      008239 81               [ 4]  313 	ret
                                    314 	.area CODE
                                    315 	.area INITIALIZER
                                    316 	.area CABS (ABS)
