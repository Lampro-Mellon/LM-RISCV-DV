package flash_ctrl
import chisel3._
import merl.uit.tilelink.{TLConfiguration, TLSocket1_N, TL_D2H, TL_H2D, TL_RegAdapter}

class FlashCtrlRegTop(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val tl_i = Flipped(new TL_H2D())
    val tl_o = new TL_D2H()
    // For window ports
    val tl_win_o = new TL_H2D()
    val tl_win_i = Flipped(new TL_D2H())
    // To hardware peripheral logic
    val reg2hw = new FlashCtrlReg2Hw
    val hw2reg = new FlashCtrlHw2Reg
  })

  val AW = 8
  val DW = 32
  val DBW = DW/8

  val reg_we = Wire(Bool())
  val reg_re = Wire(Bool())
  val reg_addr = Wire(UInt(AW.W))
  val reg_wdata = Wire(UInt(DW.W))
  val reg_be = Wire(UInt(DBW.W))
  val reg_rdata = Wire(UInt(DW.W))
  val reg_error = Wire(Bool())

  val addrmiss, wr_err = Wire(Bool())

  val reg_rdata_next = Wire(UInt(DW.W))

  val tl_reg_h2d = new TL_H2D()
  val tl_reg_d2h = new TL_D2H()

  // Creating bundles of TL-UL interfaces to connect with the 1:N Socket
  val tl_socket_h2d = Wire(Vec(2, new TL_H2D))
  val tl_socket_d2h = Wire(Vec(2, new TL_D2H))

  val reg_steer = Wire(UInt(2.W)) // used for steering the host request to a specific device in the 1:N Socket

  // the last port of the 1:N socket is connected with this bundle which is later passed as input to the TL_Register Adapter
  tl_reg_h2d <> tl_socket_h2d(1)
  // the response of device from the last port of 1:N socket is being driven by the tl_reg_d2h bundle which is coming as output from the TL_Register Adapter.
  tl_socket_d2h(1) <> tl_reg_d2h

  // for window the first port of 1:N socket is connected with the tl_win_o to route the host's request
  io.tl_win_o <> tl_socket_h2d(0)
  // the response from the window is provided to the first port of the 1:N socket through the tl_socket_d2h(0) port.
  tl_socket_d2h(0) <> io.tl_win_i


  // Creating the actual 1:N Socket
  val tlul_1_N_socket = Module(new TLSocket1_N(2))
  tlul_1_N_socket.io.tl_h_i <> io.tl_i
  io.tl_o <> tlul_1_N_socket.io.tl_h_o
  tl_socket_h2d <> tlul_1_N_socket.io.tl_d_o
  tlul_1_N_socket.io.tl_d_i <> tl_socket_d2h
  tlul_1_N_socket.io.dev_sel := reg_steer

  // Creating steering logic
  reg_steer := 1.U
  when(io.tl_i.a_address(AW-1,0) >= 168.U && io.tl_i.a_address(AW-1,0) < 172.U) {
    reg_steer := 0.U
  }

  // Creating TL_Register Adapter to cater the request of host on the last port for communicating with the registers inside this module
  val tlul_reg_adapter = Module(new TL_RegAdapter(AW, DW)())
  tlul_reg_adapter.io.tl_i <> tl_reg_h2d
  tl_reg_d2h <> tlul_reg_adapter.io.tl_o
  reg_we := tlul_reg_adapter.io.we_o
  reg_re := tlul_reg_adapter.io.re_o
  reg_addr := tlul_reg_adapter.io.addr_o
  reg_wdata := tlul_reg_adapter.io.wdata_o
  reg_be := tlul_reg_adapter.io.be_o
  tlul_reg_adapter.io.rdata_i := reg_rdata
  tlul_reg_adapter.io.error_i := reg_error

  reg_rdata := reg_rdata_next
  reg_error := addrmiss | wr_err

  // Defining software related signals that will be connected with the flip flops for each register bit field.

  // INTR_STATE Register
  val intr_state_rd_full_qs, intr_state_rd_full_wd, intr_state_rd_full_we = Wire(Bool())
  val intr_state_op_done_qs, intr_state_op_done_wd, intr_state_op_done_we = Wire(Bool())
  val intr_state_op_error_qs, intr_state_op_error_wd, intr_state_op_error_we = Wire(Bool())


  // INTR_ENABLE Register
  val intr_enable_rd_full_qs, intr_enable_rd_full_wd, intr_enable_rd_full_we = Wire(Bool())
  val intr_enable_op_done_qs, intr_enable_op_done_wd, intr_enable_op_done_we = Wire(Bool())
  val intr_enable_op_error_qs, intr_enable_op_error_wd, intr_enable_op_error_we = Wire(Bool())


  // INTR_TEST Register
  val intr_test_rd_full_wd, intr_test_rd_full_we = Wire(Bool())
  val intr_test_op_done_wd, intr_test_op_done_we = Wire(Bool())
  val intr_test_op_error_wd, intr_test_op_error_we = Wire(Bool())


  // CTRL_RREGWEN Register
  val ctrl_regwe_qs, ctrl_regwe_re = Wire(Bool())


  // CONTROL Register
  val control_start_qs, control_start_wd, control_start_we = Wire(Bool())
  val control_op_qs, control_op_wd = Wire(UInt(2.W))
  val control_op_we = Wire(Bool())
  val control_prog_sel_qs, control_prog_sel_wd, control_prog_sel_we = Wire(Bool())
  val control_num_qs, control_num_wd = Wire(UInt(12.W))
  val control_num_we = Wire(Bool())

  // ADDR Register
  val addr_qs, addr_wd = Wire(UInt(32.W))
  val addr_we = Wire(Bool())

}
