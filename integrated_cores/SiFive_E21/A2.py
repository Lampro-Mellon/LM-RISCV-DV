import re
import os
import sys

# from riscv_trace_csv import (RiscvInstructionTraceCsv,RiscvInstructionTraceEntry)


_CORE_ROOT = os.path.normpath(os.path.join(os.path.dirname(__file__),
                                           '../'))
_DV_SCRIPTS = os.path.join(_CORE_ROOT, '../google_riscv_dv/scripts')
print(_CORE_ROOT)
print(_DV_SCRIPTS)
_OLD_SYS_PATH = sys.path

# Import riscv_trace_csv and lib from _DV_SCRIPTS before putting sys.path back
# as it started.
try:
    sys.path.insert(0, _DV_SCRIPTS)

    from riscv_trace_csv import (RiscvInstructionTraceCsv,
                                 RiscvInstructionTraceEntry)
                                     # from lib import RET_FATAL, gpr_to_abi, sint_to_hex
    # import logging

finally:
    sys.path = _OLD_SYS_PATH


def trace_log(raw_trace_log,dump, rtl_log):

    #open and read file to read from (F1), file to match to (F2)
    F1 = open( raw_rtl_log, "r") #File_1 is original file, has 2 columns
    F2 = open( dump, "r") #.dump file

    INSTR_RE_trace = re.compile(r"^\s*(?P<time>\d+)\s+(?P<cycle>\d+)\s+(?P<pc>[0-9a-f]+)\s+" r"(?P<bin>[0-9a-f]+)\s*(?P<rd>x\d{1,2}=0x[0-9a-f]+)\s+(?P<rs1>x\d{1,2}:0x[0-9a-f]+)\s+(?P<rs2>x\d{1,2}:0x[0-9a-f]+)\s+")
    INSTR_RE_dump = re.compile(r"^(?P<pc>[0-9a-f]+):\s*(?P<bin>[0-9a-f]+)\s+(?P<instr>(?:\S+$|\S+\s+\S+)\s*?)")

    trace_entry_1 = None
    trace_entry_2 = None
    trace_entry_1 = RiscvInstructionTraceEntry()
    trace_entry_2 = RiscvInstructionTraceEntry()
    instr_cnt_1 = 0
    instr_cnt_2 = 0
    f = open("Trace.log", "w")
    f.write("Time\t\tCycle\t\tPC\t\t\tInsn\t\t\tDecoded_Insn\t\t\tzzzzz\t\t\t\tRegister_Contents\n")
    f.close()
    for trace_line in F1:
        # Extract instruction information   
        instr_cnt_1 += 1
        m = INSTR_RE_trace.search(trace_line)  
        if m:
            trace_entry_1.pc = m.group("pc")
            trace_entry_1.binary = m.group("bin")
            trace_entry_1.time = m.group("time")
            trace_entry_1.cycle = m.group("cycle")
            trace_entry_1.rd = m.group("rd")
            trace_entry_1.rs1 = m.group("rs1")
            trace_entry_1.rs2 = m.group("rs2")
            F2 = open(dump, "r")
        for dump_line in F2:
            # Extract instruction information     
            instr_cnt_2 += 1
            n = INSTR_RE_dump.search(dump_line)
            if n:
                trace_entry_2.instr_str = n.group("instr")
                trace_entry_2.pc = n.group("pc")
                trace_entry_2.binary = n.group("bin")
                counter = 0
                if (trace_entry_1.pc == trace_entry_2.pc and trace_entry_1.binary == trace_entry_2.binary):
                    f = open(rtl_log, "a")
                    a = "{0}\t\t{1}\t\t{2}\t\t{3}\t\t{4}\t\t{5}\t{6}\t{7}\n"
                    f.write(a.format(trace_entry_1.time,trace_entry_1.cycle,trace_entry_1.pc, trace_entry_1.binary, trace_entry_2.instr_str, trace_entry_1.rs1, trace_entry_1.rs2, trace_entry_1.rd))
                elif (trace_entry_1.pc == trace_entry_2.pc and trace_entry_1.binary != trace_entry_2.binary):
                    if (trace_entry_1.binary[4:8] == trace_entry_2.binary):
                        f = open(rtl_log, "a")
                        a = "{0}\t\t{1}\t\t{2}\t\t{3}\t\t{4}\t\t\t{5}\t{6}\t{7}\n"
                        f.write(a.format(trace_entry_1.time,trace_entry_1.cycle,trace_entry_1.pc, trace_entry_1.binary, trace_entry_2.instr_str, trace_entry_1.rs1, trace_entry_1.rs2, trace_entry_1.rd))
                        break
            #         else:
            #             print("dumy:", trace_entry_1.binary[4:7])
            # else: 
            #     print("dump:", dump_line.strip())