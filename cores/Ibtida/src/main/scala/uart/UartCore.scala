package uart
import chisel3._
import chisel3.util.{Cat, Enum}
import primitives.{Fifo, FlopSynchronizer, IntrHardware}

class UartCore extends Module {
  val io = IO(new Bundle {
    val reg2hw = Flipped(new UartReg2HW)
    val hw2reg = Flipped(new UartHw2Reg)

    val rx = Input(UInt(1.W))
    val tx = Output(UInt(1.W))

    val intr_tx_empty_o = Output(Bool())
    val intr_rx_overflow_o = Output(Bool())
    val intr_rx_frame_err_o = Output(Bool())
    val intr_rx_break_err_o = Output(Bool())
    val intr_rx_parity_err_o = Output(Bool())
  })

  val NcoWidth = io.reg2hw.ctrl.nco.q.getWidth
  val tx_enable = Wire(Bool())
  val rx_enable = Wire(Bool())
  val sys_loopback = Wire(Bool())
  val line_loopback = Wire(Bool())
  val uart_fifo_rxrst = Wire(Bool())
  val uart_fifo_txrst = Wire(Bool())
  val ovrd_tx_en = Wire(Bool())
  val ovrd_tx_val = Wire(Bool())
  val not_allzero_char = Wire(Bool())
  val allzero_err = Wire(Bool())
  val allzero_cnt_d = Wire(UInt(5.W))
  val allzero_cnt_q = RegInit(0.U(5.W))
  val rx_valid = Wire(Bool())
  val rx_uart_idle = Wire(Bool())
  val event_rx_frame_err = Wire(Bool())
  val event_rx_break_err = Wire(Bool())
  val event_rx_overflow = Wire(Bool())
  val event_rx_parity_err = Wire(Bool())
  val event_tx_empty = Wire(Bool())
  val rx_fifo_data = Wire(UInt(8.W))
  val tx_fifo_data = Wire(UInt(8.W))
  val rx_fifo_wready = Wire(Bool())
  val rx_fifo_wvalid = Wire(Bool())
  val tx_fifo_wready = Wire(Bool())
  val tx_fifo_rready = Wire(Bool())
  val rx_fifo_rvalid = Wire(Bool())
  val tx_fifo_rvalid = Wire(Bool())
  val tx_uart_idle = Wire(Bool())
  val tx_uart_idle_q = RegInit(true.B)
  val tx_fifo_depth = Wire(UInt(6.W))
  val rx_fifo_depth = Wire(UInt(6.W))
  val rx_tick_baud = Wire(Bool())
  val tick_baud_x16 = Wire(Bool())
  val tx_out_q = RegInit(1.U(1.W))
  val tx_out = Wire(UInt(1.W))
  val rx_sync = Wire(UInt(1.W))

  val breakChk :: breakWait :: Nil = Enum(2)
  val break_st_q = RegInit(breakChk)
  val break_err = Wire(Bool())
  val rx_in = Wire(Bool())
  val uart_rdata = Wire(UInt(8.W))


  tx_enable := io.reg2hw.ctrl.tx.q
  rx_enable := io.reg2hw.ctrl.rx.q
  sys_loopback := io.reg2hw.ctrl.slpbk.q
  line_loopback := io.reg2hw.ctrl.llpbk.q

  uart_fifo_rxrst := io.reg2hw.fifo_ctrl.rxrst.q & io.reg2hw.fifo_ctrl.rxrst.qe
  uart_fifo_txrst := io.reg2hw.fifo_ctrl.txrst.q & io.reg2hw.fifo_ctrl.txrst.qe

  ovrd_tx_en := io.reg2hw.ovrd.txen.q
  ovrd_tx_val := io.reg2hw.ovrd.txval.q

  not_allzero_char := rx_valid & (~event_rx_frame_err | (rx_fifo_data =/= 0.U))
  allzero_err := event_rx_frame_err & (rx_fifo_data === 0.U)
  allzero_cnt_d := Mux(break_st_q === breakWait || not_allzero_char, 0.U, Mux(allzero_err, allzero_cnt_q + 1.U(5.W), allzero_cnt_q))

  when(rx_enable) {
    allzero_cnt_q := allzero_cnt_d
  }

  when(io.reg2hw.ctrl.rxblvl.q === 0.U(2.W)) {
    break_err := allzero_cnt_d >= 2.U(5.W)
  }.elsewhen(io.reg2hw.ctrl.rxblvl.q === 1.U(2.W)) {
    break_err := allzero_cnt_d >= 4.U(5.W)
  }.elsewhen(io.reg2hw.ctrl.rxblvl.q === 2.U(2.W)) {
    break_err := allzero_cnt_d >= 8.U(5.W)
  } .otherwise {
    break_err := allzero_cnt_d >= 16.U(5.W)
  }

  when(break_st_q === breakChk) {
    when(event_rx_break_err) {
      break_st_q := breakWait
    }
  }
  when(break_st_q === breakWait) {
    when(rx_in) {
      break_st_q := breakChk
    }
  }

  io.hw2reg.rdata.d := uart_rdata

  io.hw2reg.status.rxempty.d := ~rx_fifo_rvalid
  io.hw2reg.status.rxidle.d := rx_uart_idle
  io.hw2reg.status.txidle.d := tx_uart_idle & ~tx_fifo_rvalid
  io.hw2reg.status.txempty.d := ~tx_fifo_rvalid
  io.hw2reg.status.rxfull.d := ~rx_fifo_wready
  io.hw2reg.status.txfull.d := ~tx_fifo_wready

  io.hw2reg.fifo_status.txlvl.d := tx_fifo_depth
  io.hw2reg.fifo_status.rxlvl.d := rx_fifo_depth

  val nco_sum_q = RegInit(0.U((NcoWidth+1).W))

  when(tx_enable || rx_enable) {
    nco_sum_q := Cat(0.U(1.W), nco_sum_q(NcoWidth-1,0)) + Cat(0.U(1.W), io.reg2hw.ctrl.nco.q(NcoWidth-1, 0))
  }

  tick_baud_x16 := nco_sum_q(16)

  // TX Logic
  tx_fifo_rready := tx_uart_idle & tx_fifo_rvalid & tx_enable

  val txfifo = Module(new Fifo(width = 8, pass = false, depth = 32))
  txfifo.io.clr_i := uart_fifo_txrst
  txfifo.io.wvalid_i := io.reg2hw.wdata.qe
  tx_fifo_wready := txfifo.io.wready_o
  txfifo.io.wdata_i := io.reg2hw.wdata.q
  tx_fifo_depth := txfifo.io.depth_o
  tx_fifo_rvalid := txfifo.io.rvalid_o
  txfifo.io.rready_i := tx_fifo_rready
  tx_fifo_data := txfifo.io.rdata_o

  val uart_tx = Module(new UartTx())
  uart_tx.io.tx_enable := tx_enable
  uart_tx.io.tick_baud_x16 := tick_baud_x16
  uart_tx.io.parity_en := io.reg2hw.ctrl.parity_en.q
  uart_tx.io.wr := tx_fifo_rready
  uart_tx.io.wr_parity := (tx_fifo_data.xorR()) ^ io.reg2hw.ctrl.parity_odd.q
  uart_tx.io.wr_data := tx_fifo_data
  tx_uart_idle := uart_tx.io.idle
  tx_out := uart_tx.io.tx

  io.tx := Mux(line_loopback, io.rx, tx_out_q)

  when(ovrd_tx_en) {
    tx_out_q := ovrd_tx_val
  } .elsewhen(sys_loopback) {
    tx_out_q := 1.U
  } .otherwise {
    tx_out_q := tx_out
  }

  // RX Logic

  // synchronizing the asynchronous rx input coming from another domain to resolve metastability issues
  // Read more here: https://github.com/lowRISC/opentitan/issues/3439
  val flopSynchronizer = Module(new FlopSynchronizer(width = 1, resetVal = 1.U))
  flopSynchronizer.io.d_in := io.rx
  rx_sync := flopSynchronizer.io.q_out

  rx_in := Mux(sys_loopback, tx_out, Mux(line_loopback, 1.U, rx_sync))

  val uart_rx = Module(new UartRx)
  uart_rx.io.rx_enable := rx_enable
  uart_rx.io.tick_baud_x16 := tick_baud_x16
  uart_rx.io.parity_en := io.reg2hw.ctrl.parity_en.q
  uart_rx.io.parity_odd := io.reg2hw.ctrl.parity_odd.q
  rx_tick_baud := uart_rx.io.tick_baud
  rx_valid := uart_rx.io.rx_valid
  rx_fifo_data := uart_rx.io.rx_data
  rx_uart_idle := uart_rx.io.idle
  event_rx_frame_err := uart_rx.io.frame_err
  uart_rx.io.rx := rx_in
  event_rx_parity_err := uart_rx.io.rx_parity_err

  rx_fifo_wvalid := rx_valid & ~event_rx_frame_err & ~event_rx_parity_err

  val rxfifo = Module(new Fifo(width = 8, pass = false, depth = 32))
  rxfifo.io.clr_i := uart_fifo_rxrst
  rxfifo.io.wvalid_i := rx_fifo_wvalid
  rx_fifo_wready := rxfifo.io.wready_o
  rxfifo.io.wdata_i := rx_fifo_data
  rx_fifo_depth := rxfifo.io.depth_o
  rx_fifo_rvalid := rxfifo.io.rvalid_o
  rxfifo.io.rready_i := io.reg2hw.rdata.re
  uart_rdata := rxfifo.io.rdata_o

  // Interrupt and Status

  // handling the empty interrupt by qualifying it with idle as well to give software
  // a chance to write the desired data in the FIFO before enabling it.
  // Read more here: https://github.com/lowRISC/opentitan/blob/master/hw/ip/uart/rtl/uart_core.sv#L308

  // if the software disabled the tx_enable previously, the tx_uart_idle_q register will hold false.
  // after writing the desired values software will enable the tx_enable
  event_tx_empty := ~tx_fifo_rvalid & tx_uart_idle & ~tx_uart_idle_q

  tx_uart_idle_q := tx_uart_idle


  // generate rx overflow event if the rx wants to write a valid data in FIFO
  // but the FIFO is full and cannot accept it.
  event_rx_overflow := rx_fifo_wvalid & ~rx_fifo_wready

  event_rx_break_err := break_err & (break_st_q === breakChk)

  val intr_hw_tx_empty = Module(new IntrHardware(width = 1))
  intr_hw_tx_empty.io.event_intr_i := event_tx_empty
  intr_hw_tx_empty.io.reg2hw_intr_enable_q_i := io.reg2hw.intr_enable.tx_empty.q
  intr_hw_tx_empty.io.reg2hw_intr_test_q_i := io.reg2hw.intr_test.tx_empty.q
  intr_hw_tx_empty.io.reg2hw_intr_test_qe_i := io.reg2hw.intr_test.tx_empty.qe
  intr_hw_tx_empty.io.reg2hw_intr_state_q_i := io.reg2hw.intr_state.tx_empty.q
  io.hw2reg.intr_state.tx_empty.de := intr_hw_tx_empty.io.hw2reg_intr_state_de_o
  io.hw2reg.intr_state.tx_empty.d := intr_hw_tx_empty.io.hw2reg_intr_state_d_o
  io.intr_tx_empty_o := intr_hw_tx_empty.io.intr_o

  val intr_hw_rx_overflow = Module(new IntrHardware(width = 1))
  intr_hw_rx_overflow.io.event_intr_i := event_rx_overflow
  intr_hw_rx_overflow.io.reg2hw_intr_enable_q_i := io.reg2hw.intr_enable.rx_overflow.q
  intr_hw_rx_overflow.io.reg2hw_intr_test_q_i := io.reg2hw.intr_test.rx_overflow.q
  intr_hw_rx_overflow.io.reg2hw_intr_test_qe_i := io.reg2hw.intr_test.rx_overflow.qe
  intr_hw_rx_overflow.io.reg2hw_intr_state_q_i := io.reg2hw.intr_state.rx_overflow.q
  io.hw2reg.intr_state.rx_overflow.de := intr_hw_rx_overflow.io.hw2reg_intr_state_de_o
  io.hw2reg.intr_state.rx_overflow.d := intr_hw_rx_overflow.io.hw2reg_intr_state_d_o
  io.intr_rx_overflow_o := intr_hw_rx_overflow.io.intr_o

  val intr_hw_rx_frame_err = Module(new IntrHardware(width = 1))
  intr_hw_rx_frame_err.io.event_intr_i := event_rx_frame_err
  intr_hw_rx_frame_err.io.reg2hw_intr_enable_q_i := io.reg2hw.intr_enable.rx_frame_err.q
  intr_hw_rx_frame_err.io.reg2hw_intr_test_q_i := io.reg2hw.intr_test.rx_frame_err.q
  intr_hw_rx_frame_err.io.reg2hw_intr_test_qe_i := io.reg2hw.intr_test.rx_frame_err.qe
  intr_hw_rx_frame_err.io.reg2hw_intr_state_q_i := io.reg2hw.intr_state.rx_frame_err.q
  io.hw2reg.intr_state.rx_frame_err.de := intr_hw_rx_frame_err.io.hw2reg_intr_state_de_o
  io.hw2reg.intr_state.rx_frame_err.d := intr_hw_rx_frame_err.io.hw2reg_intr_state_d_o
  io.intr_rx_frame_err_o := intr_hw_rx_frame_err.io.intr_o

  val intr_hw_rx_break_err = Module(new IntrHardware(width = 1))
  intr_hw_rx_break_err.io.event_intr_i := event_rx_break_err
  intr_hw_rx_break_err.io.reg2hw_intr_enable_q_i := io.reg2hw.intr_enable.rx_break_err.q
  intr_hw_rx_break_err.io.reg2hw_intr_test_q_i := io.reg2hw.intr_test.rx_break_err.q
  intr_hw_rx_break_err.io.reg2hw_intr_test_qe_i := io.reg2hw.intr_test.rx_break_err.qe
  intr_hw_rx_break_err.io.reg2hw_intr_state_q_i := io.reg2hw.intr_state.rx_break_err.q
  io.hw2reg.intr_state.rx_break_err.de := intr_hw_rx_break_err.io.hw2reg_intr_state_de_o
  io.hw2reg.intr_state.rx_break_err.d := intr_hw_rx_break_err.io.hw2reg_intr_state_d_o
  io.intr_rx_break_err_o := intr_hw_rx_break_err.io.intr_o

  val intr_hw_rx_parity_err = Module(new IntrHardware(width = 1))
  intr_hw_rx_parity_err.io.event_intr_i := event_rx_parity_err
  intr_hw_rx_parity_err.io.reg2hw_intr_enable_q_i := io.reg2hw.intr_enable.rx_parity_err.q
  intr_hw_rx_parity_err.io.reg2hw_intr_test_q_i := io.reg2hw.intr_test.rx_parity_err.q
  intr_hw_rx_parity_err.io.reg2hw_intr_test_qe_i := io.reg2hw.intr_test.rx_parity_err.qe
  intr_hw_rx_parity_err.io.reg2hw_intr_state_q_i := io.reg2hw.intr_state.rx_parity_err.q
  io.hw2reg.intr_state.rx_parity_err.de := intr_hw_rx_parity_err.io.hw2reg_intr_state_de_o
  io.hw2reg.intr_state.rx_parity_err.d := intr_hw_rx_parity_err.io.hw2reg_intr_state_d_o
  io.intr_rx_parity_err_o := intr_hw_rx_parity_err.io.intr_o

}