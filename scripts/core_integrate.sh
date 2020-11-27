#!/bin/bash

SCRIPT_PATH=$( dirname "${BASH_SOURCE[0]}")
BASE_DIR=$(cd ${SCRIPT_PATH}; cd ..; pwd)
echo "BASE_DIR = ${BASE_DIR}"

RV_DV_REMOTE='https://github.com/google/riscv-dv.git'
RV_DV_COMMIT_SHA='3467c3777cb428b2e30b30b7f895a8fd73873d4f'

SWERV_REMOTE='https://github.com/chipsalliance/Cores-SweRV.git'
SWERV_COMMIT_SHA='7332edc0adaa7e9a0c842d169154429e8d987786'

CORES="${BASE_DIR}/cores"
INTEGRATED_CORES="${BASE_DIR}/integrated_cores"
INTEGRATION_FILES="${BASE_DIR}/integration_files"
RV_DV="${BASE_DIR}/google_riscv_dv"

SWERV_LOCAL="${CORES}/SweRV_EH1"


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
    pip3 install -r requirements.txt
    git checkout ${RV_DV_COMMIT_SHA}
else
    printf "HEAD of ${RV_DV} is already at ${RV_DV_COMMIT_SHA}! \n\n"
fi


# # Clone SweRV EH-1 if it does not exist
printf "Checking for SweRV EH-1 with COMMIT ID: ${SWERV_COMMIT_SHA} ...\n\n"
if [ -d "${SWERV_LOCAL}" ] && [ -d "${SWERV_LOCAL}/.git" ]
then
    printf "${SWERV_LOCAL}/ is already a git repository \n"
    cd ${SWERV_LOCAL}
    SWERV_SHA_OUTPUT=$(git log -1 --pretty=format:"%H")
else
    printf "${SWERV_LOCAL}/ is not a git repository \n"
    SWERV_SHA_OUTPUT="-1"
fi

if [ ${SWERV_SHA_OUTPUT} != ${SWERV_COMMIT_SHA} ]
then 
    git clone ${SWERV_REMOTE} ${SWERV_LOCAL};
    cd ${SWERV_LOCAL};
    git checkout ${SWERV_COMMIT_SHA};
else
    printf "HEAD of ${SWERV_LOCAL} is already at ${SWERV_COMMIT_SHA}! \n\n"
fi

# Environment Setup for SweRV EH-1
printf "Setting up the Environment for SweRV EH-1 core in integrated_cores/SweRV_EH1 ...\n";

rm -rf "${INTEGRATED_CORES}/SweRV_EH1/"
cp -r "${INTEGRATION_FILES}/SweRV_EH1" "${INTEGRATED_CORES}/SweRV_EH1";
rm -rf "${INTEGRATED_CORES}/SweRV_EH1/google_riscv_dv/"
cp -r "${INTEGRATION_FILES}/SweRV_EH1/testbench" "${INTEGRATED_CORES}/SweRV_EH1/";
cp -r "${CORES}/SweRV_EH1/design" "${INTEGRATED_CORES}/SweRV_EH1/rtl/";

# TODO: Check for files before renaming 
mv "${RV_DV}/src/riscv_instr_gen_config.sv" "${RV_DV}/src/default_riscv_instr_gen_config.sv";
mv "${RV_DV}/src/riscv_asm_program_gen.sv" "${RV_DV}/src/default_riscv_asm_program_gen.sv";
mv "${RV_DV}/scripts/gen_csr_test.py" "${RV_DV}/scripts/default_gen_csr_test.py";
#mv "${RV_DV}/scripts/spike_log_to_trace_csv.py" "${RV_DV}/scripts/default_spike_log_to_trace_csv.py";
mv "${RV_DV}/scripts/instr_trace_compare.py" "${RV_DV}/scripts/default_instr_trace_compare.py";

cp "${INTEGRATION_FILES}/SweRV_EH1/google_riscv_dv/lm_run.py" "${RV_DV}/";
cp "${INTEGRATION_FILES}/SweRV_EH1/google_riscv_dv/lm_cov.py" "${RV_DV}/";
cp "${INTEGRATION_FILES}/SweRV_EH1/google_riscv_dv/src/riscv_instr_gen_config.sv" "${RV_DV}/src/";
cp "${INTEGRATION_FILES}/SweRV_EH1/google_riscv_dv/src/riscv_asm_program_gen.sv" "${RV_DV}/src/";
cp "${INTEGRATION_FILES}/SweRV_EH1/google_riscv_dv/scripts/gen_csr_test.py" "${RV_DV}/scripts/";
#cp "${INTEGRATION_FILES}/SweRV_EH1/google_riscv_dv/scripts/spike_log_to_trace_csv.py" "${RV_DV}/scripts/";
cp "${INTEGRATION_FILES}/SweRV_EH1/google_riscv_dv/scripts/instr_trace_compare.py" "${RV_DV}/scripts/";
