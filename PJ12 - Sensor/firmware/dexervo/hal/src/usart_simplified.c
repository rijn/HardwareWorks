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

#include "usart_simplified.h"

// USART functions
static void usartInit();
static void usartBufInitGeneral(USARTBufStruct * usartBuf);
static void usartBufInit();
static void USART_putchar_irq(char data);
static uint8_t USART_readByte();
static void USART_echo();
static void USART_putchar(char c);
static uint16_t str_len(char *s);
static void USART_print_str(char *str, uint32_t len);
static void USART_print_str_without_len(char *str);
static void usartIRQ();
static void usartDmaIRQ();
static void USART_print_int(uint32_t x);

// Rx buffer of USART
static Queue Rxq;
// Tx buffer of USART
static Queue Txq;
// flag showing Tx buffer is empty
volatile uint8_t tx_empty = 0;

// USART Rx and Tx buffers exported
USARTBufStruct USARTBuf = {
    0,
    0,
    0,
    0,
    &Txq,
    &Rxq
};

USARTStruct USART = {
    usartInit,
    usartBufInit,
    USART_putchar_irq,
    USART_readByte,
    /* USART_echo, */
    USART_putchar,
    USART_print_str_without_len,
    /* usartIRQ, */
    /* usartDmaIRQ, */
    USART_print_int
};

// DMA USART functions
static void dmaInit();
static void dmaNvicInit();
static void dmaUsartInitCommon(DMA_Channel_TypeDef * DMAy_Channelx);
static void dmaStop(DMA_Channel_TypeDef * DMAy_Channelx);
static void dmaUsartStart(DMA_Channel_TypeDef * DMAy_Channelx,
                            uint8_t *tx_buf, uint32_t count);
static void dmaUsartSend(uint8_t *data, uint16_t dataLength);
static void dmaUsartEcho();
static void dmaUsartIRQ();

// Global DMA config for USART
DMA_InitTypeDef DMA_USART_InitStructure;

USART_DMAStruct USART_DMA = {
    dmaInit,
    dmaUsartSend,
    /* dmaUsartEcho */
};

/**
 * Initialize USART
 */
static void usartInit()
{
    NVIC_InitTypeDef NVIC_InitStructure;

    NVIC_InitStructure.NVIC_IRQChannel = USARTy_IRQx;
    NVIC_InitStructure.NVIC_IRQChannelPriority = 3;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

    USART_InitTypeDef USART_InitStructure;
    GPIO_InitTypeDef GPIO_InitStructure;

    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOx, ENABLE);

    RCC_APB2PeriphClockCmd(RCC_Periph_USART, ENABLE);

    GPIO_PinAFConfig(GPIOx, USART_Tx_PinSource, GPIO_AF_x);
    GPIO_PinAFConfig(GPIOx, USART_Rx_PinSource, GPIO_AF_x);

    // Configure USART1 pins:  Rx and Tx ----------------------------
    GPIO_InitStructure.GPIO_Pin =  USART_Tx_Pin | USART_Rx_Pin;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
    GPIO_Init(GPIOx, &GPIO_InitStructure);

    USART_InitStructure.USART_BaudRate = USART_BAUD_RATE;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USARTx, &USART_InitStructure);

    USART_Cmd(USARTx,ENABLE);
#ifndef USING_DMA
    USART_ITConfig(USARTx, USART_IT_TXE, ENABLE);
#endif
    USART_ITConfig(USARTx, USART_IT_RXNE, ENABLE);
    USART_putchar('X');
}

/**
 * General init function for USARTBufStruct
 *
 * @param   usartBuf    Pointer to the struct that will be initialized
 */
static void usartBufInitGeneral(USARTBufStruct * usartBuf) {
    usartBuf->txInProgress = 0;
    usartBuf->rxInProgress = 0;
    usartBuf->txCount = 0;
    usartBuf->rxCount = 0;
    QUEUE.init(usartBuf->Txq);
    QUEUE.init(usartBuf->Rxq);
}

/**
 * Default init function for USARTBuf
 */
static void usartBufInit() {
    usartBufInitGeneral(&USARTBuf);
}

/**
 * Put a character into Tx queue, which will be transmitted throught USART
 * using interrupt. If Tx queue is full. It will wait until Tx is not full.
 *
 * @param   data    The character that will be sent
 */
static void USART_putchar_irq(char data) {
    while (!QUEUE.enqueue(&Txq, data));
    if (tx_empty) {
         tx_empty = 0;
         USART_ITConfig(USARTx, USART_IT_TXE, ENABLE);
    }
}

/**
 * Get a character from Rx queue, filled by USART interrup handler. If Rx
 * queue is empty, it will return 0.
 *
 * @param   data    Pointer to the data get from the Rx queue.
 * @return  1 if read is successful. 0 if Rx buffer is empty.
 */
static uint8_t USART_readByte(uint8_t *data) {
    // Rx buffer may be reset by interrupt when interrupt tries to write
    // and Rx buffer is full. To avoid racing condition, disable interrupt
    // temporarily.
    disableIrq();
    if (!QUEUE.dequeue(&Rxq, data)) {
        // If Rx buffer is empty, return 0 straight away.
        return 0;
    }
    enableIrq();
    return 1;
}

/**
 * Read all current data from Rx buffer and send them all back through USART.
 * If Rx queue is empty, it will return straight away.
 */
static void USART_echo() {
    uint8_t c;
    while (USART_readByte(&c)) {
#ifdef USING_DMA
        USART_putchar(c);
#else
        USART_putchar_irq(c);
#endif
    }
}

/**
 * Send the data directly without using buffers or interrupt.
 *
 * @param   c   Character that will be sent.
 */
static void USART_putchar(char c) {
    USART_SendData(USARTx, c);
    while (USART_GetFlagStatus(USARTx, USART_FLAG_TC) == RESET);

}

/**
 * Calculate the length of a string (without final '\0')
 *
 * @param   s   Pointer to the first character of the string
 *
 * @return
 */
static uint16_t str_len(char *s) {
    uint16_t count = 0;
    while (s[count] != '\0') {
        count ++;
    }
    return count;
}


/**
 * Put all characters of the string into Tx queue, which will later be sent
 * over USART.
 *
 * @param   str     Pointer to the position of the first character of the
 *                  string.
 * @param   len     Number of characters that will be put into Tx queue.
 */
static void USART_print_str(char *str, uint32_t len) {
    uint32_t i;
    for (i = 0; i < len; i ++) {
#ifdef USING_DMA
        USART_putchar(str[i]);
#else
        USART_putchar_irq(str[i]);
#endif
    }
}

/**
 * Same as USART_print_str, but it calculates length of string automatically
 *
 * @param   str     Pointer to the starting position of the string
 */
static void USART_print_str_without_len(char *str) {
    USART_print_str(str, str_len(str));
}

/**
 * USART interrupt handler.
 */
static void usartIRQ() {
    uint8_t data;
    if (USART_GetITStatus(USARTx, USART_IT_RXNE) != RESET) {
        data = USART_ReceiveData(USARTx) & 0xff;
        QUEUE.enqueue(&Rxq, data);
    }
    if (USART_GetITStatus(USARTx, USART_IT_TXE) != RESET) {
        if (QUEUE.dequeue(&Txq, &data)) {
            USART_SendData(USARTx, data);
        }
        else {
            USART_ITConfig(USARTx, USART_IT_TXE, DISABLE);
            tx_empty = 1;
        }
    }
}

/**
 * USART interrupt handler when using DMA.
 */
static void usartDmaIRQ() {
    uint8_t data;
    if (USART_GetITStatus(USARTx, USART_IT_RXNE) != RESET) {
        data = USART_ReceiveData(USARTx) & 0xff;
        if (!QUEUE.enqueue(&Rxq, data)) {
            // If Rx buffer is full, reset head and tail to ensure we get
            // the latest data.
            QUEUE.reset(&Rxq);
            if (!QUEUE.enqueue(&Rxq, data)) {
                USART.printStr("Error!!!");
            }
        }
    }
}

/**
 * Break the 32-bit unsigned integer into digits in base 10 and put them into
 * Tx queue, which will be transmitted over USART.
 *
 * @param   x   The integer that will be transmitted.
 */
static void USART_print_int(uint32_t x) {
    if (x == 0) {
#ifdef USING_DMA
        USART_putchar('0');
#else
        USART_putchar_irq('0');
#endif
        return;
    }
    char digits[10];
    uint8_t digit_nr = 0;
    while (x > 0) {
        uint32_t temp = x % 10;
        digits[digit_nr] = temp + '0';
        digit_nr ++;
        x /= 10;
    }
    uint8_t i;
    for (i = digit_nr; i > 0; i --) {
#ifdef USING_DMA
        USART_putchar(digits[i-1]);
#else
        USART_putchar_irq(digits[i-1]);
#endif
    }
}

/**
 * USART IRQ handler.
 *
 */
#ifdef USART1_IRQ_EN
void USART1_IRQHandler() {
#ifdef USING_DMA
    usartDmaIRQ();
#else
    usartIRQ();
#endif
}
#endif

/**
 * Initialize DMA NVIC configuration and common DMA strucure for USART Tx.
 */
static void dmaInit() {
    dmaNvicInit();
    dmaUsartInitCommon(DMA_USART_CHANNEL);
}

/**
 * Configure NVIC to enable DMA interrupts for USART Tx.
 */
static void dmaNvicInit() {
    NVIC_InitTypeDef NVIC_InitStructure;
    // Enable DMA channel interrupts
    NVIC_InitStructure.NVIC_IRQChannel = DMA_USART_CHANNEL_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPriority = 2;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
}

/**
 * Configure common settings of DMA channel for USART.
 *
 * @param   DMAy_Channelx   The DMA channel chosen for USART Tx.
 */
static void dmaUsartInitCommon(DMA_Channel_TypeDef * DMAy_Channelx) {
    // Enable RCC clock for DMA
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);

    DMA_DeInit(DMAy_Channelx);

    DMA_USART_InitStructure.DMA_PeripheralBaseAddr = (uint32_t)(&(USARTx->TDR));
    DMA_USART_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
    DMA_USART_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
    DMA_USART_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
    DMA_USART_InitStructure.DMA_Mode = DMA_Mode_Normal;
    DMA_USART_InitStructure.DMA_Priority = DMA_Priority_Low;
    DMA_USART_InitStructure.DMA_M2M = DMA_M2M_Disable;
    DMA_USART_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
    DMA_USART_InitStructure.DMA_DIR = DMA_DIR_PeripheralDST;
    DMA_Init(DMAy_Channelx, &DMA_USART_InitStructure);
}

/**
 * Disable DMA channel, DMA function during USART Tx and related DMA
 * interrupts. Wait until DMA has actually stopped
 *
 * @param   DMAy_Channelx   The DMA channel used for USART Tx, which will be
 *                          stopped.
 */
static void dmaStop(DMA_Channel_TypeDef * DMAy_Channelx) {
    DMA_ITConfig(DMAy_Channelx, DMA_IT_TE, DISABLE);
    DMA_ITConfig(DMAy_Channelx, DMA_IT_TC, DISABLE);
    DMA_Cmd(DMAy_Channelx, DISABLE);
    USART_DMACmd(USARTx, USART_DMAReq_Tx, DISABLE);
    // Wait until DMA has actually stopped.
    while (DMAy_Channelx->CCR & DMA_CCR_EN);
}

/**
 * Start DMA to transfer data from a specific posiion of Rx buffer over USART
 * and enable DMA interrupts of transfer complete and transfer error. This
 * function should not be called directly. Call dmaUsartSend instead to
 * transmit USART data using DMA, because it avoids racing condition when
 * DMA has already started and takes into account of buffer overflow.
 *
 * @param   DMAy_Channelx   DMA channel used for USART Tx.
 * @param   tx_buf          Pointer to the position of the first character of
 *                          USART Tx buffer that will be transmitted.
 * @param   count           Number of characters that will be transmitted.
 */
static void dmaUsartStart(DMA_Channel_TypeDef * DMAy_Channelx,
                            uint8_t *tx_buf, uint32_t count) {
    if (count == 0) {
        return;
    }

    DMA_USART_InitStructure.DMA_BufferSize = count;
    DMA_USART_InitStructure.DMA_MemoryBaseAddr = (uint32_t)tx_buf;
    DMA_Init(DMAy_Channelx, &DMA_USART_InitStructure);

    USART_DMACmd(USARTx, USART_DMAReq_Tx, ENABLE);
    DMA_ITConfig(DMAy_Channelx, DMA_IT_TC, ENABLE);
    DMA_ITConfig(DMAy_Channelx, DMA_IT_TE, ENABLE);
    DMA_Cmd(DMAy_Channelx, ENABLE);
}

/**
 * Main function to send an array of data using DMA over USART. It will
 * put data into USART Tx buffer. If the buffer will be overflowed, it will
 * reset head and tail of Tx buffer to 0 and then enqueue the entire data.
 * If still the buffer is overflowed, i.e. the dataLength is bigger than the
 * buffer size, data will be truncated such that only the latest data is
 * enqueued. If USART DMA is in progress, it will only enqueue data and won't
 * restart DMA. DMA interrupt handler will check if there is any new data in
 * the Tx buffer when it finishes the current transmission.
 *
 * @param   data        Actual data that will be sent
 * @param   dataLength  Number of bytes of data that will be sent
 */
static void dmaUsartSend(uint8_t *data, uint16_t dataLength) {
    uint32_t i;
    // Firstly, check if USART Tx buffer will be full if all data is enqueued

    // Empty space in Tx buffer
    uint16_t emptySpace;
    // Actual data length that can be transmitted after taking into account
    // empty space of the buffer
    uint16_t actualLength = dataLength;
    if (USARTBuf.Txq->tail > USARTBuf.Txq->head) {
        emptySpace = USARTBuf.Txq->tail - 1 - USARTBuf.Txq->head;
    }
    else {
        emptySpace = QUEUE_SIZE - USARTBuf.Txq->head - 1 + USARTBuf.Txq->tail;
    }
    if (dataLength > emptySpace) {
        // Tx buffer will be full, so stop DMA and reset head and tail in
        // Tx buffer to ensure the latest data can be transferred.
        dmaStop(DMA_USART_CHANNEL);
        USARTBuf.txInProgress = 0;
        // If transferred data is bigger than QUEUE_SIZE, we only allow the
        // last data to be transmitted.
        actualLength = dataLength % QUEUE_SIZE;
        //USART.printStr("Reset queue.");
        QUEUE.reset(USARTBuf.Txq);
    }

    // Transfer all data in Tx buffer
    for (i = dataLength - actualLength; i < dataLength; i ++) {
        if (!QUEUE.enqueue(USARTBuf.Txq, data[i])) {
            // This should not happen
        }
    }
    // If USART Tx is not in progress, start DMA to transfer data. If Tx
    // is in progress, DMA interrupt handler will check if there is any
    // leftover data when it finishes the current transfer.
    if (!USARTBuf.txInProgress) {
        uint8_t sendAgain;
        // Calculate the max data available without wrapping the buffer
        USARTBuf.txCount = QUEUE.dataAvailNonwrap(USARTBuf.Txq, &sendAgain);
        USARTBuf.txInProgress = 1;
        dmaUsartStart(DMA_USART_CHANNEL, USARTBuf.Txq->buf + USARTBuf.Txq->tail,
                USARTBuf.txCount);
    }
}

/**
 * Read all bytes from Rx buffer and send them through USART DMA. Can be used
 * for debug.
 */
static void dmaUsartEcho() {
    uint16_t size = 50;
    char chs[size];
    uint16_t count = 0;
    uint8_t c;
    while (USART.readByte(&c)) {
        if (count >= size) {
            dmaUsartSend((uint8_t *)chs, size);
            count = 0;
        }
        chs[count++] = c;
    }
    if (count > 0) {
        dmaUsartSend((uint8_t *)chs, count);
    }
}

/**
 * USART DMA interrupt handler. It will check if there is any more data in
 * Tx buffer. If so, it will start DMA again to send them all.
 */
static void dmaUsartIRQ() {
    dmaStop(DMA_USART_CHANNEL);
    if (DMA_GetITStatus(DMA1_IT_TC2) != RESET) {
        DMA_ClearITPendingBit(DMA1_IT_TC2);
    }
    else if (DMA_GetITStatus(DMA1_IT_TE2) != RESET) {
        // DMA error occured
        // TODO: Delete this debug print
        USART.printStr("DMA Error occured.");
        DMA_ClearITPendingBit(DMA1_IT_TE2);
    }
    // Regardless of the interrupt being TC or TE, increment the tail.
    // Add tail of Txq by the number of data transferred
    QUEUE.incrIndex(&((USARTBuf.Txq)->tail), USARTBuf.txCount);
    uint8_t sendAgain;
    // Check if there is any leftover data in the Txq
    USARTBuf.txCount = QUEUE.dataAvailNonwrap(USARTBuf.Txq, &sendAgain);
    if (USARTBuf.txCount > 0) {
        // Send again if there is leftover data
        dmaUsartStart(DMA_USART_CHANNEL, USARTBuf.Txq->buf + USARTBuf.Txq->tail,
                USARTBuf.txCount);
    }
    else {
        USARTBuf.txInProgress = 0;
    }
}

#ifdef DMA1_Channel2_3_IRQ_EN
/**
 * Actual DMA interrupt handler
 */
void DMA1_Channel2_3_IRQHandler() {
    dmaUsartIRQ();
}
#endif
