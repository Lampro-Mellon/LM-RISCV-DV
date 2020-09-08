/*
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//-----------------------------------------------------------------------------
// Processor feature configuration
//-----------------------------------------------------------------------------
// XLEN
parameter int XLEN = 32;

// Parameter for SATP mode, set to BARE if address translation is not supported
parameter satp_mode_t SATP_MODE = BARE;

// Supported Privileged mode
privileged_mode_t supported_privileged_mode[] = {MACHINE_MODE};

// Unsupported instructions
riscv_instr_name_t unsupported_instr[];

// ISA supported by the processor
riscv_instr_group_t supported_isa[$] = {RV32I, RV32M, RV32C};

// Interrupt mode support
mtvec_mode_t supported_interrupt_mode[$] = {DIRECT, VECTORED};

// The number of interrupt vectors to be generated, only used if VECTORED interrupt mode is
// supported
int max_interrupt_vector_num = 16;

// Physical memory protection support
bit support_pmp = 0;

// Debug mode support
bit support_debug_mode = 0;

// Support delegate trap to user mode
bit support_umode_trap = 0;

// Support sfence.vma instruction
bit support_sfence = 0;

// Support unaligned load/store
bit support_unaligned_load_store = 1'b1;

// GPR setting
parameter int NUM_FLOAT_GPR = 32;
parameter int NUM_GPR = 32;
parameter int NUM_VEC_GPR = 32;

// ----------------------------------------------------------------------------
// Vector extension configuration | Not implemented in SweRV-EH1
// ----------------------------------------------------------------------------

// Parameter for vector extension
parameter int VECTOR_EXTENSION_ENABLE = 0;

parameter int VLEN = 512;

// Maximum size of a single vector element
parameter int ELEN = 32;

// Minimum size of a sub-element, which must be at most 8-bits.
parameter int SELEN = 8;

// Maximum size of a single vector element (encoded in vsew format)
parameter int VELEN = int'($ln(ELEN)/$ln(2)) - 3;

// Maxium LMUL supported by the core
parameter int MAX_LMUL = 8;

// ----------------------------------------------------------------------------
// Multi-harts configuration
// ----------------------------------------------------------------------------

// Number of harts
parameter int NUM_HARTS = 1;

// ----------------------------------------------------------------------------
// Previleged CSR implementation
// ----------------------------------------------------------------------------

// Implemented previlieged CSR list
`ifdef DSIM
privileged_reg_t implemented_csr[] = {
`else
const privileged_reg_t implemented_csr[] = {
`endif
    // Machine mode mode CSR
    MVENDORID,  // Vendor ID
    MARCHID,    // Architecture ID
    MIMPID,     // Implementation ID
    MHARTID,    // Hardware thread ID
    MISA,       // ISA and extensions
    
    MSTATUS,    // Machine status
    MIE,        // Machine interrupt-enable register
    MTVEC,      // Machine trap-handler base address
    MSCRATCH,   // Scratch register for machine trap handlers
    MEPC,       // Machine exception program counter
    MCAUSE,     // Machine trap cause
    MTVAL,      // Machine bad address or instruction
    MIP,        // Machine interrupt pending
	
	MCYCLE, 		// Machine cycle counter
	MCYCLEH,		// Upper 32 bits of mcycle, RV32I only
	MINSTRET,		// Machine instructions-retired counter
	MINSTRETH,		// Upper 32 bits of minstret, RV32I only
	
    MHPMEVENT3, 	// Machine performance-monitoring event selector 3
    MHPMEVENT4, 	// Machine performance-monitoring event selector 4
    MHPMEVENT5, 	// Machine performance-monitoring event selector 5
    MHPMEVENT6, 	// Machine performance-monitoring event selector 6

	MHPMCOUNTER3,	// Machine performance-monitoring counter 3
	MHPMCOUNTER4,	// Machine performance-monitoring counter 4
	MHPMCOUNTER5,	// Machine performance-monitoring counter 5
	MHPMCOUNTER6,	// Machine performance-monitoring counter 6

	MHPMCOUNTER3H,	// Upper 32 bits of mhpmcounter3, RV32I only
	MHPMCOUNTER4H,	// Upper 32 bits of mhpmcounter4, RV32I only
	MHPMCOUNTER5H,	// Upper 32 bits of mhpmcounter5, RV32I only
	MHPMCOUNTER6H,	// Upper 32 bits of mhpmcounter6, RV32I only

//added
    MCOUNTEREN, // Machine counter enable
    MCOUNTINHIBIT,   // Machine counter-inhibit register
    TSELECT,   // Debug/Trace trigger register select
    TDATA1,   // First Debug/Trace trigger data register
    TDATA2,   // Second Debug/Trace trigger data register
    DCSR,   // Debug control and status register
    DPC   // Debug PC
//Non-standard CSRs
   /* MRAC,
    MCPC,
    DMST,
    MPMC,
    DICAWICS,
    DICAD0,
    DICAD1,
    DICAGO,
    MGPMC,
    MITCNT0,
    MITB0,
    MITCTL0,
    MITCNT1,
    MITB1,
    MITCTL1,
    MICECT,
    MIICCMECT,
	  MDCCMECT,
    MCGC,
    MFDC,
	  MDEAU,
    MEIVT,	
    MEIPT,
	  MEICPCT,
    MEICIDPL,
    MEICURPL,
    MDSEAC,
    MEIHAP */
};

// Implementation-specific custom CSRs
`ifdef DSIM
bit [11:0] custom_csr[] = {
`else
const bit [11:0] custom_csr[] = {
`endif
};

// ----------------------------------------------------------------------------
// Supported interrupt/exception setting, used for functional coverage
// ----------------------------------------------------------------------------

`ifdef DSIM
interrupt_cause_t implemented_interrupt[] = {
`else
const interrupt_cause_t implemented_interrupt[] = {
`endif
    M_TIMER_INTR,
    M_EXTERNAL_INTR
};

`ifdef DSIM
exception_cause_t implemented_exception[] = {
`else
const exception_cause_t implemented_exception[] = {
`endif
    INSTRUCTION_ACCESS_FAULT,
    ILLEGAL_INSTRUCTION,
    BREAKPOINT,
    LOAD_ADDRESS_MISALIGNED,
    LOAD_ACCESS_FAULT,
    STORE_AMO_ADDRESS_MISALIGNED,
    STORE_AMO_ACCESS_FAULT,
    ECALL_MMODE
};
