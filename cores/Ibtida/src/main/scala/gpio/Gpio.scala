package gpio
import chisel3._
import chisel3.util.{Cat, Fill}
import merl.uit.tilelink.{TLConfiguration, TL_D2H, TL_H2D}
import primitives.IntrHardware


class Gpio(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val tl_i = Flipped(new TL_H2D)
    val tl_o = new TL_D2H

    val cio_gpio_i = Input(UInt(32.W))
    val cio_gpio_o = Output(UInt(32.W))
    val cio_gpio_en_o = Output(UInt(32.W))
    val intr_gpio_o = Output(UInt(32.W))
  })

  val reg2hw = Wire(new GPIOReg2Hw(DW = 32))   // Outputs
  val hw2reg = Wire(new GPIOHw2Reg(DW = 32))   // Inputs

  val gpioRegTop = Module(new GpioRegTop)
  gpioRegTop.io.tl_i := io.tl_i
  io.tl_o := gpioRegTop.io.tl_o
  reg2hw <> gpioRegTop.io.reg2hw
  gpioRegTop.io.hw2reg <> hw2reg

  val cio_gpio_q = RegInit(0.U(32.W))
  val cio_gpio_en_q = RegInit(0.U(32.W))
  val data_in_q = RegInit(0.U(32.W))

  val data_in_d = Wire(UInt(32.W))
  data_in_d := io.cio_gpio_i
  data_in_q := data_in_d

  // GPIO_IN
  hw2reg.data_in.de := true.B
  hw2reg.data_in.d := data_in_d

  // GPIO_OUT
  io.cio_gpio_o := cio_gpio_q
  io.cio_gpio_en_o := cio_gpio_en_q

  hw2reg.direct_out.d := cio_gpio_q
  hw2reg.masked_out_upper.data.d := cio_gpio_q(31,16)
  hw2reg.masked_out_upper.mask.d := 0.U(16.W)
  hw2reg.masked_out_lower.data.d := cio_gpio_q(15,0)
  hw2reg.masked_out_lower.mask.d := 0.U(16.W)

  when(reg2hw.direct_out.qe) {
    cio_gpio_q := reg2hw.direct_out.q
  } .elsewhen(reg2hw.masked_out_upper.data.qe) {
    cio_gpio_q := Cat(
      (reg2hw.masked_out_upper.data.q & reg2hw.masked_out_upper.mask.q) |
        (~reg2hw.masked_out_upper.mask.q & cio_gpio_q(31,16)), 0.U(16.W))
    // cio_gpio_q(31,16) -> 0000000000000011
    // mask -> 1100000000000000
    // data -> 1100000000000000
    // mask & data -> 1100000000000000
    // ~mask & cio_gpio_q(31,16) -> 0011111111111111 & 0000000000000011
    // 1100000000000000 | 0000000000000011
    // 1100000000000011
  } .elsewhen(reg2hw.masked_out_lower.data.qe) {
    cio_gpio_q := Cat(0.U(16.W), (reg2hw.masked_out_lower.data.q & reg2hw.masked_out_lower.mask.q) |
                                  (~reg2hw.masked_out_lower.mask.q & cio_gpio_q(15,0)))
  }

  // GPIO OE
  hw2reg.direct_oe.d := cio_gpio_en_q
  hw2reg.masked_oe_upper.data.d := cio_gpio_en_q(31,16)
  hw2reg.masked_oe_upper.mask.d := 0.U(16.W)
  hw2reg.masked_oe_lower.data.d := cio_gpio_en_q(15,0)
  hw2reg.masked_oe_lower.mask.d := 0.U(16.W)

  when(reg2hw.direct_oe.qe) {
    cio_gpio_en_q := reg2hw.direct_oe.q
  } .elsewhen(reg2hw.masked_oe_upper.data.qe) {
    cio_gpio_en_q := Cat((reg2hw.masked_oe_upper.data.q & reg2hw.masked_oe_upper.mask.q) |
                          (~reg2hw.masked_oe_upper.mask.q & cio_gpio_en_q(31,16)), 0.U(16.W))
  } .elsewhen(reg2hw.masked_oe_lower.data.qe) {
    cio_gpio_en_q := Cat(0.U(16.W), (reg2hw.masked_oe_lower.data.q & reg2hw.masked_oe_lower.mask.q) |
                                    (~reg2hw.masked_oe_lower.mask.q & cio_gpio_en_q(15,0)))
  }

  val event_intr_rise, event_intr_fall, event_intr_actlow, event_intr_acthigh = Wire(UInt(32.W))
  val event_intr_combined = Wire(UInt(32.W))

  // This event is generated only when there is a transition from low to high.
  // data_in_d represents the current value right now on the pin
  // data_in_q represents the value the pin had 1 clock cycle earlier
  // If previously (data_in_q) the pin had 0 and now (data_in_d) it has 1 then we generate this event.
  event_intr_rise := (~data_in_q & data_in_d) & reg2hw.intr_ctrl_en_rising.q

  // This event is generated only when there is a transition from high to low.
  // If previously (data_in_q) the pin had 1 and now (data_in_d) it has 0 then we generate this event.
  event_intr_fall := (data_in_q & ~data_in_d) & reg2hw.intr_ctrl_en_falling.q

  // This event is generated regardless of the previous value of the pin.
  // The pin must be active to generate this event.
  // Either if it was active from 2 cycles before or if it just got active from low.
  // That is why we dont check the data_in_q register.
  event_intr_acthigh := data_in_d & reg2hw.intr_ctrl_en_lvlHigh.q

  // This event is generated regardless of the previous value of the pin.
  // The pin must be low to generate this event.
  // Either if it was low from 2 cycles before or if it just got low from high.
  // That is why we dont check the data_in_q register.
  event_intr_actlow := ~data_in_d & reg2hw.intr_ctrl_en_lvlLow.q

  event_intr_combined := event_intr_rise | event_intr_fall | event_intr_acthigh | event_intr_actlow

  val intr_hw = Module(new IntrHardware(width = 32))
  intr_hw.io.event_intr_i := event_intr_combined
  intr_hw.io.reg2hw_intr_enable_q_i := reg2hw.intr_enable.q
  intr_hw.io.reg2hw_intr_test_q_i := reg2hw.intr_test.q
  intr_hw.io.reg2hw_intr_test_qe_i := reg2hw.intr_test.qe
  intr_hw.io.reg2hw_intr_state_q_i := reg2hw.intr_state.q
  hw2reg.intr_state.de := intr_hw.io.hw2reg_intr_state_de_o
  hw2reg.intr_state.d := intr_hw.io.hw2reg_intr_state_d_o
  io.intr_gpio_o := intr_hw.io.intr_o

}
