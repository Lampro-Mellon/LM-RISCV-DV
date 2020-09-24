# Post-sim Comparison
------

### Introduction

Post-sim is used to compare the Spike ISS and RTL simulation results.
Python scripts are used for this comparison. Comparing all the tests as specified by the iterations (no. of tests) the results are generated.
For Post-sim the log files from Spike ISS and trace are taken and converted into CSV files using coresponding log to CSV python scripts.

### Working Flow

Spike ISS log and core trace log are used to generate the respective CSV files. Using Spike ISS log ***spike_log_to_trace_CSV.py*** python script generates Spike ISS CSV and using core trace log ***core_log_to_trace_CSV.py*** python script generates trace CSV. Then the ***post_compare*** target in **Makefile** uses the ***compare*** function in sim.py which in turn uses ***compare_trace_CSV*** function from the **instr_trace_compare.py** python script for comparing the generated CSV files. This can be visualized from the following flow diagram.


<p align="center">
  <img width="560" height="450" src="img/Post_compare.png" >
</p><div align='center'> <b><i>Figure-1</i>: <i>Post-sim Flow</i></b> </div> 
 
<p></p>

<p></p>

**instr_trace_compare.py** script compares both the CSV files as:
- It takes data from Spike CSV, stores in a list and then compares it with the core CSV.
- Taking Spike CSV as a standard it compares its **rd** values with the corresponding core CSV **rd** values.
- It checks the *GPR* (rd values) update between both the trace CSV files.
- In case of mismatched GPR update, the test fails.

#### Output File

A regression log (**regr.log**) file is generated which shows the result of post-sim comparison. It shows the passed tests or in failed test cases it shows the instructions on which those tests failed.
It can be seen in the following figure that  ***riscv_rand_instr_test.1***  passed but  ***riscv_rand_instr_test.0*** failed. So the **regr.log** shows the respective mismatch cases for **riscv_rand_instr_test.0.o**.

<p align="center">
  <img width="660" height="350" src="img/post_sim.png">
</p><div align='center'> <b><i>Figure-2</i>: <i>regr.log</i></b> </div>


