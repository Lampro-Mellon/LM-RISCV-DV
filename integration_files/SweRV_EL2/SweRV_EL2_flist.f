+incdir+${PRJ_DIR}/design/lib
+incdir+${PRJ_DIR}/design/include
+incdir+${PRJ_DIR}/snapshots/default
+incdir+${PRJ_DIR}/testbench
+define+RV_OPENSOURCE

+libext+.v+.sv

// Including Defines Files
${RV_ROOT}/snapshots/default/common_defines.vh
${RV_ROOT}/design/include/el2_def.sv
${RV_ROOT}/snapshots/default/el2_pdef.vh

//-y $SYNOPSYS_SYN_ROOT/dw/sim_ver
${PRJ_DIR}/design/el2_swerv_wrapper.sv
${PRJ_DIR}/design/el2_mem.sv
${PRJ_DIR}/design/el2_pic_ctrl.sv
${PRJ_DIR}/design/el2_swerv.sv
${PRJ_DIR}/design/el2_dma_ctrl.sv
${PRJ_DIR}/design/ifu/el2_ifu_aln_ctl.sv
${PRJ_DIR}/design/ifu/el2_ifu_compress_ctl.sv
${PRJ_DIR}/design/ifu/el2_ifu_ifc_ctl.sv
${PRJ_DIR}/design/ifu/el2_ifu_bp_ctl.sv
${PRJ_DIR}/design/ifu/el2_ifu_ic_mem.sv
${PRJ_DIR}/design/ifu/el2_ifu_mem_ctl.sv
${PRJ_DIR}/design/ifu/el2_ifu_iccm_mem.sv
${PRJ_DIR}/design/ifu/el2_ifu.sv
${PRJ_DIR}/design/dec/el2_dec_decode_ctl.sv
${PRJ_DIR}/design/dec/el2_dec_gpr_ctl.sv
${PRJ_DIR}/design/dec/el2_dec_ib_ctl.sv
${PRJ_DIR}/design/dec/el2_dec_tlu_ctl.sv
${PRJ_DIR}/design/dec/el2_dec_trigger.sv
${PRJ_DIR}/design/dec/el2_dec.sv
${PRJ_DIR}/design/exu/el2_exu_alu_ctl.sv
${PRJ_DIR}/design/exu/el2_exu_mul_ctl.sv
${PRJ_DIR}/design/exu/el2_exu_div_ctl.sv
${PRJ_DIR}/design/exu/el2_exu.sv
${PRJ_DIR}/design/lsu/el2_lsu.sv
${PRJ_DIR}/design/lsu/el2_lsu_clkdomain.sv
${PRJ_DIR}/design/lsu/el2_lsu_addrcheck.sv
${PRJ_DIR}/design/lsu/el2_lsu_lsc_ctl.sv
${PRJ_DIR}/design/lsu/el2_lsu_stbuf.sv
${PRJ_DIR}/design/lsu/el2_lsu_bus_buffer.sv
${PRJ_DIR}/design/lsu/el2_lsu_bus_intf.sv
${PRJ_DIR}/design/lsu/el2_lsu_ecc.sv
${PRJ_DIR}/design/lsu/el2_lsu_dccm_mem.sv
${PRJ_DIR}/design/lsu/el2_lsu_dccm_ctl.sv
${PRJ_DIR}/design/lsu/el2_lsu_trigger.sv
${PRJ_DIR}/design/dbg/el2_dbg.sv
${PRJ_DIR}/design/dmi/dmi_wrapper.v
${PRJ_DIR}/design/dmi/dmi_jtag_to_core_sync.v
${PRJ_DIR}/design/dmi/rvjtag_tap.v
${PRJ_DIR}/design/lib/el2_lib.sv
-v ${PRJ_DIR}/design/lib/beh_lib.sv
-v ${PRJ_DIR}/design/lib/mem_lib.sv
-v ${PRJ_DIR}/design/lib/ahb_to_axi4.sv
-v ${PRJ_DIR}/design/lib/axi4_to_ahb.sv
-y ${PRJ_DIR}/design/lib

// Including Testbench Files
${PRJ_DIR}/testbench/pkg.sv
${PRJ_DIR}/testbench/tracer_pkg.sv
${PRJ_DIR}/testbench/tracer.sv
${PRJ_DIR}/testbench/ahb_sif.sv
${PRJ_DIR}/testbench/axi_lsu_dma_bridge.sv
${PRJ_DIR}/testbench/tb_top.sv
