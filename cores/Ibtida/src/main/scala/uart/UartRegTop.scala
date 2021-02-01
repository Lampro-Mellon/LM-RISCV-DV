package uart
import chisel3._
import chisel3.util.{Cat, Fill}
import merl.uit.tilelink.{TLConfiguration, TL_D2H, TL_H2D, TL_RegAdapter}
import primitives.{SubReg, SubRegExt}

class UartRegTop(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val tl_i = Flipped(new TL_H2D)
    val tl_o = new TL_D2H
    val reg2hw = new UartReg2HW
    val hw2reg = new UartHw2Reg
  })

  val AW = 6
  val DW = 32
  val DBW = DW/8

  val reg_we, reg_re, reg_error, addrmiss, wr_err = Wire(Bool())
  val reg_addr = Wire(UInt(AW.W))
  val reg_wdata, reg_rdata, reg_rdata_next = Wire(UInt(DW.W))
  val reg_be = Wire(UInt(DBW.W))

  val tlul_regAdapter = Module(new TL_RegAdapter(AW)())
  tlul_regAdapter.io.tl_i <> io.tl_i
  io.tl_o <> tlul_regAdapter.io.tl_o
  reg_we := tlul_regAdapter.io.we_o
  reg_re := tlul_regAdapter.io.re_o
  reg_addr := tlul_regAdapter.io.addr_o
  reg_wdata := tlul_regAdapter.io.wdata_o
  reg_be := tlul_regAdapter.io.be_o
  tlul_regAdapter.io.rdata_i := reg_rdata
  tlul_regAdapter.io.error_i := reg_error

  reg_rdata := reg_rdata_next
  reg_error := addrmiss | wr_err

  /** Declaring software related signals for the registers */

  // Declaring software wires for each bit field of INTR_STATE register
  val intr_state_tx_empty_we = Wire(Bool())
  val intr_state_tx_empty_wd = Wire(Bool())
  val intr_state_tx_empty_qs = Wire(Bool())
  val intr_state_rx_overflow_we = Wire(Bool())
  val intr_state_rx_overflow_wd = Wire(Bool())
  val intr_state_rx_overflow_qs = Wire(Bool())
  val intr_state_rx_frame_err_we = Wire(Bool())
  val intr_state_rx_frame_err_wd = Wire(Bool())
  val intr_state_rx_frame_err_qs = Wire(Bool())
  val intr_state_rx_break_err_we = Wire(Bool())
  val intr_state_rx_break_err_wd = Wire(Bool())
  val intr_state_rx_break_err_qs = Wire(Bool())
  val intr_state_rx_parity_err_we = Wire(Bool())
  val intr_state_rx_parity_err_wd = Wire(Bool())
  val intr_state_rx_parity_err_qs = Wire(Bool())

  // Declaring software wires for each bit field of INTR_ENABLE register
  val intr_enable_tx_empty_we = Wire(Bool())
  val intr_enable_tx_empty_wd = Wire(Bool())
  val intr_enable_tx_empty_qs = Wire(Bool())
  val intr_enable_rx_overflow_we = Wire(Bool())
  val intr_enable_rx_overflow_wd = Wire(Bool())
  val intr_enable_rx_overflow_qs = Wire(Bool())
  val intr_enable_rx_frame_err_we = Wire(Bool())
  val intr_enable_rx_frame_err_wd = Wire(Bool())
  val intr_enable_rx_frame_err_qs = Wire(Bool())
  val intr_enable_rx_break_err_we = Wire(Bool())
  val intr_enable_rx_break_err_wd = Wire(Bool())
  val intr_enable_rx_break_err_qs = Wire(Bool())
  val intr_enable_rx_parity_err_we = Wire(Bool())
  val intr_enable_rx_parity_err_wd = Wire(Bool())
  val intr_enable_rx_parity_err_qs = Wire(Bool())

  // Declaring software wires for each bit field of INTR_TEST register
  val intr_test_tx_empty_we = Wire(Bool())
  val intr_test_tx_empty_wd = Wire(Bool())
  val intr_test_rx_overflow_we = Wire(Bool())
  val intr_test_rx_overflow_wd = Wire(Bool())
  val intr_test_rx_frame_err_we = Wire(Bool())
  val intr_test_rx_frame_err_wd = Wire(Bool())
  val intr_test_rx_break_err_we = Wire(Bool())
  val intr_test_rx_break_err_wd = Wire(Bool())
  val intr_test_rx_parity_err_we = Wire(Bool())
  val intr_test_rx_parity_err_wd = Wire(Bool())

  // Declaring software wires for each bit field of CTRL register
  val ctrl_tx_we = Wire(Bool())
  val ctrl_tx_wd = Wire(Bool())
  val ctrl_tx_qs = Wire(Bool())
  val ctrl_rx_we = Wire(Bool())
  val ctrl_rx_wd = Wire(Bool())
  val ctrl_rx_qs = Wire(Bool())
  val ctrl_slpbk_we = Wire(Bool())
  val ctrl_slpbk_wd = Wire(Bool())
  val ctrl_slpbk_qs = Wire(Bool())
  val ctrl_llpbk_we = Wire(Bool())
  val ctrl_llpbk_wd = Wire(Bool())
  val ctrl_llpbk_qs = Wire(Bool())
  val ctrl_parity_en_we = Wire(Bool())
  val ctrl_parity_en_wd = Wire(Bool())
  val ctrl_parity_en_qs = Wire(Bool())
  val ctrl_parity_odd_we = Wire(Bool())
  val ctrl_parity_odd_wd = Wire(Bool())
  val ctrl_parity_odd_qs = Wire(Bool())
  val ctrl_rxblvl_we = Wire(Bool())
  val ctrl_rxblvl_wd = Wire(UInt(2.W))
  val ctrl_rxblvl_qs = Wire(UInt(2.W))
  val ctrl_nco_we = Wire(Bool())
  val ctrl_nco_wd = Wire(UInt(16.W))
  val ctrl_nco_qs = Wire(UInt(16.W))

  // Declaring software wires for each bit field of STATUS register
  val status_txfull_qs = Wire(Bool())
  val status_txfull_re = Wire(Bool())
  val status_rxfull_qs = Wire(Bool())
  val status_rxfull_re = Wire(Bool())
  val status_txempty_qs = Wire(Bool())
  val status_txempty_re = Wire(Bool())
  val status_txidle_qs = Wire(Bool())
  val status_txidle_re = Wire(Bool())
  val status_rxidle_qs = Wire(Bool())
  val status_rxidle_re = Wire(Bool())
  val status_rxempty_qs = Wire(Bool())
  val status_rxempty_re = Wire(Bool())

  // Declaring software wires for RDATA register
  val rdata_qs = Wire(UInt(8.W))
  val rdata_re = Wire(Bool())

  // Declaring software wires for WDATA register
  val wdata_wd = Wire(UInt(8.W))
  val wdata_we = Wire(Bool())

  // Declaring software wires for each bit field of FIFO_CTRL register
  val fifo_ctrl_rxrst_wd = Wire(Bool())
  val fifo_ctrl_rxrst_we = Wire(Bool())
  val fifo_ctrl_txrst_wd = Wire(Bool())
  val fifo_ctrl_txrst_we = Wire(Bool())

  // Declaring software wires for each bit field of FIFO_STATUS register
  val fifo_status_txlvl_qs = Wire(UInt(6.W))
  val fifo_status_txlvl_re = Wire(Bool())
  val fifo_status_rxlvl_qs = Wire(UInt(6.W))
  val fifo_status_rxlvl_re = Wire(Bool())

  // Declaring software wires for each bit field of OVRD register
  val ovrd_txen_we = Wire(Bool())
  val ovrd_txen_wd = Wire(Bool())
  val ovrd_txen_qs = Wire(Bool())
  val ovrd_txval_we = Wire(Bool())
  val ovrd_txval_wd = Wire(Bool())
  val ovrd_txval_qs = Wire(Bool())


  /** Creating registers for each bit field of INTR_STATE register */
  val intr_state_tx_empty_reg = Module(new SubReg(SWACCESS = "W1C", DW = 1)())
  intr_state_tx_empty_reg.io.we := intr_state_tx_empty_we
  intr_state_tx_empty_reg.io.wd := intr_state_tx_empty_wd
  intr_state_tx_empty_reg.io.d := io.hw2reg.intr_state.tx_empty.d
  intr_state_tx_empty_reg.io.de := io.hw2reg.intr_state.tx_empty.de
  io.reg2hw.intr_state.tx_empty.q := intr_state_tx_empty_reg.io.q
  intr_state_tx_empty_qs := intr_state_tx_empty_reg.io.qs

  val intr_state_rx_overflow_reg = Module(new SubReg(SWACCESS = "W1C", DW = 1)())
  intr_state_rx_overflow_reg.io.we := intr_state_rx_overflow_we
  intr_state_rx_overflow_reg.io.wd := intr_state_rx_overflow_wd
  intr_state_rx_overflow_reg.io.d := io.hw2reg.intr_state.rx_overflow.d
  intr_state_rx_overflow_reg.io.de := io.hw2reg.intr_state.rx_overflow.de
  io.reg2hw.intr_state.rx_overflow.q := intr_state_rx_overflow_reg.io.q
  intr_state_rx_overflow_qs := intr_state_rx_overflow_reg.io.qs

  val intr_state_rx_frame_err_reg = Module(new SubReg(SWACCESS = "W1C", DW = 1)())
  intr_state_rx_frame_err_reg.io.we := intr_state_rx_frame_err_we
  intr_state_rx_frame_err_reg.io.wd := intr_state_rx_frame_err_wd
  intr_state_rx_frame_err_reg.io.d := io.hw2reg.intr_state.rx_frame_err.d
  intr_state_rx_frame_err_reg.io.de := io.hw2reg.intr_state.rx_frame_err.de
  io.reg2hw.intr_state.rx_frame_err.q := intr_state_rx_frame_err_reg.io.q
  intr_state_rx_frame_err_qs := intr_state_rx_frame_err_reg.io.qs

  val intr_state_rx_break_err_reg = Module(new SubReg(SWACCESS = "W1C", DW = 1)())
  intr_state_rx_break_err_reg.io.we := intr_state_rx_break_err_we
  intr_state_rx_break_err_reg.io.wd := intr_state_rx_break_err_wd
  intr_state_rx_break_err_reg.io.d := io.hw2reg.intr_state.rx_break_err.d
  intr_state_rx_break_err_reg.io.de := io.hw2reg.intr_state.rx_break_err.de
  io.reg2hw.intr_state.rx_break_err.q := intr_state_rx_break_err_reg.io.q
  intr_state_rx_break_err_qs := intr_state_rx_break_err_reg.io.qs

  val intr_state_rx_parity_err_reg = Module(new SubReg(SWACCESS = "W1C", DW = 1)())
  intr_state_rx_parity_err_reg.io.we := intr_state_rx_parity_err_we
  intr_state_rx_parity_err_reg.io.wd := intr_state_rx_parity_err_wd
  intr_state_rx_parity_err_reg.io.d := io.hw2reg.intr_state.rx_parity_err.d
  intr_state_rx_parity_err_reg.io.de := io.hw2reg.intr_state.rx_parity_err.de
  io.reg2hw.intr_state.rx_parity_err.q := intr_state_rx_parity_err_reg.io.q
  intr_state_rx_parity_err_qs := intr_state_rx_parity_err_reg.io.qs

  /** Creating registers for each bit field of INTR_ENABLE register */
  val intr_enable_tx_empty_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  intr_enable_tx_empty_reg.io.we := intr_enable_tx_empty_we
  intr_enable_tx_empty_reg.io.wd := intr_enable_tx_empty_wd
  intr_enable_tx_empty_reg.io.d := false.B
  intr_enable_tx_empty_reg.io.de := false.B
  io.reg2hw.intr_enable.tx_empty.q := intr_enable_tx_empty_reg.io.q
  intr_enable_tx_empty_qs := intr_enable_tx_empty_reg.io.qs

  val intr_enable_rx_overflow_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  intr_enable_rx_overflow_reg.io.we := intr_enable_rx_overflow_we
  intr_enable_rx_overflow_reg.io.wd := intr_enable_rx_overflow_wd
  intr_enable_rx_overflow_reg.io.d := false.B
  intr_enable_rx_overflow_reg.io.de := false.B
  io.reg2hw.intr_enable.rx_overflow.q := intr_enable_rx_overflow_reg.io.q
  intr_enable_rx_overflow_qs := intr_enable_rx_overflow_reg.io.qs

  val intr_enable_rx_frame_err_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  intr_enable_rx_frame_err_reg.io.we := intr_enable_rx_frame_err_we
  intr_enable_rx_frame_err_reg.io.wd := intr_enable_rx_frame_err_wd
  intr_enable_rx_frame_err_reg.io.d := false.B
  intr_enable_rx_frame_err_reg.io.de := false.B
  io.reg2hw.intr_enable.rx_frame_err.q := intr_enable_rx_frame_err_reg.io.q
  intr_enable_rx_frame_err_qs := intr_enable_rx_frame_err_reg.io.qs

  val intr_enable_rx_break_err_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  intr_enable_rx_break_err_reg.io.we := intr_enable_rx_break_err_we
  intr_enable_rx_break_err_reg.io.wd := intr_enable_rx_break_err_wd
  intr_enable_rx_break_err_reg.io.d := false.B
  intr_enable_rx_break_err_reg.io.de := false.B
  io.reg2hw.intr_enable.rx_break_err.q := intr_enable_rx_break_err_reg.io.q
  intr_enable_rx_break_err_qs := intr_enable_rx_break_err_reg.io.qs

  val intr_enable_rx_parity_err_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  intr_enable_rx_parity_err_reg.io.we := intr_enable_rx_parity_err_we
  intr_enable_rx_parity_err_reg.io.wd := intr_enable_rx_parity_err_wd
  intr_enable_rx_parity_err_reg.io.d := false.B
  intr_enable_rx_parity_err_reg.io.de := false.B
  io.reg2hw.intr_enable.rx_parity_err.q := intr_enable_rx_parity_err_reg.io.q
  intr_enable_rx_parity_err_qs := intr_enable_rx_parity_err_reg.io.qs

  /** Creating registers for each bit field of INTR_TEST register */
  val intr_test_tx_empty_reg = Module(new SubRegExt(DW = 1))
  intr_test_tx_empty_reg.io.re := false.B
  intr_test_tx_empty_reg.io.we := intr_test_tx_empty_we
  intr_test_tx_empty_reg.io.wd := intr_test_tx_empty_wd
  intr_test_tx_empty_reg.io.d := false.B
  io.reg2hw.intr_test.tx_empty.q := intr_test_tx_empty_reg.io.q
  io.reg2hw.intr_test.tx_empty.qe := intr_test_tx_empty_reg.io.qe

  val intr_test_rx_overflow_reg = Module(new SubRegExt(DW = 1))
  intr_test_rx_overflow_reg.io.re := false.B
  intr_test_rx_overflow_reg.io.we := intr_test_rx_overflow_we
  intr_test_rx_overflow_reg.io.wd := intr_test_rx_overflow_wd
  intr_test_rx_overflow_reg.io.d := false.B
  io.reg2hw.intr_test.rx_overflow.q := intr_test_rx_overflow_reg.io.q
  io.reg2hw.intr_test.rx_overflow.qe := intr_test_rx_overflow_reg.io.qe

  val intr_test_rx_frame_err_reg = Module(new SubRegExt(DW = 1))
  intr_test_rx_frame_err_reg.io.re := false.B
  intr_test_rx_frame_err_reg.io.we := intr_test_rx_frame_err_we
  intr_test_rx_frame_err_reg.io.wd := intr_test_rx_frame_err_wd
  intr_test_rx_frame_err_reg.io.d := false.B
  io.reg2hw.intr_test.rx_frame_err.q := intr_test_rx_frame_err_reg.io.q
  io.reg2hw.intr_test.rx_frame_err.qe := intr_test_rx_frame_err_reg.io.qe

  val intr_test_rx_break_err_reg = Module(new SubRegExt(DW = 1))
  intr_test_rx_break_err_reg.io.re := false.B
  intr_test_rx_break_err_reg.io.we := intr_test_rx_break_err_we
  intr_test_rx_break_err_reg.io.wd := intr_test_rx_break_err_wd
  intr_test_rx_break_err_reg.io.d := false.B
  io.reg2hw.intr_test.rx_break_err.q := intr_test_rx_break_err_reg.io.q
  io.reg2hw.intr_test.rx_break_err.qe := intr_test_rx_break_err_reg.io.qe

  val intr_test_rx_parity_err_reg = Module(new SubRegExt(DW = 1))
  intr_test_rx_parity_err_reg.io.re := false.B
  intr_test_rx_parity_err_reg.io.we := intr_test_rx_parity_err_we
  intr_test_rx_parity_err_reg.io.wd := intr_test_rx_parity_err_wd
  intr_test_rx_parity_err_reg.io.d := false.B
  io.reg2hw.intr_test.rx_parity_err.q := intr_test_rx_parity_err_reg.io.q
  io.reg2hw.intr_test.rx_parity_err.qe := intr_test_rx_parity_err_reg.io.qe

  /** Creating registers for each bit field of CTRL register */
  val ctrl_tx_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  ctrl_tx_reg.io.we := ctrl_tx_we
  ctrl_tx_reg.io.wd := ctrl_tx_wd
  ctrl_tx_reg.io.de := false.B
  ctrl_tx_reg.io.d := false.B
  io.reg2hw.ctrl.tx.q := ctrl_tx_reg.io.q
  ctrl_tx_qs := ctrl_tx_reg.io.qs

  val ctrl_rx_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  ctrl_rx_reg.io.we := ctrl_rx_we
  ctrl_rx_reg.io.wd := ctrl_rx_wd
  ctrl_rx_reg.io.de := false.B
  ctrl_rx_reg.io.d := false.B
  io.reg2hw.ctrl.rx.q := ctrl_rx_reg.io.q
  ctrl_rx_qs := ctrl_rx_reg.io.qs

  val ctrl_slpbk_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  ctrl_slpbk_reg.io.we := ctrl_slpbk_we
  ctrl_slpbk_reg.io.wd := ctrl_slpbk_wd
  ctrl_slpbk_reg.io.de := false.B
  ctrl_slpbk_reg.io.d := false.B
  io.reg2hw.ctrl.slpbk.q := ctrl_slpbk_reg.io.q
  ctrl_slpbk_qs := ctrl_slpbk_reg.io.qs

  val ctrl_llpbk_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  ctrl_llpbk_reg.io.we := ctrl_llpbk_we
  ctrl_llpbk_reg.io.wd := ctrl_llpbk_wd
  ctrl_llpbk_reg.io.de := false.B
  ctrl_llpbk_reg.io.d := false.B
  io.reg2hw.ctrl.llpbk.q := ctrl_llpbk_reg.io.q
  ctrl_llpbk_qs := ctrl_llpbk_reg.io.qs

  val ctrl_parity_en_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  ctrl_parity_en_reg.io.we := ctrl_parity_en_we
  ctrl_parity_en_reg.io.wd := ctrl_parity_en_wd
  ctrl_parity_en_reg.io.de := false.B
  ctrl_parity_en_reg.io.d := false.B
  io.reg2hw.ctrl.parity_en.q := ctrl_parity_en_reg.io.q
  ctrl_parity_en_qs := ctrl_parity_en_reg.io.qs

  val ctrl_parity_odd_reg = Module(new SubReg(SWACCESS = "RW", DW = 1)())
  ctrl_parity_odd_reg.io.we := ctrl_parity_odd_we
  ctrl_parity_odd_reg.io.wd := ctrl_parity_odd_wd
  ctrl_parity_odd_reg.io.de := false.B
  ctrl_parity_odd_reg.io.d := false.B
  io.reg2hw.ctrl.parity_odd.q := ctrl_parity_odd_reg.io.q
  ctrl_parity_odd_qs := ctrl_parity_odd_reg.io.qs

  val ctrl_rxblvl_reg = Module(new SubReg(SWACCESS = "RW", DW = 2)())
  ctrl_rxblvl_reg.io.we := ctrl_rxblvl_we
  ctrl_rxblvl_reg.io.wd := ctrl_rxblvl_wd
  ctrl_rxblvl_reg.io.de := false.B
  ctrl_rxblvl_reg.io.d := false.B
  io.reg2hw.ctrl.rxblvl.q := ctrl_rxblvl_reg.io.q
  ctrl_rxblvl_qs := ctrl_rxblvl_reg.io.qs

  val ctrl_nco_reg = Module(new SubReg(SWACCESS = "RW", DW = 16)())
  ctrl_nco_reg.io.we := ctrl_nco_we
  ctrl_nco_reg.io.wd := ctrl_nco_wd
  ctrl_nco_reg.io.de := false.B
  ctrl_nco_reg.io.d := false.B
  io.reg2hw.ctrl.nco.q := ctrl_nco_reg.io.q
  ctrl_nco_qs := ctrl_nco_reg.io.qs

  /** Creating registers for each bit field of STATUS register */
  val status_txfull_reg = Module(new SubRegExt(DW = 1))
  status_txfull_reg.io.re := status_txfull_re
  status_txfull_reg.io.we := false.B
  status_txfull_reg.io.wd := false.B
  status_txfull_reg.io.d := io.hw2reg.status.txfull.d
  io.reg2hw.status.txfull.q := status_txfull_reg.io.q
  io.reg2hw.status.txfull.re := status_txfull_reg.io.qre
  status_txfull_qs := status_txfull_reg.io.qs

  val status_rxfull_reg = Module(new SubRegExt(DW = 1))
  status_rxfull_reg.io.re := status_rxfull_re
  status_rxfull_reg.io.we := false.B
  status_rxfull_reg.io.wd := false.B
  status_rxfull_reg.io.d := io.hw2reg.status.rxfull.d
  io.reg2hw.status.rxfull.q := status_rxfull_reg.io.q
  io.reg2hw.status.rxfull.re := status_rxfull_reg.io.qre
  status_rxfull_qs := status_rxfull_reg.io.qs

  val status_txempty_reg = Module(new SubRegExt(DW = 1))
  status_txempty_reg.io.re := status_txempty_re
  status_txempty_reg.io.we := false.B
  status_txempty_reg.io.wd := false.B
  status_txempty_reg.io.d := io.hw2reg.status.txempty.d
  io.reg2hw.status.txempty.q := status_txempty_reg.io.q
  io.reg2hw.status.txempty.re := status_txempty_reg.io.qre
  status_txempty_qs := status_txempty_reg.io.qs

  val status_txidle_reg = Module(new SubRegExt(DW = 1))
  status_txidle_reg.io.re := status_txidle_re
  status_txidle_reg.io.we := false.B
  status_txidle_reg.io.wd := false.B
  status_txidle_reg.io.d := io.hw2reg.status.txidle.d
  io.reg2hw.status.txidle.q := status_txidle_reg.io.q
  io.reg2hw.status.txidle.re := status_txidle_reg.io.qre
  status_txidle_qs := status_txidle_reg.io.qs

  val status_rxidle_reg = Module(new SubRegExt(DW = 1))
  status_rxidle_reg.io.re := status_rxidle_re
  status_rxidle_reg.io.we := false.B
  status_rxidle_reg.io.wd := false.B
  status_rxidle_reg.io.d := io.hw2reg.status.rxidle.d
  io.reg2hw.status.rxidle.q := status_rxidle_reg.io.q
  io.reg2hw.status.rxidle.re := status_rxidle_reg.io.qre
  status_rxidle_qs := status_rxidle_reg.io.qs

  val status_rxempty_reg = Module(new SubRegExt(DW = 1))
  status_rxempty_reg.io.re := status_rxempty_re
  status_rxempty_reg.io.we := false.B
  status_rxempty_reg.io.wd := false.B
  status_rxempty_reg.io.d := io.hw2reg.status.rxempty.d
  io.reg2hw.status.rxempty.q := status_rxempty_reg.io.q
  io.reg2hw.status.rxempty.re := status_rxempty_reg.io.qre
  status_rxempty_qs := status_rxempty_reg.io.qs

  /** Creating register RDATA */
  val rdata_reg = Module(new SubRegExt(DW = 8))
  rdata_reg.io.re := rdata_re
  rdata_reg.io.we := false.B
  rdata_reg.io.wd := false.B
  rdata_reg.io.d := io.hw2reg.rdata.d
  io.reg2hw.rdata.re := rdata_reg.io.qre
  io.reg2hw.rdata.q := rdata_reg.io.q
  rdata_qs := rdata_reg.io.qs

  /** Creating register WDATA */
  val wdata_reg = Module(new SubReg(SWACCESS = "WO", DW = 8)())
  wdata_reg.io.we := wdata_we
  wdata_reg.io.wd := wdata_wd
  wdata_reg.io.de := false.B
  wdata_reg.io.d := false.B
  io.reg2hw.wdata.qe := wdata_reg.io.qe
  io.reg2hw.wdata.q := wdata_reg.io.q

  /** Creating registers for each bit field of FIFO_CTRL register */
  val fifo_ctrl_rxrst_reg = Module(new SubReg(SWACCESS = "WO", DW = 1)())
  fifo_ctrl_rxrst_reg.io.we := fifo_ctrl_rxrst_we
  fifo_ctrl_rxrst_reg.io.wd := fifo_ctrl_rxrst_wd
  fifo_ctrl_rxrst_reg.io.d := false.B
  fifo_ctrl_rxrst_reg.io.de := false.B
  io.reg2hw.fifo_ctrl.rxrst.q := fifo_ctrl_rxrst_reg.io.q
  io.reg2hw.fifo_ctrl.rxrst.qe := fifo_ctrl_rxrst_reg.io.qe

  val fifo_ctrl_txrst_reg = Module(new SubReg(SWACCESS = "WO", DW = 1)())
  fifo_ctrl_txrst_reg.io.we := fifo_ctrl_txrst_we
  fifo_ctrl_txrst_reg.io.wd := fifo_ctrl_txrst_wd
  fifo_ctrl_txrst_reg.io.d := false.B
  fifo_ctrl_txrst_reg.io.de := false.B
  io.reg2hw.fifo_ctrl.txrst.q := fifo_ctrl_txrst_reg.io.q
  io.reg2hw.fifo_ctrl.txrst.qe := fifo_ctrl_txrst_reg.io.qe

  /** Creating registers for each bit field of FIFO_STATUS register */
  val fifo_status_txlvl_reg = Module(new SubRegExt(DW = 6))
  fifo_status_txlvl_reg.io.re := fifo_status_txlvl_re
  fifo_status_txlvl_reg.io.we := false.B
  fifo_status_txlvl_reg.io.wd := false.B
  fifo_status_txlvl_reg.io.d := io.hw2reg.fifo_status.txlvl.d
  fifo_status_txlvl_qs := fifo_status_txlvl_reg.io.qs

  val fifo_status_rxlvl_reg = Module(new SubRegExt(DW = 6))
  fifo_status_rxlvl_reg.io.re := fifo_status_rxlvl_re
  fifo_status_rxlvl_reg.io.we := false.B
  fifo_status_rxlvl_reg.io.wd := false.B
  fifo_status_rxlvl_reg.io.d := io.hw2reg.fifo_status.rxlvl.d
  fifo_status_rxlvl_qs := fifo_status_rxlvl_reg.io.qs

  /** Creating registers for each bit field of OVRD register */
  val ovrd_txen_reg = Module(new SubReg(DW = 1, SWACCESS = "RW")())
  ovrd_txen_reg.io.we := ovrd_txen_we
  ovrd_txen_reg.io.wd := ovrd_txen_wd
  ovrd_txen_reg.io.d := false.B
  ovrd_txen_reg.io.de := false.B
  io.reg2hw.ovrd.txen.q := ovrd_txen_reg.io.q
  ovrd_txen_qs := ovrd_txen_reg.io.qs

  val ovrd_txval_reg = Module(new SubReg(DW = 1, SWACCESS = "RW")())
  ovrd_txval_reg.io.we := ovrd_txval_we
  ovrd_txval_reg.io.wd := ovrd_txval_wd
  ovrd_txval_reg.io.d := false.B
  ovrd_txval_reg.io.de := false.B
  io.reg2hw.ovrd.txval.q := ovrd_txval_reg.io.q
  ovrd_txval_qs := ovrd_txval_reg.io.qs

  val addr_hit = Wire(Vec(10, Bool()))
  addr_hit.foreach(w => w := false.B)
  addr_hit(0) := reg_addr === UartAddressMap.UART_INTR_STATE_OFFSET
  addr_hit(1) := reg_addr === UartAddressMap.UART_INTR_ENABLE_OFFSET
  addr_hit(2) := reg_addr === UartAddressMap.UART_INTR_TEST_OFFSET
  addr_hit(3) := reg_addr === UartAddressMap.UART_CTRL_OFFSET
  addr_hit(4) := reg_addr === UartAddressMap.UART_STATUS_OFFSET
  addr_hit(5) := reg_addr === UartAddressMap.UART_RDATA_OFFSET
  addr_hit(6) := reg_addr === UartAddressMap.UART_WDATA_OFFSET
  addr_hit(7) := reg_addr === UartAddressMap.UART_FIFO_CTRL_OFFSET
  addr_hit(8) := reg_addr === UartAddressMap.UART_FIFO_STATUS_OFFSET
  addr_hit(9) := reg_addr === UartAddressMap.UART_OVRD_OFFSET

  addrmiss := Mux(reg_re || reg_we, ~addr_hit.contains(true.B), false.B)

  wr_err := false.B
  val UART_PERMIT = Wire(Vec(10, UInt(DBW.W)))
  UART_PERMIT(0) := "b0001".U   // INTR_STATE register needs 1 byte data only.
  UART_PERMIT(1) := "b0001".U   // INTR_ENABLE register needs 1 byte data only.
  UART_PERMIT(2) := "b0001".U   // INTR_TEST register needs 1 byte data only.
  UART_PERMIT(3) := "b1111".U   // CTRL register needs full word data.
  UART_PERMIT(4) := "b0001".U   // STATUS register needs 1 byte data only.
  UART_PERMIT(5) := "b0001".U   // RDATA register needs 1 byte data only.
  UART_PERMIT(6) := "b0001".U   // WDATA register needs 1 byte data only.
  UART_PERMIT(7) := "b0001".U   // FIFO_CTRL register needs 1 byte data only.
  UART_PERMIT(8) := "b0111".U   // FIFO_STATUS register needs 3 byte data only.
  UART_PERMIT(9) := "b0001".U   // OVRD register needs 1 byte data only.

  for (i <- 0 until 10) {
    wr_err := Mux(addr_hit(i) && reg_we && (UART_PERMIT(i) =/= (UART_PERMIT(i) & reg_be)), true.B, false.B)
  }


  /** Initialising software signals */
  intr_state_tx_empty_we := addr_hit(0) & reg_we & ~wr_err
  intr_state_tx_empty_wd := reg_wdata(2)
  intr_state_rx_overflow_we := addr_hit(0) & reg_we & ~wr_err
  intr_state_rx_overflow_wd := reg_wdata(3)
  intr_state_rx_frame_err_we := addr_hit(0) & reg_we & ~wr_err
  intr_state_rx_frame_err_wd := reg_wdata(4)
  intr_state_rx_break_err_we := addr_hit(0) & reg_we & ~wr_err
  intr_state_rx_break_err_wd := reg_wdata(5)
  intr_state_rx_parity_err_we := addr_hit(0) & reg_we & ~wr_err
  intr_state_rx_parity_err_wd := reg_wdata(7)

  intr_enable_tx_empty_we := addr_hit(1) & reg_we & ~wr_err
  intr_enable_tx_empty_wd := reg_wdata(2)
  intr_enable_rx_overflow_we := addr_hit(1) & reg_we & ~wr_err
  intr_enable_rx_overflow_wd := reg_wdata(3)
  intr_enable_rx_frame_err_we := addr_hit(1) & reg_we & ~wr_err
  intr_enable_rx_frame_err_wd := reg_wdata(4)
  intr_enable_rx_break_err_we := addr_hit(1) & reg_we & ~wr_err
  intr_enable_rx_break_err_wd := reg_wdata(5)
  intr_enable_rx_parity_err_we := addr_hit(1) & reg_we & ~wr_err
  intr_enable_rx_parity_err_wd := reg_wdata(7)

  intr_test_tx_empty_we := addr_hit(2) & reg_we & ~wr_err
  intr_test_tx_empty_wd := reg_wdata(2)
  intr_test_rx_overflow_we := addr_hit(2) & reg_we & ~wr_err
  intr_test_rx_overflow_wd := reg_wdata(3)
  intr_test_rx_frame_err_we := addr_hit(2) & reg_we & ~wr_err
  intr_test_rx_frame_err_wd := reg_wdata(4)
  intr_test_rx_break_err_we := addr_hit(2) & reg_we & ~wr_err
  intr_test_rx_break_err_wd := reg_wdata(5)
  intr_test_rx_parity_err_we := addr_hit(2) & reg_we & ~wr_err
  intr_test_rx_parity_err_wd := reg_wdata(7)

  ctrl_tx_we := addr_hit(3) & reg_we & ~wr_err
  ctrl_tx_wd := reg_wdata(0)
  ctrl_rx_we := addr_hit(3) & reg_we & ~wr_err
  ctrl_rx_wd := reg_wdata(1)
  ctrl_slpbk_we := addr_hit(3) & reg_we & ~wr_err
  ctrl_slpbk_wd := reg_wdata(4)
  ctrl_llpbk_we := addr_hit(3) & reg_we & ~wr_err
  ctrl_llpbk_wd := reg_wdata(5)
  ctrl_parity_en_we := addr_hit(3) & reg_we & ~wr_err
  ctrl_parity_en_wd := reg_wdata(6)
  ctrl_parity_odd_we := addr_hit(3) & reg_we & ~wr_err
  ctrl_parity_odd_wd := reg_wdata(7)
  ctrl_rxblvl_we := addr_hit(3) & reg_we & ~wr_err
  ctrl_rxblvl_wd := reg_wdata(9,8)
  ctrl_nco_we := addr_hit(3) & reg_we & ~wr_err
  ctrl_nco_wd := reg_wdata(31,16)

  status_txfull_re := addr_hit(4) && reg_re
  status_rxfull_re := addr_hit(4) && reg_re
  status_txidle_re := addr_hit(4) && reg_re
  status_txempty_re := addr_hit(4) && reg_re
  status_rxidle_re := addr_hit(4) && reg_re
  status_rxempty_re := addr_hit(4) && reg_re

  rdata_re := addr_hit(5) && reg_re

  wdata_we := addr_hit(6) & reg_we & ~wr_err
  wdata_wd := reg_wdata(7,0)

  fifo_ctrl_rxrst_we := addr_hit(7) & reg_we & ~wr_err
  fifo_ctrl_rxrst_wd := reg_wdata(0)
  fifo_ctrl_txrst_we := addr_hit(7) & reg_we & ~wr_err
  fifo_ctrl_txrst_wd := reg_wdata(1)

  fifo_status_txlvl_re := addr_hit(8) && reg_re
  fifo_status_rxlvl_re := addr_hit(8) && reg_re

  ovrd_txen_we := addr_hit(9) & reg_we & ~wr_err
  ovrd_txen_wd := reg_wdata(0)
  ovrd_txval_we := addr_hit(9) & reg_we & ~wr_err
  ovrd_txval_wd := reg_wdata(1)

  reg_rdata_next := 0.U
  when(addr_hit(0)) {
    reg_rdata_next := Cat(
      0.U(24.W), // 24 bits MSB all 0000s
      intr_state_rx_parity_err_qs, // 7th bit
      0.U(1.W),                    // 6th bit
      intr_state_rx_break_err_qs,  // 5th bit
      intr_state_rx_frame_err_qs,  // 4th bit
      intr_state_rx_overflow_qs,   // 3rd bit
      intr_state_tx_empty_qs,      // 2nd bit
      0.U(2.W)                     // 1st and 0th bit 00s
    )
  } .elsewhen(addr_hit(1)) {
    reg_rdata_next := Cat(
      0.U(24.W), // 24 bits MSB all 0000s
      intr_enable_rx_parity_err_qs, // 7th bit
      0.U(1.W),                     // 6th bit
      intr_enable_rx_break_err_qs,  // 5th bit
      intr_enable_rx_frame_err_qs,  // 4th bit
      intr_enable_rx_overflow_qs,   // 3rd bit
      intr_enable_tx_empty_qs,      // 2nd bit
      0.U(2.W)                     // 1st and 0th bit 00s
    )
  } .elsewhen(addr_hit(2)) {
    reg_rdata_next := 0.U(DW.W)
  } .elsewhen(addr_hit(3)) {
    reg_rdata_next := Cat(
      ctrl_nco_qs,  // [31:16] 16 bits MSB
      0.U(6.W),     // [15:10] bits reserved
      ctrl_rxblvl_qs, // [9:8] rxblvl
      ctrl_parity_odd_qs, // [7] parity_odd
      ctrl_parity_en_qs,  // [6] parity_en
      ctrl_llpbk_qs,      // [5] llpbk
      ctrl_slpbk_qs,      // [4] slpbk
      0.U(2.W),           // [3:2] 2 bits reserved
      ctrl_rx_qs,         // [1] rx
      ctrl_tx_qs          // [0] tx
    )
  } .elsewhen(addr_hit(4)) {
    reg_rdata_next := Cat(
      0.U(26.W), // [31:6] bits reserved
      status_rxempty_qs,
      status_rxidle_qs,
      status_txidle_qs,
      status_txempty_qs,
      status_rxfull_qs,
      status_txfull_qs
    )
  } .elsewhen(addr_hit(5)) {
    reg_rdata_next := Cat(0.U(24.W), rdata_qs)
  } .elsewhen(addr_hit(6)) {
    reg_rdata_next := 0.U(32.W)
  } .elsewhen(addr_hit(7)) {
    reg_rdata_next := 0.U(32.W)
  } .elsewhen(addr_hit(8)) {
    reg_rdata_next := Cat(
      0.U(10.W),
      fifo_status_rxlvl_qs,
      0.U(10.W),
      fifo_status_txlvl_qs
    )
  } .elsewhen(addr_hit(9)) {
    reg_rdata_next := Cat(
      0.U(30.W),
      ovrd_txval_qs,
      ovrd_txen_qs
    )
  } .otherwise {
    reg_rdata_next := Fill(DW, 1.U)
  }

}
