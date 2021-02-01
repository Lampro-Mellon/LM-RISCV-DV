package core
import chisel3.iotesters.PeekPokeTester

class FetchTests(c: Fetch) extends PeekPokeTester(c) {
  poke(c.io.decode_sb_imm_i, 0)
  poke(c.io.decode_uj_imm_i, 0)
  poke(c.io.decode_jalr_imm_i, 0)
  poke(c.io.decode_ctrl_next_pc_sel_i, 0)
  poke(c.io.decode_ctrl_out_branch_i, 0)
  poke(c.io.decode_branchLogic_output_i, 0)
  poke(c.io.decode_hazardDetection_pc_i, 0)
  poke(c.io.decode_hazardDetection_inst_i, 0)
  poke(c.io.decode_hazardDetection_current_pc_i, 0)
  poke(c.io.decode_hazardDetection_pc_forward_i, 0)
  poke(c.io.decode_hazardDetection_inst_forward_i, 0)
//  poke(c.io.stall , 0)
//  poke(c.io.inst_in, 0)

  step(10)

//  poke(c.io.inst_in, 33)
  step(10)
}