package gpio
import org.scalatest._
import chiseltest._
import chisel3._
import merl.uit.tilelink.{TLConfiguration, TL_A_Opcode, TL_D_Opcode}

class GpioTest extends FlatSpec with ChiselScalatestTester with Matchers {
  implicit val conf = TLConfiguration()
  behavior of "Gpio"
  it should "set all pins of GPIO high using direct_out functionality" in {
    test(new Gpio) { c =>
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(16.U)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("b11111111111111111111111111111111".U)
      c.clock.step(1)
      c.io.cio_gpio_o.expect("hffffffff".U)
    }
  }
  it should "set lower 16 pins of GPIO high using masked_out_lower functionality" in {
    test(new Gpio) { c =>
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(20.U)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("b11111111111111111111111111111111".U)
      c.clock.step(1)
      c.io.cio_gpio_o.expect("h0000ffff".U)
    }
  }
  it should "set upper 16 pins of GPIO high using masked_out_upper functionality" in {
    test(new Gpio) { c =>
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(24.U)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("b11111111111111111111111111111111".U)
      c.clock.step(1)
      c.io.cio_gpio_o.expect("hffff0000".U)
    }
  }
  it should "set all pins of GPIO Enable high using direct_oe functionality" in {
    test(new Gpio) { c =>
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(28.U)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("b11111111111111111111111111111111".U)
      c.clock.step(1)
      c.io.cio_gpio_en_o.expect("hffffffff".U)
    }
  }
  it should "set lower 16 pins of GPIO Enable high using masked_oe_lower functionality" in {
    test(new Gpio) { c =>
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(32.U)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("b11111111111111111111111111111111".U)
      c.clock.step(1)
      c.io.cio_gpio_en_o.expect("h0000ffff".U)
    }
  }
  it should "set upper 16 pins of GPIO Enable high using masked_oe_upper functionality" in {
    test(new Gpio) { c =>
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(36.U)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("b11111111111111111111111111111111".U)
      c.clock.step(1)
      c.io.cio_gpio_en_o.expect("hffff0000".U)
    }
  }
  it should "read all pins of GPIO" in {
    test(new Gpio) { c =>
      // setting up gpio pins
      c.io.cio_gpio_i.poke("h0f0f0f0f".U)
      // giving 1 cycle so that DATA_IN register can store the values inside
      c.clock.step(1)
      // Then sending a GET request
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(12.U)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAckData)
      c.io.tl_o.d_data.expect("h0f0f0f0f".U)
    }
  }
  it should "generate interrupt for pins 0 to 7 on active low and pins 8 to 15 on active high" in {
    test(new Gpio) { c =>
      // Enabling interrupts for 0 to 15 pins
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_ENABLE_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("h0000ffff".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAck)

      // giving another clock cycle so that device is now ready to accept new request
      // as outstanding will get 0 now
      c.clock.step(1)
      // Configuring to detect active low event on pins 0 to 7
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_CTRL_EN_LVLLOW_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("h000000ff".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAck)

      // giving another clock cycle so that device is now ready to accept new request
      // as outstanding will get 0 now
      c.clock.step(1)
      // Configuring to detect active high event on pins 8 to 15
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_CTRL_EN_LVLHIGH_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("h0000ff00".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAck)

      // giving another clock cycle so that device is now ready to accept new request
      // as outstanding will get 0 now
      c.clock.step(1)
      // reading the interrupt state register
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_STATE_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAckData)
      c.io.tl_o.d_data.expect("h000000ff".U)
      c.io.intr_gpio_o.expect("h000000ff".U)

      c.io.cio_gpio_i.poke("h0000ff00".U)
      // giving another clock cycle so that device is now ready to accept new request
      // as outstanding will get 0 now
      c.clock.step(1)
      // reading the interrupt state register
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_STATE_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAckData)
      c.io.tl_o.d_data.expect("h0000ffff".U)
      c.io.intr_gpio_o.expect("h0000ffff".U)
    }
  }
  it should "generate interrupt for pins 0 and 1 on rising edge, 2 and 3 for falling edge" in {
    test(new Gpio) { c =>
      // Enabling interrupts for 0 to 3 pins
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_ENABLE_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("h0000000f".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAck)

      // giving another clock cycle so that device is now ready to accept new request
      // as outstanding will get 0 now
      c.clock.step(1)
      // Configuring to detect rising edge event on pins 0 and 1
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_CTRL_EN_RISING_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("h00000003".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAck)

      // giving another clock cycle so that device is now ready to accept new request
      // as outstanding will get 0 now
      c.clock.step(1)
      // Configuring to detect falling edge event on pins 2 and 3
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_CTRL_EN_FALLING_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("h0000000c".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAck)

      c.io.cio_gpio_i.poke("h0000000f".U)

      // giving another clock cycle so that device is now ready to accept new request
      // as outstanding will get 0 now
      c.clock.step(1)
      // reading the interrupt state register
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_STATE_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAckData)
      c.io.tl_o.d_data.expect("h00000003".U)
      c.io.intr_gpio_o.expect("h00000003".U)

      c.io.cio_gpio_i.poke("h00000003".U)
      // giving another clock cycle so that device is now ready to accept new request
      // as outstanding will get 0 now
      c.clock.step(1)
      // reading the interrupt state register
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_STATE_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAckData)
      c.io.tl_o.d_data.expect("h0000000f".U)
      c.io.intr_gpio_o.expect("h0000000f".U)
    }
  }
  it should "generate interrupt for pins 0 and 1 through INTR_TEST register" in {
    test(new Gpio) { c =>
      // Enabling interrupts for 0 and 1 pins
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_ENABLE_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("h00000003".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAck)

      // giving another clock cycle so that device is now ready to accept new request
      // as outstanding will get 0 now
      c.clock.step(1)
      // Writing interrupts for pins 0 and 1 through INTR_TEST
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_TEST_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.io.tl_i.a_data.poke("h00000003".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAck)

      // giving another clock cycle so that device is now ready to accept new request
      // as outstanding will get 0 now
      c.clock.step(1)
      // reading the interrupt state register
      c.io.tl_i.a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_i.a_valid.poke(true.B)
      c.io.tl_i.d_ready.poke(true.B)
      c.io.tl_i.a_param.poke(0.U)
      c.io.tl_i.a_size.poke(2.U)
      c.io.tl_i.a_source.poke(0.U)
      c.io.tl_i.a_address.poke(GpioAddressMap.GPIO_INTR_STATE_OFFSET)
      c.io.tl_i.a_mask.poke("b1111".U)
      c.clock.step(1)
      c.io.tl_o.d_opcode.expect(TL_D_Opcode.accessAckData)
      c.io.tl_o.d_data.expect("h00000003".U)
      c.io.intr_gpio_o.expect("h00000003".U)

    }
  }
}
