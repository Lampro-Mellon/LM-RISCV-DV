package core

import chisel3._
import chisel3.util.Cat
import main.scala.core.csrs.CsrRegisterFile

class Core extends Module {
  val io = IO(new Bundle {
    // Data Memory Interface
    val data_gnt_i      =      Input(Bool())
    val data_rvalid_i   =      Input(Bool())
    val data_rdata_i    =      Input(SInt(32.W))
    val data_req_o      =      Output(Bool())
    val data_we_o       =      Output(Bool())
    val data_be_o       =      Output(Vec(4, Bool()))
    val data_addr_o     =      Output(SInt(32.W))
    val data_wdata_o    =      Output(Vec(4, SInt(8.W)))

    // instruction memory interface
    val instr_gnt_i     =      Input(Bool())
    val instr_rvalid_i  =      Input(Bool())
    val instr_rdata_i   =      Input(UInt(32.W))
    val instr_req_o     =      Output(Bool())
    val instr_addr_o    =      Output(UInt(32.W))

    // stall signal coming from SoC to stall until the UART writes into ICCM
    val stall_core_i    =      Input(Bool())

    // external interrupt signal coming from the GPIO (in future from PLIC)
    val irq_external_i  =      Input(Bool())
    val reg_7           =      Output(SInt(32.W))
    val reg_out         =      Output(SInt(32.W))
  })

  //        ██████╗░██╗░░░██╗██████╗░░█████╗░░██████╗░      ███╗░░░███╗██╗███╗░░██╗██╗
  //        ██╔══██╗██║░░░██║██╔══██╗██╔══██╗██╔═══██╗      ████╗░████║██║████╗░██║██║
  //        ██████╦╝██║░░░██║██████╔╝███████║██║██╗██║      ██╔████╔██║██║██╔██╗██║██║
  //        ██╔══██╗██║░░░██║██╔══██╗██╔══██║╚██████╔╝      ██║╚██╔╝██║██║██║╚████║██║
  //        ██████╦╝╚██████╔╝██║░░██║██║░░██║░╚═██╔═╝░      ██║░╚═╝░██║██║██║░╚███║██║
  //        ╚═════╝░░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░      ╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝╚═╝


  //                      ____________________s???s???s???s
  //                      ___________________s$$$$$$s..s..?..?..?
  //                      __________________$$$$$$$$$$$$s..s.?..?
  //                      ____________________$$$$$$$$$$$$$$s…?
  //                      ______________ s$$$$$$(O)$$$$$$$$$$$$.?
  //                      ____________ €$$$$$$$$$$$$$$$$$$$$s..?..s
  //                      _____________s$$$$$$$$$$$$$$$$$$$$$$s..?
  //                      _____________________s$$$$$$$$$$$$$$..s..?
  //                      ______________________$$$$$$$$$$$$s..s..?
  //                      ______________________$$$$$$$$$$$$.s.?.s.?
  //                      _____________________$$$$$$$$$$$$$s..s….?
  //                      ____________________$$$$$$$$$$$$$$s_??s.?
  //                      ___________________$$$$$$$$$$$$$$$s.s….?
  //                      _____s$$$$________$$$$$$$$$$$$$$$$$..s?
  //                      ____$$$$$$$$_____$$$$$$$$$$$$$$$$$$s…s
  //                      ____$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$_s_?__s$s
  //                      ____$$__$$$$$$$$$$$$$$$$$$$$$$$$$$_____s$$$
  //                      ____$$____$$$$$$$$$$$$$$$$$$$$$$s_____s$$$$s
  //                      ___$$$$$$$$$$$$$$$$$$$$$$$$$$_$$_____s$$$$$$
  //                      __$$$$$$$$$$$$$$$$$$$$$$$$$$$$_$____s$$$$$$$
  //                      __$$$$__$$$$$$$$$$$$$$$$$$$$$$$____s$$$$$$$$
  //                      ___$$$________$$$$$$$$$$$$$$$$$$___s$$$$$$$
  //                      ____$$$s______$$$$$$$$$$$$$$$$$$$__s$$$$$$
  //                      _____$$$_______$$$$$$$$$$$$$$$$$$$_s$$

  // val IF_ID = Module(new IF_ID())
  val ID_EX            =      Module(new           ID_EX())
  val EX_MEM           =      Module(new          EX_MEM())
  val MEM_WB           =      Module(new          MEM_WB())
  val fetch            =      Module(new           Fetch())
  val decode           =      Module(new          Decode())
  val execute          =      Module(new         Execute())
  val memory_stage     =      Module(new     MemoryStage())
  val writeback        =      Module(new       WriteBack())
//  val csrRegFile       =      Module(new CsrRegisterFile())

  // stalling the core either for loads/stores or after initial boot up to wait until UART writes program into ICCM.
  val stall            =      memory_stage.io.stall || io.stall_core_i

  // *********** ----------- CSR REGISTER FILE ----------- ********* //
//  csrRegFile.io.i_hart_id                       :=      0.U
//  csrRegFile.io.i_boot_addr                     :=      0.U
//  csrRegFile.io.i_csr_mtvec_init                :=      fetch.io.csrRegFile_csr_mtvec_init_o
//  csrRegFile.io.i_csr_access                    :=      MEM_WB.io.ctrl_CsrWen_out
//  csrRegFile.io.i_csr_wdata                     :=      writeback.io.write_data.asUInt()  // data from rs1
//  csrRegFile.io.i_csr_op                        :=      MEM_WB.io.csr_op_out
//  csrRegFile.io.i_csr_op_en                     :=      MEM_WB.io.ctrl_CsrWen_out   // right now the operation enables when csr instruction is in writeback stage
//  csrRegFile.io.i_csr_addr                      :=      MEM_WB.io.csr_addr_out(11,0).asUInt()
//  csrRegFile.io.i_irq_software                  :=      false.B
//  csrRegFile.io.i_irq_timer                     :=      false.B
//  csrRegFile.io.i_irq_external                  :=      io.irq_external_i
//  csrRegFile.io.i_nmi_mode                      :=      false.B
//  csrRegFile.io.i_pc_if                         :=      fetch.io.csrRegFile_csr_if_pc_o
//  csrRegFile.io.i_pc_id                         :=      0.U
//  csrRegFile.io.i_pc_wb                         :=      0.U
//  csrRegFile.io.i_csr_save_if                   :=      fetch.io.csrRegFile_csr_save_if_o
//  csrRegFile.io.i_csr_save_id                   :=      false.B
//  csrRegFile.io.i_csr_save_wb                   :=      false.B
//  csrRegFile.io.i_csr_restore_mret              :=      decode.io.mret_inst_o
//  csrRegFile.io.i_csr_restore_dret              :=      false.B
//  csrRegFile.io.i_csr_mcause                    :=      fetch.io.csrRegFile_exc_cause_o
//  csrRegFile.io.i_csr_save_cause                :=      fetch.io.csrRegFile_csr_save_cause_o
//  csrRegFile.io.i_csr_mtval                     :=      0.U
//  csrRegFile.io.i_instr_ret                     :=      false.B
//  csrRegFile.io.i_iside_wait                    :=      false.B
//  csrRegFile.io.i_jump                          :=      false.B
//  csrRegFile.io.i_branch                        :=      false.B
//  csrRegFile.io.i_branch_taken                  :=      false.B
//  csrRegFile.io.i_mem_load                      :=      false.B
//  csrRegFile.io.i_mem_store                     :=      false.B
//  csrRegFile.io.i_dside_wait                    :=      false.B
//  csrRegFile.io.i_debug_mode                    :=      false.B
//  csrRegFile.io.i_debug_cause                   :=      0.U
//  csrRegFile.io.i_debug_csr_save                :=      false.B
  // *********** ----------- INSTRUCTION FETCH (IF) STAGE ----------- ********* //
  fetch.io.core_init_mtvec_i                    :=      !io.stall_core_i
  fetch.io.core_stall_i                         :=      stall
  // instruction memory bus connections(inputs)
  fetch.io.core_instr_gnt_i                     :=      io.instr_gnt_i
  fetch.io.core_instr_rvalid_i                  :=      io.instr_rvalid_i
  fetch.io.core_instr_rdata_i                   :=      io.instr_rdata_i

  // csr connections
  fetch.io.csrRegFile_irq_pending_i             :=      decode.io.fetch_irq_pending_o
  fetch.io.csrRegFile_csr_mstatus_mie_i         :=      decode.io.fetch_csr_mstatus_mie_o
  fetch.io.csrRegFile_csr_mtvec_i               :=      decode.io.fetch_csr_mtvec_o
  fetch.io.csrRegFile_csr_mepc_i                :=      decode.io.fetch_csr_mepc_o
  fetch.io.decode_mret_inst_i                   :=      decode.io.fetch_mret_inst_o

  fetch.io.decode_sb_imm_i                      :=      decode.io.sb_imm
  fetch.io.decode_uj_imm_i                      :=      decode.io.uj_imm
  fetch.io.decode_jalr_imm_i                    :=      decode.io.jalr_output
  fetch.io.decode_ctrl_next_pc_sel_i            :=      decode.io.ctrl_next_pc_sel_out
  fetch.io.decode_ctrl_out_branch_i             :=      decode.io.ctrl_Branch_out
  fetch.io.decode_branchLogic_output_i          :=      decode.io.branchLogic_output
  fetch.io.decode_hazardDetection_pc_i          :=      decode.io.hazardDetection_pc_out
  fetch.io.decode_hazardDetection_inst_i        :=      decode.io.hazardDetection_inst_out
  fetch.io.decode_hazardDetection_current_pc_i  :=      decode.io.hazardDetection_current_pc_out
  fetch.io.decode_hazardDetection_pc_forward_i  :=      decode.io.hazardDetection_pc_forward
  fetch.io.decode_hazardDetection_inst_forward_i:=      decode.io.hazardDetection_inst_forward


  //instruction memory bus connections(outputs)
  io.instr_req_o                                :=      fetch.io.core_instr_req_o
  io.instr_addr_o                               :=      fetch.io.core_instr_addr_o
  // *********** ----------- INSTRUCTION DECODE (ID) STAGE ----------- ********* //

  decode.io.IF_ID_inst                          :=      fetch.io.decode_if_id_inst_o
  decode.io.IF_ID_pc                            :=      fetch.io.decode_if_id_pc_o
  decode.io.IF_ID_pc4                           :=      fetch.io.decode_if_id_pc4_o
  decode.io.MEM_WB_ctrl_regWr                   :=      MEM_WB.io.ctrl_RegWr_out
  decode.io.MEM_WB_ctrl_csrWen                  :=      MEM_WB.io.ctrl_CsrWen_out
  decode.io.ID_EX_ctrl_csrWen                   :=      ID_EX.io.ctrl_CsrWen_out
  decode.io.EX_MEM_ctrl_csrWen                  :=      EX_MEM.io.ctrl_CsrWen_out
//  decode.io.MEM_WB_csrAddr                      :=      MEM_WB.io.csr_addr_out(11,0).asUInt()
//  decode.io.ID_EX_ctrl_csrAddr                  :=      ID_EX.io.imm_out(11,0).asUInt()
//  decode.io.EX_MEM_ctrl_csrAddr                 :=      EX_MEM.io.csr_addr_out(11,0).asUInt()
  //decode.io.ID_EX_rs1_data                      :=      ID_EX.io.rs1_out
  decode.io.MEM_WB_rd_sel                       :=      MEM_WB.io.rd_sel_out
  decode.io.ID_EX_ctrl_MemRd                    :=      ID_EX.io.ctrl_MemRd_out
  decode.io.ID_EX_rd_sel                        :=      ID_EX.io.rd_sel_out
  decode.io.EX_MEM_rd_sel                       :=      EX_MEM.io.rd_sel_out
  decode.io.EX_MEM_ctrl_MemRd                   :=      EX_MEM.io.ctrl_MemRd_out
  decode.io.MEM_WB_ctrl_MemRd                   :=      MEM_WB.io.ctrl_MemRd_out
  decode.io.writeback_write_data                :=      writeback.io.write_data   // rs1 data
  decode.io.MEM_WB_csr_rdata_i                    :=      MEM_WB.io.csr_data_out    // csr data
  decode.io.EX_MEM_csr_rdata_i                  :=      EX_MEM.io.csr_data_o
  decode.io.ID_EX_csr_rdata_i                   :=      ID_EX.io.csr_data_o
  decode.io.alu_output                          :=      execute.io.alu_output
  decode.io.EX_MEM_alu_output                   :=      EX_MEM.io.alu_output
  decode.io.MEM_WB_alu_output                   :=      MEM_WB.io.alu_output
  decode.io.dmem_memOut                         :=      io.data_rdata_i
  decode.io.dccm_rvalid_i                       :=      io.data_rvalid_i
  decode.io.fetch_csr_save_cause_i              :=      fetch.io.csrRegFile_csr_save_cause_o
  decode.io.fetch_exc_cause_i                   :=      fetch.io.csrRegFile_exc_cause_o
  decode.io.fetch_csr_save_if                   :=      fetch.io.csrRegFile_csr_save_if_o
  decode.io.fetch_csr_if_pc                     :=      fetch.io.csrRegFile_csr_if_pc_o
  decode.io.fetch_csr_mtvec_init                :=      fetch.io.csrRegFile_csr_mtvec_init_o
//  decode.io.MEM_WB_csr_op                       :=      MEM_WB.io.csr_op_out
  decode.io.irq_external_i                      :=      io.irq_external_i
  decode.io.ID_EX_ctrl_regWr                    :=      ID_EX.io.ctrl_RegWr_out
  decode.io.EX_MEM_ctrl_regWr                   :=      EX_MEM.io.ctrl_RegWr_out

  ID_EX.io.stall                                :=      stall
  ID_EX.io.ctrl_MemWr_in                        :=      decode.io.ctrl_MemWr_out
  ID_EX.io.ctrl_MemRd_in                        :=      decode.io.ctrl_MemRd_out
  ID_EX.io.ctrl_Branch_in                       :=      decode.io.ctrl_Branch_out
  ID_EX.io.ctrl_RegWr_in                        :=      decode.io.ctrl_RegWr_out
  ID_EX.io.ctrl_CsrWen_in                       :=      decode.io.ctrl_CsrWen_out
  ID_EX.io.ctrl_MemToReg_in                     :=      decode.io.ctrl_MemToReg_out
  ID_EX.io.ctrl_AluOp_in                        :=      decode.io.ctrl_AluOp_out
  ID_EX.io.ctrl_OpA_sel_in                      :=      decode.io.ctrl_OpA_sel_out
  ID_EX.io.ctrl_OpB_sel_in                      :=      decode.io.ctrl_OpB_sel_out
  ID_EX.io.ctrl_nextPc_sel_in                   :=      decode.io.ctrl_next_pc_sel_out

  ID_EX.io.rs1_in                               :=      decode.io.rs1_out
  ID_EX.io.rs2_in                               :=      decode.io.rs2_out
  ID_EX.io.imm                                  :=      decode.io.imm_out
//  ID_EX.io.csr_op_in                            :=      decode.io.csr_op_o
  ID_EX.io.csr_data_i                           :=      decode.io.csr_rdata_o

  ID_EX.io.pc_in                                :=      decode.io.pc_out
  ID_EX.io.pc4_in                               :=      decode.io.pc4_out
  ID_EX.io.func3_in                             :=      decode.io.func3_out
  ID_EX.io.func7_in                             :=      decode.io.func7_out
  ID_EX.io.inst_op_in                           :=      decode.io.inst_op_out
  ID_EX.io.rd_sel_in                            :=      decode.io.rd_sel_out
  ID_EX.io.rs1_sel_in                           :=      decode.io.rs1_sel_out
  ID_EX.io.rs2_sel_in                           :=      decode.io.rs2_sel_out

  decode.io.execute_regwrite                    :=      ID_EX.io.ctrl_RegWr_out
  decode.io.mem_regwrite                        :=      EX_MEM.io.ctrl_RegWr_out
  decode.io.wb_regwrite                         :=      MEM_WB.io.ctrl_RegWr_out


  // *********** ----------- EXECUTION (EX) STAGE ----------- ********* //
  execute.io.ID_EX_pc_out                       :=      ID_EX.io.pc_out
  execute.io.EX_MEM_rd_sel                      :=      EX_MEM.io.rd_sel_out
  execute.io.MEM_WB_rd_sel                      :=      MEM_WB.io.rd_sel_out
  execute.io.ID_EX_rs1_sel                      :=      ID_EX.io.rs1_sel_out
  execute.io.ID_EX_rs2_sel                      :=      ID_EX.io.rs2_sel_out
  execute.io.EX_MEM_ctrl_RegWr                  :=      EX_MEM.io.ctrl_RegWr_out
  execute.io.EX_MEM_ctrl_csrWen                 :=      EX_MEM.io.ctrl_CsrWen_out
  execute.io.MEM_WB_ctrl_csrWen                 :=      MEM_WB.io.ctrl_CsrWen_out
  execute.io.MEM_WB_ctrl_RegWr                  :=      MEM_WB.io.ctrl_RegWr_out
  execute.io.ID_EX_ctrl_OpA_sel                 :=      ID_EX.io.ctrl_OpA_sel_out
  execute.io.ID_EX_ctrl_OpB_sel                 :=      ID_EX.io.ctrl_OpB_sel_out
  execute.io.ID_EX_pc4                          :=      ID_EX.io.pc4_out
  execute.io.ID_EX_rs1                          :=      ID_EX.io.rs1_out
  execute.io.ID_EX_rs2                          :=      ID_EX.io.rs2_out
  execute.io.EX_MEM_alu_output                  :=      EX_MEM.io.alu_output
  execute.io.EX_MEM_csr_rdata                   :=      EX_MEM.io.csr_data_o
  execute.io.MEM_WB_csr_rdata                   :=      MEM_WB.io.csr_data_out
  execute.io.writeback_write_data               :=      writeback.io.write_data
  execute.io.ID_EX_imm                          :=      ID_EX.io.imm_out
  execute.io.ID_EX_ctrl_AluOp                   :=      ID_EX.io.ctrl_AluOp_out
  execute.io.ID_EX_func7                        :=      ID_EX.io.func7_out
  execute.io.ID_EX_inst_op                      :=      ID_EX.io.inst_op_out
  execute.io.ID_EX_func3                        :=      ID_EX.io.func3_out
  execute.io.ID_EX_rd_sel                       :=      ID_EX.io.rd_sel_out
  execute.io.ID_EX_ctrl_MemWr                   :=      ID_EX.io.ctrl_MemWr_out
  execute.io.ID_EX_ctrl_MemRd                   :=      ID_EX.io.ctrl_MemRd_out
  execute.io.ID_EX_ctrl_RegWr                   :=      ID_EX.io.ctrl_RegWr_out
  execute.io.ID_EX_ctrl_CsrWen                  :=      ID_EX.io.ctrl_CsrWen_out
  execute.io.ID_EX_ctrl_MemToReg                :=      ID_EX.io.ctrl_MemToReg_out
//  execute.io.ID_EX_csr_op                       :=      ID_EX.io.csr_op_o
  execute.io.ID_EX_csr_data                     :=      ID_EX.io.csr_data_o

  EX_MEM.io.stall                               :=      stall
  // Passing the ALU output to the EX/MEM pipeline register
  EX_MEM.io.alu_in                              :=      execute.io.alu_output

  // Passing the rd_sel value in the EX/MEM pipeline register
  EX_MEM.io.rd_sel_in                           :=      execute.io.rd_sel_out
  EX_MEM.io.rs2_sel_in                          :=      execute.io.rs2_sel_out
  EX_MEM.io.rs2_in                              :=      execute.io.rs2_out
  EX_MEM.io.EX_MEM_func3                        :=      execute.io.func3_out
  EX_MEM.io.ctrl_CsrWen_in                      :=      execute.io.ctrl_CsrWe_out
//  EX_MEM.io.csr_addr_in                         :=      execute.io.csr_addr_out
//  EX_MEM.io.csr_op_in                           :=      execute.io.csr_op_o
  EX_MEM.io.csr_data_i                          :=      execute.io.csr_data_o


  // Passing the control signals to EX/MEM pipeline register and (memRead / memWrite control registers for stall detection unit)
  EX_MEM.io.ctrl_MemWr_in                       :=      execute.io.ctrl_MemWr_out
  EX_MEM.io.ctrl_MemRd_in                       :=      execute.io.ctrl_MemRd_out
  EX_MEM.io.ctrl_RegWr_in                       :=      execute.io.ctrl_RegWr_out
  EX_MEM.io.ctrl_MemToReg_in                    :=      execute.io.ctrl_MemToReg_out



  // *********** ----------- MEMORY (MEM) STAGE ----------- ********* //

  memory_stage.io.EX_MEM_alu_output             :=      EX_MEM.io.alu_output
  memory_stage.io.EX_MEM_rd_sel                 :=      EX_MEM.io.rd_sel_out
  memory_stage.io.EX_MEM_RegWr                  :=      EX_MEM.io.ctrl_RegWr_out
  memory_stage.io.EX_MEM_CsrWe                  :=      EX_MEM.io.ctrl_CsrWen_out
  memory_stage.io.EX_MEM_MemRd                  :=      EX_MEM.io.ctrl_MemRd_out
  memory_stage.io.EX_MEM_MemToReg               :=      EX_MEM.io.ctrl_MemToReg_out
  memory_stage.io.EX_MEM_MemWr                  :=      EX_MEM.io.ctrl_MemWr_out
  memory_stage.io.EX_MEM_rs2                    :=      EX_MEM.io.rs2_out
  memory_stage.io.func3                         :=      EX_MEM.io.EX_MEM_func3_out
//  memory_stage.io.EX_MEM_csr_addr               :=      EX_MEM.io.csr_addr_out
//  memory_stage.io.EX_MEM_csr_op                 :=      EX_MEM.io.csr_op_out
  memory_stage.io.EX_MEM_csr_data               :=      EX_MEM.io.csr_data_o

  memory_stage.io.data_gnt_i                    :=      io.data_gnt_i
  memory_stage.io.data_rvalid_i                 :=      io.data_rvalid_i
  memory_stage.io.data_rdata_i                  :=      io.data_rdata_i
  io.data_req_o                                 :=      memory_stage.io.data_req_o
  io.data_be_o                                  :=      memory_stage.io.data_be_o
  io.data_we_o                                  :=      memory_stage.io.ctrl_MemWr_out
  io.data_wdata_o                               :=      memory_stage.io.data_wdata_o
  io.data_addr_o                                :=      memory_stage.io.memAddress


  MEM_WB.io.stall                               :=      stall
  MEM_WB.io.alu_in                              :=      memory_stage.io.alu_output
  // not passing data memory data into MEM/WB register since it's output itself is registered
  MEM_WB.io.dmem_data_in                        :=      memory_stage.io.data_out
  MEM_WB.io.rd_sel_in                           :=      memory_stage.io.rd_sel_out

  MEM_WB.io.ctrl_RegWr_in                       :=      memory_stage.io.ctrl_RegWr_out
  MEM_WB.io.ctrl_CsrWen_in                      :=      memory_stage.io.ctrl_CsrWen_out
  MEM_WB.io.ctrl_MemRd_in                       :=      memory_stage.io.ctrl_MemRd_out
  MEM_WB.io.ctrl_MemToReg_in                    :=      memory_stage.io.ctrl_MemToReg_out
//  MEM_WB.io.csr_addr_in                         :=      memory_stage.io.csr_addr_out
//  MEM_WB.io.csr_op_in                           :=      memory_stage.io.csr_op_out
  MEM_WB.io.csr_data_in                         :=      memory_stage.io.csr_data_out

  // *********** ----------- WRITE BACK (WB) STAGE ----------- ********* //


  writeback.io.MEM_WB_MemToReg                  :=      MEM_WB.io.ctrl_MemToReg_out
  // directly passing the data memory result to the write back stage
  // since it's output is already registered so we pass it directly.
  //    writeback.io.MEM_WB_dataMem_data := memory_stage.io.data_out
  writeback.io.MEM_WB_dataMem_data              :=      MEM_WB.io.dmem_data_out
  writeback.io.MEM_WB_alu_output                :=      MEM_WB.io.alu_output


  // Just for testing
  io.reg_out                                    :=      writeback.io.write_data

  io.reg_7                                      :=      decode.io.reg_7_out

}
