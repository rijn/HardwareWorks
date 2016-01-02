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
 *   This header contains utility function prototypes and structure for 
 *   conversion between byte and other data types.
 *
 *   Created: Dec. 1, 2015    zhoudada
 *
 */

#ifndef ByteConverter_h
#define ByteConverter_h

#include "protocommon.h"

void uint16toByte(uint16_t u, uint8_t b[]);
void byteToUInt16(uint8_t b[], uint16_t * u);
void uint32toByte(uint32_t u, uint8_t b[]) ;
void byteToUInt32(uint8_t b[], uint32_t *u) ;
void int2byte(int i, uint8_t b[]);
void byte2int(uint8_t b[], int * i);
void float2byte(float f, uint8_t b[]);
void byte2float(uint8_t b[], float *f);
void double2byte(double d, uint8_t b[]) ;
void byte2double(uint8_t b[], double *d) ;

typedef union{
    uint16_t u;
    uint8_t b[2];
} UINT16_BYTES;

typedef union {
    uint32_t u;  
    uint8_t b[4];
} UINT32_BYTES;

typedef union{
    int i;
    uint8_t b[4];
} INT_BYTES;

typedef union{
    float f;
    uint8_t  b[4];
} FLOAT_BYTES;

typedef union {
    double d;
    uint8_t b[8];
} DOUBLE_BYTES;

#endif
