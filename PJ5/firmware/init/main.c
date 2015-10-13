#include "stm8l10x.h"

#include "stm8l10x_gpio.h"

int main() {
	GPIO_Init(GPIOA, GPIO_Pin_1, GPIO_Mode_Out_PP_High_Fast);

	return 0;
        // int d;
        // // Configure pins
        // PB_DDR = 0x20;
        // PB_CR1 = 0x20;
        // // Loop
        // do {
        //         PB_ODR ^= 0x20;
        //         for(d = 0; d < 29000; d++) { }
        // } while(1);
}