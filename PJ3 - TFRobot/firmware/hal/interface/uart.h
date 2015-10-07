#ifndef UART_H_
#define UART_H_

#include <stdbool.h>
#include "platform.h"
#include "eprintf.h"

void uartInit(void);
void uartSendData(uint32_t size, uint8_t* data);
int uartPutchar(int ch);
#define uartPrintf(FMT, ...) eprintf(uartPutchar, FMT, ## __VA_ARGS__)
void uartSendDataDma(uint32_t size, uint8_t* data);
void uartIsr(void);
void uartDmaIsr(void);

#endif /* UART_H_ */
