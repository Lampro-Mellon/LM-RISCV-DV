# Jumps, Branches and Loop Tests
RISC-V DV creates random test with jumps, branches and loop instructions with constrained randomization. Constrained randomization allows random test generation without falling in infinite loops scenarios. 

Follow the steps given below for jumps, branches and loop tests.
## Testlist Update
Use base testlist in `google_riscv_dv` to populate the testlist in `riscv_dv_extension/testlist.yaml`.

Include the following tests for jumps, branches and loop testing.
1. riscv_jump_stress_test
2. riscv_loop_test
3. riscv_rand_jump_test

## Setting up the Environment

For `riscv_jump_stress_test` and `riscv_loop_test`, nothing needs to be changed to set up the environment, however, for `riscv_rand_jump_test`, follow the procedure mentioned in load_store_dccm section. To run the test follow the commands given in next section.

## Make Commands
Use the following commands to run the desired test
```
#for random seed
make TEST=<test-name> 
#for fixed seed
make TEST=<test-name> SEED=<fixed_number>
```