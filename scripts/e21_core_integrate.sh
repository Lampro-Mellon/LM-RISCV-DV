#!/bin/bash

SCRIPT_PATH=$( dirname "${BASH_SOURCE[0]}")
BASE_DIR=$(cd ${SCRIPT_PATH}; cd ..; pwd)
echo "BASE_DIR = ${BASE_DIR}"

RV_DV_REMOTE='https://github.com/google/riscv-dv.git'
RV_DV_COMMIT_SHA='0c640e3a9eb37a9d28b7f21104d0024b7148d7cf'

CORES="${BASE_DIR}/cores/E2_Series"
INTEGRATED_CORES="${BASE_DIR}/integrated_cores"
INTEGRATION_FILES="${BASE_DIR}/integration_files/E2_Series"
RV_DV="${BASE_DIR}/google_riscv_dv"

E21_LOCAL="${CORES}/E21"

# Clone Google's RISC-V DV if it does not exist
printf "Checking for Google's RISC-V DV with COMMIT ID: ${RV_DV_COMMIT_SHA} ...\n\n"
if [ -d "${RV_DV}" ] && [ -d "${RV_DV}/.git" ]
then
    printf "${RV_DV}/ is already a git repository \n"
    cd ${RV_DV}
    RV_DV_SHA_OUTPUT=$(git log -1 --pretty=format:"%H")
else
    printf "${RV_DV}/ is not a git repository \n"
    RV_DV_SHA_OUTPUT="-1"
fi

if [ ${RV_DV_SHA_OUTPUT} != ${RV_DV_COMMIT_SHA} ]
then 
    git clone ${RV_DV_REMOTE} ${RV_DV}
    cd ${RV_DV}
    git checkout ${RV_DV_COMMIT_SHA}
else
    printf "HEAD of ${RV_DV} is already at ${RV_DV_COMMIT_SHA}! \n\n"
fi

# Environment Setup for E21
printf "Setting up the Environment for E21 core in integrated_cores/E21 ...\n";

rm -rf "${INTEGRATED_CORES}/E21/"
cp -r "${INTEGRATION_FILES}/E21" "${INTEGRATED_CORES}/E21";
rm -rf "${INTEGRATED_CORES}/E21/google_riscv_dv/"
rm -rf "${INTEGRATED_CORES}/E21/testbench/"

# TODO: Check for files before renaming 
mv "${RV_DV}/src/riscv_instr_gen_config.sv" "${RV_DV}/src/default_riscv_instr_gen_config.sv";
mv "${RV_DV}/src/riscv_asm_program_gen.sv" "${RV_DV}/src/default_riscv_asm_program_gen.sv";
mv "${RV_DV}/scripts/spike_log_to_trace_csv.py" "${RV_DV}/scripts/default_spike_log_to_trace_csv.py";
mv "${RV_DV}/scripts/instr_trace_compare.py" "${RV_DV}/scripts/default_instr_trace_compare.py";

# copying common files
cp -r "${INTEGRATION_FILES}/common_files/directed_tests" "${INTEGRATED_CORES}/E21";
cp -r "${INTEGRATION_FILES}/common_files/bsp" "${INTEGRATED_CORES}/E21";
cp -r ${INTEGRATION_FILES}/common_files/riscv_dv_extension/* "${INTEGRATED_CORES}/E21/riscv_dv_extension/";
cp ${INTEGRATION_FILES}/common_files/yaml/* "${INTEGRATED_CORES}/E21/yaml"
cp "${INTEGRATION_FILES}/common_files/sim.py" "${INTEGRATED_CORES}/E21"
cp "${INTEGRATION_FILES}/common_files/top.F" "${INTEGRATED_CORES}/E21"
cp "${INTEGRATION_FILES}/common_files/tracer_files.F" "${INTEGRATED_CORES}/E21"
cp "${INTEGRATION_FILES}/common_files/waves.tcl" "${INTEGRATED_CORES}/E21"
cp "${INTEGRATION_FILES}/common_files/google_riscv_dv/lm_run.py" "${RV_DV}/";
cp "${INTEGRATION_FILES}/common_files/google_riscv_dv/src/riscv_instr_gen_config.sv" "${RV_DV}/src/riscv_instr_gen_config.sv";
cp "${INTEGRATION_FILES}/common_files/google_riscv_dv/src/riscv_asm_program_gen.sv" "${RV_DV}/src/riscv_asm_program_gen.sv";
cp "${INTEGRATION_FILES}/common_files/google_riscv_dv/scripts/spike_log_to_trace_csv.py" "${RV_DV}/scripts/";
cp "${INTEGRATION_FILES}/common_files/google_riscv_dv/scripts/instr_trace_compare.py" "${RV_DV}/scripts/";
cp "${INTEGRATION_FILES}/common_files/google_riscv_dv/scripts/gen_csr_test.py" "${RV_DV}/scripts/";

## assuming downloaded E21 is there in cores folder
##copy local E21 to integrated cores
cp -r "${CORES}/E21/rtl" "${INTEGRATED_CORES}/E21/rtl";
mv "${INTEGRATED_CORES}/E21/rtl/testbench" "${INTEGRATED_CORES}/E21";
mv "${INTEGRATED_CORES}/E21/rtl/testbench.F" "${INTEGRATED_CORES}/E21";
mv "${INTEGRATED_CORES}/E21/rtl/sifive_insight" "${INTEGRATED_CORES}/E21";
mv "${INTEGRATED_CORES}/E21/rtl/sifive_insight.F" "${INTEGRATED_CORES}/E21";
cp "${INTEGRATION_FILES}/common_files/tracer_files.F" "${INTEGRATED_CORES}/E21";
cp "${INTEGRATION_FILES}/common_files/top.F" "${INTEGRATED_CORES}/E21";
cp "${INTEGRATION_FILES}/E21/Makefile" "${INTEGRATED_CORES}/E21"
rm -rf "${INTEGRATED_CORES}/E21/rtl/top.F";
## not needed for now
mv "${INTEGRATED_CORES}/E21/rtl/implementation" "${INTEGRATED_CORES}/E21/misc";
mv "${INTEGRATED_CORES}/E21/rtl/sram_integration_tb" "${INTEGRATED_CORES}/E21/misc";
mv "${INTEGRATED_CORES}/E21/rtl/sram_integration_tb.F" "${INTEGRATED_CORES}/E21/misc";

rm -rf "${INTEGRATED_CORES}/E21/misc";
cp ${INTEGRATION_FILES}/common_files/testbench/* "${INTEGRATED_CORES}/E21/testbench"
