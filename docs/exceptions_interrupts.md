# [Exceptions](###Exceptions) and [interrupts](###Interrupts)
### Exceptions
An exception is an unexpected event from within the processor and caused by some instruction written within a program. We have caused the following RISCV exceptions to trigger:

1. `Illegal instruction exception` is triggered when an unknown opcode is detected in any instruction.
2. `Load address misaligned exception` is triggered when data to be loaded is divided into two memory regions.
3. `Load access fault exception` is triggered when the address of data to be loaded is out of core internal memory.
4. `Store address misaligned exception` is triggered when data to be written is divided into two memory regions.
5. `Store access fault exception` is triggered when the address of data to be written is out of core internal memory.
6. `Ecall from M-mode exception` is simply triggered by `ecall` instruction.
### Interrupts
An interrupt is a signal to the processor emitted by hardware or software indicating an event that needs immediate attention. We have implemented [internal timer interrupt](###Internal timer interrupt) for `SweRV EH1`.
### Internal timer interrupt
RISCV uses two CSRs `mtime` and `mtimecmp` for a timer interrupt. When value in `mtime` is greater than the value of `mtimecmp`. `SweRV EH1` uses four CSRs `mitcnt0/1` and `mitb0/1`, whenever the value of `mitcnt0/1` is greater than `mitb0/1`. 
# Changes
We made changes in following files for this task:
1. [riscv_asm_program_gen.sv](###riscv_asm_program_gen.sv)
2. [riscv_instr_gen_config.sv](###riscv_instr_gen_config.sv)
### riscv_asm_program_gen.sv
1. Updated already written exception handlers to go to the next instruction.
2. Exception handlers were added for misaligned exceptions.
3. Added directed instructions to trigger these exceptions and interrupts.
### riscv_instr_gen_config.sv
1. Introduced an argument to `gen_opts` to enable stream which triggers instructions.