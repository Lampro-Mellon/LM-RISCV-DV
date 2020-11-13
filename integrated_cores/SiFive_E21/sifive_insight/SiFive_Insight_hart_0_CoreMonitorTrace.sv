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
interface SiFive_Insight_hart_0_CoreMonitorTrace(
);

  // High when "instruction" is retired
  logic  commit;

  // The address of "instruction"
  logic [31:0] pc;

  // The instruction at the commit stage
  logic [31:0] instruction;

  // High when an exception has occurred
  logic  exception;

  // High when an interrupt ocurrs at this instruction
  logic  interrupt_fire;

  /* The MSB is high for debug mode.
   * The lower two bits are encoded as follows:
   * U-mode:   b00
   * S-mode:   b01
   * reserved: b10
   * M-mode:   b11
   */
  logic [2:0] mode;

  // rs1: source operand register number
  logic [4:0] rs1_raddr;

  // rs1: source operand data
  logic [31:0] rs1_rdata;

  // rs2: source operand register number
  logic [4:0] rs2_raddr;

  // rs2: source operand data
  logic [31:0] rs2_rdata;

  // rd: destination register write enable integer
  logic  rd_wenx;

  // rd: destination register write enable floating point
  logic  rd_wenf;

  // rd: destination register number
  logic [4:0] rd_waddr;

  // rd: destination register write data
  logic [31:0] rd_wdata;
endinterface
