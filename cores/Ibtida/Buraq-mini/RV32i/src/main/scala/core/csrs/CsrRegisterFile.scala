package main.scala.core.csrs
import chisel3._
import chisel3.util.Cat

class CsrRegisterFile extends Module {
  val io = IO(new Bundle{

    // HART ID
    val i_hart_id               = Input(UInt(32.W))
    // privilege modes
    val o_priv_mode_id          = Output(UInt(2.W))
    val o_priv_mode_if          = Output(UInt(2.W))
    val o_priv_mode_lsu         = Output(UInt(2.W))
    val o_csr_mstatus_tw        = Output(Bool())

    // mtvec
    val o_csr_mtvec             = Output(UInt(32.W))
    val i_csr_mtvec_init        = Input(Bool())
    val i_boot_addr             = Input(UInt(32.W))

    // interface to registers
    val i_csr_access            = Input(Bool())
    val i_csr_addr              = Input(UInt(12.W))
    val i_csr_wdata             = Input(UInt(32.W))
    val i_csr_op                = Input(UInt(2.W))
    val i_csr_op_en             = Input(Bool())
    val o_csr_rdata             = Output(UInt(32.W))

    // interrupts
    val i_irq_software          = Input(Bool())
    val i_irq_timer             = Input(Bool())
    val i_irq_external          = Input(Bool())
    val i_nmi_mode              = Input(Bool())
    val o_irq_pending           = Output(Bool())
    val o_irqs                  = Output(UInt(3.W))
    val o_csr_mstatus_mie       = Output(Bool())
    val o_csr_mepc              = Output(UInt(32.W))

    // debug
    val i_debug_mode            = Input(Bool())
    val i_debug_cause           = Input(UInt(5.W))
    val i_debug_csr_save        = Input(Bool())
    val o_csr_depc              = Output(UInt(32.W))
    val o_debug_single_step     = Output(Bool())
    val o_debug_ebreakm         = Output(Bool())
    val o_trigger_match         = Output(Bool())

    // TODO: current implementation is 5 stage pipeline so Save
    // pc of EX and MEM stage is to be added here
    val i_pc_if                 = Input(UInt(32.W))
    val i_pc_id                 = Input(UInt(32.W))
    val i_pc_wb                 = Input(UInt(32.W))

    // exception save/restore
    val i_csr_save_if           = Input(Bool())
    val i_csr_save_id           = Input(Bool())
    val i_csr_save_wb           = Input(Bool())
    val i_csr_restore_mret      = Input(Bool())
    val i_csr_restore_dret      = Input(Bool())
    val i_csr_save_cause        = Input(Bool())
    val i_csr_mcause            = Input(UInt(6.W))
    val i_csr_mtval             = Input(UInt(32.W))
    val o_illegal_csr_insn      = Output(Bool())

    // performance counters
    val i_instr_ret             = Input(Bool()) // instruction completed decode stage
    val i_iside_wait            = Input(Bool()) // core waiting for iside
    val i_dside_wait            = Input(Bool()) // waiting for data memory
    val i_jump                  = Input(Bool()) // jump instruction detected
    val i_branch                = Input(Bool()) // branch instruction detected
    val i_branch_taken          = Input(Bool()) // branch condition becomes true
    val i_mem_load              = Input(Bool()) // load from memory
    val i_mem_store             = Input(Bool()) // store to memory


  })

  val irq    = new irqs_t()
  val csr_op = new csr_op_e()
  val st     = new status_t()
  val dct    = new dcsr_t()

  val DbgTriggerEn: Int = 0
  val DbgHwBreakNum: Int = 1


  val MISA_VALUE = Wire(UInt(32.W))
  // | A-atomic   | C-compressed | D-double precision | E-RV32E    | F-single precision | I-RV32I/64I/128I |
  // | extension  | extension    | floating point     | base ISA   | floating point     | base ISA         |
  MISA_VALUE:=((0.U << 1)  | (0.U << 2)   | (0.U << 3)         | (0.U << 4) | (0.U << 5)         | (1.U << 8)
    //  | M-multiply | N-user level | S-supervisor mode  | U-user mode| X-non standard     | M-XLEN           |
    //  | & divide   | interrupts   | implemented        | implemented| extensions         | ISA width        |
    |(1.U << 12) | (0.U << 13)  | (0.U << 18)        | (0.U << 20)| (0.U << 23)        | (1.U << 30))

  // insterrupt and exception control signals
  val exception_pc = Wire(UInt(32.W))

  // csr regs
  val priv_lvl_d = Wire(UInt(2.W))
  val priv_lvl_q = RegInit("b11".U(2.W))

  val mstatus_q              = dontTouch(WireInit(0.U.asTypeOf(new status_t())))
  val mstatus_d              = dontTouch(WireInit(0.U.asTypeOf(new status_t())))
  val mstatus_en             = dontTouch(Wire(Bool()))
  val mie_q                  = dontTouch(WireInit(0.U.asTypeOf(new irqs_t())))
  val mie_d                  = dontTouch(WireInit(0.U.asTypeOf(new irqs_t())))
  val mie_en                 = dontTouch(Wire(Bool()))
  val mscratch_q             = dontTouch(Wire(UInt(32.W)))
  val mscratch_en            = dontTouch(Wire(Bool()))
  val mepc_q                 = dontTouch(Wire(UInt(32.W)))
  val mepc_d                 = dontTouch(Wire(UInt(32.W)))
  val mepc_en                = dontTouch(Wire(Bool()))
  val mcause_q, mcause_d     = dontTouch(Wire(UInt(6.W)))
  val mcause_en              = dontTouch(Wire(Bool()))
  val mtval_q, mtval_d       = dontTouch(Wire(UInt(32.W)))
  val mtval_en               = dontTouch(Wire(Bool()))
  val mtvec_q, mtvec_d       = dontTouch(Wire(UInt(32.W)))
  val mtvec_en               = dontTouch(Wire(Bool()))
  val mip                    = dontTouch(WireInit(0.U.asTypeOf(new irqs_t())))
  val dcsr_d, dcsr_q         = dontTouch(WireInit(0.U.asTypeOf(new dcsr_t())))
  val dcsr_en                = dontTouch(Wire(Bool()))
  val depc_q, depc_d         = dontTouch(Wire(UInt(32.W)))
  val depc_en                = dontTouch(Wire(Bool()))
  val dscratch0_q            = dontTouch(Wire(UInt(32.W)))
  val dscratch1_q            = dontTouch(Wire(UInt(32.W)))
  val dscratch0_en           = dontTouch(Wire(Bool()))
  val dscratch1_en           = dontTouch(Wire(Bool()))


  // hardware performance monitor signals
  val mcountinhibit          = dontTouch(Wire(UInt(32.W)))
  val mcountinhibit_d        = dontTouch(Wire(UInt(13.W)))
  val mcountinhibit_q        = dontTouch(RegInit(0.U(13.W)))
  //  val mcountinhibit_en       = Wire(Bool())

  // machine event/performance counters
  val mhpmcounter            = dontTouch(RegInit(VecInit(Seq.fill(32)(0.U(64.W)))))
  val mhpmcounter_we         = dontTouch(Wire(UInt(32.W)))
  val mcountinhibit_we       = dontTouch(Wire(Bool()))
  val mhpmcounterh_we        = dontTouch(Wire(UInt(32.W)))
  val mhpmcounter_incr       = dontTouch(Wire(UInt(32.W)))
  val mhpmevent              = dontTouch(RegInit(VecInit(Seq.fill(32)(0.U(32.W)))))
  val mhpmcounter_idx        = dontTouch(Wire(UInt(5.W)))


  // debug/trigger registers
  val tselect_rdata          = Wire(UInt(32.W))
  val tmatch_control_rdata   = Wire(UInt(32.W))
  val tmatch_value_rdata     = Wire(UInt(32.W))

  // CSR update logicSave
  val csr_wdata_int          = Wire(UInt(32.W))
  val csr_rdata_int          = Wire(UInt(32.W))
  val csr_we_int             = dontTouch(Wire(Bool()))
  val csr_wreq               = Wire(Bool())

  // access violation signals
  val illegal_csr            = Wire(Bool())
  val illegal_csr_priv       = Wire(Bool())
  val illegal_csr_write      = Wire(Bool())

  val unused_boot_addr       = Wire(UInt(8.W))
  val unused_csr_addr        = Wire(UInt(3.W))

  unused_boot_addr   := io.i_boot_addr(7,0)

  // CSR reg //

  val csr_addr       = Wire(UInt(12.W))
  val dcsr_wire      = WireInit(0.U.asTypeOf(new dcsr_t()))

  csr_addr  := io.i_csr_addr

  unused_csr_addr := csr_addr(7,5)
  mhpmcounter_idx := csr_addr(4,0)

  mstatus_en := "b0".U
  mstatus_d.mie  := mstatus_q.mie
  mstatus_d.mpie := mstatus_q.mpie
  mstatus_d.mpp  := mstatus_q.mpp
  mstatus_d.mprv := mstatus_q.mprv
  mstatus_d.tw   := mstatus_q.tw
  mscratch_en:= "b0".U
  mie_en     := "b0".U
  mepc_en    := "b0".U
  mcause_en  := "b0".U
  mtval_en   := "b0".U
  depc_en    := "b0".U
  dscratch0_en := "b0".U
  dscratch1_en := "b0".U
  dcsr_en    := "b0".U
  mcountinhibit_we := "b0".U
  mhpmcounter_we   := 0.U
  mhpmcounterh_we  := 0.U

  // The standard RISC-V ISA sets aside a 12-bit encoding space (csr[11:0]) for up to 4,096 CSRs.
  // By convention, the upper 4 bits of the CSR address (csr[11:8]) are used to encode the read and
  // write accessibility of the CSRs according to privilege level. The top two bits
  // (csr[11:10]) indicate whether the register is read/write (00, 01, or 10) or read-only (11). The next
  // two bits (csr[9:8]) encode the lowest privilege level that can access the CSR.
  illegal_csr_priv := (io.i_csr_addr(9,8) > priv_lvl_q.asUInt)

  illegal_csr_write := ((io.i_csr_addr(11,10) === "b11".U) & csr_wreq)

  io.o_illegal_csr_insn  := (io.i_csr_access & (illegal_csr | illegal_csr_priv | illegal_csr_write))


  mip.irq_software  := io.i_irq_software
  mip.irq_external  := io.i_irq_external
  mip.irq_timer     := io.i_irq_timer

  // CSR read logic

  csr_rdata_int := "b0".U
  illegal_csr   := "b0".U


  when(io.i_csr_addr === CsrAddressMap.MHARTID)
  {
    // hardware thread ID
    csr_rdata_int := io.i_hart_id.asUInt
  }
    .elsewhen(io.i_csr_addr === CsrAddressMap.MSTATUS)
    {
      // mstatus register contains interrupt enable bits
      csr_rdata_int := Cat("b0".U(10.W),mstatus_q.tw, "b0".U(3.W),
        mstatus_q.mprv, "b0".U(4.W),mstatus_q.mpp,
        "b0".U(3.W),mstatus_q.mpie ,"b0".U(3.W),
        mstatus_q.mie,"b0".U(3.W))
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.MISA)
    {
      // machine ISA register valueSave
      csr_rdata_int := MISA_VALUE.asUInt
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.MIE)
    {
      // machine interrupt enable bits
      csr_rdata_int := Cat("b0".U(20.W),mie_q.irq_external,
        "b0".U(3.W), mie_q.irq_timer,
        "b0".U(3.W), mie_q.irq_software,
        "b0".U(3.W))
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.MSCRATCH)
    {
      // machine scratch register for holding a temporary GPR value
      // when trap is enountered
      csr_rdata_int := mscratch_q.asUInt
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.MTVEC)
    {
      // machine trap vector register holds the base address of
      // trap handlers and mode of trap handling either it is direct mode
      // or vectored mode. in vector mode all interrupts or exceptions trap to stoptime
      // different ISR's while in direct mode there will be a single trap handler for all.
      // lower 2 bits of mtvec regiInsightsster specify the mode of operation.
      csr_rdata_int := mtvec_q.asUInt
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.MEPC)
    {
      // machine exception PC. when an interrupt or exception is encountered MEPC holds the
      // address of the instruction from where the execution will resume after trap handling.
      csr_rdata_int := mepc_q.asUInt
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.MCAUSE)
    {
      // here the msb[mcause(5)] bit indicates that he cause is exception [mcause(5) = 0]
      // or it is an interrupt [mcause(5) =PRIV_LVL_M 1]. and lower 5 bits [mcause(4,0)] are for all
      // supported interrupts and exceptions codes.
      csr_rdata_int := Cat(mcause_q(5), "b0".U(26.W), mcause_q(4,0)).asUInt
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.MTVAL)
    {
      // machine trap value register, holds the instruction or address of the instruction that causes an interrupt or exception.
      csr_rdata_int := mtval_q.asUInt
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.MIP)
    {
      // machine insterrupt pending bits
      csr_rdata_int := Cat("b0".U(20.W),mip.irq_external,
        "b0".U(3.W), mip.irq_timer,
        "b0".U(3.W), mip.irq_software,
        "b0".U(3.W))
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.DCSR)
    {
      csr_rdata_int := dcsr_q.asUInt
      illegal_csr   := ~io.i_debug_mode
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.DPC)
    {
      csr_rdata_int := depc_q.asUInt
      illegal_csr   := ~io.i_debug_mode
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.DSCRATCH0)
    {
      csr_rdata_int := dscratch0_q.asUInt
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.DSCRATCH1)
    {
      csr_rdata_int := dscratch1_q.asUInt
      illegal_csr   := ~io.i_debug_mode
    }
    // machine counters/timers
    .elsewhen(io.i_csr_addr === CsrAddressMap.MCOUNTINHIBIT)
    {
      // machine counter inhibit ir decides which counter will increment on an event
      csr_rdata_int := mcountinhibit.asUInt
    }
    .elsewhen((io.i_csr_addr === CsrAddressMap.MHPMEVENT3) | (io.i_csr_addr === CsrAddressMap.MHPMEVENT4) | (io.i_csr_addr === CsrAddressMap.MHPMEVENT5) | (io.i_csr_addr === CsrAddressMap.MHPMEVENT6) |
      (io.i_csr_addr === CsrAddressMap.MHPMEVENT7) | (io.i_csr_addr === CsrAddressMap.MHPMEVENT8) | (io.i_csr_addr === CsrAddressMap.MHPMEVENT9) | (io.i_csr_addr === CsrAddressMap.MHPMEVENT10)|
      (io.i_csr_addr === CsrAddressMap.MHPMEVENT11)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT12)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT13)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT14)|
      (io.i_csr_addr === CsrAddressMap.MHPMEVENT15)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT16)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT17)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT18)|
      (io.i_csr_addr === CsrAddressMap.MHPMEVENT19)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT20)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT21)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT22)|
      (io.i_csr_addr === CsrAddressMap.MHPMEVENT23)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT24)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT25)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT26)|
      (io.i_csr_addr === CsrAddressMap.MHPMEVENT27)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT28)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT29)| (io.i_csr_addr === CsrAddressMap.MHPMEVENT30)|
      (io.i_csr_addr === CsrAddressMap.MHPMEVENT31))
    {
      csr_rdata_int := mhpmevent(mhpmcounter_idx.asUInt)
    }
    .elsewhen((io.i_csr_addr === CsrAddressMap.MCYCLE)       | (io.i_csr_addr === CsrAddressMap.MINSTRET)     | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER3) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER4) |
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER5) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER6) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER7) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER8) |
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER9) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER10)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER11)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER12)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER13)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER14)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER15)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER16)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER17)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER18)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER19)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER20)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER21)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER22)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER23)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER24)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER25)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER26)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER27)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER28)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER29)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER30)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER31))
    {
      val lsb = Wire(UInt(64.W))
      lsb := mhpmcounter(mhpmcounter_idx.asUInt)
      csr_rdata_int := lsb(31,0)
    }
    .elsewhen((io.i_csr_addr === CsrAddressMap.MCYCLEH)       | (io.i_csr_addr === CsrAddressMap.MINSTRETH)     | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER3H) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER4H) |
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER5H) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER6H) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER7H) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER8H) |
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER9H) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER10H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER11H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER12H)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER13H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER14H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER15H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER16H)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER17H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER18H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER19H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER20H)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER21H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER22H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER23H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER24H)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER25H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER26H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER27H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER28H)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER29H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER30H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER31H))
    {
      val msb = Wire(UInt(64.W))
      msb := mhpmcounter(mhpmcounter_idx.asUInt)
      csr_rdata_int := msb(63,32)
    }
    // debug triggers
    .elsewhen(io.i_csr_addr === CsrAddressMap.TSELECT)
    {
      csr_rdata_int := tselect_rdata.asUInt
      illegal_csr   := ~(DbgTriggerEn.asUInt)
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.TDATA1)
    {
      csr_rdata_int := tmatch_control_rdata.asUInt
      illegal_csr   := ~(DbgTriggerEn.asUInt)
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.TDATA2)
    {
      csr_rdata_int := tmatch_value_rdata.asUInt
      illegal_csr   := ~(DbgTriggerEn.asUInt)
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.TDATA3)
    {
      csr_rdata_int := 0.U
      illegal_csr   := ~(DbgTriggerEn.asUInt)
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.MCONTEXT)
    {
      csr_rdata_int := 0.U
    }
    .elsewhen(io.i_csr_addr === CsrAddressMap.SCONTEXT)
    {
      csr_rdata_int := 0.U
      illegal_csr   := ~(DbgTriggerEn.asUInt)
    }
    .otherwise
    {
      csr_rdata_int := 0.U
      illegal_csr   := "b1".U
    }




  /////////////////////
  // CSR write logic //
  /////////////////////

  // stores the PC of next instruction
  val mstat_priv = dontTouch(Wire(Bool()))
  mstat_priv :=  (mstatus_d.mpp.asUInt =/= priv_lvl_e.PRIV_LVL_M.asUInt) && (mstatus_d.mpp.asUInt =/= priv_lvl_e.PRIV_LVL_U.asUInt)
  csr_we_int := csr_wreq & ~io.o_illegal_csr_insn
  //when(csr_we_int === "b1".U)
  // {
  // mtatus interrupt enable bits
  when(csr_we_int & (io.i_csr_addr === CsrAddressMap.MSTATUS))
  {
    mstatus_en := "b1".U
    mstatus_d.mie  := csr_wdata_int(MSTAT_BITS.MIE)
    mstatus_d.mpie := csr_wdata_int(MSTAT_BITS.MPIE)
    mstatus_d.mpp  := csr_wdata_int(MSTAT_BITS.MPP_HIGH, MSTAT_BITS.MPP_LOW)
    mstatus_d.tw   := csr_wdata_int(MSTAT_BITS.TW)
    when((mstatus_q.mpp.asUInt =/= priv_lvl_e.PRIV_LVL_M.asUInt) && (mstatus_q.mpp.asUInt =/= priv_lvl_e.PRIV_LVL_U.asUInt))
    {
      mstatus_d.mpp := priv_lvl_e.PRIV_LVL_M.asUInt
    }
  }
    // interrupt enable
    .elsewhen(csr_we_int & (io.i_csr_addr === CsrAddressMap.MIE))
    {
      mie_en := "b1".U
    }
    .elsewhen(csr_we_int & (io.i_csr_addr === CsrAddressMap.MSCRATCH))
    {
      mscratch_en := "b1".U
    }
    .elsewhen(csr_we_int & (io.i_csr_addr === CsrAddressMap.MEPC))
    {
      mepc_en := "b1".U
    }
    .elsewhen(csr_we_int & (io.i_csr_addr === CsrAddressMap.MCAUSE))
    {
      mcause_en := "b1".U
    }
    .elsewhen(csr_we_int & (io.i_csr_addr === CsrAddressMap.MTVAL))
    {
      mtval_en := "b1".U
    }
    .elsewhen(csr_we_int & (io.i_csr_addr === CsrAddressMap.MTVEC))
    {
      mtvec_en := "b1".U
    }
    .elsewhen(csr_we_int & (io.i_csr_addr === CsrAddressMap.DCSR))
    {
      dcsr_d := csr_wdata_int.asTypeOf(new dcsr_t())
      dcsr_wire.xdebugver  := x_debug_ver_e.XDEBUGVER_STD.asUInt
      dcsr_d.xdebugver := dcsr_wire.xdebugver
      // chnage to priv_lvl_m if software writes an unsupported value
      when((dcsr_d.prv =/=  priv_lvl_e.PRIV_LVL_M.asUInt) & (dcsr_d.prv =/=  priv_lvl_e.PRIV_LVL_U.asUInt))
      {
        dcsr_d.prv := priv_lvl_e.PRIV_LVL_M.asUInt
      }
      // read-only for sw
      dcsr_d.cause := dcsr_q.cause

      // currently not supported
      dcsr_d.nmip      := "b0".U
      dcsr_d.mprven    := "b0".U
      dcsr_d.stopcount := "b0".U
      dcsr_d.stoptime  := "b0".U
    }
    .elsewhen(csr_we_int & (io.i_csr_addr === CsrAddressMap.DSCRATCH0))
    {
      dscratch0_en := "b1".U
    }
    .elsewhen(csr_we_int & (io.i_csr_addr === CsrAddressMap.DSCRATCH1))
    {
      dscratch1_en := "b1".U
    }
    .elsewhen(csr_we_int & (io.i_csr_addr === CsrAddressMap.MCOUNTINHIBIT))
    {
      mcountinhibit_we := "b1".U
    }
    .elsewhen(csr_we_int & ((io.i_csr_addr === CsrAddressMap.MCYCLE)       | (io.i_csr_addr === CsrAddressMap.MINSTRET)     | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER3) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER4) |
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER5) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER6) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER7) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER8) |
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER9) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER10)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER11)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER12)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER13)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER14)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER15)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER16)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER17)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER18)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER19)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER20)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER21)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER22)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER23)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER24)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER25)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER26)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER27)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER28)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER29)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER30)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER31)))
    {
      mhpmcounter_we := "b1".U << mhpmcounter_idx
    }
    .elsewhen(csr_we_int & ((io.i_csr_addr === CsrAddressMap.MCYCLEH)       | (io.i_csr_addr === CsrAddressMap.MINSTRETH)     | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER3H) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER4H) |
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER5H) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER6H) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER7H) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER8H) |
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER9H) | (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER10H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER11H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER12H)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER13H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER14H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER15H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER16H)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER17H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER18H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER19H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER20H)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER21H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER22H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER23H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER24H)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER25H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER26H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER27H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER28H)|
      (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER29H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER30H)| (io.i_csr_addr === CsrAddressMap.MHPMCOUNTER31H)))
    {
      mhpmcounterh_we := "b1".U << mhpmcounter_idx
    }
  priv_lvl_d := priv_lvl_q.asUInt


  mepc_d     := Cat(csr_wdata_int(31,1), "b0".U)
  mcause_d   := Cat(csr_wdata_int(31), csr_wdata_int(4,0))
  mtval_d    := csr_wdata_int
  mtvec_en   := io.i_csr_mtvec_init

  // mode set to vector mode and base address is 256 byte aligned
  mtvec_d    := Mux(io.i_csr_mtvec_init, Cat(io.i_boot_addr(31,8),
    "b0".U(6.W), "b01".U), Cat(csr_wdata_int(31,8),
    "b0".U(6.W), "b01".U))

  dcsr_d     := dcsr_q
  depc_d     := Cat(csr_wdata_int(31,1), "b0".U)


  exception_pc := io.i_pc_id


  // exception gets priority over the other writes
  when(io.i_csr_save_cause === "b1".U)
  {
    when(io.i_csr_save_if === "b1".U)
    {
      exception_pc := io.i_pc_if
    }
      .elsewhen(io.i_csr_save_id === "b1".U)
      {
        exception_pc := io.i_pc_id
      }
      .elsewhen(io.i_csr_save_wb === "b1".U)
      {
        exception_pc := io.i_pc_wb
      }
    // incase of any exception switch to debug mode
    priv_lvl_d := priv_lvl_e.PRIV_LVL_M.asUInt

    when(io.i_debug_csr_save)
    {
      // all instrrupts are masked
      // do not update epc, tval and  status
      dcsr_d.prv    := priv_lvl_q.asUInt
      dcsr_d.cause  := io.i_debug_cause
      dcsr_en      := "b1".U
      depc_d       := exception_pc
      depc_en      := "b1".U
    }
      .elsewhen(~io.i_debug_mode)
      {
        // in debug mode exceptions do not update any register that
        // includes cause , epc, tval and mstatus
        mtval_en       := "b1".U
        mtval_d        := io.i_csr_mtval
        mstatus_en     := "b1".U
        mstatus_d.mie  := "b0".U // disable interrupts
        // save the current state
        mstatus_d.mpie := mstatus_q.mie
        mstatus_d.mpp  := priv_lvl_q.asUInt
        mstatus_d.mprv := "b0".U
        mstatus_d.tw   := "b0".U
        mepc_en        := "b1".U
        mepc_d         := exception_pc
        mcause_en      := "b1".U
        mcause_d       := io.i_csr_mcause
      }

  } // end save_cause

    when(io.i_csr_restore_dret) // DRET
    {
      priv_lvl_d.asUInt := dcsr_q.prv
    }
    when(io.i_csr_restore_mret) // MRET
    {
      priv_lvl_d.asUInt  := mstatus_q.mpp
      mstatus_en     := "b1".U
      mstatus_d.mie  := mstatus_q.mpie
      mstatus_d.mpie := "b1".U
      mstatus_d.mpp  := priv_lvl_e.PRIV_LVL_M.asUInt
    }
  // updating current priv-level

  when(reset.asBool())
  {
    priv_lvl_q  := priv_lvl_e.PRIV_LVL_M.asUInt
  }
    .otherwise
    {
      priv_lvl_q.asUInt  := priv_lvl_d
    }

  // send current priv-level to decoder
  io.o_priv_mode_id := priv_lvl_q.asUInt

  // new instruction fetches nedds to acount for updates to priv_level_q this cycle

  io.o_priv_mode_if := priv_lvl_d.asUInt

  // load/store instructions must factor in MPRV for PMP checking
  // NOTE: PMP is not implemented in current design so condition will always false

  io.o_priv_mode_lsu  := Mux(mstatus_q.mprv, mstatus_q.mpp, priv_lvl_q.asUInt)

  /////////////////////////
  // CSR operation logic //
  /////////////////////////

  // switch(io.i_csr_op.asUInt)
  // {
  when(io.i_csr_op === csr_op.CSR_OP_WRITE.U)
  {
    csr_wdata_int := io.i_csr_wdata
  }
    .elsewhen(io.i_csr_op === csr_op.CSR_OP_SET.U)
    {
      csr_wdata_int := io.i_csr_wdata | io.o_csr_rdata
    }
    .elsewhen(io.i_csr_op === csr_op.CSR_OP_CLEAR.U)
    {
      csr_wdata_int := ~io.i_csr_wdata & io.o_csr_rdata
    }
    .elsewhen(io.i_csr_op === csr_op.CSR_OP_READ.U)
    {
      csr_wdata_int := io.i_csr_wdata
    }
    .otherwise
    {
      csr_wdata_int := io.i_csr_wdata
    }

  csr_wreq  := io.i_csr_op_en & ((io.i_csr_op === csr_op.CSR_OP_WRITE.U) | (io.i_csr_op === csr_op.CSR_OP_SET.U) | (io.i_csr_op === csr_op.CSR_OP_CLEAR.U))

  // only write CSRs during one clock cycle


  io.o_csr_rdata := csr_rdata_int.asUInt

  // directly output some csrs
  io.o_csr_mepc  := mepc_q
  io.o_csr_depc  := depc_q
  io.o_csr_mtvec := mtvec_q
  io.o_csr_mstatus_mie := mstatus_q.mie
  io.o_csr_mstatus_tw  := mstatus_q.tw
  io.o_debug_single_step := dcsr_q.step
  io.o_debug_ebreakm     := dcsr_q.ebreakm

  // Qualify incoming interrupt requests in mip CSR with mie CSR for controller and to re-enable
  // clock upon WFI (must be purely combinational).
  io.o_irqs := Cat(Mux((mip.irq_external && mie_q.irq_external) === true.B, 1.U(1.W), 0.U(1.W)), Mux((mip.irq_timer && mie_q.irq_timer) === true.B, 1.U(1.W), 0.U(1.W)), Mux((mip.irq_software && mie_q.irq_software) === true.B, 1.U(1.W), 0.U(1.W)))
  io.o_irq_pending := (io.o_irqs).orR

  //////////////////////////Save
  // CSR instantisaaation //
  //////////////////////////

  // MSTATUS
  // val error = Wire(Bool())
  val MSTATUS_RST_VAL = 0x0d  // this makes mie -> 1, mpie -> 0, mpp -> 11(M mode), tw -> 0

  val PRIM_MSTATUS = Module(new CsrPrimitive(st.getWidth, false, MSTATUS_RST_VAL))
  PRIM_MSTATUS.io.i_wrdata := mstatus_d.asUInt
  PRIM_MSTATUS.io.i_wr_en   := mstatus_en
  mstatus_q       := PRIM_MSTATUS.io.o_rd_data.asTypeOf(new status_t())

  // MEPC
  val PRIM_MEPC = Module(new CsrPrimitive(32, false, 0))
  PRIM_MEPC.io.i_wrdata := mepc_d
  PRIM_MEPC.io.i_wr_en   := mepc_en
  mepc_q                 := PRIM_MEPC.io.o_rd_data


  // MIE
  mie_d.irq_software  := csr_wdata_int(MIX_BITS.MSIX)
  mie_d.irq_timer     := csr_wdata_int(MIX_BITS.MTIX)
  mie_d.irq_external  := csr_wdata_int(MIX_BITS.MEIX)

  val PRIM_MIE = Module(new CsrPrimitive(3, false, 4))
  PRIM_MIE.io.i_wrdata := mie_d.asUInt
  PRIM_MIE.io.i_wr_en   := mie_en
  mie_q  := PRIM_MIE.io.o_rd_data.asTypeOf(new irqs_t())


  // MSCRATCH
  val PRIM_MSCRATCH = Module(new CsrPrimitive(32, false, 0))
  PRIM_MSCRATCH.io.i_wrdata := csr_wdata_int
  PRIM_MSCRATCH.io.i_wr_en   := mscratch_en
  mscratch_q                 := PRIM_MSCRATCH.io.o_rd_data


  // MCAUSE
  val PRIM_MCAUSE = Module(new CsrPrimitive(6, false, 0))
  PRIM_MCAUSE.io.i_wrdata := mcause_d
  PRIM_MCAUSE.io.i_wr_en   := mcause_en
  mcause_q                 := PRIM_MCAUSE.io.o_rd_data

  // MTVAL
  val PRIM_MTVAL = Module(new CsrPrimitive(32, false, 0))
  PRIM_MTVAL.io.i_wrdata := mtval_d
  PRIM_MTVAL.io.i_wr_en   := mtval_en
  mtval_q                 := PRIM_MTVAL.io.o_rd_data


  // MTVEC
  val PRIM_MTVEC = Module(new CsrPrimitive(32, false, 1))
  PRIM_MTVEC.io.i_wrdata := mtvec_d
  PRIM_MTVEC.io.i_wr_en   := mtvec_en
  mtvec_q                 := PRIM_MTVEC.io.o_rd_data



  // DCSR

  // val DCSR_RST_VALUE = Cat((dct.xdebugver.XDEBUGVER_STD), (dct.xdebugver.DBG_CAUSE_NONE), (dct.PRIV_LVL_M),0)
  val PRIM_DCSR = Module(new CsrPrimitive(dct.getWidth, false, 0))
  PRIM_DCSR.io.i_wrdata := dcsr_d.asUInt
  PRIM_DCSR.io.i_wr_en   := dcsr_en
  dcsr_q                 := PRIM_DCSR.io.o_rd_data.asTypeOf(new dcsr_t())


  // DEPC
  val PRIM_DEPC = Module(new CsrPrimitive(32,false, 0))
  PRIM_DEPC.io.i_wrdata := depc_d
  PRIM_DEPC.io.i_wr_en   := depc_en
  depc_q                 := PRIM_DEPC.io.o_rd_data

  // DSCRATCH
  val PRIM_DSCRATCH0 = Module(new CsrPrimitive(32, false, 0))
  PRIM_DSCRATCH0.io.i_wrdata := csr_wdata_int
  PRIM_DSCRATCH0.io.i_wr_en   := dscratch0_en
  dscratch0_q                 := PRIM_DSCRATCH0.io.o_rd_data


  // DSCRATCH1
  val PRIM_DSCRATCH1 = Module(new CsrPrimitive(32, false, 0))
  PRIM_DSCRATCH1.io.i_wrdata := csr_wdata_int
  PRIM_DSCRATCH1.io.i_wr_en   := dscratch1_en
  dscratch1_q                 := PRIM_DSCRATCH1.io.o_rd_data


  //////////////////////////
  // Performance Monitors //
  //////////////////////////

  // update enbale signals

  when(mcountinhibit_we)
  {
    // bit 1 must be zero
    mcountinhibit_d := Cat(csr_wdata_int(12,2), "b1".U, csr_wdata_int(0))
  }
    .otherwise
    {
      mcountinhibit_d := mcountinhibit_q
    }
  // event selection
  for(i <- 10  until 32)
  {
    mhpmcounter_incr := "b0".U << i
  }

  // active counters
  mhpmcounter_incr  := "b1".U << 0       // mcycle
  mhpmcounter_incr  := "b0".U << 1           // reserved
  mhpmcounter_incr  := io.i_instr_ret << 2   // minstret
  mhpmcounter_incr  := io.i_dside_wait<< 3  // cycles waiting for data memory
  mhpmcounter_incr  := io.i_iside_wait<< 4   // cycles waiting for instruction fetch
  mhpmcounter_incr  := io.i_mem_load  << 5   // number of loads
  mhpmcounter_incr  := io.i_mem_store << 6   // number of stores
  mhpmcounter_incr  := io.i_jump      << 7   // number of jumps
  mhpmcounter_incr  := io.i_branch    << 8   // number of branches
  mhpmcounter_incr  := io.i_branch_taken << 9// number od taken branches

  // active

  for(i <- 0 until 32)
  {
    mhpmevent(i) := 0.U
    mhpmevent(i) := "b1".U << i
  }

  // deacvtivate
  mhpmevent(1) := 0.U

  for(i <- 13 until 32)
  {
    mhpmevent(i) := 0.U
  }

  // MCYCLE
  val COUNT_MCYCLE = Module(new BrqCounter(64))
  COUNT_MCYCLE.io.i_counter_inc := mhpmcounter_incr(0) & ~mcountinhibit(0)
  COUNT_MCYCLE.io.i_counterh_we := mhpmcounterh_we(0)
  COUNT_MCYCLE.io.i_counter_we  := mhpmcounter_we(0)
  COUNT_MCYCLE.io.i_counter_val := csr_wdata_int
  mhpmcounter(0)                := COUNT_MCYCLE.io.o_counter_val

  // MINSTRET
  val COUNT_MINSTRET = Module(new BrqCounter(64))
  COUNT_MINSTRET.io.i_counter_inc := mhpmcounter_incr(2) & ~mcountinhibit(2)
  COUNT_MINSTRET.io.i_counterh_we := mhpmcounterh_we(2)
  COUNT_MINSTRET.io.i_counter_we  := mhpmcounter_we(2)
  COUNT_MINSTRET.io.i_counter_val := csr_wdata_int
  mhpmcounter(2)                  := COUNT_MINSTRET.io.o_counter_val

  // reserved
  mhpmcounter(1) := 0.U
  val MHPMCounterNum: Int = 10
  for(cnt <- 0 until 10)
  {
    val MCOUNTER = Module(new BrqCounter(40))

    MCOUNTER.io.i_counter_inc := mhpmcounter_incr(cnt+3) & ~mcountinhibit(cnt + 3)
    MCOUNTER.io.i_counterh_we := mhpmcounterh_we(cnt+ 3)
    MCOUNTER.io.i_counter_we  := mhpmcounter_we(cnt + 3)
    MCOUNTER.io.i_counter_val := csr_wdata_int
    mhpmcounter(cnt + 3)      := MCOUNTER.io.o_counter_val
  }

  if(MHPMCounterNum < 29)
  {
    val unused_mhpmcounter_we = dontTouch(Wire(UInt((29-MHPMCounterNum).W)))
    val unused_mhpmcounterh_we= Wire(UInt((29-MHPMCounterNum).W))
    val unused_mhpmcounter_incr= Wire(UInt((29-MHPMCounterNum).W))

    mcountinhibit := Cat("b1".U((29-MHPMCounterNum).W), mcountinhibit_q)

    unused_mhpmcounter_we  := mhpmcounter_we(31,MHPMCounterNum+3)
    unused_mhpmcounterh_we := mhpmcounterh_we(31,MHPMCounterNum+3)
    unused_mhpmcounter_incr:= mhpmcounter_incr(31,MHPMCounterNum+3)
  }
  else
  {
    mcountinhibit := mcountinhibit_q
  }

  mcountinhibit_q := mcountinhibit_d
  /////////////////////////////
  // Debug trigger registers //
  /////////////////////////////

  if(DbgTriggerEn == 1)
  {
    val DbgHwNumLen = 1 //DbgHwBreakNum > 1 ? log2Ceil(DbgHwBreakNum): 1

    val tselect_d, tselect_q = Wire(UInt(DbgHwNumLen.W))
    val tmatch_control_d     = Wire(Bool())
    val tmatch_control_q     = Wire(UInt(DbgHwBreakNum.W))
    val tmatch_value_d       = Wire(UInt(32.W))
    val tmatch_value_q       = Wire(UInt(32.W))

    // write enable

    val tselect_we        = Wire(Bool())
    val tmatch_control_we = Wire(UInt(DbgHwBreakNum.W))
    val tmatch_value_we   = Wire(UInt(DbgHwBreakNum.W))

    // trigger comparison result

    val trigger_match  = Wire(UInt(DbgHwBreakNum.W))

    // write select

    tselect_we := csr_we_int & io.i_debug_mode & (io.i_csr_addr.asUInt === CsrAddressMap.TSELECT)

    tmatch_control_we := csr_we_int & io.i_debug_mode & (io.i_csr_addr.asUInt === CsrAddressMap.TDATA1)
    tmatch_value_we   := csr_we_int & io.i_debug_mode & (io.i_csr_addr.asUInt === CsrAddressMap.TDATA2)

    // Debug interface tests the available number of triggers by writing and reading the trigger
    // select register. Only allow changes to the register if it is within the supported region.

    tselect_d := Mux(csr_wdata_int < DbgHwBreakNum.asUInt, csr_wdata_int(DbgTriggerEn), (DbgHwBreakNum-1).asUInt)

    tmatch_control_d := csr_wdata_int(2)
    tmatch_value_d   := csr_wdata_int(31,0)

    // Registers
    val PRIM_TSELECT = Module(new CsrPrimitive(DbgHwNumLen, false, 0))
    PRIM_TSELECT.io.i_wrdata := tselect_d
    PRIM_TSELECT.io.i_wr_en   := tselect_we
    tselect_q                 := PRIM_TSELECT.io.o_rd_data

    val PRIM_TM_CONTROL = Module(new CsrPrimitive(1,false,0))
    PRIM_TM_CONTROL.io.i_wrdata := tmatch_value_d
    PRIM_TM_CONTROL.io.i_wr_en   := tmatch_value_we
    tmatch_value_q               := PRIM_TM_CONTROL.io.o_rd_data

    // Assign read data
    // TSELECT - number of supported triggers defined by parameter DbgHwBreakNum
    tselect_rdata := Cat(0.U, tselect_q)
    // TDATA0 - only support simple address matching

    tmatch_control_rdata := Cat("b2".U(2.W), "b1".U, "b0".U(6.W), "b0".U, "b0".U, "b0".U, "b00".U, "b1".U(4.W), "b0".U, "b0".U(4.W), "b1".U, "b0".U, "b0".U, "b1".U, tmatch_control_q(1), "b0".U, "b0".U)

    // TDATA1 - address match value only

    tmatch_value_rdata := tmatch_value_q(1)
    // Breakpoint matching
    // We match against the next address, as the breakpoint must be taken before execution
    trigger_match := tmatch_control_q & (io.i_pc_if === tmatch_value_q)

    io.o_trigger_match := trigger_match.orR
  }
  else
  {
    tselect_rdata        := 0.U
    tmatch_control_rdata := 0.U
    tmatch_value_rdata   := 0.U
    io.o_trigger_match   := 0.U
  }
}
