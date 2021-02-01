package merl.uit.tilelink

import chisel3._
import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}

//object Arbiter extends App {
// implicit val conf: TLConfiguration = TLConfiguration()
// (new ChiselStage).execute(args, Seq(ChiselGeneratorAnnotation(() => new Arbiter(3))))
//}

class Arbiter(M: Int)(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val req_i = Input(Vec(M, Bool())) // a_valid signals coming from all the hosts
    val data_i = Vec(M, Flipped(new TL_H2D))  // Channel A data coming from all the hosts
    val gnt_o = Output(Vec(M, Bool()))  // The grant output used for indicating the host that the device is ready to accept the request
    val valid_o = Output(Bool())  // The valid signal from the host to the device
    val data_o = new TL_H2D // The Channel A data of selected host forwarded to the device
    val ready_i = Input(Bool()) // The ready signal coming from the device
  })
  // by default setting the arbiter to pass the request of last host
  io.data_o <> io.data_i(M-1)
  io.valid_o := io.req_i(M-1)
  io.gnt_o(M-1) := Mux(io.ready_i, Mux(io.req_i(M-1), true.B, false.B), false.B)
  for(i <- M-2 to 0 by -1) {
    when(io.req_i(i)) {
      io.gnt_o(i) := Mux(io.ready_i, true.B, false.B)
      io.data_o := io.data_i(i)
      io.valid_o := io.req_i(i)
    } .otherwise {
      io.gnt_o(i) := false.B
    }
  }
}
