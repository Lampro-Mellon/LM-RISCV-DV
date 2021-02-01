package ibtida_soc
import chisel3._
import merl.uit.tilelink.TLConfiguration
import primitives.{DataMem, InstMem}

class Ibtida_top_dffram_cv(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val rx_i = Input(UInt(1.W))
    val CLK_PER_BIT = Input(UInt(16.W))
    val gpio_i = Input(UInt(30.W))  // 30 io pads being used for gpio in caravel
    val gpio_o = Output(UInt(30.W)) // 30 io pads being used for gpio in caravel
    val gpio_en_o = Output(UInt(30.W))  // 30 io pads being used for gpio in caravel
  })

  val ibtidaTop = Module(new Ibtida_top())
  val iccm      = Module(new InstMem)
  val dccm      = Module(new DataMem)

  // initialising ibtida top
  ibtidaTop.io.rx_i := io.rx_i
  ibtidaTop.io.CLK_PER_BIT := io.CLK_PER_BIT
  ibtidaTop.io.gpio_i := io.gpio_i
  io.gpio_o := ibtidaTop.io.gpio_o(29,0)
  io.gpio_en_o := ibtidaTop.io.gpio_en_o(29,0)

  // initialising instruction memory
  iccm.io.en_i := true.B
  iccm.io.we_i := ibtidaTop.io.iccm_we_o
  iccm.io.addr_i := ibtidaTop.io.iccm_addr_o
  iccm.io.wdata_i := ibtidaTop.io.iccm_wdata_o
  ibtidaTop.io.iccm_rdata_i := iccm.io.rdata_o

  // initialising data memory
  dccm.io.en_i := true.B
  dccm.io.we_i := ibtidaTop.io.dccm_we_o
  dccm.io.addr_i := ibtidaTop.io.dccm_addr_o
  dccm.io.wdata_i(0)               :=       ibtidaTop.io.dccm_wdata_o(7,0)
  dccm.io.wdata_i(1)               :=       ibtidaTop.io.dccm_wdata_o(15,8)
  dccm.io.wdata_i(2)               :=       ibtidaTop.io.dccm_wdata_o(23,16)
  dccm.io.wdata_i(3)               :=       ibtidaTop.io.dccm_wdata_o(31,24)
  ibtidaTop.io.dccm_rdata_i := dccm.io.rdata_o.asUInt()

}
