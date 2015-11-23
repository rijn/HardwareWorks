#include "nand.h"
#include "oled.h"

#define FSMC_Bank_NAND     FSMC_Bank2_NAND
#define Bank_NAND_ADDR     Bank2_NAND_ADDR 
#define Bank2_NAND_ADDR    ((u32)0x70000000)

#define ROW_ADDRESS (Address.Page + (Address.Block + (Address.Zone * NAND_ZONE_SIZE)) * NAND_BLOCK_SIZE)

u16 nand_broken_block[100];
u8 nand_broken_block_index = 0;
u16 nand_index_block_point = 0x02;
u8 nand_index_page_point = 0;
u8 nand_index_data_point = 0;
u16 nand_record_block_point = 0x10;
u8 nand_record_page_point = 0;
u8 nand_record_data_point = 0;
NAND_IDTypeDef NAND_ID;
NAND_ADDRESS WriteReadAddr;
u8 head_buffer[0x800], temp_buffer[0x800];

void FSMC_NAND_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStructure; 
  FSMC_NANDInitTypeDef FSMC_NANDInitStructure;
  FSMC_NAND_PCCARDTimingInitTypeDef  p;
  
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOE | 
                         RCC_APB2Periph_GPIOF | RCC_APB2Periph_GPIOG, ENABLE);
  
/*-- GPIO Configuration ------------------------------------------------------*/
/* CLE, ALE, D0->D3, NOE, NWE and NCE2  NAND pin configuration  */
  GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_11 | GPIO_Pin_12 | GPIO_Pin_14 | GPIO_Pin_15 |  
                                 GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_4 | GPIO_Pin_5 | 
                                 GPIO_Pin_7;                                  
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;

  GPIO_Init(GPIOD, &GPIO_InitStructure); 

/* D4->D7 NAND pin configuration  */  
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_7 | GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_10;

  GPIO_Init(GPIOE, &GPIO_InitStructure);


/* NWAIT NAND pin configuration */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;   							 
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;

  GPIO_Init(GPIOD, &GPIO_InitStructure); 

/* INT2 NAND pin configuration */  
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;   							 
  GPIO_Init(GPIOG, &GPIO_InitStructure);

	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_FSMC, ENABLE);

  /*-- FSMC Configuration ------------------------------------------------------*/
  p.FSMC_SetupTime = 0x1;
  p.FSMC_WaitSetupTime = 0x3;
  p.FSMC_HoldSetupTime = 0x2;
  p.FSMC_HiZSetupTime = 0x1;

  FSMC_NANDInitStructure.FSMC_Bank = FSMC_Bank2_NAND;
  FSMC_NANDInitStructure.FSMC_Waitfeature = FSMC_Waitfeature_Enable;
  FSMC_NANDInitStructure.FSMC_MemoryDataWidth = FSMC_MemoryDataWidth_8b;
  FSMC_NANDInitStructure.FSMC_ECC = FSMC_ECC_Enable;
  FSMC_NANDInitStructure.FSMC_ECCPageSize = FSMC_ECCPageSize_2048Bytes ; //k9f1g08 ???2Kbit
  FSMC_NANDInitStructure.FSMC_TCLRSetupTime = 0x00;
  FSMC_NANDInitStructure.FSMC_TARSetupTime = 0x00;
  FSMC_NANDInitStructure.FSMC_CommonSpaceTimingStruct = &p;
  FSMC_NANDInitStructure.FSMC_AttributeSpaceTimingStruct = &p;

  FSMC_NANDInit(&FSMC_NANDInitStructure);

  /* FSMC NAND Bank Cmd Test */
  FSMC_NANDCmd(FSMC_Bank2_NAND, ENABLE);

}

/******************************************************************************
* Function Name  : FSMC_NAND_ReadID
* Description    : Reads NAND memory's ID.
* Input          : - NAND_ID: pointer to a NAND_IDTypeDef structure which will hold
*                    the Manufacturer and Device ID.
* Output         : None
* Return         : None
*******************************************************************************/
void FSMC_NAND_ReadID(NAND_IDTypeDef* NAND_ID)
{
  u32 data = 0;

  /* Send Command to the command area */ 	
  *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = 0x90;
  *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = 0x00;

   /* Sequence to read ID from NAND flash */	
   data = *(vu32 *)(Bank_NAND_ADDR | DATA_AREA);

   NAND_ID->Maker_ID   = ADDR_1st_CYCLE (data);
   NAND_ID->Device_ID  = ADDR_2nd_CYCLE (data);
   NAND_ID->Third_ID   = ADDR_3rd_CYCLE (data);
   NAND_ID->Fourth_ID  = ADDR_4th_CYCLE (data);  
}

/******************************************************************************
* Function Name  : FSMC_NAND_WriteSmallPage
* Description    : This routine is for writing one or several 512 Bytes Page size.
* Input          : - pBuffer: pointer on the Buffer containing data to be written   
*                  - Address: First page address
*                  - NumPageToWrite: Number of page to write  
* Output         : None			   ???pBuffer????????adress?,???????????
* Return         : New status of the NAND operation. This parameter can be:
*                   - NAND_TIMEOUT_ERROR: when the previous operation generate 
*                     a Timeout error
*                   - NAND_READY: when memory is ready for the next operation 
*                  And the new status of the increment address operation. It can be:
*                  - NAND_VALID_ADDRESS: When the new address is valid address
*                  - NAND_INVALID_ADDRESS: When the new address is invalid address
*******************************************************************************/
u32 FSMC_NAND_WriteSmallPage(u8 *pBuffer, NAND_ADDRESS Address, u32 NumPageToWrite)
{						  //   ?????              ???       ??????
  u32 index = 0x00, numpagewritten = 0x00, addressstatus = NAND_VALID_ADDRESS;
  u32 status = NAND_READY, size = 0;	

  while((NumPageToWrite != 0x00) && (addressstatus == NAND_VALID_ADDRESS) && (status == NAND_READY))
  {
     /* Page write command and address */
    *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_PAGEPROGRAM;

    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = 0x00;  
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = 0X00;  
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_1st_CYCLE(ROW_ADDRESS);  
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_2nd_CYCLE(ROW_ADDRESS);   

/*    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_1st_CYCLE(ROW_ADDRESS);//ADDR_3rd_CYCLE(ROW_ADDRESS); //?? 
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_2nd_CYCLE(ROW_ADDRESS);//ADDR_4th_CYCLE(ROW_ADDRESS); //
	*(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_3rd_CYCLE(ROW_ADDRESS);   
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_4th_CYCLE(ROW_ADDRESS);	   	*/  

    /* Calculate the size */

    size = NAND_PAGE_SIZE + (NAND_PAGE_SIZE * numpagewritten);


    /* Write data */
    for(; index < size; index++)
    {
      *(vu8 *)(Bank_NAND_ADDR | DATA_AREA) = pBuffer[index];
	  //printf(" 0x%x\n",pBuffer[index]);
    }
    
    *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_PAGEPROGRAM_TRUE;
	 
	  while( GPIO_ReadInputDataBit(GPIOG, GPIO_Pin_6) == 0 );

    /* Check status for successful operation */
    status = FSMC_NAND_GetStatus();
    
    if(status == NAND_READY)
    {
      numpagewritten++;

      NumPageToWrite--;

      /* Calculate Next small page Address */
      addressstatus = FSMC_NAND_AddressIncrement(&Address);    
    }    
  }
   return (status | addressstatus);
}

/******************************************************************************
* Function Name  : FSMC_NAND_ReadSmallPage
* Description    : This routine is for sequential read from one or several 
*                  512 Bytes Page size.
* Input          : - pBuffer: pointer on the Buffer to fill  
*                  - Address: First page address
*                  - NumPageToRead: Number of page to read
* Output         : None
* Return         : New status of the NAND operation. This parameter can be:
*                   - NAND_TIMEOUT_ERROR: when the previous operation generate 
*                     a Timeout error
*                   - NAND_READY: when memory is ready for the next operation 
*                  And the new status of the increment address operation. It can be:
*                  - NAND_VALID_ADDRESS: When the new address is valid address
*                  - NAND_INVALID_ADDRESS: When the new address is invalid address
*******************************************************************************/
u32 FSMC_NAND_ReadSmallPage(u8 *pBuffer, NAND_ADDRESS Address, u32 NumPageToRead)
{						   
  u32 index = 0x00, numpageread = 0x00, addressstatus = NAND_VALID_ADDRESS;
  u32 status = NAND_READY, size = 0;



  while((NumPageToRead != 0x0) && (addressstatus == NAND_VALID_ADDRESS))
  {	   
    /* Page Read command and page address */
    /* Page Read command and page address */
    *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_READ_1; 
   
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = 0x00; 
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = 0X00; 
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_1st_CYCLE(ROW_ADDRESS);  
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_2nd_CYCLE(ROW_ADDRESS);  
    
/*    
  *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_1st_CYCLE(ROW_ADDRESS);//ADDR_3rd_CYCLE(ROW_ADDRESS); //?? 
   *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_2nd_CYCLE(ROW_ADDRESS);//ADDR_4th_CYCLE(ROW_ADDRESS); //
	*(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_3rd_CYCLE(ROW_ADDRESS);   
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_4th_CYCLE(ROW_ADDRESS);	    */	

    *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_READ_TRUE; 	   

	    while( GPIO_ReadInputDataBit(GPIOG, GPIO_Pin_6) == 0 );

  /* Calculate the size */
  size = NAND_PAGE_SIZE + (NAND_PAGE_SIZE * numpageread);
 //  for(i = 0; i <= 10000; i++);
    
    /* Get Data into Buffer */    
    for(; index < size; index++)
    {
      pBuffer[index]= *(vu8 *)(Bank_NAND_ADDR | DATA_AREA);
	  //printf(" 0x%x\n",pBuffer[index]);
    }

    numpageread++;
    
    NumPageToRead--;

    /* Calculate page address */           			 
    addressstatus = FSMC_NAND_AddressIncrement(&Address);
  }
   
  status = FSMC_NAND_GetStatus();
  
  return (status | addressstatus);
}

/******************************************************************************
* Function Name  : FSMC_NAND_WriteSpareArea
* Description    : This routine write the spare area information for the specified 
*                  pages addresses.
* Input          : - pBuffer: pointer on the Buffer containing data to be written 
*                  - Address: First page address
*                  - NumSpareAreaTowrite: Number of Spare Area to write
* Output         : None
* Return         : New status of the NAND operation. This parameter can be:
*                   - NAND_TIMEOUT_ERROR: when the previous operation generate 
*                     a Timeout error
*                   - NAND_READY: when memory is ready for the next operation 
*                  And the new status of the increment address operation. It can be:
*                  - NAND_VALID_ADDRESS: When the new address is valid address
*                  - NAND_INVALID_ADDRESS: When the new address is invalid address
*******************************************************************************/

u32 FSMC_NAND_WriteSpareArea(u8 *pBuffer, NAND_ADDRESS Address, u32 NumSpareAreaTowrite)
{
  u32 index = 0x00, numsparesreawritten = 0x00, addressstatus = NAND_VALID_ADDRESS;
  u32 status = NAND_READY, size = 0x00; 

  while((NumSpareAreaTowrite != 0x00) && (addressstatus == NAND_VALID_ADDRESS) && (status == NAND_READY))
  {
    /* Page write Spare area command and address */
    *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_PAGEPROGRAM;

    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = 0x00; 
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = 0x08; 
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_1st_CYCLE(ROW_ADDRESS);  
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_2nd_CYCLE(ROW_ADDRESS); 

    /* Calculate the size */ 
    size = NAND_SPARE_AREA_SIZE + (NAND_SPARE_AREA_SIZE * numsparesreawritten);

    /* Write the data */ 
    for(; index < size; index++)
    {
      *(vu8 *)(Bank_NAND_ADDR | DATA_AREA) = pBuffer[index];
    }
    
   *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_PAGEPROGRAM_TRUE;

      while( GPIO_ReadInputDataBit(GPIOG, GPIO_Pin_6) == 0 );

    /* Check status for successful operation */
    status = FSMC_NAND_GetStatus();

    if(status == NAND_READY)
    {
      numsparesreawritten++;      

      NumSpareAreaTowrite--;  
    
      /* Calculate Next page Address */
      addressstatus = FSMC_NAND_AddressIncrement(&Address);
    }       
  }
  
  return (status | addressstatus);
}

/******************************************************************************
* Function Name  : FSMC_NAND_ReadSpareArea
* Description    : This routine read the spare area information from the specified
*                  pages addresses.
* Input          : - pBuffer: pointer on the Buffer to fill  
*                  - Address: First page address
*                  - NumSpareAreaToRead: Number of Spare Area to read
* Output         : None
* Return         : New status of the NAND operation. This parameter can be:
*                   - NAND_TIMEOUT_ERROR: when the previous operation generate 
*                     a Timeout error
*                   - NAND_READY: when memory is ready for the next operation 
*                  And the new status of the increment address operation. It can be:
*                  - NAND_VALID_ADDRESS: When the new address is valid address
*                  - NAND_INVALID_ADDRESS: When the new address is invalid address
*******************************************************************************/
u32 FSMC_NAND_ReadSpareArea(u8 *pBuffer, NAND_ADDRESS Address, u32 NumSpareAreaToRead)
{
  u32 numsparearearead = 0x00, index = 0x00, addressstatus = NAND_VALID_ADDRESS;
  u32 status = NAND_READY, size = 0x00;

  while((NumSpareAreaToRead != 0x0) && (addressstatus == NAND_VALID_ADDRESS))
  {     
    /* Page Read command and page address */     
    *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_READ_1;

    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = 0x00; 
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = 0x08;     
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_1st_CYCLE(ROW_ADDRESS);  
    *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_2nd_CYCLE(ROW_ADDRESS);    

    *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_READ_TRUE;

    //
    while( GPIO_ReadInputDataBit(GPIOG, GPIO_Pin_6) == 0 );
    

    /* Data Read */
    size = NAND_SPARE_AREA_SIZE +  (NAND_SPARE_AREA_SIZE * numsparearearead);
	
    /* Get Data into Buffer */
    for ( ;index < size; index++)
    {
      pBuffer[index] = *(vu8 *)(Bank_NAND_ADDR | DATA_AREA);
    }
    
    numsparearearead++;
    
    NumSpareAreaToRead--;

    /* Calculate page address */           			 
    addressstatus = FSMC_NAND_AddressIncrement(&Address);
  }

  status = FSMC_NAND_GetStatus();
 
  return (status | addressstatus);
}

/******************************************************************************
* Function Name  : FSMC_NAND_EraseBlock
* Description    : This routine erase complete block from NAND FLASH
* Input          : - Address: Any address into block to be erased
* Output         : None
* Return         : New status of the NAND operation. This parameter can be:
*                   - NAND_TIMEOUT_ERROR: when the previous operation generate 
*                     a Timeout error
*                   - NAND_READY: when memory is ready for the next operation 
*******************************************************************************/
u32 FSMC_NAND_EraseBlock(NAND_ADDRESS Address)
{
  *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_ERASE0;

  *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_1st_CYCLE(ROW_ADDRESS);  
  *(vu8 *)(Bank_NAND_ADDR | ADDR_AREA) = ADDR_2nd_CYCLE(ROW_ADDRESS); 
		
  *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_ERASE1; 

      while( GPIO_ReadInputDataBit(GPIOG, GPIO_Pin_6) == 0 );

  return (FSMC_NAND_GetStatus());
}

/******************************************************************************
* Function Name  : FSMC_NAND_Reset
* Description    : This routine reset the NAND FLASH
* Input          : None
* Output         : None
* Return         : NAND_READY
*******************************************************************************/
u32 FSMC_NAND_Reset(void)
{
  *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_RESET;

  return (NAND_READY);
}

/******************************************************************************
* Function Name  : FSMC_NAND_GetStatus
* Description    : Get the NAND operation status
* Input          : None
* Output         : None
* Return         : New status of the NAND operation. This parameter can be:
*                   - NAND_TIMEOUT_ERROR: when the previous operation generate 
*                     a Timeout error
*                   - NAND_READY: when memory is ready for the next operation    
*******************************************************************************/
u32 FSMC_NAND_GetStatus(void)
{
  u32 timeout = 0x1000000, status = NAND_READY;

  status = FSMC_NAND_ReadStatus(); 

  /* Wait for a NAND operation to complete or a TIMEOUT to occur */
  while ((status != NAND_READY) &&( timeout != 0x00))
  {
     status = FSMC_NAND_ReadStatus();
     timeout --;      
  }

  if(timeout == 0x00)
  {          
    status =  NAND_TIMEOUT_ERROR;      
  } 

  /* Return the operation status */
  return (status);      
}
/******************************************************************************
* Function Name  : FSMC_NAND_ReadStatus
* Description    : Reads the NAND memory status using the Read status command 
* Input          : None
* Output         : None
* Return         : The status of the NAND memory. This parameter can be:
*                   - NAND_BUSY: when memory is busy
*                   - NAND_READY: when memory is ready for the next operation    
*                   - NAND_ERROR: when the previous operation gererates error   
*******************************************************************************/
u32 FSMC_NAND_ReadStatus(void)
{
  u32 data = 0x00, status = NAND_BUSY;

  /* Read status operation ------------------------------------ */
  *(vu8 *)(Bank_NAND_ADDR | CMD_AREA) = NAND_CMD_STATUS;
  data = *(vu8 *)(Bank_NAND_ADDR);

  if((data & NAND_ERROR) == NAND_ERROR)
  {
    status = NAND_ERROR;
  } 
  else if((data & NAND_READY) == NAND_READY)
  {
    status = NAND_READY;
  }
  else
  {
    status = NAND_BUSY; 
  }
  
  return (status);
}

/******************************************************************************
* Function Name  : NAND_AddressIncrement
* Description    : Increment the NAND memory address
* Input          : - Address: address to be incremented.
* Output         : None
* Return         : The new status of the increment address operation. It can be:
*                  - NAND_VALID_ADDRESS: When the new address is valid address
*                  - NAND_INVALID_ADDRESS: When the new address is invalid address
*******************************************************************************/
u32 FSMC_NAND_AddressIncrement(NAND_ADDRESS* Address)
{
  u32 status = NAND_VALID_ADDRESS;
 
  Address->Page++;

  if(Address->Page == NAND_BLOCK_SIZE)
  {
    Address->Page = 0;
    Address->Block++;
    
    if(Address->Block == NAND_ZONE_SIZE)
    {
      Address->Block = 0;
      Address->Zone++;

      if(Address->Zone == NAND_MAX_ZONE)
      {
        status = NAND_INVALID_ADDRESS;
      }
    }
  } 
  
  return (status);
}

u8 Nand_Write_Data(_record_data_struct record)
{
	u16 i;

	nand_index_data_point ++;
	if(nand_index_data_point == 128){
		nand_index_data_point = 0;
		nand_index_page_point ++;
	}
	if(nand_index_page_point == 64){
		nand_index_page_point = 0;
		nand_index_block_point ++;
	}
	nand_record_data_point ++;
	if(nand_record_data_point == 16){
		nand_record_data_point = 0;
		nand_record_page_point ++;
	}
	if(nand_record_page_point == 64){
		nand_record_page_point = 0;
		nand_record_block_point ++;
	}
	for(i=0;i<nand_broken_block_index;i++)
	{
		if(nand_record_block_point == nand_broken_block[i]) nand_record_block_point++;
	}
	if(nand_record_block_point == 1024)return 0;

	WriteReadAddr.Zone = 0x00;
	WriteReadAddr.Block = 0x01;
	WriteReadAddr.Page = 0x00; 

	FSMC_NAND_ReadSmallPage(temp_buffer, WriteReadAddr, 1);
	
	temp_buffer[0x0A] = nand_index_block_point>>8;
	temp_buffer[0x0B] = nand_index_block_point;
	temp_buffer[0x0D] = nand_index_page_point;
	temp_buffer[0x0F] = nand_index_data_point;
	temp_buffer[0x10] = nand_record_block_point>>8;
	temp_buffer[0x11] = nand_record_block_point;
	temp_buffer[0x13] = nand_record_page_point;
	temp_buffer[0x15] = nand_record_data_point;
	
	FSMC_NAND_EraseBlock(WriteReadAddr);
	
	FSMC_NAND_WriteSmallPage(temp_buffer, WriteReadAddr, 1);



	for(i=0;i<0x800;i++) temp_buffer[i] = 0xFF;

	WriteReadAddr.Zone = 0x00;
	WriteReadAddr.Block = nand_index_block_point;
	WriteReadAddr.Page = nand_index_page_point;
	
	temp_buffer[nand_index_data_point*16+0x00] = record.year;
	temp_buffer[nand_index_data_point*16+0x01] = record.month;
	temp_buffer[nand_index_data_point*16+0x02] = record.date;
	temp_buffer[nand_index_data_point*16+0x03] = record.hour;
	temp_buffer[nand_index_data_point*16+0x04] = record.min;
	temp_buffer[nand_index_data_point*16+0x05] = record.sec;
	temp_buffer[nand_index_data_point*16+0x06] = record.model;
	temp_buffer[nand_index_data_point*16+0x07] = record.force>>8;
	temp_buffer[nand_index_data_point*16+0x08] = record.force;
	temp_buffer[nand_index_data_point*16+0x09] = record.during>>8;
	temp_buffer[nand_index_data_point*16+0x0A] = record.during;
	temp_buffer[nand_index_data_point*16+0x0B] = nand_record_block_point>>8;
	temp_buffer[nand_index_data_point*16+0x0C] = nand_record_block_point;
	temp_buffer[nand_index_data_point*16+0x0D] = nand_record_page_point;
	temp_buffer[nand_index_data_point*16+0x0E] = nand_record_data_point;
	
	FSMC_NAND_WriteSmallPage(temp_buffer, WriteReadAddr, 1);
	
	for(i=0;i<0x800;i++) temp_buffer[i] = 0xFF;

	WriteReadAddr.Zone = 0x00;
	WriteReadAddr.Block = nand_record_block_point;
	WriteReadAddr.Page = nand_record_page_point;

	for(i=0;i<80;i++)
		temp_buffer[i+nand_record_data_point*128] = record.pressure[i];
	
	FSMC_NAND_WriteSmallPage(temp_buffer, WriteReadAddr, 1);
	

	return 0;
};

u8 Nand_Reset_Data(void)
{

	WriteReadAddr.Zone = 0x00;
	WriteReadAddr.Block = 0x01;
	WriteReadAddr.Page = 0x00; 

	FSMC_NAND_ReadSmallPage(temp_buffer, WriteReadAddr, 1);
	
	temp_buffer[0x0A] = 0x00;
	temp_buffer[0x0B] = 0x02;
	temp_buffer[0x0D] = 0x00;
	temp_buffer[0x0F] = 0x00;
	temp_buffer[0x10] = 0x00;
	temp_buffer[0x11] = 0x10;
	temp_buffer[0x13] = 0x00;
	temp_buffer[0x15] = 0x00;
	
	FSMC_NAND_EraseBlock(WriteReadAddr);
	
	FSMC_NAND_WriteSmallPage(temp_buffer, WriteReadAddr, 1);

	
	return 0;
};
