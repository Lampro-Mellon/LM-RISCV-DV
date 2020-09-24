# Post-sim Comparison
------

### Intoduction

To compare the ISS and RTL simulation results post-sim comparison is used.
Python scripts are used for post-sim comparison. Comparing all the tests as specified by the iterations (no. of tests) the results are generated.
For Post-sim the log files from ISS and trace afre taken and converted into csv files using coresponding log to csv python scripts.

### Working Flow

***Post_compare*** make target in **makefile** uses ***compare*** function in sim.py which in turn uses ***compare_trace_csv*** function from the **instr_trace_compare.py** python script for this comparison. This can be visualized from the following flow diagram.


<p align="center">
  <img width="360" height="450" src="img/Post_compare.jpg" >
</p><div align='center'> <b><i>Figure-1</i>: <i>Post-sim Flow</i></b> </div> 
 
<p></p>

<p></p>

**instr_trace_compare.py** script compares both the csv files as:
- It takes data from Spike csv, stores in a list and then compares it with the core csv.
- Taking Spike csv as a standard it compares its **rd** values with the corresponding core csv **rd** values.
- It checks the *GPR* (rd values) update between both the trace csv files.
- In case of mismatched GPR update, the test fails.

#### Output File

A regression log (**regr.log**) file is generated which shows the result of post-sim comparison. It shows the passed tests or in failed test cases it shows the instructions on which those tests failed.
It can be seen in the following figure that  ***riscv_rand_instr_test.1***  passed but  ***riscv_rand_instr_test.0*** failed. So the **regr.log** shows the respective mismatch cases for **riscv_rand_instr_test.0.o**.

<p align="center">
  <img width="660" height="350" src="img/post_sim.png">
</p><div align='center'> <b><i>Figure-2</i>: <i>regr.log</i></b> </div>


