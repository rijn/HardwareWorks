#include <inttypes.h>
#include "malloc.h"
#include "blackmagic.h"

uint32_t getMemoryAvailable(){
    void * heapTop = malloc(4);
    uint8_t stackTop;
    uint32_t freeMem = ((void *)&stackTop - heapTop);
    free(heapTop);
    return freeMem;
}
