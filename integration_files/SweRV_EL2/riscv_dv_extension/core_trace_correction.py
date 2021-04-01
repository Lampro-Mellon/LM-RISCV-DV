
''' Reads the non-blocking load from trace_log_00000000
    Reads the correct value of corresponding 'rd' from 'trace_core_rf_wrenx_00000000'
    Replaces non-blocking load results of 'rd' and writes in 'trace_log'
    Also checks for the intermediate instructions which are executed between load instruction and its result
'''
import fileinput
import os
import re
def nb_post_fix(rtl_log_f,rtl_log,nb_log):

    TIME_RE = \
        re.compile(r"^\s*(?P<time>\d+)")
    RD_RE = \
        re.compile(r"(x(?P<rd>[1-9]\d*)=0x(?P<rd_val>[0-9a-f]+))")
    file_rtl_trace = open(rtl_log,"r")
    file_rf_wrenx = open(nb_log,"r")
    retired_pending_list = []
    tmp_list = []
    mylines1 = file_rtl_trace.readlines()
    mylines2 = file_rf_wrenx.readlines()
    file_rtl_trace.close()
    file_rf_wrenx.close()
    file_rtl_trace_new = open (rtl_log_f,"wt")
    trace_line_count = 0
    rf_line_count = 1
    in_between_instr = 0
    for m in range (trace_line_count,len(mylines1)):
        trace_line = mylines1[m].strip()
        trace_time_match = TIME_RE.search(trace_line)
        trace_rd_match = RD_RE.search(trace_line)
        if trace_rd_match is None or trace_time_match is None:
            no_rd_instr = "%s\n"%(trace_line)
            file_rtl_trace_new.write(no_rd_instr)
            continue
        else:
            trace_line_count = trace_line_count + 1
            trace_time = int(trace_time_match.group("time"))
            trace_rd_addr = trace_rd_match.group("rd")
            trace_rd_val = trace_rd_match.group("rd_val")
        for n in range (rf_line_count, len(mylines2)):
            rf_line = mylines2[n].strip()
            rf_time_match = TIME_RE.search(rf_line)
            rf_rd_match = RD_RE.search(rf_line)
            if rf_rd_match is None or rf_time_match is None:
                continue
            else:
                rf_time = int(rf_time_match.group("time"))
                rf_rd_addr = rf_rd_match.group("rd")
                rf_rd_val = rf_rd_match.group("rd_val")
            if rf_time == trace_time and rf_rd_addr == trace_rd_addr and rf_rd_val == trace_rd_val:
                rf_line_count = rf_line_count + 1
                correct_line = "%s\n"%(trace_line)
                file_rtl_trace_new.write(correct_line)
                break
            else:
                for x in range(rf_line_count, len(mylines2)):
                    tmp_rf_line = mylines2[x].strip()
                    tmp_rf_time_match = TIME_RE.search(tmp_rf_line)
                    tmp_rf_rd_match = RD_RE.search(tmp_rf_line)
                    if tmp_rf_rd_match is None or tmp_rf_time_match is None:
                        continue
                    else:
                        tmp_rf_time = int(tmp_rf_time_match.group("time"))
                        tmp_rf_rd_addr = tmp_rf_rd_match.group("rd")
                        tmp_rf_rd_val = tmp_rf_rd_match.group("rd_val")
                        if tmp_rf_time in retired_pending_list:
                            continue
                        elif (trace_rd_addr == tmp_rf_rd_addr):
                            retired_pending_list.append(tmp_rf_time)
                            replaced_line = "%s\n"%(trace_line.replace(trace_rd_val,tmp_rf_rd_val))
                            tmp_list.append(replaced_line)
                            if in_between_instr == 0:
                                rf_line_count = rf_line_count + len(retired_pending_list)
                                retired_pending_list = []
                            break
                        else:
                            in_between_instr = in_between_instr + 1
                file_rtl_trace_new.write(replaced_line)
            break
    file_rtl_trace_new.close()

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--rtl_log_f",
                        help="Output core simulation log post-fixed (default: stdout)",
                        type=argparse.FileType('w'),
                        default=sys.stdout)
    parser.add_argument("--nb_log",
                        help="Input core simulation log (default: stdin)",
                        type=argparse.FileType('r'),
                        default=sys.stdin)
    parser.add_argument("--rtl_log",
                        help="Input core simulation log (default: stdin)",
                        type=argparse.FileType('r'),
                        default=sys.stdin)

    args = parser.parse_args()

    print("Post-fix log for nonblock load values\n")
    nb_post_fix(args.rtl_log_f, args.rtl_log, args.nb_log)



if __name__ == "__main__":
    main()
