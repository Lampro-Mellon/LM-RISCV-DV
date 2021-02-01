package uart
import chisel3._
import chisel3.util.Cat

class UartRx extends Module {
  val io = IO(new Bundle {
    val rx_enable = Input(Bool())
    val tick_baud_x16 = Input(Bool())
    val parity_en = Input(Bool())
    val parity_odd = Input(Bool())

    val tick_baud = Output(Bool())
    val rx_valid = Output(Bool())
    val rx_data = Output(UInt(8.W))
    val idle = Output(Bool())
    val frame_err = Output(Bool())
    val rx_parity_err = Output(Bool())

    val rx = Input(UInt(1.W))
  })

  val rx_valid_q = RegInit(false.B)
  val sreg_q = RegInit(0.U(11.W))
  val sreg_d = Wire(UInt(11.W))
  val bit_cnt_q = RegInit(0.U(4.W))
  val bit_cnt_d = Wire(UInt(4.W))
  val baud_div_q = RegInit(0.U(4.W))
  val baud_div_d = Wire(UInt(4.W))
  val tick_baud_q = RegInit(false.B)
  val tick_baud_d = Wire(Bool())
  val idle_q = RegInit(true.B)
  val idle_d = Wire(Bool())

  io.tick_baud := tick_baud_q
  io.idle := idle_q

  sreg_q := sreg_d
  bit_cnt_q := bit_cnt_d
  baud_div_q := baud_div_d
  tick_baud_q := tick_baud_d
  idle_q := idle_d

  when(!io.rx_enable) {
    sreg_d := 0.U
    bit_cnt_d := 0.U
    baud_div_d := 0.U
    tick_baud_d := 0.U
    idle_d := 1.U
  } .otherwise {
    tick_baud_d := false.B
    sreg_d := sreg_q
    bit_cnt_d := bit_cnt_q
    baud_div_d := baud_div_q
    idle_d := idle_q
    when(io.tick_baud_x16) {
      val temp_wire = Wire(UInt(5.W))
      temp_wire := Cat(0.U(1.W), baud_div_q) + 1.U(5.W)
      tick_baud_d := temp_wire(4)
      baud_div_d := temp_wire(3,0)
    }

    when(idle_q && !io.rx) {
      // start of character, sample in the middle of bit time
      baud_div_d := 8.U(4.W)
      tick_baud_d := false.B
      bit_cnt_d := Mux(io.parity_en, 11.U(4.W), 10.U(4.W))
      sreg_d := 0.U
      idle_d := false.B
    } .elsewhen(!idle_q && tick_baud_q) {
      when((bit_cnt_q === Mux(io.parity_en, 11.U(4.W), 10.U(4.W))) && io.rx.asBool()) {
        // must have been a glitch on the input, start bit is not set in the middle of bit time, abort.
        idle_d := true.B
        bit_cnt_d := 0.U
      } .otherwise {
        sreg_d := Cat(io.rx, sreg_q(10,1))
        bit_cnt_d := bit_cnt_q - 1.U(4.W)
        idle_d := bit_cnt_q === 1.U(4.W)
        // sreg_q -> if parity_en -> 00000000000
        // rx -> if parity enable -> 11xxxxxxxx0 else 1xxxxxxxx0
        // if !parity_en
        // 0000000000
        // x000000000
        // xx00000000
        // xxx0000000
        // xxxx000000
        // xxxxx00000
        // xxxxxx0000
        // xxxxxxx000
        // xxxxxxxx00

      }
    }
  }

  rx_valid_q := tick_baud_q & (bit_cnt_q === 1.U(4.W))
  io.rx_valid := rx_valid_q
  io.rx_data := Mux(io.parity_en, sreg_q(8,1), sreg_q(9,2))
  io.frame_err := rx_valid_q & ~sreg_q(10)
  io.rx_parity_err := io.parity_en & rx_valid_q & Cat(sreg_q(9,1), io.parity_odd).xorR()

}
