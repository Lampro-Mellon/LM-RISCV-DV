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
module WfiChecker #(parameter PCWIDTH = 32,
                    parameter CHECK_SKIP_CNT = 100)
 (
     input               clock
   , input               reset
   , input               wfi
   , input               bus_err_int
   , input               debug_int
   , input               clint_int
   , input               allow_wfi
   , input               debug
   , input               singleStep
   , input               excpt
   , input [PCWIDTH-1:0] reg_mie
   , input [PCWIDTH-1:0] reg_mip
   , input                  inst_vld_0
   , input [31:0] pc_0
   , input [31:0]           inst_0
 );


  bit  wfi_prv;
  bit  wfi_asserted;
  bit  wfi_inst_0;
  int  count;
  bit  [PCWIDTH+2:0] interrupt_pending; 
  bit  [PCWIDTH+2:0] interrupt_pending_prv; 
  always @(negedge clock or posedge reset) begin    
    if(!reset) begin

      interrupt_pending[PCWIDTH-1:0] = reg_mie & reg_mip;
      interrupt_pending[PCWIDTH]     = bus_err_int;
      interrupt_pending[PCWIDTH+1]   = debug_int;
      interrupt_pending[PCWIDTH+2]   = clint_int;
      
      if(inst_vld_0 && (inst_0 == 32'h10500073)) wfi_inst_0 = 1'b1; else if(inst_vld_0 && (inst_0 != 32'h10500073)) wfi_inst_0 = 1'b0; 
      
      if(wfi != wfi_prv) begin
        if (wfi) begin
          if((!wfi_inst_0)) begin
            $display("Error: WFI signal asserted for Non WFI Instruction ");
            $fatal;
          end

          count = '0;
          wfi_asserted = 1'b1;
        end
      end 
      // wfi_asserted : after deassertion of WFI the value on inst signal can be still WFI Instruction.
      //                So avoid chekcing in that duration.
      // allow_wfi    : Added after tests fail in regression as in Caboose waiting for fetch_io_cpu_outstanding/mem_op_outstanding
      //                is more than CHECK_SKIP_CNT (i.e 20 gated clock cycles)
        
      if(((wfi_inst_0)) && (!wfi_asserted) ) begin
        if(!wfi) begin
          if((interrupt_pending_prv == 0) && (interrupt_pending == 0) && (!excpt) && (allow_wfi) && (!singleStep) && (!debug)) begin
          //Skip chekcing for CHECK_SKIP_CNT clock cycles(CHECK_SKIP_CNT clock = 5 gated clock cycles in RTL) 
          //     CHECK_SKIP_CNT is set as 100 as in simulation it was observed that due to fetch_io_cpu_outstanding and mem_op_outstanding
          //     the wfi signal asserted after 15 gated clock cycles.
          //     TODO: Discuss with designer on the delay value and below statement. 
          //WFI signal Spec states that 
          //      “It is guaranteed that the core will be in a WFI state while the WFI signal is asserted, however, 
          //       there are situations where the core may briefly enter a WFI sate but the WFI signal is not asserted."
          //
            if(count > CHECK_SKIP_CNT) begin
              $display("Error: WFI signal not asserted for WFI Instruction: Interrupt reg_mie : %h reg_mip:%h", reg_mie,reg_mip);
              count = '0;
              $fatal;
            end
            else count = count +1;
          end
          else begin
            wfi_asserted = 1'b1; // If interrupt pending skip the check
            count = '0;
          end
        end
        else begin
          if(interrupt_pending != 0) begin
            $display("Error: WFI signal asserted when interrupt interrupt pending reg_mie : %h reg_mip:%h", reg_mie, reg_mip);
            $fatal;
          end
        end
      end
      
      if((!wfi_inst_0)) begin
        if (wfi_asserted) wfi_asserted = 1'b0;
        count = '0;
      end
      wfi_prv = wfi;
      interrupt_pending_prv = interrupt_pending;
    end
    else begin
      wfi_prv      = 1'b0;
      count        = '0;
      wfi_asserted = 1'b0;
      interrupt_pending     = '0;
      interrupt_pending_prv = '0;
      wfi_inst_0 = 1'b0;
    end
  end 
  

`ifndef VERILATOR

  default clocking master_clk @(posedge(clock));
  endclocking
  default disable iff(reset);
  
  
  property WFIInst;
    (@(posedge clock) 
        wfi |=> ((inst_0 == 32'h10500073)));   
  endproperty
  wfi_inst: cover property (WFIInst);
  
//Interrupt Enabled
  property MachineExternalIntEn_WFIInst;
   (@(posedge clock)
      wfi |=>  reg_mie[11] && ((inst_0 == 32'h10500073) ));   
  endproperty
  wfi_machine_ext_intr_en: cover property (MachineExternalIntEn_WFIInst);

  property SupervisorExternalIntEn_WFIInst; 
   (@(posedge clock)
      wfi |=>  reg_mie[9] && ((inst_0 == 32'h10500073)));   
  endproperty
  wfi_supervisor_ext_intr_en: cover property (SupervisorExternalIntEn_WFIInst);

  property MachineTimerIntEn_WFIInst;
   (@(posedge clock)
      wfi |=>  reg_mie[7] && ((inst_0 == 32'h10500073) ));   
  endproperty
  wfi_machine_timer_intr_en: cover property (MachineTimerIntEn_WFIInst);

  property SupervisorTimerIntEn_WFIInst; 
   (@(posedge clock)
      wfi |=>  reg_mie[5] && ((inst_0 == 32'h10500073) ));   
  endproperty
  wfi_supervisor_timer_intr_en: cover property (SupervisorTimerIntEn_WFIInst);
`endif

endmodule  