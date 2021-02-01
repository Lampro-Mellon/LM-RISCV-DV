package merl.uit.tilelink

import chisel3._

class TL_Err(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val tl_i = Flipped(new TL_H2D)
    val err_o = Output(Bool())
  })

  val opcode_allowed = Wire(Bool())
  val op_get = Wire(Bool())
  val op_partial = Wire(Bool())
  val op_full = Wire(Bool())
  val a_config_allowed = Wire(Bool())

  io.err_o := !(opcode_allowed && a_config_allowed)

  op_get := io.tl_i.a_opcode === TL_A_Opcode.get
  op_partial := io.tl_i.a_opcode === TL_A_Opcode.putPartialData
  op_full := io.tl_i.a_opcode === TL_A_Opcode.putFullData

  opcode_allowed := op_get || op_partial || op_full



  // channel A configuration check
  val addr_size_chk = Wire(Bool())  // address and size alignment check
  val mask_chk = Wire(Bool())       // inactive lane a_mask check
  val fulldata_chk = Wire(Bool())   // PutFullData should have size match to mask

  val mask = Wire(UInt(conf.TL_DBW.W))
  mask := (1.U << io.tl_i.a_address(conf.TL_SZW-1,0))
  addr_size_chk := false.B
  mask_chk := false.B
  fulldata_chk := false.B

  when(io.tl_i.a_valid) {
    when(io.tl_i.a_size === 0.U) {  // 1 byte
      addr_size_chk := true.B
      mask_chk := ~((io.tl_i.a_mask & (~mask).asUInt).orR)
      fulldata_chk := (io.tl_i.a_mask & mask).orR
    } .elsewhen(io.tl_i.a_size === 1.U) { // 2 bytes
      addr_size_chk := ~(io.tl_i.a_address(0))
      mask_chk := Mux(io.tl_i.a_address(1), ~((io.tl_i.a_mask & "b0011".U).orR), ~((io.tl_i.a_mask & "b1100".U).orR))
      fulldata_chk := Mux(io.tl_i.a_address(1), io.tl_i.a_mask(3,2).andR, io.tl_i.a_mask(1,0).andR)
    } .elsewhen(io.tl_i.a_size === 2.U) { // 4 bytes
      addr_size_chk := ~(io.tl_i.a_address(conf.TL_SZW-1,0).orR)
      mask_chk := true.B
      fulldata_chk := io.tl_i.a_mask(3,0).andR
    } .otherwise {
      addr_size_chk := false.B
      mask_chk := false.B
      fulldata_chk := false.B
    }
  }

  a_config_allowed := addr_size_chk && mask_chk && (op_get || op_partial || fulldata_chk)

  io.err_o := ~(opcode_allowed && a_config_allowed)
}