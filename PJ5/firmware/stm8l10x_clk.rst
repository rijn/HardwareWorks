                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Sep 26 2015) (Mac OS X x86_64)
                                      4 ; This file was generated Tue Oct 13 14:47:14 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8l10x_clk
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _CLK_DeInit
                                     14 	.globl _CLK_CCOCmd
                                     15 	.globl _CLK_PeripheralClockConfig
                                     16 	.globl _CLK_MasterPrescalerConfig
                                     17 	.globl _CLK_CCOConfig
                                     18 	.globl _CLK_GetClockFreq
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area DATA
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area INITIALIZED
                                     27 ;--------------------------------------------------------
                                     28 ; absolute external ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area DABS (ABS)
                                     31 ;--------------------------------------------------------
                                     32 ; global & static initialisations
                                     33 ;--------------------------------------------------------
                                     34 	.area HOME
                                     35 	.area GSINIT
                                     36 	.area GSFINAL
                                     37 	.area GSINIT
                                     38 ;--------------------------------------------------------
                                     39 ; Home
                                     40 ;--------------------------------------------------------
                                     41 	.area HOME
                                     42 	.area HOME
                                     43 ;--------------------------------------------------------
                                     44 ; code
                                     45 ;--------------------------------------------------------
                                     46 	.area CODE
                                     47 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 68: void CLK_DeInit(void)
                                     48 ;	-----------------------------------------
                                     49 ;	 function CLK_DeInit
                                     50 ;	-----------------------------------------
      0080AF                         51 _CLK_DeInit:
                                     52 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 70: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      0080AF AE 50 C0         [ 2]   53 	ldw	x, #0x50c0
      0080B2 A6 03            [ 1]   54 	ld	a, #0x03
      0080B4 F7               [ 1]   55 	ld	(x), a
                                     56 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 71: CLK->PCKENR = CLK_PCKENR_RESET_VALUE;
      0080B5 AE 50 C3         [ 2]   57 	ldw	x, #0x50c3
      0080B8 7F               [ 1]   58 	clr	(x)
                                     59 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 72: CLK->CCOR  = CLK_CCOR_RESET_VALUE;
      0080B9 AE 50 C5         [ 2]   60 	ldw	x, #0x50c5
      0080BC 7F               [ 1]   61 	clr	(x)
      0080BD 81               [ 4]   62 	ret
                                     63 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 80: void CLK_CCOCmd(FunctionalState NewState)
                                     64 ;	-----------------------------------------
                                     65 ;	 function CLK_CCOCmd
                                     66 ;	-----------------------------------------
      0080BE                         67 _CLK_CCOCmd:
                                     68 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 85: if (NewState != DISABLE)
      0080BE 0D 03            [ 1]   69 	tnz	(0x03, sp)
      0080C0 27 09            [ 1]   70 	jreq	00102$
                                     71 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 88: CLK->CCOR |= CLK_CCOR_CCOEN;
      0080C2 AE 50 C5         [ 2]   72 	ldw	x, #0x50c5
      0080C5 F6               [ 1]   73 	ld	a, (x)
      0080C6 AA 01            [ 1]   74 	or	a, #0x01
      0080C8 F7               [ 1]   75 	ld	(x), a
      0080C9 20 04            [ 2]   76 	jra	00104$
      0080CB                         77 00102$:
                                     78 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 93: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      0080CB 72 11 50 C5      [ 1]   79 	bres	0x50c5, #0
      0080CF                         80 00104$:
      0080CF 81               [ 4]   81 	ret
                                     82 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 113: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                     83 ;	-----------------------------------------
                                     84 ;	 function CLK_PeripheralClockConfig
                                     85 ;	-----------------------------------------
      0080D0                         86 _CLK_PeripheralClockConfig:
      0080D0 88               [ 1]   87 	push	a
                                     88 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 119: if (NewState != DISABLE)
      0080D1 0D 05            [ 1]   89 	tnz	(0x05, sp)
      0080D3 27 0C            [ 1]   90 	jreq	00102$
                                     91 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 122: CLK->PCKENR |= ((uint8_t)CLK_Peripheral);
      0080D5 AE 50 C3         [ 2]   92 	ldw	x, #0x50c3
      0080D8 F6               [ 1]   93 	ld	a, (x)
      0080D9 1A 04            [ 1]   94 	or	a, (0x04, sp)
      0080DB AE 50 C3         [ 2]   95 	ldw	x, #0x50c3
      0080DE F7               [ 1]   96 	ld	(x), a
      0080DF 20 0F            [ 2]   97 	jra	00104$
      0080E1                         98 00102$:
                                     99 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 127: CLK->PCKENR &= (uint8_t)(~(uint8_t)CLK_Peripheral);
      0080E1 AE 50 C3         [ 2]  100 	ldw	x, #0x50c3
      0080E4 F6               [ 1]  101 	ld	a, (x)
      0080E5 6B 01            [ 1]  102 	ld	(0x01, sp), a
      0080E7 7B 04            [ 1]  103 	ld	a, (0x04, sp)
      0080E9 43               [ 1]  104 	cpl	a
      0080EA 14 01            [ 1]  105 	and	a, (0x01, sp)
      0080EC AE 50 C3         [ 2]  106 	ldw	x, #0x50c3
      0080EF F7               [ 1]  107 	ld	(x), a
      0080F0                        108 00104$:
      0080F0 84               [ 1]  109 	pop	a
      0080F1 81               [ 4]  110 	ret
                                    111 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 141: void CLK_MasterPrescalerConfig(CLK_MasterPrescaler_TypeDef CLK_MasterPrescaler)
                                    112 ;	-----------------------------------------
                                    113 ;	 function CLK_MasterPrescalerConfig
                                    114 ;	-----------------------------------------
      0080F2                        115 _CLK_MasterPrescalerConfig:
                                    116 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 146: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0080F2 AE 50 C0         [ 2]  117 	ldw	x, #0x50c0
      0080F5 F6               [ 1]  118 	ld	a, (x)
      0080F6 A4 FC            [ 1]  119 	and	a, #0xfc
      0080F8 F7               [ 1]  120 	ld	(x), a
                                    121 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 147: CLK->CKDIVR = (uint8_t)CLK_MasterPrescaler;
      0080F9 AE 50 C0         [ 2]  122 	ldw	x, #0x50c0
      0080FC 7B 03            [ 1]  123 	ld	a, (0x03, sp)
      0080FE F7               [ 1]  124 	ld	(x), a
      0080FF 81               [ 4]  125 	ret
                                    126 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 161: void CLK_CCOConfig(CLK_Output_TypeDef CLK_Output)
                                    127 ;	-----------------------------------------
                                    128 ;	 function CLK_CCOConfig
                                    129 ;	-----------------------------------------
      008100                        130 _CLK_CCOConfig:
                                    131 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 167: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      008100 AE 50 C5         [ 2]  132 	ldw	x, #0x50c5
      008103 F6               [ 1]  133 	ld	a, (x)
      008104 A4 F9            [ 1]  134 	and	a, #0xf9
      008106 F7               [ 1]  135 	ld	(x), a
                                    136 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 170: CLK->CCOR |= ((uint8_t)CLK_Output);
      008107 AE 50 C5         [ 2]  137 	ldw	x, #0x50c5
      00810A F6               [ 1]  138 	ld	a, (x)
      00810B 1A 03            [ 1]  139 	or	a, (0x03, sp)
      00810D AE 50 C5         [ 2]  140 	ldw	x, #0x50c5
      008110 F7               [ 1]  141 	ld	(x), a
                                    142 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 173: CLK->CCOR |= CLK_CCOR_CCOEN;
      008111 72 10 50 C5      [ 1]  143 	bset	0x50c5, #0
      008115 81               [ 4]  144 	ret
                                    145 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 181: uint32_t CLK_GetClockFreq(void)
                                    146 ;	-----------------------------------------
                                    147 ;	 function CLK_GetClockFreq
                                    148 ;	-----------------------------------------
      008116                        149 _CLK_GetClockFreq:
      008116 52 02            [ 2]  150 	sub	sp, #2
                                    151 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 186: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008118 AE 50 C0         [ 2]  152 	ldw	x, #0x50c0
      00811B F6               [ 1]  153 	ld	a, (x)
      00811C A4 03            [ 1]  154 	and	a, #0x03
                                    155 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 187: presc = HSIDivFactor[tmp];
      00811E AE 81 41         [ 2]  156 	ldw	x, #_HSIDivFactor+0
      008121 1F 01            [ 2]  157 	ldw	(0x01, sp), x
      008123 5F               [ 1]  158 	clrw	x
      008124 97               [ 1]  159 	ld	xl, a
      008125 72 FB 01         [ 2]  160 	addw	x, (0x01, sp)
      008128 F6               [ 1]  161 	ld	a, (x)
      008129 97               [ 1]  162 	ld	xl, a
                                    163 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 188: clockfrequency = HSI_VALUE / presc;
      00812A 4F               [ 1]  164 	clr	a
      00812B 95               [ 1]  165 	ld	xh, a
      00812C 90 5F            [ 1]  166 	clrw	y
      00812E 89               [ 2]  167 	pushw	x
      00812F 90 89            [ 2]  168 	pushw	y
      008131 4B 00            [ 1]  169 	push	#0x00
      008133 4B 24            [ 1]  170 	push	#0x24
      008135 4B F4            [ 1]  171 	push	#0xf4
      008137 4B 00            [ 1]  172 	push	#0x00
      008139 CD 89 D2         [ 4]  173 	call	__divulong
      00813C 5B 08            [ 2]  174 	addw	sp, #8
                                    175 ;	lib/STM8L10x_StdPeriph_Driver/src/stm8l10x_clk.c: 190: return((uint32_t)clockfrequency);
      00813E 5B 02            [ 2]  176 	addw	sp, #2
      008140 81               [ 4]  177 	ret
                                    178 	.area CODE
      008141                        179 _HSIDivFactor:
      008141 01                     180 	.db #0x01	; 1
      008142 02                     181 	.db #0x02	; 2
      008143 04                     182 	.db #0x04	; 4
      008144 08                     183 	.db #0x08	; 8
                                    184 	.area INITIALIZER
                                    185 	.area CABS (ABS)
