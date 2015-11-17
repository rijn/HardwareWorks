#include <stdbool.h>

#include "stm32f10x.h"

static bool isInit;

/* Interruption initialisation */
void extiInit()
{
  if (isInit)
    return;

  isInit = true;
}
