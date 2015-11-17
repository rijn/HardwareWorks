#ifndef __DELAY_H__
#define __DELAY_H__

void DELAY_Configuration(uint8_t SYSCLK);
void delay_ms(uint16_t nms);
void delay_us(uint32_t nus);
void delay_clk(uint32_t clk);

#endif
