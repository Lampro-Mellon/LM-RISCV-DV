"""
Copyright 2019 Google LLC
Copyright 2020 Lampro Mellon

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Regression script for RISC-V random instruction generator
"""

import argparse
import os
import random
import re
import sys
import logging

from scripts.lib import *
from scripts.spike_log_to_trace_csv import *
from scripts.ovpsim_log_to_trace_csv import *
from scripts.whisper_log_trace_csv import *
from scripts.sail_log_to_trace_csv import *
from scripts.instr_trace_compare import *

from types import SimpleNamespace
from pathlib import Path
LOGGER = logging.getLogger()


class SeedGen:
  '''An object that will generate a pseudo-random seed for test iterations'''
  def __init__(self, start_seed, fixed_seed, seed_yaml):
    # These checks are performed with proper error messages at argument parsing
    # time, but it can't hurt to do a belt-and-braces check here too.
    assert fixed_seed is None or start_seed is None

    self.fixed_seed = fixed_seed
    self.start_seed = start_seed
    self.rerun_seed = {} if seed_yaml is None else read_yaml(seed_yaml)

  def get(self, test_id, test_iter):
    '''Get the seed to use for the given test and iteration'''

    if test_id in self.rerun_seed:
      # Note that test_id includes the iteration index (well, the batch index,
      # at any rate), so this makes sense even if test_iter > 0.
      return self.rerun_seed[test_id]

    if self.fixed_seed is not None:
      # Checked at argument parsing time
      assert test_iter == 0
      return self.fixed_seed

    if self.start_seed is not None:
      return self.start_seed + test_iter

    # If the user didn't specify seeds in some way, we generate a random seed
    # every time
    return random.getrandbits(31)


def get_generator_cmd(simulator, simulator_yaml, cov, exp, debug_cmd):
  """ Setup the compile and simulation command for the generator

  Args:
    simulator      : RTL simulator used to run instruction generator
    simulator_yaml : RTL simulator configuration file in YAML format
    cov            : Enable functional coverage
    exp            : Use experimental version
    debug_cmd      : Produce the debug cmd log without running

  Returns:
    compile_cmd    : RTL simulator command to compile the instruction generator
    sim_cmd        : RTL simulator command to run the instruction generator
  """
  logging.info("Processing simulator setup file : %s" % simulator_yaml)
  yaml_data = read_yaml(simulator_yaml)
  # Search for matched simulator
  for entry in yaml_data:
    if entry['tool'] == simulator:
      logging.info("Found matching simulator: %s" % entry['tool'])
      compile_spec = entry['compile']
      compile_cmd = compile_spec['cmd']
      for i in range(len(compile_cmd)):
        if ('cov_opts' in compile_spec) and cov:
          compile_cmd[i] = re.sub('<cov_opts>', compile_spec['cov_opts'].rstrip(), compile_cmd[i])
        else:
          compile_cmd[i] = re.sub('<cov_opts>', '', compile_cmd[i])
        if exp:
          compile_cmd[i] += " +define+EXPERIMENTAL "
      sim_cmd = entry['sim']['cmd']
      if ('cov_opts' in entry['sim']) and cov:
        sim_cmd = re.sub('<cov_opts>', entry['sim']['cov_opts'].rstrip(), sim_cmd)
      else:
        sim_cmd = re.sub('<cov_opts>', '', sim_cmd)
      if 'env_var' in entry:
        for env_var in entry['env_var'].split(','):
          for i in range(len(compile_cmd)):
            compile_cmd[i] = re.sub("<"+env_var+">", get_env_var(env_var, debug_cmd = debug_cmd),
                                    compile_cmd[i])
          sim_cmd = re.sub("<"+env_var+">", get_env_var(env_var, debug_cmd = debug_cmd), sim_cmd)
      return compile_cmd, sim_cmd
  logging.error("Cannot find RTL simulator %0s" % simulator)
  sys.exit(RET_FAIL)


def parse_iss_yaml(iss, iss_yaml, isa, setting_dir, debug_cmd):
  """Parse ISS YAML to get the simulation command

  Args:
    iss         : target ISS used to look up in ISS YAML
    iss_yaml    : ISS configuration file in YAML format
    isa         : ISA variant passed to the ISS
    setting_dir : Generator setting directory
    debug_cmd   : Produce the debug cmd log without running

  Returns:
    cmd         : ISS run command
  """
  logging.info("Processing ISS setup file : %s" % iss_yaml)
  yaml_data = read_yaml(iss_yaml)
  # Search for matched ISS
  for entry in yaml_data:
    if entry['iss'] == iss:
      logging.info("Found matching ISS: %s" % entry['iss'])
      cmd = entry['cmd'].rstrip()
      cmd = re.sub("\<path_var\>", get_env_var(entry['path_var'], debug_cmd = debug_cmd), cmd)
      m = re.search(r"rv(?P<xlen>[0-9]+?)(?P<variant>[a-z]+?)$", isa)
      if m:
        cmd = re.sub("\<xlen\>", m.group('xlen'), cmd)
      else:
        logging.error("Illegal ISA %0s" % isa)
      if iss == "ovpsim":
        cmd = re.sub("\<cfg_path\>", setting_dir, cmd)
      elif iss == "whisper":
        if m:
          # TODO: Support u/s mode
          variant = re.sub('g', 'imafd',  m.group('variant'))
          cmd = re.sub("\<variant\>", variant, cmd)
      else:
        cmd = re.sub("\<variant\>", isa, cmd)
      return cmd
  logging.error("Cannot find ISS %0s" % iss)
  sys.exit(RET_FAIL)


def get_iss_cmd(base_cmd, elf, log):
  """Get the ISS simulation command

  Args:
    base_cmd : Original command template
    elf      : ELF file to run ISS simualtion
    log      : ISS simulation log name

  Returns:
    cmd      : Command for ISS simulation
  """
  cmd = re.sub("\<elf\>", elf, base_cmd)
  cmd += (" &> %s" % log)
  return cmd


def do_compile(compile_cmd, test_list, core_setting_dir, cwd, ext_dir,
               cmp_opts, output_dir, debug_cmd, lsf_cmd):
  """Compile the instruction generator

  Args:
    compile_cmd         : Compile command for the generator
    test_list           : List of assembly programs to be compiled
    core_setting_dir    : Path for riscv_core_setting.sv
    cwd                 : Filesystem path to RISCV-DV repo
    ext_dir             : User extension directory
    cmd_opts            : Compile options for the generator
    output_dir          : Output directory of the ELF files
    debug_cmd           : Produce the debug cmd log without running
    lsf_cmd             : LSF command used to run the instruction generator
  """
  if (not((len(test_list) == 1) and (test_list[0]['test'] == 'riscv_csr_test'))):
    logging.info("Building RISC-V instruction generator")
    for cmd in compile_cmd:
      cmd = re.sub("<out>", os.path.abspath(output_dir), cmd)
      cmd = re.sub("<setting>", core_setting_dir, cmd)
      if ext_dir == "":
        cmd = re.sub("<user_extension>", "<cwd>/user_extension", cmd)
      else:
        cmd = re.sub("<user_extension>", ext_dir, cmd)
      cmd = re.sub("<cwd>", cwd, cmd)
      cmd = re.sub("<cmp_opts>", cmp_opts, cmd)
      if lsf_cmd:
        cmd = lsf_cmd + " " + cmd
        run_parallel_cmd([cmd], debug_cmd = debug_cmd)
      else:
        logging.debug("Compile command: %s" % cmd)
        run_cmd(cmd, debug_cmd = debug_cmd)


def run_csr_test(cmd_list, cwd, csr_file, isa, iterations, lsf_cmd,
                 end_signature_addr, timeout_s, output_dir, debug_cmd):
  """Run CSR test
     It calls a separate python script to generate directed CSR test code,
     located at scripts/gen_csr_test.py.
  """
  cmd = "python3 " + cwd + "/scripts/gen_csr_test.py" + \
        (" --csr_file %s" % csr_file) + \
        (" --xlen %s" % re.search(r"(?P<xlen>[0-9]+)", isa).group("xlen")) + \
        (" --iterations %i" % iterations) + \
        (" --out %s/asm_tests" % output_dir) + \
        (" --end_signature_addr %s" % end_signature_addr)
  if lsf_cmd:
    cmd_list.append(cmd)
  else:
    run_cmd(cmd, timeout_s, debug_cmd = debug_cmd)


def do_simulate(sim_cmd, test_list, cwd, sim_opts, seed_gen, csr_file,
                isa, end_signature_addr, lsf_cmd, timeout_s, log_suffix,
                batch_size, output_dir, verbose, check_return_code, debug_cmd):
  """Run  the instruction generator

  Args:
    sim_cmd               : Simulate command for the generator
    test_list             : List of assembly programs to be compiled
    cwd                   : Filesystem path to RISCV-DV repo
    sim_opts              : Simulation options for the generator
    seed_gen              : A SeedGen seed generator
    csr_file              : YAML file containing description of all CSRs
    isa                   : Processor supported ISA subset
    end_signature_addr    : Address that tests will write pass/fail signature to at end of test
    lsf_cmd               : LSF command used to run the instruction generator
    timeout_s             : Timeout limit in seconds
    log_suffix            : Simulation log file name suffix
    batch_size            : Number of tests to generate per run
    output_dir            : Output directory of the ELF files
    check_return_code     : Check return code of the command
    debug_cmd             : Produce the debug cmd log without running
  """
  cmd_list = []
  sim_cmd = re.sub("<out>", os.path.abspath(output_dir), sim_cmd)
  sim_cmd = re.sub("<cwd>", cwd, sim_cmd)
  sim_cmd = re.sub("<sim_opts>", sim_opts, sim_cmd)

  logging.info("Running RISC-V instruction generator")
  sim_seed = {}
  for test in test_list:
    iterations = test['iterations']
    logging.info("Generating %d %s" % (iterations, test['test']))
    if iterations > 0:
      # Running a CSR test
      if test['test'] == 'riscv_csr_test':
        run_csr_test(cmd_list, cwd, csr_file, isa, iterations, lsf_cmd,
                     end_signature_addr, timeout_s, output_dir, debug_cmd)
      else:
        batch_cnt = 1
        if batch_size > 0:
          batch_cnt = int((iterations + batch_size - 1)  / batch_size);
        logging.info("Running %s with %0d batches" % (test['test'], batch_cnt))
        for i in range(0, batch_cnt):
          test_id = '%0s_%0d' % (test['test'], i)
          rand_seed = seed_gen.get(test_id, i * batch_cnt)
          if i < batch_cnt - 1:
            test_cnt = batch_size
          else:
            test_cnt = iterations - i * batch_size;
          cmd = lsf_cmd + " " + sim_cmd.rstrip() + \
                (" +UVM_TESTNAME=%s " % test['gen_test']) + \
                (" +num_of_tests=%i " % test_cnt) + \
                (" +start_idx=%d " % (i*batch_size)) + \
                (" +asm_file_name=%s/asm_tests/%s " % (output_dir, test['test'])) + \
                (" -l %s/sim_%s_%d%s.log " % (output_dir, test['test'], i, log_suffix))
          if verbose:
            cmd += "+UVM_VERBOSITY=UVM_HIGH "
          cmd = re.sub("<seed>", str(rand_seed), cmd)
          cmd = re.sub("<test_id>", test_id, cmd)
          sim_seed[test_id] = str(rand_seed)
          if "gen_opts" in test:
            cmd += test['gen_opts']
          if not re.search("c", isa):
            cmd += "+disable_compressed_instr=1 ";
          if lsf_cmd:
            cmd_list.append(cmd)
          else:
            logging.info("Running %s, batch %0d/%0d, test_cnt:%0d" %
                         (test['test'], i+1, batch_cnt, test_cnt))
            run_cmd(cmd, timeout_s, check_return_code = check_return_code, debug_cmd = debug_cmd)
  if sim_seed:
    with open(('%s/seed.yaml' % os.path.abspath(output_dir)) , 'w') as outfile:
      yaml.dump(sim_seed, outfile, default_flow_style=False)
  if lsf_cmd:
    run_parallel_cmd(cmd_list, timeout_s, check_return_code = check_return_code,
                     debug_cmd = debug_cmd)


def gen(test_list, argv, output_dir, cwd):
  """Run the instruction generator

  Args:
    test_list             : List of assembly programs to be compiled
    argv                  : Configuration arguments
    output_dir            : Output directory of the ELF files
    cwd                   : Filesystem path to RISCV-DV repo
  """
  check_return_code = True
  if argv.simulator == "ius":
    # Incisive return non-zero return code even test passes
    check_return_code = False
    logging.debug("Disable return_code checking for %s" % argv.simulator)
  # Mutually exclusive options between compile_only and sim_only
  if argv.co and argv.so:
    logging.error("argument -co is not allowed with argument -so")
    return
  if ((argv.co == 0) and (len(test_list) == 0)):
    return
  # Setup the compile and simulation command for the generator
  compile_cmd = []
  sim_cmd = ""
  compile_cmd, sim_cmd = get_generator_cmd(argv.simulator, argv.simulator_yaml, argv.cov,
                                           argv.exp, argv.debug);
  # Compile the instruction generator
  if not argv.so:
    do_compile(compile_cmd, test_list, argv.core_setting_dir, cwd, argv.user_extension_dir,
               argv.cmp_opts, output_dir, argv.debug, argv.lsf_cmd)
  # Run the instruction generator
  if not argv.co:
    seed_gen = SeedGen(argv.start_seed, argv.seed, argv.seed_yaml)
    do_simulate(sim_cmd, test_list, cwd, argv.sim_opts, seed_gen, argv.csr_yaml,
                argv.isa, argv.end_signature_addr, argv.lsf_cmd, argv.gen_timeout, argv.log_suffix,
                argv.batch_size, output_dir, argv.verbose, check_return_code, argv.debug)


def gcc_compile(test_list, output_dir, isa, mabi, opts, gcc_user_extension_path, linker_path, debug_cmd):
  """Use riscv gcc toolchain to compile the assembly program

  Args:
    test_list  				: List of assembly programs to be compiled
    output_dir 				: Output directory of the ELF files
    isa        				: ISA variant passed to GCC
    mabi       				: MABI variant passed to GCC
    gcc_user_extension_path	: Path to user extension directory containing defines files for tests etc
    linker_path				: Path to linker file to be used in compilation
    debug_cmd  				: Produce the debug cmd log without running
  """
  cwd = os.path.dirname(os.path.realpath(__file__))
  for test in test_list:
    for i in range(0, test['iterations']):
      if 'no_gcc' in test and test['no_gcc'] == 1:
        continue
      prefix = ("%s/asm_tests/%s_%d" % (output_dir, test['test'], i))
      asm = prefix + ".S"
      elf = prefix + ".o"
      exe = prefix + ".exe"
      binary = prefix + ".bin"
      dump = prefix + ".dump"
      program_hex = ("%s/asm_tests/program_%s_%d.hex" % (output_dir, test['test'], i))
      test_isa = isa
      if not os.path.isfile(asm) and not debug_cmd:
        logging.error("Cannot find assembly test: %s\n", asm)
        sys.exit(RET_FAIL)
      test_name = test.get('test')
      cust_linker_path = "riscv_dv_extension/linker_scripts/%s.ld" % test_name
      #args.linker_path = "riscv_dv_extension/link.ld"
      if os.path.exists(cust_linker_path):
        cmd = ("%s -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles %s \
              -I%s -T%s %s -o %s" % \
              (get_env_var("RISCV_GCC", debug_cmd = debug_cmd), asm, gcc_user_extension_path, cust_linker_path, opts, elf))
      else:
        cmd = ("%s -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles %s \
              -I%s -T%s %s -o %s" % \
              (get_env_var("RISCV_GCC", debug_cmd = debug_cmd), asm, gcc_user_extension_path, linker_path, opts, elf))
      if 'gcc_opts' in test:
        cmd += test['gcc_opts']
      if 'gen_opts' in test:
        # Disable compressed instruction
        if re.search('disable_compressed_instr', test['gen_opts']):
          test_isa = re.sub("c",  "", test_isa)
      # If march/mabi is not defined in the test gcc_opts, use the default
      # setting from the command line.
      if not re.search('march', cmd):
        cmd += (" -march=%s" % test_isa)
      if not re.search('mabi', cmd):
        cmd += (" -mabi=%s" % mabi)
      logging.info("Compiling %s" % asm)
      run_cmd_output(cmd.split(), debug_cmd = debug_cmd)
      
      # Convert the ELF to plain binary and hex
      # Generating Binary
      cmd = ("%s -O binary %s %s" % (get_env_var("RISCV_OBJCOPY", debug_cmd = debug_cmd), elf, binary))
      run_cmd_output(cmd.split(), debug_cmd = debug_cmd)
      
      # Generating .exe
      if os.path.exists(cust_linker_path):
        cmd = ("%s -m elf32lriscv --discard-none -T%s -o %s %s" % (get_env_var("RISCV_LD", debug_cmd = debug_cmd), cust_linker_path, exe, elf))
      else:
        cmd = ("%s -m elf32lriscv --discard-none -T%s -o %s %s" % (get_env_var("RISCV_LD", debug_cmd = debug_cmd), linker_path, exe, elf))    
      run_cmd_output(cmd.split(), debug_cmd = debug_cmd)
      
      # Generating disassembly dump
      cmd = ('%s --disassemble-all --disassemble-zeroes -M no-aliases --section=.text --section=.data %s > %s' % (get_env_var("RISCV_OBJDUMP", debug_cmd = debug_cmd), elf, dump))
      os.system(cmd)
      
      # Generating Program.hex
      cmd = ('%s -O verilog %s %s' % (get_env_var("RISCV_OBJCOPY", debug_cmd = debug_cmd), exe, program_hex))
      os.system(cmd)

def run_assembly(asm_test, iss_yaml, isa, mabi, gcc_opts, iss_opts, output_dir,
                 gcc_user_extension_path, linker_path, setting_dir, debug_cmd):
  """Run a directed assembly test with ISS

  Args:
    asm_test    			: Assembly test file
    iss_yaml    			: ISS configuration file in YAML format
    isa         			: ISA variant passed to the ISS
    mabi        			: MABI variant passed to GCC
    gcc_opts    			: User-defined options for GCC compilation
    iss_opts    			: Instruction set simulators
    output_dir  			: Output directory of compiled test files
    gcc_user_extension_path	: Path to user extension directory containing defines files for tests etc
    linker_path				: Path to linker file to be used in compilation
    setting_dir 			: Generator setting directory
    debug_cmd   			: Produce the debug cmd log without running
  """
  if not (asm_test.endswith(".S") or asm_test.endswith(".s")):
    logging.error("%s is not an assembly .S or .s file" % asm_test)
    return
  cwd = os.path.dirname(os.path.realpath(__file__))
  asm_test = os.path.expanduser(asm_test)
  # TODO (Haroon): Enable it after setting up spike simulation for directed asm tests
  # report = ("%s/iss_regr.log" % output_dir).rstrip()
  asm = re.sub(r"^.*\/", "", asm_test)
  name_asm = asm.split(".")
  test = name_asm[0]
  if asm_test.endswith(".s"):
  	asm = re.sub(r"\.s$", "", asm)
  else:
  	asm = re.sub(r"\.S$", "", asm)
  prefix = ("%s/directed_asm_tests/%s"  % (output_dir, asm))
  elf = prefix + ".o"
  cpp_s = prefix + ".cpp.s"
  exe = prefix + ".exe"
  binary = prefix + ".bin"
  dump = prefix + ".dump"
  program_hex = ("%s/directed_asm_tests/program_%s.hex"  % (output_dir, asm))
  # TODO (Haroon): Enable it after setting up spike simulation for directed asm tests
  # iss_list = iss_opts.split(",")
  run_cmd("mkdir -p %s/directed_asm_tests" % output_dir)
  logging.info("Compiling assembly test : %s" % asm_test)
  cust_linker_path = Path("directed_tests/c/%s.ld" % test)
  # gcc compilation
  #logging.info("Generating elf")
  if asm_test.endswith(".S"):
    if os.path.exists(cust_linker_path):
  	  cmd = ("%s -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles %s -I%s -T%s %s -o %s " % (get_env_var("RISCV_GCC", debug_cmd = debug_cmd), asm_test,
			        gcc_user_extension_path, cust_linker_path, gcc_opts, elf))
    else:
      cmd = ("%s -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles %s -I%s -T%s %s -o %s " % (get_env_var("RISCV_GCC", debug_cmd = debug_cmd), asm_test,
			        gcc_user_extension_path, linker_path, gcc_opts, elf))
    cmd += (" -march=%s" % isa)
    cmd += (" -mabi=%s" % mabi)
    run_cmd_output(cmd.split(), debug_cmd = debug_cmd)    
  elif asm_test.endswith(".s"):
  #TODO (Najeeb do linked elf gen for spike)
    cmd = ("%s/bin/riscv64-unknown-elf-cpp -I%s %s > %s" % (get_env_var("RISCV_TOOLCHAIN", debug_cmd = debug_cmd), gcc_user_extension_path, asm_test, cpp_s))
    os.system(cmd)
    cmd = ("%s/bin/riscv64-unknown-elf-as -march=%s %s -o %s" % (get_env_var("RISCV_TOOLCHAIN", debug_cmd = debug_cmd), isa, cpp_s, elf))
    os.system(cmd)
    
  # Convert the ELF to plain binary and hex
  # Generating Binary
  cmd = ("%s -O binary %s %s" % (get_env_var("RISCV_OBJCOPY", debug_cmd = debug_cmd), elf, binary))
  run_cmd_output(cmd.split(), debug_cmd = debug_cmd)
  
  # Generating .exe
  if os.path.exists(cust_linker_path):
    cmd = ("%s -m elf32lriscv --discard-none -T%s -o %s %s" % (get_env_var("RISCV_LD", debug_cmd = debug_cmd), cust_linker_path, exe, elf))
  else:
    cmd = ("%s -m elf32lriscv --discard-none -T%s -o %s %s" % (get_env_var("RISCV_LD", debug_cmd = debug_cmd), linker_path, exe, elf))
  run_cmd_output(cmd.split(), debug_cmd = debug_cmd)
  
  # Generating disassembly dump
  cmd = ('%s --disassemble-all --disassemble-zeroes -M no-aliases --section=.text --section=.data %s > %s' % (get_env_var("RISCV_OBJDUMP", debug_cmd = debug_cmd), elf, dump))
  os.system(cmd)
    
  # Generating Program.hex
  cmd = ('%s -O verilog %s %s' % (get_env_var("RISCV_OBJCOPY", debug_cmd = debug_cmd), exe, program_hex))
  os.system(cmd)
    
  # TODO (Haroon): Setup spike simulation for directed asm tests
  
  '''
  log_list = []
  # ISS simulation
  for iss in iss_list:
    run_cmd("mkdir -p %s/%s_sim" % (output_dir, iss))
    log = ("%s/%s_sim/%s.log" % (output_dir, iss, asm))
    log_list.append(log)
    base_cmd = parse_iss_yaml(iss, iss_yaml, isa, setting_dir, debug_cmd)
    logging.info("[%0s] Running ISS simulation: %s" % (iss, elf))
    cmd = get_iss_cmd(base_cmd, elf, log)
    run_cmd(cmd, 10, debug_cmd = debug_cmd)
    logging.info("[%0s] Running ISS simulation: %s ...done" % (iss, elf))
  if len(iss_list) == 2:
    compare_iss_log(iss_list, log_list, report)'''
  


def run_assembly_from_dir(asm_test_dir, iss_yaml, isa, mabi, gcc_opts, iss,
                          output_dir, gcc_user_extension_path, linker_path, setting_dir, debug_cmd):
  """Run a directed assembly test from a directory with spike

  Args:
    asm_test_dir    		: Assembly test file directory
    iss_yaml        		: ISS configuration file in YAML format
    isa             		: ISA variant passed to the ISS
    mabi            		: MABI variant passed to GCC
    gcc_opts        		: User-defined options for GCC compilation
    iss             		: Instruction set simulators
    output_dir      		: Output directory of compiled test files
    gcc_user_extension_path	: Path to user extension directory containing defines files for tests etc
    linker_path				: Path to linker file to be used in compilation
    setting_dir     		: Generator setting directory
    debug_cmd       		: Produce the debug cmd log without running
  """
  # TODO (Haroon): Make it work for both assembly extensions (.s and .S)
  result = run_cmd("find %s -name \"*.S\" -o -name \"*.s\"" % asm_test_dir)
  test_name = test_entry.get('test')
  cust_linker_path = Path("directed_tests/c/%s.ld" % test_name)
  if result:
    asm_list = result.splitlines()
    logging.info("Found %0d assembly tests under %s" %
                 (len(asm_list), asm_test_dir))
    for asm_file in asm_list:
      if os.path.exists(cust_linker_path):
        run_assembly(asm_file, iss_yaml, isa, mabi, gcc_opts, iss, output_dir,
                    gcc_user_extension_path, cust_linker_path, setting_dir, debug_cmd)
      else:
          run_assembly(asm_file, iss_yaml, isa, mabi, gcc_opts, iss, output_dir,
                    gcc_user_extension_path, linker_path, setting_dir, debug_cmd)
      # TODO (Haroon): Enable it after setting up spike simulation for directed asm tests
      # if "," in iss:
      #   report = ("%s/iss_regr.log" % output_dir).rstrip()
      #   save_regr_report(report)
  else:
    logging.error("No assembly test(*.S or *.s) found under %s" % asm_test_dir)


def run_c(c_test, iss_yaml, isa, mabi, gcc_opts, iss_opts, output_dir,
          gcc_user_extension_path, linker_path, setting_dir, debug_cmd):
  """Run a directed c test with ISS

  Args:
    c_test      			: C test file
    iss_yaml    			: ISS configuration file in YAML format
    isa         			: ISA variant passed to the ISS
    mabi        			: MABI variant passed to GCC
    gcc_opts    			: User-defined options for GCC compilation
    iss_opts    			: Instruction set simulators
    output_dir  			: Output directory of compiled test files
    gcc_user_extension_path	: Path to user extension directory containing defines files for tests etc
    linker_path				: Path to linker file to be used in compilation
    setting_dir 			: Generator setting directory
    debug_cmd   			: Produce the debug cmd log without running
  """
  if not c_test.endswith(".c"):
    logging.error("%s is not a .c file" % c_test)
    return
  cwd = os.path.dirname(os.path.realpath(__file__))
  c_test = os.path.expanduser(c_test)
  # TODO (Haroon): Enable it after setting up spike simulation for directed c tests
  # report = ("%s/iss_regr.log" % output_dir).rstrip()
  c = re.sub(r"^.*\/", "", c_test)
  c = re.sub(r"\.c$", "", c)
  name_c = c.split(".")
  test = name_c[0]
  prefix = ("%s/directed_c_tests/%s"  % (output_dir, c))
  elf = prefix + ".o"
  binary = prefix + ".bin"
  exe = prefix + ".exe"
  dump = prefix + ".dump"
  program_hex = ("%s/directed_c_tests/program_%s.hex"  % (output_dir, c))
  cust_linker_path = Path("directed_tests/c/%s.ld" % test)
  # TODO (Haroon): Enable it after setting up spike simulation for directed c tests
  # iss_list = iss_opts.split(",")
  run_cmd("mkdir -p %s/directed_c_tests" % output_dir)
  logging.info("Compiling c test : %s" % c_test)

  # gcc compilation
  #logging.info("Generating elf")
  #TODO(Najeeb do linked elf generation)
  if os.path.exists(cust_linker_path):
    cmd = ("%s -I%s -T%s -nostdlib -nostartfiles %s -march=%s -mabi=%s %s -o %s " % \
          (get_env_var("RISCV_GCC", debug_cmd = debug_cmd), gcc_user_extension_path, cust_linker_path, gcc_opts, isa, mabi, c_test, elf))
  else:
      cmd = ("%s -I%s -T%s -nostdlib -nostartfiles %s -march=%s -mabi=%s %s -o %s " % \
          (get_env_var("RISCV_GCC", debug_cmd = debug_cmd), gcc_user_extension_path, linker_path, gcc_opts, isa, mabi, c_test, elf))
  run_cmd_output(cmd.split(), debug_cmd = debug_cmd)
  
  # Generating Binary
  cmd = ("%s -O binary %s %s" % (get_env_var("RISCV_OBJCOPY", debug_cmd = debug_cmd), elf, binary))
  run_cmd_output(cmd.split(), debug_cmd = debug_cmd)
  
  # Generating .exe
  if os.path.exists(cust_linker_path):
    cmd = ("%s -m elf32lriscv --discard-none -T%s -o %s %s" % (get_env_var("RISCV_LD", debug_cmd = debug_cmd), cust_linker_path, exe, elf))
  else:
    cmd = ("%s -m elf32lriscv --discard-none -T%s -o %s %s" % (get_env_var("RISCV_LD", debug_cmd = debug_cmd), linker_path, exe, elf))
  run_cmd_output(cmd.split(), debug_cmd = debug_cmd)
  
  # Generating disassembly dump
  cmd = ('%s --disassemble-all --disassemble-zeroes -M no-aliases --section=.text --section=.data %s > %s' % (get_env_var("RISCV_OBJDUMP", debug_cmd = debug_cmd), elf, dump))
  os.system(cmd)
    
  # Generating Program.hex
  cmd = ('%s -O verilog %s %s' % (get_env_var("RISCV_OBJCOPY", debug_cmd = debug_cmd), exe, program_hex))
  os.system(cmd)
  
  # TODO (Haroon): Setup spike simulation for directed c tests
  
  '''
  log_list = []
  # ISS simulation
  for iss in iss_list:
    run_cmd("mkdir -p %s/%s_sim" % (output_dir, iss))
    log = ("%s/%s_sim/%s.log" % (output_dir, iss, c))
    log_list.append(log)
    base_cmd = parse_iss_yaml(iss, iss_yaml, isa, setting_dir, debug_cmd)
    logging.info("[%0s] Running ISS simulation: %s" % (iss, elf))
    cmd = get_iss_cmd(base_cmd, elf, log)
    run_cmd(cmd, 10, debug_cmd = debug_cmd)
    logging.info("[%0s] Running ISS simulation: %s ...done" % (iss, elf))
  if len(iss_list) == 2:
    compare_iss_log(iss_list, log_list, report)'''
  

def run_c_from_dir(c_test_dir, iss_yaml, isa, mabi, gcc_opts, iss,
                   output_dir, gcc_user_extension_path, linker_path, setting_dir, debug_cmd):
  """Run a directed c test from a directory with spike

  Args:
    c_test_dir      		: C test file directory
    iss_yaml        		: ISS configuration file in YAML format
    isa             		: ISA variant passed to the ISS
    mabi            		: MABI variant passed to GCC
    gcc_opts        		: User-defined options for GCC compilation
    iss             		: Instruction set simulators
    output_dir      		: Output directory of compiled test files
    gcc_user_extension_path	: Path to user extension directory containing defines files for tests etc
    linker_path				: Path to linker file to be used in compilation    
    setting_dir     		: Generator setting directory
    debug_cmd       		: Produce the debug cmd log without running
  """
  result = run_cmd("find %s -name \"*.c\"" % c_test_dir)
  test_name = test.get('test')
  cust_linker_path = "riscv_dv_extension/linker_scripts/%s.ld" % test_name
  if result:
    c_list = result.splitlines()
    logging.info("Found %0d c tests under %s" %
                 (len(c_list), c_test_dir))
    for c_file in c_list:
      run_c(c_file, iss_yaml, isa, mabi, gcc_opts, iss, output_dir,
            setting_dir, debug_cmd)
      # TODO (Haroon): Enable it after setting up spike simulation for directed c tests
      if "," in iss:
        report = ("%s/iss_regr.log" % output_dir).rstrip()
        save_regr_report(report)
  else:
    logging.error("No c test(*.c) found under %s" % c_test_dir)


def iss_sim(test_list, output_dir, iss_list, iss_yaml, iss_opts,
            isa, setting_dir, timeout_s, debug_cmd):
  """Run ISS simulation with the generated test program

  Args:
    test_list   : List of assembly programs to be compiled
    output_dir  : Output directory of the ELF files
    iss_list    : List of instruction set simulators
    iss_yaml    : ISS configuration file in YAML format
    iss_opts    : ISS command line options
    isa         : ISA variant passed to the ISS
    setting_dir : Generator setting directory
    timeout_s   : Timeout limit in seconds
    debug_cmd   : Produce the debug cmd log without running
  """
  for iss in iss_list.split(","):
    log_dir = ("%s/%s_sim" % (output_dir, iss))
    base_cmd = parse_iss_yaml(iss, iss_yaml, isa, setting_dir, debug_cmd)
    logging.info("%s sim log dir: %s" % (iss, log_dir))
    run_cmd_output(["mkdir", "-p", log_dir])
    for test in test_list:
      if 'no_iss' in test and test['no_iss'] == 1:
        continue
      else:
        for i in range(0, test['iterations']):
          if "asm_tests" in test.keys():
            prefix = ("%s/directed_asm_tests/%s" % (output_dir, test['test']))
          elif "c_tests" in test.keys():
            prefix = ("%s/directed_c_tests/%s" % (output_dir, test['test']))
          else:
            prefix = ("%s/asm_tests/%s_%d" % (output_dir, test['test'], i) )

          # prefix = ("%s/asm_tests/%s_%d" % (output_dir, test['test'], i))
          elf = prefix + ".o"
          log = ("%s/%s.%d.log" % (log_dir, test['test'], i))
          cmd = get_iss_cmd(base_cmd, elf, log)
          if 'iss_opts' in test:
            cmd += ' '
            cmd += test['iss_opts']
          logging.info("Running %s sim: %s" % (iss, elf))
          if iss == "ovpsim":
            run_cmd(cmd, timeout_s, debug_cmd = debug_cmd)
          else:
            run_cmd(cmd, timeout_s, debug_cmd = debug_cmd)
          logging.debug(cmd)


def iss_cmp(test_list, iss, output_dir, stop_on_first_error, exp, debug_cmd):
  """Compare ISS simulation reult

  Args:
    test_list      : List of assembly programs to be compiled
    iss            : List of instruction set simulators
    output_dir     : Output directory of the ELF files
    stop_on_first_error : will end run on first error detected
    exp            : Use experimental version
    debug_cmd      : Produce the debug cmd log without running
  """
  if debug_cmd:
    return
  iss_list = iss.split(",")
  if len(iss_list) != 2:
    return
  report = ("%s/iss_regr.log" % output_dir).rstrip()
  run_cmd("rm -rf %s" % report)
  for test in test_list:
    for i in range(0, test['iterations']):
      elf = ("%s/asm_tests/%s_%d.o" % (output_dir, test['test'], i))
      logging.info("Comparing ISS sim result %s/%s : %s" %
                  (iss_list[0], iss_list[1], elf))
      log_list = []
      run_cmd(("echo 'Test binary: %s' >> %s" % (elf, report)))
      for iss in iss_list:
        log_list.append("%s/%s_sim/%s.%d.log" % (output_dir, iss, test['test'], i))
      compare_iss_log(iss_list, log_list, report, stop_on_first_error, exp)
  save_regr_report(report)


def compare_iss_log(iss_list, log_list, report, stop_on_first_error=0, exp=False):
  if (len(iss_list) != 2 or len(log_list) != 2) :
    logging.error("Only support comparing two ISS logs")
  else:
    csv_list = []
    for i in range(2):
      log = log_list[i]
      csv = log.replace(".log", ".csv");
      iss = iss_list[i]
      csv_list.append(csv)
      if iss == "spike":
        process_spike_sim_log(log, csv)
      elif iss == "ovpsim":
        process_ovpsim_sim_log(log, csv, stop_on_first_error)
      elif iss == "sail":
        process_sail_sim_log(log, csv)
      elif iss == "whisper":
        process_whisper_sim_log(log, csv)
      else:
        logging.error("Unsupported ISS" % iss)
        sys.exit(RET_FAIL)
    result = compare_trace_csv(csv_list[0], csv_list[1], iss_list[0], iss_list[1], report)
    logging.info(result)


def save_regr_report(report):
  passed_cnt = run_cmd("grep PASSED %s | wc -l" % report).strip()
  failed_cnt = run_cmd("grep FAILED %s | wc -l" % report).strip()
  summary = ("%s PASSED, %s FAILED" % (passed_cnt, failed_cnt))
  logging.info(summary)
  run_cmd(("echo %s >> %s" % (summary, report)))
  logging.info("ISS regression report is saved to %s" % report)


def read_seed(arg):
    '''Read --seed or --seed_start'''
    try:
        seed = int(arg)
        if seed < 0:
            raise ValueError('bad seed')
        return seed

    except ValueError:
        raise argparse.ArgumentTypeError('Bad seed ({}): '
                                         'must be a non-negative integer.'
                                         .format(arg))

def parse_args(cwd):
  """Create a command line parser.

  Returns: The created parser.
  """
  # Parse input arguments
  parser = argparse.ArgumentParser()

  parser.add_argument("--target", type=str, default="rv32imc",
                      help="Run the generator with pre-defined targets: \
                            rv32imc, rv32i, rv64imc, rv64gc")
  parser.add_argument("-o", "--output", type=str,
                      help="Output directory name", dest="o")
  parser.add_argument("-tl", "--testlist", type=str, default="",
                      help="Regression testlist", dest="testlist")
  parser.add_argument("-tn", "--test", type=str, default="all",
                      help="Test name, 'all' means all tests in the list", dest="test")
  parser.add_argument("-i", "--iterations", type=int, default=0,
                      help="Override the iteration count in the test list", dest="iterations")
  parser.add_argument("-si", "--simulator", type=str, default="vcs",
                      help="Simulator used to run the generator, default VCS", dest="simulator")
  parser.add_argument("--iss", type=str, default="spike",
                      help="RISC-V instruction set simulator: spike,ovpsim,sail")
  parser.add_argument("-v", "--verbose", dest="verbose", action="store_true", default=False,
                      help="Verbose logging")
  parser.add_argument("--co", dest="co", action="store_true", default=False,
                      help="Compile the generator only")
  parser.add_argument("--cov", dest="cov", action="store_true", default=False,
                      help="Enable functional coverage")
  parser.add_argument("--so", dest="so", action="store_true", default=False,
                      help="Simulate the generator only")
  parser.add_argument("--cmp_opts", type=str, default="",
                      help="Compile options for the generator")
  parser.add_argument("--sim_opts", type=str, default="",
                      help="Simulation options for the generator")
  parser.add_argument("--gcc_opts", type=str, default="",
                      help="GCC compile options")
  parser.add_argument("-s", "--steps", type=str, default="all",
                      help="Run steps: gen,gcc_compile,iss_sim,iss_cmp", dest="steps")
  parser.add_argument("--lsf_cmd", type=str, default="",
                      help="LSF command. Run in local sequentially if lsf \
                            command is not specified")
  parser.add_argument("--isa", type=str, default="",
                      help="RISC-V ISA subset")
  parser.add_argument("-m", "--mabi", type=str, default="",
                      help="mabi used for compilation", dest="mabi")
  parser.add_argument("--gen_timeout", type=int, default=360,
                      help="Generator timeout limit in seconds")
  parser.add_argument("--end_signature_addr", type=str, default="0",
                      help="Address that privileged CSR test writes to at EOT")
  parser.add_argument("--iss_opts", type=str, default="",
                      help="Any ISS command line arguments")
  parser.add_argument("--iss_timeout", type=int, default=10,
                      help="ISS sim timeout limit in seconds")
  parser.add_argument("--iss_yaml", type=str, default="",
                      help="ISS setting YAML")
  parser.add_argument("--simulator_yaml", type=str, default="",
                      help="RTL simulator setting YAML")
  parser.add_argument("--csr_yaml", type=str, default="",
                      help="CSR description file")
  parser.add_argument("-ct", "--custom_target", type=str, default="",
                      help="Directory name of the custom target")
  parser.add_argument("-cs", "--core_setting_dir", type=str, default="",
                      help="Path for the riscv_core_setting.sv")
  parser.add_argument("-ext", "--user_extension_dir", type=str, default="",
                      help="Path for the user extension directory")
  parser.add_argument("-gcc_ext", "--gcc_user_extension_path", type=str, default="",
                      help="Path for the custom user extension directory")
  parser.add_argument("-lp", "--linker_path", type=str, default="",
  					  help="Linker file Path")
  parser.add_argument("--asm_tests", type=str, default="",
                      help="Directed assembly tests")
  parser.add_argument("--c_tests", type=str, default="",
                      help="Directed c tests")
  parser.add_argument("--log_suffix", type=str, default="",
                      help="Simulation log name suffix")
  parser.add_argument("--exp", action="store_true", default=False,
                      help="Run generator with experimental features")
  parser.add_argument("-bz", "--batch_size", type=int, default=0,
                      help="Number of tests to generate per run. You can split a big"
                           " job to small batches with this option")
  parser.add_argument("--stop_on_first_error", dest="stop_on_first_error",
                      action="store_true", default=False,
                      help="Stop on detecting first error")
  parser.add_argument("--noclean", action="store_true", default=True,
                      help="Do not clean the output of the previous runs")
  parser.add_argument("--verilog_style_check", action="store_true", default=False,
                      help="Run verilog style check")
  parser.add_argument("-d", "--debug", type=str, default="",
                      help="Generate debug command log file")

  rsg = parser.add_argument_group('Random seeds',
                                  'To control random seeds, use at most one '
                                  'of the --start_seed, --seed or --seed_yaml '
                                  'arguments. Since the latter two only give '
                                  'a single seed for each test, they imply '
                                  '--iterations=1.')

  rsg.add_argument("--start_seed", type=read_seed,
                   help=("Randomization seed to use for first iteration of "
                         "each test. Subsequent iterations use seeds "
                         "counting up from there. Cannot be used with "
                         "--seed or --seed_yaml."))
  rsg.add_argument("--seed", type=read_seed,
                   help=("Randomization seed to use for each test. "
                         "Implies --iterations=1. Cannot be used with "
                         "--start_seed or --seed_yaml."))
  rsg.add_argument("--seed_yaml", type=str,
                   help=("Rerun the generator with the seed specification "
                         "from a prior regression. Implies --iterations=1. "
                         "Cannot be used with --start_seed or --seed."))

  args = parser.parse_args()

  if args.seed is not None and args.start_seed is not None:
    logging.error('--start_seed and --seed are mutually exclusive.')
    sys.exit(RET_FAIL)

  if args.seed is not None:
    if args.iterations == 0:
      args.iterations = 1
    elif args.iterations > 1:
      logging.error('--seed is incompatible with setting --iterations '
                    'greater than 1.')
      sys.exit(RET_FAIL)

  # We've parsed all the arguments from the command line; default values
  # can be set in the config file. Read that here.
  load_config(args, cwd)

  return args


def load_config(args, cwd):
  """
  Load configuration from the command line and the configuration file.
  Args:
      args:   Parsed command-line configuration
  Returns:
      Loaded configuration dictionary.
  """
  if not args.linker_path:
  	args.linker_path = cwd + '/scripts/link.ld'
  if not args.gcc_user_extension_path:
  	args.gcc_user_extension_path = cwd + '/user_extension/'
  
  if args.debug:
    args.debug = open(args.debug, "w")
  if not args.csr_yaml:
    args.csr_yaml = cwd + "/yaml/csr_template.yaml"

  if not args.iss_yaml:
    args.iss_yaml = cwd + "/yaml/iss.yaml"

  if not args.simulator_yaml:
    args.simulator_yaml = cwd + "/yaml/simulator.yaml"

  # Keep the core_setting_dir option to be backward compatible, suggest to use
  # --custom_target
  if args.core_setting_dir:
    if not args.custom_target:
      args.custom_target = args.core_setting_dir
  else:
    args.core_setting_dir = args.custom_target

  if not args.custom_target:
    if not args.testlist:
      args.testlist = cwd + "/target/"+ args.target +"/testlist.yaml"
    args.core_setting_dir = cwd + "/target/"+ args.target
    if args.target == "rv32imc":
      args.mabi = "ilp32"
      args.isa  = "rv32imc"
    elif args.target == "multi_harts":
      args.mabi = "ilp32"
      args.isa  = "rv32gc"
    elif args.target == "rv32imcb":
      args.mabi = "ilp32"
      args.isa  = "rv32imcb"
    elif args.target == "rv32i":
      args.mabi = "ilp32"
      args.isa  = "rv32i"
    elif args.target == "rv64imc":
      args.mabi = "lp64"
      args.isa  = "rv64imc"
    elif args.target == "rv64imcb":
      args.mabi = "lp64"
      args.isa  = "rv64imcb"
    elif args.target == "rv64gc":
      args.mabi = "lp64"
      args.isa  = "rv64gc"
    elif args.target == "rv64gcv":
      args.mabi = "lp64"
      args.isa  = "rv64gcv"
    elif args.target == "ml":
      args.mabi = "lp64"
      args.isa  = "rv64imc"
    else:
      sys.exit("Unsupported pre-defined target: %0s" % args.target)
  else:
    if re.match(".*gcc_compile.*", args.steps) or re.match(".*iss_sim.*", args.steps):
      if (not args.mabi) or (not args.isa):
        sys.exit("mabi and isa must be specified for custom target %0s" % args.custom_target)
    if not args.testlist:
      args.testlist = args.custom_target + "/testlist.yaml"


def main():
  """This is the main entry point."""
  try:
    cwd = os.path.dirname(os.path.realpath(__file__))
    os.environ["RISCV_DV_ROOT"] = cwd

    args = parse_args(cwd)
    setup_logging(args.verbose)

    # Create output directory
    output_dir = create_output(args.o, args.noclean)

    if args.verilog_style_check:
      logging.debug("Run style check")
      style_err = run_cmd("verilog_style/run.sh")
      if style_err: logging.info("Found style error: \nERROR: " + style_err)

    # Run any handcoded/directed assembly tests specified by args.asm_tests
    if args.asm_tests != "":
      asm_test = args.asm_tests.split(',')
      for path_asm_test in asm_test:
        full_path = os.path.expanduser(path_asm_test)
        # path_asm_test is a directory
        if os.path.isdir(full_path):
          run_assembly_from_dir(full_path, args.iss_yaml, args.isa, args.mabi,
                                args.gcc_opts, args.iss, output_dir, args.gcc_user_extension_path, args.linker_path, 
                                args.core_setting_dir, args.debug)
        # path_asm_test is an assembly file
        elif os.path.isfile(full_path) or args.debug:
          run_assembly(full_path, args.iss_yaml, args.isa, args.mabi, args.gcc_opts,
                       args.iss, output_dir, args.gcc_user_extension_path, args.linker_path, args.core_setting_dir, args.debug)
        else:
          logging.error('%s does not exist' % full_path)
          sys.exit(RET_FAIL)
      return

    # Run any handcoded/directed c tests specified by args.c_tests
    if args.c_tests != "":
      c_test = args.c_tests.split(',')
      for path_c_test in c_test:
        full_path = os.path.expanduser(path_c_test)
        # path_c_test is a directory
        if os.path.isdir(full_path):
          run_c_from_dir(full_path, args.iss_yaml, args.isa, args.mabi,
                         args.gcc_opts, args.iss, output_dir, args.gcc_user_extension_path, args.linker_path,
                         args.core_setting_dir, args.debug)
        # path_c_test is a c file
        elif os.path.isfile(full_path) or args.debug:
          run_c(full_path, args.iss_yaml, args.isa, args.mabi, args.gcc_opts,
                args.iss, output_dir, args.gcc_user_extension_path, args.linker_path, args.core_setting_dir, args.debug)
        else:
          logging.error('%s does not exist' % full_path)
          sys.exit(RET_FAIL)
      return

    run_cmd_output(["mkdir", "-p", ("%s/asm_tests" % output_dir)])
    # Process regression test list
    matched_list = []
    all_matched_list = []
    # Any tests in the YAML test list that specify a directed assembly test
    asm_directed_list = []
    # Any tests in the YAML test list that specify a directed c test
    c_directed_list = []

    if not args.co:
      process_regression_list(args.testlist, args.test, args.iterations, matched_list, cwd)
      all_matched_list = matched_list.copy()
      for t in list(matched_list):
        # Check mutual exclusive between gen_test, asm_tests, and c_tests
        if 'asm_tests' in t:
          if 'gen_test' in t or 'c_tests' in t:
            logging.error('asm_tests must not be defined in the testlist '
                          'together with the gen_test or c_tests field')
            sys.exit(RET_FATAL)
          asm_directed_list.append(t)
          matched_list.remove(t)

        if 'c_tests' in t:
          if 'gen_test' in t or 'asm_tests' in t:
            logging.error('c_tests must not be defined in the testlist '
                          'together with the gen_test or asm_tests field')
            sys.exit(RET_FATAL)
          c_directed_list.append(t)
          matched_list.remove(t)

      if len(matched_list) == 0 and len(asm_directed_list) == 0 and len(c_directed_list) == 0:
        sys.exit("Cannot find %s in %s" % (args.test, args.testlist))

    # Run instruction generator
    if args.steps == "all" or re.match(".*gen.*", args.steps):
      # Run any handcoded/directed assembly tests specified in YAML format
      if len(asm_directed_list) != 0:
        for test_entry in asm_directed_list:
          gcc_opts = args.gcc_opts
          gcc_opts += test_entry.get('gcc_opts', '')
          path_asm_test = os.path.expanduser(test_entry.get('asm_tests'))
          if path_asm_test:
            # path_asm_test is a directory
            if os.path.isdir(path_asm_test):
              run_assembly_from_dir(path_asm_test, args.iss_yaml, args.isa, args.mabi,
                                    gcc_opts, args.iss, output_dir, args.gcc_user_extension_path, args.linker_path, 
                                    args.core_setting_dir, args.debug)
            # path_asm_test is an assembly file
            elif os.path.isfile(path_asm_test):
              run_assembly(path_asm_test, args.iss_yaml, args.isa, args.mabi, gcc_opts,
                           args.iss, output_dir, args.gcc_user_extension_path, args.linker_path, args.core_setting_dir, args.debug)
            else:
              if not args.debug:
                logging.error('%s does not exist' % path_asm_test)
                sys.exit(RET_FAIL)

      # Run any handcoded/directed C tests specified in YAML format
      if len(c_directed_list) != 0:
        for test_entry in c_directed_list:
          gcc_opts = args.gcc_opts
          gcc_opts += test_entry.get('gcc_opts', '')
          path_c_test = os.path.expanduser(test_entry.get('c_tests'))
          if path_c_test:
            # path_c_test is a directory
            if os.path.isdir(path_c_test):
              run_c_from_dir(path_c_test, args.iss_yaml, args.isa, args.mabi,
                             gcc_opts, args.iss, output_dir, args.gcc_user_extension_path, args.linker_path, 
                             args.core_setting_dir, args.debug)
            # path_c_test is a C file
            elif os.path.isfile(path_c_test):
              run_c(path_c_test, args.iss_yaml, args.isa, args.mabi, gcc_opts,
                    args.iss, output_dir, args.gcc_user_extension_path, args.linker_path, args.core_setting_dir, args.debug)
            else:
              if not args.debug:
                logging.error('%s does not exist' % path_c_test)
                sys.exit(RET_FAIL)

      # Run remaining tests using the instruction generator
      gen(matched_list, args, output_dir, cwd)

    if not args.co:
      # Compile the assembly program to ELF, convert to plain binary
      if args.steps == "all" or re.match(".*gcc_compile.*", args.steps):
        gcc_compile(matched_list, output_dir, args.isa, args.mabi,
                    args.gcc_opts, args.gcc_user_extension_path, args.linker_path, args.debug)

      # Run ISS simulation
      if args.steps == "all" or re.match(".*iss_sim.*", args.steps):
        iss_sim(all_matched_list, output_dir, args.iss, args.iss_yaml, args.iss_opts,
                args.isa, args.core_setting_dir, args.iss_timeout, args.debug)

      # Compare ISS simulation result
      if args.steps == "all" or re.match(".*iss_cmp.*", args.steps):
        iss_cmp(matched_list, args.iss, output_dir, args.stop_on_first_error,
                args.exp, args.debug)

    sys.exit(RET_SUCCESS)
  except KeyboardInterrupt:
    logging.info("\nExited Ctrl-C from user request.")
    sys.exit(130)

if __name__ == "__main__":
  main()
