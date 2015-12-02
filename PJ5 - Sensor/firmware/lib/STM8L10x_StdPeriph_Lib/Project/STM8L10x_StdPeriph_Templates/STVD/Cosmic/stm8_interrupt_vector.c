/*	BASIC INTERRUPT VECTOR TABLE FOR STM8 devices
 *	Copyright (c) 2012 STMicroelectronics
 */


#include "stm8l10x_it.h"

typedef void @far (*interrupt_handler_t)(void);

struct interrupt_vector {
	uint8_t interrupt_instruction;
	interrupt_handler_t interrupt_handler;
};

struct interrupt_vector const _vectab[] = {
  {0x82, (interrupt_handler_t)_stext},		/* Reset */
  {0x82, (interrupt_handler_t)TRAP_IRQHandler}, 			  /* TRAP - Software interrupt  [for GP products]*/
  {0x82, (interrupt_handler_t)NonHandledInterrupt}, 		/* irq0 - Reserved */
  {0x82, (interrupt_handler_t)FLASH_IRQHandler}, 			  /* irq1 - FLASH interrupt */
  {0x82, (interrupt_handler_t)NonHandledInterrupt}, 		/* irq2 - Reserved */
  {0x82, (interrupt_handler_t)NonHandledInterrupt}, 	  /* irq3 - Reserved */
  {0x82, (interrupt_handler_t)AWU_IRQHandler}, 		    	/* irq4 - Auto Wake Up interrupt */
  {0x82, (interrupt_handler_t)NonHandledInterrupt},     /* irq5 - Reserved */
  {0x82, (interrupt_handler_t)EXTIB_IRQHandler},        /* irq6 - External IT PORTB interrupt */
  {0x82, (interrupt_handler_t)EXTID_IRQHandler}, 			  /* irq7 - External IT PORTD interrupt */
  {0x82, (interrupt_handler_t)EXTI0_IRQHandler}, 			  /* irq8 - External IT PIN0 interrupt */
  {0x82, (interrupt_handler_t)EXTI1_IRQHandler}, 			  /* irq9 - External IT PIN1 interrupt */
  {0x82, (interrupt_handler_t)EXTI2_IRQHandler}, 			  /* irq10 - External IT PIN2 interrupt */
  {0x82, (interrupt_handler_t)EXTI3_IRQHandler}, 		    /* irq11 - External IT PIN3 interrupt */
  {0x82, (interrupt_handler_t)EXTI4_IRQHandler},        /* irq12 - External IT PIN4 interrupt */
  {0x82, (interrupt_handler_t)EXTI5_IRQHandler},        /* irq13 - External IT PIN5 interrupt */
  {0x82, (interrupt_handler_t)EXTI6_IRQHandler},        /* irq14 - External IT PIN6 interrupt */
  {0x82, (interrupt_handler_t)EXTI7_IRQHandler},        /* irq15 - External IT PIN7 interrupt */
  {0x82, (interrupt_handler_t)NonHandledInterrupt},     /* irq16 - Reserved */
  {0x82, (interrupt_handler_t)NonHandledInterrupt},     /* irq17 - Reserved */
  {0x82, (interrupt_handler_t)COMP_IRQHandler},         /* irq18 - Comparator interrupt */
  {0x82, (interrupt_handler_t)TIM2_UPD_OVF_TRG_BRK_IRQHandler},       /* irq19 - Timer2 Update/Overflow/Trigger/Break interrupt */
  {0x82, (interrupt_handler_t)TIM2_CAP_IRQHandler},     /* irq20 - Timer2 Capture/Compare interrupt */
  {0x82, (interrupt_handler_t)TIM3_UPD_OVF_TRG_BRK_IRQHandler},       /* irq21 - Timer3 Update/Overflow/Trigger/Break interrupt */
  {0x82, (interrupt_handler_t)TIM3_CAP_IRQHandler}, 		/* irq22 - Timer3 Capture/Compare interrupt */
  {0x82, (interrupt_handler_t)NonHandledInterrupt},     /* irq23 - Reserved */
  {0x82, (interrupt_handler_t)NonHandledInterrupt},     /* irq24 - Reserved */
  {0x82, (interrupt_handler_t)TIM4_UPD_OVF_IRQHandler}, /* irq25 - Timer4 Update/Overflow interrupt */
  {0x82, (interrupt_handler_t)SPI_IRQHandler},          /* irq26 - SPI interrupt */
  {0x82, (interrupt_handler_t)USART_TX_IRQHandler},     /* irq27 - USART TX interrupt */
  {0x82, (interrupt_handler_t)USART_RX_IRQHandler},     /* irq28 - USART RX interrupt */
  {0x82, (interrupt_handler_t)I2C_IRQHandler},          /* irq29 - I2C interrupt */
};

/******************* (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
