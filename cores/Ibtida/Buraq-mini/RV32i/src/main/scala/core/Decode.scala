package core

import chisel3._
import main.scala.core.CsrControlUnit
import main.scala.core.csrs.CsrRegisterFile

class Decode extends Module {
  val io = IO(new Bundle {
    //   val enable_M_extension = Input(UInt(1.W))
    val irq_external_i = Input(Bool())
    val IF_ID_inst = Input(UInt(32.W))
    val IF_ID_pc = Input(SInt(32.W))
    val IF_ID_pc4 = Input(SInt(32.W))
    val MEM_WB_ctrl_regWr = Input(UInt(1.W))
    val MEM_WB_ctrl_csrWen = Input(Bool())
    val MEM_WB_rd_sel = Input(UInt(5.W))
    val ID_EX_ctrl_MemRd = Input(UInt(1.W))
    val ID_EX_ctrl_regWr = Input(Bool())
    val ID_EX_ctrl_csrWen = Input(Bool())           // used by csr hazard unit for forwarding
    val EX_MEM_ctrl_csrWen = Input(Bool())          // used by csr hazard unit for forwarding
    //    val ID_EX_ctrl_csrAddr = Input(UInt(12.W))      // used by csr hazard unit for forwarding
    //    val EX_MEM_ctrl_csrAddr = Input(UInt(12.W))     // used by csr hazard unit for forwarding
    //val ID_EX_rs1_data = Input(SInt(32.W))          // used to forward rs1 data from ID/EX if csr hazard occurs
    val ID_EX_rd_sel = Input(UInt(5.W))
    val EX_MEM_rd_sel = Input(UInt(5.W))
    val EX_MEM_ctrl_MemRd = Input(UInt(1.W))
    val EX_MEM_ctrl_regWr = Input(Bool())
    val MEM_WB_ctrl_MemRd = Input(UInt(1.W))
    val alu_output = Input(SInt(32.W))
    val EX_MEM_alu_output = Input(SInt(32.W))
    val MEM_WB_alu_output = Input(SInt(32.W))
    val dmem_memOut = Input(SInt(32.W))
    val dccm_rvalid_i = Input(Bool())
    val writeback_write_data = Input(SInt(32.W)) // rs1 data coming from write back
    //    val MEM_WB_csrAddr = Input(UInt(12.W))
    //    val MEM_WB_csr_op = Input(UInt(2.W))
    val MEM_WB_csr_rdata_i = Input(UInt(32.W)) // csr data coming from MEM_WB
    val EX_MEM_csr_rdata_i = Input(UInt(32.W))
    val ID_EX_csr_rdata_i = Input(UInt(32.W))

    val fetch_csr_mtvec_init = Input(Bool())
    val fetch_csr_if_pc = Input(UInt(32.W))
    val fetch_csr_save_if = Input(Bool())
    val fetch_exc_cause_i = Input(UInt(6.W))
    val fetch_csr_save_cause_i = Input(Bool())
    val execute_regwrite = Input(UInt(1.W))
    val mem_regwrite = Input(UInt(1.W))
    val wb_regwrite = Input(UInt(1.W))

    //val stall = Input(UInt(1.W))

    val pc_out = Output(SInt(32.W))
    val pc4_out = Output(SInt(32.W))
    val inst_op_out = Output(UInt(32.W))
    val func3_out = Output(UInt(3.W))
    val func7_out = Output(UInt(7.W))
    val rd_sel_out = Output(UInt(5.W))
    val rs1_sel_out = Output(UInt(5.W))
    val rs2_sel_out = Output(UInt(5.W))
    val rs1_out = Output(SInt(32.W))
    val rs2_out = Output(SInt(32.W))
    val csr_rdata_o = Output(UInt(32.W))
    val imm_out = Output(SInt(32.W))
    val sb_imm = Output(SInt(32.W))
    val uj_imm = Output(SInt(32.W))
    val jalr_output = Output(SInt(32.W))
    val branchLogic_output = Output(UInt(1.W))
    val hazardDetection_pc_out = Output(SInt(32.W))
    val hazardDetection_inst_out = Output(UInt(32.W))
    val hazardDetection_current_pc_out = Output(SInt(32.W))
    val hazardDetection_pc_forward = Output(UInt(1.W))
    val hazardDetection_inst_forward = Output(UInt(1.W))
    val ctrl_MemWr_out = Output(UInt(1.W))
    val ctrl_MemRd_out = Output(UInt(1.W))
    val ctrl_Branch_out = Output(UInt(1.W))
    val ctrl_RegWr_out = Output(UInt(1.W))
    val ctrl_CsrWen_out = Output(Bool())
    val ctrl_MemToReg_out = Output(UInt(1.W))
    val ctrl_AluOp_out = Output(UInt(4.W))
    val ctrl_OpA_sel_out = Output(UInt(2.W))
    val ctrl_OpB_sel_out = Output(UInt(1.W))
    val ctrl_next_pc_sel_out = Output(UInt(2.W))
    val reg_7_out = Output(SInt(32.W))
    //val mret_inst_o = Output(Bool())
    //val csr_op_o = Output(UInt(2.W))
    //val fwd_csr_o = Output(Bool())
    val fetch_irq_pending_o = Output(Bool())
    val fetch_csr_mstatus_mie_o = Output(Bool())
    val fetch_csr_mtvec_o = Output(UInt(32.W))
    val fetch_csr_mepc_o = Output(UInt(32.W))
    val fetch_mret_inst_o = Output(Bool())
    //  val M_extension_enabled = Output(UInt(1.W))
  })

  val hazardDetection = Module(new HazardDetection())
  val control = Module(new Control())
  val decodeForwardUnit = Module(new DecodeForwardUnit())
  val branchLogic = Module(new BranchLogic())
  val reg_file = Module(new RegisterFile())
  val imm_generation = Module(new ImmediateGeneration())
  val structuralDetector = Module(new StructuralDetector())
  val jalr = Module(new Jalr())
  val csrRegFile = Module(new CsrRegisterFile())
  val csrControlUnit = Module(new CsrControlUnit())


  val imm_out = Wire(SInt(32.W))
  val mret_inst = Wire(Bool())
  val csr_wdata = Wire(UInt(32.W))
  // detecting MRET instruction
  mret_inst := Mux(io.IF_ID_inst(6, 0) === "h73".U && io.IF_ID_inst(14, 12) === "b000".U && io.IF_ID_inst(31, 20) === "h302".U(12.W), true.B, false.B)

  // CSR Register file
  csrRegFile.io.i_hart_id := 0.U
  csrRegFile.io.i_boot_addr := 0.U
  csrRegFile.io.i_csr_mtvec_init := io.fetch_csr_mtvec_init
  csrRegFile.io.i_csr_access := control.io.csr_we_o   // used for checking illegal instructions in csr register file
  csrRegFile.io.i_csr_wdata := csr_wdata // data read from rs1 register (May need to resolve hazards if rs1 is not yet written with updated value from the instruction in pipe
  csrRegFile.io.i_csr_op := control.io.csr_op_o
  csrRegFile.io.i_csr_op_en := csrControlUnit.io.csr_op_en_o // enabling write/set/clear  operation when csr instruction in decode stage
  csrRegFile.io.i_csr_addr := io.IF_ID_inst(31, 20) // reading the imm value to use as csr address
  csrRegFile.io.i_irq_software := false.B
  csrRegFile.io.i_irq_timer := false.B
  csrRegFile.io.i_irq_external := io.irq_external_i
  csrRegFile.io.i_nmi_mode := false.B
  csrRegFile.io.i_pc_if := io.fetch_csr_if_pc
  csrRegFile.io.i_pc_id := 0.U
  csrRegFile.io.i_pc_wb := 0.U
  csrRegFile.io.i_csr_save_if := io.fetch_csr_save_if
  csrRegFile.io.i_csr_save_id := false.B
  csrRegFile.io.i_csr_save_wb := false.B
  csrRegFile.io.i_csr_restore_mret := mret_inst
  csrRegFile.io.i_csr_restore_dret := false.B
  csrRegFile.io.i_csr_mcause := io.fetch_exc_cause_i
  csrRegFile.io.i_csr_save_cause := io.fetch_csr_save_cause_i
  csrRegFile.io.i_csr_mtval := 0.U
  csrRegFile.io.i_instr_ret := false.B
  csrRegFile.io.i_iside_wait := false.B
  csrRegFile.io.i_jump := false.B
  csrRegFile.io.i_branch := false.B
  csrRegFile.io.i_branch_taken := false.B
  csrRegFile.io.i_mem_load := false.B
  csrRegFile.io.i_mem_store := false.B
  csrRegFile.io.i_dside_wait := false.B
  csrRegFile.io.i_debug_mode := false.B
  csrRegFile.io.i_debug_cause := 0.U
  csrRegFile.io.i_debug_csr_save := false.B

  io.fetch_irq_pending_o := csrRegFile.io.o_irq_pending
  io.fetch_csr_mstatus_mie_o := csrRegFile.io.o_csr_mstatus_mie
  io.fetch_csr_mtvec_o := csrRegFile.io.o_csr_mtvec
  io.fetch_csr_mepc_o := csrRegFile.io.o_csr_mepc
  io.fetch_mret_inst_o := mret_inst

  // Initialize Csr Hazard Unit
  csrControlUnit.io.reg_wr_in_execute := io.ID_EX_ctrl_regWr
  csrControlUnit.io.rd_sel_in_execute := io.ID_EX_rd_sel
  csrControlUnit.io.reg_wr_in_memory := io.EX_MEM_ctrl_regWr
  csrControlUnit.io.rd_sel_in_memory := io.EX_MEM_rd_sel
  csrControlUnit.io.reg_wr_in_writeback := io.MEM_WB_ctrl_regWr
  csrControlUnit.io.rd_sel_in_writeback := io.MEM_WB_rd_sel
  csrControlUnit.io.rs1_sel_in_decode := io.IF_ID_inst(19, 15)
  csrControlUnit.io.csr_inst_in_decode := control.io.csr_we_o
  csrControlUnit.io.load_inst_in_execute := io.ID_EX_ctrl_MemRd
  csrControlUnit.io.load_inst_in_memory := io.EX_MEM_ctrl_MemRd
  csrControlUnit.io.dccm_rvalid_i := io.dccm_rvalid_i
  csrControlUnit.io.csr_wr_in_execute := io.ID_EX_ctrl_csrWen
  csrControlUnit.io.csr_wr_in_memory := io.EX_MEM_ctrl_csrWen
  csrControlUnit.io.csr_wr_in_writeback := io.MEM_WB_ctrl_csrWen
  csrControlUnit.io.csr_imm_inst_in_decode := control.io.csr_imm_type


  // Initialize Hazard Detection unit
  hazardDetection.io.IF_ID_INST := io.IF_ID_inst
  hazardDetection.io.ID_EX_MEMREAD := io.ID_EX_ctrl_MemRd
  hazardDetection.io.ID_EX_REGRD := io.ID_EX_rd_sel
  hazardDetection.io.pc_in := io.IF_ID_pc4
  hazardDetection.io.current_pc := io.IF_ID_pc
  hazardDetection.io.IF_ID_MEMREAD := control.io.out_memRead

  // Sending hazard detection outputs for Fetch
  io.hazardDetection_pc_out := hazardDetection.io.pc_out
  io.hazardDetection_current_pc_out := hazardDetection.io.current_pc_out
  io.hazardDetection_pc_forward := hazardDetection.io.pc_forward
  io.hazardDetection_inst_out := hazardDetection.io.inst_out
  io.hazardDetection_inst_forward := hazardDetection.io.inst_forward

  // Initialize Control Unit
  control.io.in_opcode := io.IF_ID_inst(6, 0)
  // control.io.enable_M_extension := io.enable_M_extension // M extension
  control.io.func7 := io.IF_ID_inst(31, 25)
  control.io.func3 := io.IF_ID_inst(14, 12)

  // Initialize Decode Forward Unit
  decodeForwardUnit.io.ID_EX_REGRD := io.ID_EX_rd_sel
  decodeForwardUnit.io.ID_EX_MEMRD := io.ID_EX_ctrl_MemRd
  decodeForwardUnit.io.EX_MEM_REGRD := io.EX_MEM_rd_sel
  decodeForwardUnit.io.MEM_WB_REGRD := io.MEM_WB_rd_sel
  decodeForwardUnit.io.EX_MEM_MEMRD := io.EX_MEM_ctrl_MemRd
  decodeForwardUnit.io.MEM_WB_MEMRD := io.MEM_WB_ctrl_MemRd
  decodeForwardUnit.io.rs1_sel := io.IF_ID_inst(19, 15)
  decodeForwardUnit.io.rs2_sel := io.IF_ID_inst(24, 20)
  decodeForwardUnit.io.ctrl_branch := control.io.out_branch

  decodeForwardUnit.io.execute_regwrite := io.execute_regwrite
  decodeForwardUnit.io.mem_regwrite := io.mem_regwrite
  decodeForwardUnit.io.wb_regwrite := io.wb_regwrite

  branchLogic.io.in_func3 := io.IF_ID_inst(14, 12)

  // FOR REGISTER RS1 in BRANCH LOGIC UNIT and JALR UNIT

  // These forwarding values come only when the Control's branch pin is high which means SB-Type
  // instruction is in the decode stage so we don't need to forward any values to the JALR unit
  // Hence for all these conditions we wire JALR unit with register file's output by default.
  when(decodeForwardUnit.io.forward_rs1 === "b0000".U) {
    // No hazard just use register file data
    branchLogic.io.in_rs1 := reg_file.io.rs1
    jalr.io.input_a := reg_file.io.rs1
  }.elsewhen(decodeForwardUnit.io.forward_rs1 === "b0001".U) {
    // hazard in alu stage forward data from alu output
    branchLogic.io.in_rs1 := io.alu_output
    jalr.io.input_a := reg_file.io.rs1
  }.elsewhen(decodeForwardUnit.io.forward_rs1 === "b0010".U) {
    // hazard in EX/MEM stage forward data from EX/MEM.alu_output
    branchLogic.io.in_rs1 := io.EX_MEM_alu_output
    jalr.io.input_a := reg_file.io.rs1
  }.elsewhen(decodeForwardUnit.io.forward_rs1 === "b0011".U) {
    // hazard in MEM/WB stage forward data from register file write data which will have correct data from the MEM/WB mux
    branchLogic.io.in_rs1 := reg_file.io.writeData
    jalr.io.input_a := reg_file.io.rs1
  }.elsewhen(decodeForwardUnit.io.forward_rs1 === "b0100".U) {
    // hazard in EX/MEM stage and load type instruction so forwarding from data memory data output instead of EX/MEM.alu_output
    branchLogic.io.in_rs1 := io.dmem_memOut
    jalr.io.input_a := reg_file.io.rs1
  }.elsewhen(decodeForwardUnit.io.forward_rs1 === "b0101".U) {
    // hazard in MEM/WB stage and load type instruction so forwarding from register file write data which will have the correct output from the mux
    branchLogic.io.in_rs1 := reg_file.io.writeData
    jalr.io.input_a := reg_file.io.rs1
  }

    // These forwarding values come only when the Control's branch pin is low which means JALR
    // instruction maybe in the decode stage so we don't need to forward any values to the Branch Logic unit
    // Hence for all these conditions we wire Branch Logic unit with register file's output by default.

    .elsewhen(decodeForwardUnit.io.forward_rs1 === "b0110".U) {
      // hazard in alu stage forward data from alu output
      jalr.io.input_a := io.alu_output
      branchLogic.io.in_rs1 := reg_file.io.rs1
    }.elsewhen(decodeForwardUnit.io.forward_rs1 === "b0111".U) {
    // hazard in EX/MEM stage forward data from EX/MEM.alu_output
    jalr.io.input_a := io.EX_MEM_alu_output
    branchLogic.io.in_rs1 := reg_file.io.rs1
  }.elsewhen(decodeForwardUnit.io.forward_rs1 === "b1000".U) {
    // hazard in MEM/WB stage forward data from register file write data which will have correct data from the MEM/WB mux
    jalr.io.input_a := reg_file.io.writeData
    branchLogic.io.in_rs1 := reg_file.io.rs1
  }.elsewhen(decodeForwardUnit.io.forward_rs1 === "b1001".U) {
    // hazard in EX/MEM stage and load type instruction so forwarding from data memory data output instead of EX/MEM.alu_output
    jalr.io.input_a := io.dmem_memOut
    branchLogic.io.in_rs1 := reg_file.io.rs1
  }.elsewhen(decodeForwardUnit.io.forward_rs1 === "b1010".U) {
    // hazard in MEM/WB stage and load type instruction so forwarding from register file write data which will have the correct output from the mux
    jalr.io.input_a := reg_file.io.writeData
    branchLogic.io.in_rs1 := reg_file.io.rs1
  }
    .otherwise {
      branchLogic.io.in_rs1 := reg_file.io.rs1
      jalr.io.input_a := reg_file.io.rs1
    }


  // FOR REGISTER RS2 in BRANCH LOGIC UNIT
  when(decodeForwardUnit.io.forward_rs2 === "b0000".U) {
    // No hazard just use register file data
    branchLogic.io.in_rs2 := reg_file.io.rs2
  }.elsewhen(decodeForwardUnit.io.forward_rs2 === "b0001".U) {
    // hazard in alu stage forward data from alu output
    branchLogic.io.in_rs2 := io.alu_output
  }.elsewhen(decodeForwardUnit.io.forward_rs2 === "b0010".U) {
    // hazard in EX/MEM stage forward data from EX/MEM.alu_output
    branchLogic.io.in_rs2 := io.EX_MEM_alu_output
  }.elsewhen(decodeForwardUnit.io.forward_rs2 === "b0011".U) {
    // hazard in MEM/WB stage forward data from register file write data which will have correct data from the MEM/WB mux
    branchLogic.io.in_rs2 := reg_file.io.writeData
  }.elsewhen(decodeForwardUnit.io.forward_rs2 === "b0100".U) {
    // hazard in EX/MEM stage and load type instruction so forwarding from data memory data output instead of EX/MEM.alu_output
    branchLogic.io.in_rs2 := io.dmem_memOut
  }.elsewhen(decodeForwardUnit.io.forward_rs2 === "b0101".U) {
    // hazard in MEM/WB stage and load type instruction so forwarding from register file write data which will have the correct output from the mux
    branchLogic.io.in_rs2 := reg_file.io.writeData
  }
    .otherwise {
      branchLogic.io.in_rs2 := reg_file.io.rs2
    }

  jalr.io.input_b := imm_generation.io.i_imm

  // Sending the branch logic unit output for Fetch
  io.branchLogic_output := branchLogic.io.output

  // The Mux after the Control module which selects the control inputs of
  // the ID/EX Pipeline register either from the Control or default 0 values
  // for stalling the pipeline one clock cycle.
  when(hazardDetection.io.ctrl_forward === "b1".U) {
    setControlPinsToZero()
  }.otherwise {
    sendDefaultControlPins()
  }


  // Initialize Register File
  reg_file.io.rs1_sel := io.IF_ID_inst(19, 15)
  reg_file.io.rs2_sel := io.IF_ID_inst(24, 20)
  reg_file.io.regWrite := io.MEM_WB_ctrl_regWr
  reg_file.io.rd_sel := io.MEM_WB_rd_sel
  reg_file.io.writeData := Mux(io.MEM_WB_ctrl_csrWen, io.MEM_WB_csr_rdata_i.asSInt(), io.writeback_write_data)


  // Initialize Immediate Generation
  imm_generation.io.instruction := io.IF_ID_inst
  imm_generation.io.pc := io.IF_ID_pc

  // Sending immediate generation outputs for Fetch
  io.sb_imm := imm_generation.io.sb_imm
  io.uj_imm := imm_generation.io.uj_imm
  io.jalr_output := jalr.io.output

  // Initialize Structural Hazard Detector
  structuralDetector.io.rs1_sel := io.IF_ID_inst(19, 15)
  structuralDetector.io.rs2_sel := io.IF_ID_inst(24, 20)
  structuralDetector.io.MEM_WB_REGRD := io.MEM_WB_rd_sel
  structuralDetector.io.MEM_WB_regWr := io.MEM_WB_ctrl_regWr
  structuralDetector.io.inst_op_in := io.IF_ID_inst(6, 0)

  // FOR RS1
  when(structuralDetector.io.fwd_rs1 === 1.U) {
    // additionally checking if the instruction is lui or not. We should not pass out
    // any value from the rs1 if lui is currently being decoded since it does not have
    // an rs1 field in it's encoding
    io.rs1_out := Mux(io.IF_ID_inst(6, 0) =/= "b0110111".U, reg_file.io.writeData, 0.S)
  }.otherwise {
    io.rs1_out := Mux(io.IF_ID_inst(6, 0) =/= "b0110111".U, reg_file.io.rs1, 0.S)
  }

  // FOR RS2
  when(structuralDetector.io.fwd_rs2 === 1.U) {
    // additionally checking if the instruction is lui or not. We should not pass out
    // any value from the rs2 if lui is currently being decoded since it does not have
    // an rs2 field in it's encoding
    io.rs2_out := Mux(io.IF_ID_inst(6, 0) =/= "b0110111".U, reg_file.io.writeData, 0.S)
  }.otherwise {
    io.rs2_out := Mux(io.IF_ID_inst(6, 0) =/= "b0110111".U, reg_file.io.rs2, 0.S)
  }

  when(control.io.out_extend_sel === "b00".U) {
    // I-Type instruction
    imm_out := imm_generation.io.i_imm
  }.elsewhen(control.io.out_extend_sel === "b01".U) {
    // S-Type instruction
    imm_out := imm_generation.io.s_imm
  }.elsewhen(control.io.out_extend_sel === "b10".U) {
    // U-Type instruction
    imm_out := imm_generation.io.u_imm
  }.otherwise {
    imm_out := 0.S(32.W)
  }

  io.pc_out := io.IF_ID_pc
  io.pc4_out := io.IF_ID_pc4
  io.inst_op_out := io.IF_ID_inst(6, 0) // used by the forward unit to see if instruction is eligible for data hazards
  io.func3_out := io.IF_ID_inst(14, 12)
  io.func7_out := io.IF_ID_inst(31, 25)
  io.rd_sel_out := io.IF_ID_inst(11, 7)
  io.rs1_sel_out := io.IF_ID_inst(19, 15)
  io.rs2_sel_out := io.IF_ID_inst(24, 20)

  //  io.csr_op_o := control.io.csr_op_o

  def setControlPinsToZero(): Unit = {
    io.ctrl_MemWr_out := 0.U
    io.ctrl_MemRd_out := 0.U
    io.ctrl_Branch_out := 0.U
    io.ctrl_RegWr_out := 0.U
    io.ctrl_CsrWen_out := false.B
    io.ctrl_MemToReg_out := 0.U
    io.ctrl_AluOp_out := 0.U
    io.ctrl_OpA_sel_out := 0.U
    io.ctrl_OpB_sel_out := 0.U
    io.ctrl_next_pc_sel_out := 0.U
    //   io.M_extension_enabled := 0.U
  }

  def sendDefaultControlPins(): Unit = {
    io.ctrl_MemWr_out := control.io.out_memWrite
    io.ctrl_MemRd_out := control.io.out_memRead
    io.ctrl_Branch_out := control.io.out_branch
    io.ctrl_RegWr_out := control.io.out_regWrite
    io.ctrl_CsrWen_out := control.io.csr_we_o
    io.ctrl_MemToReg_out := control.io.out_memToReg
    io.ctrl_AluOp_out := control.io.out_aluOp
    io.ctrl_OpA_sel_out := control.io.out_operand_a_sel
    io.ctrl_OpB_sel_out := control.io.out_operand_b_sel
    io.ctrl_next_pc_sel_out := control.io.out_next_pc_sel
    //   io.M_extension_enabled := control.io.M_extension_enabled
  }

  io.reg_7_out := reg_file.io.reg_7

  io.imm_out := imm_out

  when(control.io.csr_imm_type === 1.U) {
    csr_wdata := io.IF_ID_inst(19,15)   // selecting the imm encoded inside the rs1 field and writing to csr reg file
  } .otherwise {
    when(csrControlUnit.io.forward_rs1 === 1.U) {
      csr_wdata := io.alu_output.asUInt()
    }.elsewhen(csrControlUnit.io.forward_rs1 === 2.U) {
      // hazard in memory stage. If load instruction in memory stage then forward data read from memory
      // else forward alu output data from EX/MEM pipeline register
      csr_wdata := Mux(io.EX_MEM_ctrl_MemRd === 1.U, io.dmem_memOut.asUInt(), io.EX_MEM_alu_output.asUInt())
    }.elsewhen(csrControlUnit.io.forward_rs1 === 3.U) {
      csr_wdata := io.writeback_write_data.asUInt()
    }.elsewhen(csrControlUnit.io.forward_rs1 === 4.U) {
      // csr hazard in excute stage
      csr_wdata := io.ID_EX_csr_rdata_i
    }.elsewhen(csrControlUnit.io.forward_rs1 === 5.U) {
      // csr hazard in memory stage
      csr_wdata := io.EX_MEM_csr_rdata_i
    }.elsewhen(csrControlUnit.io.forward_rs1 === 6.U) {
      csr_wdata := io.MEM_WB_csr_rdata_i
    }.otherwise {
      csr_wdata := reg_file.io.rs1.asUInt()
    }
  }


  io.csr_rdata_o := csrRegFile.io.o_csr_rdata

}