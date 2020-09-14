# Overview

LM RISCV-DV is a verfication environment based on the verification environment from lowRISC for ibex core. This environment integrates a random assembly test generator from Google's RISCV-DV. This work is currently in progress. At present it supports:

- RTL Compilation
- Random Assembly Test Generation
- Test Compilation (Random, Directed)
- RTL Simulation
- ISS Simulation
- Post Comparison with ISS
- URG Coverage Report Generation

## Directory Structure

```bash
├── cores
├── google_riscv_dv
├── integrated_cores
├── integration_files
└── scripts
    ├── core_integrate.sh
    └── toolchain_paths.sh
```

### cores/

This directory will contain the cores in their original source forms, cloned from their sites. Currently, LM RISC-V DV has been setup and tested for **SweRV EH-1** core from **Western Digital**.

### google_riscv_dv/

Google's RISC-V DV is cloned into this repository. It contains the source for random assembly test generator written in SystemVerilog/UVM.

### integrated_cores/

After the cores and Google's RISC-V DV is cloned into their respective directories, the verification environemnt of the core will be set up here.

### integration files/

This directory contains files which will be used in setting up the verification environment. It contains Makefile, python scripts, yaml files and Google's RISC-V DV files for core configuartion.

### scripts/

All the scripts for setting up the repository, updating the submodules and core integration will be placed in this directory. At present, it contains two scripts. `core_integrate.sh` clones the SweRV EH-1 Core and Google's RISC-V DV and setup the environment for it and `toolchain_paths.sh` contains path variables to be used by environment. 

## Pre-Requisites

Following are the requirements for running the test generator and environemnt.

- RISC-V GNU Toolchain
- Instruction Set Simulator
- Python 3
- SV and UVM 1.2 Simulator

In order to work on this environment, RISC-V GNU Toolchain along some RISC-V ISS i.e. Spike, OVPsim etc. should be installed. For manually building the `RISC-V GNU Toolchain`, visit the [riscv-gnu-toolchain](https://github.com/riscv/riscv-gnu-toolchain) repository on Github. Pre-built toolchains can be downloaded from [SiFive Software](https://www.sifive.com/software) Page. We are using `Spike ISS` for LM RISC-V DV. It can be manually built from the source which can be obtained from [riscv-isa-sim](https://github.com/riscv/riscv-isa-sim) repository. `Python 3.7` or above is recommended for the python scripts to work properly for test generation, compilation and simulation. According to Google's RISC-V Documentation, a number of `simulators` has been verified with the test generator including Synopsys VCS, Cadence Incisive/Xcelium, Mentor Questa, and Aldec Riviera-PRO.

## Setup

After the toolchain and spike is installed, their installation paths should be added to `bashrc` file in `RISCV_PATH` and `SPIKE_PATH` variables respectively. Following is the sample of paths to be added on a ubuntu OS.

```bash
export RISCV_PATH = <path to>/riscv64-unknown-elf-gcc-8.3.0-2019.08.0-x86_64-linux-ubuntu14
export SPIKE_PATH = <path to spike>/build
```

Their is a `toolchain_paths.sh` script in `scripts` directory. You need to source it too in the `bashrc` file.

```bash
source <path to toolchain_paths.sh>
```

## Integration of Core with Google's RISC-V DV

Currently, only SweRV EH-1 has been integrated into Google's RISC-V DV Environment. `core_integrate.sh` is a basic script placed in `scripts` directory which clones the cores and Google's RISC-V DV into appropriate folders as discussed in **directory structure** section. You just simply need to run the script through terminal. 

```bash
./core_integrate.sh
```

It will set up the environment for the core (SweRV for now).

## Contribution

This is a work in progress. We'd like to accept your contributions to this project. 
