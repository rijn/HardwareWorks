/*
 *  ____    ____    __   __   ______  ______
 * /\  _`\ /\  _`\ /\ \ /\ \ /\__  _\/\  _  \
 * \ \ \/\ \ \ \L\_\ `\`\/'/'\/_/\ \/\ \ \L\ \
 *  \ \ \ \ \ \  _\L`\/ > <     \ \ \ \ \  __ \
 *   \ \ \_\ \ \ \L\ \ \/'/\`\   \ \ \ \ \ \/\ \
 *    \ \____/\ \____/ /\_\\ \_\  \ \_\ \ \_\ \_\
 *     \/___/  \/___/  \/_/ \/_/   \/_/  \/_/\/_/
 *
 * Originally created by Dexta Robotics.
 * Copyright <C> Dexta Robotics, 2015.
 * All rights reserved.
 */

#define DEBUG_MODULE "MAIN"

#include "stm32f0xx_conf.h"
#include "platform.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "blackmagic.h"

#include "tim.h"
#include "rcc.h"
#include "debug.h"
#include "usart_simplified.h"
#include "led.h"
#include "i2c.h"
#include "Protocol.h"

#include "hdc1050.h"
/* Protocol protocol; */


int main()
{
    platformInit();
    DEBUG_PRINT ( "system init successfully.\r\n" );
    /* PROTOCOL.init(&protocol); */

    // USART.printStr ( "\nsystem init successfully\n" );
    // ledSet ( 0, 0 );
    // USART.printInt((uint32_t)(pidController.input * 1000));
    /* if (USART.readByte(&byte)) { */
    /* Packet packet; */
    /* PROTOCOL.initPacket(&protocol, &packet); */
    /* PAYLOAD.addByte(&(packet.payload), byte);  */
    /* PROTOCOL.writePacket(&packet); */
    /* } */

    delay_ms ( 10 );

    uint8_t i;

    while ( 1 )
    {

        // i2cReadBytes ( 0x80, 1, 1, &i );

        // ledSet ( 0, 1 );
        // delay_ms ( 1 );
        // ledSet ( 0, 0 );

        for ( i = 1; i < 128; i++ )
        {
            uint8_t temp;

            // if ( i2cProbe ( i << 1 ) == I2C_OK )
            // i2cReadBytes ( uint8_t driverAddr, uint8_t startAddr, uint8_t length, uint8_t * readBuffer )
            if ( i2cReadBytes ( i << 1, 0, 1, &temp ) == I2C_OK )
            {
                USART.printStr ( "find device at " );
                USART.printInt ( i );
                USART.printStr ( "\n" );
            }

            // delay_ms ( 1 );
        }
    }

    // hdc1050Reset();
    // hdc1050Setup();
    // USART.printStr ( "hdc1050 id => " );
    // USART.printInt ( hdc1050GetDeviceId() );
    // USART.printStr ( "\n" );

    // while ( 1 )
    // {
    //     USART.printInt  ( hdc1050ReadTemperature() );
    //     USART.printStr ( "\n" );
    //     delay_ms ( 1000 );
    // }

    return 0;
}


#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed ( uint8_t * file, uint32_t line )
{
    /* User can add his own implementation to report the file name and line number,
       ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

    /* Infinite loop */
    while ( 1 )
    {
    }
}
#endif
