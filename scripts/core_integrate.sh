#!/bin/bash
# 
# //////////////////////////////////////////////////////////////////////
#    Copyright [2020] [Lampro Mellon]
# 
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
# 
#      http://www.apache.org/licenses/LICENSE-2.0
# 
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
# //////////////////////////////////////////////////////////////////////

SCRIPT_PATH=$( dirname "${BASH_SOURCE[0]}")
BASE_DIR=$(cd ${SCRIPT_PATH}; cd ..; pwd)
echo "BASE_DIR = ${BASE_DIR}"

RV_DV_REMOTE='https://github.com/google/riscv-dv.git'
RV_DV_COMMIT_SHA='0b625258549e733082c12e5dc749f05aefb07d5a'

SWERV_REMOTE='https://github.com/chipsalliance/Cores-SweRV.git'
SWERV_COMMIT_SHA='7332edc0adaa7e9a0c842d169154429e8d987786'

RC_REMOTE='https://github.com/riscv/riscv-compliance.git'
RC_COMMIT_SHA='0e77784916ed9c07842883ba6c62db2555a8335f'

CORES="${BASE_DIR}/cores"
INTEGRATED_CORES="${BASE_DIR}/integrated_cores"
INTEGRATION_FILES="${BASE_DIR}/integration_files"
RV_DV="${BASE_DIR}/google_riscv_dv"

SWERV_LOCAL="${CORES}/SweRV_EH1"
RC_LOCAL="${BASE_DIR}/riscv-compliance"


# Clone RISCV-DV if it does not exist
printf "Checking for RISCV-DV with COMMIT ID: ${RV_DV_COMMIT_SHA} ...\n\n"
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

# # Clone riscv-compliance if it does not exist
printf "Checking for SweRV EH-1 with COMMIT ID: ${RC_COMMIT_SHA} ...\n\n"
if [ -d "${RC_LOCAL}" ] && [ -d "${RC_LOCAL}/.git" ]
then
    printf "${RC_LOCAL}/ is already a git repository \n"
    cd ${RC_LOCAL}
    RC_SHA_OUTPUT=$(git log -1 --pretty=format:"%H")
else
    printf "${RC_LOCAL}/ is not a git repository \n"
    RC_SHA_OUTPUT="-1"
fi

if [ ${RC_SHA_OUTPUT} != ${RC_COMMIT_SHA} ]
then 
    git clone ${RC_REMOTE} ${RC_LOCAL};
    cd ${RC_LOCAL};
    git checkout ${RC_COMMIT_SHA};
else
    printf "HEAD of ${RC_LOCAL} is already at ${RC_COMMIT_SHA}! \n\n"
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
cp "${INTEGRATION_FILES}/SweRV_EH1/yaml/simulator.yaml" "${RV_DV}/yaml/";
cp "${INTEGRATION_FILES}/SweRV_EH1/google_riscv_dv/riscv_instr_base_test.py" "${RV_DV}/pygen/pygen_src/test/";
#cp "${INTEGRATION_FILES}/SweRV_EH1/google_riscv_dv/scripts/spike_log_to_trace_csv.py" "${RV_DV}/scripts/";
cp "${INTEGRATION_FILES}/SweRV_EH1/google_riscv_dv/scripts/instr_trace_compare.py" "${RV_DV}/scripts/";

# Setup SweRV-EH1 with riscv-compliance files
cp -r "${RC_LOCAL}/riscv-test-suite" "${INTEGRATED_CORES}/SweRV_EH1/directed_tests/";
cp -r "${RC_LOCAL}/riscv-test-env" "${INTEGRATED_CORES}/SweRV_EH1/snapshots/default/";
cp "${RC_LOCAL}/riscv-test-env/arch_test.h" "${INTEGRATED_CORES}/SweRV_EH1/snapshots/default/";
cp "${RC_LOCAL}/riscv-test-env/encoding.h" "${INTEGRATED_CORES}/SweRV_EH1/snapshots/default/";
cp -r "${INTEGRATION_FILES}/SweRV_EH1/riscv-target/model_test.h" "${INTEGRATED_CORES}/SweRV_EH1/snapshots/default/";
