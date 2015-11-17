#define DEBUG_MODULE "MAIN"

#include "config.h"
#include "system.h"
#include "platform.h"

#include "rcc.h"

#include "debug.h"

#include "adc.h"

#include "led.h"

#include "nRF24L01.h"
#include "SBN1.h"

#include "mpu9150.h"

int main()
{
    systemInit();
    platformInit();

    DEBUG_PRINT("init successfully\n");

    delay_ms(1000);

    while(0)
    {
        mpu9150Get();
        delay_ms(40);
    }

    {
        while(0)
        {
            uint8_t i;

            for(i = 0; i < 14; i++)
            {
                DEBUG_PRINT("%04d,", ADC_ConvertedValue[i]);
            }
            DEBUG_PRINT("\n");

            delay_ms(100);
        }
    }

    DEBUG_PRINT("Ready for packet \r\n");

    // nRF24L01_RxMode();
    // nRF24L01_Interrupt_Cmd(ENABLE);

    wakeupDriver();

    while(1){

        uint8_t i;

        // mpu9150Get();

        // result = dmp_read_quat(quat, &more);
        // result = mpu_get_compass_reg(compass,&sensor_timestamp);

        ledSet(0, 0);
        ledSet(1, 0);
        ledSet(2, 0);

        nrf24l01RxMode();

        // waiting package
        i = 0x00;
        while(i != RX_DR){
            i = nrf24l01RxData(nRF_ReceiveBuffer);
        }

        ledSet(0, 1);
        ledSet(1, 1);
        ledSet(2, 1);

        sbn1HandleReceived();

        DEBUG_PRINT("Received packet\r\n");

        timSetPulse(TIM2, 4, 0);
        timSetPulse(TIM4, 3, 0);
        timSetPulse(TIM2, 3, 999);
        timSetPulse(TIM4, 4, 999);

        delay_ms(2000);

        // timSetPulse(TIM2, 3, 0);
        // timSetPulse(TIM4, 3, 0);

        timSetPulse(TIM2, 4, 999);
        timSetPulse(TIM4, 3, 999);

        delay_ms(50);

        // timSetPulse(TIM2, 4, 0);
        // timSetPulse(TIM4, 4, 0);
        // timSetPulse(TIM2, 3, 0);
        // timSetPulse(TIM4, 3, 0);

        // DEBUG_PRINT("ADC ");
        // for(i = 0; i < 14; i++)
        // {
        //  DEBUG_PRINT("%5d", ADC_ConvertedValue[i]);
        // }
        // DEBUG_PRINT("\r\n");

    }

    return 0;
}
