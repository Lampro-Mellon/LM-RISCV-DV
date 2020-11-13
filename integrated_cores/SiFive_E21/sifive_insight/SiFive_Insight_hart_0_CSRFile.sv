//
// Copyright (c) 2016-2020 SiFive, Inc. -- Proprietary and Confidential
// All Rights Reserved.
//
// NOTICE: All information contained herein is, and remains the
// property of SiFive, Inc. The intellectual and technical concepts
// contained herein are proprietary to SiFive, Inc. and may be covered
// by U.S. and Foreign Patents, patents in process, and are protected by
// trade secret or copyright law.
//
// This work may not be copied, modified, re-published, uploaded,
// executed, or distributed in any way, in any medium, whether in whole
// or in part, without prior written permission from SiFive, Inc.
//
// The copyright notice above does not evidence any actual or intended
// publication or disclosure of this source code, which includes
// information that is confidential and/or proprietary, and is a trade
// secret, of SiFive, Inc.
//
// Instance ID: b21cef66-00f3-44d5-a188-807f478b1270, 00000000-0000-0000-0000-000000000000, 00000000-0000-0000-0000-000000000000
//VCS coverage exclude_file
interface SiFive_Insight_hart_0_CSRFile(
);

  // Hardware thread ID
  logic  hart_id;

  // Machine status register
  SiFive_Insight_MStatus mstatus();

  // ISA and extensions
  logic [30:0] misa;

  // Machine exception delegation register
  logic [31:0] medeleg;

  // Machine interrupt delegation register
  logic [142:0] mideleg;

  // Machine interrupt-enable register
  logic [15:0] mie;

  // Machine trap-handler base address
  logic [31:0] mtvec;

  // Machine trap-handler vector table address for CLIC vectored interrupts
  logic [31:0] mtvt;

  // Machine active interrupt level for CLIC vectored interrupts
  SiFive_Insight_mintstatus mintstatus();

  // Scratch register for machine trap handlers
  logic [31:0] mscratch;

  // Machine exception program counter
  logic [31:0] mepc;

  // Machine trap cause
  SiFive_Insight_MCause mcause();

  // Machine bad address or instruction
  logic [31:0] mtval;

  // Machine interrupt pending
  logic [142:0] mip;

  // Floating-Point Control and Status Register (frm + fflags)
  logic [9:0] fcsr;

  // Debug control and status register
  SiFive_Insight_dcsr dcsr();

  // Debug PC
  logic [31:0] dpc;

  // Debug scratch register
  logic [31:0] dscratch;

  // Cycle counter for RDCYCLE instruction
  logic [63:0] cycle;

  // Instruction-retired counter for RDINSTRET instruction
  logic [63:0] instret;

  // Machine counter enable
  logic [31:0] mcounteren;

  SiFive_Insight_hart_0_Counter hpmcounters[1]();
endinterface
