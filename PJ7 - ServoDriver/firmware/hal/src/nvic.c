#include "misc.h"

#include "exti.h"
#include "uart.h"

#define DONT_DISCARD __attribute__((used))

void nvicInit(void)
{
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);
}

// void DONT_DISCARD SysTick_Handler(void)
// {
//     // tickFreeRTOS();
// }
