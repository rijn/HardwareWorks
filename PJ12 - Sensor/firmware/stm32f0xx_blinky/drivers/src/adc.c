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

#define DEBUG_MODULE "ADC"

#include "config.h"

#include "stm32f0xx.h"
#include "stm32f0xx_adc.h"
#include "stm32f0xx_dma.h"
#include "stm32f0xx_rcc.h"

#include "debug.h"

#include "adc.h"

#define ADC1_DR_Address    0x40012440

#define Filter_N 100

__IO uint16_t adcRawValues[Filter_N][2];
__IO uint16_t adcFilteredValues[2];

static void ADC_Config ( void )
{
	ADC_InitTypeDef     ADC_InitStructure;
	GPIO_InitTypeDef    GPIO_InitStructure;

	RCC_ADCCLKConfig ( RCC_ADCCLK_HSI14 );

	/* ADC1 DeInit */
	ADC_DeInit ( ADC1 );

	/* GPIOC Periph clock enable */
	RCC_AHBPeriphClockCmd ( RCC_AHBPeriph_GPIOA, ENABLE );

	/* ADC1 Periph clock enable */
	RCC_APB2PeriphClockCmd ( RCC_APB2Periph_ADC1, ENABLE );

	/* Configure ADC Channel11 and channel10 as analog input */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1 ;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AN;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
	GPIO_Init ( GPIOA, &GPIO_InitStructure );

	/* Initialize ADC structure */
	ADC_StructInit ( &ADC_InitStructure );

	/* Configure the ADC1 in continuous mode withe a resolution equal to 12 bits  */
	ADC_InitStructure.ADC_Resolution = ADC_Resolution_12b;
	ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
	ADC_InitStructure.ADC_ExternalTrigConvEdge = ADC_ExternalTrigConvEdge_None;
	ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
	ADC_InitStructure.ADC_ScanDirection = ADC_ScanDirection_Backward;
	ADC_Init ( ADC1, &ADC_InitStructure );

	ADC_ChannelConfig ( ADC1, ADC_Channel_0 , ADC_SampleTime_1_5Cycles );
	ADC_ChannelConfig ( ADC1, ADC_Channel_1 , ADC_SampleTime_1_5Cycles );

	/* Convert the ADC1 temperature sensor  with 55.5 Cycles as sampling time */
	// ADC_ChannelConfig ( ADC1, ADC_Channel_TempSensor , ADC_SampleTime_55_5Cycles );
	// ADC_TempSensorCmd ( ENABLE );

	/* Convert the ADC1 Vref  with 55.5 Cycles as sampling time */
	// ADC_ChannelConfig ( ADC1, ADC_Channel_Vrefint , ADC_SampleTime_55_5Cycles );
	// ADC_VrefintCmd ( ENABLE );

	/* Convert the ADC1 Vbat with 55.5 Cycles as sampling time */
	// ADC_ChannelConfig ( ADC1, ADC_Channel_Vbat , ADC_SampleTime_55_5Cycles );
	// ADC_VbatCmd ( ENABLE );

	/* ADC Calibration */
	ADC_GetCalibrationFactor ( ADC1 );

	/* ADC DMA request in circular mode */
	ADC_DMARequestModeConfig ( ADC1, ADC_DMAMode_Circular );

	/* Enable ADC_DMA */
	ADC_DMACmd ( ADC1, ENABLE );

	/* Enable the ADC peripheral */
	ADC_Cmd ( ADC1, ENABLE );

	/* Wait the ADRDY flag */
	while ( !ADC_GetFlagStatus ( ADC1, ADC_FLAG_ADRDY ) );

	/* ADC1 regular Software Start Conv */
	ADC_StartOfConversion ( ADC1 );
}

static void NVIC_Config ( void )
{
	NVIC_InitTypeDef NVIC_InitStructure;

	NVIC_InitStructure.NVIC_IRQChannel = DMA1_Channel1_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPriority = 2;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;

	NVIC_Init ( &NVIC_InitStructure );
}

/**
  * @brief  DMA channel1 configuration
  * @param  None
  * @retval None
  */
static void DMA_Config ( void )
{
	DMA_InitTypeDef   DMA_InitStructure;
	/* DMA1 clock enable */
	RCC_AHBPeriphClockCmd ( RCC_AHBPeriph_DMA1 , ENABLE );

	/* DMA1 Channel1 Config */
	DMA_DeInit ( DMA1_Channel1 );
	DMA_InitStructure.DMA_PeripheralBaseAddr = ( uint32_t ) ADC1_DR_Address;
	DMA_InitStructure.DMA_MemoryBaseAddr = ( uint32_t ) &adcRawValues;
	DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;
	DMA_InitStructure.DMA_BufferSize = (Filter_N * 2);
	DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
	DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
	DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
	DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
	DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;
	DMA_InitStructure.DMA_Priority = DMA_Priority_High;
	DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
	DMA_Init ( DMA1_Channel1, &DMA_InitStructure );
	/* DMA1 Channel1 enable */
	DMA_Cmd ( DMA1_Channel1, ENABLE );

	DMA_ITConfig ( DMA1_Channel1, DMA_IT_TC, ENABLE );

}

static void filter ( void )
{
	uint32_t sum = 0;
	uint8_t count, i;

	for ( i = 0; i < 2; i++ )
	{
		for ( count = 0; count < Filter_N; count++ )
		{
			sum += adcRawValues[count][i];
		}

		adcFilteredValues[i] = sum / Filter_N;
		sum = 0;
	}

	return;
}

void DMA1_Channel1_IRQHandler ( void )
{
	if ( DMA_GetITStatus ( DMA1_IT_TC1 ) != RESET )
	{
		filter();
		DMA_ClearITPendingBit ( DMA1_IT_TC1 );
	}
}

void adcInit()
{
	NVIC_Config();
	ADC_Config();
	DMA_Config();

	DEBUG_PRINT ( "init successfully\n" );
}

