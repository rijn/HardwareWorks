
/* Memory Spaces Definitions */

MEMORY
{
  RAM  (rwx) : ORIGIN = 0x20000000, LENGTH = 4K
  FLASH (rx) : ORIGIN = 0x8000000, LENGTH = 16K
  FLASHPATCH (r) : ORIGIN = 0x00000000, LENGTH = 0
  ENDFLASH (rx)  : ORIGIN = 0x00000000, LENGTH = 0
  FLASHB1  (rx)  : ORIGIN = 0x00000000, LENGTH = 0
  EXTMEMB0 (rx)  : ORIGIN = 0x00000000, LENGTH = 0
  EXTMEMB1 (rx)  : ORIGIN = 0x00000000, LENGTH = 0
  EXTMEMB2 (rx)  : ORIGIN = 0x00000000, LENGTH = 0
  EXTMEMB3 (rx)  : ORIGIN = 0x00000000, LENGTH = 0
}

/* higher address of the user mode stack */
_estack = 0x20001000;

