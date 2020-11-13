import fileinput
import os
############################################################

fin = open ("/home/k2/saqibsaeed/rough/riscv_arithmetic_basic_test_0.S","rt")
fout = open("/home/k2/saqibsaeed/rough/riscv_arithmetic_basic_test_spike_0.S", "wt")
do_write = True
for line in fin:
  if do_write:
    fout.write(line)

  if "test_done:" in line:
    do_write = False
    continue
  
  if (not do_write and "li gp, 1" in line):
    do_write = True
    fout.write(line)

fin.close()
fout.close()
############################################