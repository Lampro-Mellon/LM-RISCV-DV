package ibtida_soc
import Chisel.Fill
import chisel3._
import chisel3.util.{Cat, Enum, log2Ceil}
import _root_.core.Core
import gpio.Gpio
import merl.uit.tilelink.{TLConfiguration, TLSocket1_N, TL_H2D, TL_HostAdapter, TL_RegAdapter, TL_SramAdapter}
import primitives.{DataMem, InstMem}
import uart0.UartController

class Ibtida_top(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val rx_i      =     Input(UInt(1.W))
    val CLK_PER_BIT = Input(UInt(16.W))
    val gpio_i    =     Input(UInt(32.W))
    val gpio_o    =     Output(UInt(32.W))
    val gpio_en_o =     Output(UInt(32.W))
    // instruction memory interface
    val iccm_we_o   =     Output(Vec(4, Bool()))
    val iccm_wdata_o =    Output(UInt(32.W))
    val iccm_addr_o =     Output(UInt(8.W))
    val iccm_rdata_i  =   Input(UInt(32.W))
    // data memory interface
    val dccm_we_o = Output(Vec(4, Bool()))
    val dccm_wdata_o = Output(UInt(32.W))
    val dccm_addr_o = Output(UInt(8.W))
    val dccm_rdata_i = Input(UInt(32.W))
  })

  val uart_ctrl = Module(new UartController)
  uart_ctrl.io.CLK_PER_BIT := io.CLK_PER_BIT
  //val uart_ctrl                     =       Module(new UartController(10000, 3000))
  val core                          =       Module(new Core())
  //val iccm                          =       Module(new InstMem())
  //val dccm                          =       Module(new DataMem())
  val gpio                          =       Module(new Gpio())
  val core_iccm_tl_host             =       Module(new TL_HostAdapter())
  val core_loadStore_tl_host        =       Module(new TL_HostAdapter())
  val iccm_tl_device                =       Module(new TL_SramAdapter(sramAw = 6, sramDw = 32, forFetch = true.B))  // for 64 words memory
  val dccm_tl_device                =       Module(new TL_SramAdapter(sramAw = 6, sramDw = 32)) // for 64 words memory
  val tl_switch_1to2                =       Module(new TLSocket1_N(2))

  /** ||||||||||||||||||||||||||||||| INITIAL BOOT UP AFTER RESET ||||||||||||||||||||||||||||||| */
  val instr_we                      =       Wire(Vec(4,Bool()))
  val instr_wdata                   =       Wire(UInt(32.W))
  val instr_addr                    =       Wire(UInt(32.W))


  val rx_data_reg                   =       RegInit(0.U(32.W))
  val rx_addr_reg                   =       RegInit(0.U(32.W))
  val reset_reg                     =       RegInit(true.B)

  uart_ctrl.io.rxd                 :=       io.rx_i
  val idle    ::    read_uart   ::    write_iccm    ::    prog_finish    ::   Nil = Enum(4)
  val state_reg                     =       RegInit(idle)
  reset_reg                        :=       reset.asBool()


  when(state_reg === idle) {
    // checking to see if the reset button was pressed previously and now it falls back to 0 for starting the read uart condition
    when(reset_reg === true.B && reset.asBool() === false.B) {

      state_reg                    :=       read_uart

    } .otherwise {

      state_reg                    :=       idle

    }

    // setting all we_i to be false, since nothing to be written
    instr_we.foreach(w => w := false.B)
    //instr_we                       :=       false.B  // active high
    instr_addr                     :=       iccm_tl_device.io.addr_o
    instr_wdata                    :=       DontCare
    core.io.stall_core_i           :=       false.B
    uart_ctrl.io.isStalled         :=       false.B
  } .elsewhen(state_reg === read_uart) {
    // when valid 32 bits available the next state would be writing into the ICCM.

      when(uart_ctrl.io.valid) {

      state_reg                    :=       write_iccm

    } .elsewhen(uart_ctrl.io.done) {
        // if getting done signal it means the read_uart state got a special ending instruction which means the
        // program is finish and no need to write to the iccm so the next state would be prog_finish

        state_reg                  :=       prog_finish

    } .otherwise {
        // if not getting valid or done it means the 32 bits have not yet been read by the UART.
        // so the next state would still be read_uart

        state_reg                  :=       read_uart
    }

    // setting all we_i to be false, since nothing to be written
    instr_we.foreach(w => w := false.B)
    //instr_we                       :=       true.B  // active low
    instr_addr                     :=       DontCare
    instr_wdata                    :=       DontCare
    core.io.stall_core_i           :=       true.B
    uart_ctrl.io.isStalled         :=       true.B

    // store data and addr in registers if uart_ctrl.valid is high to save it since going to next state i.e write_iccm
    // will take one more cycle which may make the received data and addr invalid since by then another data and addr
    // could be written inside it.

    rx_data_reg                    :=       Mux(uart_ctrl.io.valid, uart_ctrl.io.rx_data_o, 0.U)
//    rx_addr_reg                    :=       Mux(uart_ctrl.io.valid, uart_ctrl.io.addr_o << 2, 0.U)    // left shifting address by 2 since uart ctrl sends address in 0,1,2... format but we need it in word aligned so 1 translated to 4, 2 translates to 8 (dffram requirement)
    rx_addr_reg                    :=       Mux(uart_ctrl.io.valid, uart_ctrl.io.addr_o, 0.U)

  } .elsewhen(state_reg === write_iccm) {
    // when writing to the iccm state checking if the uart received the ending instruction. If it does then
    // the next state would be prog_finish and if it doesn't then we move to the read_uart state again to
    // read the next instruction

    when(uart_ctrl.io.done) {

      state_reg                    :=       prog_finish

    } .otherwise {

      state_reg                    :=       read_uart

    }

    // setting all we_i to be true, since instruction (32 bit) needs to be written
    instr_we.foreach(w => w := true.B)
    //instr_we                       :=       false.B   // active low
    instr_wdata                    :=       rx_data_reg
    instr_addr                     :=       rx_addr_reg
    // keep stalling the core
    core.io.stall_core_i           :=       true.B
    uart_ctrl.io.isStalled         :=       true.B

  } .elsewhen(state_reg === prog_finish) {

    // setting all we_i to be false, since nothing to be written
    instr_we.foreach(w => w := false.B)
    //instr_we                       :=       true.B   // active low
    instr_wdata                    :=       DontCare
    instr_addr                     :=       iccm_tl_device.io.addr_o
    core.io.stall_core_i           :=       false.B
    uart_ctrl.io.isStalled         :=       false.B
    state_reg                      :=       idle

  } .otherwise {

    // setting all we_i to be false, since nothing to be written
    instr_we.foreach(w => w := false.B)
    //instr_we                       :=       true.B   // active low
    instr_wdata                    :=       DontCare
    instr_addr                     :=       DontCare
    core.io.stall_core_i           :=       DontCare
    uart_ctrl.io.isStalled         :=       DontCare

  }

  /** |||||||||||| ADDRESS DECODING FOR DEVICE SELECTION IN THE 1:2 TL SWITCH |||||||||||||| */

  // setting up the dev_sel wire width according to the number of devices (N) in the DeviceMap + 1 for the error responder device

  val N                             =       TL_Peripherals.deviceMap.size
  val dev_sel                       =       Wire(UInt(log2Ceil(N+1).W))

  // getting the address from the host adapter connected with the load/store unit of the core

  val addr                          =       core_loadStore_tl_host.io.tl_o.a_address

  when((addr & (~AddressMap.ADDR_MASK_GPIO).asUInt()) === AddressMap.ADDR_SPACE_GPIO) {

    dev_sel                        :=       TL_Peripherals.deviceMap("gpio")

  }.elsewhen((addr & (~AddressMap.ADDR_MASK_DCCM).asUInt()) === AddressMap.ADDR_SPACE_DCCM) {

    dev_sel                        :=       TL_Peripherals.deviceMap("dccm")

  } .otherwise {
    // if no address maps to the connected device's base address then route the host request to the error responder

    dev_sel                        :=       N.asUInt()

  }

  /** ||||||||||||| CONNECTING THE TL-SWITCH TO THE HOST AND PERIPHERALS ||||||||||||||| */

  // providing device select for request routing

  tl_switch_1to2.io.dev_sel        :=      dev_sel

  // providing the host request from core's load/store unit to the TL switch

  tl_switch_1to2.io.tl_h_i         <>       core_loadStore_tl_host.io.tl_o

  // connecting the response of devices GPIO/DCCM from the switch to the core's load/store unit.

  core_loadStore_tl_host.io.tl_i   <>       tl_switch_1to2.io.tl_h_o

  // CONNECTING DCCM
  // connecting the DCCM TL device adapter to the port 0 of the TL switch

  dccm_tl_device.io.tl_i           <>       tl_switch_1to2.io.tl_d_o(0)

  // taking the response from the DCCM TL device and connecting it with port 0 of TL switch

  tl_switch_1to2.io.tl_d_i(0)      <>       dccm_tl_device.io.tl_o

  // CONNECTING GPIO
  // connecting the GPIO TL device port to the port 1 of the TL switch

  gpio.io.tl_i                     <>       tl_switch_1to2.io.tl_d_o(1)

  // taking the response from the GPIO TL device port and connecting it with port 1 of TL switch

  tl_switch_1to2.io.tl_d_i(1)      <>       gpio.io.tl_o

  /** |||||||||||| CORE -> TL_HOST ADAPTER -> TL_DEVICE ADAPTER -> ICCM |||||||||||| */
  /** |||||||||||| ICCM -> TL_DEVICE ADAPTER -> TL_HOST ADAPTER -> CORE |||||||||||| */

  core_iccm_tl_host.io.req_i       :=       core.io.instr_req_o
  core_iccm_tl_host.io.addr_i      :=       core.io.instr_addr_o
  core_iccm_tl_host.io.we_i        :=       false.B
  core_iccm_tl_host.io.wdata_i     :=       0.U
  core_iccm_tl_host.io.be_i        :=       "b1111".U

  iccm_tl_device.io.tl_i           <>       core_iccm_tl_host.io.tl_o
  core_iccm_tl_host.io.tl_i        <>       iccm_tl_device.io.tl_o

  // changing here right now
  io.iccm_we_o                     :=       instr_we
  io.iccm_addr_o                   :=       instr_addr
  io.iccm_wdata_o                  :=       instr_wdata
  // change ended here
  //iccm.io.en_i                     :=       true.B  // active high
  //iccm.io.we_i                     :=       instr_we
  //iccm.io.addr_i                   :=       instr_addr
  //iccm.io.wdata_i                  :=       instr_wdata
//  iccm_tl_device.io.rdata_i        :=       iccm.io.rdata_o
  iccm_tl_device.io.rdata_i        :=       io.iccm_rdata_i

  core.io.instr_rdata_i            :=       core_iccm_tl_host.io.rdata_o
  core.io.instr_gnt_i              :=       core_iccm_tl_host.io.gnt_o
  core.io.instr_rvalid_i           :=       core_iccm_tl_host.io.valid_o

  /** |||||||||||| CORE -> TL_HOST ADAPTER -> TL_DEVICE ADAPTER -> DCCM |||||||||||| */
  /** |||||||||||| DCCM -> TL_DEVICE ADAPTER -> TL_HOST ADAPTER -> CORE |||||||||||| */

  core_loadStore_tl_host.io.req_i  :=       core.io.data_req_o
  core_loadStore_tl_host.io.addr_i :=       core.io.data_addr_o.asUInt()
  core_loadStore_tl_host.io.we_i   :=       core.io.data_we_o
  core_loadStore_tl_host.io.wdata_i:=       core.io.data_wdata_o.asUInt()
  core_loadStore_tl_host.io.be_i   :=       Cat(core.io.data_be_o(3),core.io.data_be_o(2),core.io.data_be_o(1),core.io.data_be_o(0))

  // changing here

//  dccm_tl_device.io.rdata_i        :=       Cat(dccm.io.rdata_o(3),dccm.io.rdata_o(2),dccm.io.rdata_o(1),dccm.io.rdata_o(0))

  dccm_tl_device.io.rdata_i        :=       Cat(io.dccm_rdata_i(3),io.dccm_rdata_i(2),io.dccm_rdata_i(1),io.dccm_rdata_i(0))



  io.dccm_addr_o                   :=       dccm_tl_device.io.addr_o
  io.dccm_wdata_o                  :=       dccm_tl_device.io.wdata_o
  io.dccm_we_o                     :=       dccm_tl_device.io.we_o

  //dccm.io.en_i                     :=       true.B    // always enabling the memory (active high)
  //dccm.io.addr_i                   :=       dccm_tl_device.io.addr_o

  //dccm.io.wdata_i(0)               :=       dccm_tl_device.io.wdata_o(7,0)
  //dccm.io.wdata_i(1)               :=       dccm_tl_device.io.wdata_o(15,8)
  //dccm.io.wdata_i(2)               :=       dccm_tl_device.io.wdata_o(23,16)
  //dccm.io.wdata_i(3)               :=       dccm_tl_device.io.wdata_o(31,24)
  //dccm.io.we_i                     :=       dccm_tl_device.io.we_o

  /** ||||||||||||||||| INITIALIZING THE GPIO ||||||||||||||||| */
  //gpio.io.cio_gpio_i               :=       Cat(Fill(28, 0.U),io.gpio_i)
  gpio.io.cio_gpio_i               :=       io.gpio_i
//  val gpio_val                      =       gpio.io.cio_gpio_o & gpio.io.cio_gpio_en_o
  io.gpio_o                        :=       gpio.io.cio_gpio_o
  io.gpio_en_o                     :=       ~gpio.io.cio_gpio_en_o // inverting since caravel takes en as active low


  core.io.irq_external_i           :=       gpio.io.intr_gpio_o.orR()
  core.io.data_gnt_i               :=       core_loadStore_tl_host.io.gnt_o
  core.io.data_rvalid_i            :=       core_loadStore_tl_host.io.valid_o
  core.io.data_rdata_i             :=       core_loadStore_tl_host.io.rdata_o.asSInt()

  // dummy interface
  //io.result := core.io.reg_7(3,0).asSInt()
}

object emit_rtl extends App {
  implicit val conf: TLConfiguration = TLConfiguration()
  //chisel3.Driver.emitVerilog(new TLUL)
  (new chisel3.stage.ChiselStage).emitVerilog(new Ibtida_top)
}