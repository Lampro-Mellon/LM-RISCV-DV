package uart
import chisel3._
import merl.uit.tilelink.{TLConfiguration, TL_D2H, TL_H2D}

class Uart(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    // Bus Interface
    val tl_i = Flipped(new TL_H2D())
    val tl_o = new TL_D2H()
    // Generic IO
    val cio_rx_i = Input(Bool())
    val cio_tx_o = Output(Bool())
    val cio_tx_en_o = Output(Bool())
    // Interrupts
    val intr_tx_empty_o = Output(Bool())
    val intr_rx_overflow_o = Output(Bool())
    val intr_rx_frame_err_o = Output(Bool())
    val intr_rx_break_err_o = Output(Bool())
    val intr_rx_parity_err_o = Output(Bool())
  })

  val reg2hw = Wire(new UartReg2HW) // Outputs
  val hw2reg = Wire(new UartHw2Reg) // Inputs

  val uart_reg_top = Module(new UartRegTop())
  uart_reg_top.io.tl_i <> io.tl_i
  io.tl_o <> uart_reg_top.io.tl_o
  reg2hw <> uart_reg_top.io.reg2hw
  uart_reg_top.io.hw2reg <> hw2reg

  val uart_core = Module(new UartCore)
  uart_core.io.reg2hw <> reg2hw
  hw2reg <> uart_core.io.hw2reg
  uart_core.io.rx := io.cio_rx_i
  io.cio_tx_o := uart_core.io.tx
  io.intr_tx_empty_o := uart_core.io.intr_tx_empty_o
  io.intr_rx_overflow_o := uart_core.io.intr_rx_overflow_o
  io.intr_rx_frame_err_o := uart_core.io.intr_rx_frame_err_o
  io.intr_rx_break_err_o := uart_core.io.intr_rx_break_err_o
  io.intr_rx_parity_err_o := uart_core.io.intr_rx_parity_err_o

  // always enable the driving out of tx
  io.cio_tx_en_o := true.B
}
