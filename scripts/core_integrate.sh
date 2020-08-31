#!/bin/bash

# rv_dv_remote        = https://github.com/google/riscv-dv.git
# rv_dv_commit_sha    = 67148f58ab4c73b2039b2d0880535525fd7a76a7

# swerv_remote        = https://github.com/chipsalliance/Cores-SweRV.git
# swerv_commit_sha    = 48f01f101eeeb8c75013afb4546e01b0fda08984


# rv_dv_local         = ../google_riscv_dv
# swerv_local         = ../cores/SweRV_EH1

# Delete the folders containing sources
rm -rf ../cores/* ../google_riscv_dv/* ../google_riscv_dv/.* ../integrated_cores/*

# Clone Google's RISC-V DV and check out to specified commit
git clone https://github.com/google/riscv-dv.git ../google_riscv_dv;
cd ../google_riscv_dv;
git checkout 67148f58ab4c73b2039b2d0880535525fd7a76a7;

# Clone SweRV EH-1 and check out to specified commit
git clone https://github.com/chipsalliance/Cores-SweRV.git ../cores/SweRV_EH1;
cd ../cores/SweRV_EH1;
git checkout 48f01f101eeeb8c75013afb4546e01b0fda08984;
cd ..;

# Setup the SweRV core environment with Google's RISC-V DV
echo "Setting up a Environment for SweRV EH-1 core in integrated_cores/SweRV_EH1";
cp -r ../integration_files/SweRV_EH1 ../integrated_cores/SweRV_EH1;
cp ../integration_files/sim.py ../integrated_cores/SweRV_EH1/;

cp -r ../cores/SweRV_EH1/design ../integrated_cores/SweRV_EH1/rtl/;

cp ../integration_files/lm_run.py ../google_riscv_dv/;
