#ifndef __NAND_H
#define __NAND_H

#include "stm32f10x.h"

typedef struct
{
  u8 Maker_ID;
  u8 Device_ID;
  u8 Third_ID;
  u8 Fourth_ID;
}NAND_IDTypeDef;

typedef struct 
{
  u16 Zone;
  u16 Block;
  u16 Page;
} NAND_ADDRESS;

/* Exported constants --------------------------------------------------------*/
/* NAND Area definition  for STM3210E-EVAL Board RevD */
#define CMD_AREA                   (u32)(1<<16)  /* A16 = CLE  high */
#define ADDR_AREA                  (u32)(1<<17)  /* A17 = ALE high */

#define DATA_AREA                  ((u32)0x00000000) 

/* FSMC NAND memory command */
#define	NAND_CMD_READ_1             ((u8)0x00)
#define	NAND_CMD_READ_TRUE          ((u8)0x30)

#define	NAND_CMD_RDCOPYBACK         ((u8)0x00)
#define	NAND_CMD_RDCOPYBACK_TRUE    ((u8)0x35)

#define NAND_CMD_PAGEPROGRAM        ((u8)0x80)
#define NAND_CMD_PAGEPROGRAM_TRUE   ((u8)0x10)

#define NAND_CMD_COPYBACKPGM        ((u8)0x85)
#define NAND_CMD_COPYBACKPGM_TRUE   ((u8)0x10)
	
#define NAND_CMD_ERASE0             ((u8)0x60)
#define NAND_CMD_ERASE1             ((u8)0xD0)  

#define NAND_CMD_READID             ((u8)0x90)	
#define NAND_CMD_STATUS             ((u8)0x70)
#define NAND_CMD_RESET              ((u8)0xFF)

#define NAND_CMD_CACHEPGM           ((u8)0x80)
#define NAND_CMD_CACHEPGM_TRUE      ((u8)0x15)

#define NAND_CMD_RANDOMIN           ((u8)0x85)
#define NAND_CMD_RANDOMOUT          ((u8)0x05)
#define NAND_CMD_RANDOMOUT_TRUE     ((u8)0xE0)

#define NAND_CMD_CACHERD_START      ((u8)0x00)
#define NAND_CMD_CACHERD_START2     ((u8)0x31)
#define NAND_CMD_CACHERD_EXIT       ((u8)0x34)

/* NAND memory status */
#define NAND_VALID_ADDRESS         ((u32)0x00000100)
#define NAND_INVALID_ADDRESS       ((u32)0x00000200)
#define NAND_TIMEOUT_ERROR         ((u32)0x00000400)
#define NAND_BUSY                  ((u32)0x00000000)
#define NAND_ERROR                 ((u32)0x00000001)
#define NAND_READY                 ((u32)0x00000040)

/* FSMC NAND memory parameters */
#define NAND_PAGE_SIZE             ((u16)0x0800) /* 2k bytes per page w/o Spare Area */
#define NAND_BLOCK_SIZE            ((u16)0x0040) /* 64x2k bytes pages per block */
#define NAND_ZONE_SIZE             ((u16)0x0400) /* 1024 Block per zone */
#define NAND_SPARE_AREA_SIZE       ((u16)0x0040) /* last 16 bytes as spare area */
#define NAND_MAX_ZONE              ((u16)0x0001) /* 4 zones of 1024 block */

/* FSMC NAND memory address computation */
#define ADDR_1st_CYCLE(ADDR)       (u8)((ADDR)& 0xFF)               /* 1st addressing cycle */
#define ADDR_2nd_CYCLE(ADDR)       (u8)(((ADDR)& 0xFF00) >> 8)      /* 2nd addressing cycle */
#define ADDR_3rd_CYCLE(ADDR)       (u8)(((ADDR)& 0xFF0000) >> 16)   /* 3rd addressing cycle */
#define ADDR_4th_CYCLE(ADDR)       (u8)(((ADDR)& 0xFF000000) >> 24) /* 4th addressing cycle */

#define BUFFER_SIZE         0x800
#define NAND_HY_MakerID    0XEC// 0xAD
#define NAND_HY_DeviceID   0XF1// 0xDA

typedef struct 
{
	u8 hour;
	u8 min;
	u8 sec;			
	u8 year;
	u8 month;
	u8 date;
	u8 model;
	u16 force;
	u8 pressure[80];
	u16 during;
}_record_data_struct;		

typedef struct 
{
	u8 hour;
	u8 min;
	u8 sec;			
	u8 year;
	u8 month;
	u8 date;
	u8 model;
	u16 force;
	u16 during;
	u8 record_block_point, record_page_point, record_data_point;
}_record_data_list;	

extern NAND_IDTypeDef NAND_ID;
extern NAND_ADDRESS WriteReadAddr;

void FSMC_NAND_Init(void);
void FSMC_NAND_ReadID(NAND_IDTypeDef* NAND_ID);
u32 FSMC_NAND_WriteSmallPage(u8 *pBuffer, NAND_ADDRESS Address, u32 NumPageToWrite);
u32 FSMC_NAND_ReadSmallPage (u8 *pBuffer, NAND_ADDRESS Address, u32 NumPageToRead);
u32 FSMC_NAND_WriteSpareArea(u8 *pBuffer, NAND_ADDRESS Address, u32 NumSpareAreaTowrite);
u32 FSMC_NAND_ReadSpareArea(u8 *pBuffer, NAND_ADDRESS Address, u32 NumSpareAreaToRead);
u32 FSMC_NAND_EraseBlock(NAND_ADDRESS Address);
u32 FSMC_NAND_Reset(void);
u32 FSMC_NAND_GetStatus(void);
u32 FSMC_NAND_ReadStatus(void);
u32 FSMC_NAND_AddressIncrement(NAND_ADDRESS* Address);
u8 Nand_Write_Data(_record_data_struct record);
u8 Nand_Reset_Data(void);

extern u16 nand_broken_block[100];
extern u8 nand_broken_block_index;
extern u16 nand_index_block_point;
extern u8 nand_index_page_point;
extern u8 nand_index_data_point;
extern u16 nand_record_block_point;
extern u8 nand_record_page_point;
extern u8 nand_record_data_point;

#endif
