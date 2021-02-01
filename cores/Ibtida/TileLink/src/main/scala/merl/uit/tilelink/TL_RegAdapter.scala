package merl.uit.tilelink

import chisel3._
import chisel3.util.{Cat, Fill}

/**
  TL-UL adapter for the register interface used by peripherals
 */

class TL_RegAdapter(regAw: Int = 8, regDw: Int = 32)(regBw: Int = regDw/8)(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    // TL-UL interface
    val tl_i = Flipped(new TL_H2D())
    val tl_o = new TL_D2H()

    // Register interface
    val re_o = Output(Bool())
    val we_o = Output(Bool())
    val addr_o = Output(UInt(regAw.W))
    val wdata_o = Output(UInt(regDw.W))
    val be_o = Output(UInt(regBw.W))
    val rdata_i = Input(UInt(regDw.W))
    val error_i = Input(Bool())
  })

  val a_ack = Wire(Bool())
  val d_ack = Wire(Bool())

  val rdata_q = RegInit(0.U(regDw.W))
  val error = RegInit(0.U(1.W))

  val err_internal = Wire(Bool())
  val addr_align_err = Wire(Bool())
  val tl_err = Wire(Bool())

  val reqId = RegInit(0.U(conf.TL_AIW.W))
  val reqSz = RegInit(0.U(conf.TL_SZW.W))
  val respOp = RegInit(TL_D_Opcode.accessAck)

  val rd_req = Wire(Bool())
  val wr_req = Wire(Bool())

  val outstanding = RegInit(0.U(1.W))


  a_ack := io.tl_i.a_valid && io.tl_o.a_ready
  d_ack := io.tl_o.d_valid && io.tl_i.d_ready

  // Request signals coming from Host
  wr_req := a_ack && ((io.tl_i.a_opcode === TL_A_Opcode.putFullData) || (io.tl_i.a_opcode === TL_A_Opcode.putPartialData))
  rd_req := a_ack && (io.tl_i.a_opcode === TL_A_Opcode.get)

  io.we_o := wr_req && !err_internal
  io.re_o := rd_req && !err_internal
  io.addr_o := Cat(io.tl_i.a_address(regAw-1, 2), 0.U(2.W)) // word aligned address
  io.wdata_o := io.tl_i.a_data
  io.be_o := io.tl_i.a_mask


  when(a_ack) {
    outstanding := 1.U
    reqId := io.tl_i.a_source
    reqSz := io.tl_i.a_size
    respOp := Mux(rd_req, TL_D_Opcode.accessAckData, TL_D_Opcode.accessAck)
    rdata_q := Mux(err_internal, Fill(regDw, 1.U), io.rdata_i)  // return all 1111s if err_internal = true
    error := io.error_i || err_internal
  } .elsewhen(d_ack) {
    outstanding := 0.U
  }

  io.tl_o.a_ready := !outstanding
  io.tl_o.d_valid := outstanding
  io.tl_o.d_opcode := respOp
  io.tl_o.d_param := 0.U
  io.tl_o.d_size := reqSz
  io.tl_o.d_source := reqId
  io.tl_o.d_sink := 0.U
  io.tl_o.d_data := rdata_q
  io.tl_o.d_error := error

  err_internal := addr_align_err | tl_err

  when(wr_req) {
    addr_align_err := io.tl_i.a_address(1,0).orR
  } .otherwise {
    addr_align_err := false.B
  }

  // separate tl_err checker which checks the address, size and mask correspondence according to the spec.
  val tlErr = Module(new TL_Err)
  tlErr.io.tl_i := io.tl_i
  tl_err := tlErr.io.err_o
}