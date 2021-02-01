package main.scala.core
import chisel3._

class CsrControlUnit extends Module {
  val io = IO(new Bundle {
    val reg_wr_in_execute = Input(Bool())
    val rd_sel_in_execute = Input(UInt(5.W))
    val csr_wr_in_execute = Input(Bool())

    val reg_wr_in_memory = Input(Bool())
    val rd_sel_in_memory = Input(UInt(5.W))
    val csr_wr_in_memory = Input(Bool())

    val reg_wr_in_writeback = Input(Bool())
    val rd_sel_in_writeback = Input(UInt(5.W))
    val csr_wr_in_writeback = Input(Bool())

    val rs1_sel_in_decode = Input(UInt(5.W))
    val csr_inst_in_decode = Input(Bool())

    // this indicates that the csr instruction in decode is of imm type and we do not need to forward
    // the data since rs1 does not exist in this case.
    val csr_imm_inst_in_decode = Input(Bool())

    // this indicates load inst is present in execution stage. Since the CSR hazard unit would detect decode/execute
    // dependency and forward alu output, this would be incorrect in case of a load instruction since the data
    // wont be ready yet and alu output is used for the address calculation
    val load_inst_in_execute = Input(Bool())

    val load_inst_in_memory = Input(Bool())

    // valid signal to indicate whether the data coming from load instruction is valid or not.
    // if it is valid, only then forward data
    // this is only important when load instruction is encountered
    val dccm_rvalid_i = Input(Bool())
    val forward_rs1 = Output(UInt(3.W))
    val csr_op_en_o = Output(Bool())
  })

  io.forward_rs1 := 0.U
  io.csr_op_en_o := false.B

  val hazard_in_decode_execute = Wire(Bool())
  val hazard_in_decode_memory = Wire(Bool())
  val hazard_in_decode_writeback = Wire(Bool())

  val csr_hazard_in_decode_execute = Wire(Bool())
  val csr_hazard_in_decode_memory = Wire(Bool())
  val csr_hazard_in_decode_writeback = Wire(Bool())

  hazard_in_decode_execute   := Mux(io.reg_wr_in_execute && io.csr_inst_in_decode && ~io.csr_imm_inst_in_decode && io.rd_sel_in_execute =/= 0.U && ~io.csr_wr_in_execute && (io.rd_sel_in_execute === io.rs1_sel_in_decode), true.B, false.B)
  hazard_in_decode_memory    := Mux(io.reg_wr_in_memory && io.csr_inst_in_decode && ~io.csr_imm_inst_in_decode && io.rd_sel_in_memory =/= 0.U  && ~hazard_in_decode_execute && ~io.csr_wr_in_memory && (io.rd_sel_in_memory === io.rs1_sel_in_decode), true.B, false.B)
  hazard_in_decode_writeback := Mux(io.reg_wr_in_writeback && io.csr_inst_in_decode && ~io.csr_imm_inst_in_decode && io.rd_sel_in_writeback =/= 0.U && ~hazard_in_decode_execute && ~hazard_in_decode_memory && ~io.csr_wr_in_writeback&& (io.rd_sel_in_writeback === io.rs1_sel_in_decode), true.B, false.B)

  csr_hazard_in_decode_execute := Mux(io.reg_wr_in_execute && io.csr_inst_in_decode && ~io.csr_imm_inst_in_decode && io.rd_sel_in_execute =/= 0.U && io.csr_wr_in_execute && (io.rd_sel_in_execute === io.rs1_sel_in_decode), true.B, false.B)
  csr_hazard_in_decode_memory := Mux(io.reg_wr_in_memory && io.csr_inst_in_decode && ~io.csr_imm_inst_in_decode && io.rd_sel_in_memory =/= 0.U && io.csr_wr_in_memory && ~csr_hazard_in_decode_execute && (io.rd_sel_in_memory === io.rs1_sel_in_decode), true.B, false.B)
  csr_hazard_in_decode_writeback := Mux(io.reg_wr_in_writeback && io.csr_inst_in_decode && ~io.csr_imm_inst_in_decode &&  io.rd_sel_in_writeback =/= 0.U && io.csr_wr_in_writeback && ~csr_hazard_in_decode_execute && ~csr_hazard_in_decode_memory && (io.rd_sel_in_writeback === io.rs1_sel_in_decode), true.B, false.B)
  // hazard in decode/execute stage
  when(hazard_in_decode_execute) {
    io.forward_rs1 := "b001".U
  }

  // hazard in decode/memory stage
  when(hazard_in_decode_memory) {
    io.forward_rs1 := "b010".U
  }

  // hazard in decode/writeback stage
  when(hazard_in_decode_writeback) {
    io.forward_rs1 := "b011".U
  }

  when(csr_hazard_in_decode_execute) {
    io.forward_rs1 := "b100".U
  }

  when(csr_hazard_in_decode_memory) {
    io.forward_rs1 := "b101".U
  }

  when(csr_hazard_in_decode_writeback) {
    io.forward_rs1 := "b110".U
  }

  when(io.csr_inst_in_decode) {
    when(io.load_inst_in_memory && io.dccm_rvalid_i) {
      io.csr_op_en_o := true.B
    } .elsewhen(~io.load_inst_in_execute && ~io.load_inst_in_memory) {
      io.csr_op_en_o := true.B
    }
  }


}
