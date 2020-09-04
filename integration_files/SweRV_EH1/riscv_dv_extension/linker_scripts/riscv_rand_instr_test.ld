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
  . = 0x9000fff8;
  .data.ctl : { LONG(0xf0040000); LONG(STACK) }
	. = 0xf0040000;
  .data  :  { *(.data) *(.region_0) *(.region_1) STACK = ALIGN(16) + 0x8000;}
	_data_end = .;
  .bss : AT(_data_end) { *(.bss) }
}
