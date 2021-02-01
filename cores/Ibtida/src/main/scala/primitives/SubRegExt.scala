package primitives
import chisel3._

/**
 * The SubRegExt module expects the peripheral and it's external logic to maintain the state inside the register
 * It simply passes the values received from the software to the peripheral logic outside for writes
 * Similarly it passes the value form the peripheral logic to the software for reads
 */
class SubRegExt(DW: Int = 32) extends Module {
  val io = IO(new Bundle {
    val re = Input(Bool())
    val we = Input(Bool())
    val wd = Input(UInt(DW.W))
    val d = Input(UInt(DW.W))

    val qe = Output(Bool())
    val qre = Output(Bool())
    val q = Output(UInt(DW.W))
    val qs = Output(UInt(DW.W))
  })

  io.qs := io.d
  io.q := io.wd
  io.qe := io.we
  io.qre := io.re
}
