package uart
import chisel3._
import chisel3.util.Cat

class UartTx extends Module {
  val io = IO(new Bundle {
    // coming from CTRL register
    val tx_enable = Input(Bool())
    val tick_baud_x16 = Input(Bool())
    // coming from CTRL register
    val parity_en = Input(Bool())

    // Indicating data is available from FIFO and ready to write
    val wr = Input(Bool())
    val wr_parity = Input(Bool())
    val wr_data = Input(UInt(8.W))

    val idle = Output(Bool())
    val tx = Output(UInt(1.W))
  })

  val baud_div_q = RegInit(0.U(4.W))
  val tick_baud_q = RegInit(0.U(1.W))
  val bit_cnt_q = RegInit(0.U(4.W))
  val bit_cnt_d = Wire(UInt(4.W))
  val sreg_q = RegInit("h7ff".U(11.W))  // all 111111s 11 bits.
  val sreg_d = Wire(UInt(11.W))
  val tx_q = RegInit(1.U(1.W))
  val tx_d = Wire(UInt(1.W))

  io.tx := tx_q
  when(io.tick_baud_x16) {
    val temp_wire = Wire(UInt(5.W))
    temp_wire := Cat(0.U(1.W), baud_div_q) + 1.U(5.W)
    tick_baud_q := temp_wire(4)
    baud_div_q := temp_wire(3,0)
  } .otherwise {
    tick_baud_q := 0.U
  }

  bit_cnt_q := bit_cnt_d
  sreg_q := sreg_d
  tx_q := tx_d

  when(!io.tx_enable) {
    bit_cnt_d := 0.U
    sreg_d := "h7ff".U(11.W)
    tx_d := 1.U
  } .otherwise {
    bit_cnt_d := bit_cnt_q
    sreg_d := sreg_q
    tx_d := tx_q
    when(io.wr) {
      // data frame setting up
      //            Stop Bit    If parity then wr_parity else Stop bit  Data[MSB:LSB]  Start Bit
      //              |                       |                             |            |
      //              ⌵️                       ⌵️                             ⌵️            ⌵️
      sreg_d := Cat(1.U(1.W), Mux(io.parity_en, io.wr_parity, 1.U(1.W)), io.wr_data, 0.U(1.W))
      bit_cnt_d := Mux(io.parity_en, 11.U(4.W), 10.U(4.W))
    } .elsewhen(tick_baud_q.asBool() && (bit_cnt_q =/= 0.U)) {
      sreg_d := Cat(1.U(1.W), sreg_q(10,1))
      tx_d := sreg_q(0)
      bit_cnt_d := bit_cnt_q - 1.U
    }
  }

  io.idle := Mux(io.tx_enable, bit_cnt_q === 0.U, true.B)
}
