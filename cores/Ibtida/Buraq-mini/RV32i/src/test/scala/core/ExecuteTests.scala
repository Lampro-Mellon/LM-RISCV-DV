package core
import chisel3.iotesters.PeekPokeTester

class ExecuteTests(c: Execute) extends PeekPokeTester(c) {
  poke(c.io.EX_MEM_rd_sel, 5)
  poke(c.io.MEM_WB_rd_sel, 5)
  poke(c.io.ID_EX_rs1_sel, 5)
  poke(c.io.ID_EX_rs2_sel, 5)
  poke(c.io.EX_MEM_ctrl_RegWr, 1)
  poke(c.io.MEM_WB_ctrl_RegWr, 1)
  poke(c.io.ID_EX_ctrl_OpA_sel, 1)
  poke(c.io.ID_EX_ctrl_OpB_sel, 1)
  poke(c.io.ID_EX_pc4, 1)
  poke(c.io.ID_EX_rs1, 1)
  poke(c.io.ID_EX_rs2, 1)
  poke(c.io.EX_MEM_alu_output, 1)
  poke(c.io.writeback_write_data, 1)
  poke(c.io.ID_EX_imm, 1)
  poke(c.io.ID_EX_ctrl_AluOp, 1)
  poke(c.io.ID_EX_func7, 1)
  poke(c.io.ID_EX_func3, 1)
  poke(c.io.ID_EX_rd_sel, 1)
  poke(c.io.ID_EX_ctrl_MemWr, 1)
  poke(c.io.ID_EX_ctrl_MemRd, 1)
  poke(c.io.ID_EX_ctrl_RegWr, 1)
  poke(c.io.ID_EX_ctrl_MemToReg, 1)
  step(1)
}