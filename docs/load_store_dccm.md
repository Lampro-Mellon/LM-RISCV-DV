# Load/Store from DCCM in SweRV-EH1 using RISC-V DV
Loading and storing data from one of the internal memories like DCCM can be done via randomized tests. Follow the steps given in the following sections to run this test.
## Set up Memory Map
Memory map needs to be configured from riscv_instr_gen_config.sv file. Change the following memory map regions according to the core's memory map. Random data will be generated and used in the randomized test according to this memory map.   
```
mem_region_t mem_region[$] = '{
    '{name:"region_0", size_in_bytes: 1024*32, xwr: 3'b111},
    '{name:"region_1", size_in_bytes: 1024*16, xwr: 3'b111}
  };
```
### Random Data Generation
Random data generated can be all-zeroes, incremental or random data. Selection between these options happens randomly. Data size is governed by the memory map set up in riscv_instr_gen_config.sv.

## Preloading of DCCM for SweRV-EH1 Test bench
Preloading task for `DCCM` in `Testbench Top` requires starting address and ending address placed in `data.hex` at certain location 0xfffffff8 and 0xffffffffc respectively for the current integration of SweRV-EH1 in LM-RISCV-DV. This information can be added via `.data.ctl` section in linker script. Linker script example given below demonstrates this requirement as well.

## Linking random data through Linker Script
Include the memory map region in the .data section through Linker Scripts. As per the Makefile flow, name the linker script same as the test name with .ld extension and place the custom linker script in `riscv_dv_extension/linker_scripts` directory.
Example linker script is given below. Note the addition of region_0 and region_1 (same names as set in memory map) in .data section.
```
OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS {
  . = 0x80000000;
  .text   : { *(.text*) }
  . = ALIGN(0x40);
  .tohost : { *(.tohost) }
  . = ALIGN(0x1000);
  .page_table : { *(.page_table) }
  .user_stack : { *(.user_stack) } 
  .kernel_data : { *(.kernel_data) } 
  .kernel_stack : { *(.kernel_stack) } 
  _end = .;
  . = 0xfffffff8;
  .data.ctl : { LONG(0xf0040000); LONG(STACK) }
  . = 0xf0040000;
  .data  :  { *(.data) *(.region_0) *(.region_1) STACK = ALIGN(16) + 0x1000;}
  _data_end = .;
  .bss : AT(_data_end) { *(.bss) }
}
```

## Make Command 
Use the following commands to run the load/store test
```
#for random seed
make TEST=riscv_load_store_instr_dccm_test SEED=<fixed_number>  LINK=1

```