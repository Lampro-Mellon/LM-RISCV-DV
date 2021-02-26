// RISC-V Compliance Test Header File
// Copyright (c) 2017, Codasip Ltd. All Rights Reserved.
// See LICENSE for license details.
//
// Description: Common header file for RV32I tests

#ifndef _COMPLIANCE_MODEL_H
#define _COMPLIANCE_MODEL_H

//-----------------------------------------------------------------------
// RV Compliance Macros
//-----------------------------------------------------------------------

#define RVMODEL_HALT              \
        la a0, data_begin;			\
        la a1, data_end; \
        li a2, 0x80005008;			\
compliance_halt_loop: \
        beq a0, a1, compliance_halt_break; \
        addi a3, a0, 4; \
compliance_halt_loop2: \
        addi a3, a3, -1; \
	\
        lb a4, 0 (a3); \
        srai a5, a4, 4; \
        andi a5, a5, 0xF; \
        li a6, 10; \
        blt a5, a6, notLetter; \
        addi a5, a5, 39; \
notLetter: \
        addi a5, a5, 0x30; \
        sb a5, 0 (a2); \
	\
        srai a5, a4, 0; \
        andi a5, a5, 0xF; \
        li a6, 10; \
        blt a5, a6, notLetter2; \
        addi a5, a5, 39; \
notLetter2: \
        addi a5, a5, 0x30; \
        sb a5, 0 (a2); \
        bne a0, a3,compliance_halt_loop2;  \
        addi a0, a0, 4; \
	\
        li a4, '\n'; \
        sb a4, 0 (a2); \
        j compliance_halt_loop; \
  j compliance_halt_break;		\
compliance_halt_break: \
	li	a0,0x80005009;	\
	sb	a3,0(a0);       \
test_done:\
        li      gp,1;   \
        ecall;

#define RVMODEL_BOOT                                            \
        .section .text.init;                                            \
        .align  4;                                                      \
        .globl _start;                                                  \
_start:                                                                 \

#define RVMODEL_DATA_BEGIN .align 4; .global data_begin; data_begin:

#define RVMODEL_DATA_END .align 4; .global data_end; data_end:
// Env Variable to be set accordingly
#define XLEN 32

#define RVMODEL_IO_WRITE_STR(_SP, _STR)

#define RVMODEL_IO_ASSERT_GPR_EQ(_SP, _R, _I)

//RVTEST_IO_ASSERT_SFPR_EQ
#define RVMODEL_IO_ASSERT_SFPR_EQ(_F, _R, _I)
//RVTEST_IO_ASSERT_DFPR_EQ
#define RVMODEL_IO_ASSERT_DFPR_EQ(_D, _R, _I)

// TODO: specify the routine for setting machine software interrupt
#define RVMODEL_SET_MSW_INT

// TODO: specify the routine for clearing machine software interrupt
#define RVMODEL_CLEAR_MSW_INT

// TODO: specify the routine for clearing machine timer interrupt
#define RVMODEL_CLEAR_MTIMER_INT

// TODO: specify the routine for clearing machine external interrupt
#define RVMODEL_CLEAR_MEXT_INT

#endif // _COMPLIANCE_MODEL_H