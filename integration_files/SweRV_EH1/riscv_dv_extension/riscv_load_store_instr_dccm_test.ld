/* Copyright 2018 Google LLC
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http:*www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS {
  . = 0x80000000;
  .text   : { *(.text*) }
  . = ALIGN(0x40);
  .tohost : { *(.tohost) }
  . = ALIGN(0x1000);
  .page_table : { *(.page_table) }
  .user_stack : { *(.user_stack) } 
  .kernel_data : { *(.kernel_data) } 
  .kernel_stack : { *(.kernel_stack) } 
  _end = .;
  . = 0x8000fff8;
  .data.ctl : { LONG(0xf0040000); LONG(STACK) }
	. = 0xf0040000;
  .data  :  { *(*.data) *(*.dccm_r) STACK = ALIGN(16) + 0x8000;}
	_data_end = .;
  .bss : AT(_data_end) { *(.bss) }
}


/*
OUTPUT_ARCH( "riscv" )
ENTRY(_start)

MEMORY {
    imem		: ORIGIN = 0x80000000, LENGTH = 64K
    lmem		: ORIGIN = 0x80010000, LENGTH = 64K
    dccm    : ORIGIN = 0xf0040000, LENGTH = 64K
}

SECTIONS
{
  . = 0x80000000;
  .text : { *(.text) } > imem
  . = ALIGN(0x40);
  .tohost : { *(.tohost) }
  . = ALIGN(0x1000);
  .page_table : { *(.page_table) }
  .user_stack : { *(.user_stack) } > lmem
  .kernel_data : { *(.kernel_data) } > lmem
  .kernel_stack : { *(.kernel_stack) } > lmem
  . = 0xf0040000;
  .data : {*(.dccm_r) } > dccm
	.region_2 : {*(.region_2)} > lmem
  .bss : { *(.bss) } > lmem
  _end = .;
}
*/
/*

MEMORY {
    imem		: ORIGIN = 0x80000000, LENGTH = 0x10000
    lmem		: ORIGIN = 0x80010000, LENGTH = 0x10000
    dccm    : ORIGIN = 0xf0040000, LENGTH = 0x10000
}
SECTIONS
{
  . = 0x80000000;
  .text : { *(.text) } > imem
  . =0x60000000;
  .region_0 : { *(.region_0) }
  . = ALIGN(0x40);
  . = 0xf0040000;
  .region_1 : { *(.region_1) }
  . = ALIGN(0x40);
  . =0xd0040000;
  .region_2 : { *(.region_2) }
  . = ALIGN(0x1000);
  .tohost : { *(.tohost) }
  . = ALIGN(0x1000);
  .page_table : { *(.page_table) }
  .user_stack : { *(.user_stack) } > lmem
  . = 0xf0040000;
  .data : ALIGN(0x1000) { *(.*data) *(.rodata*) STACK = ALIGN(16) + 0x8000; } > dccm
  .bss : { *(.bss) } > dccm
  _end = .;
}*/
/*
SECTIONS
{
  .text_init : {*(.text_init)} > EXTCODE
  init_end = .;
  .data.ctl : AT(0x8000ffec) { LONG(ADDR(.text)); LONG(text_end); LONG(LOADADDR(.text)); LONG(0xf0040000); LONG(STACK)}>EXTDATA
  .text : AT(init_end)  { *(.text) *(.text.startup)} > ICCM
   text_end = .;
  .data : ALIGN(0x800) { *(.*data) *(.rodata*) STACK = ALIGN(16) + 0x8000; } > DCCM


}
*/



