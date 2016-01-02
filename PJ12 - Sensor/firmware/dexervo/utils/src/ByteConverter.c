/*    ____  U _____ u __  __    _____      _      
 *   |  _"\ \| ___"|/ \ \/"/   |_ " _| U  /"\  u  
 *   | | | | |  _|"   /\  /\     | |    \/ _ \/   
 *  U| |_| |\| |___  U /  \ u   /| |\   / ___ \
 *   |____/ u|_____|  /_/\_\   u |_|U  /_/   \_\
 *    |||_   <<   >>,-,>> \\_  _// \\_  \\    >>  
 *   (__)_) (__) (__)\_)  (__)(__) (__)(__)  (__) 
 *     ____    U  ___ u   ____     U  ___ u _____                ____  ____     
 *  U |  _"\ u  \/"_ \/U | __")u    \/"_ \/|_ " _|     ___    U /"___|/ __"| u  
 *   \| |_) |/  | | | | \|  _ \/    | | | |  | |      |_"_|   \| | u <\___ \/   
 *    |  _ <.-,_| |_| |  | |_) |.-,_| |_| | /| |\      | |     | |/__ u___) |   
 *    |_| \_\\_)-\___/   |____/  \_)-\___/ u |_|U    U/| |\u    \____||____/>>  
 *    //   \\_    \\    _|| \\_       \\   _// \\_.-,_|___|_,-._// \\  )(  (__) 
 *   (__)  (__)  (__)  (__) (__)     (__) (__) (__)\_)-' '-(_/(__)(__)(__)      
 *
 *   This file contains utility functions for conversion between
 *   byte and other data types.
 *
 *   Created: Dec. 1, 2015    zhoudada
 *
 */

#include "ByteConverter.h"

/** 
 * Reverse assign val array to x array.
 * 
 * @param   x[]     Array that will be assigned. 
 * @param   val[]   Array that is assigned to x.
 * @param   len     Number of elements that will be assigned.
 */
static inline void reverseAssign(uint8_t x[], uint8_t val[], uint8_t len) {
    uint8_t i;
    for (i = 0; i < len; i ++) {
        x[i] = val[len-i-1];
    }
}

void uint16toByte(uint16_t u, uint8_t b[]){
    UINT16_BYTES u2b;
    u2b.u = u;
    reverseAssign(b, u2b.b, 2);
}

void byteToUInt16(uint8_t b[], uint16_t * u){
    UINT16_BYTES b2u;
    reverseAssign(b2u.b, b, 2);
    *u = b2u.u;
}

void uint32toByte(uint32_t u, uint8_t b[]) {
    UINT32_BYTES u2b;
    u2b.u = u;
    reverseAssign(b, u2b.b, 4);
}

void byteToUInt32(uint8_t b[], uint32_t *u) {
    UINT32_BYTES b2u;
    reverseAssign(b2u.b, b, 4);
    *u = b2u.u;
}

void int2byte(int i, uint8_t b[]){
    INT_BYTES i2b;
    i2b.i = i;
    reverseAssign(b, i2b.b, 4);
}

void byte2int(uint8_t b[], int * i){
    INT_BYTES b2i;
    reverseAssign(b2i.b, b, 4);
    *i = b2i.i;
}

void float2byte(float f, uint8_t b[]){
    FLOAT_BYTES f2b;
    f2b.f = f;
    reverseAssign(b, f2b.b, 4);
}

void byte2float(uint8_t b[], float *f){
    FLOAT_BYTES b2f;
    reverseAssign(b2f.b, b, 4);
    *f = b2f.f;
}

void double2byte(double d, uint8_t b[]) {
    DOUBLE_BYTES d2b;
    d2b.d = d;
    reverseAssign(b, d2b.b, 8);
}

void byte2double(uint8_t b[], double *d) {
    DOUBLE_BYTES b2d;
    reverseAssign(b2d.b, b, 8);
    *d = b2d.d;
}
