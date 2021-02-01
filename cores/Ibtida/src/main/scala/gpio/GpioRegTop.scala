package gpio
import chisel3._
import chisel3.util.{Cat, Fill}
import merl.uit.tilelink.{TLConfiguration, TL_D2H, TL_H2D, TL_RegAdapter}
import primitives.{SubReg, SubRegExt}

class GpioRegTop(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val tl_i = Flipped(new TL_H2D)
    val tl_o = new TL_D2H
    val reg2hw = new GPIOReg2Hw
    val hw2reg = new GPIOHw2Reg
  })
  val AW = 6
  val DW = 32
  val DBW = DW/8

  val reg_we, reg_re, reg_error = Wire(Bool())
  val reg_wdata, reg_rdata = Wire(UInt(DW.W))
  val reg_addr = Wire(UInt(AW.W))
  val reg_be = Wire(UInt(DBW.W))

  val addr_miss, wr_err = Wire(Bool())
  val reg_rdata_next = Wire(UInt(DW.W))

  val tlul_regAdapter = Module(new TL_RegAdapter(regAw = AW, regDw = DW)())
  tlul_regAdapter.io.tl_i <> io.tl_i
  io.tl_o <> tlul_regAdapter.io.tl_o
  reg_we := tlul_regAdapter.io.we_o
  reg_re := tlul_regAdapter.io.re_o
  reg_wdata := tlul_regAdapter.io.wdata_o
  reg_addr := tlul_regAdapter.io.addr_o
  reg_be := tlul_regAdapter.io.be_o
  tlul_regAdapter.io.rdata_i := reg_rdata
  tlul_regAdapter.io.error_i := reg_error

  reg_rdata := reg_rdata_next

  reg_error := addr_miss || wr_err

  // defining software related signals that will interface with the peripheral registers.
  val intr_state_qs, intr_state_wd = Wire(UInt(DW.W))
  val intr_state_we = Wire(Bool())

  val intr_enable_qs, intr_enable_wd = Wire(UInt(DW.W))
  val intr_enable_we = Wire(Bool())

  val intr_test_wd = Wire(UInt(DW.W))
  val intr_test_we = Wire(Bool())

  val data_in_qs = Wire(UInt(DW.W))

  val direct_out_qs, direct_out_wd = Wire(UInt(DW.W))
  val direct_out_we, direct_out_re = Wire(Bool())

  val masked_out_lower_data_qs, masked_out_lower_data_wd, masked_out_lower_mask_wd = Wire(UInt((DW/2).W))
  val masked_out_lower_data_we, masked_out_lower_data_re, masked_out_lower_mask_we = Wire(Bool())

  val masked_out_upper_data_qs, masked_out_upper_data_wd, masked_out_upper_mask_wd = Wire(UInt((DW/2).W))
  val masked_out_upper_data_we, masked_out_upper_data_re, masked_out_upper_mask_we = Wire(Bool())

  val direct_oe_qs = Wire(UInt(DW.W))
  val direct_oe_wd = Wire(UInt(DW.W))
  val direct_oe_we, direct_oe_re = Wire(Bool())

  val masked_oe_lower_data_qs, masked_oe_lower_data_wd, masked_oe_lower_mask_wd, masked_oe_lower_mask_qs = Wire(UInt((DW/2).W))
  val masked_oe_lower_data_we, masked_oe_lower_data_re, masked_oe_lower_mask_we, masked_oe_lower_mask_re = Wire(Bool())

  val masked_oe_upper_data_qs, masked_oe_upper_data_wd, masked_oe_upper_mask_wd, masked_oe_upper_mask_qs = Wire(UInt((DW/2).W))
  val masked_oe_upper_data_we, masked_oe_upper_data_re, masked_oe_upper_mask_we, masked_oe_upper_mask_re = Wire(Bool())

  val intr_ctrl_en_rising_qs, intr_ctrl_en_rising_wd = Wire(UInt(DW.W))
  val intr_ctrl_en_rising_we = Wire(Bool())

  val intr_ctrl_en_falling_qs, intr_ctrl_en_falling_wd = Wire(UInt(DW.W))
  val intr_ctrl_en_falling_we = Wire(Bool())

  val intr_ctrl_en_lvlhigh_qs, intr_ctrl_en_lvlhigh_wd = Wire(UInt(DW.W))
  val intr_ctrl_en_lvlhigh_we = Wire(Bool())

  val intr_ctrl_en_lvllow_qs, intr_ctrl_en_lvllow_wd = Wire(UInt(DW.W))
  val intr_ctrl_en_lvllow_we = Wire(Bool())

  /** Creating registers */
  /** |||||||||||||||||||||||||||||||||||||||||||||||||||| */
  // Creating RW1C INTR_STATE register
  val intr_state_reg = Module(new SubReg(SWACCESS = "W1C", DW = DW)())
  // the write enable from software
  intr_state_reg.io.we := intr_state_we
  // the write data from software
  intr_state_reg.io.wd := intr_state_wd
  // the write enable from peripheral logic
  intr_state_reg.io.de := io.hw2reg.intr_state.de
  // the write data from peripheral logic
  intr_state_reg.io.d := io.hw2reg.intr_state.d
  // the register output to peripheral logic
  io.reg2hw.intr_state.q := intr_state_reg.io.q
  // the register output to software read
  intr_state_qs := intr_state_reg.io.qs

  // Creating RW INTR_ENABLE register
  val intr_enable_reg = Module(new SubReg(SWACCESS = "RW", DW = DW)())
  intr_enable_reg.io.we := intr_enable_we
  intr_enable_reg.io.wd := intr_enable_wd
  intr_enable_reg.io.d := 0.U(DW.W)
  intr_enable_reg.io.de := false.B
  io.reg2hw.intr_enable.q := intr_enable_reg.io.q
  intr_enable_qs := intr_enable_reg.io.qs

  // Creating EXT INTR_TEST register
  val intr_test_reg = Module(new SubRegExt(DW))
  intr_test_reg.io.we := intr_test_we
  intr_test_reg.io.re := false.B
  intr_test_reg.io.wd := intr_test_wd
  intr_test_reg.io.d := 0.U(DW.W)
  io.reg2hw.intr_test.qe := intr_test_reg.io.qe
  io.reg2hw.intr_test.q := intr_test_reg.io.q

  // Creating RO DATA_IN register
  val data_in_reg = Module(new SubReg(SWACCESS = "RO", DW = DW)())
  data_in_reg.io.we := false.B
  data_in_reg.io.wd := 0.U(DW.W)
  data_in_reg.io.de := io.hw2reg.data_in.de
  data_in_reg.io.d := io.hw2reg.data_in.d
  data_in_qs := data_in_reg.io.qs

  // Creating EXT DIRECT_OUT register
  val direct_out_reg = Module(new SubRegExt(DW))
  direct_out_reg.io.re := direct_out_re
  direct_out_reg.io.we := direct_out_we
  direct_out_reg.io.wd := direct_out_wd
  direct_out_reg.io.d := io.hw2reg.direct_out.d
  io.reg2hw.direct_out.qe := direct_out_reg.io.qe
  io.reg2hw.direct_out.q := direct_out_reg.io.q
  direct_out_qs := direct_out_reg.io.qs

  // Creating EXT MASKED_OUT_LOWER_DATA register
  // receives data in [15:0] bits and writes the DATA_OUT register in [15:0] bits
  val masked_out_lower_data_reg = Module(new SubRegExt(DW/2))
  masked_out_lower_data_reg.io.re := masked_out_lower_data_re
  masked_out_lower_data_reg.io.we := masked_out_lower_data_we
  masked_out_lower_data_reg.io.wd := masked_out_lower_data_wd
  masked_out_lower_data_reg.io.d := io.hw2reg.masked_out_lower.data.d
  io.reg2hw.masked_out_lower.data.qe := masked_out_lower_data_reg.io.qe
  io.reg2hw.masked_out_lower.data.q := masked_out_lower_data_reg.io.q
  masked_out_lower_data_qs := masked_out_lower_data_reg.io.qs

  // Creating EXT MASKED_OUT_LOWER_MASK register
  // receives mask data in [31:16] bits.
  val masked_out_lower_mask_reg = Module(new SubRegExt(DW/2))
  masked_out_lower_mask_reg.io.re := false.B
  masked_out_lower_mask_reg.io.we := masked_out_lower_mask_we
  masked_out_lower_mask_reg.io.wd := masked_out_lower_mask_wd
  masked_out_lower_mask_reg.io.d := io.hw2reg.masked_out_lower.mask.d
  io.reg2hw.masked_out_lower.mask.qe := masked_out_lower_mask_reg.io.qe
  io.reg2hw.masked_out_lower.mask.q := masked_out_lower_mask_reg.io.q

  // Creating EXT MASKED_OUT_UPPER_DATA register
  // receives data in [15:0] bits and writes the DATA_OUT register in [31:16] bits
  val masked_out_upper_data_reg = Module(new SubRegExt(DW/2))
  masked_out_upper_data_reg.io.re := masked_out_upper_data_re
  masked_out_upper_data_reg.io.we := masked_out_upper_data_we
  masked_out_upper_data_reg.io.wd := masked_out_upper_data_wd
  masked_out_upper_data_reg.io.d := io.hw2reg.masked_out_upper.data.d
  io.reg2hw.masked_out_upper.data.qe := masked_out_upper_data_reg.io.qe
  io.reg2hw.masked_out_upper.data.q := masked_out_upper_data_reg.io.q
  masked_out_upper_data_qs := masked_out_upper_data_reg.io.qs

  // Creating EXT MASKED_OUT_UPPER_MASK register
  // receives mask data in [31:16] bits.
  val masked_out_upper_mask_reg = Module(new SubRegExt(DW/2))
  masked_out_upper_mask_reg.io.re := false.B
  masked_out_upper_mask_reg.io.we := masked_out_upper_mask_we
  masked_out_upper_mask_reg.io.wd := masked_out_upper_mask_wd
  masked_out_upper_mask_reg.io.d := io.hw2reg.masked_out_upper.mask.d
  io.reg2hw.masked_out_upper.mask.qe := masked_out_upper_mask_reg.io.qe
  io.reg2hw.masked_out_upper.mask.q := masked_out_upper_mask_reg.io.q

  // Creating EXT DIRECT_OE register
  val direct_oe_reg = Module(new SubRegExt(DW))
  direct_oe_reg.io.re := direct_oe_re
  direct_oe_reg.io.we := direct_oe_we
  direct_oe_reg.io.wd := direct_oe_wd
  direct_oe_reg.io.d := io.hw2reg.direct_oe.d
  io.reg2hw.direct_oe.qe := direct_oe_reg.io.qe
  io.reg2hw.direct_oe.q := direct_oe_reg.io.q
  direct_oe_qs := direct_oe_reg.io.qs

  // Creating EXT MASKED_OE_LOWER_DATA register
  // receives data in [15:0] bits and writes the DATA_OE register in [15:0] bits
  val masked_oe_lower_data_reg = Module(new SubRegExt(DW/2))
  masked_oe_lower_data_reg.io.re := masked_oe_lower_data_re
  masked_oe_lower_data_reg.io.we := masked_oe_lower_data_we
  masked_oe_lower_data_reg.io.wd := masked_oe_lower_data_wd
  masked_oe_lower_data_reg.io.d := io.hw2reg.masked_oe_lower.data.d
  io.reg2hw.masked_oe_lower.data.qe := masked_oe_lower_data_reg.io.qe
  io.reg2hw.masked_oe_lower.data.q := masked_oe_lower_data_reg.io.q
  masked_oe_lower_data_qs := masked_oe_lower_data_reg.io.qs

  // Creating EXT MASKED_OE_LOWER_MASK register
  // receives mask data in [31:16] bits.
  val masked_oe_lower_mask_reg = Module(new SubRegExt(DW/2))
  masked_oe_lower_mask_reg.io.re := masked_oe_lower_mask_re
  masked_oe_lower_mask_reg.io.we := masked_oe_lower_mask_we
  masked_oe_lower_mask_reg.io.wd := masked_oe_lower_mask_wd
  masked_oe_lower_mask_reg.io.d := io.hw2reg.masked_oe_lower.mask.d
  io.reg2hw.masked_oe_lower.mask.qe := masked_oe_lower_mask_reg.io.qe
  io.reg2hw.masked_oe_lower.mask.q := masked_oe_lower_mask_reg.io.q
  masked_oe_lower_mask_qs := masked_oe_lower_mask_reg.io.qs

  // Creating EXT MASKED_OE_UPPER_DATA register
  // receives data in [15:0] bits and writes the DATA_OE register in [31:16] bits
  val masked_oe_upper_data_reg = Module(new SubRegExt(DW/2))
  masked_oe_upper_data_reg.io.re := masked_oe_upper_data_re
  masked_oe_upper_data_reg.io.we := masked_oe_upper_data_we
  masked_oe_upper_data_reg.io.wd := masked_oe_upper_data_wd
  masked_oe_upper_data_reg.io.d := io.hw2reg.masked_oe_upper.data.d
  io.reg2hw.masked_oe_upper.data.qe := masked_oe_upper_data_reg.io.qe
  io.reg2hw.masked_oe_upper.data.q := masked_oe_upper_data_reg.io.q
  masked_oe_upper_data_qs := masked_oe_upper_data_reg.io.qs

  // Creating EXT MASKED_OE_UPPER_MASK register
  // // receives mask data in [31:16] bits.
  val masked_oe_upper_mask_reg = Module(new SubRegExt(DW/2))
  masked_oe_upper_mask_reg.io.re := masked_oe_upper_mask_re
  masked_oe_upper_mask_reg.io.we := masked_oe_upper_mask_we
  masked_oe_upper_mask_reg.io.wd := masked_oe_upper_mask_wd
  masked_oe_upper_mask_reg.io.d := io.hw2reg.masked_oe_upper.mask.d
  io.reg2hw.masked_oe_upper.mask.qe := masked_oe_upper_mask_reg.io.qe
  io.reg2hw.masked_oe_upper.mask.q := masked_oe_upper_mask_reg.io.q
  masked_oe_upper_mask_qs := masked_oe_upper_mask_reg.io.qs

  // Creating RW INTR_CTRL_EN_RISING register
  val intr_ctrl_en_rising_reg = Module(new SubReg(SWACCESS = "RW", DW = DW)())
  intr_ctrl_en_rising_reg.io.we := intr_ctrl_en_rising_we
  intr_ctrl_en_rising_reg.io.wd := intr_ctrl_en_rising_wd
  intr_ctrl_en_rising_reg.io.de := false.B  // since hardware cannot set the interrupt type
  intr_ctrl_en_rising_reg.io.d := 0.U(DW.W)
  io.reg2hw.intr_ctrl_en_rising.q := intr_ctrl_en_rising_reg.io.q
  intr_ctrl_en_rising_qs := intr_ctrl_en_rising_reg.io.qs

  // Creating RW INTR_CTRL_EN_FALLING register
  val intr_ctrl_en_falling_reg = Module(new SubReg(SWACCESS = "RW", DW = DW)())
  intr_ctrl_en_falling_reg.io.we := intr_ctrl_en_falling_we
  intr_ctrl_en_falling_reg.io.wd := intr_ctrl_en_falling_wd
  intr_ctrl_en_falling_reg.io.de := false.B  // since hardware cannot set the interrupt type
  intr_ctrl_en_falling_reg.io.d := 0.U(DW.W)
  io.reg2hw.intr_ctrl_en_falling.q := intr_ctrl_en_falling_reg.io.q
  intr_ctrl_en_falling_qs := intr_ctrl_en_falling_reg.io.qs

  // Creating RW INTR_CTRL_EN_LVLHIGH register
  val intr_ctrl_en_lvlhigh_reg = Module(new SubReg(SWACCESS = "RW", DW = DW)())
  intr_ctrl_en_lvlhigh_reg.io.we := intr_ctrl_en_lvlhigh_we
  intr_ctrl_en_lvlhigh_reg.io.wd := intr_ctrl_en_lvlhigh_wd
  intr_ctrl_en_lvlhigh_reg.io.de := false.B  // since hardware cannot set the interrupt type
  intr_ctrl_en_lvlhigh_reg.io.d := 0.U(DW.W)
  io.reg2hw.intr_ctrl_en_lvlHigh.q := intr_ctrl_en_lvlhigh_reg.io.q
  intr_ctrl_en_lvlhigh_qs := intr_ctrl_en_lvlhigh_reg.io.qs

  // Creating RW INTR_CTRL_EN_LVLLOW register
  val intr_ctrl_en_lvllow_reg = Module(new SubReg(SWACCESS = "RW", DW = DW)())
  intr_ctrl_en_lvllow_reg.io.we := intr_ctrl_en_lvllow_we
  intr_ctrl_en_lvllow_reg.io.wd := intr_ctrl_en_lvllow_wd
  intr_ctrl_en_lvllow_reg.io.de := false.B  // since hardware cannot set the interrupt type
  intr_ctrl_en_lvllow_reg.io.d := 0.U(DW.W)
  io.reg2hw.intr_ctrl_en_lvlLow.q := intr_ctrl_en_lvllow_reg.io.q
  intr_ctrl_en_lvllow_qs := intr_ctrl_en_lvllow_reg.io.qs

  val addr_hit = Wire(Vec(14, Bool()))
  addr_hit.foreach(w => w := false.B)
  addr_hit(0)  := reg_addr === GpioAddressMap.GPIO_INTR_STATE_OFFSET
  addr_hit(1)  := reg_addr === GpioAddressMap.GPIO_INTR_ENABLE_OFFSET
  addr_hit(2)  := reg_addr === GpioAddressMap.GPIO_INTR_TEST_OFFSET
  addr_hit(3)  := reg_addr === GpioAddressMap.GPIO_DATA_IN_OFFSET
  addr_hit(4)  := reg_addr === GpioAddressMap.GPIO_DIRECT_OUT_OFFSET
  addr_hit(5)  := reg_addr === GpioAddressMap.GPIO_MASKED_OUT_LOWER_OFFSET
  addr_hit(6)  := reg_addr === GpioAddressMap.GPIO_MASKED_OUT_UPPER_OFFSET
  addr_hit(7)  := reg_addr === GpioAddressMap.GPIO_DIRECT_OE_OFFSET
  addr_hit(8)  := reg_addr === GpioAddressMap.GPIO_MASKED_OE_LOWER_OFFSET
  addr_hit(9)  := reg_addr === GpioAddressMap.GPIO_MASKED_OE_UPPER_OFFSET
  addr_hit(10) := reg_addr === GpioAddressMap.GPIO_INTR_CTRL_EN_RISING_OFFSET
  addr_hit(11) := reg_addr === GpioAddressMap.GPIO_INTR_CTRL_EN_FALLING_OFFSET
  addr_hit(12) := reg_addr === GpioAddressMap.GPIO_INTR_CTRL_EN_LVLHIGH_OFFSET
  addr_hit(13) := reg_addr === GpioAddressMap.GPIO_INTR_CTRL_EN_LVLLOW_OFFSET

  addr_miss := Mux(reg_re || reg_we, ~addr_hit.contains(true.B), false.B)

  wr_err := false.B
  val GPIO_PERMIT = Wire(Vec(14, UInt((DW/8).W)))
  // For gpio all registers support only word writes
  for(i <- 0 until 14) {
    GPIO_PERMIT(i) := "b1111".U
  }

  for(i <- 0 until 14) {
    wr_err := Mux(addr_hit(i) && reg_we && (GPIO_PERMIT(i) =/= (GPIO_PERMIT(i) & reg_be)), true.B, false.B)
  }

  /** Initialising software wires received from the TL-UL Host by TL_RegAdapter */

  /** ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| */

  intr_state_we := addr_hit(0) & reg_we & !wr_err
  intr_state_wd := reg_wdata

  intr_enable_we := addr_hit(1) & reg_we & !wr_err
  intr_enable_wd := reg_wdata

  intr_test_we := addr_hit(2) & reg_we & !wr_err
  intr_test_wd := reg_wdata

  direct_out_we := addr_hit(4) & reg_we & !wr_err
  direct_out_wd := reg_wdata
  direct_out_re := addr_hit(4) & reg_re

  masked_out_lower_data_we := addr_hit(5) & reg_we & !wr_err
  masked_out_lower_data_wd := reg_wdata((DW/2)-1,0) // [15:0]
  masked_out_lower_data_re := addr_hit(5) & reg_re

  masked_out_lower_mask_we := addr_hit(5) & reg_we & !wr_err
  masked_out_lower_mask_wd := reg_wdata(DW-1, DW/2) // [31:16]

  masked_out_upper_data_we := addr_hit(6) & reg_we & !wr_err
  masked_out_upper_data_wd := reg_wdata((DW/2)-1,0) // [15:0]
  masked_out_upper_data_re := addr_hit(6) & reg_re

  masked_out_upper_mask_we := addr_hit(6) & reg_we & !wr_err
  masked_out_upper_mask_wd := reg_wdata(DW-1, DW/2) // [31:16]

  direct_oe_we := addr_hit(7) & reg_we & !wr_err
  direct_oe_wd := reg_wdata
  direct_oe_re := addr_hit(7) & reg_re

  masked_oe_lower_data_we := addr_hit(8) & reg_we & !wr_err
  masked_oe_lower_data_wd := reg_wdata((DW/2)-1,0) // [15:0]
  masked_oe_lower_data_re := addr_hit(8) & reg_re

  masked_oe_lower_mask_we := addr_hit(8) & reg_we & !wr_err
  masked_oe_lower_mask_wd := reg_wdata(DW-1, DW/2) // [31:16]
  masked_oe_lower_mask_re := addr_hit(8) & reg_re

  masked_oe_upper_data_we := addr_hit(9) & reg_we & !wr_err
  masked_oe_upper_data_wd := reg_wdata((DW/2)-1,0) // [15:0]
  masked_oe_upper_data_re := addr_hit(9) & reg_re

  masked_oe_upper_mask_we := addr_hit(9) & reg_we & !wr_err
  masked_oe_upper_mask_wd := reg_wdata(DW-1, DW/2) // [31:16]
  masked_oe_upper_mask_re := addr_hit(9) & reg_re

  intr_ctrl_en_rising_we := addr_hit(10) & reg_we & !wr_err
  intr_ctrl_en_rising_wd := reg_wdata

  intr_ctrl_en_falling_we := addr_hit(11) & reg_we & !wr_err
  intr_ctrl_en_falling_wd := reg_wdata

  intr_ctrl_en_lvlhigh_we := addr_hit(12) & reg_we & !wr_err
  intr_ctrl_en_lvlhigh_wd := reg_wdata

  intr_ctrl_en_lvllow_we := addr_hit(13) & reg_we & !wr_err
  intr_ctrl_en_lvllow_wd := reg_wdata

  reg_rdata_next := 0.U
  when(addr_hit(0)) {
    reg_rdata_next := intr_state_qs
  }.elsewhen(addr_hit(1)) {
    reg_rdata_next := intr_enable_qs
  }.elsewhen(addr_hit(2)) {
    reg_rdata_next := 0.U // intr_test condition, software does not want to read anything
  }.elsewhen(addr_hit(3)) {
    reg_rdata_next := data_in_qs
  }.elsewhen(addr_hit(4)) {
    reg_rdata_next := direct_out_qs
  }.elsewhen(addr_hit(5)) {
    reg_rdata_next := Cat(0.U((DW/2).W), masked_out_lower_data_qs)
  }.elsewhen(addr_hit(6)) {
    reg_rdata_next := Cat(0.U((DW/2).W), masked_out_upper_data_qs)
  }.elsewhen(addr_hit(7)) {
    reg_rdata_next := direct_oe_qs
  }.elsewhen(addr_hit(8)) {
    reg_rdata_next := Cat(masked_oe_lower_mask_qs, masked_oe_lower_data_qs)
  }.elsewhen(addr_hit(9)) {
    reg_rdata_next := Cat(masked_oe_upper_mask_qs, masked_oe_upper_data_qs)
  }.elsewhen(addr_hit(10)) {
    reg_rdata_next := intr_ctrl_en_rising_qs
  }.elsewhen(addr_hit(11)) {
    reg_rdata_next := intr_ctrl_en_falling_qs
  }.elsewhen(addr_hit(12)) {
    reg_rdata_next := intr_ctrl_en_lvlhigh_qs
  }.elsewhen(addr_hit(13)) {
    reg_rdata_next := intr_ctrl_en_lvllow_qs
  }.otherwise {
    reg_rdata_next := Fill(DW, 1.U) // all 32 bit '11111s on error
  }

}
