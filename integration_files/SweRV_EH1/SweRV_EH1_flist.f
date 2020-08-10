+incdir+${PRJ_DIR}/rtl/lib
+incdir+${PRJ_DIR}/rtl/include
+incdir+${PRJ_DIR}/snapshots/default

+libext+.v

// Including Defines Files
${PRJ_DIR}/snapshots/default/common_defines.vh
${PRJ_DIR}/rtl/include/swerv_types.sv

// Including Design Files
${PRJ_DIR}/rtl/swerv_wrapper.sv
${PRJ_DIR}/rtl/mem.sv
${PRJ_DIR}/rtl/pic_ctrl.sv
${PRJ_DIR}/rtl/swerv.sv
${PRJ_DIR}/rtl/dma_ctrl.sv
${PRJ_DIR}/rtl/ifu/ifu_aln_ctl.sv
${PRJ_DIR}/rtl/ifu/ifu_compress_ctl.sv
${PRJ_DIR}/rtl/ifu/ifu_ifc_ctl.sv
${PRJ_DIR}/rtl/ifu/ifu_bp_ctl.sv
${PRJ_DIR}/rtl/ifu/ifu_ic_mem.sv
${PRJ_DIR}/rtl/ifu/ifu_mem_ctl.sv
${PRJ_DIR}/rtl/ifu/ifu_iccm_mem.sv
${PRJ_DIR}/rtl/ifu/ifu.sv
${PRJ_DIR}/rtl/dec/dec_decode_ctl.sv
${PRJ_DIR}/rtl/dec/dec_gpr_ctl.sv
${PRJ_DIR}/rtl/dec/dec_ib_ctl.sv
${PRJ_DIR}/rtl/dec/dec_tlu_ctl.sv
${PRJ_DIR}/rtl/dec/dec_trigger.sv
${PRJ_DIR}/rtl/dec/dec.sv
${PRJ_DIR}/rtl/exu/exu_alu_ctl.sv
${PRJ_DIR}/rtl/exu/exu_mul_ctl.sv
${PRJ_DIR}/rtl/exu/exu_div_ctl.sv
${PRJ_DIR}/rtl/exu/exu.sv
${PRJ_DIR}/rtl/lsu/lsu.sv
${PRJ_DIR}/rtl/lsu/lsu_clkdomain.sv
${PRJ_DIR}/rtl/lsu/lsu_addrcheck.sv
${PRJ_DIR}/rtl/lsu/lsu_lsc_ctl.sv
${PRJ_DIR}/rtl/lsu/lsu_stbuf.sv
${PRJ_DIR}/rtl/lsu/lsu_bus_buffer.sv
${PRJ_DIR}/rtl/lsu/lsu_bus_intf.sv
${PRJ_DIR}/rtl/lsu/lsu_ecc.sv
${PRJ_DIR}/rtl/lsu/lsu_dccm_mem.sv
${PRJ_DIR}/rtl/lsu/lsu_dccm_ctl.sv
${PRJ_DIR}/rtl/lsu/lsu_trigger.sv
${PRJ_DIR}/rtl/dbg/dbg.sv
${PRJ_DIR}/rtl/dmi/dmi_wrapper.v
${PRJ_DIR}/rtl/dmi/dmi_jtag_to_core_sync.v
${PRJ_DIR}/rtl/dmi/rvjtag_tap.sv
-v ${PRJ_DIR}/rtl/lib/beh_lib.sv
-v ${PRJ_DIR}/rtl/lib/mem_lib.sv
-v ${PRJ_DIR}/rtl/lib/ahb_to_axi4.sv
-v ${PRJ_DIR}/rtl/lib/axi4_to_ahb.sv

// Including Testbench Files
${PRJ_DIR}/testbench/ahb_sif.sv
${PRJ_DIR}/testbench/tb_top.sv
