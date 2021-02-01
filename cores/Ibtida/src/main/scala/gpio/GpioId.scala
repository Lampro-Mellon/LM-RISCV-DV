package gpio
import chisel3.util._

object GpioId {
  val gpio_intr_state :: gpio_intr_enable :: gpio_intr_test :: gpio_data_in :: gpio_direct_out :: gpio_masked_out_lower :: gpio_masked_out_upper :: gpio_direct_oe :: gpio_masked_oe_lower :: gpio_masked_oe_upper :: gpio_intr_ctrl_en_rising :: gpio_intr_ctrl_en_falling :: gpio_intr_ctrl_en_lvlHigh :: gpio_intr_ctrl_en_lvlLow = Enum(14)
}
