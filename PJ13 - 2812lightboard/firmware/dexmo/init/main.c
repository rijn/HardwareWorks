/*
 *  ____  _   _ _____
 * | __ )| | | |  ___|
 * |  _ \| |_| | |_
 * | |_) |  _  |  _|
 * |____/|_| |_|_|
 *
 * Originally created by Dexta Robotics.
 * Copyright <C> Dexta Robotics, 2015.
 * All rights reserved.
 */

#define DEBUG_MODULE "MAIN"

#include "stm32f10x.h"
#include "config.h"
#include "system.h"
#include "platform.h"

#include "timer.h"

#include "debug.h"

#include "led.h"

#include "ws2812.h"

double hue2rgb ( double v1, double v2, double vH )
{
    if ( vH < 0 )
    {
        vH += 1;
    }

    if ( vH > 1 )
    {
        vH -= 1;
    }

    if ( ( 6 * vH ) < 1 )
    {
        return ( v1 + ( v2 - v1 ) * 6 * vH );
    }

    if ( ( 2 * vH ) < 1 )
    {
        return v2;
    }

    if ( ( 3 * vH ) < 2 )
    {
        return ( v1 + ( v2 - v1 ) * ( ( 2.0 / 3.0 ) - vH ) * 6 );
    }

    return v1;
}

//HSL from 0 to 240; RGB results from 0 to 255
void hsl2rgb ( double h, double s, double l, uint8_t * R, uint8_t * G, uint8_t * B )
{
    double v1, v2;

    double H = h / 240;
    double S = s / 240;
    double L = l / 240;

    if ( 0 == S )
    {
        *R = L * 255;
        *G = L * 255;
        *B = L * 255;
    }
    else
    {
        if ( L < 0.5 )
        {
            v2 = L * ( 1 + S );
        }
        else
        {
            v2 = ( L + S ) - ( L * S );
        }

        v1 = 2 * L - v2;

        *R = ( uint8_t ) ( 255 * hue2rgb ( v1, v2, H + ( 1.0 / 3.0 ) ) );
        *G = ( uint8_t ) ( 255 * hue2rgb ( v1, v2, H ) );
        *B = ( uint8_t ) ( 255 * hue2rgb ( v1, v2, H - ( 1.0 / 3.0 ) ) );
    }
}

int main()
{
    platformInit();

    ws2812Struct ws2812_a, ws2812_b;
    // uint8_t data[7] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xFF, 0x00};
    uint8_t data[48];
    // ws2812Init();

    uint8_t i;

    ws2812_a = WS2812.init ( GPIOA, GPIO_Pin_6 );
    ws2812_b = WS2812.init ( GPIOA, GPIO_Pin_7 );
    // WS2812.setIntensity ( &ws2812_a, 0.2 );
    // WS2812.setIntensity ( &ws2812_b, 0.2 );

    // WS2812.enableBreathing ( &ws2812_a, timerGetRun );
    // WS2812.enableBreathing ( &ws2812_b, timerGetRun );

    double h;
    double kh = 10, dh = 0.3, ch = 11, N = 8;

    while ( 1 )
    {
        for ( h = 0; h < 240; h += dh )
        {
            for ( i = 0; i < 8; i++ )
            {
                double _h;
                _h = h + i * kh;

                if ( _h > 240 )
                {
                    _h -= 240;
                }

                hsl2rgb ( _h, 240, 120, data + i * 3 + 0, data + i * 3 + 1, data + i * 3 + 2 );
            }

            for ( i = 0; i < 8; i++ )
            {
                double _h;
                _h = h + ( i + 8 + ch ) * kh;

                if ( _h > 240 )
                {
                    _h -= 240;
                }

                hsl2rgb ( _h, 240, 120, data + ( 15 - i ) * 3 + 0, data + ( 15 - i ) * 3 + 1, data + ( 15 - i ) * 3 + 2 );
            }

            WS2812.sendData ( &ws2812_a, data + 24, 24 );
            WS2812.sendData ( &ws2812_b, data, 24 );
            delay_ms ( 2 );
        }
    }

    while ( 1 )
    {
        WS2812.sendData ( &ws2812_a, data, 24 );
        WS2812.sendData ( &ws2812_b, data, 24 );
        delay_ms ( 5 );
    }

    return 0;
}

