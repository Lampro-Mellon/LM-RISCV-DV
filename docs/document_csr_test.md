# Control and Status registers (CSRs)
CSRs contain the working state of a RISC-V machine. Some of the CSRs are used to store machine specifications like `VENDORID`, `ISA`, etc., while others are used for `interrupts`, `exceptions`, and `debugging`. CSRs are different from normal registers in a sense that a bit field in a CSR can be `only readable`, `readable and writeable`, `write any read legal` (anything can be written but only legal values are read) or `write legal read legal` while normal registers and memory locations are `readable and writeable`, details of RISCV implemented CSRs can be found [here](https://riscv.org//wp-content/uploads/2017/05/riscv-privileged-v1.10.pdf).

# RISCV-DV CSR test generation 
In this section, we'll discuss the files needed for the CSR test and [changes](###Changes) made for a successful run of the test. 

RISCV-DV uses following files for CSR test.
1. [csr_template.yaml](###csr_template.yaml)
2. [gen_csr_test.py](###gen_csr_test.py) 
## csr_template.yaml
CSRs under test are written in `csr_template.yaml`, following informations are provided for each each CSR. This file needs to be updated for each core according to CSRs implementation.

1. [Name](###Name)
2. [Description](###Description)
3. [Address](###Address)
4. [Previlege mode](###Previlege-mode)
5. [ISA](###ISA)
### Name 
The name of the CSR is given in the `csr` field.
### Description
The `Description` field describes the purpose of CSR.
### Address
The `Address` field gives the address of the CSR where data will be written to and read from.
### Previlige mode
The `Previlege mode` field tells the mode in which the CSR test is being run.
### ISA
This field tells whether the ISA is `rv32` or `rv64`. It is further divided into one or more bit fields, where each bit field is represented by `field name` which tells the name of that bit field, the `description` which describes the purpose of the bit field, the `type` which tells  the permission of read/write for the bit field, `reset value`, `msb` which tells the bit number of the most significant bit of the bit field and `lsb` which tells the bit number of least significant bit.  

## gen_csr_test.py
It generates a self-checking test. The main blocks of the code serve the following purposes:
1. `rs1` value generation which is written to the CSR.
2. Reading the value in a general-purpose register.
3. Predicting the value which will be read from `core's CSR`. This value is predicted based on the `write` and `read` masks defined in `csr_template.yaml`.
4. Comparing the predicted value with the read value.
5. An instruction generator block which calls the above-mentioned functions in order.
## Changes
Changes were made in both in-use files, `csr_template.yaml` was filled taking into account the CSR implementation of `SweRV EH1` while the following code blocks were changed in `gen_csr_test.py`:
1. [Prediction function](###Prediction-function)
2. [End of test behaviour](###End-of-test-behaviour)
### Prediction function
Some bits in WARL permission in CSRs can be `one` when upper bits are `zero` but setting these bits is illegal when upper bits are high. Example CSRs for `SweRV EH1` are event selector CSRs `mhpmeventx` which can take a maximum value of `0x32` or `0'b110010`, thus when bit no. 4-5 are `one` bit no. 3,4 must be `zero`. The prediction function given in the original file checks the field type and writes the given value to the complete bit field if the field is not `read-only`, so we needed to update the prediction function for the above-mentioned CSRs.
### End of test behaviour
The test was going to a timeout because both the pass and fail behaviours were stuck in an infinite loop, we updated end behaviour according to SweRV EH1 testbench.
