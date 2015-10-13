                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Sep 26 2015) (Mac OS X x86_64)
                                      4 ; This file was generated Tue Oct 13 14:47:16 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8l10x_i2c
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _CLK_GetClockFreq
                                     13 	.globl _I2C_DeInit
                                     14 	.globl _I2C_Init
                                     15 	.globl _I2C_Cmd
                                     16 	.globl _I2C_GeneralCallCmd
                                     17 	.globl _I2C_GenerateSTART
                                     18 	.globl _I2C_GenerateSTOP
                                     19 	.globl _I2C_SoftwareResetCmd
                                     20 	.globl _I2C_StretchClockCmd
                                     21 	.globl _I2C_AcknowledgeConfig
                                     22 	.globl _I2C_AckPositionConfig
                                     23 	.globl _I2C_FastModeDutyCycleConfig
                                     24 	.globl _I2C_Send7bitAddress
                                     25 	.globl _I2C_SendData
                                     26 	.globl _I2C_ReceiveData
                                     27 	.globl _I2C_ITConfig
                                     28 	.globl _I2C_CheckEvent
                                     29 	.globl _I2C_GetLastEvent
                                     30 	.globl _I2C_GetFlagStatus
                                     31 	.globl _I2C_ClearFlag
                                     32 	.globl _I2C_GetITStatus
                                     33 	.globl _I2C_ClearITPendingBit
                                     34 ;--------------------------------------------------------
                                     35 ; ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DATA
                                     38 ;--------------------------------------------------------
                                     39 ; ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area INITIALIZED
                                     42 ;--------------------------------------------------------
                                     43 ; absolute external ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area DABS (ABS)
                                     46 ;--------------------------------------------------------
                                     47 ; global & static initialisations
                                     48 ;--------------------------------------------------------
                                     49 	.area HOME
                                     50 	.area GSINIT
                                     51 	.area GSFINAL
                                     52 	.area GSINIT
                                     53 ;--------------------------------------------------------
                                     54 ; Home
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area HOME
                                     58 ;--------------------------------------------------------
                                     59 ; code
                                     60 ;--------------------------------------------------------
                                     61 	.area CODE
                                     62 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 122: void I2C_DeInit(void)
                                     63 ;	-----------------------------------------
                                     64 ;	 function I2C_DeInit
                                     65 ;	-----------------------------------------
      00823A                         66 _I2C_DeInit:
                                     67 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 124: I2C->CR1 = I2C_CR1_RESET_VALUE;
      00823A AE 52 10         [ 2]   68 	ldw	x, #0x5210
      00823D 7F               [ 1]   69 	clr	(x)
                                     70 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 125: I2C->CR2 = I2C_CR2_RESET_VALUE;
      00823E AE 52 11         [ 2]   71 	ldw	x, #0x5211
      008241 7F               [ 1]   72 	clr	(x)
                                     73 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 126: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      008242 AE 52 12         [ 2]   74 	ldw	x, #0x5212
      008245 7F               [ 1]   75 	clr	(x)
                                     76 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 127: I2C->OARL = I2C_OARL_RESET_VALUE;
      008246 AE 52 13         [ 2]   77 	ldw	x, #0x5213
      008249 7F               [ 1]   78 	clr	(x)
                                     79 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 128: I2C->OARH = I2C_OARH_RESET_VALUE;
      00824A AE 52 14         [ 2]   80 	ldw	x, #0x5214
      00824D 7F               [ 1]   81 	clr	(x)
                                     82 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 129: I2C->ITR = I2C_ITR_RESET_VALUE;
      00824E AE 52 1A         [ 2]   83 	ldw	x, #0x521a
      008251 7F               [ 1]   84 	clr	(x)
                                     85 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 130: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      008252 AE 52 1B         [ 2]   86 	ldw	x, #0x521b
      008255 7F               [ 1]   87 	clr	(x)
                                     88 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 131: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      008256 AE 52 1C         [ 2]   89 	ldw	x, #0x521c
      008259 7F               [ 1]   90 	clr	(x)
                                     91 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 132: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      00825A AE 52 1D         [ 2]   92 	ldw	x, #0x521d
      00825D A6 02            [ 1]   93 	ld	a, #0x02
      00825F F7               [ 1]   94 	ld	(x), a
      008260 81               [ 4]   95 	ret
                                     96 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 157: void I2C_Init(uint32_t OutputClockFrequency, uint16_t OwnAddress,
                                     97 ;	-----------------------------------------
                                     98 ;	 function I2C_Init
                                     99 ;	-----------------------------------------
      008261                        100 _I2C_Init:
      008261 52 13            [ 2]  101 	sub	sp, #19
                                    102 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 163: uint8_t tmpccrh = 0;
      008263 0F 02            [ 1]  103 	clr	(0x02, sp)
                                    104 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 174: input_clock = (uint8_t)(CLK_GetClockFreq() / 1000000);
      008265 CD 81 16         [ 4]  105 	call	_CLK_GetClockFreq
      008268 4B 40            [ 1]  106 	push	#0x40
      00826A 4B 42            [ 1]  107 	push	#0x42
      00826C 4B 0F            [ 1]  108 	push	#0x0f
      00826E 4B 00            [ 1]  109 	push	#0x00
      008270 89               [ 2]  110 	pushw	x
      008271 90 89            [ 2]  111 	pushw	y
      008273 CD 89 D2         [ 4]  112 	call	__divulong
      008276 5B 08            [ 2]  113 	addw	sp, #8
      008278 1F 09            [ 2]  114 	ldw	(0x09, sp), x
      00827A 7B 0A            [ 1]  115 	ld	a, (0x0a, sp)
      00827C 6B 01            [ 1]  116 	ld	(0x01, sp), a
                                    117 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 178: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      00827E AE 52 12         [ 2]  118 	ldw	x, #0x5212
      008281 F6               [ 1]  119 	ld	a, (x)
      008282 A4 C0            [ 1]  120 	and	a, #0xc0
      008284 F7               [ 1]  121 	ld	(x), a
                                    122 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 180: I2C->FREQR |= input_clock;
      008285 AE 52 12         [ 2]  123 	ldw	x, #0x5212
      008288 F6               [ 1]  124 	ld	a, (x)
      008289 1A 01            [ 1]  125 	or	a, (0x01, sp)
      00828B AE 52 12         [ 2]  126 	ldw	x, #0x5212
      00828E F7               [ 1]  127 	ld	(x), a
                                    128 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 184: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      00828F 72 11 52 10      [ 1]  129 	bres	0x5210, #0
                                    130 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 187: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      008293 AE 52 1C         [ 2]  131 	ldw	x, #0x521c
      008296 F6               [ 1]  132 	ld	a, (x)
      008297 A4 30            [ 1]  133 	and	a, #0x30
      008299 F7               [ 1]  134 	ld	(x), a
                                    135 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 188: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      00829A AE 52 1B         [ 2]  136 	ldw	x, #0x521b
      00829D F6               [ 1]  137 	ld	a, (x)
      00829E AE 52 1B         [ 2]  138 	ldw	x, #0x521b
      0082A1 7F               [ 1]  139 	clr	(x)
                                    140 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 199: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 3));
      0082A2 7B 01            [ 1]  141 	ld	a, (0x01, sp)
      0082A4 6B 13            [ 1]  142 	ld	(0x13, sp), a
      0082A6 0F 12            [ 1]  143 	clr	(0x12, sp)
      0082A8 5F               [ 1]  144 	clrw	x
      0082A9 16 12            [ 2]  145 	ldw	y, (0x12, sp)
      0082AB 90 89            [ 2]  146 	pushw	y
      0082AD 89               [ 2]  147 	pushw	x
      0082AE 4B 40            [ 1]  148 	push	#0x40
      0082B0 4B 42            [ 1]  149 	push	#0x42
      0082B2 4B 0F            [ 1]  150 	push	#0x0f
      0082B4 4B 00            [ 1]  151 	push	#0x00
      0082B6 CD 8A 71         [ 4]  152 	call	__mullong
      0082B9 5B 08            [ 2]  153 	addw	sp, #8
      0082BB 1F 0E            [ 2]  154 	ldw	(0x0e, sp), x
      0082BD 17 0C            [ 2]  155 	ldw	(0x0c, sp), y
                                    156 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 191: if (OutputClockFrequency > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      0082BF AE 86 A0         [ 2]  157 	ldw	x, #0x86a0
      0082C2 13 18            [ 2]  158 	cpw	x, (0x18, sp)
      0082C4 A6 01            [ 1]  159 	ld	a, #0x01
      0082C6 12 17            [ 1]  160 	sbc	a, (0x17, sp)
      0082C8 4F               [ 1]  161 	clr	a
      0082C9 12 16            [ 1]  162 	sbc	a, (0x16, sp)
      0082CB 25 03            [ 1]  163 	jrc	00129$
      0082CD CC 83 53         [ 2]  164 	jp	00109$
      0082D0                        165 00129$:
                                    166 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 194: tmpccrh = I2C_CCRH_FS;
      0082D0 A6 80            [ 1]  167 	ld	a, #0x80
      0082D2 6B 02            [ 1]  168 	ld	(0x02, sp), a
                                    169 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 196: if (I2C_DutyCycle == I2C_DutyCycle_2)
      0082D4 0D 1C            [ 1]  170 	tnz	(0x1c, sp)
      0082D6 26 25            [ 1]  171 	jrne	00102$
                                    172 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 199: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 3));
      0082D8 1E 18            [ 2]  173 	ldw	x, (0x18, sp)
      0082DA 89               [ 2]  174 	pushw	x
      0082DB 1E 18            [ 2]  175 	ldw	x, (0x18, sp)
      0082DD 89               [ 2]  176 	pushw	x
      0082DE 4B 03            [ 1]  177 	push	#0x03
      0082E0 5F               [ 1]  178 	clrw	x
      0082E1 89               [ 2]  179 	pushw	x
      0082E2 4B 00            [ 1]  180 	push	#0x00
      0082E4 CD 8A 71         [ 4]  181 	call	__mullong
      0082E7 5B 08            [ 2]  182 	addw	sp, #8
      0082E9 89               [ 2]  183 	pushw	x
      0082EA 90 89            [ 2]  184 	pushw	y
      0082EC 1E 12            [ 2]  185 	ldw	x, (0x12, sp)
      0082EE 89               [ 2]  186 	pushw	x
      0082EF 1E 12            [ 2]  187 	ldw	x, (0x12, sp)
      0082F1 89               [ 2]  188 	pushw	x
      0082F2 CD 89 D2         [ 4]  189 	call	__divulong
      0082F5 5B 08            [ 2]  190 	addw	sp, #8
      0082F7 1F 05            [ 2]  191 	ldw	(0x05, sp), x
      0082F9 17 03            [ 2]  192 	ldw	(0x03, sp), y
      0082FB 20 27            [ 2]  193 	jra	00103$
      0082FD                        194 00102$:
                                    195 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 204: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 25));
      0082FD 1E 18            [ 2]  196 	ldw	x, (0x18, sp)
      0082FF 89               [ 2]  197 	pushw	x
      008300 1E 18            [ 2]  198 	ldw	x, (0x18, sp)
      008302 89               [ 2]  199 	pushw	x
      008303 4B 19            [ 1]  200 	push	#0x19
      008305 5F               [ 1]  201 	clrw	x
      008306 89               [ 2]  202 	pushw	x
      008307 4B 00            [ 1]  203 	push	#0x00
      008309 CD 8A 71         [ 4]  204 	call	__mullong
      00830C 5B 08            [ 2]  205 	addw	sp, #8
      00830E 89               [ 2]  206 	pushw	x
      00830F 90 89            [ 2]  207 	pushw	y
      008311 1E 12            [ 2]  208 	ldw	x, (0x12, sp)
      008313 89               [ 2]  209 	pushw	x
      008314 1E 12            [ 2]  210 	ldw	x, (0x12, sp)
      008316 89               [ 2]  211 	pushw	x
      008317 CD 89 D2         [ 4]  212 	call	__divulong
      00831A 5B 08            [ 2]  213 	addw	sp, #8
      00831C 1F 05            [ 2]  214 	ldw	(0x05, sp), x
      00831E 17 03            [ 2]  215 	ldw	(0x03, sp), y
                                    216 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 206: tmpccrh |= I2C_CCRH_DUTY;
      008320 A6 C0            [ 1]  217 	ld	a, #0xc0
      008322 6B 02            [ 1]  218 	ld	(0x02, sp), a
      008324                        219 00103$:
                                    220 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 210: if (result < (uint16_t)0x0001)
      008324 1E 05            [ 2]  221 	ldw	x, (0x05, sp)
      008326 A3 00 01         [ 2]  222 	cpw	x, #0x0001
      008329 7B 04            [ 1]  223 	ld	a, (0x04, sp)
      00832B A2 00            [ 1]  224 	sbc	a, #0x00
      00832D 7B 03            [ 1]  225 	ld	a, (0x03, sp)
      00832F A2 00            [ 1]  226 	sbc	a, #0x00
      008331 24 08            [ 1]  227 	jrnc	00105$
                                    228 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 213: result = (uint16_t)0x0001;
      008333 AE 00 01         [ 2]  229 	ldw	x, #0x0001
      008336 1F 05            [ 2]  230 	ldw	(0x05, sp), x
      008338 5F               [ 1]  231 	clrw	x
      008339 1F 03            [ 2]  232 	ldw	(0x03, sp), x
      00833B                        233 00105$:
                                    234 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 219: tmpval = ((input_clock * 3) / 10) + 1;
      00833B 7B 01            [ 1]  235 	ld	a, (0x01, sp)
      00833D 97               [ 1]  236 	ld	xl, a
      00833E A6 03            [ 1]  237 	ld	a, #0x03
      008340 42               [ 4]  238 	mul	x, a
      008341 4B 0A            [ 1]  239 	push	#0x0a
      008343 4B 00            [ 1]  240 	push	#0x00
      008345 89               [ 2]  241 	pushw	x
      008346 CD 8B DA         [ 4]  242 	call	__divsint
      008349 5B 04            [ 2]  243 	addw	sp, #4
      00834B 5C               [ 2]  244 	incw	x
      00834C 9F               [ 1]  245 	ld	a, xl
                                    246 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 220: I2C->TRISER = (uint8_t)tmpval;
      00834D AE 52 1D         [ 2]  247 	ldw	x, #0x521d
      008350 F7               [ 1]  248 	ld	(x), a
      008351 20 39            [ 2]  249 	jra	00110$
      008353                        250 00109$:
                                    251 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 226: result = (uint16_t)((input_clock * 1000000) / (OutputClockFrequency << (uint8_t)1));
      008353 16 18            [ 2]  252 	ldw	y, (0x18, sp)
      008355 1E 16            [ 2]  253 	ldw	x, (0x16, sp)
      008357 90 58            [ 2]  254 	sllw	y
      008359 59               [ 2]  255 	rlcw	x
      00835A 90 89            [ 2]  256 	pushw	y
      00835C 89               [ 2]  257 	pushw	x
      00835D 1E 12            [ 2]  258 	ldw	x, (0x12, sp)
      00835F 89               [ 2]  259 	pushw	x
      008360 1E 12            [ 2]  260 	ldw	x, (0x12, sp)
      008362 89               [ 2]  261 	pushw	x
      008363 CD 89 D2         [ 4]  262 	call	__divulong
      008366 5B 08            [ 2]  263 	addw	sp, #8
      008368 51               [ 1]  264 	exgw	x, y
      008369 5F               [ 1]  265 	clrw	x
      00836A 17 05            [ 2]  266 	ldw	(0x05, sp), y
      00836C 1F 03            [ 2]  267 	ldw	(0x03, sp), x
                                    268 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 229: if (result < (uint16_t)0x0004)
      00836E 1E 05            [ 2]  269 	ldw	x, (0x05, sp)
      008370 A3 00 04         [ 2]  270 	cpw	x, #0x0004
      008373 7B 04            [ 1]  271 	ld	a, (0x04, sp)
      008375 A2 00            [ 1]  272 	sbc	a, #0x00
      008377 7B 03            [ 1]  273 	ld	a, (0x03, sp)
      008379 A2 00            [ 1]  274 	sbc	a, #0x00
      00837B 24 08            [ 1]  275 	jrnc	00107$
                                    276 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 232: result = (uint16_t)0x0004;
      00837D AE 00 04         [ 2]  277 	ldw	x, #0x0004
      008380 1F 05            [ 2]  278 	ldw	(0x05, sp), x
      008382 5F               [ 1]  279 	clrw	x
      008383 1F 03            [ 2]  280 	ldw	(0x03, sp), x
      008385                        281 00107$:
                                    282 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 238: I2C->TRISER = (uint8_t)((uint8_t)input_clock + (uint8_t)1);
      008385 7B 01            [ 1]  283 	ld	a, (0x01, sp)
      008387 4C               [ 1]  284 	inc	a
      008388 AE 52 1D         [ 2]  285 	ldw	x, #0x521d
      00838B F7               [ 1]  286 	ld	(x), a
      00838C                        287 00110$:
                                    288 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 242: I2C->CCRL = (uint8_t)result;
      00838C 7B 06            [ 1]  289 	ld	a, (0x06, sp)
      00838E AE 52 1B         [ 2]  290 	ldw	x, #0x521b
      008391 F7               [ 1]  291 	ld	(x), a
                                    292 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 243: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)((uint8_t)result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      008392 AE 52 1C         [ 2]  293 	ldw	x, #0x521c
      008395 7B 02            [ 1]  294 	ld	a, (0x02, sp)
      008397 F7               [ 1]  295 	ld	(x), a
                                    296 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 246: I2C->CR1 |= I2C_CR1_PE;
      008398 72 10 52 10      [ 1]  297 	bset	0x5210, #0
                                    298 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 249: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      00839C AE 52 11         [ 2]  299 	ldw	x, #0x5211
      00839F F6               [ 1]  300 	ld	a, (x)
      0083A0 A4 FB            [ 1]  301 	and	a, #0xfb
      0083A2 F7               [ 1]  302 	ld	(x), a
                                    303 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 252: I2C->CR2 |= (uint8_t)I2C_Ack;
      0083A3 AE 52 11         [ 2]  304 	ldw	x, #0x5211
      0083A6 F6               [ 1]  305 	ld	a, (x)
      0083A7 1A 1D            [ 1]  306 	or	a, (0x1d, sp)
      0083A9 AE 52 11         [ 2]  307 	ldw	x, #0x5211
      0083AC F7               [ 1]  308 	ld	(x), a
                                    309 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 255: I2C->OARL = (uint8_t)(OwnAddress);
      0083AD 7B 1B            [ 1]  310 	ld	a, (0x1b, sp)
      0083AF AE 52 13         [ 2]  311 	ldw	x, #0x5213
      0083B2 F7               [ 1]  312 	ld	(x), a
                                    313 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 256: I2C->OARH = (uint8_t)((uint8_t)(I2C_AcknowledgedAddress | I2C_OARH_ADDCONF) |
      0083B3 7B 1E            [ 1]  314 	ld	a, (0x1e, sp)
      0083B5 AA 40            [ 1]  315 	or	a, #0x40
      0083B7 6B 0B            [ 1]  316 	ld	(0x0b, sp), a
                                    317 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 257: (uint8_t)((uint16_t)( (uint16_t)OwnAddress &  (uint16_t)0x0300) >> 7));
      0083B9 4F               [ 1]  318 	clr	a
      0083BA 97               [ 1]  319 	ld	xl, a
      0083BB 7B 1A            [ 1]  320 	ld	a, (0x1a, sp)
      0083BD A4 03            [ 1]  321 	and	a, #0x03
      0083BF 95               [ 1]  322 	ld	xh, a
      0083C0 A6 80            [ 1]  323 	ld	a, #0x80
      0083C2 62               [ 2]  324 	div	x, a
      0083C3 9F               [ 1]  325 	ld	a, xl
      0083C4 1A 0B            [ 1]  326 	or	a, (0x0b, sp)
      0083C6 AE 52 14         [ 2]  327 	ldw	x, #0x5214
      0083C9 F7               [ 1]  328 	ld	(x), a
      0083CA 5B 13            [ 2]  329 	addw	sp, #19
      0083CC 81               [ 4]  330 	ret
                                    331 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 266: void I2C_Cmd(FunctionalState NewState)
                                    332 ;	-----------------------------------------
                                    333 ;	 function I2C_Cmd
                                    334 ;	-----------------------------------------
      0083CD                        335 _I2C_Cmd:
                                    336 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 271: if (NewState != DISABLE)
      0083CD 0D 03            [ 1]  337 	tnz	(0x03, sp)
      0083CF 27 09            [ 1]  338 	jreq	00102$
                                    339 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 274: I2C->CR1 |= I2C_CR1_PE;
      0083D1 AE 52 10         [ 2]  340 	ldw	x, #0x5210
      0083D4 F6               [ 1]  341 	ld	a, (x)
      0083D5 AA 01            [ 1]  342 	or	a, #0x01
      0083D7 F7               [ 1]  343 	ld	(x), a
      0083D8 20 04            [ 2]  344 	jra	00104$
      0083DA                        345 00102$:
                                    346 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 279: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      0083DA 72 11 52 10      [ 1]  347 	bres	0x5210, #0
      0083DE                        348 00104$:
      0083DE 81               [ 4]  349 	ret
                                    350 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 289: void I2C_GeneralCallCmd(FunctionalState NewState)
                                    351 ;	-----------------------------------------
                                    352 ;	 function I2C_GeneralCallCmd
                                    353 ;	-----------------------------------------
      0083DF                        354 _I2C_GeneralCallCmd:
                                    355 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 294: if (NewState != DISABLE)
      0083DF 0D 03            [ 1]  356 	tnz	(0x03, sp)
      0083E1 27 09            [ 1]  357 	jreq	00102$
                                    358 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 297: I2C->CR1 |= I2C_CR1_ENGC;
      0083E3 AE 52 10         [ 2]  359 	ldw	x, #0x5210
      0083E6 F6               [ 1]  360 	ld	a, (x)
      0083E7 AA 40            [ 1]  361 	or	a, #0x40
      0083E9 F7               [ 1]  362 	ld	(x), a
      0083EA 20 07            [ 2]  363 	jra	00104$
      0083EC                        364 00102$:
                                    365 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 302: I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
      0083EC AE 52 10         [ 2]  366 	ldw	x, #0x5210
      0083EF F6               [ 1]  367 	ld	a, (x)
      0083F0 A4 BF            [ 1]  368 	and	a, #0xbf
      0083F2 F7               [ 1]  369 	ld	(x), a
      0083F3                        370 00104$:
      0083F3 81               [ 4]  371 	ret
                                    372 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 314: void I2C_GenerateSTART(FunctionalState NewState)
                                    373 ;	-----------------------------------------
                                    374 ;	 function I2C_GenerateSTART
                                    375 ;	-----------------------------------------
      0083F4                        376 _I2C_GenerateSTART:
                                    377 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 319: if (NewState != DISABLE)
      0083F4 0D 03            [ 1]  378 	tnz	(0x03, sp)
      0083F6 27 09            [ 1]  379 	jreq	00102$
                                    380 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 322: I2C->CR2 |= I2C_CR2_START;
      0083F8 AE 52 11         [ 2]  381 	ldw	x, #0x5211
      0083FB F6               [ 1]  382 	ld	a, (x)
      0083FC AA 01            [ 1]  383 	or	a, #0x01
      0083FE F7               [ 1]  384 	ld	(x), a
      0083FF 20 04            [ 2]  385 	jra	00104$
      008401                        386 00102$:
                                    387 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 327: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      008401 72 11 52 11      [ 1]  388 	bres	0x5211, #0
      008405                        389 00104$:
      008405 81               [ 4]  390 	ret
                                    391 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 337: void I2C_GenerateSTOP(FunctionalState NewState)
                                    392 ;	-----------------------------------------
                                    393 ;	 function I2C_GenerateSTOP
                                    394 ;	-----------------------------------------
      008406                        395 _I2C_GenerateSTOP:
                                    396 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 342: if (NewState != DISABLE)
      008406 0D 03            [ 1]  397 	tnz	(0x03, sp)
      008408 27 09            [ 1]  398 	jreq	00102$
                                    399 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 345: I2C->CR2 |= I2C_CR2_STOP;
      00840A AE 52 11         [ 2]  400 	ldw	x, #0x5211
      00840D F6               [ 1]  401 	ld	a, (x)
      00840E AA 02            [ 1]  402 	or	a, #0x02
      008410 F7               [ 1]  403 	ld	(x), a
      008411 20 07            [ 2]  404 	jra	00104$
      008413                        405 00102$:
                                    406 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 350: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      008413 AE 52 11         [ 2]  407 	ldw	x, #0x5211
      008416 F6               [ 1]  408 	ld	a, (x)
      008417 A4 FD            [ 1]  409 	and	a, #0xfd
      008419 F7               [ 1]  410 	ld	(x), a
      00841A                        411 00104$:
      00841A 81               [ 4]  412 	ret
                                    413 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 362: void I2C_SoftwareResetCmd(FunctionalState NewState)
                                    414 ;	-----------------------------------------
                                    415 ;	 function I2C_SoftwareResetCmd
                                    416 ;	-----------------------------------------
      00841B                        417 _I2C_SoftwareResetCmd:
                                    418 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 367: if (NewState != DISABLE)
      00841B 0D 03            [ 1]  419 	tnz	(0x03, sp)
      00841D 27 09            [ 1]  420 	jreq	00102$
                                    421 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 370: I2C->CR2 |= I2C_CR2_SWRST;
      00841F AE 52 11         [ 2]  422 	ldw	x, #0x5211
      008422 F6               [ 1]  423 	ld	a, (x)
      008423 AA 80            [ 1]  424 	or	a, #0x80
      008425 F7               [ 1]  425 	ld	(x), a
      008426 20 04            [ 2]  426 	jra	00104$
      008428                        427 00102$:
                                    428 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 375: I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
      008428 72 17 52 11      [ 1]  429 	bres	0x5211, #7
      00842C                        430 00104$:
      00842C 81               [ 4]  431 	ret
                                    432 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 385: void I2C_StretchClockCmd(FunctionalState NewState)
                                    433 ;	-----------------------------------------
                                    434 ;	 function I2C_StretchClockCmd
                                    435 ;	-----------------------------------------
      00842D                        436 _I2C_StretchClockCmd:
                                    437 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 390: if (NewState != DISABLE)
      00842D 0D 03            [ 1]  438 	tnz	(0x03, sp)
      00842F 27 09            [ 1]  439 	jreq	00102$
                                    440 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 393: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      008431 AE 52 10         [ 2]  441 	ldw	x, #0x5210
      008434 F6               [ 1]  442 	ld	a, (x)
      008435 A4 7F            [ 1]  443 	and	a, #0x7f
      008437 F7               [ 1]  444 	ld	(x), a
      008438 20 04            [ 2]  445 	jra	00104$
      00843A                        446 00102$:
                                    447 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 398: I2C->CR1 |= I2C_CR1_NOSTRETCH;
      00843A 72 17 52 10      [ 1]  448 	bset	0x5210, #7
      00843E                        449 00104$:
      00843E 81               [ 4]  450 	ret
                                    451 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 408: void I2C_AcknowledgeConfig(FunctionalState NewState)
                                    452 ;	-----------------------------------------
                                    453 ;	 function I2C_AcknowledgeConfig
                                    454 ;	-----------------------------------------
      00843F                        455 _I2C_AcknowledgeConfig:
                                    456 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 413: if (NewState != DISABLE)
      00843F 0D 03            [ 1]  457 	tnz	(0x03, sp)
      008441 27 09            [ 1]  458 	jreq	00102$
                                    459 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 416: I2C->CR2 |= I2C_CR2_ACK;
      008443 AE 52 11         [ 2]  460 	ldw	x, #0x5211
      008446 F6               [ 1]  461 	ld	a, (x)
      008447 AA 04            [ 1]  462 	or	a, #0x04
      008449 F7               [ 1]  463 	ld	(x), a
      00844A 20 07            [ 2]  464 	jra	00104$
      00844C                        465 00102$:
                                    466 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 421: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      00844C AE 52 11         [ 2]  467 	ldw	x, #0x5211
      00844F F6               [ 1]  468 	ld	a, (x)
      008450 A4 FB            [ 1]  469 	and	a, #0xfb
      008452 F7               [ 1]  470 	ld	(x), a
      008453                        471 00104$:
      008453 81               [ 4]  472 	ret
                                    473 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 434: void I2C_AckPositionConfig(I2C_AckPosition_TypeDef I2C_AckPosition)
                                    474 ;	-----------------------------------------
                                    475 ;	 function I2C_AckPositionConfig
                                    476 ;	-----------------------------------------
      008454                        477 _I2C_AckPositionConfig:
                                    478 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 440: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      008454 AE 52 11         [ 2]  479 	ldw	x, #0x5211
      008457 F6               [ 1]  480 	ld	a, (x)
      008458 A4 F7            [ 1]  481 	and	a, #0xf7
      00845A F7               [ 1]  482 	ld	(x), a
                                    483 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 443: I2C->CR2 |= (uint8_t)I2C_AckPosition;
      00845B AE 52 11         [ 2]  484 	ldw	x, #0x5211
      00845E F6               [ 1]  485 	ld	a, (x)
      00845F 1A 03            [ 1]  486 	or	a, (0x03, sp)
      008461 AE 52 11         [ 2]  487 	ldw	x, #0x5211
      008464 F7               [ 1]  488 	ld	(x), a
      008465 81               [ 4]  489 	ret
                                    490 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 454: void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
                                    491 ;	-----------------------------------------
                                    492 ;	 function I2C_FastModeDutyCycleConfig
                                    493 ;	-----------------------------------------
      008466                        494 _I2C_FastModeDutyCycleConfig:
                                    495 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 459: if (I2C_DutyCycle == I2C_DutyCycle_16_9)
      008466 7B 03            [ 1]  496 	ld	a, (0x03, sp)
      008468 A1 40            [ 1]  497 	cp	a, #0x40
      00846A 26 09            [ 1]  498 	jrne	00102$
                                    499 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 462: I2C->CCRH |= I2C_CCRH_DUTY;
      00846C AE 52 1C         [ 2]  500 	ldw	x, #0x521c
      00846F F6               [ 1]  501 	ld	a, (x)
      008470 AA 40            [ 1]  502 	or	a, #0x40
      008472 F7               [ 1]  503 	ld	(x), a
      008473 20 07            [ 2]  504 	jra	00104$
      008475                        505 00102$:
                                    506 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 467: I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
      008475 AE 52 1C         [ 2]  507 	ldw	x, #0x521c
      008478 F6               [ 1]  508 	ld	a, (x)
      008479 A4 BF            [ 1]  509 	and	a, #0xbf
      00847B F7               [ 1]  510 	ld	(x), a
      00847C                        511 00104$:
      00847C 81               [ 4]  512 	ret
                                    513 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 481: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef I2C_Direction)
                                    514 ;	-----------------------------------------
                                    515 ;	 function I2C_Send7bitAddress
                                    516 ;	-----------------------------------------
      00847D                        517 _I2C_Send7bitAddress:
                                    518 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 488: if (I2C_Direction != I2C_Direction_Transmitter)
      00847D 0D 04            [ 1]  519 	tnz	(0x04, sp)
      00847F 27 08            [ 1]  520 	jreq	00102$
                                    521 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 491: Address |= OAR1_ADD0_Set;
      008481 7B 03            [ 1]  522 	ld	a, (0x03, sp)
      008483 AA 01            [ 1]  523 	or	a, #0x01
      008485 6B 03            [ 1]  524 	ld	(0x03, sp), a
      008487 20 06            [ 2]  525 	jra	00103$
      008489                        526 00102$:
                                    527 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 496: Address &= OAR1_ADD0_Reset;
      008489 7B 03            [ 1]  528 	ld	a, (0x03, sp)
      00848B A4 FE            [ 1]  529 	and	a, #0xfe
      00848D 6B 03            [ 1]  530 	ld	(0x03, sp), a
      00848F                        531 00103$:
                                    532 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 499: I2C->DR = Address;
      00848F AE 52 16         [ 2]  533 	ldw	x, #0x5216
      008492 7B 03            [ 1]  534 	ld	a, (0x03, sp)
      008494 F7               [ 1]  535 	ld	(x), a
      008495 81               [ 4]  536 	ret
                                    537 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 523: void I2C_SendData(uint8_t Data)
                                    538 ;	-----------------------------------------
                                    539 ;	 function I2C_SendData
                                    540 ;	-----------------------------------------
      008496                        541 _I2C_SendData:
                                    542 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 526: I2C->DR = Data;
      008496 AE 52 16         [ 2]  543 	ldw	x, #0x5216
      008499 7B 03            [ 1]  544 	ld	a, (0x03, sp)
      00849B F7               [ 1]  545 	ld	(x), a
      00849C 81               [ 4]  546 	ret
                                    547 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 534: uint8_t I2C_ReceiveData(void)
                                    548 ;	-----------------------------------------
                                    549 ;	 function I2C_ReceiveData
                                    550 ;	-----------------------------------------
      00849D                        551 _I2C_ReceiveData:
                                    552 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 537: return ((uint8_t)I2C->DR);
      00849D AE 52 16         [ 2]  553 	ldw	x, #0x5216
      0084A0 F6               [ 1]  554 	ld	a, (x)
      0084A1 81               [ 4]  555 	ret
                                    556 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 648: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                    557 ;	-----------------------------------------
                                    558 ;	 function I2C_ITConfig
                                    559 ;	-----------------------------------------
      0084A2                        560 _I2C_ITConfig:
      0084A2 52 02            [ 2]  561 	sub	sp, #2
                                    562 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 657: I2C->ITR |= (uint8_t)I2C_IT;
      0084A4 7B 06            [ 1]  563 	ld	a, (0x06, sp)
      0084A6 6B 02            [ 1]  564 	ld	(0x02, sp), a
                                    565 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 654: if (NewState != DISABLE)
      0084A8 0D 07            [ 1]  566 	tnz	(0x07, sp)
      0084AA 27 0C            [ 1]  567 	jreq	00102$
                                    568 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 657: I2C->ITR |= (uint8_t)I2C_IT;
      0084AC AE 52 1A         [ 2]  569 	ldw	x, #0x521a
      0084AF F6               [ 1]  570 	ld	a, (x)
      0084B0 1A 02            [ 1]  571 	or	a, (0x02, sp)
      0084B2 AE 52 1A         [ 2]  572 	ldw	x, #0x521a
      0084B5 F7               [ 1]  573 	ld	(x), a
      0084B6 20 0F            [ 2]  574 	jra	00104$
      0084B8                        575 00102$:
                                    576 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 662: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
      0084B8 AE 52 1A         [ 2]  577 	ldw	x, #0x521a
      0084BB F6               [ 1]  578 	ld	a, (x)
      0084BC 6B 01            [ 1]  579 	ld	(0x01, sp), a
      0084BE 7B 02            [ 1]  580 	ld	a, (0x02, sp)
      0084C0 43               [ 1]  581 	cpl	a
      0084C1 14 01            [ 1]  582 	and	a, (0x01, sp)
      0084C3 AE 52 1A         [ 2]  583 	ldw	x, #0x521a
      0084C6 F7               [ 1]  584 	ld	(x), a
      0084C7                        585 00104$:
      0084C7 5B 02            [ 2]  586 	addw	sp, #2
      0084C9 81               [ 4]  587 	ret
                                    588 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 700: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    589 ;	-----------------------------------------
                                    590 ;	 function I2C_CheckEvent
                                    591 ;	-----------------------------------------
      0084CA                        592 _I2C_CheckEvent:
      0084CA 52 03            [ 2]  593 	sub	sp, #3
                                    594 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 710: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      0084CC 1E 06            [ 2]  595 	ldw	x, (0x06, sp)
      0084CE A3 00 04         [ 2]  596 	cpw	x, #0x0004
      0084D1 26 0A            [ 1]  597 	jrne	00102$
                                    598 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 713: lastevent = (uint16_t)(I2C->SR2& I2C_SR2_AF);
      0084D3 AE 52 18         [ 2]  599 	ldw	x, #0x5218
      0084D6 F6               [ 1]  600 	ld	a, (x)
      0084D7 A4 04            [ 1]  601 	and	a, #0x04
      0084D9 97               [ 1]  602 	ld	xl, a
      0084DA 4F               [ 1]  603 	clr	a
      0084DB 20 21            [ 2]  604 	jra	00103$
      0084DD                        605 00102$:
                                    606 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 718: flag1 = I2C->SR1;
      0084DD AE 52 17         [ 2]  607 	ldw	x, #0x5217
      0084E0 F6               [ 1]  608 	ld	a, (x)
      0084E1 6B 01            [ 1]  609 	ld	(0x01, sp), a
                                    610 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 719: flag2 = I2C->SR3;
      0084E3 AE 52 19         [ 2]  611 	ldw	x, #0x5219
      0084E6 F6               [ 1]  612 	ld	a, (x)
                                    613 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 720: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      0084E7 5F               [ 1]  614 	clrw	x
      0084E8 97               [ 1]  615 	ld	xl, a
      0084E9 58               [ 2]  616 	sllw	x
      0084EA 58               [ 2]  617 	sllw	x
      0084EB 58               [ 2]  618 	sllw	x
      0084EC 58               [ 2]  619 	sllw	x
      0084ED 58               [ 2]  620 	sllw	x
      0084EE 58               [ 2]  621 	sllw	x
      0084EF 58               [ 2]  622 	sllw	x
      0084F0 58               [ 2]  623 	sllw	x
      0084F1 7B 01            [ 1]  624 	ld	a, (0x01, sp)
      0084F3 6B 03            [ 1]  625 	ld	(0x03, sp), a
      0084F5 0F 02            [ 1]  626 	clr	(0x02, sp)
      0084F7 9F               [ 1]  627 	ld	a, xl
      0084F8 1A 03            [ 1]  628 	or	a, (0x03, sp)
      0084FA 97               [ 1]  629 	ld	xl, a
      0084FB 9E               [ 1]  630 	ld	a, xh
      0084FC 1A 02            [ 1]  631 	or	a, (0x02, sp)
      0084FE                        632 00103$:
                                    633 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 724: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      0084FE 14 06            [ 1]  634 	and	a, (0x06, sp)
      008500 95               [ 1]  635 	ld	xh, a
      008501 9F               [ 1]  636 	ld	a, xl
      008502 14 07            [ 1]  637 	and	a, (0x07, sp)
      008504 97               [ 1]  638 	ld	xl, a
      008505 13 06            [ 2]  639 	cpw	x, (0x06, sp)
      008507 26 04            [ 1]  640 	jrne	00105$
                                    641 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 727: status = SUCCESS;
      008509 A6 01            [ 1]  642 	ld	a, #0x01
      00850B 20 01            [ 2]  643 	jra	00106$
      00850D                        644 00105$:
                                    645 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 732: status = ERROR;
      00850D 4F               [ 1]  646 	clr	a
      00850E                        647 00106$:
                                    648 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 736: return status;
      00850E 5B 03            [ 2]  649 	addw	sp, #3
      008510 81               [ 4]  650 	ret
                                    651 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 754: I2C_Event_TypeDef I2C_GetLastEvent(void)
                                    652 ;	-----------------------------------------
                                    653 ;	 function I2C_GetLastEvent
                                    654 ;	-----------------------------------------
      008511                        655 _I2C_GetLastEvent:
      008511 52 06            [ 2]  656 	sub	sp, #6
                                    657 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 756: __IO uint16_t lastevent = 0;
      008513 5F               [ 1]  658 	clrw	x
      008514 1F 03            [ 2]  659 	ldw	(0x03, sp), x
                                    660 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 760: if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
      008516 AE 52 18         [ 2]  661 	ldw	x, #0x5218
      008519 F6               [ 1]  662 	ld	a, (x)
      00851A A5 04            [ 1]  663 	bcp	a, #0x04
      00851C 27 07            [ 1]  664 	jreq	00102$
                                    665 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 762: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
      00851E AE 00 04         [ 2]  666 	ldw	x, #0x0004
      008521 1F 03            [ 2]  667 	ldw	(0x03, sp), x
      008523 20 24            [ 2]  668 	jra	00103$
      008525                        669 00102$:
                                    670 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 767: flag1 = I2C->SR1;
      008525 AE 52 17         [ 2]  671 	ldw	x, #0x5217
      008528 F6               [ 1]  672 	ld	a, (x)
      008529 5F               [ 1]  673 	clrw	x
      00852A 97               [ 1]  674 	ld	xl, a
      00852B 1F 01            [ 2]  675 	ldw	(0x01, sp), x
                                    676 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 768: flag2 = I2C->SR3;
      00852D AE 52 19         [ 2]  677 	ldw	x, #0x5219
      008530 F6               [ 1]  678 	ld	a, (x)
      008531 5F               [ 1]  679 	clrw	x
      008532 97               [ 1]  680 	ld	xl, a
                                    681 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 771: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
      008533 58               [ 2]  682 	sllw	x
      008534 58               [ 2]  683 	sllw	x
      008535 58               [ 2]  684 	sllw	x
      008536 58               [ 2]  685 	sllw	x
      008537 58               [ 2]  686 	sllw	x
      008538 58               [ 2]  687 	sllw	x
      008539 58               [ 2]  688 	sllw	x
      00853A 58               [ 2]  689 	sllw	x
      00853B 9F               [ 1]  690 	ld	a, xl
      00853C 1A 02            [ 1]  691 	or	a, (0x02, sp)
      00853E 6B 06            [ 1]  692 	ld	(0x06, sp), a
      008540 9E               [ 1]  693 	ld	a, xh
      008541 1A 01            [ 1]  694 	or	a, (0x01, sp)
      008543 6B 03            [ 1]  695 	ld	(0x03, sp), a
      008545 7B 06            [ 1]  696 	ld	a, (0x06, sp)
      008547 6B 04            [ 1]  697 	ld	(0x04, sp), a
      008549                        698 00103$:
                                    699 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 774: return (I2C_Event_TypeDef)lastevent;
      008549 1E 03            [ 2]  700 	ldw	x, (0x03, sp)
      00854B 5B 06            [ 2]  701 	addw	sp, #6
      00854D 81               [ 4]  702 	ret
                                    703 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 805: FlagStatus I2C_GetFlagStatus(I2C_FLAG_TypeDef I2C_FLAG)
                                    704 ;	-----------------------------------------
                                    705 ;	 function I2C_GetFlagStatus
                                    706 ;	-----------------------------------------
      00854E                        707 _I2C_GetFlagStatus:
      00854E 52 02            [ 2]  708 	sub	sp, #2
                                    709 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 807: uint8_t tempreg = 0;
      008550 4F               [ 1]  710 	clr	a
      008551 95               [ 1]  711 	ld	xh, a
                                    712 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 815: regindex = (uint8_t)((uint16_t)I2C_FLAG >> 8);
      008552 7B 05            [ 1]  713 	ld	a, (0x05, sp)
      008554 0F 01            [ 1]  714 	clr	(0x01, sp)
                                    715 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 818: switch (regindex)
      008556 A1 01            [ 1]  716 	cp	a, #0x01
      008558 27 0A            [ 1]  717 	jreq	00101$
      00855A A1 02            [ 1]  718 	cp	a, #0x02
      00855C 27 0D            [ 1]  719 	jreq	00102$
      00855E A1 03            [ 1]  720 	cp	a, #0x03
      008560 27 10            [ 1]  721 	jreq	00103$
      008562 20 13            [ 2]  722 	jra	00105$
                                    723 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 821: case 0x01:
      008564                        724 00101$:
                                    725 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 822: tempreg = (uint8_t)I2C->SR1;
      008564 AE 52 17         [ 2]  726 	ldw	x, #0x5217
      008567 F6               [ 1]  727 	ld	a, (x)
      008568 95               [ 1]  728 	ld	xh, a
                                    729 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 823: break;
      008569 20 0C            [ 2]  730 	jra	00105$
                                    731 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 826: case 0x02:
      00856B                        732 00102$:
                                    733 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 827: tempreg = (uint8_t)I2C->SR2;
      00856B AE 52 18         [ 2]  734 	ldw	x, #0x5218
      00856E F6               [ 1]  735 	ld	a, (x)
      00856F 95               [ 1]  736 	ld	xh, a
                                    737 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 828: break;
      008570 20 05            [ 2]  738 	jra	00105$
                                    739 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 831: case 0x03:
      008572                        740 00103$:
                                    741 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 832: tempreg = (uint8_t)I2C->SR3;
      008572 AE 52 19         [ 2]  742 	ldw	x, #0x5219
      008575 F6               [ 1]  743 	ld	a, (x)
      008576 95               [ 1]  744 	ld	xh, a
                                    745 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 836: }
      008577                        746 00105$:
                                    747 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 839: if ((tempreg & (uint8_t)I2C_FLAG) != 0)
      008577 7B 06            [ 1]  748 	ld	a, (0x06, sp)
      008579 89               [ 2]  749 	pushw	x
      00857A 14 01            [ 1]  750 	and	a, (1, sp)
      00857C 85               [ 2]  751 	popw	x
      00857D 4D               [ 1]  752 	tnz	a
      00857E 27 04            [ 1]  753 	jreq	00107$
                                    754 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 842: bitstatus = SET;
      008580 A6 01            [ 1]  755 	ld	a, #0x01
      008582 20 01            [ 2]  756 	jra	00108$
      008584                        757 00107$:
                                    758 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 847: bitstatus = RESET;
      008584 4F               [ 1]  759 	clr	a
      008585                        760 00108$:
                                    761 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 850: return bitstatus;
      008585 5B 02            [ 2]  762 	addw	sp, #2
      008587 81               [ 4]  763 	ret
                                    764 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 879: void I2C_ClearFlag(I2C_FLAG_TypeDef I2C_FLAG)
                                    765 ;	-----------------------------------------
                                    766 ;	 function I2C_ClearFlag
                                    767 ;	-----------------------------------------
      008588                        768 _I2C_ClearFlag:
                                    769 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 886: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
      008588 7B 04            [ 1]  770 	ld	a, (0x04, sp)
      00858A 97               [ 1]  771 	ld	xl, a
      00858B 4F               [ 1]  772 	clr	a
      00858C 95               [ 1]  773 	ld	xh, a
                                    774 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 888: I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
      00858D 53               [ 2]  775 	cplw	x
      00858E 9F               [ 1]  776 	ld	a, xl
      00858F AE 52 18         [ 2]  777 	ldw	x, #0x5218
      008592 F7               [ 1]  778 	ld	(x), a
      008593 81               [ 4]  779 	ret
                                    780 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 910: ITStatus I2C_GetITStatus(I2C_IT_TypeDef I2C_IT)
                                    781 ;	-----------------------------------------
                                    782 ;	 function I2C_GetITStatus
                                    783 ;	-----------------------------------------
      008594                        784 _I2C_GetITStatus:
      008594 52 0A            [ 2]  785 	sub	sp, #10
                                    786 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 913: __IO uint8_t enablestatus = 0;
      008596 0F 03            [ 1]  787 	clr	(0x03, sp)
                                    788 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 919: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_IT & ITEN_Mask)) >> 8);
      008598 0F 0A            [ 1]  789 	clr	(0x0a, sp)
      00859A 7B 0D            [ 1]  790 	ld	a, (0x0d, sp)
      00859C A4 07            [ 1]  791 	and	a, #0x07
      00859E 6B 09            [ 1]  792 	ld	(0x09, sp), a
      0085A0 7B 09            [ 1]  793 	ld	a, (0x09, sp)
      0085A2 6B 08            [ 1]  794 	ld	(0x08, sp), a
      0085A4 4F               [ 1]  795 	clr	a
      0085A5 7B 08            [ 1]  796 	ld	a, (0x08, sp)
      0085A7 6B 06            [ 1]  797 	ld	(0x06, sp), a
      0085A9 7B 06            [ 1]  798 	ld	a, (0x06, sp)
      0085AB 6B 02            [ 1]  799 	ld	(0x02, sp), a
      0085AD 4F               [ 1]  800 	clr	a
      0085AE 6B 01            [ 1]  801 	ld	(0x01, sp), a
                                    802 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 922: enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
      0085B0 AE 52 1A         [ 2]  803 	ldw	x, #0x521a
      0085B3 F6               [ 1]  804 	ld	a, (x)
      0085B4 88               [ 1]  805 	push	a
      0085B5 7B 03            [ 1]  806 	ld	a, (0x03, sp)
      0085B7 6B 06            [ 1]  807 	ld	(0x06, sp), a
      0085B9 84               [ 1]  808 	pop	a
      0085BA 14 05            [ 1]  809 	and	a, (0x05, sp)
      0085BC 6B 03            [ 1]  810 	ld	(0x03, sp), a
                                    811 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 924: if ((uint16_t)((uint16_t)I2C_IT & REGISTER_Mask) == REGISTER_SR1_Index)
      0085BE 4F               [ 1]  812 	clr	a
      0085BF 97               [ 1]  813 	ld	xl, a
      0085C0 7B 0D            [ 1]  814 	ld	a, (0x0d, sp)
      0085C2 A4 30            [ 1]  815 	and	a, #0x30
      0085C4 95               [ 1]  816 	ld	xh, a
                                    817 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 927: if (((I2C->SR1 & (uint8_t)I2C_IT) != RESET) && enablestatus)
      0085C5 7B 0E            [ 1]  818 	ld	a, (0x0e, sp)
      0085C7 6B 04            [ 1]  819 	ld	(0x04, sp), a
                                    820 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 924: if ((uint16_t)((uint16_t)I2C_IT & REGISTER_Mask) == REGISTER_SR1_Index)
      0085C9 A3 01 00         [ 2]  821 	cpw	x, #0x0100
      0085CC 26 14            [ 1]  822 	jrne	00110$
                                    823 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 927: if (((I2C->SR1 & (uint8_t)I2C_IT) != RESET) && enablestatus)
      0085CE AE 52 17         [ 2]  824 	ldw	x, #0x5217
      0085D1 F6               [ 1]  825 	ld	a, (x)
      0085D2 14 04            [ 1]  826 	and	a, (0x04, sp)
      0085D4 4D               [ 1]  827 	tnz	a
      0085D5 27 08            [ 1]  828 	jreq	00102$
      0085D7 0D 03            [ 1]  829 	tnz	(0x03, sp)
      0085D9 27 04            [ 1]  830 	jreq	00102$
                                    831 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 930: bitstatus = SET;
      0085DB A6 01            [ 1]  832 	ld	a, #0x01
      0085DD 20 15            [ 2]  833 	jra	00111$
      0085DF                        834 00102$:
                                    835 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 935: bitstatus = RESET;
      0085DF 4F               [ 1]  836 	clr	a
      0085E0 20 12            [ 2]  837 	jra	00111$
      0085E2                        838 00110$:
                                    839 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 941: if (((I2C->SR2 & (uint8_t)I2C_IT) != RESET) && enablestatus)
      0085E2 AE 52 18         [ 2]  840 	ldw	x, #0x5218
      0085E5 F6               [ 1]  841 	ld	a, (x)
      0085E6 14 04            [ 1]  842 	and	a, (0x04, sp)
      0085E8 4D               [ 1]  843 	tnz	a
      0085E9 27 08            [ 1]  844 	jreq	00106$
      0085EB 0D 03            [ 1]  845 	tnz	(0x03, sp)
      0085ED 27 04            [ 1]  846 	jreq	00106$
                                    847 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 944: bitstatus = SET;
      0085EF A6 01            [ 1]  848 	ld	a, #0x01
      0085F1 20 01            [ 2]  849 	jra	00111$
      0085F3                        850 00106$:
                                    851 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 949: bitstatus = RESET;
      0085F3 4F               [ 1]  852 	clr	a
      0085F4                        853 00111$:
                                    854 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 953: return  bitstatus;
      0085F4 5B 0A            [ 2]  855 	addw	sp, #10
      0085F6 81               [ 4]  856 	ret
                                    857 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 982: void I2C_ClearITPendingBit(I2C_IT_TypeDef I2C_IT)
                                    858 ;	-----------------------------------------
                                    859 ;	 function I2C_ClearITPendingBit
                                    860 ;	-----------------------------------------
      0085F7                        861 _I2C_ClearITPendingBit:
                                    862 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 990: flagpos = (uint16_t)I2C_IT & FLAG_Mask;
      0085F7 7B 04            [ 1]  863 	ld	a, (0x04, sp)
      0085F9 97               [ 1]  864 	ld	xl, a
      0085FA 4F               [ 1]  865 	clr	a
      0085FB 95               [ 1]  866 	ld	xh, a
                                    867 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_i2c.c: 993: I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
      0085FC 53               [ 2]  868 	cplw	x
      0085FD 9F               [ 1]  869 	ld	a, xl
      0085FE AE 52 18         [ 2]  870 	ldw	x, #0x5218
      008601 F7               [ 1]  871 	ld	(x), a
      008602 81               [ 4]  872 	ret
                                    873 	.area CODE
                                    874 	.area INITIALIZER
                                    875 	.area CABS (ABS)
