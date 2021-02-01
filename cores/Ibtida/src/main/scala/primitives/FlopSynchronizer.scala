package primitives
import chisel3._

class FlopSynchronizer(width: Int, resetVal: UInt) extends Module {
  val io = IO(new Bundle {
    val d_in = Input(UInt(width.W))
    val q_out = Output(UInt(width.W))
  })

  val reg1 = RegInit(resetVal)
  val reg2 = RegInit(resetVal)
  reg1 := io.d_in
  reg2 := reg1
  io.q_out := reg2

}
