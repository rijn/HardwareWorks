/*
 *  ____    ____    __   __   ______  ______
 * /\  _`\ /\  _`\ /\ \ /\ \ /\__  _\/\  _  \
 * \ \ \/\ \ \ \L\_\ `\`\/'/'\/_/\ \/\ \ \L\ \
 *  \ \ \ \ \ \  _\L`\/ > <     \ \ \ \ \  __ \
 *   \ \ \_\ \ \ \L\ \ \/'/\`\   \ \ \ \ \ \/\ \
 *    \ \____/\ \____/ /\_\\ \_\  \ \_\ \ \_\ \_\
 *     \/___/  \/___/  \/_/ \/_/   \/_/  \/_/\/_/ *
 * Originally created by Dexta Robotics.
 * Copyright <C> Dexta Robotics, 2015.
 * All rights reserved.
 */

#ifndef USART_SIMPLIFIED_H
#define USART_SIMPLIFIED_H

#include "stm32f0xx.h"
#include "stm32f0xx_conf.h"
#include "stm32f0xx_usart.h"
#include "stm32f0xx_gpio.h"
#include "stm32f0xx_misc.h"
#include "stm32f0xx_rcc.h"
#include "queue.h"

#define USARTy_IRQx             USART1_IRQn
#define RCC_Periph_USART        RCC_APB2Periph_USART1
#define USART_Tx_Pin            GPIO_Pin_2
#define USART_Rx_Pin            GPIO_Pin_3
#define USART_Tx_PinSource      GPIO_PinSource2
#define USART_Rx_PinSource      GPIO_PinSource3
#define USART_BAUD_RATE         115200
#define GPIO_AF_x               GPIO_AF_1
#define GPIOx                   GPIOA
#define RCC_AHBPeriph_GPIOx     RCC_AHBPeriph_GPIOA
#define USARTx                  USART1
#define USART1_IRQ_EN
#define DMA_USART_CHANNEL_IRQn  DMA1_Channel2_3_IRQn
#define DMA_USART_CHANNEL       DMA1_Channel2
#define DMA1_Channel2_3_IRQ_EN
#define USING_DMA

typedef struct {
    // Tx in progress flag
    volatile uint8_t    txInProgress;
    // Rx in progress flag
    volatile uint8_t    rxInProgress;
    // Actual data length transfer in the current Tx.
    volatile uint16_t   txCount;
    // Actual data length received in Rx.
    volatile uint16_t   rxCount;
    // Pointer to Tx buffer
    Queue               *Txq;
    // Pointer to Rx buffer
    Queue               *Rxq;
} USARTBufStruct;

typedef struct {
    // Initialize NVIC and USART configuration
    void    (*init)();
    // Initialize USART buffer struct
    void    (*bufInit)();
    // Put a single character in Tx buffer which will be sent using interrupt
    void    (*putcharIrq)(char data);
    // Get a single character from Rx buffer
    uint8_t (*readByte)(uint8_t *);
    // Get a single character from Rx buffer and send it back
    // void    (*echo)();
    // Send a single characeter via USART directly and wait for it to finish
    void    (*putchar)(char c);
    // Put a string to Tx buffer
    void    (*printStr)(char *str);
    // USART IRQ handler
    // void    (*irqHandler)();
    // USART IRQ handler when using DMA
    // void    (*usartDmaIrqHandler)();
    // Convert an integer to string and place it in Tx buffer
    void    (*printInt)(uint32_t x);
} USARTStruct;

typedef struct {
    // Initialize DMA for USART
    void    (*init)();
    // Send data over USART using DMA
    void    (*send)(uint8_t *data, uint16_t dataLength);
    // Read all Rx buffer and send all of them back over USART using DMA.
    // If there is no data in Rx buffer, return immediately.
    // void    (*echo)();
} USART_DMAStruct;

// Global USART Tx and Rx buffer
extern USARTBufStruct USARTBuf;
// Class methods for USART
extern USARTStruct USART;
// Class methods for USART DMA
extern USART_DMAStruct USART_DMA;

#endif // USART_SIMPLIFIED_H
