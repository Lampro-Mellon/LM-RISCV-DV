# RISC-V 5-stage Pipelined Core
### Designed by Muhammad Hadir Khan
\
\
![alt text](https://github.com/merledu/5-stage-Pipelined-CPU/blob/master/Pipeline.png)
\
\
First of all get started by cloning this repository on your machine.  
```ruby
git clone https://github.com/merledu/5-stage-Pipelined-CPU.git
```
Create a .txt file and place the ***hexadecimal*** code of your instructions simulated on ***Venus*** (RISC-V Simulator)\
Each instruction's hexadecimal code must be on seperate line as following. This program consists of 9 instructions.
```
00500113
00500193
014000EF
00120293
00502023
00002303
00628663
00310233
00008067
```
Then perform the following step
```ruby
cd 5-stage-Pipelined-CPU/RV32i/src/main/scala/datapath
```
Open **InstructionMem.scala** with this command. You can also manually go into the above path and open the file in your favorite text editor.
```ruby
open InstructionMem.scala
```
Find the following line
``` python
loadMemoryFromFile(mem, "/Users/mbp/Desktop/mem1.txt")
```
Change the .txt file path to match your file that you created above storing your own program instructions.\
After setting up the InstructionMem.scala file, go inside the RV32i folder.
```ruby
cd 5-stage-Pipelined-CPU/RV32i
```
And enter
```ruby
sbt
```
When the terminal changes to this type
```ruby
sbt:RV32i>
```
Enter this command
```ruby
sbt:RV32i> test:runMain datapath.Launcher Top
```
After you get success
```ruby
sbt:RV32i> test:runMain datapath.Launcher Top --backend-name verilator
```
After success you will get a folder ***test_run_dir*** on root of your folder. Go into the examples folder inside.\
There you will find the folder named Top. Enter in it and you can find the Top.vcd file which you visualise on **gtkwave** to\
see your program running.
