package core
import chisel3.iotesters.PeekPokeTester

class WriteBackTests(c: WriteBack) extends PeekPokeTester(c) {
    poke(c.io.MEM_WB_MemToReg, 1)
    poke(c.io.MEM_WB_dataMem_data, 1)
    poke(c.io.MEM_WB_alu_output, 1)
    step(1)
}