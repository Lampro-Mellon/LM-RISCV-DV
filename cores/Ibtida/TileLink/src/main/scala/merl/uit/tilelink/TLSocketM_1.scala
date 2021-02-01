package merl.uit.tilelink

import chisel3._
import chisel3.util.{Cat, log2Ceil}

class TLSocketM_1(M: Int)(implicit val conf:TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val tl_h_i = Vec(M, Flipped(new TL_H2D))
    val tl_h_o = Vec(M, new TL_D2H)
    val tl_d_o = new TL_H2D
    val tl_d_i = Flipped(new TL_D2H)
  })
  val STIDW = log2Ceil(M) // the bits required for identifying hosts.
  val tl_h2d = Wire(Vec(M, Flipped(new TL_H2D))) // create an intermediate bundles of wire for capturing the host request
  val hRequest = Wire(Vec(M, Bool())) // this bundle of wires is used to have the valid signals of all hosts.
  val respReady = Wire(Vec(M, Bool()))
  val respValid = Wire(Vec(M, Bool()))

  for(i <- 0 until M) {
    val reqid_sub = Wire(UInt(STIDW.W))
    val shifted_id = Wire(UInt(conf.TL_AIW.W))

    reqid_sub := i.asUInt // this will be used to identify hosts connected with the socket
    shifted_id := Cat(io.tl_h_i(i).a_source((conf.TL_AIW-STIDW)-1,0), reqid_sub)
    tl_h2d(i).a_valid := io.tl_h_i(i).a_valid
    tl_h2d(i).a_opcode := io.tl_h_i(i).a_opcode
    tl_h2d(i).a_param := io.tl_h_i(i).a_param
    tl_h2d(i).a_size := io.tl_h_i(i).a_size
    tl_h2d(i).a_source := shifted_id
    tl_h2d(i).a_address := io.tl_h_i(i).a_address
    tl_h2d(i).a_mask := io.tl_h_i(i).a_mask
    tl_h2d(i).a_data := io.tl_h_i(i).a_data
    tl_h2d(i).d_ready := io.tl_h_i(i).d_ready
  }

  for(i <- 0 until M) {
    hRequest(i) := tl_h2d(i).a_valid
  }

  for(i <- 0 until M) {
    respValid(i) := io.tl_d_i.d_valid && (io.tl_d_i.d_source(STIDW-1,0) === i.asUInt)
    respReady(i) := tl_h2d(i).d_ready && (io.tl_d_i.d_source(STIDW-1,0) === i.asUInt) && io.tl_d_i.d_valid
  }

  val arb = Module(new Arbiter(M))
  arb.io.req_i := hRequest
  arb.io.ready_i := io.tl_d_i.a_ready
  arb.io.data_i <> tl_h2d

  io.tl_d_o.a_valid := arb.io.valid_o
  io.tl_d_o.a_opcode := arb.io.data_o.a_opcode
  io.tl_d_o.a_param := arb.io.data_o.a_param
  io.tl_d_o.a_size := arb.io.data_o.a_size
  io.tl_d_o.a_source := arb.io.data_o.a_source
  io.tl_d_o.a_address := arb.io.data_o.a_address
  io.tl_d_o.a_mask := arb.io.data_o.a_mask
  io.tl_d_o.a_data := arb.io.data_o.a_data
  io.tl_d_o.d_ready := respReady.contains(true.B) // this is to check if any wire inside the respReady bundle is true.


  for(i <- 0 until M) {
    io.tl_h_o(i).d_valid := respValid(i)
    io.tl_h_o(i).d_opcode := io.tl_d_i.d_opcode
    io.tl_h_o(i).d_param := io.tl_d_i.d_param
    io.tl_h_o(i).d_size := io.tl_d_i.d_size
    io.tl_h_o(i).d_source := Cat(0.U,io.tl_d_i.d_source(conf.TL_AIW-1,STIDW)) // making sure we pass the same a_source in d_source.
    io.tl_h_o(i).d_sink := io.tl_d_i.d_sink
    io.tl_h_o(i).d_data := io.tl_d_i.d_data
    io.tl_h_o(i).d_error := io.tl_d_i.d_error
    io.tl_h_o(i).a_ready := arb.io.gnt_o(i)
  }

}