.include "user_define.h"
.globl _start
.section .text
_start:
                  li x0, 0xb6b7f4df
                  li x1, 0x80000000
                  li x2, 0xbab88c40
                  li x3, 0xf0b95bfe
                  li x4, 0xf46f8464
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0xc
                  li x8, 0x9
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x3
                  li x12, 0x1
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0x1
                  li x16, 0xf536503a
                  li x17, 0xc
                  li x18, 0xfa95af72
                  li x19, 0x2a42aa1c
                  li x20, 0x0
                  li x21, 0x5becc3fa
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x9
                  li x27, 0x0
                  li x28, 0xb
                  li x29, 0xc58d92cc
                  li x30, 0x7252cec7
                  li x31, 0x80000000
                  li x22, 0x40001104
                  csrw misa, x22
kernel_sp:        
                  la x31, _kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 0
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, _init
                  csrw mepc, x22
                  j init_machine_mode

_init:            
                  la x14, _user_stack_end
_main:            jal        t1, 1f
0:                jal        ra, 2f
1:                c.j        4f
2:                c.j        10f
3:                c.j        8f
4:                c.jal      5f
5:                c.jal      3b
6:                c.j        0b
7:                c.j        9f
8:                jal        sp, 7b
9:                jal        gp, 6b
10:               xori       s3, a1, -305
                  la         s10, region_1+6581 #start load_store_instr_stream_1
                  lb         s11, 47(s10)
                  la         s0, region_1+2721 #start load_store_instr_stream_0
                  lb         a2, -30(s10)
                  sw         s3, 7(s0)
                  lb         a6, -15(s0)
                  lbu        s11, 30(s10)
                  lh         ra, 13(s0)
                  sb         s2, -53(s10)
                  sb         t3, -13(s0)
                  lb         s4, -45(s10)
                  sb         a5, 0(s10)
                  lb         s1, 13(s0)
                  lbu        t2, -37(s10)
                  lh         s6, 5(s0)
                  sb         s11, -14(s10) #end load_store_instr_stream_1
                  lhu        s9, -15(s0) #end load_store_instr_stream_0
                  addi       t3, zero, 3 #init loop 1 counter
                  addi       t2, zero, -13 #init loop 1 limit
                  c.li       t1, -1
main_40_1_t:      or         s2, s10, t1
                  addi       t3, t3, -8 #update loop 1 counter
                  addi       s1, zero, -6 #init loop 0 counter
                  addi       s5, zero, -9 #init loop 0 limit
main_40_0_t:      and        a3, gp, sp
                  c.ebreak;c.nop;
                  addi       s1, s1, -3 #update loop 0 counter
                  bne        s1, s5, main_40_0_t #branch for loop 0
                  bne        t3, t2, main_40_1_t #branch for loop 1
                  add        a1, a4, a7
                  la         t2, region_1+6986 #start riscv_hazard_instr_stream_4
                  sra        s9, s4, s6
                  lb         a7, 15(t2)
                  lui        s4, 349491
                  sb         a5, -1(t2)
                  csrrc      a5, 0x340, s2
                  lhu        s4, -14(t2)
                  lh         s6, 10(t2)
                  lb         a7, 9(t2)
                  sh         a7, 12(t2)
                  sw         s6, -10(t2)
                  c.nop
                  lbu        s6, 12(t2)
                  xori       s2, a7, 73
                  .4byte 0x00100073 # ebreak
                  lbu        a5, -7(t2)
                  sb         s2, -3(t2)
                  lh         a5, 16(t2)
                  lbu        s9, -13(t2)
                  c.addi     a5, 31
                  c.srai     a5, 15
                  lb         s9, -6(t2)
                  sb         a7, 7(t2)
                  lb         s6, -6(t2)
                  add        s4, s9, a5
                  lhu        s2, -2(t2)
                  sb         s4, -13(t2)
                  c.ebreak;c.nop;
                  lh         s9, 6(t2)
                  lb         s9, -7(t2)
                  and        a5, a7, s9
                  c.lui      s4, 25
                  mulh       s4, a5, s4
                  c.li       s2, -1
                  remu       a5, a7, s6
                  andi       a5, a7, -121
                  sb         a7, 15(t2)
                  lbu        s6, 11(t2) #end riscv_hazard_instr_stream_4
                  addi       s6, zero, 10 #init loop 0 counter
                  sub        a2, t3, s4
                  c.mv       sp, s11
                  auipc      a7, 647180
                  addi       s1, zero, -6 #init loop 0 limit
                  sltiu      s7, s7, -966
                  andi       t4, s3, 380
main_41_0_t:      addi       t5, a1, -38
                  csrrci     a5, 0x340, 26
                  c.addi     s5, -1
                  csrrs      s8, 0x340, t5
                  csrrwi     s10, 0x340, 26
                  csrrw      a1, 0x340, s0
                  addi       s6, s6, -8 #update loop 0 counter
                  c.li       t0, 6
                  fence
                  bne        s6, s1, main_41_0_t #branch for loop 0
                  slt        a6, t1, s11
                  la         sp, region_2+7972 #start riscv_load_store_rand_instr_stream_5
                  lh         zero, -12(sp)
                  sb         s9, -5(sp)
                  sltu       t5, t0, s2
                  c.swsp     s8, 8(sp)
                  sh         s8, 2(sp)
                  div        t3, s4, s3
                  lb         s3, -5(sp)
                  slti       t1, s4, 372
                  lbu        s0, 15(sp)
                  lbu        s2, 9(sp)
                  c.and      s0, a4
                  c.or       a1, a4
                  sh         s10, -14(sp)
                  c.nop
                  csrrci     t5, 0x340, 22
                  lbu        a2, -15(sp)
                  csrrw      t1, 0x340, s1
                  mulh       a6, tp, s5
                  xori       s6, s1, 647
                  c.nop
                  lbu        a1, -4(sp)
                  lb         a1, -15(sp)
                  c.sub      a2, a0
                  slli       s8, s4, 11
                  fence.i
                  lbu        a1, -2(sp)
                  lhu        gp, -2(sp)
                  sb         t0, 10(sp)
                  lhu        s8, -2(sp)
                  sb         t6, -10(sp)
                  sb         a2, -5(sp)
                  c.lwsp     t2, 0(sp)
                  lb         ra, 13(sp)
                  lb         t2, -3(sp)
                  lb         s7, -15(sp)
                  lhu        t3, -4(sp)
                  fence.i
                  div        t5, t0, t2
                  lbu        s5, -9(sp) #end riscv_load_store_rand_instr_stream_5
                  la         s0, region_4+1480 #start riscv_load_store_rand_instr_stream_7
                  sh         s1, 4(s0)
                  lbu        a5, -16(s0)
                  srli       t4, s0, 27
                  sltiu      t3, s11, 834
                  sb         s9, -11(s0)
                  andi       t2, a1, -675
                  c.li       a6, -1
                  sltiu      t4, a1, 35
                  remu       s3, s0, t3
                  lbu        a1, -9(s0)
                  sb         a6, -8(s0)
                  sb         gp, -1(s0)
                  sb         t4, 10(s0)
                  c.sw       s1, 12(s0)
                  csrrsi     s5, 0x340, 3
                  sub        t3, sp, zero
                  lbu        s7, -3(s0)
                  lhu        a5, -12(s0)
                  sb         s11, 9(s0)
                  lb         s7, 7(s0)
                  sh         s9, -2(s0)
                  sh         a3, 4(s0)
                  .4byte 0x00100073 # ebreak
                  sw         t2, 16(s0)
                  lh         s10, -16(s0)
                  c.and      a5, a3
                  sw         s8, -8(s0)
                  lb         a7, -11(s0)
                  divu       t2, a1, a3
                  c.sub      a3, s0
                  lbu        s4, 2(s0)
                  lbu        s6, 9(s0)
                  srli       s5, t2, 30
                  csrrs      s2, 0x340, s8
                  sltu       t3, s3, zero
                  c.and      a5, a0
                  sb         a3, 5(s0)
                  sb         t4, -7(s0)
                  srai       s6, sp, 11
                  mulhu      zero, a3, s2
                  sb         s2, 9(s0)
                  lb         t1, -3(s0)
                  sb         t0, 0(s0)
                  c.slli     t2, 19
                  and        s6, a0, a6
                  sb         s5, -14(s0)
                  csrrc      a5, 0x340, a1
                  sb         s5, 9(s0)
                  lh         a1, 16(s0) #end riscv_load_store_rand_instr_stream_7
main_13:          jal        t1, 5f
0:                c.j        3f
1:                c.jal      6f
2:                c.j        0b
3:                c.j        14f
4:                c.j        10f
5:                c.j        15f
6:                c.jal      2b
7:                c.j        16f
8:                c.j        1b
9:                c.j        13f
10:               jal        t1, 7b
11:               c.jal      4b
12:               c.j        8b
13:               jal        t1, 11b
14:               jal        t3, 17f
15:               c.jal      9b
16:               c.j        12b
17:               andi       ra, s2, -748
main_11:          jal        t1, 7f
0:                jal        ra, 3f
1:                jal        ra, 8f
2:                c.jal      14f
3:                jal        ra, 11f
4:                jal        ra, 12f
5:                c.jal      10f
6:                c.j        13f
7:                c.jal      2b
8:                jal        t1, 0b
9:                c.j        4b
10:               c.j        6b
11:               jal        ra, 5b
12:               jal        t1, 15f
13:               jal        ra, 16f
14:               c.jal      9b
15:               c.jal      1b
16:               addi       s7, s6, 250
                  la         s6, region_4+1188 #start load_store_instr_stream_1
                  la         s2, region_3+250 #start load_store_instr_stream_2
                  sb         sp, -152(s2)
                  sb         s0, 79(s6)
                  sb         s7, 109(s2)
                  la         s4, region_2+8106 #start load_store_instr_stream_0
                  lbu        ra, -41(s4)
                  sw         t0, -168(s6)
                  sb         s6, -127(s2)
                  lw         s11, -6(s4)
                  sb         t3, 131(s2)
                  lbu        zero, -31(s4)
                  lb         s5, -161(s6)
                  sb         a7, 57(s2)
                  lb         a2, -192(s2)
                  lb         s10, 18(s4)
                  sh         t0, 24(s4)
                  lh         a5, -212(s6)
                  lbu        a3, -49(s6) #end load_store_instr_stream_1
                  sh         t0, -48(s4)
                  lbu        gp, 61(s4)
                  lb         tp, 186(s2)
                  lb         a6, -25(s4)
                  sb         t5, 104(s2) #end load_store_instr_stream_2
                  lb         t1, -15(s4) #end load_store_instr_stream_0
main_15:          jal        t1, 15f
0:                jal        a2, 16f
1:                jal        t1, 18f
2:                c.jal      5f
3:                c.j        29f
4:                jal        ra, 25f
5:                c.jal      28f
6:                c.jal      24f
7:                jal        t1, 20f
8:                c.j        3b
9:                c.jal      0b
10:               c.j        19f
11:               c.jal      9b
12:               c.j        13f
13:               c.jal      14f
14:               c.jal      23f
15:               c.j        10b
16:               c.j        1b
17:               jal        ra, 4b
18:               jal        t1, 22f
19:               c.j        6b
20:               jal        ra, 21f
21:               c.j        2b
22:               jal        t1, 12b
23:               c.j        27f
24:               c.jal      26f
25:               c.jal      7b
26:               c.j        11b
27:               jal        t1, 17b
28:               c.j        8b
29:               .4byte 0x00100073 # ebreak
                  addi       a1, zero, 8 #init loop 0 counter
                  sra        t5, a1, s2
                  addi       zero, zero, 0 #init loop 0 limit
                  c.add      gp, sp
                  xor        t3, s1, tp
main_39_0_t:      c.or       a5, s1
                  sub        ra, s2, s1
                  c.nop
                  srli       a2, s4, 31
                  addi       a1, a1, -1 #update loop 0 counter
                  div        a5, s8, t3
                  c.lui      t1, 25
                  c.nop
                  srli       sp, t3, 18
                  c.lui      a2, 28
                  c.ebreak;c.nop;
                  c.ebreak;c.nop;
                  add        a2, tp, s1
                  c.beqz     a1, main_39_0_t #branch for loop 0
                  c.li       t0, -1
                  la         sp, region_0+3871 #start load_store_instr_stream_1
                  sb         tp, -6(sp)
                  la         t3, region_4+3383 #start load_store_instr_stream_0
                  lbu        a5, 467(t3)
                  lbu        tp, -10(t3)
                  sb         s9, 8(sp)
                  lh         a3, 201(t3)
                  lbu        a7, 12(sp)
                  lbu        zero, -384(t3)
                  lb         gp, 611(t3)
                  sb         a6, -4(sp)
                  lh         s5, -1381(t3)
                  lbu        s3, -3(sp)
                  lbu        s10, 411(t3)
                  lbu        t1, -16(sp)
                  sh         a3, -11(sp) #end load_store_instr_stream_1
                  lb         a2, -1022(t3) #end load_store_instr_stream_0
                  la         sp, region_1+16051 #start riscv_hazard_instr_stream_6
                  lbu        s9, -647(sp)
                  sltu       s1, tp, t2
                  c.andi     s1, -1
                  lb         a5, -1362(sp)
                  csrrc      t4, 0x340, t4
                  sb         t4, 192(sp)
                  mul        s1, t4, tp
                  lh         s1, -1569(sp)
                  lbu        t2, -838(sp)
                  c.and      s1, a5
                  sltiu      s9, tp, -609
                  csrrsi     tp, 0x340, 21
                  lbu        s9, -1527(sp)
                  lui        t4, 1042473
                  lb         s9, -396(sp)
                  xor        tp, a5, s9
                  nop
                  sh         s1, -299(sp)
                  c.srai     s1, 18
                  sh         s9, -1993(sp)
                  c.andi     s1, -1
                  lbu        tp, -777(sp)
                  sh         a5, 291(sp)
                  add        s1, s9, t4
                  mulhsu     s1, t4, t2
                  sb         s1, -970(sp)
                  auipc      a5, 773529
                  lb         t4, -1352(sp)
                  sb         tp, -2025(sp)
                  lb         t2, 16(sp)
                  sra        a5, a5, s9
                  xor        s9, tp, tp
                  sh         t4, -899(sp)
                  lbu        tp, -302(sp)
                  csrrs      s9, 0x340, s9
                  c.addi     tp, 22
                  sh         s1, 111(sp)
                  lbu        s9, -1559(sp)
                  c.and      a5, s1
                  sub        s1, s1, t4
                  mulh       s9, t4, t2
                  divu       t2, s1, t2
                  sll        a5, t4, tp
                  sb         t4, -324(sp)
                  lh         s1, -981(sp)
                  lbu        t4, 72(sp)
                  c.srli     s1, 7
                  sb         a5, -1690(sp)
                  lb         t4, 54(sp)
                  lh         s9, -1979(sp) #end riscv_hazard_instr_stream_6
                  la         s5, region_3+487 #start load_store_instr_stream_1
                  sb         tp, -373(s5)
                  la         gp, region_4+3009 #start load_store_instr_stream_3
                  la         ra, region_2+1469 #start load_store_instr_stream_0
                  lbu        s8, -303(s5)
                  lbu        t2, 18(gp)
                  sb         s0, 52(gp)
                  la         t0, region_0+4093 #start load_store_instr_stream_2
                  lw         t4, -153(t0)
                  lbu        sp, -144(gp)
                  lhu        a3, 109(ra)
                  lb         s4, -45(s5)
                  sb         s9, -196(ra)
                  lh         s0, 63(ra)
                  lb         a5, -296(s5)
                  lbu        a7, -220(t0)
                  sb         t1, 54(ra)
                  lb         s4, 121(gp)
                  sb         t5, -249(s5)
                  sb         a2, -216(t0)
                  lbu        s2, 181(gp)
                  lbu        s7, 58(ra)
                  lh         s4, -249(t0)
                  lb         a3, 221(ra)
                  lbu        a6, -54(t0)
                  sh         t0, -61(t0)
                  sw         a7, -51(s5)
                  sh         t2, -7(t0) #end load_store_instr_stream_2
                  lbu        t3, 58(ra)
                  lbu        s9, 134(gp) #end load_store_instr_stream_3
                  lb         s3, -54(s5) #end load_store_instr_stream_1
                  sb         a0, -2(ra) #end load_store_instr_stream_0
                  la         sp, region_1+10758 #start riscv_hazard_instr_stream_0
                  lh         a3, 24(sp)
                  csrrci     t1, 0x340, 25
                  lb         s4, -53(sp)
                  c.andi     a3, 23
                  lbu        a3, -34(sp)
                  sltu       t5, t1, s2
                  div        t1, ra, t5
                  ori        ra, a3, -941
                  csrrc      ra, 0x340, t5
                  sh         s4, -38(sp)
                  lbu        t5, -43(sp)
                  sb         t1, 40(sp)
                  div        s2, ra, t1
                  slt        t5, t1, t5
                  c.ebreak;c.nop;
                  c.nop
                  lhu        s2, -24(sp)
                  csrrs      ra, 0x340, a3
                  sb         s4, 23(sp)
                  mulhu      ra, t5, t1
                  sb         s2, -13(sp)
                  lbu        t1, -30(sp)
                  fence
                  csrrci     t1, 0x340, 13
                  sw         ra, 26(sp)
                  sb         s4, -3(sp)
                  lb         a3, -8(sp)
                  lhu        ra, -8(sp)
                  .4byte 0x00100073 # ebreak
                  lh         a3, -18(sp)
                  c.slli     s4, 7
                  c.xor      a3, a3
                  sltiu      ra, s2, -347
                  slli       t1, s4, 24
                  slli       s2, t1, 5
                  sltiu      s2, s4, -693
                  c.lui      t5, 22
                  c.srai     a3, 18
                  fence
                  sb         s4, -26(sp)
                  lbu        a3, 45(sp)
                  add        a3, a3, ra
                  lhu        s2, 30(sp)
                  c.nop
                  c.addi     s2, -1
                  c.slli     t1, 10
                  sh         a3, 8(sp) #end riscv_hazard_instr_stream_0
                  la         sp, region_1+14663 #start riscv_hazard_instr_stream_2
                  csrrwi     s1, 0x340, 24
                  lb         s1, 56(sp)
                  sb         s2, -244(sp)
                  srl        s6, t0, s2
                  sb         s1, 20(sp)
                  lbu        t0, -170(sp)
                  lh         s2, 149(sp)
                  sh         s6, 163(sp)
                  c.sub      a5, s1
                  csrrwi     s1, 0x340, 23
                  lbu        s1, 220(sp)
                  fence
                  or         s2, s6, a5
                  sb         s2, -120(sp)
                  sb         s6, 110(sp)
                  lhu        t0, 109(sp)
                  lb         s1, 90(sp)
                  mulh       s6, s6, s1
                  lb         gp, -240(sp)
                  csrrwi     s2, 0x340, 26
                  lb         s6, -34(sp)
                  and        s6, gp, gp
                  csrrw      a5, 0x340, gp
                  sw         t0, -39(sp)
                  csrrsi     s1, 0x340, 11
                  lw         s2, -127(sp)
                  sb         a5, 73(sp)
                  sb         a5, -230(sp)
                  sub        s2, s1, s1
                  lbu        gp, -76(sp)
                  lb         s1, -193(sp)
                  fence.i
                  sb         gp, 19(sp)
                  sll        s1, s2, a5
                  srai       s6, s6, 17
                  lhu        s2, -127(sp) #end riscv_hazard_instr_stream_2
                  addi       sp, zero, 1 #init loop 0 counter
                  addi       a5, zero, 9 #init loop 0 limit
main_37_0_t:      c.addi     a2, 5
                  c.li       a1, 29
                  addi       sp, sp, 10 #update loop 0 counter
                  bltu       sp, a5, main_37_0_t #branch for loop 0
                  c.sub      a2, a4
                  la         s4, region_3+108 #start load_store_instr_stream_0
                  la         t1, region_3+180 #start load_store_instr_stream_1
                  sb         s5, -5(s4)
                  lw         s10, 348(s4)
                  sb         gp, -151(t1)
                  lb         zero, 153(t1)
                  lbu        a2, -101(t1)
                  lbu        a3, 62(t1)
                  lbu        a7, -40(s4)
                  sb         a7, 281(s4)
                  lb         s1, 77(t1)
                  lb         a1, 99(s4)
                  sh         s1, 192(t1)
                  lh         t3, 272(t1)
                  sh         s9, -50(s4)
                  lbu        s1, -39(t1)
                  lhu        s7, -26(s4)
                  lh         a1, 66(s4)
                  lhu        s5, 200(t1) #end load_store_instr_stream_1
                  sb         sp, 169(s4) #end load_store_instr_stream_0
                  la         t3, region_2+2911 #start load_store_instr_stream_1
                  la         s7, region_2+1755 #start load_store_instr_stream_2
                  lw         a7, -47(t3)
                  lb         s3, -54(t3)
                  la         s5, region_2+2963 #start load_store_instr_stream_0
                  sb         s6, -41(t3)
                  lhu        a5, -73(s5)
                  sh         a0, 1703(s7)
                  lbu        t4, -672(s7)
                  sb         t1, 32(t3)
                  lb         zero, 212(s5)
                  sb         s7, -1749(s7)
                  sh         a2, -1195(s7)
                  sb         t2, -49(t3)
                  sb         a3, -208(s5)
                  lbu        t2, -1732(s7)
                  sh         s0, -141(s5)
                  lb         ra, -1235(s7)
                  sh         s6, 171(s5)
                  lbu        gp, 14(t3)
                  lbu        a7, 1789(s7)
                  lb         a6, -502(s7)
                  sb         s0, 105(s5)
                  sw         a4, -915(s7)
                  lb         s4, 14(t3)
                  lhu        a5, -7(t3) #end load_store_instr_stream_1
                  sw         a2, -215(s5)
                  lh         a7, -359(s7) #end load_store_instr_stream_2
                  lbu        s1, -233(s5) #end load_store_instr_stream_0
                  la         sp, region_1+14253 #start riscv_load_store_rand_instr_stream_6
                  mulhu      s9, a5, s6
                  lbu        s7, 418(sp)
                  lb         a7, 1954(sp)
                  lb         s9, 1672(sp)
                  sh         s1, -1787(sp)
                  or         s1, a4, s4
                  lbu        a6, 779(sp)
                  c.andi     a5, -1
                  lbu        a1, 1800(sp)
                  sw         sp, -1393(sp)
                  lbu        s0, -1353(sp)
                  lb         t1, 1155(sp)
                  lb         a2, 902(sp)
                  sb         sp, 445(sp)
                  lbu        s6, 2032(sp)
                  lb         s4, -1371(sp)
                  lbu        t5, -112(sp)
                  sb         t2, -1737(sp)
                  sh         t1, 1557(sp)
                  sh         t2, -493(sp)
                  csrrci     t0, 0x340, 30
                  sb         s1, 1566(sp)
                  sh         a0, 1179(sp)
                  mul        a3, s11, a5
                  sb         t4, 1281(sp)
                  sb         t3, 1266(sp)
                  lb         a3, -1481(sp)
                  sb         gp, -146(sp)
                  slt        t5, t6, a1
                  sb         s2, 936(sp)
                  c.sub      a5, a1
                  lbu        s6, -1968(sp)
                  c.lui      a5, 7
                  srai       s7, t2, 0
                  auipc      gp, 1011094
                  ori        s1, t3, -432
                  or         s6, a0, tp
                  csrrsi     zero, 0x340, 5
                  csrrwi     ra, 0x340, 6
                  lb         s5, -1420(sp)
                  lbu        s5, 1816(sp) #end riscv_load_store_rand_instr_stream_6
                  la         sp, region_3+237 #start riscv_hazard_instr_stream_3
                  addi       tp, ra, -452
                  csrrwi     s10, 0x340, 2
                  sb         ra, -6(sp)
                  nop
                  c.mv       a5, a5
                  lhu        tp, 11(sp)
                  c.sub      a5, a5
                  lbu        t1, -34(sp)
                  sb         tp, 1(sp)
                  c.li       tp, 8
                  sra        ra, t1, t1
                  c.srli     a5, 4
                  lbu        t2, -57(sp)
                  csrrwi     ra, 0x340, 3
                  fence
                  rem        a5, t1, t1
                  c.or       a5, a5
                  sb         ra, -16(sp)
                  lbu        ra, 62(sp)
                  lh         tp, -55(sp)
                  lbu        tp, -32(sp)
                  lh         ra, 19(sp)
                  c.slli     ra, 3
                  lbu        ra, -52(sp)
                  nop
                  mulhu      t1, ra, t2
                  addi       t1, t1, 979
                  auipc      s10, 398591
                  sll        ra, ra, t1
                  lbu        tp, -20(sp)
                  c.slli     t1, 24
                  addi       t2, ra, -739
                  c.add      a5, a5
                  lb         tp, -44(sp)
                  c.andi     a5, -1
                  csrrsi     s10, 0x340, 30
                  sb         a5, -59(sp)
                  lbu        ra, 52(sp)
                  sh         t2, -57(sp)
                  sh         t1, -11(sp)
                  sb         ra, 54(sp) #end riscv_hazard_instr_stream_3
                  la         s4, region_3+500 #start riscv_load_store_rand_instr_stream_2
                  lb         s0, -411(s4)
                  lbu        s3, -324(s4)
                  lbu        zero, -437(s4)
                  mulhu      s3, s8, s1
                  .4byte 0x00100073 # ebreak
                  sb         t6, -338(s4)
                  lb         a6, -161(s4)
                  lbu        s9, -436(s4)
                  sb         a7, -166(s4)
                  sb         t0, -313(s4)
                  sb         ra, -70(s4)
                  mulh       t5, t6, a1
                  lb         s7, 3(s4)
                  lui        s9, 231318
                  c.nop
                  lhu        s1, -140(s4)
                  sb         zero, -150(s4)
                  sra        zero, t1, t1
                  slli       t2, s8, 0
                  lbu        gp, -323(s4)
                  csrrw      a1, 0x340, t6
                  lbu        s1, -449(s4)
                  lbu        s6, -419(s4)
                  lui        a7, 218247
                  lbu        s0, -114(s4)
                  lb         gp, -359(s4)
                  sb         a7, -83(s4)
                  mul        tp, t2, s6
                  mulhu      a3, t4, a5
                  c.and      s0, s0
                  csrrc      t2, 0x340, s10
                  csrrc      s6, 0x340, zero
                  lb         a6, -235(s4)
                  lb         t2, -443(s4)
                  lbu        a5, -97(s4) #end riscv_load_store_rand_instr_stream_2
main_12:          jal        t1, 7f
0:                jal        s2, 14f
1:                c.j        12f
2:                jal        gp, 6f
3:                c.jal      16f
4:                c.j        9f
5:                jal        a5, 3b
6:                jal        t1, 13f
7:                c.j        11f
8:                c.jal      10f
9:                jal        ra, 5b
10:               jal        t1, 15f
11:               jal        t1, 1b
12:               jal        s6, 2b
13:               c.jal      8b
14:               jal        ra, 4b
15:               jal        ra, 0b
16:               c.j        17f
17:               addi       t3, a2, -172
                  la         t5, region_0+3179 #start load_store_instr_stream_0
                  la         ra, region_4+2175 #start load_store_instr_stream_3
                  la         s5, region_3+348 #start load_store_instr_stream_1
                  la         a6, region_2+7253 #start load_store_instr_stream_2
                  sh         a7, 6(s5)
                  lbu        t1, -979(ra)
                  sb         t4, 0(a6)
                  sh         a0, -7(t5)
                  sh         s10, -381(ra)
                  lb         t0, 23(a6)
                  lbu        gp, 746(ra)
                  lb         s10, -56(s5)
                  sh         a3, 11(t5)
                  lh         a3, 3(t5)
                  lb         a3, -1085(ra)
                  sb         t0, -6(t5)
                  lbu        a3, -37(s5)
                  lb         s4, 16(t5)
                  lh         t4, -677(ra)
                  lhu        t4, 42(s5)
                  lbu        a1, -6(t5)
                  lbu        a5, 62(a6)
                  lh         gp, -8(s5)
                  lbu        t4, 2(t5)
                  lb         t0, -1366(ra) #end load_store_instr_stream_3
                  lh         s4, 13(a6)
                  lhu        s11, -43(a6) #end load_store_instr_stream_2
                  lhu        t4, 2(s5) #end load_store_instr_stream_1
                  lh         a3, -13(t5) #end load_store_instr_stream_0
                  addi       t4, zero, 10 #init loop 0 counter
                  c.srli     a1, 7
                  nop
                  ori        zero, gp, 925
                  sra        s10, s4, s2
                  mulhsu     s2, s4, gp
                  addi       s8, zero, 9 #init loop 0 limit
                  csrrw      tp, 0x340, a2
                  add        gp, sp, s10
                  mulh       s9, a0, sp
main_36_0_t:      c.xor      s0, a5
                  div        s5, a3, a4
                  c.addi16sp sp, -16
                  addi       t4, t4, -8 #update loop 0 counter
                  nop
                  c.sub      s0, a3
                  c.srai     s1, 10
                  c.nop
                  mul        s6, s6, gp
                  lui        gp, 783341
                  mul        s11, s0, a3
                  addi       s1, a3, 264
                  bgeu       t4, s8, main_36_0_t #branch for loop 0
                  c.nop
                  la         t4, region_0+2327 #start load_store_instr_stream_0
                  la         a3, region_2+1899 #start load_store_instr_stream_1
                  lb         s3, -40(a3)
                  lh         s8, -3(a3)
                  sb         ra, 3(t4)
                  sb         s9, -22(a3)
                  lb         s9, 5(t4)
                  lbu        s5, -42(a3)
                  lb         a1, -3(t4)
                  lh         s2, 5(t4)
                  sh         s2, -1(t4)
                  sh         t0, -9(a3)
                  lbu        zero, 55(a3)
                  lbu        s4, 12(t4)
                  lbu        s3, -20(a3)
                  lbu        a2, -2(a3)
                  lbu        s0, 12(t4)
                  lb         t3, -64(a3)
                  lh         a7, 13(t4)
                  sb         s7, 55(a3) #end load_store_instr_stream_1
                  lbu        sp, 11(t4) #end load_store_instr_stream_0
main_10:          jal        t1, 11f
0:                jal        ra, 1f
1:                c.j        2f
2:                c.jal      3f
3:                jal        ra, 12f
4:                c.j        6f
5:                c.jal      7f
6:                jal        ra, 8f
7:                c.j        10f
8:                c.j        5b
9:                c.j        0b
10:               c.j        9b
11:               c.jal      4b
12:               remu       t2, s3, t5
                  la         a3, region_0+2203 #start riscv_load_store_rand_instr_stream_1
                  csrrwi     gp, 0x340, 18
                  divu       s5, t3, ra
                  slt        t3, tp, s7
                  sll        s9, a0, a0
                  sb         s4, 3(a3)
                  .4byte 0x00100073 # ebreak
                  lbu        s4, -13(a3)
                  lh         t4, 11(a3)
                  lw         s9, -7(a3)
                  lbu        s3, -12(a3)
                  slt        s5, t2, a7
                  sh         s0, 7(a3)
                  lb         t3, -14(a3)
                  sb         t3, -6(a3)
                  mulhu      t3, a4, s3
                  sb         t0, 0(a3)
                  lb         t2, -13(a3)
                  sb         s6, 0(a3)
                  lbu        t4, -14(a3)
                  lb         ra, 9(a3)
                  mul        a6, a6, s2
                  c.add      t5, a5
                  .4byte 0x00100073 # ebreak
                  sra        a6, a1, sp
                  lui        s7, 600654
                  mulh       zero, t5, a1
                  lbu        zero, 14(a3)
                  lhu        t1, -5(a3)
                  sll        s10, a6, s11
                  lb         tp, 6(a3)
                  lw         s7, -3(a3)
                  divu       a6, a4, s4
                  lbu        ra, -5(a3)
                  sb         a6, 0(a3)
                  or         t4, s1, a2
                  lbu        t2, 0(a3)
                  c.sub      a1, a2
                  lbu        zero, -6(a3)
                  sb         s10, 8(a3)
                  sb         s2, 14(a3)
                  lw         s6, -7(a3)
                  lbu        tp, 8(a3)
                  lb         sp, -14(a3)
                  sh         s5, -11(a3) #end riscv_load_store_rand_instr_stream_1
                  la         t5, region_2+7154 #start load_store_instr_stream_3
                  la         s2, region_2+1761 #start load_store_instr_stream_2
                  la         a1, region_2+6811 #start load_store_instr_stream_1
                  lb         s7, 9(t5)
                  la         a2, region_2+1816 #start load_store_instr_stream_0
                  lh         sp, 46(a2)
                  lbu        t2, 1244(s2)
                  sw         gp, 2(t5)
                  lhu        tp, 469(s2)
                  lw         t3, -40(a2)
                  lbu        s3, 212(a1)
                  sb         t6, -2(a2)
                  sb         t3, -900(s2)
                  lb         s7, -31(a2)
                  lb         t2, -20(a2)
                  lhu        s9, -2(t5)
                  sb         s1, -11(a2)
                  lbu        sp, 8(t5)
                  lbu        s6, 967(s2)
                  lh         a5, -8(t5)
                  lb         s7, -33(a2)
                  lb         zero, 1355(a1)
                  lbu        sp, -10(t5)
                  lbu        s9, 476(a1)
                  sb         t3, -33(a2)
                  sb         ra, -15(t5) #end load_store_instr_stream_3
                  sb         s3, 208(a1)
                  sb         t6, -1620(a1)
                  lbu        s6, -1758(a1) #end load_store_instr_stream_1
                  lbu        s5, 254(s2) #end load_store_instr_stream_2
                  sh         t2, 44(a2) #end load_store_instr_stream_0
                  la         s4, region_0+114 #start load_store_instr_stream_3
                  lb         s2, 53(s4)
                  la         t1, region_1+10861 #start load_store_instr_stream_0
                  la         s1, region_2+1571 #start load_store_instr_stream_4
                  lbu        t5, 17(s4)
                  sh         s11, 54(s4)
                  lb         t4, -224(t1)
                  lbu        gp, 1782(s1)
                  lw         tp, 66(s4)
                  la         s3, region_3+95 #start load_store_instr_stream_2
                  lh         zero, 915(s1)
                  lbu        a2, 112(s3)
                  sb         t1, 3(s4)
                  sb         s2, 300(s3)
                  lbu        a3, 50(t1)
                  sb         s1, -1026(s1)
                  lb         s0, 93(s3)
                  lbu        ra, 1086(s1)
                  sb         s5, 0(s4)
                  la         s8, region_4+173 #start load_store_instr_stream_1
                  lb         s11, 186(s4)
                  sb         a6, -32(s8)
                  sb         tp, -254(t1)
                  lbu        gp, -14(s4)
                  sb         t5, -31(s4)
                  sb         t5, 201(t1)
                  lb         s9, 28(s8)
                  lb         t2, 134(t1)
                  lb         a5, -25(s8)
                  sb         a7, -10(s8)
                  lbu        t5, -358(s1)
                  lb         t4, 813(s1)
                  lb         ra, 46(s3)
                  lb         zero, 149(s3)
                  lhu        t0, 26(s4) #end load_store_instr_stream_3
                  lbu        a2, 77(t1)
                  lhu        t4, 313(s3)
                  lbu        a5, -39(s8)
                  lbu        s9, -61(s3) #end load_store_instr_stream_2
                  lbu        s9, -1226(s1)
                  lhu        s6, 21(s8) #end load_store_instr_stream_1
                  sb         gp, -130(t1)
                  sh         a7, 1515(s1) #end load_store_instr_stream_4
                  lb         a3, 176(t1) #end load_store_instr_stream_0
main_17:          jal        t1, 25f
0:                c.jal      12f
1:                c.j        0b
2:                c.j        9f
3:                c.j        8f
4:                c.jal      6f
5:                jal        ra, 2b
6:                c.j        20f
7:                c.jal      3b
8:                c.j        21f
9:                c.j        10f
10:               c.jal      18f
11:               jal        t1, 7b
12:               jal        ra, 19f
13:               jal        ra, 22f
14:               c.j        11b
15:               c.j        4b
16:               c.j        5b
17:               c.jal      14b
18:               jal        ra, 13b
19:               c.j        24f
20:               c.jal      26f
21:               c.j        1b
22:               c.jal      17b
23:               jal        t1, 16b
24:               c.j        15b
25:               c.jal      23b
26:               srai       s2, s4, 25
                  la         sp, region_0+383 #start riscv_hazard_instr_stream_1
                  c.and      a2, s1
                  lui        s4, 932329
                  xor        s4, s1, s4
                  sb         s1, 14(sp)
                  srl        a6, s4, a6
                  sll        s4, s4, s4
                  lhu        tp, -1(sp)
                  .4byte 0x00100073 # ebreak
                  sra        t2, t2, s1
                  ori        t2, t2, 266
                  sb         s1, 15(sp)
                  srai       tp, a6, 2
                  lbu        tp, 10(sp)
                  divu       s4, s1, a2
                  .4byte 0x00100073 # ebreak
                  lbu        a2, -14(sp)
                  csrrwi     s4, 0x340, 19
                  srl        tp, t2, t2
                  sh         a6, -9(sp)
                  mulhsu     a2, t2, a2
                  sb         tp, -6(sp)
                  c.or       s1, a2
                  csrrs      s1, 0x340, tp
                  lh         a2, -1(sp)
                  c.ebreak;c.nop;
                  c.srai     s1, 27
                  lhu        tp, 15(sp)
                  lb         t2, -1(sp)
                  c.add      a6, tp
                  sb         s4, 12(sp)
                  lb         t2, -7(sp)
                  lb         tp, 10(sp)
                  add        a6, a6, s1
                  andi       s1, a6, -271
                  sub        s1, s1, tp
                  lh         a2, -13(sp)
                  lb         a2, -3(sp)
                  c.li       a6, -1
                  sh         t2, 11(sp)
                  lb         s1, -14(sp)
                  lb         s4, -12(sp)
                  lbu        a6, -13(sp) #end riscv_hazard_instr_stream_1
                  la         a5, region_3+415 #start load_store_instr_stream_1
                  la         a7, region_3+401 #start load_store_instr_stream_0
                  lb         t5, 24(a5)
                  la         s2, region_3+507 #start load_store_instr_stream_3
                  sb         t4, -316(s2)
                  sb         a2, -4(a7)
                  la         a6, region_3+352 #start load_store_instr_stream_2
                  lbu        t1, -95(s2)
                  lbu        a2, -2(a7)
                  lh         t4, -133(s2)
                  lhu        zero, -495(s2)
                  lb         s0, -64(a5)
                  sb         a5, -386(s2)
                  sb         gp, 15(a6)
                  sb         ra, 3(a6)
                  lbu        t1, -199(s2)
                  lb         s6, -5(a7)
                  sw         t5, -23(a5)
                  sb         a5, 2(a7)
                  lb         a2, 3(a6)
                  lb         t2, -139(s2) #end load_store_instr_stream_3
                  sh         s11, -8(a6)
                  sh         s10, 2(a6)
                  lhu        s5, 41(a5)
                  sb         gp, 10(a6)
                  lw         tp, 0(a6)
                  lw         s10, 11(a7)
                  sh         s3, 16(a6)
                  lb         a1, -60(a5)
                  sb         a1, -2(a7)
                  lb         sp, -2(a6) #end load_store_instr_stream_2
                  lbu        gp, -9(a5) #end load_store_instr_stream_1
                  sb         a3, -16(a7) #end load_store_instr_stream_0
                  la         t5, region_1+284 #start load_store_instr_stream_0
                  la         gp, region_1+5902 #start load_store_instr_stream_1
                  lhu        s6, -8(gp)
                  lb         s6, 608(t5)
                  sb         s3, -11(gp)
                  lbu        s11, -3(gp)
                  lb         tp, 1091(t5)
                  sb         s6, -1(gp)
                  lbu        s7, 890(t5)
                  sb         s8, -5(gp)
                  lhu        a5, 788(t5)
                  lb         s2, 1125(t5)
                  lb         a6, 15(gp) #end load_store_instr_stream_1
                  lb         s9, 1173(t5)
                  sb         a1, -265(t5)
                  lbu        t4, 1178(t5) #end load_store_instr_stream_0
                  la         s7, region_3+373 #start riscv_hazard_instr_stream_8
                  .4byte 0x00100073 # ebreak
                  sll        s1, s6, s10
                  lbu        s10, -10(s7)
                  lb         s1, -8(s7)
                  fence.i
                  auipc      s10, 52202
                  xor        t2, s1, s1
                  sb         s10, -2(s7)
                  andi       s2, s1, 726
                  csrrs      t3, 0x340, s10
                  lhu        s10, 9(s7)
                  c.mv       t2, t3
                  slti       s1, t3, 756
                  divu       s1, s1, s10
                  fence
                  fence
                  c.add      t2, s10
                  mulh       s10, s10, s1
                  sb         s6, 2(s7)
                  xori       t3, s10, -99
                  mulhsu     t2, s2, s10
                  addi       s1, t2, 301
                  srai       t3, s1, 8
                  lh         s6, 5(s7)
                  lbu        t3, 3(s7)
                  ori        t3, s2, 358
                  lhu        t2, 15(s7)
                  andi       s6, t2, -78
                  lhu        t3, 9(s7)
                  sub        s1, s2, t3
                  lh         s10, 13(s7)
                  xor        t3, s6, t3
                  c.sub      s1, s1
                  and        s1, s6, s1
                  csrrwi     s1, 0x340, 5
                  c.srai     s1, 20
                  slt        s2, s1, s1
                  csrrw      t2, 0x340, s2
                  mulh       t3, s1, t2
                  lhu        t2, 9(s7) #end riscv_hazard_instr_stream_8
                  la         a7, region_3+21 #start riscv_hazard_instr_stream_7
                  andi       a3, a3, -274
                  c.addi     sp, -1
                  slti       t0, a3, -463
                  nop
                  c.ebreak;c.nop;
                  lbu        s9, 194(a7)
                  lhu        s11, 45(a7)
                  nop
                  sb         a3, 172(a7)
                  lh         sp, 133(a7)
                  c.and      a1, a1
                  addi       a1, t0, -35
                  andi       sp, t0, -162
                  lhu        s9, 165(a7)
                  c.and      a1, a3
                  csrrwi     a3, 0x340, 6
                  lhu        a1, 21(a7)
                  sra        a1, t0, a1
                  csrrci     a1, 0x340, 7
                  xori       a3, sp, 236
                  c.srli     a1, 18
                  c.srai     a3, 18
                  lb         s11, 254(a7)
                  lh         sp, 11(a7)
                  mulh       sp, s11, s11
                  lb         s11, 45(a7)
                  sltu       t0, a3, sp
                  lhu        s9, 121(a7)
                  c.andi     a1, 21
                  c.li       a3, 15
                  csrrwi     s11, 0x340, 23
                  sltiu      t0, s11, 534
                  sb         s11, 84(a7)
                  sb         sp, 104(a7)
                  sh         sp, 217(a7)
                  sb         sp, 88(a7)
                  c.addi16sp sp, 336
                  lb         a3, 157(a7)
                  lh         t0, 43(a7)
                  divu       t0, a1, a1
                  lh         sp, 187(a7)
                  lb         s11, 228(a7)
                  sh         s11, 231(a7)
                  c.add      s11, t0
                  c.srli     a1, 9
                  sb         t0, 184(a7)
                  sb         s11, 122(a7)
                  srai       s9, a3, 2
                  lhu        s9, 161(a7)
                  lbu        t0, 210(a7) #end riscv_hazard_instr_stream_7
                  la         t1, region_3+15 #start load_store_instr_stream_1
                  la         t5, region_3+411 #start load_store_instr_stream_0
                  sb         tp, -262(t5)
                  lw         s1, -259(t5)
                  sb         zero, 104(t1)
                  lb         s6, -232(t5)
                  sh         a6, -401(t5)
                  sh         s3, 235(t1)
                  lb         s4, 86(t1)
                  lb         s1, -124(t5)
                  lb         zero, -272(t5)
                  lhu        zero, 123(t1)
                  sb         zero, -188(t5)
                  lbu        s5, 86(t1)
                  lb         s5, -106(t5)
                  sw         s7, 109(t1)
                  sb         a4, 74(t1)
                  lb         s0, 97(t1)
                  lh         t2, -19(t5)
                  sh         s5, 111(t1) #end load_store_instr_stream_1
                  lhu        s4, -391(t5) #end load_store_instr_stream_0
main_14:          jal        t1, 0f
0:                c.j        6f
1:                c.jal      9f
2:                jal        ra, 11f
3:                c.jal      12f
4:                c.jal      3b
5:                c.jal      14f
6:                jal        t0, 4b
7:                c.j        8f
8:                c.j        13f
9:                jal        ra, 10f
10:               c.jal      2b
11:               c.j        5b
12:               jal        t1, 7b
13:               c.jal      1b
14:               mulhu      t2, s2, t6
                  la         sp, region_0+1383 #start riscv_load_store_rand_instr_stream_0
                  lbu        s0, 887(sp)
                  lbu        s10, 1600(sp)
                  sb         s11, 688(sp)
                  c.lui      s7, 24
                  lb         t2, -1078(sp)
                  srl        t2, s6, s11
                  lbu        s2, 362(sp)
                  lh         s6, 1941(sp)
                  slt        a5, s2, gp
                  lh         s2, -103(sp)
                  lh         s3, 333(sp)
                  sb         t0, -388(sp)
                  sb         a7, 1815(sp)
                  sb         s7, 1770(sp)
                  sra        a6, t0, sp
                  csrrs      ra, 0x340, t0
                  lw         s10, 885(sp)
                  c.lui      s9, 8
                  sb         s11, -546(sp)
                  lb         ra, 1384(sp)
                  c.li       t2, -1
                  xori       s8, a2, 787
                  lhu        a5, -563(sp)
                  lb         s3, 1312(sp)
                  srl        t0, s6, s0
                  csrrwi     a1, 0x340, 17
                  csrrci     s7, 0x340, 2
                  c.srli     s0, 13
                  lhu        a6, 749(sp)
                  lb         zero, 375(sp)
                  slt        s10, t3, s8
                  mulhsu     t3, zero, a4
                  lbu        s6, 1900(sp)
                  sb         sp, 242(sp)
                  csrrc      s11, 0x340, a2
                  lbu        t2, -920(sp)
                  lb         zero, 1572(sp)
                  sh         a5, -457(sp)
                  sh         t0, -833(sp)
                  sb         s9, -178(sp)
                  lb         t1, 633(sp) #end riscv_load_store_rand_instr_stream_0
                  addi       s11, zero, -9 #init loop 0 counter
                  csrrw      t3, 0x340, ra
                  div        t0, a1, a1
                  c.andi     s0, 16
                  csrrsi     t5, 0x340, 24
                  and        sp, t2, s11
                  lui        t0, 56325
                  c.addi16sp sp, -16
                  sll        t4, sp, s6
                  c.and      a1, a2
                  addi       s3, zero, 15 #init loop 0 limit
                  csrrs      t3, 0x340, tp
main_42_0_t:      add        s2, zero, a4
                  c.and      a5, a0
                  addi       s11, s11, 3 #update loop 0 counter
                  csrrs      t4, 0x340, s4
                  c.add      s0, t6
                  csrrs      a7, 0x340, s6
                  slli       s8, s4, 21
                  slt        a1, t6, a0
                  c.andi     a2, 21
                  bltu       s11, s3, main_42_0_t #branch for loop 0
                  xor        s1, t5, gp
                  la         s10, region_4+3078 #start riscv_load_store_rand_instr_stream_8
                  lbu        t5, -9(s10)
                  c.li       t4, -1
                  c.lui      t3, 26
                  csrrs      s1, 0x340, t5
                  lbu        s11, 0(s10)
                  lbu        a5, -11(s10)
                  lb         t3, 7(s10)
                  lhu        t1, 2(s10)
                  fence
                  sb         s4, 13(s10)
                  sh         tp, 4(s10)
                  .4byte 0x00100073 # ebreak
                  nop
                  and        t1, s6, s1
                  srl        zero, a4, a2
                  lhu        s11, -12(s10)
                  csrrwi     zero, 0x340, 29
                  lhu        s1, -4(s10)
                  slli       gp, a5, 3
                  csrrwi     a2, 0x340, 1
                  sb         s7, -1(s10)
                  lbu        a5, 9(s10)
                  lbu        s6, 3(s10)
                  lh         s8, 2(s10)
                  srli       s8, gp, 14
                  lb         s6, -11(s10)
                  fence
                  sh         s9, 12(s10)
                  c.srli     a5, 30
                  lb         a7, -16(s10)
                  slli       a6, a7, 10
                  lb         zero, -11(s10)
                  lbu        t0, -13(s10)
                  lbu        a7, -9(s10)
                  lbu        s7, 3(s10)
                  sh         s9, -16(s10)
                  sra        s11, s4, s7
                  lbu        tp, -9(s10)
                  lhu        s8, -14(s10)
                  lb         t5, 4(s10)
                  sb         zero, 3(s10)
                  lbu        a6, 11(s10)
                  sub        a1, a0, s6
                  mulh       a5, s6, t4
                  lb         zero, 16(s10)
                  ori        s2, a7, 584
                  lui        t1, 461322
                  c.lui      t1, 7
                  c.slli     t3, 15
                  c.ebreak;c.nop;
                  sw         a3, 2(s10)
                  sh         t1, 4(s10) #end riscv_load_store_rand_instr_stream_8
                  la         s1, region_3+114 #start load_store_instr_stream_2
                  lb         a7, -25(s1)
                  lhu        s3, -46(s1)
                  la         t3, region_3+385 #start load_store_instr_stream_3
                  la         a6, region_3+154 #start load_store_instr_stream_1
                  lbu        s5, 14(a6)
                  sb         s2, -250(t3)
                  lb         a2, 61(a6)
                  la         a3, region_3+78 #start load_store_instr_stream_0
                  sh         t5, 8(s1)
                  sb         s1, 41(a6)
                  sb         a5, -33(a6)
                  lb         sp, 52(a6)
                  lb         sp, -45(a3)
                  lb         s5, -175(t3)
                  sb         a0, 16(a6)
                  lb         s9, 37(s1)
                  lb         ra, -212(t3)
                  sb         gp, -47(t3)
                  lb         s0, -291(t3)
                  lb         t4, 63(a6)
                  lh         t0, 50(s1)
                  sb         a7, -267(t3)
                  sw         t4, 42(a6)
                  lbu        tp, -43(s1)
                  lbu        tp, -7(t3)
                  lhu        s3, 9(t3)
                  lh         s8, 2(a3)
                  lb         s6, -199(t3)
                  lbu        t0, -249(t3) #end load_store_instr_stream_3
                  lbu        s7, 41(s1) #end load_store_instr_stream_2
                  sb         t1, -51(a3)
                  lbu        s7, 32(a3)
                  lb         s7, 30(a6) #end load_store_instr_stream_1
                  sw         s6, -38(a3) #end load_store_instr_stream_0
                  lui        a3, 527729
                  csrrc      s0, 0x340, t6
                  sub        s1, s7, s0
                  auipc      s0, 639260
                  c.srai     a2, 16
                  slt        a3, gp, t2
                  remu       t0, t2, a2
                  srli       s1, s10, 20
                  mul        sp, t0, s7
                  mulhu      a7, s1, s0
                  c.bnez     a3, 13f
                  slli       s0, s0, 26
                  remu       s0, a3, s2
13:               add        a3, s2, a4
                  add        a6, gp, t4
                  and        s7, a0, a7
                  xor        s4, a6, s3
                  bne        s7, s4, 21f
                  andi       s2, s4, -752
                  beq        t5, s5, 39f
                  xori       s10, t3, 69
21:               c.lui      s9, 1
                  srli       s1, s0, 17
                  csrrwi     sp, 0x340, 15
                  c.or       s1, s1
                  mulh       s4, s8, s10
                  fence.i
                  blt        gp, s3, 33f
                  mulhsu     s1, ra, a4
                  .4byte 0x00100073 # ebreak
                  c.mv       s7, gp
                  mulhsu     s10, s1, a7
                  c.li       t3, 6
33:               xori       a5, s6, -261
                  csrrw      t2, 0x340, s3
                  fence.i
                  bge        tp, a6, 40f
                  c.and      a2, s0
                  mul        t2, gp, t4
39:               rem        s4, t6, t1
40:               mul        s3, t4, a7
                  divu       t3, t3, a4
                  c.addi     s4, 17
                  sll        s11, t5, s4
                  beq        t4, s7, 64f
                  sltu       a7, a4, sp
                  bne        a5, ra, 58f
                  slt        gp, s11, t6
                  mulhu      s11, t3, t3
                  c.addi16sp sp, -16
                  sll        s2, s1, a6
                  c.sub      s1, a5
                  csrrci     s7, 0x340, 0
                  c.li       a5, -1
                  remu       a3, s9, a6
                  slti       s4, t4, 71
                  add        t0, a2, s4
                  blt        s0, a7, 65f
58:               mulhu      a2, s7, t6
                  csrrci     t4, 0x340, 19
                  csrrs      t2, 0x340, s9
                  la         s2, sub_2
                  xor        s6, t3, t0
                  addi       s2, s2, 481
                  bge        s10, a2, j__main_sub_2_1 #branch to jump instr
                  c.andi     a1, -1
                  mulhsu     s3, s4, a5
j__main_sub_2_1:  jalr       t1, s2, -481
                  slti       a6, s3, -939
                  rem        a1, tp, a1
                  bge        s3, a1, 62f
62:               csrrci     sp, 0x340, 15
                  sub        t1, s10, s9
64:               mul        s11, t4, sp
65:               slt        a7, ra, a1
                  c.sub      s1, s0
                  rem        a2, s0, a5
                  fence.i
                  addi       zero, s9, -155
                  divu       a6, s6, s4
                  c.srai     s1, 3
                  sltu       s5, a6, ra
                  csrrsi     s10, 0x340, 4
                  rem        t1, a1, s4
                  sra        gp, tp, t4
                  bltu       s10, s5, 89f
                  div        a1, s1, s5
                  divu       s0, t4, gp
                  c.srli     a1, 29
                  csrrci     t5, 0x340, 27
                  remu       a5, a2, s9
                  sra        s10, t3, s7
                  or         s3, a1, a0
                  csrrci     t0, 0x340, 27
                  csrrsi     s7, 0x340, 29
                  fence
                  sltiu      s5, gp, -109
                  div        a2, a3, t4
89:               .4byte 0x00100073 # ebreak
                  c.xor      a1, a1
                  c.addi16sp sp, -16
                  slti       a7, s4, -773
                  lui        t2, 968691
                  sll        sp, s4, s7
                  mulhsu     a3, a0, t0
                  c.xor      s1, s1
                  ori        t0, ra, -21
                  srl        t5, s6, a5
                  and        a1, a4, s6
                  lui        gp, 202788
                  c.and      a3, a4
                  sltiu      a1, s2, 29
                  c.xor      a5, a4
                  c.bnez     a3, 123f
                  addi       s9, s10, 577
                  and        t0, tp, a3
                  rem        a3, t0, t4
                  srli       sp, s3, 7
                  csrrs      t0, 0x340, t1
                  addi       t3, t0, 521
                  srai       sp, s0, 26
                  divu       s3, s7, gp
                  c.addi16sp sp, 64
                  slli       s11, sp, 3
                  csrrs      sp, 0x340, t0
                  c.and      a1, a1
                  sll        t0, s5, s1
                  csrrs      s7, 0x340, s7
                  csrrwi     s8, 0x340, 28
                  sltu       s6, s6, a3
                  bltu       s1, t5, 127f
                  xor        s1, t3, a7
123:              fence.i
                  bgeu       t0, s4, 135f
                  rem        s4, gp, s1
                  mul        zero, tp, s1
127:              c.xor      a1, a2
                  srai       tp, t0, 11
                  xori       sp, s6, 213
                  csrrc      s6, 0x340, t0
                  c.addi16sp sp, -16
                  c.srli     a3, 27
                  divu       ra, s0, ra
                  csrrs      s3, 0x340, t1
135:              ori        s9, zero, -822
                  sll        sp, gp, a5
                  c.lui      t1, 12
                  fence
                  sub        a2, s7, s8
                  bge        t0, s2, 153f
                  nop
                  bgeu       a6, t5, 155f
                  csrrc      gp, 0x340, zero
                  csrrw      a6, 0x340, s6
                  c.addi     tp, -1
                  srl        a7, s7, s11
                  rem        s3, zero, ra
                  addi       s6, zero, -9 #init loop 0 counter
                  div        t2, s11, a1
                  addi       a5, zero, 19 #init loop 0 limit
                  lui        s11, 491777
                  remu       a7, s6, ra
                  mulhu      s0, sp, a4
                  auipc      t1, 187955
                  mulh       t0, a5, s0
                  remu       s1, a5, t5
                  c.add      a1, s3
                  srai       s4, gp, 19
                  sub        s0, s5, a5
main_38_0_t:      c.and      a3, s0
                  addi       s6, s6, 7 #update loop 0 counter
                  c.addi     s2, -1
                  rem        t4, a5, t0
                  addi       s11, t5, 397
                  bne        s6, a5, main_38_0_t #branch for loop 0
                  xor        a6, s8, s2
                  c.lui      s9, 11
                  lui        s9, 945658
                  and        t5, a1, s2
                  addi       s4, a4, -909
                  slti       t5, s10, 661
153:              csrrc      ra, 0x340, t1
                  ori        t3, a0, 490
155:              div        s5, t4, a5
                  nop
                  sra        t3, s7, s11
                  rem        t3, a1, a0
                  sll        t0, a6, tp
                  or         s7, gp, a2
                  c.or       a3, a4
                  fence
                  csrrc      t1, 0x340, s1
                  c.slli     t0, 18
                  c.andi     a1, -1
                  bne        t1, t6, 183f
                  mul        s0, a2, s9
                  c.srai     a2, 3
                  remu       s5, s1, t2
                  mulh       zero, a2, s4
                  sub        s7, a4, a2
                  bltu       s0, s8, 176f
                  c.and      a2, a5
                  csrrs      s7, 0x340, a6
                  c.xor      a1, s0
176:              srai       a3, s3, 24
                  sra        t4, s2, s8
                  xor        ra, s1, t0
                  c.and      s1, a3
                  divu       t5, t1, sp
                  c.addi     tp, -1
                  c.and      a2, a4
183:              c.li       s0, 29
                  la         s3, region_3+498 #start load_store_instr_stream_2
                  la         a6, region_4+1733 #start load_store_instr_stream_1
                  lbu        s1, -29(s3)
                  lbu        a1, 246(a6)
                  sb         t4, -487(s3)
                  la         t3, region_0+1901 #start load_store_instr_stream_3
                  la         t1, region_2+1678 #start load_store_instr_stream_0
                  lh         s0, -10(t1)
                  lb         s2, -494(s3)
                  lb         s8, 1406(t3)
                  lb         t4, -31(t1)
                  lbu        zero, 390(t3)
                  lbu        s0, -70(s3)
                  sh         t0, 54(t1)
                  lb         s1, 37(t1)
                  lb         s5, 1964(t3)
                  lbu        a5, -90(s3)
                  sb         s3, 3(t1)
                  lbu        zero, -148(s3)
                  lbu        s6, 88(a6)
                  lhu        s5, -643(t3)
                  lbu        a5, 195(a6)
                  lbu        s7, -37(s3)
                  lb         t5, -53(t1)
                  lbu        a5, -51(t1)
                  lbu        s10, 1498(t3)
                  lb         tp, -35(s3)
                  lh         s0, 27(a6)
                  lbu        t5, -510(t3)
                  sb         s4, -146(a6) #end load_store_instr_stream_1
                  lb         s11, 37(t1)
                  lh         s10, 1545(t3) #end load_store_instr_stream_3
                  sh         t3, -340(s3)
                  lhu        s2, -10(t1)
                  lhu        s7, -318(s3) #end load_store_instr_stream_2
                  lb         s10, -38(t1) #end load_store_instr_stream_0
                  c.andi     a3, 0
                  bgeu       t3, a3, 202f
                  mulhsu     tp, s7, zero
                  c.mv       a7, s3
                  csrrsi     t3, 0x340, 29
                  mulhu      t5, t2, t6
                  c.andi     a2, 17
                  c.xor      a5, s1
                  bge        a2, s2, 200f
                  csrrs      s3, 0x340, ra
                  and        gp, a1, s9
                  sra        t3, s3, s0
                  c.addi     a1, -1
                  addi       s7, a6, 760
                  c.srai     a1, 25
                  csrrwi     s7, 0x340, 26
200:              bgeu       a1, a6, 220f
                  c.srai     s1, 13
202:              c.and      s1, a4
                  mulh       tp, s3, t0
                  lui        t3, 623793
                  c.bnez     a5, 209f
                  c.andi     s0, -1
                  c.xor      s0, a5
                  bltu       a4, s2, 209f
209:              srli       t5, t1, 9
                  nop
                  and        t0, s0, a3
                  auipc      s2, 838902
                  c.or       a2, a0
                  sltiu      ra, a0, -988
                  add        ra, t1, a3
                  beq        s10, t5, 221f
                  mulh       a5, s3, zero
                  bltu       s6, s0, 223f
                  c.addi     s7, -1
220:              .4byte 0x00100073 # ebreak
221:              slt        a2, ra, s5
                  divu       s1, t0, s8
223:              rem        a7, zero, t5
                  bltu       zero, s8, 241f
                  csrrwi     a3, 0x340, 31
                  mulhu      s7, a2, tp
                  auipc      a1, 848843
                  beq        s10, ra, 230f
                  andi       s10, s0, -393
230:              or         s10, a0, s6
                  sll        sp, t0, t5
                  c.slli     tp, 9
                  c.xor      s0, a5
                  lui        gp, 503373
                  c.nop
                  ori        t5, s0, -854
                  c.mv       ra, s5
                  addi       s10, a6, -649
                  sra        s4, t6, s9
                  addi       s5, a7, 836
241:              csrrw      s9, 0x340, s0
                  sltiu      s0, t5, -295
                  lui        s8, 520092
                  c.xor      a5, s0
                  mulhu      a5, s2, s3
                  c.srai     a2, 6
                  c.mv       t1, t5
                  ori        t4, s1, 104
                  csrrwi     a7, 0x340, 4
                  xor        t5, gp, tp
                  rem        s10, tp, tp
                  c.sub      s1, a0
                  c.addi16sp sp, -16
                  lui        zero, 622128
                  lui        tp, 61331
                  c.srai     a3, 16
                  mulhu      a5, tp, s1
                  blt        tp, s10, 278f
                  lui        s8, 839373
                  c.beqz     s0, 270f
                  csrrc      a6, 0x340, s4
                  c.mv       t1, s5
                  and        s8, t4, s2
                  sra        s4, a2, t3
                  nop
                  div        zero, a2, s10
                  csrrci     a5, 0x340, 29
                  mulh       s8, s6, s1
                  sra        t5, a1, a3
270:              xori       s5, a0, -653
                  sltiu      a2, t2, 151
                  c.slli     a7, 22
                  c.sub      s0, a3
                  fence.i
                  mul        s8, a5, s0
                  c.beqz     s0, 283f
                  ori        t2, a4, 127
278:              add        a3, t0, t1
                  csrrsi     t0, 0x340, 17
                  c.or       s0, s0
                  div        s11, a6, s4
                  or         a2, s3, s4
283:              srai       s11, t1, 17
                  div        t2, s2, s1
                  .4byte 0x00100073 # ebreak
                  addi       a2, a4, -133
                  fence.i
                  c.nop
                  c.or       a2, a0
                  csrrc      s2, 0x340, s4
                  sltiu      s5, sp, 72
                  mul        a2, s7, s2
                  xori       a5, a5, 974
                  c.slli     s4, 31
                  sltiu      zero, s4, -416
                  c.add      gp, s4
                  c.bnez     a5, 310f
                  c.beqz     s1, 309f
                  ori        ra, a7, 769
                  div        t3, a5, t0
                  slt        t5, a5, s4
                  c.nop
                  xor        t5, s7, sp
                  c.li       t4, -1
                  c.beqz     s0, 322f
                  and        t5, s7, a5
                  c.ebreak;c.nop;
                  mulh       t4, ra, t5
309:              or         s9, s7, s5
310:              csrrs      s6, 0x340, t1
                  blt        s2, t3, 313f
                  beq        s1, s1, 318f
313:              bgeu       a6, s1, 321f
                  c.addi     s11, 16
                  mulhsu     ra, a3, s1
                  slti       ra, a1, -856
                  c.nop
318:              c.bnez     a1, 331f
                  c.xor      s0, a0
                  div        t2, a4, a1
321:              c.addi16sp sp, 240
322:              beq        a3, s9, 335f
                  andi       t1, a1, -744
                  c.beqz     a3, 336f
                  bgeu       a0, s2, 330f
                  c.xor      s0, a2
                  auipc      s3, 806150
                  c.or       a5, a0
                  bne        t5, a0, 333f
330:              fence.i
331:              c.ebreak;c.nop;
                  sra        s4, t1, s1
333:              srai       ra, a3, 8
                  lui        t5, 266457
335:              ori        t1, s10, 146
336:              c.li       s6, -1
                  c.or       a5, a2
                  bltu       a5, s9, 348f
                  or         s0, s6, s0
                  c.ebreak;c.nop;
                  ori        s10, t5, 448
                  nop
                  mul        a2, s5, sp
                  xor        t4, a7, s11
                  bne        a2, s8, 364f
                  c.or       s1, s0
                  csrrwi     t2, 0x340, 6
348:              addi       s10, t6, 295
                  c.beqz     s1, 366f
                  c.sub      a5, a0
                  fence
                  c.add      t3, a0
                  csrrc      sp, 0x340, tp
                  mulh       t3, t5, s8
                  add        s6, s0, a5
                  andi       gp, s7, 322
                  csrrw      s0, 0x340, t0
                  bgeu       s5, sp, 359f
359:              c.and      s1, a2
                  csrrs      s2, 0x340, sp
                  bltu       t2, s0, 381f
                  and        a2, a2, a6
                  csrrw      s6, 0x340, s5
364:              c.lui      a5, 23
                  fence.i
366:              c.lui      a2, 4
                  sll        s8, a5, s2
                  mulhu      a1, s7, a1
                  la         t5, sub_2
                  slli       s10, zero, 20
                  sltu       s4, s10, t5
                  mulhsu     t0, t6, t6
                  csrrc      a7, 0x340, t1
                  csrrw      a2, 0x340, a4
                  xor        a5, s4, t6
                  addi       t5, t5, -391
                  c.xor      s1, a3
                  c.addi     a2, -1
                  slti       s8, t6, 670
j__main_sub_2_3:  jalr       t1, t5, 391
                  remu       tp, s4, s3
                  mulh       a6, s6, s8
                  c.lui      a2, 27
                  c.sub      s1, s1
                  c.and      a2, s0
                  csrrci     s6, 0x340, 9
                  bltu       a1, s4, 380f
                  auipc      s3, 773268
                  c.bnez     a1, 380f
                  div        ra, a2, s7
                  remu       t1, sp, a3
                  c.xor      a5, a0
380:              bltu       t4, s5, 384f
381:              .4byte 0x00100073 # ebreak
                  c.mv       s7, s11
                  c.xor      a1, a2
384:              mulhu      a5, s11, ra
                  c.sub      a3, s0
                  c.nop
                  c.li       t1, -1
                  c.li       t5, -1
                  or         a3, s3, s10
                  fence.i
                  sra        sp, t4, s2
                  sltu       s11, s6, a1
                  sltu       a3, gp, s4
                  sll        s2, s7, t2
                  bgeu       a0, a0, 408f
                  srai       t0, a6, 0
                  addi       s10, a6, 998
                  csrrw      s4, 0x340, s4
                  csrrs      a7, 0x340, s7
                  bge        t5, s8, 408f
                  slli       t1, s10, 19
                  c.nop
                  mul        s4, t3, s8
                  fence.i
                  mulhsu     a1, gp, a7
                  c.sub      a1, a2
                  bne        a2, s10, 412f
408:              sltiu      sp, a5, 237
                  c.sub      a3, s1
                  .4byte 0x00100073 # ebreak
                  csrrw      t1, 0x340, zero
412:              mulh       a1, gp, ra
                  c.addi16sp sp, 176
                  mulhu      a1, sp, t5
                  c.li       t1, -1
                  c.or       s0, a2
                  nop
                  blt        sp, a7, 425f
                  auipc      t3, 440185
                  bne        s3, a5, 423f
                  c.li       s11, -1
                  c.or       a1, a3
423:              c.nop
                  sub        s3, a1, sp
425:              slti       zero, s10, -1005
                  c.srai     a2, 8
                  ori        s6, s3, 687
                  and        s11, s6, s5
                  sltiu      s10, a1, -270
                  xori       a2, a5, -514
                  c.lui      s2, 19
                  mulh       s0, a7, a6
                  mulhu      s1, a6, t3
                  csrrci     t0, 0x340, 18
                  divu       s2, a3, gp
                  lui        a7, 317286
                  and        ra, sp, t6
                  c.slli     s6, 8
                  c.nop
                  addi       a6, t0, 765
                  slli       sp, t5, 11
                  slti       t4, s7, -652
                  csrrw      s0, 0x340, s7
                  sub        sp, s0, a3
                  slti       t4, t0, 758
                  sltiu      a6, zero, 519
                  remu       sp, a5, zero
                  add        s5, s0, a6
                  csrrc      gp, 0x340, s9
                  slli       s2, sp, 8
                  csrrs      t4, 0x340, s10
                  csrrc      s2, 0x340, s6
                  c.sub      s0, s0
                  c.nop
                  addi       s0, t3, -390
                  c.addi     t0, 26
                  csrrwi     s0, 0x340, 16
                  sltu       a5, s1, a7
                  c.and      a2, s0
                  srl        s0, t3, a0
                  lui        s3, 48755
                  slti       t1, s9, 562
                  c.mv       t0, s4
                  blt        a3, a6, 484f
                  srli       a6, s4, 12
                  c.ebreak;c.nop;
                  c.srai     a3, 20
                  addi       s11, s6, -354
                  c.srli     a5, 10
                  csrrwi     t2, 0x340, 20
                  c.slli     a2, 10
                  addi       t0, tp, 961
                  auipc      s8, 884138
                  nop
                  bge        t2, s8, 479f
                  mulh       gp, zero, a7
                  addi       s7, a7, -33
                  mulhu      a3, s0, a4
479:              bgeu       t3, s9, 480f
480:              addi       a7, s4, 387
                  rem        a2, a0, s4
                  srai       a2, t1, 24
                  c.srai     s1, 19
484:              mul        tp, zero, t4
                  c.slli     s5, 5
                  c.nop
                  mulhu      t0, a2, ra
                  srai       t0, t3, 18
                  andi       s8, s10, -838
                  srli       s10, s4, 19
                  add        t5, s11, s9
                  csrrsi     s8, 0x340, 8
                  csrrsi     t0, 0x340, 1
                  c.and      a3, s1
                  div        s3, t5, tp
                  lui        s3, 767552
                  bne        a2, a3, 517f
                  csrrs      s4, 0x340, s7
                  bgeu       t6, a6, 516f
                  c.beqz     s0, 513f
                  fence
                  divu       s6, a5, s9
                  sra        a7, gp, s8
                  rem        s1, t5, t4
                  c.sub      s0, s1
                  c.srli     s0, 14
                  c.srli     a2, 20
                  sra        s4, s11, a4
                  csrrsi     t1, 0x340, 11
                  mulhsu     s5, a4, gp
                  xor        s11, s5, t3
                  c.srli     a2, 26
513:              c.addi     t3, 4
                  c.lui      t2, 3
                  mulhsu     s2, t0, s3
516:              c.lui      ra, 8
517:              c.or       a5, a2
                  sll        t4, a6, a2
                  slti       s11, t5, -871
                  c.slli     a6, 2
                  bltu       t6, t6, 541f
                  c.and      s1, a0
                  nop
                  bne        s4, s0, 537f
                  divu       s6, t0, a7
                  srai       s2, gp, 9
                  blt        tp, s2, 547f
                  c.srli     s0, 29
                  csrrw      s5, 0x340, t2
                  beq        s10, s0, 531f
531:              c.and      a3, s1
                  mulh       a1, zero, ra
                  c.ebreak;c.nop;
                  add        s11, ra, a3
                  c.srli     a2, 11
                  xori       sp, a1, 557
537:              and        ra, sp, a3
                  lui        s5, 249607
                  divu       tp, a1, s9
                  sll        sp, s5, s5
541:              fence
                  div        s1, s7, ra
                  slt        t4, s10, s2
                  ori        a2, a1, -339
                  slti       s3, s6, 244
                  c.beqz     a3, 550f
547:              or         s10, gp, s4
                  c.slli     s2, 23
                  srli       s3, ra, 25
550:              xor        t3, t3, t4
                  c.srai     a3, 19
                  c.or       s0, s1
                  c.lui      a6, 7
                  add        t3, t3, t5
                  c.addi     s5, -1
                  srai       s3, a2, 20
                  c.li       s11, 23
                  xor        s4, a1, a5
                  c.sub      a2, a1
                  srl        s4, s6, t0
                  mulhu      s6, t2, s10
                  bltu       s10, t5, 568f
                  remu       s8, s7, a5
                  c.li       s6, 0
                  auipc      a5, 118994
                  srl        t4, a2, t4
                  andi       s9, s5, 989
568:              blt        a4, t5, 576f
                  csrrw      gp, 0x340, s5
                  la         s0, region_3+320 #start load_store_instr_stream_1
                  la         t4, region_3+277 #start load_store_instr_stream_2
                  sb         s8, 45(s0)
                  la         t2, region_3+390 #start load_store_instr_stream_3
                  sb         a3, 188(t4)
                  la         t1, region_3+380 #start load_store_instr_stream_0
                  lbu        s6, 47(s0)
                  lb         t0, -108(t4)
                  lb         tp, 38(s0)
                  sb         a2, 85(t4)
                  lh         t5, 77(t4)
                  sb         s1, 60(t2)
                  sb         ra, 98(t1)
                  lbu        a2, -227(t4)
                  c.sw       a0, 32(s0)
                  lb         gp, 196(t4)
                  sb         s5, -1(s0)
                  lbu        a2, 12(s0)
                  sb         s4, -111(t4)
                  lb         s2, -221(t1)
                  lb         s8, -24(t2)
                  lh         a7, -234(t1)
                  sb         s10, 0(t2)
                  lbu        a6, 61(s0)
                  sb         s7, -23(t1)
                  lbu        gp, -27(t2)
                  lh         s5, 41(t4) #end load_store_instr_stream_2
                  sb         s3, -15(s0)
                  sb         zero, -39(s0) #end load_store_instr_stream_1
                  sb         s1, -41(t2) #end load_store_instr_stream_3
                  sb         sp, -225(t1) #end load_store_instr_stream_0
                  or         s7, s0, s4
                  divu       a1, s0, s10
                  bge        zero, s9, 589f
                  or         s4, t0, t0
                  addi       a7, t0, -104
                  c.nop
576:              c.ebreak;c.nop;
                  sra        a7, s1, a5
                  c.li       s6, -1
                  c.addi16sp sp, 96
                  xori       t0, t1, -139
                  sll        s5, t0, s3
                  fence.i
                  c.srai     a5, 12
                  bltu       t3, s5, 595f
                  slli       t4, s5, 3
                  c.srai     a3, 23
                  xor        s8, t3, a4
                  bge        s8, t3, 600f
589:              and        a2, a6, tp
                  srli       t3, a7, 4
                  csrrci     t0, 0x340, 12
                  andi       sp, tp, -600
                  addi       s5, s2, 925
                  c.ebreak;c.nop;
595:              sub        s7, s5, s10
                  bne        t1, a2, 603f
                  blt        a1, s10, 599f
                  nop
599:              sub        zero, a2, a2
600:              c.bnez     a1, 605f
                  andi       s3, s4, -577
                  lui        t1, 854659
603:              div        s2, s0, a7
                  andi       s7, t5, 719
605:              bne        a2, zero, 625f
                  addi       a6, sp, -577
                  c.xor      a2, s1
                  c.slli     t0, 4
                  beq        a4, s11, 612f
                  add        a2, t2, a2
                  add        s8, t3, ra
612:              sltu       a2, s9, t0
                  sltu       a6, a0, ra
                  csrrc      t5, 0x340, ra
                  slt        s5, s8, t2
                  csrrw      s4, 0x340, s0
                  mul        s6, ra, s2
                  c.beqz     s1, 631f
                  c.srli     a2, 4
                  or         t3, a1, a4
                  div        a3, s10, t4
                  csrrw      s11, 0x340, ra
                  blt        s6, a1, 643f
                  mul        sp, t5, t3
625:              nop
                  beq        a5, t6, 632f
                  csrrsi     ra, 0x340, 25
                  c.and      a2, s1
                  srli       zero, tp, 4
                  c.andi     a5, 31
631:              sub        s1, t1, s0
632:              c.bnez     s0, 633f
633:              andi       t5, s8, 413
                  and        tp, s4, t0
                  slti       s10, sp, 634
                  xori       a7, a3, 939
                  addi       a6, s1, 606
                  c.ebreak;c.nop;
                  c.beqz     a1, 656f
                  sltiu      zero, s3, -271
                  csrrc      a7, 0x340, ra
                  c.addi     a2, 10
643:              bgeu       s3, ra, 647f
                  c.mv       t4, s1
                  c.xor      s0, a0
                  sltiu      a6, a0, 342
647:              auipc      t4, 1021355
                  sltu       a2, s3, a2
                  fence.i
                  mulhu      s1, ra, t2
                  or         t0, s3, a3
                  mulhsu     s9, s9, s2
                  csrrw      tp, 0x340, s6
                  csrrwi     t2, 0x340, 2
                  div        a7, a0, s2
656:              bltu       s8, s5, 673f
                  csrrw      t2, 0x340, a6
                  c.nop
                  c.srai     a3, 22
                  mulh       s1, s3, t3
                  c.add      t3, a4
                  sub        t5, t1, s7
                  c.lui      a6, 17
                  div        a6, s7, s10
                  c.lui      s6, 14
                  ori        t5, s2, -545
                  c.srai     a1, 4
                  mulhsu     s11, sp, tp
                  andi       t3, a3, -869
                  c.andi     s1, 25
                  c.beqz     a5, 684f
                  c.srli     a3, 6
673:              add        a1, gp, a2
                  bgeu       a3, t6, 693f
                  csrrc      s0, 0x340, ra
                  srai       gp, s6, 24
                  or         s0, s4, ra
                  add        t5, s2, s4
                  csrrs      s5, 0x340, s4
                  c.srli     a2, 26
                  csrrsi     a5, 0x340, 14
                  bge        t1, sp, 695f
                  c.addi     t0, -1
684:              or         t5, a2, s4
                  bne        t6, t2, 693f
                  sltiu      a5, s1, -247
                  bge        a0, s1, 691f
                  bgeu       s7, a0, 693f
                  csrrci     t1, 0x340, 30
                  c.add      t3, s8
691:              c.lui      a2, 3
                  bltu       t4, s5, 712f
693:              or         a2, zero, t1
                  c.and      a2, a5
695:              ori        t4, s7, 549
                  c.sub      s0, a1
                  andi       s5, t4, 842
                  c.ebreak;c.nop;
                  c.srli     a3, 6
                  csrrsi     s6, 0x340, 30
                  bgeu       gp, a1, 705f
                  c.bnez     s0, 712f
                  srli       a7, t5, 11
                  blt        a5, a0, 708f
705:              c.ebreak;c.nop;
                  mulhsu     a5, sp, a7
                  remu       a2, s6, t6
708:              or         s9, t2, a7
                  or         t5, s6, a0
                  xori       s9, s2, 830
                  blt        s8, s1, 731f
712:              sra        s7, s8, a0
                  csrrsi     s11, 0x340, 7
                  blt        t1, s4, 733f
                  c.bnez     s1, 732f
                  srai       s4, ra, 13
                  sub        a7, s2, s5
                  csrrw      s3, 0x340, t0
                  c.ebreak;c.nop;
                  c.mv       s10, s7
                  div        s11, a7, s9
                  c.sub      a1, s0
                  c.mv       s11, s10
                  c.add      s3, tp
                  nop
                  nop
                  c.mv       s11, s5
                  xor        s8, sp, t2
                  addi       a1, a5, 740
                  csrrwi     s2, 0x340, 1
731:              c.bnez     s0, 738f
732:              xori       a5, s11, 43
733:              remu       a7, t4, s8
                  bne        s2, a2, 738f
                  sub        t5, s10, s1
                  slt        zero, s7, t0
                  csrrsi     s8, 0x340, 7
738:              divu       s11, tp, a0
                  c.mv       s5, t1
                  c.xor      a2, a5
                  c.and      s0, a4
                  c.bnez     a2, 753f
                  mulh       a2, s0, tp
                  srai       tp, tp, 20
                  c.nop
                  divu       gp, s11, s5
                  c.lui      s3, 22
                  c.ebreak;c.nop;
                  nop
                  lui        s9, 316551
                  c.srli     a3, 31
                  lui        a2, 751206
753:              remu       tp, a1, t4
                  c.addi     tp, 2
                  c.ebreak;c.nop;
                  csrrsi     s9, 0x340, 28
                  sltiu      s7, t5, -717
                  xori       a7, t2, -64
                  .4byte 0x00100073 # ebreak
                  lui        s1, 803868
                  c.addi     t0, -1
                  slli       t3, t3, 3
                  blt        gp, s6, 767f
                  fence
                  auipc      a7, 682553
                  mulhsu     s4, t5, s2
767:              c.beqz     a5, 780f
                  c.sub      a3, s0
                  divu       t3, s3, t2
                  rem        t5, a7, t0
                  nop
                  blt        s8, s9, 784f
                  slti       a5, gp, -414
                  div        t0, t6, a5
                  srli       gp, a3, 18
                  bge        t4, s2, 796f
                  slti       a6, s10, 572
                  c.srai     a1, 25
                  nop
780:              sub        t2, a2, a1
                  bge        s5, zero, 787f
                  fence
                  c.srai     s0, 21
784:              c.li       s4, 4
                  c.xor      a5, s1
                  .4byte 0x00100073 # ebreak
787:              bgeu       zero, gp, 804f
                  srl        a7, t4, a6
                  fence.i
                  auipc      tp, 381934
                  .4byte 0x00100073 # ebreak
                  beq        s10, s5, 794f
                  bge        t4, a4, 803f
794:              bltu       ra, t4, 799f
                  auipc      a5, 414858
796:              csrrw      s10, 0x340, s9
                  c.lui      s6, 6
                  c.lui      t1, 14
799:              fence.i
                  nop
                  mulhsu     s11, zero, tp
                  c.bnez     a2, 810f
803:              mulhsu     s6, s9, tp
804:              slti       s0, t0, -1016
                  csrrw      s8, 0x340, t1
                  div        s8, gp, zero
                  mulhu      s0, a4, s6
                  div        a7, t1, sp
                  c.or       a2, a0
810:              csrrs      t4, 0x340, s6
                  csrrw      s10, 0x340, t5
                  c.slli     a1, 12
                  c.xor      a3, a3
                  div        t5, a3, a1
                  c.or       a1, a3
                  c.add      s6, t1
                  .4byte 0x00100073 # ebreak
                  la         gp, region_2+7249 #start riscv_load_store_rand_instr_stream_3
                  lb         a1, 799(gp)
                  remu       t3, t0, s1
                  sltu       t4, a0, t0
                  sra        t1, a3, t0
                  c.nop
                  lw         t4, -53(gp)
                  c.sub      s1, a4
                  csrrc      t2, 0x340, s7
                  lhu        t4, -383(gp)
                  sb         t6, 737(gp)
                  lb         a3, -1324(gp)
                  sb         s8, -1992(gp)
                  lh         s6, -523(gp)
                  sll        a1, ra, t2
                  lb         t4, 654(gp)
                  sb         a1, 668(gp)
                  c.ebreak;c.nop;
                  c.slli     s4, 1
                  lb         a1, -104(gp)
                  c.mv       s5, a6
                  div        a1, s9, s4
                  c.slli     a1, 7
                  fence.i
                  sltiu      s10, t2, -492
                  sra        s10, s3, a4
                  lbu        s3, -208(gp)
                  or         t1, t2, a7
                  lb         a7, -702(gp)
                  c.slli     ra, 4
                  .4byte 0x00100073 # ebreak
                  sh         t3, -35(gp)
                  c.addi16sp sp, -16
                  sb         a2, 46(gp)
                  xor        s3, a1, s1
                  lbu        s4, -1388(gp)
                  sll        a2, s2, tp
                  c.add      sp, s1
                  nop
                  lbu        a5, -1279(gp) #end riscv_load_store_rand_instr_stream_3
                  c.sub      s1, a0
                  nop
                  c.srli     a5, 13
                  div        t2, t4, t5
                  fence.i
                  bgeu       t6, s11, 836f
                  c.xor      a3, s1
                  c.andi     a5, 29
                  sltu       a6, a6, a2
                  srl        s5, s6, a3
                  add        s0, s7, a2
                  auipc      a5, 905967
                  fence
                  slli       a6, t1, 15
                  c.li       s10, -1
                  beq        s5, a3, 841f
                  mulhu      a5, a6, s6
                  c.xor      a1, a0
836:              mulh       ra, s0, tp
                  andi       s3, a2, 979
                  or         s0, tp, t2
                  c.mv       gp, s10
                  xor        s9, t2, s0
841:              sll        s11, t1, zero
                  bgeu       s8, t5, 848f
                  addi       ra, s8, -598
                  divu       a5, s7, s5
                  c.addi16sp sp, -16
                  c.addi     t1, 9
                  csrrsi     s1, 0x340, 11
848:              c.srli     a2, 12
                  or         s3, s11, sp
                  c.srai     s1, 5
                  c.and      a3, a0
                  c.and      s1, s1
                  c.beqz     a2, 857f
                  c.beqz     s0, 859f
                  addi       t2, a1, 803
                  c.addi16sp sp, 176
857:              sll        ra, a5, s11
                  div        t5, t5, zero
859:              sll        a2, t6, ra
                  csrrs      s10, 0x340, tp
                  c.nop
                  bgeu       t4, s4, 882f
                  csrrs      gp, 0x340, s7
                  or         a7, t3, tp
                  nop
                  addi       s9, t1, -619
                  xor        s2, a4, s10
                  mulhsu     sp, s8, gp
                  c.lui      s1, 28
                  bge        tp, a6, 871f
871:              c.li       s7, -1
                  slt        s6, a6, a2
                  .4byte 0x00100073 # ebreak
                  slt        s1, s7, a7
                  remu       a6, s1, a2
                  c.nop
                  div        sp, t5, sp
                  bne        t6, t2, 898f
                  mulhsu     s11, s10, a1
                  sra        sp, t0, t3
                  c.ebreak;c.nop;
882:              .4byte 0x00100073 # ebreak
                  bge        sp, s6, 886f
                  addi       s1, a4, 1003
                  c.srai     a1, 9
886:              c.li       t3, -1
                  c.srli     s1, 12
                  c.xor      a1, a3
                  xori       a2, zero, 818
                  srai       ra, t4, 31
                  mulh       s10, s4, s6
                  xor        tp, s1, t3
                  add        ra, t3, a5
                  csrrc      a3, 0x340, t4
                  c.or       a1, s0
                  srli       t3, t3, 11
                  srai       t4, a1, 24
898:              sub        t1, t2, sp
                  nop
                  auipc      s9, 146050
                  xori       a6, s2, -988
                  ori        s0, s1, 410
                  c.xor      a2, a0
                  bltu       a7, a6, 917f
                  bltu       s11, a5, 922f
                  andi       t5, s7, -849
                  csrrs      gp, 0x340, t2
                  c.ebreak;c.nop;
                  c.ebreak;c.nop;
                  sra        ra, a2, a0
                  csrrwi     t1, 0x340, 8
                  andi       t5, t5, -750
                  blt        a2, s5, 926f
                  fence
                  fence.i
                  slt        ra, s6, t2
917:              c.nop
                  slt        tp, tp, gp
                  bgeu       t0, t3, 920f
920:              fence.i
                  c.or       a3, a0
922:              c.addi16sp sp, 304
                  bge        s2, s5, 940f
                  xori       s6, t5, 261
                  lui        a3, 600535
926:              sltiu      a7, s1, 755
                  c.andi     s0, 14
                  fence
                  div        t4, s11, a6
                  fence
                  sub        s4, t6, a1
                  .4byte 0x00100073 # ebreak
                  mulh       gp, a2, a5
                  xori       a5, zero, -134
                  .4byte 0x00100073 # ebreak
                  mulhu      t5, a3, t4
                  andi       a1, a5, 843
                  remu       s9, s8, t0
                  c.bnez     a5, 941f
940:              csrrc      a2, 0x340, tp
941:              csrrci     s10, 0x340, 15
                  ori        t5, a4, -562
                  and        a3, a3, a3
                  c.and      a5, a3
                  slti       zero, s4, 285
                  mulhsu     s11, zero, s11
                  csrrs      sp, 0x340, s10
                  srl        t2, s5, s5
                  sub        s5, s0, ra
                  csrrwi     t0, 0x340, 15
                  mulh       a1, zero, t5
                  c.li       s0, 9
                  c.ebreak;c.nop;
                  c.or       s0, a2
                  auipc      ra, 618783
                  c.andi     s0, -1
                  mulh       a6, ra, a0
                  c.ebreak;c.nop;
                  mul        s10, s11, t1
                  beq        s7, t1, 973f
                  c.ebreak;c.nop;
                  xori       s8, s11, 352
                  sltu       a2, zero, t6
                  and        a5, a2, s9
                  sll        gp, a2, a7
                  c.beqz     a2, 970f
                  bltu       tp, s8, 972f
                  c.or       s1, a3
                  sra        a7, t0, t1
970:              c.nop
                  xor        s5, zero, s6
972:              sll        t5, tp, s11
973:              xori       t2, s3, 167
                  c.nop
                  or         a1, tp, a1
                  c.beqz     a5, 981f
                  divu       a1, s5, t0
                  mulhu      t1, s3, s5
                  sltu       a3, s10, a1
                  fence
981:              c.addi16sp sp, 192
                  c.nop
                  c.and      a3, s0
                  xor        s8, s11, t5
                  c.srli     s0, 6
                  c.slli     s7, 2
                  lui        gp, 943178
                  c.or       a5, a1
                  xor        s2, t3, s2
                  csrrsi     s1, 0x340, 24
                  mulh       a3, sp, s7
                  csrrwi     s11, 0x340, 18
                  fence.i
                  mul        a2, s2, tp
                  rem        s5, s9, a6
                  mulh       zero, s7, a1
                  mulhu      s9, zero, t5
                  csrrsi     s4, 0x340, 27
                  remu       s7, a4, s8
                  xori       t5, s5, 157
                  sra        t3, gp, a7
                  blt        s3, zero, 1014f
                  srl        t5, s11, sp
                  c.andi     a1, -1
                  sub        a6, t6, a1
                  c.or       a5, a1
                  auipc      s8, 959663
                  bge        a6, t4, 1028f
                  bge        ra, s7, 1010f
1010:             mul        ra, t4, s9
                  nop
                  divu       s0, s6, s6
                  c.or       a5, a4
1014:             auipc      t5, 721927
                  fence.i
                  slli       t1, t2, 31
                  c.addi16sp sp, -16
                  addi       s5, s10, 665
                  c.and      s0, a5
                  mul        a7, s8, s9
                  or         tp, a7, zero
                  c.srai     a2, 2
                  mulhu      gp, s1, s6
                  c.bnez     s0, 1028f
                  slli       t5, t0, 3
                  nop
                  c.srli     a5, 5
1028:             divu       a6, a2, gp
                  csrrs      t1, 0x340, a0
                  bge        s4, sp, 1034f
                  slli       a7, t4, 14
                  c.lui      a1, 18
                  c.andi     s0, 16
1034:             xor        a1, zero, s3
                  c.xor      a2, a5
                  xor        s0, s3, t0
                  mulhsu     s10, s6, t3
                  c.lui      s7, 24
                  mulhu      s10, a3, a6
                  slti       t2, a0, 139
                  c.ebreak;c.nop;
                  c.add      t1, t1
                  slt        t1, s1, s8
                  bge        s6, a1, 1063f
                  andi       ra, a2, 537
                  mulh       t1, a1, ra
                  and        s11, s3, s8
                  c.xor      a2, a1
                  ori        t4, s2, -582
                  nop
                  sltiu      s5, gp, 569
                  c.andi     a1, 8
                  c.andi     a5, -1
                  c.add      s9, sp
                  c.bnez     s0, 1056f
1056:             slli       s7, s7, 19
                  c.and      a1, a0
                  sltiu      t0, s2, -205
                  slli       sp, s6, 21
                  sra        s5, a7, s0
                  srai       a2, t4, 23
                  auipc      s6, 507672
1063:             csrrwi     t2, 0x340, 15
                  add        a6, t6, t5
                  c.mv       s3, t3
                  bgeu       a0, a3, 1083f
                  c.bnez     a5, 1087f
                  fence.i
                  sll        t0, a6, s0
                  add        tp, tp, ra
                  divu       tp, t1, s0
                  mulhsu     s11, a7, s4
                  ori        t4, t2, 770
                  fence
                  c.ebreak;c.nop;
                  divu       t3, t4, tp
                  auipc      s3, 1047846
                  c.nop
                  sll        a5, s2, s5
                  mul        s0, t5, s0
                  csrrc      s7, 0x340, tp
                  mulhu      tp, a7, s4
1083:             c.srai     a2, 10
                  csrrs      s1, 0x340, s4
                  srai       s3, sp, 25
                  csrrc      t4, 0x340, t1
1087:             bge        s0, t3, 1091f
                  c.srai     a3, 6
                  c.slli     t0, 10
                  lui        t5, 366404
1091:             c.slli     t0, 29
                  srli       s5, s3, 16
                  csrrwi     a2, 0x340, 31
                  remu       ra, a4, s2
                  mulhu      a5, t5, t3
                  xor        s8, tp, a5
                  c.nop
                  xori       a1, t2, -113
                  div        s6, tp, a2
                  bgeu       s7, a4, 1111f
                  c.sub      s0, s1
                  sll        s0, a1, s5
                  fence.i
                  slli       t2, s6, 5
                  c.andi     a3, 10
                  .4byte 0x00100073 # ebreak
                  bgeu       a3, s7, 1110f
                  bge        a0, gp, 1114f
                  sll        a6, t1, s2
1110:             c.add      s10, t6
1111:             sltu       s3, s9, a4
                  lui        a3, 912949
                  fence
1114:             c.bnez     s0, 1124f
                  csrrwi     tp, 0x340, 1
                  bgeu       t1, tp, 1123f
                  c.bnez     a5, 1130f
                  .4byte 0x00100073 # ebreak
                  c.xor      s0, a2
                  c.mv       tp, s5
                  csrrwi     t2, 0x340, 23
                  mulhu      tp, s5, zero
1123:             lui        s6, 810475
1124:             sltu       tp, s1, ra
                  c.srai     s0, 17
                  srli       a6, zero, 28
                  sltiu      s1, a5, 345
                  c.ebreak;c.nop;
                  c.srai     s1, 1
1130:             bne        s9, s8, 1138f
                  auipc      s2, 614288
                  nop
                  c.sub      a1, a0
                  rem        s7, s2, s5
                  c.li       sp, 5
                  slli       s10, s0, 5
                  add        t1, t6, s10
                  csrrw      s2, 0x340, a4
                  slt        s8, ra, s9
                  la         s11, sub_3
                  addi       s11, s11, 26
                  sub        s9, s1, s7
                  or         s2, a3, s1
                  or         t0, t1, s5
                  sltu       t2, s4, t5
j__main_sub_3_2:  jalr       t1, s11, -26
                  srai       s4, a6, 23
                  c.bnez     a1, 1157f
1138:             auipc      t2, 640297
                  bltu       t0, a2, 1156f
                  c.beqz     a1, 1146f
                  mulhsu     t5, s7, t5
                  remu       t1, a2, s8
                  csrrwi     s9, 0x340, 22
                  .4byte 0x00100073 # ebreak
                  csrrsi     a2, 0x340, 12
1146:             c.mv       t1, s0
                  c.ebreak;c.nop;
                  addi       s9, s10, -34
                  divu       s4, s2, s4
                  sltiu      s10, s0, 177
                  and        tp, t5, a0
                  or         s9, t6, s11
                  div        s9, tp, s2
                  c.ebreak;c.nop;
                  csrrc      s4, 0x340, a0
1156:             slti       tp, gp, 502
1157:             c.nop
                  sll        s2, a0, t2
                  c.andi     a2, 12
                  csrrci     s3, 0x340, 6
                  c.slli     s7, 5
                  slt        zero, a4, s6
                  add        t5, s8, a2
                  c.sub      a3, a2
                  c.and      a3, a2
                  c.srli     a1, 27
                  addi       t3, t6, 831
                  c.srli     a3, 4
                  bltu       t6, s1, 1182f
                  srli       a6, t0, 30
                  addi       a2, tp, 990
                  auipc      a3, 3170
                  csrrwi     t3, 0x340, 18
                  sltiu      ra, s8, 567
                  addi       ra, s10, -417
                  nop
                  c.srli     s1, 28
                  c.bnez     a2, 1198f
                  sltiu      s11, t0, 121
                  c.or       a5, a3
                  and        t4, s0, s2
1182:             c.addi     t4, -1
                  auipc      a5, 905689
                  bne        s11, s9, 1197f
                  xori       s3, s7, -230
                  add        a7, s11, ra
                  csrrsi     s0, 0x340, 25
                  and        s4, s2, a1
                  sra        s11, t6, s5
                  and        t4, s3, s6
                  c.addi16sp sp, -16
                  csrrs      s3, 0x340, s5
                  c.add      s7, s9
                  bge        sp, t3, 1202f
                  c.xor      a1, s0
                  c.addi16sp sp, 448
1197:             c.sub      a5, a2
1198:             mulh       t1, s5, s2
                  fence
                  c.srli     a5, 26
                  bgeu       t2, a5, 1221f
1202:             c.addi     gp, 10
                  slli       s10, sp, 28
                  ori        zero, a1, 37
                  mulhu      s1, zero, a1
                  bge        s9, t6, 1223f
                  csrrci     a2, 0x340, 16
                  c.slli     s6, 5
                  csrrwi     t4, 0x340, 5
                  bne        t1, ra, 1223f
                  c.or       s1, s0
                  sll        a5, a1, t3
                  bltu       a5, zero, 1216f
                  c.mv       a1, a4
                  beq        ra, a3, 1220f
1216:             csrrw      a3, 0x340, a2
                  sltu       gp, zero, gp
                  nop
                  srli       s3, a2, 7
1220:             mul        s4, s4, s10
1221:             c.sub      s0, a1
                  slt        s5, sp, a3
1223:             csrrs      s5, 0x340, s3
                  xor        s1, zero, t2
                  blt        a5, t3, 1226f
1226:             auipc      s8, 525753
                  auipc      s3, 270411
                  csrrc      s0, 0x340, s5
                  blt        t2, a1, 1246f
                  sltu       a3, t6, sp
                  div        s11, a6, a2
                  sll        s5, a0, s2
                  add        s1, t5, s11
                  c.and      a5, a5
                  mulhu      tp, zero, s1
                  csrrci     a3, 0x340, 26
                  srai       t4, a7, 7
                  xori       t4, s0, 818
                  csrrwi     s3, 0x340, 22
                  slt        a3, t3, tp
                  andi       a3, s0, 39
                  fence
                  slt        t5, gp, t6
                  slt        t1, tp, s2
                  bne        s8, s1, 1265f
1246:             c.slli     a5, 6
                  sub        t3, a5, t6
                  lui        gp, 1035384
                  remu       s1, a6, s2
                  mulhu      s5, sp, t1
                  c.lui      s0, 9
                  c.slli     s4, 19
                  c.nop
                  or         s8, t6, s10
                  sra        s8, t0, s9
                  .4byte 0x00100073 # ebreak
                  c.addi     a6, 13
                  c.xor      s0, a1
                  sltu       tp, t6, ra
                  and        a5, t4, s6
                  beq        a3, s0, 1263f
                  bne        t3, t6, 1272f
1263:             sub        s10, s5, s2
                  andi       t1, s6, 710
1265:             mulhu      gp, a4, a6
                  remu       s6, s2, a2
                  srl        a5, a2, s3
                  slt        zero, a1, a2
                  csrrci     a3, 0x340, 11
                  sll        s3, s7, zero
                  xori       t1, s1, -376
1272:             sltu       s2, t2, s10
                  slti       s6, gp, -793
                  c.nop
                  c.or       a5, s1
                  sll        t4, s0, t4
                  csrrsi     s4, 0x340, 29
                  slti       a3, t4, -952
                  c.beqz     a2, 1283f
                  div        s0, s4, zero
                  and        t4, t5, a5
                  fence
1283:             srl        sp, a5, t2
                  sll        a5, a1, a1
                  div        t0, a1, s7
                  slti       t5, s6, 279
                  sltiu      s1, s2, 372
                  sub        s2, a5, s3
                  xor        s11, ra, tp
                  sra        s4, t3, s3
                  add        s8, s7, s3
                  c.bnez     a5, 1293f
1293:             c.addi     sp, 9
                  xori       s7, a4, -779
                  csrrc      a3, 0x340, t2
                  bne        s8, t6, 1307f
                  fence
                  bltu       a5, s9, 1311f
                  fence
                  srai       s2, a1, 16
                  rem        s8, a3, ra
                  csrrs      zero, 0x340, s9
                  ori        s0, sp, -107
                  sub        t3, sp, gp
                  sub        zero, a1, a0
                  c.ebreak;c.nop;
1307:             mul        a7, t3, s4
                  blt        s1, t6, 1316f
                  beq        t3, a4, 1317f
                  mul        gp, t4, s0
1311:             c.srai     s0, 11
                  mul        t4, a3, a1
                  c.slli     s10, 25
                  xor        t5, s4, s7
                  c.addi16sp sp, 112
1316:             c.add      s11, tp
1317:             and        zero, s6, s0
                  csrrs      a7, 0x340, s2
                  csrrsi     zero, 0x340, 5
                  c.srli     s1, 14
                  c.srli     a5, 16
                  sltiu      s8, s1, -529
                  sll        a5, a6, s10
                  .4byte 0x00100073 # ebreak
                  slli       s6, a2, 8
                  nop
                  c.srai     s1, 17
                  fence.i
                  mul        s3, ra, s7
                  mulh       s10, s2, t5
                  slli       ra, s10, 11
                  csrrs      gp, 0x340, a5
                  xor        t2, a6, t4
                  c.add      t4, s0
                  slli       s10, t3, 12
                  srl        gp, t1, s10
                  xori       zero, s6, 453
                  srli       s4, ra, 31
                  ori        s1, t4, -271
                  sltu       gp, gp, a0
                  c.li       s4, 5
                  c.srli     s1, 4
                  slt        tp, a3, s5
                  remu       a6, s3, tp
                  auipc      s11, 942675
                  csrrwi     s7, 0x340, 18
                  csrrwi     t2, 0x340, 23
                  lui        t1, 917655
                  c.srli     s0, 18
                  c.lui      s4, 22
                  c.lui      s5, 13
                  mulhu      zero, t1, s1
                  sltu       a2, s3, a4
                  add        zero, s8, ra
                  csrrc      t4, 0x340, a7
                  c.srai     s0, 23
                  c.add      s10, t3
                  c.li       s3, -1
                  slti       a2, s2, 552
                  lui        gp, 920840
                  c.sub      a2, a5
                  c.li       a7, -1
                  csrrwi     s11, 0x340, 14
                  c.sub      s0, a2
                  c.xor      a5, a5
                  xori       s0, a2, 909
                  fence.i
                  sltiu      s6, t6, 941
                  mulhu      s11, s4, sp
                  sra        a1, zero, t1
                  c.nop
                  sltiu      tp, t3, -576
                  c.xor      a2, a3
                  bltu       a6, t5, 1387f
                  srl        s6, s11, s4
                  bltu       s10, s10, 1396f
                  c.slli     s6, 29
                  add        t2, zero, s1
                  nop
                  csrrci     s4, 0x340, 6
                  srai       s8, s6, 21
                  c.srai     a5, 12
                  nop
                  xori       t4, tp, 566
                  csrrwi     zero, 0x340, 22
                  c.srli     a1, 16
1387:             beq        s3, a1, 1399f
                  mul        s2, s2, a3
                  auipc      t0, 58521
                  xor        s8, s3, a0
                  add        s10, t2, s7
                  auipc      s2, 503103
                  c.srai     a1, 11
                  sub        s0, a1, a3
                  sub        t0, gp, s1
1396:             bge        a7, tp, 1403f
                  div        a5, a5, s6
                  .4byte 0x00100073 # ebreak
1399:             c.and      a2, a1
                  and        a5, s2, s3
                  c.and      a1, a2
                  srai       a3, tp, 8
1403:             c.srai     a2, 22
                  remu       zero, s8, s8
                  bne        t2, a3, 1422f
                  sra        s3, s3, s6
                  lui        t0, 704967
                  remu       s10, s0, s6
                  c.and      s1, a4
                  c.beqz     a5, 1416f
                  srai       s3, t5, 13
                  c.addi16sp sp, 480
                  c.xor      s1, s1
                  fence.i
                  bltu       a1, t2, 1435f
1416:             csrrwi     tp, 0x340, 21
                  or         gp, s11, s1
                  csrrw      gp, 0x340, s10
                  sub        s6, s4, a1
                  csrrci     sp, 0x340, 7
                  ori        s1, s8, -965
1422:             mulh       s11, s0, a1
                  c.mv       t5, s1
                  and        t5, s11, a7
                  c.beqz     a3, 1429f
                  csrrc      sp, 0x340, a7
                  c.addi16sp sp, -16
                  c.addi     a3, -1
1429:             beq        a3, sp, 1442f
                  addi       s0, s9, 905
                  c.or       a2, a3
                  c.li       t5, 6
                  c.mv       s5, s4
                  addi       s2, s2, -469
1435:             c.srli     s0, 22
                  c.addi     a5, -1
                  c.nop
                  c.addi     s5, -1
                  mul        s3, gp, tp
                  rem        a7, t6, a1
                  and        a6, s7, a2
1442:             mul        t3, s2, gp
                  addi       a5, t1, 338
                  auipc      a1, 973456
                  c.lui      s0, 9
                  sra        t5, s4, a3
                  xor        s6, t4, s6
                  xor        s4, t2, a2
                  srli       t4, tp, 5
                  c.nop
                  beq        s2, gp, 1457f
                  csrrs      gp, 0x340, a4
                  c.lui      s10, 13
                  la         t1, region_2+3882 #start load_store_instr_stream_4
                  la         s8, region_4+1401 #start load_store_instr_stream_3
                  la         s1, region_1+14537 #start load_store_instr_stream_2
                  lhu        s5, 397(s8)
                  la         a1, region_0+1341 #start load_store_instr_stream_1
                  lbu        ra, 25(t1)
                  lb         a2, 16(a1)
                  sb         a4, -16(s1)
                  sb         a4, -8(s1)
                  lh         s9, 1201(s8)
                  lb         t5, 1(t1)
                  lhu        t4, -40(t1)
                  lhu        s4, 16(t1)
                  lbu        a7, -1058(s8)
                  sw         s11, 3(a1)
                  lb         s9, -58(t1)
                  la         t0, region_3+455 #start load_store_instr_stream_0
                  sb         t1, -14(a1)
                  sb         gp, -7(t1)
                  lb         t2, 1769(s8)
                  lbu        tp, -174(t0)
                  lbu        s5, 39(t0)
                  lbu        t5, -19(t1)
                  sb         sp, -5(a1)
                  sh         sp, 583(s8)
                  lb         a3, -146(t0)
                  lb         s5, -8(a1)
                  lhu        s4, -13(s1)
                  lbu        s0, 609(s8)
                  lbu        s2, 23(t1)
                  lh         tp, -137(t0)
                  lh         s9, -11(a1)
                  lb         t4, -10(a1)
                  lbu        s0, 608(s8)
                  sw         a6, -9(s1)
                  lh         s11, -1(a1)
                  sb         t1, 1320(s8)
                  lb         s10, -54(t1)
                  lbu        a5, -166(t0)
                  lbu        t5, 59(t1) #end load_store_instr_stream_4
                  lbu        t3, -12(s1)
                  lbu        s7, 0(a1) #end load_store_instr_stream_1
                  lbu        a6, 16(s1) #end load_store_instr_stream_2
                  lb         a5, 580(s8) #end load_store_instr_stream_3
                  lb         gp, -152(t0) #end load_store_instr_stream_0
                  mulhu      s0, s6, t0
                  srai       s7, t0, 13
                  slt        a5, a2, s6
1457:             addi       s3, s2, 985
                  beq        s3, a5, 1463f
                  c.nop
                  nop
                  csrrw      tp, 0x340, s1
                  bgeu       t0, s10, 1466f
1463:             c.nop
                  or         s1, s9, a5
                  c.srli     a2, 7
1466:             lui        s5, 92497
                  c.xor      s0, a4
                  mul        s3, s8, a4
                  fence
main_9:           jal        t1, 26f
0:                c.jal      13f
1:                c.jal      8f
2:                c.jal      9f
3:                jal        ra, 1b
4:                c.j        12f
5:                c.jal      24f
6:                c.j        0b
7:                c.j        25f
8:                jal        ra, 19f
9:                c.jal      15f
10:               c.j        2b
11:               jal        ra, 16f
12:               c.jal      18f
13:               c.j        7b
14:               c.jal      3b
15:               jal        ra, 23f
16:               jal        tp, 5b
17:               jal        ra, 14b
18:               c.j        27f
19:               c.j        11b
20:               jal        t1, 21f
21:               c.j        6b
22:               jal        s11, 10b
23:               c.jal      4b
24:               c.j        20b
25:               jal        a7, 22b
26:               c.j        17b
27:               fence.i
                  sll        gp, a3, s8
                  ori        t3, s5, -950
                  c.addi16sp sp, -16
                  xor        s11, zero, s8
                  c.slli     s10, 16
                  or         t0, s0, ra
                  fence.i
                  srai       zero, t2, 8
                  ori        s8, s7, -521
                  c.beqz     a1, 1483f
                  csrrs      ra, 0x340, gp
                  srl        s7, s0, s3
                  nop
1483:             mul        s8, t4, s1
                  mul        s3, t0, s0
                  add        a2, a2, zero
                  c.xor      s1, a3
                  c.sub      a5, a1
                  sltiu      t3, a2, -634
                  andi       a1, s6, 291
                  c.beqz     s0, 1509f
                  c.andi     s1, 22
                  csrrc      zero, 0x340, s5
                  c.addi     s8, -1
                  c.li       t2, 19
                  rem        sp, a7, t4
                  add        t0, s11, a5
                  fence.i
                  c.li       s6, -1
                  sltiu      t2, t1, 768
                  c.sub      s1, a0
                  sll        t4, zero, t5
                  blt        a2, s3, 1522f
                  srl        sp, t4, s11
                  .4byte 0x00100073 # ebreak
                  slti       s6, s0, -776
                  div        zero, a6, s9
                  csrrs      tp, 0x340, t6
                  csrrwi     s7, 0x340, 14
1509:             mulhu      s10, tp, t3
                  blt        s2, s1, 1527f
                  srl        a7, zero, a2
                  xori       a1, s11, -919
                  slli       ra, t2, 13
                  csrrs      t3, 0x340, t5
                  div        s0, zero, t4
                  csrrc      t4, 0x340, tp
                  c.srli     s1, 24
                  csrrc      s8, 0x340, a4
                  srl        t3, a2, t4
                  bge        s9, a0, 1521f
1521:             mulhsu     zero, t0, a0
1522:             bgeu       t0, t4, 1542f
                  nop
                  c.ebreak;c.nop;
                  c.andi     s0, 10
                  csrrw      s2, 0x340, t6
1527:             bltu       s4, s10, 1546f
                  xor        s10, zero, s9
                  srli       s10, t5, 23
                  c.sub      a2, s1
                  c.mv       s10, s3
                  xor        sp, a6, sp
                  add        gp, a7, s9
                  xor        a6, s3, a4
                  mul        a6, t4, t2
                  c.srai     a5, 30
                  sltu       gp, t1, zero
                  or         s8, t6, t1
                  fence.i
                  c.addi     t0, 4
                  remu       t3, s11, t0
1542:             c.andi     s1, 17
                  rem        s9, s9, s9
                  c.bnez     a1, 1546f
                  c.srli     s1, 3
1546:             andi       sp, a2, -745
                  mulhsu     a6, a5, a3
                  nop
                  c.mv       t1, s10
                  c.addi16sp sp, -16
                  c.beqz     s0, 1554f
                  slt        a1, s4, a2
                  nop
1554:             mulhsu     s10, s6, gp
                  rem        s1, a0, s3
                  mulhu      s6, a5, s0
                  c.andi     a2, 8
                  sll        a1, s3, a2
                  c.nop
                  bne        s4, t1, 1572f
                  c.lui      a6, 14
                  c.nop
                  mulh       sp, s4, sp
                  add        s5, a3, t4
                  c.add      a2, gp
                  blt        s11, s6, 1570f
                  c.add      t0, ra
                  csrrci     t3, 0x340, 28
                  c.sub      s1, a3
1570:             blt        s4, a1, 1581f
                  c.add      s8, s7
1572:             sra        tp, sp, s8
                  csrrw      s10, 0x340, sp
                  rem        a6, s7, zero
                  sra        s4, t2, a1
                  and        a2, a6, a6
                  csrrsi     s6, 0x340, 17
                  mulhu      t2, s7, s7
                  c.addi16sp sp, 80
                  addi       gp, s8, 852
1581:             slli       t3, a1, 20
                  c.nop
                  slti       s8, s1, 13
                  .4byte 0x00100073 # ebreak
                  .4byte 0x00100073 # ebreak
                  slti       s1, a1, 123
                  divu       ra, sp, t5
                  sra        t1, s4, s8
                  slt        t4, s0, s4
                  ori        t3, ra, -834
                  and        t2, a6, t0
                  c.addi16sp sp, 416
                  sltiu      s6, t6, -297
                  csrrw      s7, 0x340, t3
                  c.sub      s0, a4
                  lui        s0, 23610
                  auipc      zero, 984780
                  c.lui      s2, 20
                  c.srai     a3, 23
                  c.addi16sp sp, -16
                  c.slli     t4, 20
                  c.addi     a5, -1
                  mulh       s1, s8, a2
                  csrrwi     a2, 0x340, 14
                  csrrs      gp, 0x340, a0
                  sra        t4, s6, s1
                  fence.i
                  c.add      t1, s10
                  remu       a1, t2, t0
                  csrrsi     s2, 0x340, 1
                  lui        s7, 647178
                  nop
                  mulh       a2, a0, s10
                  andi       t3, a5, -19
                  c.sub      a2, s0
                  nop
                  c.srli     a1, 15
                  divu       a7, s11, t0
                  srai       t1, s11, 0
                  c.add      s11, s5
                  srai       t2, t3, 1
                  sltiu      s5, gp, -288
                  mulh       a7, a6, zero
                  xori       t0, sp, -618
                  remu       s5, gp, t4
                  fence
                  srli       s7, s8, 25
                  remu       a5, a7, s0
                  c.addi16sp sp, -16
                  bge        t3, t5, 1650f
                  and        t3, s10, s6
                  csrrwi     s8, 0x340, 4
                  bge        a5, s3, 1637f
                  srli       s1, tp, 11
                  sra        s7, t5, t5
                  addi       s3, t5, 756
1637:             c.slli     a6, 18
                  mul        t1, a6, t2
                  c.nop
                  c.mv       t3, a5
                  c.bnez     a3, 1648f
                  xor        a2, t6, t2
                  xori       s9, s2, 782
                  sll        t1, a4, s8
                  sltiu      s2, a5, 997
                  c.bnez     s0, 1659f
                  bge        a0, t5, 1660f
1648:             remu       s8, sp, s8
                  c.addi16sp sp, 128
1650:             sltu       s10, s3, t1
                  csrrci     sp, 0x340, 1
                  c.mv       s2, s1
                  csrrsi     s2, 0x340, 24
                  c.beqz     s1, 1674f
                  fence.i
                  .4byte 0x00100073 # ebreak
                  lui        s7, 584174
                  fence
1659:             c.srli     a3, 18
1660:             csrrsi     s2, 0x340, 5
                  xor        tp, t5, a2
                  mulhu      a3, t5, a3
                  add        a3, a7, t4
                  c.slli     s7, 2
                  csrrs      a3, 0x340, gp
                  srai       a2, s9, 6
                  divu       s4, a2, s0
                  c.xor      s0, a3
                  c.addi16sp sp, 432
                  csrrs      ra, 0x340, t4
                  blt        s10, sp, 1672f
1672:             c.lui      a2, 6
                  c.add      t5, t0
1674:             andi       s10, s6, -204
                  c.slli     a5, 26
                  c.addi16sp sp, 208
                  srai       t5, s3, 0
                  sub        t5, s5, s5
                  mulh       a3, a6, a0
                  csrrci     a6, 0x340, 21
                  xor        tp, s0, tp
                  c.beqz     a5, 1699f
                  c.mv       sp, a4
                  bne        s7, s9, 1690f
                  sltiu      a5, t2, -780
                  mulhu      a5, s6, t2
                  remu       sp, tp, a1
                  srli       s4, a0, 15
                  bgeu       s0, s5, 1693f
1690:             xor        s8, gp, s11
                  slt        s10, t6, t6
                  c.srli     a2, 14
1693:             auipc      s2, 574176
                  rem        a3, t6, a0
                  remu       sp, s10, s0
                  remu       t1, a7, a6
                  remu       sp, sp, a3
                  c.srai     a5, 2
1699:             add        a3, a6, t1
                  div        t5, zero, t3
                  or         s6, s11, s3
                  remu       a5, s8, s0
                  lui        zero, 230167
                  c.and      a1, a1
                  andi       s7, t6, 424
                  sll        s10, s4, s9
                  or         t4, s8, t2
                  csrrci     t1, 0x340, 0
                  addi       s0, s5, 336
                  bltu       s3, t2, 1715f
                  ori        ra, t2, 68
                  addi       a6, zero, -107
                  slti       a1, tp, -800
                  fence.i
1715:             c.addi16sp sp, -16
                  csrrw      s7, 0x340, s8
                  c.srai     s1, 12
                  nop
                  lui        t2, 875993
                  csrrwi     a7, 0x340, 28
                  sltiu      tp, s11, 862
                  mul        t4, s7, s9
                  sltu       a3, s3, a1
                  c.or       s0, a2
                  .4byte 0x00100073 # ebreak
                  c.and      s0, a2
                  addi       sp, t2, 62
                  c.add      s1, t3
                  and        a1, s2, s11
                  sra        zero, s9, a1
                  c.bnez     a2, 1737f
                  mulh       s3, t6, a0
                  andi       a6, s8, -825
                  csrrc      gp, 0x340, a7
                  add        s1, s8, s11
                  bgeu       t4, s5, 1740f
1737:             blt        gp, t1, 1747f
                  sltiu      tp, s11, -564
                  ori        t0, s4, 865
1740:             mulh       s6, t3, s8
                  slt        a7, t1, s6
                  c.lui      s4, 19
                  slti       s3, s0, 704
                  ori        s10, t5, 186
                  sub        zero, s4, a7
                  slt        s8, a7, t6
1747:             c.bnez     a1, 1752f
                  mulhsu     sp, a3, s9
                  csrrw      a3, 0x340, s6
                  lui        gp, 424800
                  remu       s10, t0, a6
1752:             sltu       s8, a3, a3
                  or         s5, s3, s10
                  csrrs      sp, 0x340, tp
                  ori        s6, a4, -427
                  nop
                  sltu       zero, s4, a0
                  bne        a0, t5, 1766f
                  xor        s5, s10, s0
                  c.srli     a2, 29
                  lui        s10, 2635
                  .4byte 0x00100073 # ebreak
                  bge        a7, s2, 1776f
                  mul        s5, a5, t4
                  c.beqz     a2, 1778f
1766:             sltiu      t0, s0, 724
                  mulh       t2, t0, s7
                  c.sub      a2, s0
                  bltu       t0, a7, 1777f
                  div        sp, a1, sp
                  auipc      s5, 823179
                  c.xor      s0, a0
                  c.addi16sp sp, -16
                  .4byte 0x00100073 # ebreak
                  ori        s10, zero, -872
1776:             c.bnez     s0, 1793f
1777:             mulhsu     a6, a0, s7
1778:             c.sub      s0, s1
                  sra        a5, a4, ra
                  c.or       a3, s0
                  c.nop
                  csrrwi     a1, 0x340, 13
                  .4byte 0x00100073 # ebreak
                  divu       s5, t2, s6
                  divu       s5, s8, a3
                  c.li       t0, 0
                  csrrc      a5, 0x340, a1
                  c.sub      a5, a4
                  andi       t3, t6, 931
                  bltu       s10, t6, 1803f
                  xori       a2, s3, 666
                  c.bnez     s1, 1802f
1793:             bge        s6, a4, 1797f
                  srl        a6, a0, s1
                  mulh       s8, s0, t6
                  auipc      s7, 959256
1797:             csrrci     a1, 0x340, 6
                  csrrs      a6, 0x340, s5
                  beq        t1, s3, 1803f
                  beq        zero, t5, 1806f
                  c.ebreak;c.nop;
1802:             mulhu      s8, s3, a1
1803:             rem        a2, s7, a0
                  bltu       s8, a2, 1821f
                  and        tp, zero, t1
1806:             ori        s10, t2, -950
                  sub        s10, s5, sp
                  rem        sp, a2, s0
                  csrrci     s7, 0x340, 4
                  slti       a2, s10, 356
                  andi       s5, t3, -1003
                  c.srai     a1, 8
                  fence.i
                  csrrci     t2, 0x340, 0
                  csrrc      a7, 0x340, a1
                  add        s11, a5, s4
                  rem        t3, a0, s5
                  c.or       a1, a2
                  lui        t1, 542441
                  .4byte 0x00100073 # ebreak
1821:             csrrc      s1, 0x340, t4
                  c.li       t4, 22
                  csrrw      s4, 0x340, sp
                  divu       s2, s7, s5
                  divu       s7, a1, t6
                  andi       sp, a3, -986
                  mulhu      a2, a6, a3
                  srl        t2, tp, s8
                  auipc      t0, 495818
                  slli       t5, t2, 7
                  mulh       tp, s3, s10
                  xori       t0, ra, 312
                  c.sub      s1, a2
                  mulhu      s0, t5, s4
                  c.and      s0, a4
                  sll        a5, s4, s0
                  srl        s5, a4, s5
                  c.and      a1, a1
                  c.sub      s0, a4
                  sll        t4, gp, s3
                  c.srli     a5, 16
                  srli       s1, s3, 4
                  and        sp, t5, s8
                  fence.i
                  blt        s8, s7, 1865f
                  c.addi16sp sp, 208
                  srli       s3, s7, 3
                  c.slli     a6, 7
                  srl        gp, sp, s8
                  beq        sp, tp, 1854f
                  mulhu      sp, sp, a2
                  c.bnez     a1, 1872f
                  srai       a7, s7, 10
1854:             and        gp, s6, a4
                  c.beqz     a1, 1866f
                  csrrs      s9, 0x340, zero
                  mulhsu     t5, t1, t6
                  csrrc      gp, 0x340, s11
                  divu       tp, t3, a6
                  xor        t4, s8, ra
                  xori       s4, t3, -927
                  blt        a7, t0, 1869f
                  .4byte 0x00100073 # ebreak
                  slli       zero, s10, 16
                  c.srai     s1, 6
                  la         t2, sub_1
                  addi       t2, t2, -862
                  div        s3, s9, s11
                  c.srli     a5, 12
j__main_sub_1_4:  jalr       t1, t2, 862
                  c.li       t0, 9
                  c.add      t5, t6
1865:             c.or       a3, s1
1866:             add        t5, t3, s4
                  srli       s3, t6, 21
                  srai       s10, tp, 4
1869:             c.ebreak;c.nop;
                  c.and      a5, a4
                  .4byte 0x00100073 # ebreak
1872:             c.and      a3, a3
                  c.li       a5, -1
                  sub        a7, t4, s6
                  c.srai     s0, 5
                  srli       a5, s10, 8
                  or         s2, a2, s11
                  c.lui      a6, 15
                  csrrci     s1, 0x340, 24
                  srl        tp, a4, s10
                  c.srai     a1, 13
                  sra        t3, t5, s2
                  xori       zero, s11, -872
                  bgeu       t0, a2, 1887f
                  c.or       a1, a5
                  or         s2, s0, s7
1887:             beq        s10, ra, 1895f
                  c.add      s4, a0
                  ori        t5, a0, 237
                  slti       t3, t3, -265
                  blt        s4, a4, 1893f
                  csrrs      s8, 0x340, s11
1893:             sltiu      s0, a2, -513
                  mulhu      s0, a5, s8
1895:             c.sub      a2, a2
                  remu       s1, tp, a4
                  ori        s5, a1, -463
                  c.beqz     a2, 1903f
                  .4byte 0x00100073 # ebreak
                  bge        t1, a7, 1901f
1901:             xori       s5, t0, -909
                  sltiu      s2, a5, 674
1903:             c.addi16sp sp, -16
                  auipc      s0, 901523
                  c.beqz     a5, 1918f
                  c.mv       a6, s7
                  blt        s8, t6, 1920f
                  la         sp, region_0+4016 #start riscv_hazard_instr_stream_5
                  mul        s9, s9, a6
                  c.addi     a6, -1
                  rem        a2, a2, t4
                  c.xor      a2, a5
                  srl        a2, a6, a6
                  sll        s8, a5, a6
                  lh         a6, -1230(sp)
                  xori       s8, s9, 406
                  c.lui      s8, 6
                  srli       a5, a2, 12
                  sb         a6, -2001(sp)
                  addi       a6, t4, 81
                  csrrw      a5, 0x340, s8
                  c.lui      s9, 28
                  c.li       s9, 8
                  remu       t4, a5, t4
                  fence.i
                  lb         a2, -639(sp)
                  c.add      a6, t4
                  sb         a5, -246(sp)
                  c.nop
                  sb         a6, -1507(sp)
                  lbu        s8, -910(sp)
                  lbu        s9, -1787(sp)
                  lbu        a2, -833(sp)
                  mulhsu     s8, t4, t4
                  sll        a5, s9, s9
                  c.and      a5, a2
                  sltiu      s8, t4, -376
                  sb         t4, -895(sp)
                  fence
                  sltiu      t4, s8, 183
                  c.mv       a5, t4
                  sltu       t4, a6, s9
                  srli       a6, s8, 10
                  c.add      s9, s8
                  sb         a6, -1219(sp) #end riscv_hazard_instr_stream_5
                  bge        s8, a4, 1925f
                  mulhu      s5, a7, t4
                  auipc      tp, 337885
                  and        s10, a3, s7
                  mul        s7, s6, a4
                  rem        a6, s5, t0
                  csrrwi     s9, 0x340, 17
                  c.and      s0, a3
                  csrrc      s6, 0x340, a7
                  slti       s4, a7, -920
1918:             c.and      s0, a0
                  sll        zero, s1, s8
1920:             bne        tp, a7, 1937f
                  rem        s8, s8, s8
                  auipc      a6, 212310
                  ori        t3, s8, 89
                  c.add      s4, a2
1925:             bge        a2, ra, 1929f
                  slti       a2, s9, -199
                  addi       s9, s0, -77
                  c.addi     s4, -1
1929:             csrrs      s6, 0x340, s11
                  mul        a5, s11, a1
                  srli       t1, zero, 23
                  sll        s3, ra, a4
                  c.xor      a2, s0
                  ori        ra, s0, 330
                  fence
                  slt        t1, t6, s0
1937:             c.lui      t5, 3
                  bge        s3, a2, 1957f
                  srl        s8, t0, a0
                  csrrsi     t1, 0x340, 23
                  bge        s0, tp, 1961f
                  and        s2, a6, a6
                  c.and      a3, a0
                  c.addi16sp sp, 448
                  csrrw      s10, 0x340, t3
                  mulhsu     a6, s9, s7
                  bne        ra, s11, 1953f
                  srai       sp, t4, 13
                  mulhu      ra, a0, t0
                  c.addi16sp sp, 352
                  andi       t5, ra, -783
                  c.mv       s8, t0
1953:             beq        t5, zero, 1966f
                  csrrsi     s10, 0x340, 29
                  csrrwi     t5, 0x340, 31
                  nop
1957:             srli       s7, t3, 16
                  sltu       ra, s7, a3
                  srli       s7, a3, 2
                  c.ebreak;c.nop;
1961:             fence.i
                  lui        tp, 62900
                  rem        sp, a5, s1
                  fence.i
                  srai       s0, s8, 30
1966:             c.sub      a2, a3
                  mulhsu     s5, t1, a4
                  c.add      s5, s8
                  csrrc      a3, 0x340, a4
                  nop
                  c.andi     s0, -1
                  addi       tp, s3, 744
                  c.lui      s1, 22
                  xor        a7, s2, t5
                  c.li       a2, 0
                  xori       t0, gp, -552
                  auipc      t2, 940633
                  slli       t4, gp, 21
                  sra        t5, t0, gp
                  c.addi     t3, -1
                  div        s3, a0, s7
                  or         t2, gp, s1
                  slli       s7, s1, 9
                  slli       t0, t4, 28
                  beq        s9, s10, 1993f
                  c.ebreak;c.nop;
                  sub        t3, ra, s0
                  c.or       s0, a1
                  add        s0, s4, s10
                  c.ebreak;c.nop;
                  c.nop
                  slti       a2, t0, -476
1993:             c.beqz     s1, 2005f
                  beq        s3, s10, 2014f
                  xor        a3, s8, s6
                  andi       a5, tp, -384
                  mul        a2, s3, s3
                  srai       gp, a1, 22
                  c.slli     t0, 21
                  c.xor      s0, a1
                  fence.i
                  nop
                  c.addi16sp sp, 80
                  c.addi     t5, 6
2005:             csrrsi     t5, 0x340, 3
                  csrrwi     t3, 0x340, 1
                  mulh       s10, t6, t0
                  sll        s5, s0, t4
                  div        zero, a4, t4
                  beq        a5, s10, 2011f
2011:             sra        ra, s10, s7
                  add        s5, s9, sp
                  addi       a3, s2, 536
2014:             c.addi16sp sp, -16
                  mulhu      s10, t6, t4
                  mulhu      s11, a3, a2
                  addi       ra, s10, -725
                  srai       t2, s5, 23
                  c.slli     t1, 3
                  bltu       t1, tp, 2025f
                  fence
                  slt        s5, a7, s7
                  slt        s9, a5, s5
                  slt        s3, a5, a4
2025:             andi       a7, t5, -194
                  auipc      tp, 320294
                  divu       a2, t4, s7
                  bne        tp, zero, 2036f
                  c.xor      a3, a2
                  sub        t2, ra, s1
                  sll        t0, s9, s5
                  sra        s11, ra, t6
                  csrrc      s10, 0x340, a7
                  sltiu      tp, a2, 742
                  csrrci     s10, 0x340, 25
2036:             andi       t2, s10, -580
                  mulh       s4, a5, s10
                  c.or       s1, a1
                  beq        t2, a3, 2050f
                  csrrci     tp, 0x340, 8
                  slli       t4, gp, 12
                  bgeu       a4, t4, 2047f
                  slti       s8, t4, -636
                  xori       t1, t0, 1001
                  slli       zero, t2, 14
                  blt        s5, s5, 2050f
2047:             csrrsi     s5, 0x340, 24
                  bltu       a1, t0, 2055f
                  sltiu      s5, s10, 592
2050:             bge        s6, s6, 2070f
                  slt        s6, a5, a6
                  beq        sp, s8, 2072f
                  xor        a2, zero, a0
                  csrrwi     gp, 0x340, 6
2055:             xori       s7, s2, 694
                  bne        sp, a5, 2060f
                  srl        s0, t5, a0
                  csrrsi     t1, 0x340, 0
                  c.addi     t0, 1
2060:             lui        t0, 1011806
                  fence.i
                  c.xor      a1, a3
                  csrrc      s11, 0x340, s10
                  auipc      s5, 359560
                  bne        t4, t5, 2073f
                  blt        s7, s9, 2083f
                  c.or       a1, a1
                  beq        a7, a1, 2071f
                  c.and      s1, a4
2070:             c.lui      s6, 2
2071:             sub        a3, s11, tp
2072:             .4byte 0x00100073 # ebreak
2073:             c.addi16sp sp, 32
                  c.srli     s1, 23
                  sub        t1, s0, s10
                  xor        s3, s11, s0
                  c.or       a5, a4
                  div        s7, s10, a6
                  c.li       ra, -1
                  addi       zero, t3, -508
                  csrrwi     s0, 0x340, 12
                  c.and      s1, a1
2083:             div        s8, t5, a7
                  c.beqz     a1, 2101f
                  lui        s6, 546375
                  c.or       a2, a3
                  mulh       a5, zero, s9
                  xori       t5, gp, 239
                  csrrc      a6, 0x340, t5
                  c.li       a3, -1
                  csrrs      t5, 0x340, s11
                  c.beqz     a3, 2109f
                  remu       s10, a2, t2
                  c.and      s0, s0
                  and        sp, a7, sp
                  bne        s4, a3, 2115f
                  c.lui      s11, 20
                  slt        a7, s8, s9
                  or         t4, t1, a6
                  csrrs      s10, 0x340, s0
2101:             c.or       a3, a2
                  bge        s1, s1, 2115f
                  c.li       s10, -1
                  csrrsi     s8, 0x340, 1
                  c.li       t2, -1
                  auipc      s1, 338584
                  csrrci     a3, 0x340, 20
                  beq        a2, s3, 2114f
2109:             beq        s8, zero, 2115f
                  fence
                  c.and      s1, a0
                  csrrwi     a2, 0x340, 16
                  sltu       s2, a3, t2
2114:             c.srli     a3, 13
2115:             ori        a1, s6, -68
                  sra        zero, gp, s8
                  slli       t1, s4, 16
                  mulhu      s10, t3, zero
                  bne        a2, gp, 2139f
                  rem        s11, t6, s10
                  sra        t0, s11, gp
                  sltiu      a1, a4, 360
                  xori       tp, a5, 802
                  mulh       a2, a0, s7
                  c.sub      s0, a4
                  div        sp, s5, a6
                  csrrsi     t5, 0x340, 28
                  csrrc      a1, 0x340, s4
                  c.bnez     s1, 2133f
                  c.mv       gp, t0
                  and        t1, zero, t1
                  slti       zero, ra, 392
2133:             srl        a6, s1, gp
                  c.srli     a2, 22
                  csrrwi     s2, 0x340, 15
                  div        t3, a6, t2
                  xori       t0, s10, -579
                  csrrwi     sp, 0x340, 9
2139:             addi       s3, s4, -380
                  add        tp, t0, gp
                  c.or       a5, a1
                  remu       a1, s2, a5
                  fence.i
                  c.nop
                  bgeu       t2, s2, 2157f
                  mul        s11, t3, s9
                  csrrci     s11, 0x340, 6
                  divu       a1, s5, zero
                  csrrwi     s6, 0x340, 18
                  bgeu       t2, tp, 2154f
                  c.bnez     s1, 2164f
                  rem        sp, s1, s0
                  bltu       t2, t5, 2154f
2154:             and        t0, t2, a6
                  csrrwi     s6, 0x340, 22
                  auipc      a1, 524836
2157:             c.lui      a3, 13
                  sltiu      a5, ra, -362
                  csrrs      sp, 0x340, s4
                  c.beqz     a2, 2180f
                  slti       t4, s9, -861
                  slli       a1, a0, 13
                  slti       s5, s6, 51
2164:             csrrw      s6, 0x340, a4
                  rem        t1, a0, s2
                  c.slli     ra, 1
                  rem        a2, s3, t5
                  rem        s8, gp, a2
                  beq        s6, a5, 2182f
                  nop
                  sub        s5, ra, t6
                  slli       t4, s5, 20
                  blt        s1, t2, 2175f
                  sll        a5, sp, a2
2175:             sub        s7, a1, ra
                  fence
                  c.mv       tp, s3
                  slli       a3, ra, 7
                  and        sp, t4, t5
2180:             xori       t1, s0, 702
                  srl        a6, t3, s5
                  la         a1, region_2+2314 #start load_store_instr_stream_3
                  la         a7, region_3+345 #start load_store_instr_stream_4
                  la         s5, region_0+3454 #start load_store_instr_stream_2
                  la         s3, region_4+2714 #start load_store_instr_stream_1
                  lbu        s11, -1487(a1)
                  sh         ra, 768(s3)
                  sb         zero, -136(a7)
                  la         ra, region_1+11142 #start load_store_instr_stream_0
                  lbu        a3, -15(s5)
                  lh         s11, 4(s5)
                  sh         s11, 83(a7)
                  lbu        zero, -7(s5)
                  sh         s2, 1618(a1)
                  lbu        a2, -1977(s3)
                  lh         tp, -6(s5)
                  lb         sp, -1293(s3)
                  lbu        s8, 1487(a1)
                  sb         s3, -97(ra)
                  lb         sp, -8(s5)
                  sb         s4, -289(a1)
                  lbu        s8, -183(a7)
                  lb         tp, -185(ra)
                  sb         zero, 108(a7)
                  lb         t1, -5(s5)
                  lhu        s10, 115(a7)
                  sh         a1, 126(s3)
                  lw         s4, 3(a7)
                  lh         tp, 12(s5)
                  lb         a6, -4(ra)
                  lb         a2, -1081(a1)
                  lbu        a6, -1743(s3)
                  sb         s4, 348(s3)
                  lbu        a3, -611(a1)
                  sb         a5, -1413(s3)
                  lbu        zero, -73(a7)
                  lb         s6, 149(ra)
                  lb         a2, 6(s5)
                  lb         tp, -80(s3)
                  lb         s10, -1563(a1)
                  sb         t1, -277(s3) #end load_store_instr_stream_1
                  sh         s2, 276(a1)
                  lb         s10, -134(a7)
                  sb         s6, 217(ra)
                  sb         t2, 140(a7)
                  sh         s0, 163(a7) #end load_store_instr_stream_4
                  sb         sp, -14(s5) #end load_store_instr_stream_2
                  sb         s8, -36(a1) #end load_store_instr_stream_3
                  sb         s9, -114(ra) #end load_store_instr_stream_0
2182:             c.srli     a2, 2
                  sltu       s3, s10, s1
                  c.sub      s0, a0
                  csrrc      a3, 0x340, s9
                  c.or       a2, a2
                  add        s3, t1, a2
                  c.ebreak;c.nop;
                  bgeu       a0, s4, 2194f
                  div        t3, tp, t6
                  mul        zero, t0, a3
                  csrrw      t1, 0x340, s0
                  c.ebreak;c.nop;
2194:             c.beqz     s1, 2195f
2195:             mulhu      s0, a7, a4
                  sltiu      s3, t0, -967
                  csrrwi     t0, 0x340, 26
                  c.slli     s5, 21
                  c.srai     a5, 15
                  c.or       a3, a0
                  blt        a2, t3, 2214f
                  andi       sp, s5, -699
                  csrrci     a2, 0x340, 20
                  c.bnez     a2, 2214f
                  sltiu      a7, ra, -1019
                  andi       s10, s3, -19
                  auipc      gp, 535954
                  c.slli     t1, 25
                  remu       zero, t0, s3
                  mulhu      t1, t1, t3
                  c.sub      a5, a2
                  sra        a5, sp, s10
                  nop
2214:             c.beqz     s1, 2215f
2215:             ori        a6, s10, 438
                  c.li       a1, -1
                  mulhu      gp, sp, a7
                  xor        t4, s0, s7
                  srl        t0, a0, s3
                  div        t5, ra, s2
                  bne        t3, s0, 2222f
2222:             srli       s5, a0, 31
                  fence
                  c.and      s0, s0
                  fence.i
                  sltiu      s1, t6, -34
                  nop
                  add        t1, t2, a0
                  bge        a0, s9, 2242f
                  c.nop
                  auipc      a1, 615525
                  csrrs      s7, 0x340, t1
                  sltu       t3, s1, zero
                  add        tp, a0, ra
                  srai       tp, s6, 21
                  la         s0, region_0+1396 #start riscv_load_store_rand_instr_stream_4
                  lh         s5, 8(s0)
                  c.mv       a5, s1
                  srli       s2, s3, 5
                  lbu        t0, 7(s0)
                  auipc      s9, 757310
                  lb         t5, 33(s0)
                  lbu        s10, 9(s0)
                  csrrci     ra, 0x340, 0
                  lb         ra, 64(s0)
                  c.xor      s1, a0
                  lbu        s10, 19(s0)
                  lb         s2, 33(s0)
                  c.nop
                  sb         s9, -7(s0)
                  lhu        t0, -50(s0)
                  lb         tp, 39(s0)
                  lbu        a1, -34(s0)
                  lb         s8, 59(s0)
                  mulh       gp, t0, a6
                  sb         a1, 25(s0)
                  divu       s4, s6, t4
                  lb         s8, -27(s0)
                  lbu        s11, 42(s0)
                  lbu        zero, -33(s0)
                  lbu        a2, 41(s0)
                  sh         a3, -26(s0)
                  sw         s6, -48(s0)
                  lb         sp, -30(s0)
                  srl        s6, s5, t4
                  sh         s5, -36(s0)
                  sh         ra, 60(s0)
                  lbu        s6, 40(s0)
                  c.and      a5, a5
                  sb         a1, 11(s0)
                  lbu        s3, 41(s0)
                  slti       t5, zero, 49
                  lbu        t2, 35(s0)
                  sb         sp, -13(s0) #end riscv_load_store_rand_instr_stream_4
                  slt        s0, s1, t3
                  add        t1, s2, s6
                  beq        a0, a3, 2244f
                  or         t5, t1, s10
                  c.ebreak;c.nop;
                  slt        s10, s8, s2
2242:             sltiu      t3, a2, 287
                  mulhu      s11, a1, a5
2244:             c.mv       t0, s5
                  c.andi     s0, -1
                  sra        s6, s7, a2
                  csrrs      s6, 0x340, sp
                  or         s7, t1, ra
                  srl        a7, tp, s3
                  srai       s0, s4, 8
                  c.addi     s2, -1
                  mulhu      a7, s5, s3
                  c.li       sp, 8
                  slt        s11, ra, a6
                  nop
                  addi       t0, s9, 361
                  c.slli     a6, 6
                  c.sub      a3, a3
                  blt        gp, s4, 2262f
                  sltu       a3, s7, s7
                  c.addi16sp sp, -16
2262:             slt        a2, t1, a5
                  c.sub      a3, a5
                  csrrw      s10, 0x340, s11
                  c.li       t1, 12
                  addi       sp, t3, -119
                  c.beqz     s1, 2271f
                  c.addi     t4, -1
                  slti       s5, a2, 542
                  srli       zero, s6, 22
2271:             rem        ra, s7, s5
                  mulhu      zero, s5, t3
                  lui        a6, 238963
                  auipc      s5, 464852
                  c.beqz     a2, 2286f
                  c.nop
                  bgeu       sp, s0, 2290f
                  csrrc      zero, 0x340, t3
                  c.srli     a3, 12
                  c.ebreak;c.nop;
                  fence.i
                  blt        sp, t0, 2286f
                  mul        s9, s4, s9
                  sltiu      a2, s9, -767
                  c.add      s0, a0
2286:             and        t4, a1, ra
                  c.bnez     a3, 2307f
                  add        s1, s7, sp
                  beq        s10, s2, 2294f
2290:             bne        s11, ra, 2307f
                  csrrsi     a7, 0x340, 9
                  beq        a3, t0, 2311f
                  c.beqz     a5, 2310f
2294:             c.andi     a5, -1
                  csrrw      s8, 0x340, s6
                  nop
                  addi       a5, t3, -884
                  c.or       s0, a4
                  c.slli     s0, 21
                  sltiu      t2, t4, 25
                  srl        a7, t3, sp
                  .4byte 0x00100073 # ebreak
                  addi       a6, a2, 379
                  bgeu       s6, t4, 2308f
                  mulhu      s10, t6, a6
                  mulhu      t0, ra, s0
2307:             c.beqz     s1, 2313f
2308:             c.sub      a2, a3
                  csrrci     t1, 0x340, 6
2310:             remu       ra, s10, s5
2311:             divu       tp, zero, t6
                  andi       a7, s11, 800
2313:             add        s4, t3, sp
                  c.andi     a3, 6
                  slt        a7, a6, s2
                  nop
                  mul        t4, s7, s0
                  c.xor      s0, a1
                  c.srli     s0, 28
                  slt        a7, a0, s6
                  c.sub      a3, a1
                  c.add      s8, s0
                  c.xor      a1, a2
                  remu       s11, sp, a3
                  mulhsu     s11, s10, s1
                  rem        a6, s5, s9
                  srl        a2, s1, s10
                  srli       zero, s11, 7
                  c.sub      a3, a2
                  c.li       a2, -1
                  slt        a3, t0, s11
                  c.mv       s7, ra
                  div        a2, t1, a1
                  and        s5, s1, s7
                  csrrci     s7, 0x340, 3
                  divu       s9, s3, s7
                  ori        t3, s7, 760
                  csrrw      a6, 0x340, tp
                  slli       s11, s11, 17
                  srai       s8, s10, 1
                  csrrci     a3, 0x340, 22
                  slli       t1, s3, 7
                  sltu       s7, s6, a0
                  mulhu      t5, s2, a4
                  c.bnez     s0, 2355f
                  bne        t1, t1, 2354f
                  fence
                  rem        t4, t4, t1
                  bge        s3, a0, 2369f
                  add        a7, a0, t6
                  srli       t2, a7, 22
                  addi       t3, s1, 862
                  c.nop
2354:             mulhu      t0, t6, tp
2355:             c.li       a2, 7
                  csrrci     s1, 0x340, 3
                  csrrs      a7, 0x340, t4
                  bgeu       a7, t2, 2365f
                  mulhu      a6, ra, sp
                  c.add      t4, t1
                  bge        a5, zero, 2366f
                  c.srli     a2, 7
                  andi       a2, t6, 119
                  sll        s5, tp, s11
2365:             xori       gp, tp, -947
2366:             c.beqz     a5, 2379f
                  c.xor      s0, a4
                  csrrci     s2, 0x340, 21
2369:             csrrsi     s9, 0x340, 27
                  c.addi16sp sp, 320
                  blt        a1, t6, 2375f
                  nop
                  c.slli     gp, 16
                  bne        zero, ra, 2376f
2375:             bge        t1, zero, 2395f
2376:             c.srli     a2, 19
                  fence.i
                  fence.i
2379:             csrrc      s5, 0x340, t0
                  c.or       a2, a1
                  c.sub      a5, s0
                  slt        s7, t2, t1
                  fence.i
                  andi       s0, zero, 583
                  c.addi     a3, 5
                  srl        sp, s2, t1
                  c.srai     s0, 19
                  mulh       a1, ra, gp
                  csrrci     a2, 0x340, 31
                  slli       s11, s9, 18
                  c.addi     s4, -1
                  mulhu      s9, a1, t4
                  c.add      tp, s7
                  c.ebreak;c.nop;
2395:             sra        a6, s11, sp
                  c.sub      a2, a1
                  andi       a2, zero, 18
                  blt        a7, ra, 2410f
                  bge        t0, a5, 2419f
                  srai       t4, s11, 25
                  sltu       s3, zero, a3
                  c.slli     s8, 5
                  c.sub      a3, a4
                  c.and      s1, a1
                  csrrc      a2, 0x340, t5
                  c.bnez     a5, 2423f
                  c.addi16sp sp, 288
                  xor        ra, s2, gp
                  slli       t3, a0, 2
2410:             c.srai     a3, 31
                  csrrwi     s10, 0x340, 0
                  fence.i
                  csrrs      a5, 0x340, tp
                  bne        a2, t5, 2427f
                  srl        s7, a6, s9
                  slt        s3, t2, t4
                  mulhsu     s4, s3, s3
                  slli       a3, sp, 11
2419:             mulh       gp, t6, s0
                  csrrw      a3, 0x340, s11
                  remu       a5, t4, s6
                  add        t0, sp, a1
2423:             c.ebreak;c.nop;
                  c.xor      s0, s1
                  slt        s9, s11, a6
                  or         s11, t6, t5
2427:             slt        a6, tp, a3
                  c.sub      a1, a5
                  sra        a6, sp, s7
                  slt        ra, s11, s4
                  sub        sp, t4, a7
                  fence
                  mulh       gp, gp, s9
                  rem        t0, s2, a7
                  c.sub      a3, s0
                  mulhsu     t3, s3, zero
                  mulhu      s10, a2, s7
                  add        s5, ra, a5
                  c.add      a5, s2
                  sltiu      a6, sp, -919
                  xor        s0, sp, t1
                  sltiu      s8, s8, -739
                  add        sp, tp, s9
                  nop
                  sub        zero, s9, a5
                  beq        s9, zero, 2454f
                  xori       s11, sp, 515
                  or         sp, zero, s8
                  c.beqz     a5, 2469f
                  fence.i
                  c.mv       s4, t4
                  auipc      s6, 996637
                  sub        a1, gp, t0
2454:             c.sub      a1, a3
                  c.add      s1, s1
                  bne        s8, s7, 2460f
                  c.andi     a3, 2
                  csrrwi     a2, 0x340, 29
                  c.bnez     s1, 2472f
2460:             sltu       a2, sp, s2
                  andi       t3, t0, -459
                  c.beqz     a2, 2467f
                  fence.i
                  auipc      sp, 171564
                  bltu       s4, s1, 2466f
2466:             c.andi     a5, -1
2467:             csrrc      a3, 0x340, a3
                  csrrw      t4, 0x340, tp
2469:             csrrsi     a7, 0x340, 10
                  lui        s5, 396112
                  c.add      a2, t2
2472:             fence
                  remu       a5, t4, s8
                  or         a2, t6, a0
                  and        t4, t1, s2
test_done:        
                  li gp, 1
                  ecall
sub_1:            mulh       s5, t0, t3
                  addi       a4, a4, -44
                  c.addi     s10, 26
                  c.mv       s8, a6
                  sw         t1, 4(a4)
                  c.srai     s0, 31
                  csrrw      t4, 0x340, zero
                  la         s3, region_2+3684 #start riscv_load_store_rand_instr_stream_1
                  lbu        t1, 138(s3)
                  srli       tp, a7, 29
                  auipc      s2, 185472
                  sra        zero, s1, s8
                  auipc      t1, 656124
                  sh         s1, 1286(s3)
                  divu       t1, s11, a1
                  sh         a4, 864(s3)
                  lbu        t3, -352(s3)
                  remu       a1, s0, a3
                  c.srli     s1, 8
                  sh         s4, 1360(s3)
                  div        t3, t4, s10
                  lb         tp, -1611(s3)
                  srai       a6, s4, 27
                  mul        s0, s8, t1
                  c.sub      s0, a2
                  lh         a7, -862(s3)
                  auipc      s0, 1025083
                  sltu       s9, s7, s0
                  divu       s1, t0, a1
                  add        a5, s8, a5
                  sb         a5, 722(s3)
                  lbu        s1, 1737(s3)
                  or         a5, s7, a4
                  c.srli     a3, 11
                  sh         a0, 196(s3)
                  sh         s10, 1266(s3)
                  sll        ra, t4, a6
                  c.xor      s0, a5
                  lbu        a1, 1134(s3) #end riscv_load_store_rand_instr_stream_1
                  la         a3, region_3+164 #start riscv_load_store_rand_instr_stream_0
                  lbu        t3, 36(a3)
                  sw         s2, -8(a3)
                  lb         ra, -57(a3)
                  sb         s8, 56(a3)
                  lhu        s5, -44(a3)
                  mul        gp, a6, t3
                  c.add      tp, s9
                  c.nop
                  csrrs      t5, 0x340, s7
                  lb         gp, 22(a3)
                  lb         ra, -35(a3)
                  lbu        s1, -25(a3)
                  and        t0, s1, t1
                  c.ebreak;c.nop;
                  sltiu      tp, s1, -390
                  slti       a6, t0, 578
                  ori        s1, t6, 904
                  sltiu      t4, t5, -202
                  sb         sp, -56(a3)
                  sb         s10, 59(a3)
                  lb         t2, -53(a3)
                  mulhu      s0, s4, t1
                  csrrwi     a5, 0x340, 26
                  c.srli     s1, 21
                  lb         a7, -22(a3)
                  nop
                  lb         a5, 37(a3)
                  c.addi16sp sp, -16
                  lb         s7, 56(a3)
                  lbu        gp, 27(a3)
                  csrrw      t5, 0x340, a7
                  c.mv       t2, s1
                  sb         t5, -13(a3)
                  sltiu      t2, ra, 979
                  lw         gp, 52(a3)
                  mulh       s5, a0, t4
                  lhu        zero, -30(a3)
                  lbu        t0, 51(a3)
                  lb         a5, -31(a3)
                  sh         s5, 42(a3)
                  srli       a2, s3, 8
                  srai       s9, a2, 17
                  lb         s2, -28(a3)
                  c.addi     s9, -1
                  sltiu      t3, s9, -488
                  auipc      s0, 835323
                  lb         s10, -43(a3)
                  sb         t6, -2(a3)
                  lbu        tp, -61(a3) #end riscv_load_store_rand_instr_stream_0
                  la         sp, region_3+22 #start riscv_hazard_instr_stream_0
                  lbu        s1, -1(sp)
                  sh         t4, -8(sp)
                  lb         a7, 5(sp)
                  lbu        t4, 8(sp)
                  sb         s1, -5(sp)
                  sb         a7, -15(sp)
                  c.add      a3, a7
                  c.mv       s5, a7
                  sb         s1, 14(sp)
                  lbu        a5, -9(sp)
                  and        a5, s5, s1
                  sb         t4, -8(sp)
                  sh         a3, -12(sp)
                  lb         a3, 6(sp)
                  fence
                  lbu        a7, 16(sp)
                  c.srai     a5, 24
                  slti       a7, t4, -581
                  c.or       s1, a3
                  c.li       t4, 17
                  c.lui      a7, 9
                  lbu        a7, -3(sp)
                  sb         a5, -5(sp)
                  add        t4, a7, s5
                  csrrci     a7, 0x340, 24
                  nop
                  sb         a5, -14(sp)
                  lb         a3, 9(sp)
                  c.sub      a5, s1
                  c.addi     a7, -1
                  c.and      a5, a3
                  mulhu      a7, a3, a7
                  c.andi     a5, -1
                  srli       a3, s5, 24
                  lui        a5, 550013
                  sh         a7, 14(sp)
                  slli       a3, a7, 28
                  xori       t4, a7, 149
                  lbu        s1, 1(sp)
                  c.and      a5, a5
                  lhu        s1, -4(sp)
                  srli       a7, t4, 0
                  lbu        t4, -15(sp)
                  xor        a7, a3, s5
                  csrrc      a7, 0x340, s1
                  lh         a3, 8(sp)
                  mulhu      a3, s1, t4
                  lbu        a3, -12(sp) #end riscv_hazard_instr_stream_0
sub_1_9:          jal        t1, 13f
0:                jal        s6, 11f
1:                c.j        8f
2:                jal        ra, 3f
3:                jal        ra, 12f
4:                c.jal      9f
5:                c.j        1b
6:                c.jal      2b
7:                c.j        6b
8:                c.jal      16f
9:                c.jal      14f
10:               c.jal      7b
11:               c.jal      5b
12:               c.j        17f
13:               jal        ra, 4b
14:               c.jal      15f
15:               c.jal      0b
16:               jal        ra, 10b
17:               c.mv       t1, a6
                  la         s9, region_2+715 #start riscv_load_store_rand_instr_stream_4
                  lbu        a5, 2(s9)
                  sb         s3, -66(s9)
                  lbu        s1, 14(s9)
                  slti       t0, s2, -853
                  lbu        t0, 11(s9)
                  sh         t0, -9(s9)
                  lb         s0, -183(s9)
                  c.lui      t5, 7
                  mulhsu     a3, a1, a1
                  div        s0, a1, s9
                  sb         t1, -68(s9)
                  sra        a6, s7, s4
                  slt        t5, zero, a6
                  sb         tp, 85(s9)
                  sb         s0, 200(s9)
                  lb         s4, 14(s9)
                  sb         zero, -132(s9)
                  sb         t2, 138(s9)
                  c.and      s1, s0
                  and        s10, sp, t4
                  sh         s8, 99(s9)
                  c.sub      a5, a0
                  lb         s7, 7(s9)
                  lb         t1, -44(s9)
                  xor        t5, s7, a3
                  lb         a1, -206(s9)
                  slti       s5, s4, 877
                  andi       s5, s10, -435
                  remu       t2, t3, s5
                  xor        sp, s10, t2
                  c.li       ra, -1
                  mul        a2, tp, t4
                  sh         tp, 253(s9)
                  lw         s1, 33(s9)
                  sw         a3, -119(s9)
                  sb         s2, 244(s9)
                  lb         s8, 70(s9)
                  lw         a5, 37(s9)
                  srli       s2, s5, 27
                  fence.i
                  c.or       s0, a5
                  slti       ra, s4, 388
                  sb         t6, -50(s9)
                  lw         s2, -63(s9)
                  lh         a1, -205(s9)
                  srli       s10, t3, 15
                  lbu        s5, -170(s9)
                  lb         s10, 41(s9)
                  lbu        zero, 144(s9) #end riscv_load_store_rand_instr_stream_4
                  la         s3, region_2+2751 #start riscv_hazard_instr_stream_4
                  c.andi     s0, -1
                  sb         a7, -10(s3)
                  lb         a7, -36(s3)
                  lbu        s1, 11(s3)
                  slli       t3, s0, 9
                  sb         a7, 1(s3)
                  sb         gp, -43(s3)
                  lh         t3, -1(s3)
                  c.add      t3, t3
                  lbu        s0, 38(s3)
                  lbu        t3, 4(s3)
                  sltu       s1, s1, t3
                  sra        t4, t4, a7
                  sb         gp, 56(s3)
                  sb         s0, -45(s3)
                  sh         t3, -13(s3)
                  lbu        t4, 8(s3)
                  auipc      gp, 63588
                  sb         gp, 44(s3)
                  ori        s1, s1, -559
                  sb         a7, 53(s3)
                  and        t3, s1, s1
                  sltiu      s0, t3, 724
                  andi       gp, gp, 891
                  sh         t3, 25(s3)
                  remu       s1, s0, t3
                  lbu        s0, -41(s3)
                  c.srli     s0, 19
                  fence
                  sb         s1, 16(s3)
                  lbu        gp, 60(s3)
                  c.srli     s0, 28
                  sb         t4, -1(s3)
                  .4byte 0x00100073 # ebreak
                  c.li       s1, 22
                  addi       s0, s1, -916
                  xor        s1, t3, gp
                  c.or       s1, s0
                  sh         s0, 43(s3)
                  or         t3, a7, t4
                  remu       gp, a7, t4
                  c.or       s0, s1
                  slt        t4, a7, t3
                  lb         s0, 44(s3)
                  lbu        a7, 32(s3)
                  and        a7, t3, a7
                  sra        t3, a7, t4
                  lbu        gp, 44(s3)
                  lb         gp, 57(s3)
                  c.addi     t3, 26
                  sltu       s0, t3, gp
                  lw         gp, 57(s3) #end riscv_hazard_instr_stream_4
                  la         s0, region_2+7398 #start riscv_load_store_rand_instr_stream_3
                  lbu        a5, -1821(s0)
                  csrrci     tp, 0x340, 9
                  c.xor      s1, s1
                  sub        t2, a2, s3
                  lbu        a1, -1821(s0)
                  fence
                  csrrs      s3, 0x340, s1
                  lbu        s9, -515(s0)
                  andi       sp, s8, -783
                  slli       sp, a1, 12
                  nop
                  sra        s6, t4, s1
                  lbu        s9, 73(s0)
                  xori       a7, s5, 766
                  lb         a7, 524(s0)
                  c.addi16sp sp, -16
                  lbu        gp, -1811(s0)
                  remu       s6, t5, t1
                  sb         a0, -1537(s0)
                  sll        s4, s1, s6
                  sltiu      a3, s3, -703
                  add        a3, a4, s1
                  mulhsu     ra, sp, t0
                  mulhsu     a2, a6, a3
                  sw         a2, -634(s0)
                  lb         a7, -1893(s0)
                  c.srli     s1, 24
                  auipc      s4, 153048
                  sltiu      zero, a4, -903
                  c.nop
                  sb         s3, 461(s0)
                  c.nop
                  c.slli     ra, 8
                  lbu        s5, -1354(s0)
                  rem        s1, a2, a2
                  lb         t3, 29(s0)
                  c.addi     t2, -1
                  csrrsi     t4, 0x340, 4
                  sb         s1, -299(s0)
                  lhu        s3, 90(s0)
                  .4byte 0x00100073 # ebreak
                  lh         a5, -1420(s0)
                  lb         s11, -1995(s0)
                  div        s5, t6, a1
                  lb         a1, -1567(s0)
                  sb         s10, -605(s0) #end riscv_load_store_rand_instr_stream_3
                  la         sp, region_4+2725 #start riscv_hazard_instr_stream_3
                  div        t4, t4, t4
                  sb         s10, -16(sp)
                  sw         t3, -9(sp)
                  csrrc      a2, 0x340, a2
                  c.sub      a2, a2
                  sub        s10, t3, a7
                  lbu        a7, -16(sp)
                  sb         s10, -10(sp)
                  sb         s10, -15(sp)
                  c.ebreak;c.nop;
                  sll        s10, t4, s10
                  lb         t4, -10(sp)
                  csrrci     s4, 0x340, 7
                  c.mv       t3, t3
                  remu       t4, t3, t4
                  lui        s10, 318733
                  sh         a2, 3(sp)
                  lb         s10, 11(sp)
                  sb         s10, -8(sp)
                  lhu        s4, 11(sp)
                  c.mv       t3, t3
                  lui        a2, 212316
                  lw         s4, -9(sp)
                  sb         a2, -14(sp)
                  sb         a2, 12(sp)
                  lb         s4, -6(sp)
                  lhu        t4, 5(sp)
                  lbu        s10, 8(sp)
                  auipc      s10, 193360
                  sb         s4, -14(sp)
                  c.srai     a2, 3
                  lb         t3, -11(sp)
                  sub        t4, a2, s10
                  lb         t4, -8(sp)
                  c.mv       a2, t4
                  c.slli     s4, 3
                  lbu        s10, 6(sp)
                  fence
                  lbu        s10, -6(sp)
                  sltiu      t4, t4, -965
                  c.srai     a2, 20
                  nop
                  sb         a7, 12(sp)
                  sb         a7, 8(sp)
                  lb         a2, 15(sp)
                  lh         s4, 13(sp) #end riscv_hazard_instr_stream_3
                  la         t3, region_1+14810 #start load_store_instr_stream_0
                  la         t4, region_1+5048 #start load_store_instr_stream_1
                  lb         t1, 12(t4)
                  lb         a1, 2(t4)
                  sb         tp, -9(t3)
                  sb         s4, 11(t4)
                  lbu        s8, -1(t3)
                  lbu        a5, -9(t4)
                  lb         zero, 11(t4)
                  sb         zero, -9(t3)
                  sb         a1, 2(t4)
                  lb         gp, 11(t3)
                  lb         gp, -7(t4)
                  lhu        s9, 6(t3)
                  lh         t5, 8(t4) #end load_store_instr_stream_1
                  sh         s3, 14(t3) #end load_store_instr_stream_0
sub_1_5:          jal        t1, 24f
0:                c.jal      23f
1:                jal        t1, 9f
2:                c.j        7f
3:                c.j        14f
4:                c.j        21f
5:                c.j        10f
6:                c.jal      4b
7:                c.j        22f
8:                jal        s8, 27f
9:                c.jal      13f
10:               jal        ra, 12f
11:               c.j        6b
12:               c.jal      18f
13:               c.jal      15f
14:               jal        ra, 19f
15:               c.jal      17f
16:               c.jal      5b
17:               c.jal      8b
18:               c.jal      3b
19:               c.jal      1b
20:               jal        s10, 26f
21:               c.jal      20b
22:               jal        ra, 0b
23:               c.jal      25f
24:               jal        s11, 2b
25:               c.jal      11b
26:               c.j        16b
27:               c.mv       t2, t6
                  la         t2, region_3+189 #start riscv_hazard_instr_stream_1
                  sb         a7, 242(t2)
                  sb         a3, 220(t2)
                  lbu        t5, 168(t2)
                  c.and      a3, a3
                  lbu        a3, 64(t2)
                  lb         t5, 31(t2)
                  csrrc      s3, 0x340, t3
                  lbu        s3, -182(t2)
                  lw         a3, 83(t2)
                  lh         a7, 213(t2)
                  lbu        t5, 27(t2)
                  auipc      s3, 336271
                  c.andi     a3, 3
                  lh         t3, 119(t2)
                  lb         a7, -144(t2)
                  lbu        a3, 138(t2)
                  slti       a3, s3, 263
                  sb         a3, 170(t2)
                  csrrs      t3, 0x340, a7
                  lb         t5, 129(t2)
                  sltu       a7, t5, a7
                  lbu        t3, -106(t2)
                  lh         a7, -103(t2)
                  auipc      a3, 632471
                  lhu        t5, -69(t2)
                  lbu        t3, -136(t2)
                  csrrc      t5, 0x340, s3
                  sb         gp, -69(t2)
                  lbu        a3, -176(t2)
                  andi       s3, a3, -38
                  sub        s3, a3, s3
                  lhu        a7, 9(t2) #end riscv_hazard_instr_stream_1
                  addi       s2, zero, 2 #init loop 1 counter
                  addi       s3, zero, 19 #init loop 1 limit
sub_1_21_1_t:     c.addi     s0, -1
                  addi       s2, s2, 7 #update loop 1 counter
                  addi       s7, zero, -7 #init loop 0 counter
                  addi       s5, zero, 7 #init loop 0 limit
                  sub        t2, zero, s3
sub_1_21_0_t:     c.add      a7, t1
                  addi       s7, s7, 10 #update loop 0 counter
                  bltu       s7, s5, sub_1_21_0_t #branch for loop 0
                  blt        s2, s3, sub_1_21_1_t #branch for loop 1
                  mulhsu     s10, a2, s4
                  la         s10, region_1+15805 #start load_store_instr_stream_1
                  lb         s6, -123(s10)
                  la         t1, region_1+5691 #start load_store_instr_stream_0
                  sh         a3, 59(s10)
                  lb         s11, -86(s10)
                  lbu        a6, -3(t1)
                  lw         t3, 179(s10)
                  lbu        a3, 60(t1)
                  sb         a1, -165(s10)
                  lbu        s7, 256(s10)
                  lhu        a5, 131(s10)
                  lbu        gp, -27(t1)
                  lhu        zero, -127(s10)
                  lb         s2, -20(t1)
                  lbu        s7, 198(s10)
                  lbu        s7, -30(s10) #end load_store_instr_stream_1
                  lh         s2, 15(t1)
                  lhu        a7, 17(t1) #end load_store_instr_stream_0
                  la         s3, region_3+356 #start load_store_instr_stream_0
                  la         tp, region_4+1304 #start load_store_instr_stream_1
                  lh         s7, -52(tp)
                  lh         s7, -32(tp)
                  lb         s8, -135(s3)
                  sb         s9, 31(tp)
                  lh         a2, -64(tp)
                  sh         t2, 30(s3)
                  lbu        t1, -151(s3)
                  lbu        s8, -39(tp)
                  lb         t1, 21(tp)
                  sb         s6, -127(s3)
                  lbu        t3, 27(tp)
                  lbu        s6, -13(tp)
                  sb         s10, -47(tp)
                  lw         a1, -88(s3)
                  lbu        zero, -41(tp) #end load_store_instr_stream_1
                  lhu        gp, -104(s3) #end load_store_instr_stream_0
                  la         t0, region_2+5270 #start load_store_instr_stream_1
                  la         a1, region_2+4199 #start load_store_instr_stream_0
                  lh         s0, -64(t0)
                  lb         s7, -2(t0)
                  lbu        s1, 13(t0)
                  sb         t5, 1472(a1)
                  lh         s10, -1977(a1)
                  lb         s1, 1626(a1)
                  lb         t4, 39(t0)
                  sb         t2, -1430(a1)
                  sb         a1, -61(t0) #end load_store_instr_stream_1
                  lbu        s8, -794(a1) #end load_store_instr_stream_0
sub_1_6:          jal        t1, 6f
0:                c.j        9f
1:                c.jal      2f
2:                c.jal      3f
3:                jal        t1, 7f
4:                c.j        1b
5:                jal        s0, 4b
6:                c.j        8f
7:                c.j        10f
8:                jal        gp, 0b
9:                c.jal      5b
10:               c.sub      a2, a4
                  la         s6, region_2+62 #start load_store_instr_stream_1
                  la         s9, region_2+3945 #start load_store_instr_stream_3
                  la         s10, region_2+765 #start load_store_instr_stream_4
                  la         t1, region_2+8101 #start load_store_instr_stream_0
                  sb         a6, -2(s9)
                  lb         s2, 27(s6)
                  sb         ra, 9(s10)
                  lbu        t5, -16(s9)
                  la         sp, region_2+1978 #start load_store_instr_stream_2
                  sb         s6, -16(s9)
                  sb         t0, 11(s6)
                  lbu        s4, -15(s9)
                  lbu        ra, 11(sp)
                  lh         t3, -15(s9)
                  sb         a1, 29(t1)
                  sb         s11, 10(sp)
                  lb         s5, -31(sp)
                  lbu        a3, 59(s6)
                  sb         t4, -31(sp)
                  lb         s5, -14(s9)
                  lb         s7, -13(sp)
                  lhu        a6, -27(t1)
                  sw         t2, -34(s6)
                  lb         s0, -16(s10)
                  sb         s11, 5(s9)
                  sb         a1, -1(s10)
                  sb         t0, 4(s10)
                  sb         s7, -28(t1)
                  lbu        a5, -13(s9)
                  lbu        a3, -1(t1)
                  sb         t6, 41(sp)
                  lbu        s8, 15(s6)
                  lb         t5, -44(sp) #end load_store_instr_stream_2
                  sb         s5, 46(s6) #end load_store_instr_stream_1
                  lb         s7, -8(s9) #end load_store_instr_stream_3
                  lbu        tp, 50(t1)
                  lb         ra, -11(s10) #end load_store_instr_stream_4
                  sh         a7, -31(t1) #end load_store_instr_stream_0
                  la         t2, region_4+1572 #start load_store_instr_stream_3
                  la         s10, region_1+2972 #start load_store_instr_stream_2
                  la         a2, region_2+1223 #start load_store_instr_stream_0
                  la         s7, region_3+264 #start load_store_instr_stream_1
                  sb         s4, -12(s7)
                  lbu        s0, -11(s7)
                  lb         t0, -3(t2)
                  sh         t1, -128(s10)
                  lhu        a7, 2(s7)
                  sh         a1, 60(t2)
                  lb         s8, -61(t2)
                  lbu        s0, 0(a2)
                  lhu        s1, 13(a2)
                  lhu        s2, 204(s10)
                  lhu        t4, 220(s10)
                  sb         a5, 49(s10)
                  sb         t3, 15(a2)
                  lb         t1, 5(s10)
                  sw         t1, -240(s10)
                  lb         s5, 7(s7)
                  sb         s10, -11(s7)
                  lb         a3, 187(s10)
                  lb         s5, 184(s10)
                  sb         s2, 16(s7)
                  sb         a7, -29(t2)
                  lbu        s9, -7(a2)
                  lb         t5, 2(a2)
                  lh         s0, 10(s10)
                  sb         s1, -2(t2)
                  sb         a1, 3(s7)
                  lbu        a6, 2(a2)
                  lb         s0, -2(s7) #end load_store_instr_stream_1
                  sb         t6, 18(t2)
                  lbu        a1, 12(a2)
                  lh         s3, -234(s10) #end load_store_instr_stream_2
                  sb         s7, -13(a2)
                  sb         a0, 16(t2) #end load_store_instr_stream_3
                  lb         a6, -9(a2) #end load_store_instr_stream_0
                  addi       s4, zero, -9 #init loop 1 counter
                  c.andi     a3, -1
                  addi       s3, zero, 15 #init loop 1 limit
                  sub        t4, gp, t4
                  sra        s1, a7, t4
                  c.and      s1, a4
sub_1_23_1_t:     ori        a1, s3, -382
                  addi       s4, s4, 4 #update loop 1 counter
                  fence
                  addi       s8, zero, 10 #init loop 0 counter
                  fence
                  div        t1, s4, s9
                  sltu       a7, tp, a5
                  c.srai     a1, 9
                  c.addi16sp sp, -16
                  addi       s0, zero, 9 #init loop 0 limit
                  srl        t1, s11, t2
                  slti       s5, a7, 674
sub_1_23_0_t:     c.sub      a2, s1
                  addi       s8, s8, -5 #update loop 0 counter
                  xor        t0, s3, t2
                  bgeu       s8, s0, sub_1_23_0_t #branch for loop 0
                  slli       zero, t6, 19
                  c.srli     s1, 30
                  beq        s4, s3, sub_1_23_1_t #branch for loop 1
                  sub        gp, s4, t6
                  la         t1, region_3+354 #start load_store_instr_stream_1
                  la         s3, region_2+4814 #start load_store_instr_stream_0
                  lb         a6, 475(s3)
                  lbu        t3, -1305(s3)
                  lb         t2, -1752(s3)
                  sh         tp, 50(t1)
                  lbu        zero, -32(t1)
                  lhu        s2, -62(t1)
                  lbu        a5, 360(s3)
                  sb         t5, -347(s3)
                  lbu        s6, 33(t1)
                  lhu        ra, 22(t1) #end load_store_instr_stream_1
                  lb         s10, -1835(s3)
                  lb         s8, -1341(s3)
                  lb         s11, -1123(s3) #end load_store_instr_stream_0
sub_1_7:          jal        t1, 11f
0:                c.jal      13f
1:                c.jal      5f
2:                c.jal      6f
3:                c.jal      9f
4:                jal        t1, 14f
5:                c.jal      7f
6:                c.jal      12f
7:                c.j        16f
8:                c.jal      10f
9:                c.j        4b
10:               jal        s0, 3b
11:               c.jal      15f
12:               c.jal      8b
13:               jal        s2, 1b
14:               c.jal      0b
15:               c.j        2b
16:               remu       s1, a5, s7
                  la         s7, region_3+497 #start load_store_instr_stream_2
                  la         t1, region_4+2820 #start load_store_instr_stream_1
                  lb         ra, 79(t1)
                  lb         s8, -173(s7)
                  lhu        tp, 226(t1)
                  lbu        s11, -90(s7)
                  la         gp, region_2+2159 #start load_store_instr_stream_0
                  sh         s8, 4(t1)
                  sb         s0, -260(gp)
                  sw         s0, -204(t1)
                  sb         t0, -153(s7)
                  sb         s11, 233(gp)
                  lb         s5, 89(t1)
                  lbu        s10, -140(s7)
                  lbu        a3, 8(gp)
                  sb         s9, 4(t1)
                  lbu        t2, 262(gp)
                  lbu        a5, 245(t1)
                  lbu        t0, 14(t1)
                  sw         s10, -29(s7)
                  lb         ra, -240(s7)
                  sb         s9, 148(gp)
                  lbu        s9, -236(s7) #end load_store_instr_stream_2
                  lbu        s4, 79(t1)
                  lb         s8, -50(t1) #end load_store_instr_stream_1
                  lbu        t2, 1314(gp) #end load_store_instr_stream_0
                  la         gp, region_3+349 #start load_store_instr_stream_3
                  la         s1, region_1+1065 #start load_store_instr_stream_2
                  la         s5, region_4+2860 #start load_store_instr_stream_0
                  la         s9, region_2+3531 #start load_store_instr_stream_4
                  la         s6, region_0+92 #start load_store_instr_stream_1
                  lb         s0, 10(gp)
                  sb         s3, -9(gp)
                  lb         s2, 11(s6)
                  sb         t3, -11(s9)
                  lbu        s11, 6(gp)
                  sb         a5, -10(s9)
                  lbu        s0, 4(s1)
                  sh         a1, 44(s5)
                  lbu        sp, -14(s6)
                  lhu        t4, 54(s5)
                  lb         a7, -22(s5)
                  sh         s4, -1(s1)
                  lb         t3, 4(s9)
                  lbu        zero, -33(s5)
                  lbu        s0, 12(s9)
                  sb         s3, -8(s9)
                  sb         t6, -10(s1)
                  lbu        a1, -6(gp)
                  lb         t3, -46(s1)
                  lbu        s11, 1(gp)
                  sb         s6, 15(s6)
                  lh         a6, -3(s9)
                  lb         sp, -59(s1)
                  lhu        ra, 5(gp) #end load_store_instr_stream_3
                  lbu        s8, 38(s1)
                  lbu        tp, 25(s5)
                  sw         a1, -15(s9)
                  sb         a7, -7(s6)
                  lbu        s3, 4(s9)
                  lb         a5, 2(s5)
                  sb         t3, -5(s6) #end load_store_instr_stream_1
                  lb         s11, -55(s1) #end load_store_instr_stream_2
                  lb         a6, 10(s9) #end load_store_instr_stream_4
                  lb         s2, 3(s5)
                  lb         s10, 41(s5) #end load_store_instr_stream_0
                  la         s10, region_0+766 #start load_store_instr_stream_1
                  lb         s2, 63(s10)
                  la         s4, region_0+2329 #start load_store_instr_stream_0
                  lh         s2, -4(s10)
                  sb         s11, -192(s4)
                  lbu        gp, -9(s10)
                  lbu        t0, 1(s10)
                  sb         a4, 140(s4)
                  lhu        t0, 83(s4)
                  lh         a7, -4(s10)
                  sw         s2, 147(s4)
                  lbu        s6, -13(s10)
                  lh         t5, 24(s10) #end load_store_instr_stream_1
                  lbu        s7, -232(s4) #end load_store_instr_stream_0
                  c.and      a1, s0
                  mulhu      t2, t0, a5
                  sll        a6, tp, s4
                  c.lui      a3, 21
                  nop
                  srai       s8, a7, 24
                  c.srli     a3, 29
                  c.and      a5, a2
                  sltu       s10, t1, a6
                  c.srli     a5, 12
                  mulh       s10, s0, s9
                  srai       s0, s5, 7
                  beq        a2, t1, 26f
                  csrrs      s8, 0x340, t1
                  and        zero, s2, a2
                  divu       ra, s11, t2
                  c.andi     a3, -1
                  c.addi16sp sp, -16
                  csrrc      a1, 0x340, s5
                  c.and      a5, s1
                  fence
                  srai       zero, s10, 3
                  div        s0, s1, t1
                  c.sub      s0, a1
                  csrrw      s2, 0x340, s3
                  divu       s10, s1, tp
26:               fence.i
                  rem        s11, t2, t6
                  srli       t5, s1, 31
                  c.addi16sp sp, 16
                  sra        t3, t5, a7
                  ori        s11, s2, -653
                  sltu       t0, t6, s6
                  slli       t1, t1, 11
                  lui        t4, 162327
                  div        a3, s0, a5
                  c.beqz     s1, 52f
                  sltu       s10, t2, t5
                  c.nop
                  c.andi     a5, -1
                  c.lui      ra, 26
                  c.srai     a5, 15
                  fence
                  and        s0, s2, t0
                  bne        s7, s1, 60f
                  c.addi16sp sp, -16
                  srl        s8, sp, s9
                  c.mv       s1, a1
                  c.srli     s1, 19
                  sltu       a6, s0, s2
                  c.srai     a5, 15
                  c.sub      a3, a4
52:               slt        t0, sp, s3
                  slti       t5, a4, 458
                  mulhu      t3, s0, s3
                  mulhsu     t1, gp, sp
                  srai       s6, sp, 30
                  auipc      a2, 507118
                  c.ebreak;c.nop;
                  csrrsi     zero, 0x340, 19
60:               c.lui      s10, 12
                  c.mv       s9, t5
                  c.ebreak;c.nop;
                  mul        a3, s1, s2
                  c.ebreak;c.nop;
                  add        t2, sp, a2
                  divu       a2, a1, t1
                  csrrw      s4, 0x340, t5
                  mul        a6, a5, t1
                  csrrc      s5, 0x340, t0
                  nop
                  csrrci     s10, 0x340, 30
                  lui        t4, 876896
                  ori        t0, t6, -409
                  csrrc      t1, 0x340, a7
                  c.srli     a3, 10
                  mulhu      t2, a5, a3
                  c.addi16sp sp, 320
                  .4byte 0x00100073 # ebreak
                  .4byte 0x00100073 # ebreak
                  slt        tp, a2, gp
                  c.or       a5, a1
                  csrrwi     t0, 0x340, 19
                  csrrc      t2, 0x340, t6
                  c.sub      a3, a0
                  xori       zero, s2, 10
                  c.andi     a2, 17
                  srai       a5, a5, 9
                  mulh       t0, a4, a4
                  and        s11, a2, t6
                  csrrwi     s7, 0x340, 15
                  mul        a6, a7, a3
                  csrrsi     t1, 0x340, 25
                  or         a3, gp, zero
                  c.ebreak;c.nop;
                  c.nop
                  slti       t4, s6, -248
                  fence.i
                  nop
                  mulh       a7, s10, ra
                  lui        t3, 582307
                  csrrs      s0, 0x340, s3
                  blt        t1, t0, 120f
                  c.srli     a3, 20
                  c.mv       ra, s4
                  and        t2, s3, t1
                  csrrci     t1, 0x340, 17
                  bgeu       a0, a1, 116f
                  c.xor      a2, a4
                  bge        a4, t0, 114f
                  blt        t5, a4, 117f
                  slli       s9, a7, 28
                  c.slli     s3, 9
                  div        a5, s9, s9
114:              slt        s0, s5, tp
                  csrrsi     tp, 0x340, 31
116:              c.srli     s1, 30
117:              c.add      ra, a3
                  bge        s2, a4, 136f
                  mul        s9, s11, t4
120:              slti       s8, a2, 923
                  c.srli     a1, 29
                  c.slli     s2, 21
                  c.addi16sp sp, 224
                  nop
                  ori        ra, a4, -963
                  fence
                  c.li       a5, -1
                  or         tp, ra, s4
                  and        t5, s4, t3
                  div        a5, gp, zero
                  bge        t6, zero, 141f
                  ori        s1, t3, 434
                  srli       s7, s4, 11
                  and        s5, s0, a2
                  c.add      a2, s3
136:              nop
                  .4byte 0x00100073 # ebreak
                  .4byte 0x00100073 # ebreak
                  c.mv       ra, a5
                  sub        gp, s1, sp
141:              div        s6, t4, s1
                  div        sp, t3, s9
                  csrrc      s1, 0x340, s6
                  csrrwi     t1, 0x340, 29
                  bgeu       s11, s3, 157f
                  sll        s9, zero, s5
                  c.xor      a2, a3
                  fence.i
                  div        gp, a4, zero
                  c.ebreak;c.nop;
                  c.mv       t5, t0
                  lui        s3, 213700
                  csrrc      a1, 0x340, t2
                  csrrc      a3, 0x340, s5
                  c.srli     s1, 2
                  xor        t1, t3, s4
157:              c.bnez     a1, 171f
                  bne        a2, tp, 159f
159:              fence
                  csrrwi     s8, 0x340, 31
                  divu       t1, a3, s7
                  c.nop
                  xor        t5, t0, a7
                  srl        s1, t0, s2
                  csrrwi     s2, 0x340, 20
                  sra        t0, s0, s5
                  csrrs      s11, 0x340, t0
                  lui        t3, 814768
                  sra        t2, t4, gp
                  mulhu      s3, s8, s0
171:              or         zero, t6, s6
                  c.slli     s9, 15
                  andi       t1, t3, 376
                  fence
                  c.andi     a3, 12
                  c.and      s1, a5
                  sltu       s9, s2, a7
                  sra        t4, t3, s0
                  mulh       s3, s5, gp
                  add        t5, t2, a5
                  csrrw      t0, 0x340, t3
                  sltu       s3, t5, a3
                  srl        a3, t6, s10
                  c.andi     s1, 4
                  blt        a7, a0, 195f
                  slli       s5, s2, 10
                  blt        s1, zero, 189f
                  remu       sp, s1, sp
189:              divu       zero, a6, t6
                  bge        ra, a2, 199f
                  fence
                  bge        t4, a3, 202f
                  sra        t3, s1, a6
                  csrrw      t1, 0x340, s6
195:              c.srli     a1, 9
                  lui        s10, 783088
                  c.beqz     a1, 198f
198:              csrrs      a7, 0x340, a2
199:              c.xor      a2, a2
                  srl        sp, ra, sp
                  bgeu       s9, sp, 208f
202:              remu       zero, s6, s2
                  slt        a7, s10, t2
                  xor        t3, s5, s2
                  c.lui      gp, 3
                  c.li       t1, -1
                  sub        a5, s2, t3
208:              xor        a5, t2, t0
                  sll        s3, a0, s6
                  nop
                  ori        t5, s4, -1003
                  c.lui      t4, 3
                  slti       a1, s5, 414
                  c.addi     s6, -1
                  xor        t4, ra, s1
                  c.addi16sp sp, 416
                  mulhu      a1, tp, s3
                  mulh       a1, s8, s4
                  csrrc      a5, 0x340, a0
                  csrrwi     s3, 0x340, 1
                  sub        a3, t2, s7
                  c.add      ra, s3
                  mulhu      t5, t1, s7
                  sub        a2, s10, s8
                  mulhsu     t0, s8, a0
                  fence
                  .4byte 0x00100073 # ebreak
                  c.andi     s1, 17
                  slti       s1, a2, -340
                  srli       a7, t1, 31
                  c.addi16sp sp, -16
                  ori        s7, a2, 72
                  c.srli     a5, 31
                  slti       ra, gp, 942
                  c.slli     t0, 23
                  fence.i
                  xor        t2, s9, zero
                  csrrw      s5, 0x340, gp
                  c.addi16sp sp, -16
                  srl        a2, a5, a2
                  add        a7, s5, s11
                  ori        sp, gp, -717
                  c.nop
                  bge        t5, a5, 257f
                  auipc      s1, 984260
                  divu       s8, s5, s1
                  c.addi     s1, -1
                  c.addi16sp sp, 272
                  bge        s11, s6, 251f
                  c.xor      a5, a4
251:              andi       tp, s4, 377
                  csrrsi     s7, 0x340, 1
                  auipc      t0, 601305
                  c.and      a3, a2
                  c.addi16sp sp, 448
                  mulhu      t5, s11, s9
                  la         a1, region_2+7760 #start riscv_load_store_rand_instr_stream_2
                  c.srli     s0, 27
                  lui        s6, 679519
                  sb         s7, -49(a1)
                  c.sub      a3, a3
                  sb         a0, 250(a1)
                  sb         zero, 175(a1)
                  lui        s4, 737469
                  c.nop
                  sb         t4, -15(a1)
                  lbu        s10, -106(a1)
                  auipc      s11, 697263
                  lbu        a2, -163(a1)
                  sub        a2, s5, t4
                  lbu        s7, 15(a1)
                  addi       s0, s5, 141
                  lbu        gp, -253(a1)
                  lb         s3, 135(a1)
                  sub        a3, t3, a3
                  lb         s1, 93(a1)
                  lbu        s9, -111(a1)
                  sh         s3, -72(a1)
                  lbu        t5, -73(a1)
                  csrrci     t4, 0x340, 27
                  lb         s6, -82(a1)
                  slti       zero, s7, 569
                  c.and      s1, a2
                  lb         t0, -221(a1)
                  addi       s3, t6, -413
                  lw         s8, -52(a1)
                  lhu        tp, -66(a1) #end riscv_load_store_rand_instr_stream_2
257:              c.xor      s1, a5
                  c.bnez     a3, 271f
                  add        t1, t0, s9
                  c.srai     s0, 13
                  nop
                  ori        t5, t2, 198
                  c.add      sp, a1
                  sltiu      tp, a6, -840
                  mulhsu     s6, gp, t2
                  blt        s1, s11, 273f
                  blt        s7, t4, 272f
                  c.add      s3, sp
                  c.nop
                  c.slli     s0, 8
271:              bgeu       s8, ra, 288f
272:              mulhsu     s11, zero, a6
273:              andi       s2, s1, -89
                  sltu       s2, t6, s5
                  mulh       s8, zero, t3
                  c.mv       s11, t5
                  c.mv       a5, s7
                  c.addi16sp sp, 32
                  csrrc      t1, 0x340, t3
                  xori       s3, s11, -232
                  c.mv       t3, t0
                  nop
                  c.andi     s0, 23
                  c.mv       s5, ra
                  srl        s9, t6, a2
                  rem        s4, s8, ra
                  add        s2, a3, gp
288:              slli       a2, a7, 2
                  sltiu      s9, s1, -564
                  sub        a1, a3, t3
                  c.xor      a3, s0
                  divu       a3, a6, s4
                  c.or       a2, a3
                  c.slli     t5, 15
                  ori        s10, t4, 211
                  add        zero, s4, s3
                  beq        t1, t0, 299f
                  c.addi     s6, 1
299:              mulhu      s6, gp, t6
                  srli       s2, s0, 28
                  and        gp, s5, sp
                  slti       t5, s5, 147
                  c.and      a5, s0
                  c.bnez     a3, 324f
                  c.srli     s0, 13
                  bne        zero, s11, 315f
                  slti       a6, a6, -17
                  srli       s10, t1, 29
                  addi       a2, sp, 1
                  csrrsi     s8, 0x340, 30
                  remu       s4, s5, s8
                  auipc      s9, 405397
                  c.mv       s5, a7
                  c.bnez     a3, 323f
315:              div        s6, t5, t6
                  mulhsu     s4, s5, a4
                  c.srai     s1, 20
                  xor        sp, sp, zero
                  remu       s0, a7, s7
                  csrrs      s1, 0x340, t0
                  c.and      a1, a3
                  mulh       t3, s6, zero
323:              and        s9, s6, t4
324:              ori        t4, gp, -183
                  sra        a3, a0, s10
                  bltu       a4, gp, 334f
                  c.slli     t5, 6
                  sltu       a7, s7, s10
                  c.or       a3, a1
                  addi       s5, t3, 542
                  ori        a6, a6, 406
                  c.li       t2, 17
                  .4byte 0x00100073 # ebreak
334:              sub        a6, ra, a4
                  mulh       s5, s1, t2
                  c.beqz     s0, 339f
                  andi       s9, s2, 580
                  srli       s11, s6, 11
339:              auipc      ra, 141787
                  bne        a6, t6, 345f
                  fence
                  divu       s7, t6, a6
                  c.addi16sp sp, -16
                  csrrs      a7, 0x340, s6
345:              auipc      s2, 155332
                  andi       t3, s10, -742
                  csrrc      s2, 0x340, a0
                  srli       t3, a0, 30
                  c.li       t1, 10
                  c.sub      a1, a0
                  sub        t1, t0, s9
                  csrrc      t2, 0x340, a2
                  csrrsi     t0, 0x340, 8
                  nop
                  rem        s3, a2, a1
                  slti       a6, s6, 509
                  mul        s2, tp, a0
                  lui        s9, 110279
                  c.addi     tp, 28
                  bge        s8, s2, 369f
                  bltu       s8, s7, 375f
                  sll        a7, s9, s6
                  c.addi16sp sp, -16
                  beq        t2, sp, 376f
                  srl        a7, s9, a0
                  csrrs      zero, 0x340, a2
                  blt        t3, tp, 375f
                  c.add      t0, a6
369:              c.srli     s0, 26
                  andi       s8, a4, -253
                  sub        s8, t0, ra
                  c.and      a5, s1
                  c.xor      a3, a0
                  srli       a3, gp, 13
375:              c.srli     a3, 16
376:              c.addi     s3, 22
                  add        s8, t3, s11
                  addi       t3, s3, -626
                  nop
                  blt        tp, s7, 397f
                  nop
                  blt        a4, a7, 383f
383:              csrrc      s5, 0x340, t2
                  bltu       a6, s2, 391f
                  mulhsu     gp, s2, a1
                  c.xor      a5, a2
                  fence
                  c.slli     s11, 4
                  c.and      a2, a1
                  andi       s10, t3, 284
391:              c.add      s7, t6
                  mulhsu     a5, s6, sp
                  csrrci     t5, 0x340, 4
                  csrrwi     s9, 0x340, 17
                  addi       a1, a2, 851
                  csrrci     zero, 0x340, 27
397:              and        sp, s10, t6
                  srl        s0, s10, a4
                  c.and      a3, a2
                  mulhsu     s4, t3, a6
                  c.li       s10, 17
                  csrrw      t2, 0x340, ra
                  mulhsu     gp, s1, s10
                  csrrwi     s10, 0x340, 6
                  bgeu       a3, a3, 414f
                  div        s5, tp, gp
                  c.xor      s0, s0
                  c.beqz     a1, 410f
                  mulh       sp, s10, a0
410:              bge        s5, s7, 420f
                  andi       a2, t3, -936
                  or         s10, s7, a3
                  srai       s1, s7, 31
414:              bgeu       t5, t0, 432f
                  c.li       a5, -1
                  rem        s3, a0, tp
                  c.addi16sp sp, -16
                  slt        s6, s8, s4
                  csrrwi     gp, 0x340, 24
420:              mulhsu     t4, s0, gp
                  lui        a5, 66324
                  fence.i
                  c.slli     s9, 15
                  c.lui      a5, 2
                  c.bnez     a2, 430f
                  xor        gp, a4, gp
                  sltu       t0, t3, sp
                  addi       s8, t4, 782
                  fence
430:              or         s11, s11, t6
                  c.sub      s0, s1
432:              csrrwi     s4, 0x340, 3
                  and        s7, s7, s1
                  csrrwi     a1, 0x340, 1
                  divu       s0, s9, a1
                  bgeu       t6, s8, 443f
                  bge        sp, a3, 439f
                  slli       s1, s4, 23
439:              csrrsi     a2, 0x340, 18
                  .4byte 0x00100073 # ebreak
                  csrrw      tp, 0x340, s7
                  c.li       t5, 1
443:              nop
                  mulhu      s4, t0, s7
                  sltu       s9, s6, a1
                  or         a1, s4, t2
                  slli       t4, t0, 4
                  c.xor      a5, a4
                  nop
                  c.ebreak;c.nop;
                  sltiu      t1, a0, -239
                  andi       s3, t5, 483
                  bge        gp, s10, 463f
                  c.xor      s1, a1
                  c.andi     a1, -1
                  srli       zero, a3, 15
                  auipc      zero, 219343
                  .4byte 0x00100073 # ebreak
                  mulhu      a1, s10, t1
                  fence
                  lui        t2, 201006
                  c.xor      s0, a0
463:              csrrw      t0, 0x340, gp
                  sra        t1, a2, t0
                  blt        s2, s11, 468f
                  andi       s2, t4, -519
                  bltu       s6, sp, 487f
468:              .4byte 0x00100073 # ebreak
                  csrrsi     tp, 0x340, 21
                  csrrsi     t4, 0x340, 4
                  sub        tp, s0, a4
                  csrrsi     s5, 0x340, 6
                  or         s10, s10, t2
                  xori       a1, t2, -624
                  c.beqz     a1, 484f
                  csrrs      t2, 0x340, t3
                  nop
                  addi       a3, a5, -896
                  c.or       s0, a2
                  c.ebreak;c.nop;
                  blt        s7, s3, 495f
                  slt        t3, s4, t0
                  mulh       a2, s4, a4
484:              add        a3, a5, a7
                  rem        t1, sp, a4
                  csrrs      sp, 0x340, s6
487:              csrrsi     s8, 0x340, 6
                  slti       s5, s7, -368
                  slt        s6, ra, s0
                  and        a1, a3, s0
                  sltu       s2, t1, t5
                  xor        a5, tp, s2
                  srai       sp, s4, 6
                  mulh       s2, s1, a3
495:              mul        s5, a0, tp
                  beq        a5, t6, 505f
                  bltu       s6, t6, 510f
                  xori       a5, a7, -262
                  c.srli     a5, 10
                  c.sub      a1, a0
                  c.addi16sp sp, -16
                  la         tp, region_1+10533 #start riscv_hazard_instr_stream_2
                  fence.i
                  ori        s0, t5, 8
                  srli       t2, s0, 3
                  sw         s0, 19(tp)
                  sh         s8, 7(tp)
                  divu       t5, s0, s0
                  c.mv       s6, t5
                  sw         t2, -9(tp)
                  lbu        t5, -45(tp)
                  lbu        s6, -28(tp)
                  lw         a6, 7(tp)
                  c.slli     s8, 14
                  nop
                  lb         s6, 48(tp)
                  c.add      s0, t2
                  sb         t2, 35(tp)
                  mulhsu     t5, s6, t2
                  lb         s8, -40(tp)
                  lw         t2, 43(tp)
                  lb         s0, -50(tp)
                  sb         s0, 0(tp)
                  sb         t5, -14(tp)
                  csrrc      s0, 0x340, t5
                  lbu        t2, -40(tp)
                  nop
                  lbu        s8, 30(tp) #end riscv_hazard_instr_stream_2
                  rem        s8, t5, t6
                  andi       tp, ra, -281
                  divu       s3, t0, t5
505:              sub        t3, s11, s1
                  mulh       gp, a2, s9
                  ori        a6, a1, -866
                  mulh       t2, t1, s6
                  c.andi     a5, -1
510:              sltu       t1, t6, a3
                  mulhsu     s1, t5, s2
                  bne        t4, s2, 525f
                  c.add      gp, s7
                  csrrc      s10, 0x340, s7
                  c.li       s9, 28
                  c.nop
                  c.bnez     a1, 535f
                  c.sub      a2, a4
                  c.xor      s0, a0
                  csrrw      s8, 0x340, s11
                  c.andi     a1, -1
                  ori        a3, a1, -228
                  blt        s5, t2, 539f
                  bltu       t2, s7, 526f
525:              mul        s9, t1, ra
526:              fence
                  sra        s10, a2, s11
                  .4byte 0x00100073 # ebreak
                  slli       t5, s0, 19
                  bgeu       a7, s3, 540f
                  csrrsi     tp, 0x340, 0
                  divu       zero, s4, s4
                  fence.i
                  sltu       s3, t6, t4
535:              slt        a5, s11, s10
                  c.addi16sp sp, 224
                  c.and      a2, a2
                  sll        t0, tp, t1
539:              bne        t6, tp, 540f
540:              bgeu       a0, t1, 547f
                  slti       sp, t5, 552
                  and        t5, s5, s5
                  c.or       a1, a0
                  or         t3, zero, s3
                  mulh       s10, s10, s2
                  slli       t4, zero, 8
547:              c.addi16sp sp, 16
                  c.nop
                  bltu       s5, t2, 565f
                  remu       t2, a4, s0
                  bltu       a7, zero, 564f
                  addi       a3, zero, 1 #init loop 1 counter
                  addi       ra, zero, -3 #init loop 1 limit
                  csrrsi     t5, 0x340, 11
sub_1_20_1_t:     andi       s4, gp, -914
                  ori        s3, s7, 355
                  srl        a2, a4, tp
                  addi       a3, a3, -4 #update loop 1 counter
                  slli       a1, a3, 13
                  addi       t1, zero, 4 #init loop 0 counter
                  c.ebreak;c.nop;
                  slli       a6, sp, 15
                  addi       s9, zero, 8 #init loop 0 limit
                  mulhsu     s7, t3, t1
sub_1_20_0_t:     ori        a5, sp, -686
                  addi       t1, t1, 1 #update loop 0 counter
                  divu       t0, s6, s4
                  blt        t1, s9, sub_1_20_0_t #branch for loop 0
                  bne        a3, ra, sub_1_20_1_t #branch for loop 1
                  sltu       t2, a4, s8
                  bgeu       a2, s7, 553f
553:              sltu       s11, s0, s4
                  c.srai     a3, 19
                  c.li       t1, 13
                  andi       s11, gp, -787
                  c.nop
                  sll        s11, a1, s7
                  c.and      a5, a2
                  c.xor      s1, s1
                  blt        zero, s5, 579f
                  sub        s5, sp, a6
                  srai       t5, s10, 0
564:              c.addi16sp sp, 400
565:              slt        s2, a3, s11
                  c.lui      t5, 28
                  beq        s6, a6, 570f
                  slli       s2, sp, 22
                  c.ebreak;c.nop;
570:              or         a2, t6, s8
                  blt        s3, s1, 573f
                  xor        s7, t4, a5
573:              bne        a0, a6, 582f
                  slli       s3, t1, 12
                  c.srai     a2, 23
                  c.lui      s10, 15
                  slt        sp, s5, s4
                  c.li       t4, 18
579:              mul        a5, t4, s4
                  c.beqz     a5, 592f
                  c.nop
582:              and        t3, s3, t2
                  c.or       s0, s1
                  c.xor      a1, a0
                  csrrwi     s8, 0x340, 21
                  rem        tp, s2, s8
                  mulh       a7, s8, a2
                  blt        t0, s10, 597f
                  mulh       s3, a4, s4
                  sltiu      s2, s2, -640
                  csrrwi     t0, 0x340, 6
592:              srl        s8, t5, s0
                  sub        ra, a0, ra
                  c.srli     a3, 20
                  bge        s3, tp, 613f
                  xori       s0, s4, -16
597:              bltu       s1, t5, 605f
                  addi       t1, zero, 3 #init loop 1 counter
                  nop
                  c.and      a1, a0
                  addi       t0, zero, 18 #init loop 1 limit
                  and        a7, a1, s3
                  c.lui      s1, 22
sub_1_22_1_t:     slti       t2, t6, 320
                  csrrwi     t3, 0x340, 24
                  addi       t1, t1, 8 #update loop 1 counter
                  csrrc      s3, 0x340, a6
                  c.mv       s4, s8
                  addi       s7, zero, 5 #init loop 0 counter
                  ori        tp, s2, 1005
                  c.srai     a2, 8
                  sll        a3, s2, sp
                  c.srli     s0, 10
                  nop
                  .4byte 0x00100073 # ebreak
                  mul        s11, t0, t6
                  addi       sp, zero, 7 #init loop 0 limit
                  ori        s4, t2, -686
                  csrrci     s6, 0x340, 17
                  c.srli     a2, 26
                  andi       a3, s8, 60
                  sll        t5, t6, tp
sub_1_22_0_t:     c.addi     s5, 19
                  c.xor      a1, a1
                  mulhu      t4, s1, s10
                  c.addi     s10, -1
                  addi       s7, s7, 5 #update loop 0 counter
                  bltu       s7, sp, sub_1_22_0_t #branch for loop 0
                  slt        a2, a4, s5
                  blt        t1, t0, sub_1_22_1_t #branch for loop 1
                  srli       s11, s9, 6
                  csrrs      s4, 0x340, sp
                  fence.i
                  srl        t3, s1, s9
                  c.xor      a5, s1
                  c.li       s5, -1
                  csrrsi     ra, 0x340, 4
                  c.mv       a2, t2
605:              remu       a1, s7, s4
                  c.sub      a1, s1
                  divu       a2, s2, a4
                  xor        t1, t4, a1
                  srai       a6, s2, 22
                  or         s10, a1, s9
                  c.and      a5, s0
                  rem        ra, t2, s3
613:              csrrci     s7, 0x340, 22
                  fence.i
                  c.slli     tp, 7
                  bgeu       s11, s4, 625f
                  c.addi16sp sp, -16
                  srai       s3, t5, 24
                  or         s9, s1, s10
                  c.addi     sp, -1
                  c.mv       a7, a1
                  csrrs      t0, 0x340, a4
                  c.addi16sp sp, -16
                  slt        a5, a6, t4
625:              csrrs      t3, 0x340, a0
                  fence.i
                  bltu       a4, zero, 637f
                  c.beqz     a2, 633f
                  sltu       s0, a2, s11
                  bge        a5, a3, 646f
                  sub        s9, s8, t5
                  ori        gp, s2, 446
633:              .4byte 0x00100073 # ebreak
                  c.mv       s0, s10
                  bne        a0, t3, 644f
                  add        s3, a7, s2
637:              mul        t0, s6, tp
                  mulhu      s6, sp, s2
                  c.add      t1, tp
                  srli       a6, s1, 7
                  div        t3, a2, s10
                  blt        s6, s0, 659f
                  mul        s3, s10, a2
644:              csrrsi     tp, 0x340, 10
                  andi       s5, t5, -294
646:              slti       s9, s7, 478
                  div        s1, a5, s0
                  sll        t3, t2, t5
                  fence
                  ori        s6, a6, 298
                  c.or       a3, a0
                  bgeu       s8, a3, 668f
                  divu       t2, a5, t6
                  bge        a7, a4, 661f
                  ori        t0, t4, -331
                  xori       sp, t3, 62
                  ori        s7, a6, -962
                  csrrsi     t0, 0x340, 21
659:              add        s5, t1, s7
                  csrrc      a2, 0x340, s3
661:              csrrc      s8, 0x340, s7
                  c.slli     s5, 30
                  sltu       s8, t6, ra
                  csrrci     s4, 0x340, 31
                  slt        t1, a2, s2
                  c.sub      s1, a1
                  addi       s7, t5, -756
668:              c.srli     a1, 28
                  c.li       s8, 22
                  bltu       s1, a7, 672f
                  sll        t1, s5, s7
672:              c.xor      a2, a2
                  ori        a3, a3, -954
                  sltiu      tp, a4, 147
                  c.li       s1, -1
                  divu       s6, gp, sp
                  sub        t5, gp, s0
                  slt        tp, a4, sp
                  add        s11, zero, t1
                  slt        s3, a7, t3
                  blt        s8, a3, 688f
                  c.sub      a1, a0
                  c.addi16sp sp, 384
                  bgeu       s8, tp, 698f
                  .4byte 0x00100073 # ebreak
                  and        t1, s0, a0
                  auipc      gp, 569470
688:              slti       s3, s4, -690
                  srli       a1, a6, 23
                  c.mv       ra, t3
                  rem        t1, tp, ra
                  slli       t4, s3, 13
                  nop
                  andi       t1, gp, -850
                  c.sub      a1, a1
                  sub        t5, ra, s1
                  c.lui      s8, 8
698:              sra        t1, t1, a0
                  blt        s1, s1, 709f
                  .4byte 0x00100073 # ebreak
                  c.and      a1, a2
                  remu       s2, a5, a4
                  slt        t4, zero, a4
                  c.add      s8, a4
                  csrrci     t5, 0x340, 14
                  srai       s1, a1, 9
                  c.ebreak;c.nop;
                  c.slli     t4, 6
709:              .4byte 0x00100073 # ebreak
                  addi       gp, t3, 736
                  c.or       s0, s1
                  mul        a6, a1, s11
                  mulh       s7, s9, t6
                  c.sub      a1, a2
                  csrrc      sp, 0x340, s6
                  sub        a2, s0, t3
                  c.lui      s2, 25
                  sra        ra, s10, a0
                  slt        a5, s0, zero
                  div        t3, sp, a0
                  c.addi     a3, 9
                  rem        gp, s11, ra
                  fence.i
                  div        gp, t0, a0
                  c.nop
                  beq        a7, a0, 733f
                  c.beqz     s1, 732f
                  addi       s11, a7, 823
                  c.andi     a2, 31
                  csrrci     s9, 0x340, 18
                  c.slli     s1, 20
732:              csrrc      s9, 0x340, a0
733:              c.lui      a6, 4
                  slt        tp, gp, s4
                  c.xor      s0, a4
                  sltu       s5, s5, a7
                  c.lui      s6, 3
                  div        a6, t5, a6
                  csrrci     s5, 0x340, 19
                  auipc      tp, 541274
                  addi       tp, s10, 611
                  c.addi16sp sp, 240
                  csrrw      a3, 0x340, s0
                  c.li       t4, -1
                  add        s6, a6, tp
                  sub        a2, a7, s11
                  sltu       s4, t1, s10
                  beq        a3, a3, 762f
                  mul        a7, a0, s11
                  c.add      s8, t4
                  c.srli     s1, 29
                  or         s7, t0, s1
                  fence.i
                  sra        s6, s1, s10
                  bgeu       a7, t5, 765f
                  bgeu       a5, t1, 758f
                  add        s3, a0, gp
758:              c.and      a2, a3
                  c.add      s5, ra
                  c.or       s0, a1
                  bne        a3, s0, 762f
762:              auipc      tp, 297525
                  c.lui      t2, 19
                  slti       t2, s6, -795
765:              slti       t2, t5, -259
                  c.or       a5, a2
                  csrrsi     s3, 0x340, 13
                  csrrc      s5, 0x340, t5
                  bge        a4, a1, 789f
                  srli       t4, s11, 30
                  andi       a3, a4, -758
                  bge        t1, s1, 785f
                  bge        t2, a7, 782f
                  xori       ra, t5, 48
                  csrrci     gp, 0x340, 30
                  c.or       a1, a5
                  auipc      s9, 609289
                  rem        a3, s7, a6
                  sll        a3, tp, s9
                  c.addi16sp sp, -16
                  c.or       a2, a3
782:              c.bnez     a5, 783f
783:              c.andi     a5, -1
                  lui        s5, 622597
785:              auipc      s0, 271935
                  .4byte 0x00100073 # ebreak
                  srli       a3, tp, 18
                  c.ebreak;c.nop;
789:              xor        ra, t5, t5
                  add        sp, gp, s1
                  bgeu       t0, t2, 796f
                  mulhu      gp, zero, zero
                  fence.i
                  add        s1, a0, t0
                  nop
796:              div        a3, zero, s9
                  addi       a5, gp, -458
                  srli       gp, a1, 23
                  c.xor      a5, a2
                  c.lui      s2, 11
                  c.xor      a1, a1
                  csrrc      a7, 0x340, t2
                  mulhu      a3, t2, t0
                  csrrwi     zero, 0x340, 25
                  sll        s7, t5, a6
                  div        zero, a6, a1
                  c.xor      a5, a2
                  slti       s8, a4, 150
                  mulh       gp, s6, t3
                  csrrwi     s7, 0x340, 7
                  sll        s7, t0, a1
                  srl        a1, a4, s5
                  c.or       a1, a1
                  addi       t0, a2, 708
                  mulhu      s6, s1, a4
                  xor        a3, a6, s7
                  csrrs      t4, 0x340, a3
                  or         zero, a5, t0
                  c.li       t1, 13
                  or         s6, s5, a6
                  andi       t5, s10, -596
                  or         a3, gp, s10
                  fence
                  c.add      t3, a7
                  addi       s7, t0, 96
                  fence
                  srai       t5, s4, 19
                  c.sub      a1, a2
                  srl        s8, zero, t2
                  c.and      a3, a5
                  xori       t5, s10, -444
                  csrrwi     a1, 0x340, 22
                  .4byte 0x00100073 # ebreak
                  c.slli     s2, 12
                  mulhu      a6, a1, a3
                  xor        s5, tp, s8
                  c.addi     a5, -1
                  blt        s8, s0, 852f
                  csrrc      s11, 0x340, s11
                  mulhsu     sp, t4, s1
                  blt        a5, s8, 848f
                  mulh       s1, tp, s1
                  andi       s6, a0, 963
                  bge        ra, a1, 858f
                  bne        t6, a5, 847f
                  mulh       a7, s7, gp
847:              mul        s11, s7, a3
848:              c.lui      a7, 24
                  slt        a5, s2, gp
                  c.beqz     s1, 863f
                  c.slli     a7, 2
852:              lui        s0, 283187
                  c.beqz     s0, 863f
                  c.and      a2, a4
                  sll        s4, t1, ra
                  add        s6, t1, a1
                  slli       s3, t1, 12
858:              or         gp, s10, tp
                  sll        s10, t3, t3
                  sub        s4, gp, t1
                  c.or       a2, s1
                  remu       a3, t1, gp
863:              mulh       s5, ra, t2
                  nop
                  c.addi     s2, 29
                  lui        t2, 770551
                  c.srai     s1, 7
                  c.xor      a3, a3
                  c.li       a5, 31
                  sltu       tp, s6, ra
                  slti       a3, t5, -124
                  c.lui      t4, 3
                  xori       t4, zero, 492
                  and        tp, s10, s8
                  bge        s7, a4, 888f
                  c.srai     a3, 16
                  csrrci     s1, 0x340, 24
                  c.nop
                  lui        s8, 959711
                  rem        a7, a3, s7
                  c.addi16sp sp, -16
                  sub        s3, t1, t2
                  srl        a2, s3, a2
                  and        a6, a2, t4
                  c.addi16sp sp, -16
                  c.nop
                  c.lui      a2, 26
888:              slli       s0, zero, 0
                  ori        a5, s10, 55
                  bne        t1, sp, 906f
                  csrrs      s4, 0x340, s0
                  c.sub      s0, s1
                  c.beqz     a1, 896f
                  rem        s8, s1, t5
                  and        gp, s3, s6
896:              div        t2, t5, zero
                  slti       ra, t3, 527
                  srli       s9, s2, 8
                  bge        sp, s8, 900f
900:              c.mv       s6, t3
                  lui        s10, 757665
                  csrrwi     a3, 0x340, 16
                  c.srai     a5, 16
                  rem        sp, s7, s7
                  c.lui      s3, 30
906:              mulhsu     s4, s10, s10
                  sub        s2, s3, a1
                  rem        a7, t0, a6
                  c.addi16sp sp, 496
                  csrrc      a6, 0x340, t1
                  bge        s3, s7, 916f
                  remu       a7, a1, s0
                  c.mv       s10, t3
                  mulhu      t0, t6, a5
                  c.addi16sp sp, 224
916:              bne        a1, sp, 925f
                  slt        s7, a0, s11
                  c.mv       s4, a3
                  sra        s3, a3, t2
                  c.mv       s1, s9
                  bne        s7, t1, 937f
                  c.li       s0, -1
                  c.add      s6, t6
                  csrrw      t2, 0x340, s1
925:              c.xor      a5, a1
                  nop
                  sltu       s10, s0, t0
                  mulhu      s3, a6, a7
                  auipc      t5, 865423
                  slti       a1, s10, 435
                  addi       t3, s7, -934
                  c.sub      a2, a5
                  c.nop
                  slti       t5, s2, 859
                  c.addi     t4, -1
                  sltiu      s1, s10, 300
937:              c.slli     t2, 6
                  sub        s7, t2, ra
                  srl        a5, a1, s11
                  bgeu       ra, t1, 950f
                  c.addi     t4, 30
                  c.li       s4, 12
                  bltu       s10, s2, 951f
                  c.beqz     a2, 962f
                  c.lui      s3, 22
                  addi       a2, gp, 253
                  slli       t4, s10, 16
                  csrrw      s11, 0x340, a3
                  c.andi     a3, -1
950:              xori       t3, gp, -558
951:              ori        a3, t6, -1021
                  mulhu      a2, a5, s1
                  rem        t3, a1, a6
                  or         a2, gp, zero
                  and        s5, t0, s6
                  fence
                  c.bnez     s1, 966f
                  xori       s2, a1, -360
                  blt        s7, s11, 968f
                  or         s8, a1, s4
                  c.li       a3, 23
962:              c.bnez     a3, 964f
                  slli       a6, s4, 15
964:              csrrc      s0, 0x340, s9
                  mulh       s2, t0, a4
966:              slti       t3, t3, -720
                  csrrw      t1, 0x340, s9
968:              srli       t1, a5, 24
                  srli       a2, t6, 19
                  c.ebreak;c.nop;
                  andi       t1, a0, -676
                  mul        t2, t1, s11
                  bgeu       s8, a1, 980f
                  sub        t5, t6, s11
                  bne        s4, a1, 993f
                  c.or       a3, a3
                  slti       s11, a3, 676
                  sltu       s11, t5, t6
                  bne        s2, s8, 989f
980:              c.slli     ra, 16
                  c.addi     t1, -1
                  csrrs      s5, 0x340, a6
                  bgeu       s0, t6, 1000f
                  sltu       s2, gp, s0
                  remu       a5, s8, ra
                  bge        a5, a5, 1006f
                  c.sub      a3, a2
                  srl        s2, s7, a1
989:              and        s4, s6, s2
                  add        s7, t4, a1
                  fence
                  c.sub      a2, a5
993:              fence.i
                  csrrci     t3, 0x340, 28
                  slt        t1, a0, s3
                  sub        s1, s6, s9
                  csrrs      s4, 0x340, s5
                  andi       s8, s7, -314
                  sltiu      zero, t4, -732
1000:             ori        gp, s3, -772
                  c.and      a1, a0
                  mulhu      s10, a5, s5
                  bge        tp, s4, 1005f
                  slti       tp, a7, 1004
1005:             sltiu      s11, t5, -873
1006:             csrrwi     s0, 0x340, 5
                  c.add      s2, t3
                  c.ebreak;c.nop;
                  c.or       s0, a0
                  bgeu       s1, ra, 1022f
                  csrrs      ra, 0x340, sp
                  mul        a3, ra, a2
                  sltiu      gp, a7, 213
                  lui        a1, 624393
                  sll        s3, a3, tp
                  c.ebreak;c.nop;
                  bne        s10, s0, 1024f
                  lui        t0, 297167
                  blt        sp, t1, 1036f
                  c.andi     a1, 6
                  sll        t0, t1, s2
1022:             slt        s1, s5, t3
                  xor        s0, s10, tp
1024:             xori       a1, t5, 293
                  c.add      t1, s2
                  sub        tp, s10, t0
                  fence
                  c.nop
                  mulh       s0, t2, zero
                  mul        t5, t2, sp
                  divu       s6, s6, s10
                  c.ebreak;c.nop;
                  sltiu      a7, tp, 47
                  c.mv       t0, a4
                  bgeu       s8, s8, 1042f
1036:             sll        a2, s7, a5
                  c.slli     s4, 25
                  c.or       a1, a2
                  add        t3, a0, a0
                  csrrc      t0, 0x340, s5
                  slt        t4, a3, s2
1042:             c.xor      a3, a5
                  remu       a2, s10, s0
                  srl        s7, tp, t0
                  bge        a3, a2, 1063f
                  .4byte 0x00100073 # ebreak
                  .4byte 0x00100073 # ebreak
                  or         s11, s11, t4
                  auipc      s5, 286449
                  auipc      t0, 111026
                  c.lui      s6, 17
                  sltiu      a5, t4, 460
                  or         a6, s7, a1
                  c.ebreak;c.nop;
                  remu       s8, t5, ra
                  bgeu       s6, s3, 1058f
                  c.andi     a2, 7
1058:             srai       s0, s10, 23
                  csrrc      tp, 0x340, ra
                  bltu       s3, s8, 1069f
                  c.slli     a6, 13
                  rem        a3, t6, a4
1063:             div        a1, a4, s0
                  mulhu      s3, s9, a0
                  c.add      s5, s5
                  mulhu      t3, t1, a3
                  or         t2, t2, s11
                  xor        sp, s1, a0
1069:             sll        s2, a0, a3
                  c.add      s1, a5
                  mulh       t0, s4, zero
                  ori        a3, t2, 338
                  divu       sp, s10, s5
                  rem        s10, a7, s10
                  c.mv       s9, a2
                  fence.i
                  xor        s0, a5, s4
                  c.addi16sp sp, -16
                  sub        s3, s11, t1
                  mulhu      t4, s4, a4
                  ori        t5, t1, -39
                  ori        s6, tp, -794
                  c.sub      a2, a0
                  bgeu       a5, t5, 1091f
                  nop
                  mulh       a2, s7, s9
                  bne        sp, s0, 1107f
                  c.ebreak;c.nop;
                  c.addi     t3, 26
                  sub        tp, sp, s8
1091:             or         s9, zero, ra
                  csrrw      gp, 0x340, s5
                  c.slli     s7, 4
                  c.add      s6, t1
                  slti       a7, a6, 298
                  bne        a1, sp, 1112f
                  bgeu       zero, zero, 1107f
                  nop
                  csrrsi     s6, 0x340, 12
                  blt        sp, a5, 1101f
1101:             auipc      a2, 315098
                  slli       gp, t2, 18
                  beq        gp, a6, 1115f
                  remu       s10, s10, s3
                  csrrw      s10, 0x340, t4
                  mul        t3, t5, s3
1107:             c.or       a3, a3
                  csrrs      ra, 0x340, t3
                  xori       t1, t6, 311
                  divu       a5, a7, s11
                  divu       s5, sp, t2
1112:             xor        s0, s8, s4
                  slli       s2, s5, 28
                  slli       t0, s2, 31
1115:             sub        s4, a5, s0
                  divu       s1, a2, s5
                  c.slli     tp, 10
                  c.and      a1, s1
                  and        t4, a0, t3
                  and        s5, a0, t3
                  c.xor      s1, s1
                  and        gp, a2, a5
                  c.slli     t3, 6
                  sub        a2, s6, t2
                  c.srli     a5, 9
                  csrrw      a3, 0x340, s7
                  mul        t2, a5, a2
                  c.andi     a5, 8
                  bltu       t2, s6, 1139f
                  andi       a6, a7, 595
                  rem        t1, a3, s7
                  divu       s5, s10, a4
                  c.addi16sp sp, 128
                  mul        s10, a3, s0
                  remu       t2, s0, a2
                  lui        t2, 838936
                  c.xor      a3, a0
                  csrrs      s5, 0x340, t6
sub_1_8:          jal        t1, 0f
0:                c.jal      6f
1:                c.j        7f
2:                c.jal      9f
3:                c.jal      5f
4:                c.jal      11f
5:                jal        ra, 4b
6:                c.jal      1b
7:                c.j        8f
8:                c.j        2b
9:                jal        t1, 10f
10:               jal        ra, 3b
11:               c.nop
1139:             srai       t3, ra, 14
                  add        zero, t4, a4
                  div        t0, t2, gp
                  c.beqz     a2, 1152f
                  c.srli     a1, 15
                  c.nop
                  srl        s7, s6, s1
                  blt        s8, a6, 1149f
                  c.xor      a3, a5
                  sltiu      gp, s4, -472
1149:             c.lui      s0, 17
                  bge        s11, s5, 1164f
                  srl        s6, t1, gp
1152:             rem        t5, t5, t2
                  srai       t5, tp, 26
                  slt        tp, a1, s7
                  c.nop
                  slti       a6, zero, -265
                  fence.i
                  mulhsu     s2, a4, s10
                  csrrc      s11, 0x340, t1
                  bgeu       a6, t3, 1167f
                  c.xor      s0, a1
                  .4byte 0x00100073 # ebreak
                  csrrsi     s9, 0x340, 8
1164:             c.and      s0, a3
                  beq        a0, t0, 1166f
1166:             add        t4, a4, s8
1167:             sll        t4, s2, t4
                  c.bnez     s1, 1177f
                  c.and      a3, s1
                  c.addi16sp sp, 208
                  c.and      a1, a3
                  la         s1, sub_4
                  srli       s0, s8, 24
                  c.addi16sp sp, 272
                  c.nop
                  c.andi     s0, -1
                  c.li       sp, 26
                  andi       s4, a0, -522
                  srli       s2, a0, 6
                  addi       s1, s1, -885
                  c.and      s0, s0
                  beq        s4, t6, j_sub_1_sub_4_5 #branch to jump instr
                  c.xor      a2, a1
                  c.slli     a1, 8
j_sub_1_sub_4_5:  jalr       t1, s1, 885
                  bne        a3, a1, 1186f
                  c.sub      a2, a5
                  c.srli     s0, 18
                  c.slli     ra, 6
                  c.nop
1177:             csrrc      s0, 0x340, t5
                  sub        t1, s5, t6
                  c.mv       s10, a0
                  c.srli     a2, 12
                  c.add      a7, s3
                  csrrsi     a6, 0x340, 17
                  c.li       t3, 22
                  bge        t0, a3, 1197f
                  csrrw      t4, 0x340, s1
1186:             mul        s8, a0, s1
                  srai       a3, t2, 2
                  mul        s5, ra, s10
                  c.srai     a3, 30
                  xori       gp, zero, -688
                  csrrci     t0, 0x340, 31
                  sub        s3, gp, a2
                  c.lui      a7, 3
                  sltiu      s2, t4, 838
                  fence.i
                  c.slli     t1, 4
1197:             c.addi     t3, -1
                  csrrci     t0, 0x340, 18
                  divu       s8, a4, a2
                  c.lui      t1, 23
                  lui        s11, 129374
                  c.srai     a5, 25
                  c.slli     t3, 7
                  c.addi16sp sp, 416
                  srai       s0, s11, 13
                  bne        s9, t0, 1214f
                  auipc      a6, 155382
                  slt        t3, s0, s2
                  csrrs      t5, 0x340, a7
                  mul        s2, t1, s7
                  c.andi     s1, 13
                  auipc      s7, 843328
                  c.addi16sp sp, 432
1214:             mulhsu     zero, s10, a4
                  auipc      s6, 347644
                  div        s4, s5, t2
                  blt        a0, s6, 1226f
                  bge        t6, a3, 1220f
                  c.add      a2, s1
1220:             addi       t2, a2, -614
                  c.srli     a2, 15
                  xor        t5, s2, a0
                  c.addi16sp sp, 64
                  andi       s6, a1, 979
                  c.andi     a3, 22
1226:             auipc      ra, 464988
                  slt        s7, ra, s10
                  auipc      s9, 358178
                  bge        s2, a2, 1234f
                  csrrsi     t4, 0x340, 0
                  bge        a1, a7, 1244f
                  sltu       s1, a4, tp
                  srai       s4, a7, 31
1234:             div        gp, t4, a3
                  auipc      a3, 552855
                  fence.i
                  sra        a1, s1, a3
                  sll        zero, s9, a2
                  nop
                  slt        a5, ra, s1
                  fence
                  andi       a6, a4, -676
                  c.addi     a6, -1
1244:             add        t0, s8, s2
                  srli       gp, s5, 19
                  bne        t3, a5, 1264f
                  auipc      s3, 248542
                  srai       tp, s9, 21
                  ori        zero, a2, 855
                  c.add      a1, ra
                  rem        s7, a1, s3
                  bltu       a4, a0, 1261f
                  bgeu       a6, a1, 1258f
                  bltu       a6, s3, 1256f
                  csrrw      s1, 0x340, a4
1256:             xori       a2, s10, 256
                  c.srli     s1, 30
1258:             srai       t1, t4, 0
                  xori       s2, s11, -791
                  c.sub      a5, a3
1261:             c.or       a2, a3
                  slti       a1, t6, 842
                  and        s2, a6, a4
1264:             c.srli     a2, 26
                  c.srli     a2, 8
                  c.add      t5, s1
                  and        s7, gp, a6
                  srl        s6, s4, a4
                  nop
                  c.slli     a2, 31
                  c.andi     a1, 24
                  slti       ra, a7, -669
                  div        s1, a5, a4
                  or         s4, zero, t2
                  beq        a2, s8, 1291f
                  sub        t0, t6, s8
                  mulhsu     s2, t1, a3
                  fence.i
                  auipc      a2, 966520
                  blt        t0, s5, 1289f
                  addi       t1, s0, 253
                  div        s9, sp, s5
                  sltiu      t0, s6, -848
                  xori       s7, s9, 722
                  c.lui      s2, 26
                  slt        s3, s8, a7
                  blt        s5, ra, 1294f
                  csrrs      a1, 0x340, s3
1289:             fence
                  mul        a5, s4, a0
1291:             csrrci     a6, 0x340, 7
                  c.add      a7, t2
                  xori       s3, s5, -500
1294:             nop
                  sll        a1, s0, a7
                  c.srai     a5, 27
                  sra        a3, a0, gp
                  bge        s3, zero, 1307f
                  slli       s11, a0, 1
                  c.srai     s0, 24
                  sltiu      s0, a6, 148
                  c.addi16sp sp, -16
                  blt        s1, s8, 1313f
                  c.sub      s0, s0
                  srli       s8, a5, 20
                  rem        a7, s8, sp
1307:             bgeu       a6, a5, 1325f
                  and        s7, t3, s8
                  csrrw      s5, 0x340, a4
                  sltu       s0, s3, a3
                  bgeu       a5, t5, 1324f
                  fence.i
1313:             sra        t0, ra, a2
                  csrrci     s8, 0x340, 18
                  and        gp, s0, a3
                  fence
                  mulhsu     s5, s11, a7
                  div        s6, a1, a5
                  csrrc      a3, 0x340, t6
                  addi       s10, s8, -474
                  nop
                  rem        a6, s2, s5
                  c.or       a2, s1
1324:             c.sub      a2, s0
1325:             c.srai     a2, 9
                  c.add      tp, t0
                  or         t0, s4, ra
                  fence
                  c.and      a5, a0
                  lui        s0, 568570
                  ori        a1, zero, -842
                  bne        ra, s6, 1342f
                  addi       gp, a5, -773
                  c.and      a2, a2
                  div        a5, s2, a1
                  sll        t1, s6, s5
                  slti       a1, a0, 60
                  mulhsu     zero, t6, a1
                  slt        s1, a4, gp
                  add        s3, s11, s11
                  divu       a7, a5, s9
1342:             beq        t3, t2, 1355f
                  csrrwi     sp, 0x340, 17
                  addi       a6, tp, 73
                  xor        a5, s6, t6
                  bne        s7, ra, 1362f
                  c.bnez     s0, 1350f
                  c.srli     s1, 22
                  c.xor      a5, s1
1350:             or         a2, a4, t2
                  csrrci     s8, 0x340, 9
                  c.srli     s1, 29
                  srli       t4, a4, 25
                  div        s3, a6, t5
1355:             csrrci     t1, 0x340, 15
                  srai       s6, s1, 18
                  srl        t5, zero, s9
                  c.addi     s6, -1
                  rem        a5, ra, s6
                  c.and      s1, a4
                  c.bnez     s1, 1370f
1362:             fence
                  div        s1, s0, s9
                  sltiu      a3, t4, -101
                  beq        a7, t0, 1377f
                  c.slli     t2, 27
                  nop
                  csrrci     sp, 0x340, 9
                  slli       tp, a5, 15
1370:             .4byte 0x00100073 # ebreak
                  sltiu      s3, s9, -820
                  slli       a7, sp, 17
                  fence
                  rem        sp, s3, s10
                  mulhsu     s1, s1, t5
                  sub        a2, a4, s7
1377:             c.andi     a2, 22
                  lw         t1, 4(a4)
                  addi       a4, a4, 44
                  srl        a3, s4, s3
                  sub        s5, t4, s9
                  c.xor      a5, a2
2240:             c.jr x6
sub_4:            c.add      s4, a1
                  c.lui      s11, 12
                  addi       a4, a4, -52
                  c.nop
                  auipc      s7, 216781
                  sw         t1, 4(a4)
                  addi       t4, s9, -116
                  c.ebreak;c.nop;
                  csrrs      s8, 0x340, t3
                  mul        a6, t3, a2
                  and        s11, a4, s11
                  la         t5, sub_5
                  lui        tp, 738237
                  csrrw      a1, 0x340, a2
                  c.nop
                  mul        s10, s8, t1
                  addi       t5, t5, 754
                  csrrc      zero, 0x340, t6
                  and        t1, t4, a7
j_sub_4_sub_5_8:  jalr       t1, t5, -754
                  addi       a5, zero, -7 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
                  ori        a6, tp, 274
sub_4_80_0_t:     add        t1, a6, t5
                  addi       a5, a5, 7 #update loop 0 counter
                  c.srli     a1, 5
                  mulhu      s5, s3, s9
                  c.beqz     a5, sub_4_80_0_t #branch for loop 0
                  mulhu      t2, s0, t3
                  la         s1, region_0+1798 #start riscv_hazard_instr_stream_15
                  lbu        a2, -9(s1)
                  lbu        t4, -5(s1)
                  lhu        s2, 8(s1)
                  c.mv       s0, a2
                  c.lui      s0, 30
                  sw         s2, 14(s1)
                  sb         s8, -8(s1)
                  sh         a2, 6(s1)
                  add        a2, a2, t4
                  slt        s9, t4, t4
                  csrrw      s8, 0x340, s8
                  lw         s8, -2(s1)
                  sub        s0, s0, t4
                  lh         s9, -4(s1)
                  lb         a2, -6(s1)
                  slli       a2, a2, 10
                  sh         s8, 14(s1)
                  sh         s2, 4(s1)
                  sub        s8, s8, s8
                  srli       s9, s2, 13
                  srai       s8, s2, 6
                  csrrsi     t4, 0x340, 2
                  lbu        s9, 13(s1)
                  c.and      a2, a2
                  sh         t4, 2(s1)
                  c.and      s0, a2
                  c.nop
                  .4byte 0x00100073 # ebreak
                  c.ebreak;c.nop;
                  c.nop
                  nop
                  lhu        s9, -14(s1)
                  c.ebreak;c.nop;
                  lb         s8, -15(s1)
                  lb         a2, -16(s1)
                  lb         a2, 15(s1)
                  sw         t4, -2(s1)
                  ori        s8, t4, -983
                  lb         t4, -13(s1)
                  lb         t4, -11(s1)
                  lb         t4, 11(s1)
                  c.xor      a2, a2
                  add        t4, a2, t4
                  sb         s2, 7(s1)
                  c.sub      a2, a2
                  sw         t4, -2(s1)
                  sb         s0, 16(s1)
                  .4byte 0x00100073 # ebreak
                  lb         s0, -15(s1)
                  mulhu      a2, s2, s9
                  add        s8, s8, a2
                  andi       s2, a2, 823
                  .4byte 0x00100073 # ebreak
                  sh         t4, 0(s1)
                  lbu        a2, 13(s1) #end riscv_hazard_instr_stream_15
                  addi       a5, zero, 6 #init loop 0 counter
                  xori       s10, t4, -211
                  addi       zero, zero, 0 #init loop 0 limit
sub_4_74_0_t:     c.andi     a3, -1
                  c.or       a2, a3
                  addi       a5, a5, -6 #update loop 0 counter
                  c.slli     tp, 5
                  srl        ra, sp, a5
                  c.beqz     a5, sub_4_74_0_t #branch for loop 0
                  rem        s11, s0, sp
sub_4_25:         jal        t1, 18f
0:                jal        t1, 14f
1:                jal        t3, 11f
2:                c.jal      7f
3:                jal        ra, 0b
4:                c.j        1b
5:                jal        ra, 12f
6:                c.j        20f
7:                c.j        19f
8:                c.jal      4b
9:                c.j        5b
10:               jal        ra, 9b
11:               c.j        10b
12:               c.j        13f
13:               c.j        2b
14:               c.j        17f
15:               c.jal      21f
16:               jal        t0, 15b
17:               c.j        6b
18:               jal        t1, 3b
19:               c.j        16b
20:               jal        t1, 8b
21:               add        s2, zero, a5
                  la         t0, region_3+388 #start load_store_instr_stream_1
                  la         t3, region_2+4831 #start load_store_instr_stream_0
                  lbu        s0, -10(t3)
                  lbu        s4, 7(t3)
                  sb         t0, -125(t0)
                  lb         a1, -35(t0)
                  lb         t5, 10(t3)
                  lb         a3, 8(t3)
                  lh         s9, -218(t0)
                  lhu        sp, -286(t0)
                  lbu        s5, -13(t3)
                  sb         s5, -327(t0)
                  lb         s0, -365(t0)
                  sb         t0, -162(t0) #end load_store_instr_stream_1
                  lw         s6, -3(t3) #end load_store_instr_stream_0
                  la         sp, region_2+5310 #start riscv_load_store_rand_instr_stream_4
                  sb         a1, -135(sp)
                  sb         s0, 24(sp)
                  c.nop
                  sltu       s9, t0, s10
                  divu       t3, s1, t3
                  lbu        s3, 67(sp)
                  lbu        t4, 173(sp)
                  lw         s11, -142(sp)
                  fence.i
                  .4byte 0x00100073 # ebreak
                  lh         t2, -122(sp)
                  lb         t4, 109(sp)
                  lb         s7, 115(sp)
                  sb         zero, 85(sp)
                  lhu        a7, -136(sp)
                  fence.i
                  sb         s1, 87(sp)
                  sh         tp, -40(sp)
                  xori       s10, ra, -936
                  c.mv       s10, s7
                  sltiu      a5, t4, 413
                  sb         s9, -255(sp)
                  lb         t5, -17(sp)
                  c.addi     a2, 22
                  lb         s9, 251(sp)
                  csrrci     s9, 0x340, 23
                  lb         a6, 85(sp)
                  sub        s9, ra, t0
                  sb         s6, 99(sp)
                  lb         a5, 221(sp)
                  c.andi     a5, -1
                  sb         sp, 137(sp)
                  srl        t1, a7, gp
                  sb         s9, 187(sp)
                  lb         gp, -202(sp)
                  sb         s8, 11(sp) #end riscv_load_store_rand_instr_stream_4
                  la         tp, region_4+2494 #start riscv_hazard_instr_stream_6
                  c.ebreak;c.nop;
                  c.ebreak;c.nop;
                  lb         t0, 1443(tp)
                  lbu        s7, 1483(tp)
                  mul        s6, t0, t0
                  and        a2, s7, s6
                  xor        t0, s6, a2
                  c.srai     a2, 7
                  remu       a2, s7, s6
                  sb         s6, -289(tp)
                  slt        zero, zero, a2
                  lbu        zero, 417(tp)
                  lbu        s6, 465(tp)
                  lbu        s7, -1871(tp)
                  c.srai     a2, 7
                  lbu        t0, -1221(tp)
                  csrrc      t0, 0x340, s6
                  c.sub      s0, a2
                  csrrw      zero, 0x340, s0
                  sb         t0, 1073(tp)
                  lb         a2, -1553(tp)
                  c.addi     a2, 11
                  divu       t0, zero, s0
                  mulh       zero, s7, s7
                  sll        zero, s6, s7
                  c.addi     s6, 7
                  csrrw      s6, 0x340, t0
                  lbu        s7, 1587(tp)
                  sll        s6, a2, s0
                  divu       zero, s6, t0
                  c.srai     s0, 22
                  remu       s7, s6, t0
                  c.lui      s0, 3
                  slli       zero, s0, 14
                  c.xor      a2, a2
                  lb         s7, 583(tp) #end riscv_hazard_instr_stream_6
                  la         a7, region_0+677 #start riscv_load_store_rand_instr_stream_11
                  lbu        s6, -9(a7)
                  lbu        s5, 17(a7)
                  sb         s8, -26(a7)
                  sh         ra, -25(a7)
                  lh         t3, 1(a7)
                  slt        s11, s9, s6
                  csrrw      ra, 0x340, t0
                  sb         s11, 2(a7)
                  lbu        a2, 6(a7)
                  fence.i
                  sb         sp, -35(a7)
                  divu       t5, zero, t6
                  addi       s7, s10, 342
                  sb         s6, 16(a7)
                  sb         t0, 64(a7)
                  c.slli     s6, 25
                  fence.i
                  csrrs      a3, 0x340, gp
                  lbu        t3, -12(a7)
                  c.nop
                  lb         ra, -18(a7)
                  mulh       s3, s2, tp
                  sb         a1, 22(a7)
                  lbu        s10, 30(a7)
                  csrrs      s1, 0x340, s9
                  lbu        a1, -22(a7) #end riscv_load_store_rand_instr_stream_11
                  la         t4, region_0+3430 #start riscv_hazard_instr_stream_9
                  lbu        s2, -23(t4)
                  sb         sp, 6(t4)
                  c.srai     a2, 8
                  lbu        a2, -14(t4)
                  lbu        t0, 21(t4)
                  sb         a2, 3(t4)
                  slt        sp, s2, s8
                  c.add      sp, sp
                  lb         t0, 20(t4)
                  lb         sp, 0(t4)
                  c.sub      a2, a2
                  sb         sp, 0(t4)
                  c.addi16sp sp, 240
                  srai       t0, a2, 30
                  sra        t0, t2, s8
                  lui        t2, 880898
                  fence
                  slti       s8, sp, -895
                  lb         t0, 9(t4)
                  lb         s8, -58(t4)
                  slti       s8, s8, -589
                  slti       sp, t0, -318
                  lhu        a2, 14(t4)
                  c.mv       t0, s2
                  and        s2, s2, sp
                  lb         a2, -25(t4)
                  fence.i
                  sb         a2, 31(t4)
                  rem        t2, s2, sp
                  sb         s8, -43(t4)
                  xor        s2, t0, s2
                  c.and      a2, a2
                  sb         s8, -3(t4)
                  mulhsu     sp, s8, t2
                  srli       a2, t2, 21
                  sb         t0, 58(t4)
                  nop
                  fence.i
                  sb         t2, 56(t4) #end riscv_hazard_instr_stream_9
                  la         t0, region_2+7262 #start riscv_load_store_rand_instr_stream_0
                  sh         t4, -10(t0)
                  sb         s7, -4(t0)
                  mulhsu     s1, ra, s2
                  csrrci     s4, 0x340, 10
                  nop
                  sb         t3, -14(t0)
                  sb         s0, 5(t0)
                  addi       a2, a2, 450
                  csrrw      a2, 0x340, t3
                  lb         s9, -1(t0)
                  fence.i
                  c.nop
                  lbu        t4, 5(t0)
                  c.addi     s1, -1
                  sb         s6, 1(t0)
                  slti       s1, a4, 136
                  lb         s0, -5(t0)
                  lb         s8, 7(t0)
                  sh         a7, 2(t0)
                  c.li       a7, 27
                  c.or       a3, a0
                  sb         a4, 4(t0) #end riscv_load_store_rand_instr_stream_0
sub_4_26:         jal        t1, 6f
0:                jal        t1, 5f
1:                c.jal      10f
2:                jal        t0, 3f
3:                c.j        11f
4:                c.j        9f
5:                c.jal      2b
6:                c.jal      0b
7:                c.j        8f
8:                c.jal      13f
9:                c.j        12f
10:               c.jal      7b
11:               c.jal      4b
12:               c.jal      1b
13:               xor        s10, t0, s8
                  la         t1, region_2+2037 #start load_store_instr_stream_1
                  la         tp, region_2+3764 #start load_store_instr_stream_2
                  la         s1, region_2+6503 #start load_store_instr_stream_4
                  la         t2, region_2+712 #start load_store_instr_stream_0
                  lb         a5, -3(tp)
                  lbu        s0, -1534(t1)
                  lbu        gp, 16(t2)
                  sh         s10, 226(tp)
                  la         s10, region_2+4952 #start load_store_instr_stream_3
                  lbu        zero, -8(s1)
                  sb         s4, 5(s1)
                  sb         t4, -16(s1)
                  lb         t0, 386(t1)
                  lhu        s2, 16(s10)
                  sb         s5, 92(tp)
                  sb         t6, -3(s10)
                  sb         a3, -30(s10)
                  lb         gp, -14(s1)
                  sb         s10, 2013(t1)
                  lh         s4, 192(tp)
                  lhu        s8, 1439(t1)
                  sb         t4, 7(s10)
                  lbu        t4, 11(s1)
                  lhu        t5, -50(t2)
                  lhu        s5, 1701(t1)
                  lbu        t3, -167(tp) #end load_store_instr_stream_2
                  sb         t6, 338(t1)
                  lb         t4, -37(s10)
                  lhu        t5, -58(t2)
                  lb         s5, -31(s10)
                  lb         sp, -1800(t1)
                  lb         s8, 57(s10)
                  lhu        t5, -30(t2)
                  sb         a7, 8(s1)
                  sb         t5, 380(t1)
                  sb         t3, -4(s10)
                  sb         zero, -7(s1)
                  lh         a3, -715(t1) #end load_store_instr_stream_1
                  lbu        t4, -1(s10)
                  sb         a1, 5(s1) #end load_store_instr_stream_4
                  lbu        s11, 51(t2)
                  sh         a7, -52(s10) #end load_store_instr_stream_3
                  sw         s3, 56(t2) #end load_store_instr_stream_0
                  addi       s9, zero, 2 #init loop 0 counter
                  or         s3, s1, a5
                  mulhsu     s6, zero, a4
                  addi       s4, zero, 1 #init loop 0 limit
                  fence.i
                  c.sub      s1, a4
                  andi       s2, a0, -878
sub_4_78_0_t:     add        zero, s7, t0
                  c.xor      s0, a5
                  addi       s9, s9, -1 #update loop 0 counter
                  ori        s6, sp, 724
                  c.addi16sp sp, 224
                  beq        s9, s4, sub_4_78_0_t #branch for loop 0
                  sra        s7, s7, s8
                  la         s5, region_3+46 #start load_store_instr_stream_1
                  lbu        t3, 7(s5)
                  la         a3, region_3+141 #start load_store_instr_stream_3
                  la         a1, region_3+330 #start load_store_instr_stream_0
                  sb         s11, 23(a1)
                  la         s6, region_3+329 #start load_store_instr_stream_2
                  sh         s9, -60(a1)
                  lbu        s0, -7(s5)
                  lb         gp, 144(s6)
                  lb         a6, -41(a1)
                  sh         t0, 243(a3)
                  lb         s2, 25(a1)
                  lbu        t1, 178(a3)
                  sb         gp, 3(s5)
                  lb         a5, -43(a1)
                  lhu        a2, 119(a3)
                  lb         s2, 81(s6)
                  sb         s2, 181(a3)
                  lb         s11, -45(a1)
                  lh         t0, 34(s5)
                  lbu        s7, -43(a1)
                  sb         s5, 32(a3)
                  sb         s6, 91(s6)
                  lb         gp, -39(s5)
                  sb         s9, 25(s5)
                  sh         s8, -65(s6)
                  lbu        t3, -52(s6)
                  lbu        t5, -16(a1)
                  sb         s10, -29(a3) #end load_store_instr_stream_3
                  sw         t0, 46(s5)
                  sb         gp, 24(a1)
                  lbu        zero, -247(s6)
                  lb         t3, -25(s5)
                  lbu        gp, -36(s5)
                  lbu        t0, -33(s5) #end load_store_instr_stream_1
                  lb         s0, 14(s6) #end load_store_instr_stream_2
                  lbu        t5, -54(a1) #end load_store_instr_stream_0
sub_4_21:         jal        t1, 12f
0:                c.j        7f
1:                c.jal      18f
2:                c.jal      9f
3:                c.jal      11f
4:                c.jal      13f
5:                c.j        10f
6:                jal        ra, 15f
7:                c.j        3b
8:                c.j        0b
9:                c.jal      14f
10:               c.jal      20f
11:               c.jal      2b
12:               jal        ra, 4b
13:               c.j        1b
14:               jal        ra, 6b
15:               c.jal      17f
16:               c.j        8b
17:               jal        t1, 5b
18:               jal        ra, 19f
19:               jal        ra, 16b
20:               csrrsi     s8, 0x340, 15
sub_4_22:         jal        t1, 13f
0:                c.jal      6f
1:                c.j        8f
2:                c.j        5f
3:                jal        ra, 12f
4:                jal        ra, 15f
5:                jal        t1, 1b
6:                c.jal      4b
7:                c.jal      14f
8:                jal        ra, 0b
9:                jal        ra, 11f
10:               c.jal      9b
11:               c.jal      16f
12:               jal        ra, 10b
13:               jal        ra, 2b
14:               jal        s0, 3b
15:               c.j        7b
16:               mul        t4, a6, a6
                  la         s9, region_2+5465 #start load_store_instr_stream_2
                  lh         a1, 57(s9)
                  la         s0, region_2+3881 #start load_store_instr_stream_0
                  sb         s10, -41(s9)
                  la         s11, region_2+4732 #start load_store_instr_stream_1
                  lbu        t4, -80(s9)
                  sb         t2, -638(s0)
                  lbu        s2, -15(s11)
                  lb         t4, 13(s11)
                  sw         s4, -549(s0)
                  lb         t0, -5(s11)
                  sb         t4, -1(s11)
                  lhu        t1, 10(s11)
                  lbu        a2, 85(s9)
                  sb         tp, 54(s9)
                  lb         zero, -2(s11)
                  sb         a4, 910(s0)
                  sh         a0, -205(s9)
                  lhu        a6, 16(s11)
                  lh         t1, 85(s9)
                  lbu        gp, -1240(s0)
                  sh         a2, 14(s11)
                  sb         s1, 7(s11)
                  lb         t4, -15(s11) #end load_store_instr_stream_1
                  lb         t4, 254(s9) #end load_store_instr_stream_2
                  lbu        a1, 1218(s0) #end load_store_instr_stream_0
                  la         a3, region_2+3745 #start load_store_instr_stream_1
                  lb         tp, 117(a3)
                  la         sp, region_2+2707 #start load_store_instr_stream_2
                  la         ra, region_2+417 #start load_store_instr_stream_0
                  sb         a0, 217(ra)
                  sb         sp, 146(a3)
                  lbu        t5, -159(ra)
                  lhu        a6, 119(ra)
                  lbu        t4, 5(sp)
                  lb         t0, -23(ra)
                  lb         s10, -212(a3)
                  lbu        a7, 54(ra)
                  sb         s8, -1942(sp)
                  lbu        t4, -144(a3)
                  lhu        t3, -143(ra)
                  lhu        t1, 203(a3)
                  lhu        a1, -155(a3)
                  lbu        s0, 1541(sp)
                  lhu        s4, -253(ra)
                  lbu        t5, -1562(sp)
                  sb         a4, 69(a3)
                  sw         a1, -1687(sp) #end load_store_instr_stream_2
                  lb         a1, -152(a3) #end load_store_instr_stream_1
                  lbu        tp, 244(ra) #end load_store_instr_stream_0
                  la         s10, region_3+247 #start riscv_hazard_instr_stream_12
                  lb         s5, 24(s10)
                  lbu        t4, 0(s10)
                  srli       a7, t2, 22
                  lh         s5, 3(s10)
                  lhu        s1, 45(s10)
                  slt        a7, s1, a7
                  sb         s1, -14(s10)
                  add        t2, s5, s7
                  lb         s1, -42(s10)
                  sb         t4, -16(s10)
                  c.slli     s7, 3
                  nop
                  sb         s5, 23(s10)
                  add        s1, s7, t4
                  mulhsu     s1, s5, s7
                  c.mv       t2, s7
                  sb         s5, -62(s10)
                  auipc      a7, 1020172
                  mulhsu     t2, s1, t4
                  or         t2, t2, t4
                  c.andi     s1, -1
                  sh         t2, 3(s10)
                  xor        s7, t4, s7
                  sb         t4, 22(s10)
                  csrrci     s5, 0x340, 8
                  srai       s5, t4, 4
                  c.xor      s1, s1
                  sb         t4, -55(s10)
                  c.addi     s1, 30
                  c.andi     s1, 14
                  lw         t2, -59(s10)
                  sltu       a7, s7, t2
                  slli       s7, s1, 25
                  sltu       a7, a7, s7
                  c.addi     s7, 6
                  lh         t2, -5(s10)
                  c.nop
                  sb         t4, 34(s10)
                  csrrc      a7, 0x340, s5
                  c.or       s1, s1
                  slt        s7, a7, t4
                  c.add      a7, s1
                  sltu       s5, s5, s5
                  add        t4, t4, s7
                  lb         s1, -9(s10)
                  c.srai     s1, 18
                  lh         a7, -9(s10) #end riscv_hazard_instr_stream_12
                  la         s4, region_3+64 #start load_store_instr_stream_0
                  la         s9, region_3+158 #start load_store_instr_stream_1
                  lbu        a5, 49(s4)
                  lbu        t0, 93(s9)
                  lb         s1, 3(s4)
                  lhu        s8, -156(s9)
                  lb         ra, 13(s4)
                  lbu        t1, 123(s9)
                  lb         sp, 115(s9)
                  sb         a0, -45(s9)
                  lh         a2, -18(s4)
                  lhu        t0, -62(s4)
                  lb         ra, 176(s9)
                  lbu        sp, -71(s9)
                  sb         s3, 103(s9)
                  lb         gp, -21(s4)
                  sb         t2, 30(s4)
                  lbu        t5, -52(s9)
                  lb         ra, 117(s9) #end load_store_instr_stream_1
                  sb         s11, -49(s4)
                  lb         s10, 5(s4) #end load_store_instr_stream_0
                  la         a3, region_2+4070 #start riscv_load_store_rand_instr_stream_7
                  sb         s5, 991(a3)
                  add        s2, gp, t1
                  c.sub      a2, a3
                  sb         s9, 639(a3)
                  c.and      s1, a0
                  lbu        s7, 1839(a3)
                  sh         t3, 1848(a3)
                  lb         s0, 1429(a3)
                  lbu        a6, 255(a3)
                  lb         a1, 1452(a3)
                  c.addi     a2, -1
                  lb         s1, 723(a3)
                  lhu        a5, 986(a3)
                  c.mv       t5, s1
                  c.ebreak;c.nop;
                  sll        s2, s5, a3
                  c.ebreak;c.nop;
                  sb         a3, 345(a3)
                  lbu        t4, 651(a3)
                  lbu        s10, -1271(a3)
                  lbu        s2, 77(a3)
                  lbu        t4, 1525(a3)
                  remu       s4, s4, s8
                  lb         tp, 1407(a3)
                  c.slli     s2, 2
                  lui        a1, 826653
                  rem        t5, a0, a6
                  lb         a1, 1639(a3)
                  sb         zero, 1340(a3)
                  mulh       a5, s10, t2
                  csrrsi     s10, 0x340, 11
                  lh         gp, -200(a3) #end riscv_load_store_rand_instr_stream_7
                  la         s0, region_3+300 #start load_store_instr_stream_1
                  la         ra, region_4+703 #start load_store_instr_stream_0
                  la         s11, region_1+15696 #start load_store_instr_stream_2
                  lbu        a3, -249(s0)
                  sh         tp, -157(ra)
                  lbu        zero, 231(s11)
                  la         s6, region_0+85 #start load_store_instr_stream_3
                  lbu        s4, -155(s11)
                  lh         gp, 200(s0)
                  lb         s1, -35(s6)
                  lhu        s5, 49(s6)
                  lhu        s5, 222(s11)
                  sh         tp, -102(s0)
                  sb         zero, -35(s6)
                  lb         s7, -62(s6)
                  lb         s7, -75(ra)
                  lhu        t5, -49(s6)
                  sb         s9, -188(s11)
                  sb         a3, -267(s0)
                  lb         a6, -295(s0)
                  c.lw       a5, 12(s0)
                  lb         sp, 14(ra)
                  sb         a1, -30(s6)
                  sb         s0, -21(s0)
                  lb         s3, 227(s11)
                  lbu        s2, -1(s6)
                  lh         a2, 5(s6)
                  lb         s2, -191(ra)
                  lbu        t4, 36(s6)
                  lbu        a5, -8(s6) #end load_store_instr_stream_3
                  lb         a7, 201(s0) #end load_store_instr_stream_1
                  lh         tp, -196(s11) #end load_store_instr_stream_2
                  lb         tp, -238(ra) #end load_store_instr_stream_0
                  la         a2, region_2+7020 #start load_store_instr_stream_3
                  la         s2, region_1+3847 #start load_store_instr_stream_2
                  la         a1, region_3+145 #start load_store_instr_stream_0
                  sb         t4, 61(a2)
                  lb         zero, 330(a1)
                  la         s0, region_0+109 #start load_store_instr_stream_1
                  lbu        s7, -11(s2)
                  sb         s1, 104(s2)
                  sw         s3, -24(a2)
                  lb         s8, -4(s0)
                  c.lw       s1, 40(a2)
                  lbu        tp, 176(s0)
                  lhu        s8, 299(a1)
                  lbu        a6, 278(a1)
                  sb         a6, 31(a2)
                  lb         s10, 69(s2)
                  sb         t5, -120(a1)
                  lhu        a5, 12(a2)
                  lw         s4, -203(s2)
                  sb         t0, -80(s0)
                  sb         s5, -124(s2)
                  sb         t6, 1286(s0)
                  lhu        t5, 69(a1)
                  lbu        t4, 166(a1)
                  sh         t1, 287(a1)
                  lbu        s3, 154(s2) #end load_store_instr_stream_2
                  sw         gp, 467(s0)
                  lbu        ra, 1(a2) #end load_store_instr_stream_3
                  lb         tp, 2038(s0)
                  lhu        t4, 1785(s0) #end load_store_instr_stream_1
                  lb         a3, 148(a1) #end load_store_instr_stream_0
                  la         sp, region_1+5689 #start riscv_load_store_rand_instr_stream_9
                  lbu        t0, -108(sp)
                  div        s3, gp, tp
                  sb         a5, 145(sp)
                  sb         a5, 220(sp)
                  srl        t5, s3, a5
                  mulh       t5, a1, a1
                  xor        gp, s9, a1
                  srli       a1, sp, 27
                  rem        s4, s0, s3
                  sb         s9, -197(sp)
                  lbu        s5, -180(sp)
                  c.srai     s1, 20
                  lhu        zero, -251(sp)
                  div        a2, tp, s4
                  andi       t1, s9, 748
                  c.sub      a5, s1
                  add        s6, s11, gp
                  srli       s0, a0, 5
                  mulh       gp, t6, zero
                  xor        s9, s0, s8
                  divu       s0, zero, t4
                  lui        tp, 628621
                  c.xor      a5, s1
                  sb         gp, -254(sp)
                  divu       s5, a2, s0
                  fence
                  sltu       t0, s4, a3
                  remu       gp, a3, s9
                  sh         t2, 191(sp)
                  lhu        a5, 221(sp)
                  c.li       t5, 3
                  mulh       a6, s9, a3
                  addi       t2, s1, 88
                  lb         t2, 26(sp)
                  sb         s10, 44(sp)
                  c.addi     s7, -1
                  lhu        s4, 71(sp) #end riscv_load_store_rand_instr_stream_9
                  la         t5, region_2+6381 #start riscv_load_store_rand_instr_stream_5
                  sb         s0, -181(t5)
                  mul        tp, ra, t0
                  sw         t5, -109(t5)
                  mulhsu     a1, tp, t1
                  sb         s6, -15(t5)
                  sh         t2, -149(t5)
                  sh         s10, 33(t5)
                  lbu        ra, 109(t5)
                  lbu        t1, -178(t5)
                  sb         t5, 223(t5)
                  .4byte 0x00100073 # ebreak
                  divu       s0, a3, a7
                  sh         t0, -223(t5)
                  c.andi     a5, -1
                  lbu        s7, -162(t5)
                  c.and      s1, s1
                  lb         s2, -230(t5)
                  lh         s1, -231(t5)
                  csrrsi     t2, 0x340, 30
                  lhu        s3, 99(t5)
                  lbu        zero, 86(t5)
                  sb         a7, 162(t5)
                  sb         s4, 50(t5)
                  divu       t4, a0, a0
                  c.li       a2, 30
                  lh         s10, 99(t5)
                  rem        gp, a4, s2
                  addi       t3, a1, -124
                  sb         zero, 251(t5)
                  sh         t1, -107(t5)
                  mulh       tp, s9, s2
                  sb         a4, 66(t5)
                  lb         s5, -132(t5)
                  lhu        s1, -43(t5)
                  fence.i
                  c.nop
                  slli       a3, t3, 31
                  lbu        s7, 117(t5)
                  lhu        s8, -83(t5)
                  lbu        gp, 154(t5)
                  c.addi     t2, 29
                  sltu       t3, a1, s9
                  lbu        s2, -82(t5)
                  addi       t2, a5, 928
                  lbu        sp, 136(t5)
                  sb         s0, -158(t5)
                  sb         gp, 34(t5) #end riscv_load_store_rand_instr_stream_5
                  la         s2, region_0+1578 #start riscv_hazard_instr_stream_2
                  srai       t3, s10, 8
                  lhu        s11, -32(s2)
                  ori        s0, s10, 801
                  .4byte 0x00100073 # ebreak
                  lbu        s10, -45(s2)
                  c.lui      s6, 14
                  lbu        s0, -3(s2)
                  slli       s6, s0, 3
                  rem        t3, s0, s0
                  c.srai     s0, 24
                  sb         s10, -33(s2)
                  c.slli     s6, 11
                  c.and      s0, s0
                  lb         s11, -2(s2)
                  sll        s6, s0, s11
                  lb         s6, 42(s2)
                  xori       s11, s0, 365
                  srl        s0, s0, a2
                  lui        s10, 22735
                  sb         s6, -20(s2)
                  sb         s0, -45(s2)
                  csrrc      a2, 0x340, s0
                  slt        s0, a2, s10
                  c.nop
                  lbu        t3, 62(s2)
                  c.add      s11, t3
                  lbu        t3, -10(s2)
                  slt        s6, s11, s10
                  div        s11, s0, s0
                  div        t3, s10, s0
                  sub        s10, s0, a2
                  auipc      s0, 9483
                  lbu        s6, 33(s2)
                  c.srai     s0, 18
                  slli       s0, s11, 8
                  remu       a2, s0, a2
                  xor        t3, s11, a2
                  lbu        s6, 58(s2)
                  c.addi     s0, 3
                  lb         s0, 28(s2)
                  or         a2, s6, s6
                  xori       s0, s6, 992
                  lb         s11, -10(s2)
                  lb         a2, -25(s2) #end riscv_hazard_instr_stream_2
                  la         sp, region_2+5989 #start riscv_hazard_instr_stream_7
                  sb         a3, 128(sp)
                  c.mv       a7, s7
                  csrrwi     s9, 0x340, 23
                  sra        a1, a3, s9
                  csrrc      t1, 0x340, a1
                  sb         t1, 175(sp)
                  lhu        s7, 103(sp)
                  lb         a3, -40(sp)
                  lb         s7, -140(sp)
                  sra        t1, t1, a1
                  lb         t1, -151(sp)
                  lbu        a3, 33(sp)
                  lb         a1, -36(sp)
                  lbu        a7, 148(sp)
                  srl        a1, a1, s9
                  sltu       s9, a7, t1
                  sb         t1, -6(sp)
                  c.srai     a3, 25
                  slti       a1, t1, -386
                  sb         s7, 82(sp)
                  srl        a1, a7, a1
                  c.slli     a7, 6
                  lb         s9, 48(sp)
                  lw         a1, 51(sp)
                  sb         t1, -208(sp)
                  rem        t1, a3, a3
                  lw         a1, 55(sp)
                  auipc      s7, 732111
                  slti       a3, a1, -22
                  sb         t1, -193(sp)
                  c.xor      a3, a3
                  sb         t1, -108(sp)
                  lb         a1, 96(sp)
                  .4byte 0x00100073 # ebreak
                  mulh       a7, s9, s9
                  lbu        a7, 224(sp)
                  lb         s7, -122(sp)
                  srai       a7, a1, 15
                  c.srli     a1, 25
                  sltiu      a1, a3, 183
                  lb         a1, 234(sp)
                  lb         s7, 211(sp)
                  sb         a3, -161(sp)
                  sltu       a1, a1, t1
                  c.srli     a3, 11
                  sw         t1, -25(sp)
                  lhu        s9, 253(sp)
                  csrrs      a7, 0x340, t1
                  remu       s7, s7, s7
                  mulhsu     a7, s7, s9
                  and        t1, a3, s9
                  lbu        s7, 130(sp) #end riscv_hazard_instr_stream_7
                  la         a7, region_3+31 #start riscv_hazard_instr_stream_10
                  rem        tp, s9, tp
                  lb         s0, 188(a7)
                  srl        tp, s0, s0
                  c.srai     s0, 24
                  lb         s6, 474(a7)
                  mulh       s0, s6, s0
                  sb         s0, 92(a7)
                  lbu        tp, 151(a7)
                  addi       tp, s0, 762
                  lb         s2, 34(a7)
                  csrrs      t3, 0x340, s6
                  remu       s2, s6, s0
                  sh         s9, 283(a7)
                  csrrsi     s9, 0x340, 5
                  sll        t3, s9, s6
                  fence.i
                  c.nop
                  sltu       tp, s9, t3
                  lhu        s2, 291(a7)
                  lhu        s6, 207(a7)
                  lbu        t3, 170(a7)
                  lbu        tp, 197(a7)
                  add        s2, s2, s2
                  lh         s9, 155(a7)
                  mulhu      t3, s0, s0
                  lbu        s0, 153(a7)
                  lhu        s2, 381(a7)
                  lbu        tp, 466(a7)
                  lbu        s0, 398(a7)
                  sw         s0, 197(a7)
                  srai       t3, s2, 19
                  srli       s0, s9, 7
                  lb         s2, 220(a7)
                  csrrwi     s0, 0x340, 28
                  sb         tp, 469(a7)
                  andi       tp, s2, -565
                  lb         s6, 454(a7)
                  sb         s9, 448(a7)
                  c.slli     s9, 3
                  lw         s6, 369(a7)
                  lbu        s2, 478(a7)
                  c.srli     s0, 6
                  sb         t3, 59(a7)
                  div        s9, tp, s6
                  c.xor      s0, s0
                  sb         t3, 408(a7)
                  remu       tp, s2, s9
                  sb         s9, 333(a7)
                  sb         s6, 163(a7)
                  sb         s2, 206(a7) #end riscv_hazard_instr_stream_10
sub_4_33:         jal        t1, 7f
0:                c.j        15f
1:                c.j        5f
2:                c.jal      17f
3:                c.j        6f
4:                c.j        11f
5:                c.j        4b
6:                c.jal      14f
7:                c.j        8f
8:                c.j        18f
9:                c.jal      19f
10:               c.jal      16f
11:               c.j        9b
12:               c.jal      13f
13:               jal        t1, 3b
14:               jal        ra, 20f
15:               c.j        10b
16:               jal        a6, 2b
17:               c.jal      1b
18:               c.jal      0b
19:               c.j        12b
20:               sltu       s4, a7, s7
                  la         t0, region_1+5528 #start riscv_load_store_rand_instr_stream_8
                  lh         s0, -2(t0)
                  lb         a1, -9(t0)
                  sra        a3, a0, s5
                  sh         s1, 2(t0)
                  c.addi     a5, -1
                  csrrwi     s2, 0x340, 8
                  sll        a7, t4, s10
                  lui        sp, 442537
                  csrrsi     s8, 0x340, 21
                  lbu        tp, 3(t0)
                  sb         s4, -1(t0)
                  c.srli     a3, 19
                  mulhu      s6, s4, t0
                  lb         t1, -11(t0)
                  lb         tp, 3(t0)
                  lhu        s2, -16(t0)
                  mulhsu     tp, s0, t0
                  lh         gp, -2(t0)
                  sw         t4, -12(t0)
                  sra        s3, s3, gp
                  sra        ra, s8, s4
                  lhu        a2, -14(t0)
                  c.add      t3, sp
                  sb         tp, 16(t0)
                  sb         t3, -3(t0)
                  andi       a6, a5, 43
                  lbu        a6, 9(t0)
                  lb         a3, -6(t0)
                  csrrc      sp, 0x340, a4
                  lbu        s0, -15(t0)
                  srl        a6, a5, ra
                  csrrwi     gp, 0x340, 24
                  srai       t2, gp, 15
                  xori       s3, sp, -532
                  lbu        sp, 3(t0) #end riscv_load_store_rand_instr_stream_8
                  la         t3, region_4+648 #start load_store_instr_stream_1
                  lhu        s11, 4(t3)
                  sb         t4, -7(t3)
                  sb         tp, 8(t3)
                  sh         gp, 16(t3)
                  la         s4, region_4+2761 #start load_store_instr_stream_0
                  sb         ra, 14(t3)
                  sb         sp, 16(s4)
                  lbu        s2, -7(t3)
                  sb         s1, 7(s4)
                  lb         ra, 6(s4)
                  sb         s4, 4(t3)
                  lbu        sp, -1(s4)
                  lbu        ra, 0(s4)
                  lbu        gp, -3(t3)
                  sh         t0, -13(s4)
                  lhu        t4, 10(t3)
                  sb         t3, -2(t3) #end load_store_instr_stream_1
                  lhu        s10, -11(s4) #end load_store_instr_stream_0
                  la         a5, region_1+12051 #start load_store_instr_stream_1
                  sb         s9, -6(a5)
                  lbu        a3, 8(a5)
                  la         a6, region_1+13308 #start load_store_instr_stream_0
                  la         s3, region_1+7055 #start load_store_instr_stream_2
                  lh         t1, -9(a5)
                  lh         a7, -9(a5)
                  lbu        s1, 22(s3)
                  sb         a2, -61(a6)
                  lb         t4, 21(s3)
                  lb         t3, -15(a5)
                  sb         s0, 31(a6)
                  lb         gp, 20(s3)
                  sb         zero, 13(a5)
                  sb         s5, -27(s3)
                  sh         s8, 32(a6)
                  lbu        ra, 0(a5)
                  lbu        s9, 8(s3)
                  sb         a0, 26(a6)
                  lhu        a3, 3(a5)
                  sb         a5, -34(s3)
                  lb         s10, 3(s3) #end load_store_instr_stream_2
                  lb         s2, -16(a5)
                  sb         s5, -32(a6)
                  sb         s1, -50(a6)
                  lhu        s2, -3(a5) #end load_store_instr_stream_1
                  lb         sp, -29(a6) #end load_store_instr_stream_0
                  la         a2, region_3+454 #start load_store_instr_stream_1
                  lb         zero, -351(a2)
                  la         t5, region_3+88 #start load_store_instr_stream_0
                  lbu        s1, -41(t5)
                  lb         s1, -13(a2)
                  lb         s7, -83(t5)
                  sb         a3, 177(t5)
                  lh         t3, -318(a2)
                  sb         a7, 305(t5)
                  lb         sp, -135(a2)
                  lhu        t0, 210(t5)
                  sb         a0, 19(t5)
                  sb         ra, 73(t5)
                  lh         a5, -384(a2)
                  lb         s7, 189(t5)
                  lhu        s4, -420(a2)
                  lbu        s0, -59(a2)
                  lh         s3, 290(t5)
                  lh         a3, 8(a2) #end load_store_instr_stream_1
                  lbu        tp, 347(t5) #end load_store_instr_stream_0
                  la         s3, region_3+104 #start riscv_hazard_instr_stream_13
                  lb         s1, -60(s3)
                  c.xor      s1, s1
                  sll        t1, t2, sp
                  c.li       s1, -1
                  remu       t2, tp, s1
                  lb         t1, -62(s3)
                  div        s1, t2, s4
                  .4byte 0x00100073 # ebreak
                  sh         t2, -30(s3)
                  c.nop
                  c.ebreak;c.nop;
                  c.add      t1, sp
                  lb         sp, -8(s3)
                  lw         tp, -12(s3)
                  divu       sp, tp, sp
                  lui        t1, 85234
                  remu       t1, s4, tp
                  lui        s1, 490760
                  sb         s4, 53(s3)
                  slt        t1, s4, t2
                  lbu        tp, -17(s3)
                  and        tp, t1, sp
                  lhu        tp, -58(s3)
                  mulhsu     sp, sp, s1
                  divu       s1, s1, sp
                  c.and      s1, s1
                  lbu        s4, 22(s3)
                  csrrsi     sp, 0x340, 20
                  lh         sp, 6(s3)
                  lb         s4, 34(s3)
                  c.sub      s1, s1
                  srl        s1, s4, s1
                  lh         sp, 38(s3)
                  sb         t2, 2(s3)
                  mulhsu     t2, t2, tp
                  lui        s1, 784542
                  .4byte 0x00100073 # ebreak
                  c.srli     s1, 23
                  c.li       sp, -1
                  lbu        s1, 1(s3) #end riscv_hazard_instr_stream_13
                  la         ra, region_4+1107 #start load_store_instr_stream_2
                  lbu        s11, -12(ra)
                  la         tp, region_2+3043 #start load_store_instr_stream_3
                  lb         a1, -2(ra)
                  la         t5, region_0+3844 #start load_store_instr_stream_1
                  lb         a1, 41(tp)
                  sb         t5, 211(t5)
                  sb         tp, -55(tp)
                  lh         a1, 5(tp)
                  la         t3, region_3+262 #start load_store_instr_stream_0
                  lb         s3, -44(tp)
                  sh         s1, -18(t3)
                  lb         s5, -32(tp)
                  lb         s4, -30(tp)
                  lb         t1, -6(ra)
                  lb         t2, 227(t5)
                  lh         s8, -9(ra)
                  lbu        s11, 40(tp)
                  lh         s8, 13(ra)
                  sb         s3, 55(t5)
                  sb         t3, 6(ra)
                  sb         s10, 12(t3)
                  lb         a7, 3(ra)
                  sb         s8, -19(tp)
                  lb         s8, 44(tp)
                  lbu        zero, 189(t3)
                  lbu        t2, 211(t5)
                  lb         s1, -13(tp) #end load_store_instr_stream_3
                  lbu        s0, 19(t3)
                  lb         s2, 12(ra) #end load_store_instr_stream_2
                  lb         gp, 169(t5) #end load_store_instr_stream_1
                  sb         a4, 163(t3) #end load_store_instr_stream_0
                  la         s11, region_3+443 #start load_store_instr_stream_1
                  la         ra, region_3+357 #start load_store_instr_stream_2
                  lb         s6, 0(ra)
                  sh         s2, 41(s11)
                  la         s1, region_3+83 #start load_store_instr_stream_0
                  sb         t6, -13(ra)
                  lbu        a3, 44(s11)
                  lb         t5, -1(ra)
                  sb         s1, -55(s11)
                  lb         s2, 58(ra)
                  lbu        s8, 32(s11)
                  lb         s8, -38(s1)
                  sb         s1, 56(s1)
                  sb         s6, 334(s1)
                  sw         s8, -31(s11)
                  sb         s10, 101(s1)
                  sh         a0, 11(s11) #end load_store_instr_stream_1
                  sb         t1, -2(ra) #end load_store_instr_stream_2
                  sb         a3, 366(s1)
                  lbu        s3, 208(s1) #end load_store_instr_stream_0
                  addi       a1, zero, 2 #init loop 0 counter
                  csrrs      a2, 0x340, s3
                  ori        a5, sp, 549
                  addi       t5, zero, 16 #init loop 0 limit
                  sltiu      t4, s9, 181
sub_4_70_0_t:     slt        a3, a7, s3
                  c.nop
                  fence.i
                  addi       a1, a1, 6 #update loop 0 counter
                  or         s1, sp, s3
                  blt        a1, t5, sub_4_70_0_t #branch for loop 0
                  c.xor      s0, a5
sub_4_31:         jal        t1, 6f
0:                jal        t1, 5f
1:                jal        ra, 10f
2:                c.jal      9f
3:                jal        ra, 0b
4:                c.j        7f
5:                c.j        8f
6:                jal        t1, 2b
7:                c.jal      1b
8:                jal        ra, 4b
9:                jal        t0, 3b
10:               sll        s11, gp, a5
                  la         a1, region_4+2984 #start load_store_instr_stream_4
                  la         a2, region_4+2610 #start load_store_instr_stream_2
                  la         t0, region_4+3270 #start load_store_instr_stream_3
                  la         s2, region_4+655 #start load_store_instr_stream_1
                  lbu        t2, 715(a1)
                  sb         a0, 599(s2)
                  sh         a0, -38(a2)
                  sh         a7, -1534(a1)
                  la         s3, region_4+2285 #start load_store_instr_stream_0
                  lhu        t3, 887(s2)
                  lbu        tp, -177(a2)
                  lbu        s10, -57(s3)
                  lh         s7, -7(s3)
                  sh         zero, 1547(s2)
                  lb         s11, 69(s3)
                  lb         s7, -6(t0)
                  lh         s7, 6(t0)
                  lb         gp, -1787(a1)
                  lbu        a6, 200(s2)
                  lbu        sp, -98(s3)
                  sw         t3, -2(t0)
                  lbu        gp, 721(a1)
                  lhu        t5, -2(t0)
                  lhu        tp, -9(s3)
                  lbu        s4, -1331(a1) #end load_store_instr_stream_4
                  lbu        a7, 1(t0)
                  lb         s4, -22(s3)
                  lbu        s10, -175(a2)
                  lbu        zero, 305(s2)
                  sb         a6, -32(a2)
                  lb         s10, 60(s3)
                  lw         sp, 2(t0)
                  sb         s10, -164(s3)
                  lh         s9, 1439(s2)
                  sb         t0, 242(s2)
                  sb         t6, 137(s2)
                  lbu        sp, -13(t0)
                  lb         t4, 2000(s2) #end load_store_instr_stream_1
                  lh         s9, 226(a2) #end load_store_instr_stream_2
                  lbu        s1, -9(t0) #end load_store_instr_stream_3
                  lbu        t1, -127(s3) #end load_store_instr_stream_0
                  la         s5, region_0+1701 #start riscv_load_store_rand_instr_stream_10
                  fence.i
                  sltu       s7, s5, a5
                  srai       t3, s7, 29
                  c.mv       a6, s1
                  c.mv       a6, s7
                  lb         s0, -38(s5)
                  csrrs      t4, 0x340, s6
                  sb         a4, -12(s5)
                  lbu        t4, 22(s5)
                  lh         s6, 33(s5)
                  sb         s11, -61(s5)
                  lhu        a1, 25(s5)
                  mul        t1, t0, a1
                  lbu        a7, 18(s5)
                  c.lui      s7, 14
                  sra        s6, ra, s10
                  mul        a3, t6, t0
                  lbu        sp, -46(s5)
                  .4byte 0x00100073 # ebreak
                  mulh       t3, s5, s6
                  c.xor      a3, a2
                  c.srai     a3, 24
                  c.or       a1, a0
                  csrrs      s4, 0x340, sp
                  lbu        s2, -59(s5)
                  div        s9, s7, a6
                  csrrwi     s4, 0x340, 24
                  lb         t3, -25(s5)
                  lbu        a1, 53(s5)
                  lhu        a6, -7(s5)
                  csrrci     s7, 0x340, 26
                  sltiu      t1, gp, 82
                  .4byte 0x00100073 # ebreak
                  mulhu      a3, s7, a4
                  fence.i
                  c.srai     a3, 24
                  c.mv       ra, s11
                  lb         t0, -55(s5)
                  sltiu      gp, a3, -796
                  c.srai     a5, 17
                  slt        t4, gp, t4
                  sll        ra, t4, a1
                  c.andi     a5, 22
                  lb         t5, -28(s5) #end riscv_load_store_rand_instr_stream_10
                  addi       t0, zero, 7 #init loop 0 counter
                  addi       ra, zero, 15 #init loop 0 limit
                  xori       a3, s10, 815
                  xor        t2, a1, s6
                  mulhsu     s9, s0, t4
                  c.mv       s7, s7
                  sll        s11, s7, s0
                  nop
sub_4_79_0_t:     andi       a6, s3, 754
                  auipc      s11, 487186
                  addi       t0, t0, 9 #update loop 0 counter
                  fence
                  c.srai     a5, 22
                  c.mv       s5, s5
                  sub        s6, s3, s10
                  c.sub      a1, s0
                  nop
                  c.add      s4, s1
                  sltu       zero, s5, a5
                  c.xor      s0, a0
                  .4byte 0x00100073 # ebreak
                  c.add      s7, a0
                  mul        sp, a6, a5
                  c.nop
                  blt        t0, ra, sub_4_79_0_t #branch for loop 0
                  sub        t3, s3, a3
sub_4_23:         jal        t1, 5f
0:                c.j        4f
1:                c.jal      6f
2:                c.jal      8f
3:                jal        s2, 2b
4:                c.j        7f
5:                c.jal      0b
6:                jal        ra, 9f
7:                c.jal      10f
8:                jal        ra, 11f
9:                jal        gp, 13f
10:               c.jal      12f
11:               c.j        1b
12:               jal        ra, 3b
13:               fence.i
                  la         a1, region_2+7660 #start load_store_instr_stream_1
                  la         t4, region_2+37 #start load_store_instr_stream_2
                  sh         t4, 226(a1)
                  lb         s4, -107(a1)
                  sb         a1, 18(t4)
                  lb         s5, -150(a1)
                  lb         s0, 62(t4)
                  lb         s8, 2(t4)
                  la         s9, region_2+5447 #start load_store_instr_stream_0
                  sh         t3, 174(a1)
                  lh         a7, 57(t4)
                  lbu        s11, 791(s9)
                  lh         a7, 202(a1)
                  lb         s7, -484(s9)
                  sh         s6, 63(t4)
                  lb         s5, -65(a1)
                  sb         s10, 57(t4)
                  lb         s5, 70(a1)
                  sh         t6, 57(t4)
                  lb         a5, 48(t4)
                  sh         a4, -273(s9)
                  lb         a6, -30(t4)
                  lbu        a5, 170(a1)
                  sh         tp, -1111(s9)
                  lbu        s2, 57(t4) #end load_store_instr_stream_2
                  lbu        s5, 31(a1) #end load_store_instr_stream_1
                  lbu        s6, -1442(s9) #end load_store_instr_stream_0
                  la         sp, region_2+3456 #start riscv_hazard_instr_stream_0
                  sb         s11, -3(sp)
                  srli       s11, s3, 29
                  sb         s5, -13(sp)
                  c.slli     a2, 27
                  rem        a2, s5, t1
                  sub        s5, a2, t1
                  lbu        s11, -1(sp)
                  lbu        s5, 1(sp)
                  mulhsu     s5, s3, t1
                  sh         s11, -2(sp)
                  csrrwi     t1, 0x340, 26
                  andi       s5, s11, -229
                  lbu        t5, -9(sp)
                  xori       t1, t1, 1005
                  c.swsp     t1, 16(sp)
                  csrrc      s3, 0x340, s3
                  sh         t5, -2(sp)
                  auipc      s11, 546690
                  c.add      t1, t1
                  lui        s5, 677479
                  srli       a2, t1, 12
                  sb         t1, -4(sp)
                  sb         a2, -13(sp)
                  c.mv       s3, s5
                  mulh       t5, s3, t1
                  xori       t5, s5, 811
                  csrrci     a2, 0x340, 31
                  mulhu      t5, s5, t1
                  or         t5, s3, a2
                  or         a2, s11, t5
                  sh         a2, -8(sp)
                  c.mv       t1, t5
                  auipc      a2, 885092
                  lbu        s5, 13(sp)
                  c.lwsp     s5, 4(sp)
                  lh         s3, -2(sp)
                  sb         a2, -13(sp) #end riscv_hazard_instr_stream_0
                  la         sp, region_2+2202 #start load_store_instr_stream_2
                  la         s0, region_2+6875 #start load_store_instr_stream_3
                  la         a3, region_2+3339 #start load_store_instr_stream_0
                  lb         ra, 191(sp)
                  la         s6, region_2+509 #start load_store_instr_stream_1
                  lbu        ra, -39(sp)
                  lbu        t2, 194(sp)
                  sb         s3, 12(s0)
                  sb         s7, -4(s6)
                  lh         ra, 60(sp)
                  lhu        a5, 17(s0)
                  lb         gp, -16(a3)
                  lb         t5, -35(sp)
                  lbu        gp, 15(a3)
                  sh         t2, 3(s0)
                  sb         s9, 10(s6)
                  lh         s7, -13(s6)
                  lb         gp, -15(s6)
                  sb         t0, -37(s0)
                  sb         t3, 14(s0)
                  lbu        s1, 83(sp)
                  lbu        gp, -14(a3)
                  lhu        tp, 11(s6)
                  sh         a1, 11(s6)
                  lbu        ra, -8(a3)
                  lb         t3, 0(a3)
                  sb         s5, -29(sp)
                  lbu        s8, 12(a3)
                  sb         s1, -4(s6)
                  sb         s11, 15(s6)
                  lbu        a6, 8(a3)
                  lbu        s1, 29(sp)
                  sb         s6, -13(a3)
                  sw         s6, 3(s6) #end load_store_instr_stream_1
                  sb         gp, 33(s0) #end load_store_instr_stream_3
                  lhu        s11, -158(sp) #end load_store_instr_stream_2
                  sb         sp, -8(a3) #end load_store_instr_stream_0
                  la         t0, region_1+9327 #start load_store_instr_stream_2
                  la         s11, region_4+2597 #start load_store_instr_stream_0
                  lbu        a5, 120(s11)
                  lbu        a7, 1385(s11)
                  sh         s11, 23(t0)
                  la         gp, region_3+364 #start load_store_instr_stream_1
                  lh         sp, 111(t0)
                  lhu        a5, 127(t0)
                  lb         a3, -1170(s11)
                  sb         zero, -28(t0)
                  sh         s5, -248(gp)
                  lhu        a7, 255(t0)
                  lh         s8, -6(gp)
                  sb         a5, -125(s11)
                  sb         a5, 58(t0)
                  lbu        a7, -1558(s11)
                  sh         a6, -225(t0)
                  lbu        a1, 182(t0)
                  lb         ra, -38(s11)
                  sb         a4, -1248(s11)
                  lb         s1, -92(t0)
                  sb         t4, 35(gp)
                  lb         s4, -1172(s11)
                  lbu        t4, -40(t0) #end load_store_instr_stream_2
                  lb         s10, 538(s11)
                  sh         gp, 136(gp)
                  lb         t1, -56(gp) #end load_store_instr_stream_1
                  lbu        t5, -1940(s11) #end load_store_instr_stream_0
                  la         t0, region_3+30 #start load_store_instr_stream_1
                  lbu        s9, 18(t0)
                  sh         t2, 30(t0)
                  lw         s7, 14(t0)
                  la         a5, region_3+75 #start load_store_instr_stream_0
                  lb         a7, -39(a5)
                  sb         s8, -2(a5)
                  sb         a1, -12(a5)
                  sh         s2, 32(t0)
                  lbu        s2, -54(a5)
                  sh         t6, 0(t0)
                  sb         s11, 17(t0) #end load_store_instr_stream_1
                  lbu        s0, -12(a5)
                  lb         t2, -4(a5) #end load_store_instr_stream_0
                  la         a3, region_4+3816 #start load_store_instr_stream_1
                  lbu        zero, 8(a3)
                  la         ra, region_2+7301 #start load_store_instr_stream_0
                  la         s5, region_1+7077 #start load_store_instr_stream_4
                  lhu        s2, 6(a3)
                  la         a5, region_3+266 #start load_store_instr_stream_3
                  sb         t6, -50(s5)
                  sb         a7, 208(a5)
                  sb         s6, 7(s5)
                  la         s10, region_0+2229 #start load_store_instr_stream_2
                  lbu        s0, 2(ra)
                  sb         a6, -40(s10)
                  lbu        s3, -76(a5)
                  sh         a0, -139(s10)
                  lb         gp, 10(a3)
                  sb         s7, -27(s10)
                  sb         s4, -18(s5)
                  lhu        t2, 10(a3)
                  lb         s6, 6(ra)
                  sb         s0, -2(ra)
                  lw         s3, 206(a5)
                  lb         gp, -186(s10)
                  c.sw       a0, 8(a3)
                  lb         s7, -73(s10)
                  sb         t3, 195(a5)
                  sb         a6, 2(ra)
                  sb         t0, -2(ra)
                  lbu        t0, 43(s5)
                  lh         s8, -2(a3)
                  lh         a1, 176(a5)
                  lb         zero, 76(s10)
                  lbu        zero, 3(a3) #end load_store_instr_stream_1
                  lbu        t4, -2(ra)
                  sb         t3, -139(a5)
                  sb         a4, 214(s10)
                  sb         a7, -18(s5)
                  sb         a3, 60(a5)
                  lbu        a7, -27(a5)
                  sb         t6, 11(ra)
                  lbu        s7, -184(a5) #end load_store_instr_stream_3
                  sb         s8, 5(s5) #end load_store_instr_stream_4
                  lhu        s4, 197(s10) #end load_store_instr_stream_2
                  lhu        a2, -3(ra) #end load_store_instr_stream_0
sub_4_18:         jal        t1, 6f
0:                c.jal      10f
1:                c.jal      4f
2:                c.j        5f
3:                jal        ra, 8f
4:                c.jal      7f
5:                jal        t1, 9f
6:                jal        ra, 2b
7:                jal        s8, 14f
8:                c.j        12f
9:                c.j        13f
10:               c.j        1b
11:               jal        ra, 15f
12:               c.jal      11b
13:               c.j        0b
14:               c.j        3b
15:               divu       gp, a2, a0
                  la         sp, region_3+279 #start riscv_hazard_instr_stream_4
                  lb         s1, 8(sp)
                  lh         s6, 1(sp)
                  csrrsi     ra, 0x340, 25
                  lb         t0, -7(sp)
                  sb         s1, 5(sp)
                  mulhu      s6, s1, t0
                  lbu        ra, 14(sp)
                  div        s6, s1, ra
                  c.sub      s1, a1
                  sb         s6, 4(sp)
                  csrrs      a1, 0x340, s6
                  mulhsu     s6, s6, t0
                  c.li       s6, -1
                  csrrsi     s1, 0x340, 12
                  lb         ra, -16(sp)
                  sb         s1, 8(sp)
                  lbu        t4, -16(sp)
                  lbu        s6, 12(sp)
                  lw         s1, 13(sp)
                  c.slli     s1, 25
                  lb         t0, -4(sp)
                  csrrw      ra, 0x340, t4
                  xor        s1, ra, t4
                  c.add      t0, ra
                  lbu        ra, -12(sp)
                  lbu        t4, -3(sp)
                  c.slli     ra, 31
                  remu       s6, ra, a1
                  lb         t4, 8(sp)
                  sb         t4, 9(sp)
                  andi       s1, t4, -967
                  xori       a1, t4, -54
                  lh         s1, 5(sp)
                  lbu        ra, -6(sp)
                  srli       s6, a1, 14
                  mul        a1, t0, t4
                  srl        a1, a1, a1
                  rem        a1, s1, t4
                  lb         s1, 12(sp)
                  sub        t4, t0, a1
                  lh         ra, -5(sp)
                  fence.i
                  c.ebreak;c.nop;
                  sb         a1, 4(sp) #end riscv_hazard_instr_stream_4
                  la         sp, region_2+2438 #start riscv_load_store_rand_instr_stream_13
                  sub        a7, t0, a4
                  andi       t5, a5, -760
                  lb         s9, -32(sp)
                  lw         s0, -10(sp)
                  csrrsi     t3, 0x340, 7
                  lb         t0, 13(sp)
                  lb         a1, -33(sp)
                  sh         s1, 8(sp)
                  lb         s7, -64(sp)
                  lb         t2, -13(sp)
                  slti       a6, s4, -348
                  lhu        s4, 52(sp)
                  lhu        s6, -36(sp)
                  lb         a7, 64(sp)
                  sw         s1, 46(sp)
                  slli       a6, s1, 6
                  c.andi     a5, -1
                  mul        zero, a3, t4
                  sh         t1, 28(sp)
                  slti       s2, s9, -863
                  mulhu      t4, a6, a6
                  lb         s9, -25(sp)
                  srli       s6, s10, 18
                  c.xor      a3, s1
                  lbu        t5, -30(sp)
                  lb         zero, 9(sp)
                  lw         t0, 2(sp)
                  lbu        s6, 3(sp)
                  lbu        s1, 53(sp)
                  c.mv       s9, s2
                  xori       s9, t0, -255
                  lhu        s9, 6(sp)
                  c.ebreak;c.nop;
                  sb         a1, -43(sp)
                  sb         s7, 33(sp)
                  sb         s11, 55(sp)
                  xor        s9, a2, s6
                  lb         s8, 59(sp)
                  xor        t2, a4, a3
                  add        s3, sp, s7
                  lb         s2, -57(sp)
                  ori        t1, t4, -528
                  sb         t3, 17(sp)
                  lh         s0, 52(sp)
                  c.ebreak;c.nop;
                  fence
                  .4byte 0x00100073 # ebreak
                  ori        a7, s3, 1020
                  lw         a7, -54(sp)
                  srli       t2, a7, 23
                  lb         s2, -15(sp) #end riscv_load_store_rand_instr_stream_13
                  addi       a5, zero, -8 #init loop 1 counter
                  addi       s7, zero, -18 #init loop 1 limit
                  c.srli     a3, 26
sub_4_77_1_t:     sltu       t3, a4, a2
                  addi       a5, a5, -1 #update loop 1 counter
                  addi       s1, zero, 7 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
                  c.addi     a1, 7
                  rem        t2, a5, s9
sub_4_77_0_t:     c.li       s2, -1
                  addi       s1, s1, -1 #update loop 0 counter
                  c.beqz     s1, sub_4_77_0_t #branch for loop 0
                  srai       t4, s5, 0
                  beq        a5, s7, sub_4_77_1_t #branch for loop 1
                  sub        t1, s1, ra
                  la         s7, region_4+400 #start load_store_instr_stream_2
                  la         s6, region_0+3738 #start load_store_instr_stream_1
                  la         s3, region_1+3674 #start load_store_instr_stream_0
                  lw         gp, 1996(s7)
                  lb         gp, -57(s6)
                  lh         a1, 644(s7)
                  la         s0, region_3+55 #start load_store_instr_stream_3
                  lhu        a5, -44(s6)
                  lhu        s8, 1990(s7)
                  lhu        t0, 850(s7)
                  lb         s5, 19(s6)
                  sb         t0, 223(s0)
                  sb         a4, 11(s3)
                  lbu        t3, 25(s6)
                  lw         sp, 169(s0)
                  lbu        s2, -42(s6)
                  sb         sp, 7(s3)
                  lbu        a6, -58(s6)
                  lhu        zero, 8(s3)
                  lb         tp, -29(s6)
                  lh         a2, 168(s7)
                  lhu        s2, -6(s3)
                  sb         s3, 637(s7)
                  sb         a7, 433(s7)
                  lhu        s5, 52(s6)
                  sb         s0, -35(s6) #end load_store_instr_stream_1
                  lb         a1, 195(s0)
                  lb         t0, 200(s0)
                  lbu        t4, -287(s7)
                  lb         t1, 701(s7) #end load_store_instr_stream_2
                  sb         t0, 138(s0) #end load_store_instr_stream_3
                  sb         a0, -5(s3) #end load_store_instr_stream_0
                  addi       a5, zero, 4 #init loop 1 counter
                  mul        s10, s0, a7
                  andi       a2, s3, 601
                  mulhsu     t0, s10, t0
                  addi       t4, zero, 3 #init loop 1 limit
                  .4byte 0x00100073 # ebreak
                  csrrw      ra, 0x340, s1
                  fence
                  c.andi     s0, 20
sub_4_71_1_t:     ori        a2, s0, -673
                  srli       gp, a5, 9
                  addi       a5, a5, -1 #update loop 1 counter
                  slt        ra, a4, zero
                  csrrc      s4, 0x340, s1
                  or         s10, a6, a7
                  sltiu      s0, tp, 108
                  addi       a7, zero, 3 #init loop 0 counter
                  div        zero, t5, t3
                  c.srai     a3, 16
                  addi       s2, zero, 9 #init loop 0 limit
                  nop
                  mulhsu     s7, s2, s2
sub_4_71_0_t:     c.or       a2, a2
                  c.andi     a1, 12
                  nop
                  div        t5, a6, gp
                  addi       a7, a7, 10 #update loop 0 counter
                  blt        a7, s2, sub_4_71_0_t #branch for loop 0
                  c.andi     s1, -1
                  bgeu       a5, t4, sub_4_71_1_t #branch for loop 1
                  remu       a6, s5, s10
                  addi       gp, zero, -8 #init loop 1 counter
                  sll        a3, zero, s11
                  c.li       s4, 24
                  sltu       sp, ra, a3
                  csrrs      zero, 0x340, s7
                  c.or       s0, a3
                  c.add      a1, s6
                  addi       s9, zero, 20 #init loop 1 limit
                  divu       s8, s10, gp
sub_4_68_1_t:     mulh       s11, tp, a2
                  addi       gp, gp, 7 #update loop 1 counter
                  xor        sp, s5, s6
                  slli       s0, t2, 7
                  addi       s5, zero, -6 #init loop 0 counter
                  c.andi     a5, 29
                  addi       a2, zero, -15 #init loop 0 limit
sub_4_68_0_t:     mul        t4, gp, sp
                  sll        s4, zero, a5
                  addi       s5, s5, -9 #update loop 0 counter
                  div        s8, zero, s9
                  c.sub      a3, a0
                  mulhsu     a3, sp, a3
                  bne        s5, a2, sub_4_68_0_t #branch for loop 0
                  bltu       gp, s9, sub_4_68_1_t #branch for loop 1
                  mulhu      t1, a4, a3
                  la         a2, region_3+240 #start riscv_hazard_instr_stream_1
                  divu       a1, a1, a1
                  c.andi     a1, 25
                  div        zero, s6, a1
                  csrrci     a3, 0x340, 7
                  lb         s10, 13(a2)
                  sh         s7, 40(a2)
                  lbu        s7, -189(a2)
                  lb         s7, -187(a2)
                  c.li       s7, 12
                  sb         s10, 11(a2)
                  sh         a1, -10(a2)
                  lb         zero, 126(a2)
                  lb         s6, 55(a2)
                  mulhsu     s6, s10, s10
                  sb         s10, 125(a2)
                  srl        a1, s10, a1
                  sb         s6, 95(a2)
                  lbu        s6, 11(a2)
                  c.ebreak;c.nop;
                  slli       s7, zero, 11
                  lbu        s6, -233(a2)
                  sb         zero, -207(a2)
                  lbu        s6, -137(a2)
                  mulhu      s7, s10, s10
                  lh         s6, -26(a2)
                  remu       s6, a1, s6
                  lh         zero, 200(a2)
                  c.add      s6, s10
                  sb         zero, -143(a2)
                  lh         zero, -240(a2)
                  lbu        a3, -63(a2)
                  sh         a3, 30(a2)
                  sb         s10, -47(a2)
                  c.and      a3, a3
                  sb         zero, 131(a2)
                  and        a3, a1, zero
                  lbu        s7, 135(a2)
                  sll        s7, a3, a1
                  lb         a3, 127(a2)
                  lbu        zero, 51(a2)
                  lhu        s10, -112(a2)
                  c.xor      a1, a3
                  sh         s6, 22(a2)
                  lb         s10, -129(a2)
                  csrrc      a1, 0x340, a1
                  lb         s6, -196(a2)
                  lbu        zero, -1(a2) #end riscv_hazard_instr_stream_1
                  addi       s1, zero, -10 #init loop 0 counter
                  divu       s8, s9, a0
                  .4byte 0x00100073 # ebreak
                  or         a1, s10, a5
                  addi       tp, s6, 44
                  addi       zero, zero, 0 #init loop 0 limit
                  remu       s2, a7, s3
                  ori        s0, t1, 973
                  c.ebreak;c.nop;
                  slt        gp, s5, t3
                  srai       s8, s7, 0
                  div        t3, t3, s6
                  sll        s8, s4, zero
                  auipc      t5, 781776
                  xor        t4, a7, s7
                  c.andi     a1, 30
                  remu       s6, s7, a0
sub_4_72_0_t:     c.li       s2, -1
                  sra        a2, t3, a4
                  c.slli     a5, 3
                  andi       s10, a2, -592
                  c.or       a5, a1
                  c.mv       t2, tp
                  addi       s1, s1, 2 #update loop 0 counter
                  c.xor      a5, s0
                  c.addi16sp sp, 32
                  div        t4, s2, s11
                  c.and      a5, a0
                  c.beqz     s1, sub_4_72_0_t #branch for loop 0
                  fence.i
                  la         s2, region_4+1430 #start load_store_instr_stream_1
                  la         t5, region_2+7145 #start load_store_instr_stream_3
                  lbu        s5, -203(s2)
                  la         s1, region_0+2073 #start load_store_instr_stream_0
                  lb         ra, -212(s2)
                  sb         a4, -476(t5)
                  sb         t0, 11(s2)
                  la         a2, region_3+496 #start load_store_instr_stream_2
                  lw         sp, -413(t5)
                  lbu        a7, -1319(s1)
                  lb         a5, -2(a2)
                  lhu        t0, 405(t5)
                  sb         t4, 0(a2)
                  lb         t3, 193(s2)
                  lb         t4, -11(a2)
                  lb         s6, 6(a2)
                  lbu        gp, 1445(s1)
                  sh         t0, -525(t5)
                  lbu        a1, 13(s2)
                  lb         t2, -2(a2)
                  lhu        s4, -128(s2)
                  lb         s0, 11(a2)
                  lb         t0, 0(a2)
                  lb         s4, -15(a2)
                  sw         a5, 419(s1)
                  lhu        s9, -8(a2)
                  lbu        t4, 145(s2)
                  sb         zero, 93(s2) #end load_store_instr_stream_1
                  lb         s10, 660(s1)
                  lbu        tp, 890(t5)
                  lb         s8, -5(a2) #end load_store_instr_stream_2
                  lb         s11, -976(t5) #end load_store_instr_stream_3
                  lb         a6, -424(s1) #end load_store_instr_stream_0
                  la         s6, region_4+2329 #start riscv_hazard_instr_stream_3
                  sh         tp, 37(s6)
                  lb         s0, -24(s6)
                  c.mv       t4, s0
                  sh         tp, -1(s6)
                  sll        t4, s0, s0
                  lb         s0, 12(s6)
                  divu       s0, tp, t4
                  slti       s3, t4, -474
                  lbu        tp, -54(s6)
                  csrrwi     s9, 0x340, 28
                  lbu        s0, -12(s6)
                  xori       tp, s9, -28
                  mulhsu     s9, t3, s3
                  c.andi     s0, 14
                  divu       t4, s0, t3
                  lhu        s0, 19(s6)
                  lbu        s0, -27(s6)
                  lbu        s9, -13(s6)
                  lbu        s3, -48(s6)
                  mulhsu     t4, t3, s3
                  slt        s0, tp, s0
                  lbu        t4, 58(s6)
                  c.and      s0, s0
                  csrrw      s0, 0x340, tp
                  sh         t3, -63(s6)
                  sb         tp, 60(s6)
                  lbu        s0, -33(s6)
                  auipc      tp, 407274
                  c.xor      s0, s0
                  lbu        tp, 30(s6)
                  .4byte 0x00100073 # ebreak
                  fence
                  lw         s0, -37(s6) #end riscv_hazard_instr_stream_3
                  la         t0, region_0+320 #start load_store_instr_stream_1
                  sb         t2, -12(t0)
                  sb         s10, 13(t0)
                  lb         zero, 5(t0)
                  lb         s8, 1(t0)
                  la         a6, region_1+13988 #start load_store_instr_stream_0
                  lbu        s9, -9(a6)
                  lw         s4, -16(t0)
                  lb         s8, -9(t0)
                  lb         a5, -13(a6)
                  lb         a7, 11(t0)
                  lbu        s11, 11(a6)
                  lw         s11, 12(t0)
                  sw         a6, -4(t0) #end load_store_instr_stream_1
                  lb         s4, 7(a6)
                  lbu        s11, 7(a6) #end load_store_instr_stream_0
                  la         t4, region_4+2998 #start load_store_instr_stream_2
                  la         s1, region_0+2928 #start load_store_instr_stream_3
                  la         t0, region_2+7271 #start load_store_instr_stream_1
                  la         gp, region_1+11635 #start load_store_instr_stream_0
                  lbu        sp, -658(gp)
                  lb         a1, 683(gp)
                  lb         a6, 79(t0)
                  lhu        a3, -729(gp)
                  lb         a2, -1976(gp)
                  lh         a5, -4(s1)
                  lb         s10, 228(t0)
                  sb         s8, 100(gp)
                  sb         a7, -161(t4)
                  lb         a3, 1675(gp)
                  sb         a7, 1066(gp)
                  lb         sp, 100(t0)
                  sb         t2, 6(s1)
                  lhu        t1, -186(t4)
                  sb         t2, -3(s1)
                  lh         s0, 235(t0)
                  lbu        s9, -190(gp)
                  lb         s11, 0(s1)
                  sb         s9, -61(t4)
                  lbu        s4, 254(t4)
                  sb         t5, 1308(gp)
                  lb         s3, -128(t4) #end load_store_instr_stream_2
                  lw         t5, -16(s1)
                  lb         s8, -106(t0) #end load_store_instr_stream_1
                  lb         t3, 7(s1)
                  sb         zero, -3(s1) #end load_store_instr_stream_3
                  sb         s11, -1120(gp) #end load_store_instr_stream_0
sub_4_29:         jal        t1, 15f
0:                jal        ra, 5f
1:                jal        ra, 6f
2:                c.jal      10f
3:                c.j        8f
4:                c.j        12f
5:                jal        ra, 14f
6:                c.j        7f
7:                c.jal      18f
8:                c.jal      16f
9:                c.j        1b
10:               c.jal      20f
11:               c.jal      0b
12:               c.j        21f
13:               c.j        11b
14:               c.j        9b
15:               jal        t1, 13b
16:               jal        s10, 4b
17:               c.jal      19f
18:               c.jal      17b
19:               c.jal      2b
20:               c.jal      3b
21:               c.xor      a5, s1
                  la         sp, region_2+6974 #start riscv_load_store_rand_instr_stream_16
                  lb         s1, 523(sp)
                  or         zero, t3, zero
                  sltu       t2, t3, s10
                  sh         s4, -1408(sp)
                  lb         s1, 52(sp)
                  csrrc      s6, 0x340, s2
                  mulh       s0, s7, t6
                  c.lui      s8, 7
                  lh         a3, -70(sp)
                  lhu        t2, -1008(sp)
                  c.mv       a7, sp
                  fence.i
                  lb         t1, 787(sp)
                  sb         a6, 48(sp)
                  lbu        zero, 451(sp)
                  srli       s11, a2, 22
                  mulhu      a5, t5, s6
                  lb         s11, -1256(sp)
                  remu       s3, s6, a4
                  lbu        s1, 1071(sp)
                  lbu        zero, -825(sp)
                  sw         sp, -1234(sp)
                  c.xor      a5, a3
                  mulhu      a2, s3, s1
                  mulh       s0, a4, t4
                  ori        s11, t5, 115
                  lh         ra, -1786(sp)
                  lh         s8, -1636(sp)
                  c.li       s0, -1
                  lbu        s2, -424(sp)
                  c.srai     a3, 8
                  lb         t2, 807(sp)
                  csrrw      a5, 0x340, s3
                  sub        s8, t0, s0
                  lh         a3, 684(sp)
                  c.add      s1, s7
                  lb         a5, -1931(sp)
                  lh         t2, -566(sp) #end riscv_load_store_rand_instr_stream_16
                  la         a5, region_4+625 #start riscv_hazard_instr_stream_11
                  c.mv       s0, t3
                  sb         s5, -330(a5)
                  srl        s0, a7, a6
                  sb         s0, 938(a5)
                  remu       t3, t3, s0
                  addi       s9, s0, -342
                  lb         s5, 1444(a5)
                  mul        a7, a6, s5
                  sw         s5, -405(a5)
                  lbu        a7, 759(a5)
                  lb         s0, 1629(a5)
                  lw         t3, 743(a5)
                  lb         a7, -72(a5)
                  lhu        s0, 1431(a5)
                  sltu       a6, a7, s9
                  divu       s5, s5, a7
                  sb         a7, -452(a5)
                  srli       a7, a7, 4
                  sh         a6, -299(a5)
                  remu       s9, a7, s5
                  lb         s5, 41(a5)
                  c.or       s0, s0
                  divu       t3, s9, a7
                  add        t3, a6, s5
                  lb         s9, -492(a5)
                  lbu        s5, 186(a5)
                  sb         a6, 1460(a5)
                  lb         s0, 854(a5)
                  c.slli     a7, 21
                  sb         t3, -604(a5)
                  lh         s9, 1621(a5)
                  c.ebreak;c.nop;
                  lbu        a7, -72(a5)
                  xor        s9, s9, s5
                  sb         a6, 1206(a5)
                  sub        s5, s5, a7
                  csrrwi     t3, 0x340, 13
                  lb         a7, 1819(a5)
                  sh         s5, 2015(a5)
                  csrrs      a6, 0x340, t3
                  mulhu      s0, a7, a6
                  lb         a6, 937(a5)
                  c.and      s0, s0
                  mul        s9, a7, s9
                  sll        a7, s0, s5
                  lb         s5, -355(a5) #end riscv_hazard_instr_stream_11
                  la         s6, region_4+3779 #start load_store_instr_stream_1
                  lb         a1, -54(s6)
                  la         tp, region_0+3099 #start load_store_instr_stream_0
                  sh         a4, -27(s6)
                  lb         s9, 172(tp)
                  lw         t2, -43(s6)
                  lbu        t0, -236(tp)
                  sh         s3, 15(s6)
                  lb         t3, 57(tp)
                  sb         t3, 42(s6)
                  lb         a5, 44(tp)
                  lb         sp, 38(s6)
                  lb         t1, -54(s6) #end load_store_instr_stream_1
                  lh         sp, -247(tp) #end load_store_instr_stream_0
                  la         t0, region_2+7849 #start load_store_instr_stream_2
                  lb         t4, -163(t0)
                  la         a2, region_4+1108 #start load_store_instr_stream_0
                  lb         a7, 80(t0)
                  la         s5, region_1+185 #start load_store_instr_stream_1
                  lb         s11, -59(a2)
                  sh         t6, 15(s5)
                  lb         t1, -63(a2)
                  sb         a7, -27(a2)
                  lb         ra, 3(a2)
                  lb         a3, 62(t0)
                  lb         s7, -224(t0)
                  sb         sp, 52(a2)
                  lhu        s7, 13(s5)
                  lbu        t3, 14(s5)
                  sb         s11, -38(a2)
                  lh         s7, 131(t0) #end load_store_instr_stream_2
                  lb         t2, 6(s5)
                  lhu        s3, -38(a2)
                  lbu        t2, 15(s5) #end load_store_instr_stream_1
                  lbu        s6, -51(a2)
                  sb         s9, -13(a2) #end load_store_instr_stream_0
                  la         s5, region_1+3268 #start load_store_instr_stream_2
                  la         t4, region_2+2004 #start load_store_instr_stream_1
                  la         s11, region_4+3254 #start load_store_instr_stream_3
                  sh         s8, -1106(s5)
                  sb         s5, 14(t4)
                  lb         a1, -15(s11)
                  la         gp, region_3+249 #start load_store_instr_stream_0
                  lb         s10, 15(t4)
                  lbu        tp, -1353(s11)
                  lbu        s3, 146(gp)
                  lb         s9, -688(s11)
                  lbu        a1, 4(t4)
                  sb         s6, -7(t4)
                  sb         s3, -50(gp)
                  sb         s2, -1864(s5)
                  lbu        s10, -168(gp)
                  lbu        s3, 822(s5)
                  lbu        s3, 683(s11)
                  sb         a5, -1883(s5)
                  sb         t1, -30(gp)
                  sb         a0, -7(t4) #end load_store_instr_stream_1
                  lb         sp, -947(s5)
                  sb         a2, -311(s11)
                  lh         t5, -1442(s5) #end load_store_instr_stream_2
                  sh         t0, -808(s11) #end load_store_instr_stream_3
                  lb         t0, -102(gp) #end load_store_instr_stream_0
                  la         a7, region_2+4585 #start load_store_instr_stream_4
                  sw         a0, 1311(a7)
                  la         t0, region_0+202 #start load_store_instr_stream_2
                  la         s5, region_4+589 #start load_store_instr_stream_0
                  lh         s6, 125(s5)
                  sb         t4, -553(s5)
                  la         a2, region_1+9442 #start load_store_instr_stream_3
                  sb         s3, -574(a7)
                  lh         t4, 469(a7)
                  lh         t3, -4(t0)
                  la         s11, region_3+282 #start load_store_instr_stream_1
                  lbu        gp, -1437(a7)
                  lb         tp, -6(s5)
                  lbu        s6, -8(t0)
                  lh         s8, -1401(a7)
                  sb         s1, 35(a2)
                  lb         tp, 25(a2)
                  lbu        s3, 67(s11)
                  sh         s4, -252(s11)
                  lw         zero, -6(t0)
                  lb         a1, 121(s11)
                  lb         a1, 159(s11)
                  lb         s9, -25(a2)
                  lh         s7, 1329(a7)
                  lb         sp, 847(a7) #end load_store_instr_stream_4
                  sb         sp, -8(a2)
                  sh         tp, 693(s5)
                  lb         s7, 65(s11)
                  lbu        s10, 1063(s5)
                  lbu        a6, 4(t0)
                  sb         ra, -40(s11)
                  sb         t2, -212(s11) #end load_store_instr_stream_1
                  sw         zero, 10(t0) #end load_store_instr_stream_2
                  lhu        s6, -61(s5)
                  lh         ra, -58(a2) #end load_store_instr_stream_3
                  lbu        gp, 1118(s5) #end load_store_instr_stream_0
sub_4_32:         jal        t1, 18f
0:                jal        t1, 2f
1:                c.jal      0b
2:                jal        t1, 17f
3:                jal        t1, 16f
4:                jal        gp, 15f
5:                jal        sp, 8f
6:                jal        a1, 14f
7:                c.j        5b
8:                c.j        6b
9:                c.jal      3b
10:               jal        t0, 7b
11:               jal        t1, 22f
12:               c.j        1b
13:               jal        t1, 11b
14:               jal        ra, 23f
15:               c.jal      19f
16:               c.jal      21f
17:               c.jal      20f
18:               jal        t1, 10b
19:               jal        ra, 12b
20:               c.jal      13b
21:               c.j        4b
22:               c.jal      24f
23:               jal        a5, 9b
24:               c.slli     s8, 17
                  la         s7, region_1+10530 #start riscv_load_store_rand_instr_stream_3
                  ori        ra, a5, 541
                  lhu        s4, -54(s7)
                  lh         a5, 64(s7)
                  lw         ra, -58(s7)
                  lbu        t5, -37(s7)
                  sb         t0, 3(s7)
                  lb         s9, 55(s7)
                  lbu        s8, 43(s7)
                  slli       s5, t6, 24
                  c.andi     s0, -1
                  and        s6, s8, t3
                  csrrsi     a5, 0x340, 3
                  lh         tp, 36(s7)
                  lbu        s4, -4(s7)
                  divu       a3, s9, t1
                  c.ebreak;c.nop;
                  lbu        s11, -22(s7)
                  c.and      a1, s1
                  lb         s4, 51(s7)
                  xori       s11, a7, -49
                  lb         ra, -5(s7)
                  sb         s10, -5(s7)
                  mulhsu     a5, s0, s10
                  sh         t4, -12(s7)
                  lbu        s1, -35(s7)
                  csrrci     a6, 0x340, 25
                  c.ebreak;c.nop;
                  lbu        s1, 13(s7)
                  lb         a1, 5(s7)
                  slli       zero, t5, 30
                  lh         t0, 26(s7)
                  lb         s0, -31(s7)
                  lb         ra, 17(s7)
                  sub        s3, tp, s0
                  sb         ra, 56(s7)
                  c.lui      s8, 2
                  c.addi16sp sp, -16
                  lbu        tp, -13(s7) #end riscv_load_store_rand_instr_stream_3
                  la         ra, region_2+317 #start load_store_instr_stream_0
                  la         a6, region_4+419 #start load_store_instr_stream_1
                  lbu        s0, 35(ra)
                  sh         a3, -5(a6)
                  lb         t4, 2(a6)
                  lbu        s10, 17(ra)
                  lb         s6, 14(ra)
                  lb         sp, 3(a6)
                  sb         s10, 30(ra)
                  sb         s7, -4(a6)
                  sb         a7, 1(a6) #end load_store_instr_stream_1
                  lw         s9, -41(ra) #end load_store_instr_stream_0
sub_4_17:         jal        t1, 22f
0:                c.j        3f
1:                c.j        2f
2:                jal        t1, 9f
3:                c.jal      23f
4:                jal        tp, 14f
5:                c.jal      25f
6:                c.jal      18f
7:                c.j        19f
8:                c.jal      21f
9:                c.jal      6b
10:               jal        a6, 8b
11:               c.j        24f
12:               jal        t1, 17f
13:               c.jal      1b
14:               jal        s3, 20f
15:               c.j        4b
16:               c.j        12b
17:               c.jal      15b
18:               c.j        11b
19:               c.j        5b
20:               c.jal      7b
21:               c.j        13b
22:               jal        t1, 10b
23:               c.jal      16b
24:               jal        t1, 0b
25:               div        t5, a2, s8
                  addi       a7, zero, -10 #init loop 0 counter
                  mulhsu     s10, s9, s0
                  addi       ra, zero, 18 #init loop 0 limit
                  lui        a2, 960244
                  sra        a2, t0, s11
                  auipc      t4, 25424
                  ori        s1, s4, 391
                  sltu       s1, a4, s6
                  srl        s5, a7, a4
                  c.and      a1, a4
                  csrrw      t2, 0x340, zero
sub_4_76_0_t:     add        a6, s3, s4
                  c.slli     a1, 5
                  csrrwi     a2, 0x340, 22
                  addi       a7, a7, 6 #update loop 0 counter
                  csrrsi     t2, 0x340, 30
                  bltu       a7, ra, sub_4_76_0_t #branch for loop 0
                  rem        tp, a7, s4
                  la         sp, region_4+1324 #start riscv_load_store_rand_instr_stream_6
                  c.srli     a1, 11
                  sb         a3, 13(sp)
                  sb         s3, -7(sp)
                  c.addi     s1, -1
                  lb         s6, 10(sp)
                  sb         gp, 5(sp)
                  c.slli     s10, 16
                  sh         a0, -8(sp)
                  lbu        s3, -16(sp)
                  c.ebreak;c.nop;
                  csrrs      a1, 0x340, gp
                  c.add      s6, s3
                  c.swsp     s8, 0(sp)
                  lbu        s6, -3(sp)
                  fence
                  or         t5, s0, s11
                  slli       s4, t1, 14
                  c.nop
                  sb         s8, 1(sp)
                  c.lwsp     s4, 12(sp)
                  or         s11, gp, a3
                  c.lwsp     s6, 16(sp)
                  xori       gp, t4, -774
                  c.addi     s9, 2
                  lbu        s6, -3(sp)
                  lb         t4, -10(sp)
                  lh         tp, -2(sp)
                  c.lwsp     a6, 8(sp)
                  lb         t0, -13(sp)
                  c.nop
                  lbu        a1, -13(sp)
                  c.swsp     s11, 12(sp)
                  auipc      s4, 912240
                  slti       s8, s6, 577
                  ori        t5, s10, -889
                  lui        s6, 665548
                  sra        a3, t0, sp
                  sb         a2, 5(sp)
                  fence.i
                  lbu        s7, 7(sp)
                  lb         t1, -11(sp)
                  c.lwsp     s7, 12(sp)
                  slti       t0, a1, 428
                  slt        s7, s3, s4
                  c.li       a5, -1
                  mulhsu     t5, t5, t5
                  lbu        s5, 5(sp)
                  or         s5, s0, s9
                  sb         t5, 3(sp)
                  sh         t5, -6(sp)
                  lb         s9, 6(sp)
                  lb         t3, -7(sp)
                  lb         ra, -2(sp)
                  sb         s7, 10(sp) #end riscv_load_store_rand_instr_stream_6
                  la         sp, region_4+2111 #start load_store_instr_stream_1
                  lb         t1, 16(sp)
                  sb         t2, -12(sp)
                  la         t3, region_0+2884 #start load_store_instr_stream_0
                  la         t5, region_1+6388 #start load_store_instr_stream_2
                  lb         t4, -1723(t3)
                  sb         gp, 11(t5)
                  lbu        a3, -2(sp)
                  sb         t1, -5(t5)
                  sb         s3, 12(sp)
                  lh         a3, 6(t5)
                  lb         t2, 1(t5)
                  lhu        s8, 130(t3)
                  lb         s6, 18(sp)
                  lbu        s3, -3(t5)
                  lb         tp, -1883(t3)
                  sh         zero, 702(t3)
                  sw         s8, -1292(t3)
                  lhu        a3, 5(sp)
                  sb         a4, 3(t5)
                  sb         s3, 379(t3)
                  lbu        s3, -38(sp)
                  lh         s6, -10(t5)
                  lb         t4, -3(t5)
                  lb         t0, -946(t3)
                  lw         a7, 0(t5)
                  lw         s9, -51(sp) #end load_store_instr_stream_1
                  sb         t6, -16(t5) #end load_store_instr_stream_2
                  sb         s3, 85(t3) #end load_store_instr_stream_0
sub_4_24:         jal        t1, 15f
0:                jal        ra, 4f
1:                c.j        30f
2:                c.j        24f
3:                c.j        11f
4:                c.j        25f
5:                jal        t1, 13f
6:                c.j        28f
7:                jal        t0, 23f
8:                jal        ra, 20f
9:                c.j        8b
10:               c.j        5b
11:               jal        ra, 29f
12:               c.jal      2b
13:               c.jal      12b
14:               c.j        16f
15:               jal        t1, 27f
16:               jal        t1, 22f
17:               c.jal      14b
18:               c.j        3b
19:               c.jal      9b
20:               c.j        21f
21:               c.j        6b
22:               c.j        0b
23:               c.jal      19b
24:               c.j        7b
25:               jal        ra, 10b
26:               c.j        17b
27:               jal        ra, 18b
28:               jal        s5, 1b
29:               c.j        26b
30:               csrrs      s1, 0x340, a3
sub_4_19:         jal        t1, 4f
0:                c.jal      9f
1:                jal        t1, 20f
2:                jal        ra, 19f
3:                jal        gp, 0b
4:                c.j        16f
5:                jal        t1, 3b
6:                jal        gp, 26f
7:                jal        s6, 17f
8:                c.j        23f
9:                jal        ra, 13f
10:               c.jal      5b
11:               jal        ra, 14f
12:               c.jal      7b
13:               jal        s8, 25f
14:               jal        ra, 22f
15:               c.jal      24f
16:               c.j        10b
17:               jal        ra, 6b
18:               c.j        1b
19:               c.jal      18b
20:               jal        ra, 21f
21:               c.j        8b
22:               c.j        2b
23:               jal        ra, 15b
24:               jal        ra, 12b
25:               c.j        11b
26:               auipc      a5, 341669
                  la         a5, region_4+3069 #start load_store_instr_stream_0
                  la         a7, region_2+1481 #start load_store_instr_stream_3
                  la         s11, region_0+2605 #start load_store_instr_stream_1
                  la         s0, region_1+389 #start load_store_instr_stream_2
                  lh         tp, -3(a5)
                  lb         s5, 1480(s11)
                  lbu        ra, -512(s11)
                  lbu        gp, -212(s0)
                  lb         t2, 6(a7)
                  lbu        s2, -1456(s11)
                  lh         a3, 243(s0)
                  lb         s4, 8(a5)
                  lb         a2, -10(a7)
                  lbu        gp, 882(s11)
                  lb         s9, -62(s0)
                  lbu        t5, 16(a5)
                  sb         a3, 14(a7)
                  lbu        t2, 930(s11)
                  lb         s1, -119(s0)
                  lh         zero, -13(a7)
                  sb         a2, 2(a5)
                  sb         s9, 1464(s11)
                  lbu        a1, 9(a7)
                  lb         t5, -298(s11)
                  sb         s3, -123(s11)
                  lb         a1, 186(s0)
                  lh         a2, 249(s0)
                  lw         s7, -13(a5)
                  lb         t0, 14(a7)
                  sb         a5, -117(s0)
                  lhu        t5, -15(a7)
                  lbu        s5, 16(a5)
                  lb         s7, 0(a5)
                  lhu        s7, -851(s11)
                  sb         t5, -464(s11) #end load_store_instr_stream_1
                  lhu        s2, -95(s0) #end load_store_instr_stream_2
                  lbu        ra, -10(a7) #end load_store_instr_stream_3
                  lb         t0, -12(a5) #end load_store_instr_stream_0
sub_4_27:         jal        t1, 0f
0:                c.j        22f
1:                c.jal      18f
2:                jal        ra, 25f
3:                c.j        13f
4:                c.j        19f
5:                c.j        2b
6:                c.j        20f
7:                jal        s5, 3b
8:                c.jal      5b
9:                c.j        23f
10:               jal        ra, 17f
11:               c.jal      4b
12:               c.jal      14f
13:               c.j        21f
14:               jal        s3, 11b
15:               c.j        7b
16:               c.j        12b
17:               c.jal      26f
18:               c.j        8b
19:               c.jal      28f
20:               c.j        1b
21:               jal        t3, 6b
22:               c.j        24f
23:               c.jal      16b
24:               c.j        10b
25:               c.jal      9b
26:               c.j        27f
27:               jal        t1, 15b
28:               c.andi     a2, 21
                  la         t1, region_0+2057 #start riscv_load_store_rand_instr_stream_2
                  and        s2, a2, t2
                  sw         a2, 43(t1)
                  csrrwi     gp, 0x340, 22
                  srai       ra, t2, 4
                  lb         a2, -17(t1)
                  divu       s11, a7, a4
                  sw         s1, 47(t1)
                  lb         a6, -30(t1)
                  lh         a1, -5(t1)
                  lh         t3, 57(t1)
                  lbu        a6, -59(t1)
                  lb         s11, -9(t1)
                  sll        tp, t2, s7
                  lb         a6, 52(t1)
                  srai       tp, a5, 24
                  divu       s6, s2, a6
                  mul        a3, gp, a0
                  srli       s8, ra, 29
                  lbu        s0, 33(t1)
                  sb         sp, 22(t1)
                  auipc      a2, 506591
                  lh         a1, 17(t1)
                  sw         s4, -61(t1)
                  .4byte 0x00100073 # ebreak
                  c.srli     a1, 9
                  lb         s0, -38(t1)
                  lbu        sp, 14(t1)
                  add        t0, t3, t3
                  lhu        s3, 17(t1)
                  andi       a1, a1, -1008
                  csrrc      s4, 0x340, a4
                  lbu        a1, 63(t1)
                  lb         zero, -40(t1)
                  c.srli     a3, 11
                  lbu        s11, -40(t1)
                  sh         a0, 15(t1)
                  sb         sp, -52(t1)
                  lb         s3, 17(t1)
                  c.nop
                  lbu        a2, 46(t1)
                  lhu        a5, -13(t1)
                  lbu        t5, -41(t1)
                  c.xor      s0, s1
                  slti       s10, sp, -518
                  lb         s11, -54(t1)
                  lbu        s5, 10(t1) #end riscv_load_store_rand_instr_stream_2
                  la         s9, region_4+363 #start riscv_load_store_rand_instr_stream_15
                  lb         t3, -10(s9)
                  lbu        t1, 5(s9)
                  lbu        a1, -1(s9)
                  addi       ra, a1, -585
                  xori       s4, t3, 315
                  sh         s7, 15(s9)
                  csrrwi     s1, 0x340, 24
                  mul        a7, tp, t0
                  c.sub      a2, s0
                  slli       t4, s2, 31
                  addi       s8, ra, 873
                  lhu        t3, -13(s9)
                  nop
                  sb         s1, 11(s9)
                  slt        s10, s10, tp
                  sb         a5, -8(s9)
                  sll        s2, a4, s9
                  lhu        a3, 11(s9)
                  mulh       s8, gp, tp
                  fence
                  ori        gp, a1, 514
                  c.addi     s1, 15
                  fence
                  xor        s2, s10, t0
                  csrrsi     s8, 0x340, 4
                  sb         ra, -1(s9)
                  lbu        t3, -10(s9)
                  lb         a3, -2(s9)
                  lbu        s3, 0(s9) #end riscv_load_store_rand_instr_stream_15
                  addi       s9, zero, -4 #init loop 0 counter
                  or         s0, tp, s1
                  c.lui      s7, 30
                  c.sub      s0, a5
                  csrrci     s4, 0x340, 19
                  remu       a2, a7, a0
                  div        s6, a6, t0
                  addi       s3, zero, 8 #init loop 0 limit
                  c.li       t4, 20
                  xor        s0, zero, a5
                  csrrci     zero, 0x340, 27
                  div        s7, a0, a5
                  csrrsi     t3, 0x340, 18
sub_4_75_0_t:     add        gp, a4, sp
                  mul        s7, gp, s0
                  xori       t3, s11, -95
                  addi       a5, s6, -210
                  sltu       a7, a4, s6
                  c.nop
                  addi       s9, s9, 6 #update loop 0 counter
                  c.xor      a2, a2
                  c.or       a2, a1
                  c.sub      a5, s0
                  or         a6, t0, sp
                  c.andi     a3, -1
                  rem        t3, s7, s9
                  mulhu      tp, a6, a4
                  sub        a5, s7, tp
                  bne        s9, s3, sub_4_75_0_t #branch for loop 0
                  andi       s5, s3, 594
sub_4_20:         jal        t1, 4f
0:                jal        ra, 8f
1:                c.j        10f
2:                c.jal      1b
3:                c.jal      6f
4:                c.j        5f
5:                c.jal      9f
6:                jal        ra, 7f
7:                jal        ra, 0b
8:                jal        a2, 2b
9:                jal        ra, 3b
10:               slli       zero, sp, 2
                  la         sp, region_0+894 #start riscv_hazard_instr_stream_5
                  lbu        s4, 197(sp)
                  sub        a5, a6, a1
                  c.and      a1, a1
                  srl        s4, a1, a1
                  and        a6, a2, s4
                  srai       a2, a6, 3
                  c.and      a5, a1
                  sh         s3, -30(sp)
                  lhu        a1, 8(sp)
                  csrrw      s4, 0x340, s3
                  andi       a6, a6, -360
                  lbu        a2, -149(sp)
                  mulhu      a2, a5, s3
                  slli       a5, s4, 21
                  sb         a1, -229(sp)
                  c.andi     a1, 21
                  sb         a2, 163(sp)
                  c.ebreak;c.nop;
                  lhu        a6, 206(sp)
                  slli       a2, a2, 3
                  mulh       a2, a5, a1
                  csrrw      a1, 0x340, a6
                  .4byte 0x00100073 # ebreak
                  lbu        a5, 79(sp)
                  c.ebreak;c.nop;
                  csrrci     a2, 0x340, 16
                  c.or       a5, a2
                  lbu        a5, -11(sp)
                  sra        s3, s4, s4
                  sb         a6, 238(sp)
                  lbu        a1, -37(sp)
                  mulhu      s3, a2, s3
                  divu       a5, s4, a2
                  nop
                  divu       a1, s4, a5
                  c.srai     a5, 7
                  csrrsi     a1, 0x340, 7
                  c.andi     a5, -1
                  csrrw      a2, 0x340, a5
                  lb         a1, -42(sp)
                  mulhu      a2, a5, a6
                  sb         a2, 203(sp) #end riscv_hazard_instr_stream_5
                  la         s9, region_0+2488 #start load_store_instr_stream_1
                  la         t1, region_0+3378 #start load_store_instr_stream_3
                  la         s8, region_0+1922 #start load_store_instr_stream_2
                  sb         t4, -105(s9)
                  sb         a3, -13(t1)
                  la         s2, region_0+2345 #start load_store_instr_stream_0
                  sb         s0, 157(s9)
                  lh         a1, 37(s2)
                  sb         a1, -44(s2)
                  lb         t5, 8(s8)
                  sw         s0, -96(s9)
                  lbu        t5, -3(s8)
                  lbu        s10, 3(s9)
                  lbu        s11, -13(s8)
                  sb         t4, -47(t1)
                  lhu        tp, -25(s2)
                  lbu        a5, -11(t1)
                  lb         t2, -37(t1)
                  sb         tp, -7(s8)
                  sb         zero, -215(s9)
                  lhu        a6, -24(t1)
                  lb         t0, -35(t1)
                  sb         s1, -178(s9)
                  lw         a1, 15(s2)
                  lbu        s10, 9(s8)
                  sw         s3, 72(s9)
                  lb         a5, -5(s2)
                  sw         s10, -6(t1) #end load_store_instr_stream_3
                  lh         t0, 188(s9)
                  lhu        s7, -50(s9)
                  lhu        sp, -4(s8)
                  lbu        a6, 3(s8)
                  lbu        t5, -81(s9) #end load_store_instr_stream_1
                  lb         t0, -8(s8)
                  sb         s7, 5(s8)
                  lb         s10, -5(s8) #end load_store_instr_stream_2
                  lb         t3, -52(s2) #end load_store_instr_stream_0
                  la         a2, region_3+293 #start riscv_load_store_rand_instr_stream_12
                  lb         s9, 196(a2)
                  mulhu      a7, a2, t0
                  div        t1, s9, a0
                  srai       ra, t1, 20
                  lbu        ra, 208(a2)
                  remu       s0, s5, s5
                  sra        t4, gp, t0
                  sb         s9, -256(a2)
                  c.sub      a3, a4
                  csrrs      t5, 0x340, a0
                  lhu        gp, 99(a2)
                  mul        s8, t6, s6
                  c.sub      a1, a5
                  lb         s2, 138(a2)
                  sltu       t5, s7, zero
                  srl        s4, a2, t1
                  and        ra, ra, s10
                  lbu        a5, 91(a2)
                  lh         gp, -73(a2)
                  lbu        gp, -167(a2)
                  lbu        tp, -130(a2)
                  c.xor      s0, a3
                  lb         a7, 194(a2)
                  sb         t3, -22(a2)
                  sb         s0, -152(a2)
                  sw         t6, -117(a2)
                  c.srai     a3, 14
                  c.andi     a3, -1
                  lb         s9, -87(a2)
                  lbu        a3, -219(a2)
                  lh         a7, -151(a2)
                  csrrsi     tp, 0x340, 18
                  lh         ra, -139(a2)
                  add        s1, ra, s10
                  sh         t1, -137(a2)
                  or         s6, s10, a7
                  c.ebreak;c.nop;
                  srli       a3, sp, 15
                  sb         s9, 128(a2)
                  sh         s5, 29(a2) #end riscv_load_store_rand_instr_stream_12
                  csrrc      gp, 0x340, t6
                  nop
                  csrrwi     a5, 0x340, 21
                  mulhsu     sp, s9, zero
                  csrrwi     s0, 0x340, 13
                  sll        tp, sp, ra
                  bltu       s10, t0, 21f
                  c.add      s5, s5
                  c.li       a1, -1
                  sra        a1, a2, s4
                  div        s11, a3, s0
                  blt        s7, a6, 18f
                  fence
                  .4byte 0x00100073 # ebreak
                  c.andi     a5, -1
                  csrrwi     gp, 0x340, 13
                  c.xor      s0, a2
                  c.and      s0, a5
18:               c.sub      a1, a0
                  ori        s6, t3, -349
                  .4byte 0x00100073 # ebreak
21:               fence
                  div        a3, s2, s11
                  or         t0, s8, a1
                  c.xor      a1, a0
                  rem        sp, t1, s8
                  lui        s4, 644069
                  auipc      s11, 278679
                  sub        s1, s4, s2
                  mulh       zero, s4, s10
                  xor        t4, s2, a4
                  bgeu       a7, s0, 48f
                  or         a7, s6, s4
                  bgeu       zero, a6, 43f
                  c.slli     s6, 24
                  slli       s11, a3, 10
                  slt        t0, a7, s2
                  lui        a5, 715470
                  xori       a1, t3, -113
                  srl        t1, t6, zero
                  bne        s1, a7, 54f
                  c.ebreak;c.nop;
                  csrrwi     t1, 0x340, 16
43:               srli       t1, a5, 3
                  bge        s6, t3, 64f
                  srl        tp, s7, s8
                  c.sub      a2, a5
                  c.li       s5, -1
48:               or         s6, s10, ra
                  blt        a6, t1, 54f
                  c.addi     s6, 1
                  srai       s4, sp, 27
                  csrrsi     a3, 0x340, 0
                  ori        s7, a4, -482
54:               c.bnez     a5, 59f
                  slt        t0, s0, sp
                  slli       t1, tp, 14
                  csrrc      s3, 0x340, t3
                  divu       t4, ra, s7
59:               c.sub      s1, s0
                  c.srli     a2, 28
                  rem        s1, s0, t6
                  csrrci     s0, 0x340, 16
                  mulhsu     s9, a3, t5
64:               bge        a3, a6, 77f
                  csrrsi     s1, 0x340, 11
                  srai       t0, s0, 6
                  c.li       sp, -1
                  add        s2, a1, t3
                  srli       s3, a0, 16
                  auipc      t3, 477330
                  mul        a6, a0, t0
                  add        s7, s3, a0
                  remu       gp, a3, a5
                  srli       a5, s10, 30
                  c.mv       s8, gp
                  c.bnez     s1, 82f
77:               c.bnez     s1, 96f
                  bne        s8, t0, 87f
                  c.or       s1, a5
                  c.srai     s1, 19
                  csrrs      s5, 0x340, s0
82:               c.lui      gp, 23
                  remu       gp, s6, s4
                  c.sub      a2, a4
                  c.addi     s2, 19
                  or         s5, s10, s4
87:               csrrci     s11, 0x340, 14
                  c.and      a5, a5
                  c.mv       s6, t4
                  c.or       a2, a4
                  c.srli     a3, 12
                  ori        s2, t5, 264
                  c.addi     s11, -1
                  c.addi     a1, -1
                  remu       a3, t5, s5
96:               c.andi     a1, 16
                  c.srli     s1, 26
                  bgeu       a1, t1, 113f
                  srai       t2, a4, 18
                  c.srai     a1, 11
                  rem        a2, s8, s1
                  c.andi     s1, 21
                  div        t5, t4, ra
                  xor        a1, s5, s0
                  mulhu      a6, t0, s6
                  mulhsu     ra, tp, zero
                  and        a3, s0, s9
                  sra        s9, ra, a0
                  bltu       s3, a5, 128f
                  csrrci     s10, 0x340, 18
                  c.ebreak;c.nop;
                  and        t2, t5, tp
113:              c.add      tp, a5
                  sltiu      a1, sp, 662
                  fence
                  bgeu       a7, a7, 118f
                  c.sub      s0, a4
118:              fence.i
                  bltu       tp, s4, 137f
                  and        s1, zero, s10
                  add        a7, s3, s3
                  c.xor      s0, a2
                  slli       s1, a6, 17
                  c.add      a5, ra
                  xor        t2, a6, t5
                  csrrci     a6, 0x340, 8
                  fence
128:              c.xor      s0, a4
                  csrrc      s5, 0x340, s9
                  lui        s3, 1027480
                  sub        a1, s3, s4
                  slli       t0, t6, 16
                  c.add      a2, a1
                  c.ebreak;c.nop;
                  srai       s4, t5, 17
                  c.slli     s4, 31
137:              fence
                  c.srli     a5, 23
                  sltu       s1, s2, tp
                  c.srai     a2, 6
                  c.addi     s4, -1
                  bltu       a2, a5, 151f
                  c.beqz     a2, 157f
                  ori        s9, t1, -455
                  c.beqz     a1, 149f
                  sub        s11, a2, s3
                  sra        s5, s10, zero
                  div        s5, a0, t2
149:              ori        a5, t3, -647
                  c.sub      a3, s0
151:              c.bnez     s1, 171f
                  sra        t2, t4, a4
                  bne        a6, a4, 162f
                  xori       s4, s5, -291
                  csrrsi     a7, 0x340, 14
                  sltu       t1, a5, a2
157:              c.mv       s4, t6
                  csrrci     s2, 0x340, 0
                  c.ebreak;c.nop;
                  blt        s6, s8, 161f
161:              slli       s0, t2, 27
162:              c.li       s7, 8
                  c.xor      a2, a3
                  c.lui      tp, 14
                  csrrs      tp, 0x340, s0
                  rem        a6, a1, s7
                  srai       t4, s3, 21
                  ori        a5, a7, -944
                  xori       t4, t1, 360
                  c.and      a1, s1
171:              c.addi16sp sp, 496
                  lui        s0, 289567
                  andi       t2, s0, 985
                  xor        a5, s6, t4
                  or         tp, a7, t5
                  c.bnez     s1, 180f
                  bltu       s5, t5, 182f
                  remu       gp, sp, s4
                  rem        a6, s1, ra
180:              bltu       s10, s9, 186f
                  c.and      a5, s0
182:              srl        gp, a5, s3
                  c.nop
                  xor        ra, s3, s9
                  csrrs      a3, 0x340, a5
186:              mulhsu     gp, s2, s7
                  c.add      t4, a5
                  xori       t0, s11, 144
                  blt        s9, s9, 208f
                  nop
                  blt        s2, gp, 206f
                  c.ebreak;c.nop;
                  fence.i
                  add        zero, t0, s2
                  bltu       a7, tp, 211f
                  or         tp, a6, s9
                  addi       a6, s11, -851
                  add        s11, a4, a4
                  bge        tp, s11, 204f
                  csrrc      tp, 0x340, a1
                  fence.i
                  add        a7, sp, a6
                  bge        t6, a2, 213f
204:              bne        s11, t3, 214f
                  c.sub      s0, a1
206:              mulh       s8, s6, t3
                  csrrs      s8, 0x340, s8
208:              c.addi16sp sp, -16
                  c.sub      a1, a4
                  c.lui      ra, 5
211:              sub        a2, s11, a7
                  divu       gp, s5, t0
213:              blt        s0, s0, 231f
214:              or         s5, zero, s3
                  rem        s4, s4, a6
                  sltu       t1, a6, a5
                  sltiu      ra, s0, 998
                  blt        a5, a1, 234f
                  c.ebreak;c.nop;
                  or         s1, ra, a5
                  sra        t2, s8, a4
                  c.xor      a3, a5
                  c.andi     a1, -1
                  .4byte 0x00100073 # ebreak
                  bne        a0, gp, 240f
                  xori       s2, a3, -719
                  or         s10, t6, s0
                  ori        t2, gp, 281
                  c.andi     a1, -1
                  lui        zero, 106667
231:              c.addi16sp sp, -16
                  beq        s0, t1, 234f
                  csrrs      sp, 0x340, s6
234:              csrrc      sp, 0x340, gp
                  c.nop
                  c.mv       t3, a5
                  sra        t4, sp, a2
                  sll        ra, a4, a4
                  bgeu       s8, a2, 259f
240:              addi       s2, t4, -990
                  nop
                  fence.i
                  nop
                  sltiu      a7, s4, 869
                  c.srli     s0, 6
                  mulh       s6, s0, zero
                  sltu       s3, a1, s1
                  c.or       a5, a2
                  c.srli     a1, 21
                  srli       t0, t1, 12
                  sub        s7, t4, a2
                  c.sub      a2, s0
                  .4byte 0x00100073 # ebreak
                  or         t1, a0, s9
                  csrrs      s8, 0x340, t1
                  slli       a7, s4, 5
                  rem        tp, s1, t0
                  mulhu      s8, a2, s4
259:              divu       s3, a4, a7
                  xori       s2, sp, -233
                  srl        s1, s9, a7
                  mulhu      s8, s1, s5
                  remu       t5, t3, zero
                  bgeu       s9, a6, 273f
                  slt        s5, ra, t0
                  slti       s9, a3, -3
                  fence
                  andi       s0, t1, 138
                  and        s2, s0, tp
                  csrrw      sp, 0x340, a1
                  slli       a7, s1, 3
                  xor        tp, t3, t6
273:              c.xor      a1, a5
                  xori       s9, a1, -509
                  c.srli     a1, 24
                  csrrw      a5, 0x340, s9
                  csrrsi     t2, 0x340, 9
                  csrrwi     tp, 0x340, 26
                  csrrwi     s1, 0x340, 28
                  csrrs      zero, 0x340, t0
                  slli       s3, tp, 31
                  fence
                  c.andi     a2, -1
                  c.add      s4, s1
                  mul        t3, a7, a5
                  ori        s0, s3, 458
                  csrrc      s4, 0x340, tp
                  c.beqz     s1, 292f
                  sltiu      s11, gp, -115
                  c.beqz     a5, 305f
                  c.add      s11, t2
292:              c.li       t2, -1
                  bltu       a6, gp, 302f
                  csrrsi     t4, 0x340, 28
                  sltu       s1, s4, ra
                  div        tp, zero, s1
                  c.mv       ra, s5
                  remu       a2, a2, s2
                  c.ebreak;c.nop;
                  c.bnez     a1, 305f
                  sra        a2, a4, s2
302:              c.mv       s6, s1
                  or         s4, t3, tp
                  bgeu       a2, s6, 318f
305:              csrrs      t0, 0x340, gp
                  lui        tp, 1026530
                  c.bnez     s1, 317f
                  divu       t0, t3, zero
                  c.sub      a2, a0
                  sll        s10, a3, a7
                  slt        s7, s1, s5
                  c.ebreak;c.nop;
                  sltiu      a2, ra, -271
                  c.add      s1, a5
                  c.addi16sp sp, 432
                  c.slli     s8, 26
317:              c.sub      a1, a3
318:              c.sub      a1, a2
                  c.addi     a2, -1
                  sltiu      t3, a2, 974
                  .4byte 0x00100073 # ebreak
                  c.bnez     a2, 336f
                  c.andi     a3, 6
                  divu       s10, s2, zero
                  c.mv       a2, a0
                  addi       s8, s0, -211
                  c.addi     s7, -1
                  c.li       s7, 22
                  csrrs      s9, 0x340, s7
                  xor        t3, t6, t0
                  slti       t0, t5, 440
                  mul        t4, s0, sp
                  c.xor      a1, a2
                  slti       s6, a6, -764
                  fence
336:              xori       ra, a6, -282
                  c.beqz     a5, 344f
                  or         s4, s0, t6
                  addi       s2, s3, 823
                  c.addi16sp sp, -16
                  c.xor      s1, s0
                  divu       t3, t3, s0
                  lui        t3, 1038346
344:              csrrs      s7, 0x340, s0
                  csrrsi     s9, 0x340, 10
                  csrrsi     s5, 0x340, 30
                  addi       zero, tp, 150
                  c.beqz     s1, 353f
                  srl        t1, s1, tp
                  c.mv       t2, s7
                  c.slli     s1, 23
                  c.bnez     a3, 357f
353:              mul        t2, a7, s5
                  c.li       a3, 27
                  and        s7, a7, s3
                  sltu       s8, s8, t0
357:              nop
                  c.or       a5, s1
                  and        sp, s6, t5
                  remu       s6, t0, a6
                  c.addi16sp sp, 288
                  c.addi16sp sp, 272
                  bgeu       gp, t0, 368f
                  xor        t5, s1, a7
                  fence
                  bge        s9, t2, 385f
                  c.add      s6, a6
368:              auipc      s5, 541353
                  csrrs      zero, 0x340, s8
                  c.add      t4, t6
                  c.mv       t5, t5
                  c.srli     a1, 16
                  srai       a6, t4, 4
                  c.nop
                  srai       t1, a5, 24
                  slt        t0, t1, t4
                  c.ebreak;c.nop;
                  c.or       a5, a0
                  slti       a2, s11, -472
                  sll        s4, zero, a6
                  and        t3, t4, s7
                  c.li       a3, 16
                  c.and      a5, s1
                  div        zero, t3, t2
385:              lui        a6, 479075
                  bgeu       gp, t1, 387f
387:              c.beqz     s0, 404f
                  nop
                  ori        s7, t5, 713
                  xori       s7, sp, -250
                  addi       s1, ra, 936
                  c.beqz     a5, 396f
                  mulhu      t1, s10, a2
                  c.srai     a2, 11
                  c.beqz     a1, 401f
396:              bge        s8, a4, 409f
                  and        a5, t1, t6
                  addi       ra, tp, -645
                  c.and      a3, a0
                  and        a6, a1, a0
401:              blt        s9, s11, 420f
                  srli       s0, a2, 16
                  c.andi     a1, -1
404:              sra        s8, s7, s2
                  bgeu       s11, a6, 425f
                  c.and      s0, s1
                  ori        gp, a2, -677
                  c.and      a3, a2
409:              lui        s4, 814138
                  csrrci     s5, 0x340, 6
                  c.addi     t0, 17
                  mulhu      a1, zero, a7
                  mulh       s6, a1, a3
                  c.add      t1, t3
                  fence
                  slt        s6, s7, t5
                  csrrwi     gp, 0x340, 11
                  c.sub      s1, a2
                  and        t1, gp, s11
420:              c.and      a2, a0
                  bge        sp, s8, 430f
                  c.addi     a7, -1
                  sra        zero, t6, t0
                  c.beqz     s1, 430f
425:              c.xor      s1, a1
                  bltu       t2, s7, 441f
                  xor        s11, t4, s7
                  mulhu      s2, a3, t5
                  c.sub      a1, a1
430:              lui        s2, 664780
                  c.sub      s1, a4
                  slli       s8, a6, 25
                  sll        s11, t2, s9
                  c.xor      a3, a1
                  sub        s9, s4, t6
                  c.slli     s10, 20
                  sltu       s10, t2, a1
                  c.add      s9, t0
                  slt        a1, zero, t2
                  srli       ra, s5, 24
441:              c.add      t4, s10
                  c.ebreak;c.nop;
                  csrrwi     s1, 0x340, 28
                  c.lui      t0, 3
                  c.mv       s9, tp
                  csrrc      a2, 0x340, a6
                  fence.i
                  c.bnez     a1, 467f
                  csrrc      t1, 0x340, zero
                  csrrw      zero, 0x340, sp
                  sltu       t1, a1, s9
                  mulhu      ra, s2, a0
                  c.addi16sp sp, 224
                  c.nop
                  c.nop
                  or         s9, a0, a3
                  c.mv       s0, s5
                  blt        ra, s5, 468f
                  c.ebreak;c.nop;
                  mulhsu     s5, s11, zero
                  bne        a4, a4, 467f
                  sll        t0, t5, s2
                  sll        t4, t0, t3
                  c.mv       gp, t2
                  c.or       a3, a3
                  c.or       s0, a4
467:              xori       s6, gp, -679
468:              mulhu      s8, t3, t6
                  bge        t0, sp, 470f
470:              bne        s9, s10, 480f
                  c.bnez     a3, 478f
                  csrrs      s2, 0x340, s3
                  csrrwi     tp, 0x340, 18
                  bne        s6, gp, 491f
                  bltu       a3, s4, 494f
                  csrrc      t4, 0x340, s3
                  bge        t6, ra, 496f
478:              slli       s1, s6, 10
                  andi       s1, t6, -426
480:              sltiu      sp, s7, 397
                  c.nop
                  c.ebreak;c.nop;
                  fence
                  sub        t4, a3, s0
                  c.mv       s9, s11
                  auipc      tp, 951462
                  bgeu       a2, ra, 507f
                  c.addi     s3, -1
                  csrrw      a5, 0x340, a4
                  mulh       a2, ra, sp
491:              c.addi16sp sp, 128
                  add        s9, s6, a5
                  ori        t5, sp, -942
494:              c.addi     s7, -1
                  rem        t4, sp, t6
496:              c.addi     s6, 5
                  csrrs      a3, 0x340, a4
                  c.mv       s4, s0
                  andi       a7, t0, -11
                  c.nop
                  slli       t5, s2, 13
                  sub        a2, t3, a2
                  add        s4, s8, a2
                  and        s11, s1, s3
                  c.add      a7, a0
                  c.addi     sp, -1
507:              andi       a3, t6, -549
                  c.addi16sp sp, -16
                  csrrsi     t4, 0x340, 19
                  srli       ra, a7, 0
                  divu       a7, a1, zero
                  blt        a1, a1, 517f
                  andi       a7, t3, 814
                  auipc      t1, 1017578
                  rem        s5, s9, a1
                  srli       zero, t0, 11
517:              sltu       zero, gp, s7
                  c.li       t5, 1
                  .4byte 0x00100073 # ebreak
                  bne        s11, s10, 525f
                  c.andi     a2, 18
                  slti       t2, s10, -695
                  c.xor      a3, a0
                  or         s7, ra, tp
525:              c.mv       s2, t6
                  csrrs      a2, 0x340, a6
                  c.add      s8, a7
                  .4byte 0x00100073 # ebreak
                  c.mv       t3, t1
                  andi       s1, a2, -502
                  c.srai     s1, 20
                  mulhu      s9, a5, tp
                  lui        tp, 454021
                  andi       s1, a1, -29
                  mulhsu     a5, gp, a2
                  xori       s6, s10, -688
                  andi       t4, t4, 27
                  bge        a1, s10, 553f
                  fence.i
                  .4byte 0x00100073 # ebreak
                  andi       s3, s6, 407
                  c.srai     a5, 24
                  auipc      a5, 354140
                  c.xor      s1, a4
                  .4byte 0x00100073 # ebreak
                  auipc      a7, 602516
                  c.or       a3, a2
                  sub        s1, s8, s9
                  fence
                  c.srli     a3, 28
                  blt        s3, s3, 565f
                  fence
553:              c.ebreak;c.nop;
                  c.and      a3, a3
                  c.addi     t2, -1
                  csrrsi     s0, 0x340, 15
                  bne        t3, a1, 562f
                  add        s7, s10, a0
                  slt        a7, sp, s0
                  bge        s8, gp, 569f
                  mulh       s4, s11, s11
562:              c.or       a1, a5
                  add        s5, t2, sp
                  csrrsi     a7, 0x340, 24
565:              csrrc      zero, 0x340, s9
                  csrrwi     s0, 0x340, 12
                  xor        a5, s6, t4
                  c.lui      a1, 11
569:              nop
                  c.srai     s1, 22
                  srai       s5, s6, 23
                  lui        s0, 1013701
                  c.xor      a5, a1
                  slli       t2, s1, 20
                  sltu       a1, t5, a4
                  slli       ra, a5, 16
                  c.li       s0, 25
                  remu       s4, t2, s1
                  bne        a3, s0, 595f
                  c.addi16sp sp, 368
                  csrrw      s10, 0x340, s7
                  slt        s4, tp, a2
                  c.addi16sp sp, -16
                  csrrw      t2, 0x340, t6
                  slli       tp, s8, 24
                  div        a2, s5, sp
                  bgeu       tp, a3, 589f
                  mulhsu     s1, a2, ra
589:              c.lui      a5, 7
                  bne        a0, s3, 608f
                  slli       s10, s11, 17
                  slt        s1, a4, s2
                  c.and      a3, a1
                  c.add      s11, t6
595:              bltu       a0, s2, 604f
                  divu       a2, a6, s10
                  sltu       s9, s6, t1
                  c.bnez     s0, 613f
                  c.bnez     s1, 603f
                  c.and      a1, a3
                  srai       s9, t4, 2
                  divu       t1, s2, gp
603:              c.li       a3, 25
604:              bltu       s0, a1, 618f
                  srli       s3, s3, 23
                  mulhsu     t1, s1, s1
                  andi       t2, sp, 991
608:              c.slli     sp, 27
                  sll        s11, tp, s1
                  c.sub      a1, a0
                  c.mv       sp, s8
                  sll        t3, a1, zero
613:              c.addi16sp sp, -16
                  sltu       t3, zero, s5
                  nop
                  divu       a5, t1, a6
                  slli       zero, s6, 6
618:              bgeu       a5, sp, 623f
                  add        a5, t2, s8
                  srli       zero, t5, 29
                  c.or       s0, a5
                  sltiu      a3, a4, 926
623:              c.li       a2, 7
                  andi       a3, a4, -946
                  c.addi16sp sp, -16
                  ori        s5, s6, 971
                  div        t4, a1, t5
                  rem        t3, gp, a4
                  c.bnez     a1, 648f
                  csrrc      s7, 0x340, s9
                  lui        s3, 922992
                  c.or       a5, a2
                  lui        s9, 861250
                  c.andi     s1, -1
                  srl        t2, a5, ra
                  blt        zero, s8, 640f
                  c.lui      a6, 28
                  c.srai     s0, 8
                  slt        s9, t1, s5
640:              srl        s11, a6, a6
                  addi       s3, s10, -239
                  sll        tp, a5, sp
                  fence
                  blt        a3, s4, 657f
                  xor        s7, s5, a2
                  fence
                  divu       s3, zero, a7
648:              srl        zero, s4, a1
                  mul        s0, zero, t4
                  csrrci     s3, 0x340, 27
                  c.addi16sp sp, -16
                  slti       t0, a5, 710
                  div        a5, t0, s2
                  c.srli     a1, 2
                  mulh       a7, t0, s8
                  nop
657:              auipc      s7, 488541
                  fence.i
                  c.nop
                  csrrw      t2, 0x340, s9
                  srli       s0, s5, 16
                  ori        s4, t5, -305
                  sll        s9, s11, sp
                  rem        zero, s9, t4
                  srl        s1, a0, t0
                  and        s1, s3, s11
                  slli       a7, s0, 21
                  add        a7, a5, s5
                  slli       a1, s2, 17
                  add        s10, s1, s0
                  c.srli     s1, 9
                  csrrci     s8, 0x340, 25
                  div        s11, s2, s1
                  slti       s0, s9, -68
                  auipc      s3, 941560
                  c.lui      a5, 14
                  bne        s2, a5, 683f
                  addi       a2, s11, 858
                  csrrsi     s4, 0x340, 13
                  c.li       s6, -1
                  auipc      s1, 72495
                  c.nop
683:              c.and      a2, a2
                  sltu       gp, s3, s5
                  remu       s6, s6, a4
                  and        s10, s9, s11
                  c.srli     s0, 6
                  bge        t6, sp, 697f
                  sub        s8, s5, s9
                  and        s6, s8, t2
                  lui        a3, 1036776
                  c.beqz     a5, 707f
                  xori       s4, zero, -182
                  csrrsi     s0, 0x340, 0
                  c.slli     s4, 10
                  xor        a7, s8, sp
697:              c.slli     a2, 23
                  c.or       s1, a5
                  sub        a6, a4, a3
                  csrrci     s10, 0x340, 21
                  bgeu       s1, s0, 721f
                  c.mv       tp, tp
                  sra        s10, s9, s11
                  fence
                  ori        sp, s0, 82
                  srli       t4, s8, 17
707:              c.addi16sp sp, 32
                  rem        s10, a1, a3
                  c.srli     a5, 10
                  la         t0, region_1+11913 #start riscv_load_store_rand_instr_stream_14
                  c.addi     a7, -1
                  lbu        a2, 10(t0)
                  lhu        sp, -9(t0)
                  c.li       s5, 15
                  sb         a3, 13(t0)
                  fence.i
                  csrrsi     s8, 0x340, 25
                  sb         s10, -11(t0)
                  sh         ra, -11(t0)
                  fence
                  sw         t3, -9(t0)
                  sltu       a5, s1, s8
                  lb         s4, 5(t0)
                  lh         t5, -3(t0)
                  lbu        s1, 11(t0)
                  lh         a7, 13(t0)
                  lui        s2, 136951
                  lw         ra, 11(t0)
                  csrrsi     s7, 0x340, 26
                  lh         a5, -5(t0)
                  slti       s1, s0, -746
                  lh         sp, 3(t0)
                  lbu        t3, 0(t0)
                  csrrci     s5, 0x340, 28
                  csrrsi     s7, 0x340, 30
                  sb         s0, -6(t0)
                  c.sub      a1, s1
                  c.addi16sp sp, 96
                  or         a1, s8, s0
                  lh         s7, 11(t0)
                  lbu        sp, -6(t0)
                  sb         a1, 2(t0)
                  xor        t3, t0, s8
                  sb         tp, 14(t0)
                  lbu        a5, 8(t0)
                  c.ebreak;c.nop;
                  lbu        a7, 16(t0)
                  c.and      a2, a2
                  add        s3, s1, s2
                  lb         a3, -16(t0)
                  sltiu      zero, s0, -188
                  csrrw      t2, 0x340, a3
                  lb         a7, -16(t0)
                  lbu        t4, 16(t0)
                  lw         s6, -5(t0)
                  sb         a5, -16(t0)
                  lb         s9, 2(t0)
                  lhu        s3, -1(t0) #end riscv_load_store_rand_instr_stream_14
                  xori       a7, t0, -58
                  and        t5, zero, tp
                  c.addi     s10, -1
                  c.mv       t4, a2
                  c.add      s8, s7
                  c.nop
                  csrrsi     s2, 0x340, 11
                  remu       s9, sp, s9
                  rem        t4, t1, s8
                  lui        s9, 295530
                  csrrwi     a6, 0x340, 20
721:              csrrsi     s11, 0x340, 2
                  c.addi16sp sp, 16
                  csrrsi     s1, 0x340, 10
                  nop
                  c.srli     a5, 3
                  c.lui      ra, 24
                  slli       a1, gp, 21
                  c.sub      a2, s1
                  c.xor      s1, a5
                  c.and      s1, a0
                  csrrsi     s7, 0x340, 22
                  bne        zero, s3, 746f
                  sltiu      s3, a6, 275
                  mul        s7, a4, zero
                  c.addi16sp sp, -16
                  csrrs      s10, 0x340, s6
                  andi       t5, tp, -173
                  mulhu      gp, s6, s0
                  slt        a5, s6, s2
                  sltu       s11, t4, t1
                  mul        gp, ra, s0
                  or         sp, a2, s1
                  c.lui      s0, 1
                  srl        s3, a1, t2
                  csrrw      gp, 0x340, t3
746:              xori       s1, s6, -488
                  c.sub      s0, a1
                  c.srai     a2, 15
                  c.andi     s0, -1
                  c.srai     s0, 17
                  csrrw      s3, 0x340, t5
                  andi       a7, t2, 214
                  add        t2, zero, s9
                  c.lui      s6, 27
                  and        s9, s11, zero
                  lui        a1, 382471
                  c.srli     s0, 22
                  blt        s8, zero, 762f
                  c.xor      s1, a2
                  csrrwi     t4, 0x340, 1
                  c.add      s9, t0
762:              csrrwi     t0, 0x340, 8
                  csrrw      s5, 0x340, gp
                  lui        t4, 1047360
                  csrrs      s9, 0x340, s6
                  beq        a4, sp, 772f
                  c.slli     s1, 2
                  sub        t4, a4, a3
                  c.srai     a3, 6
                  bgeu       a2, a4, 789f
                  slt        s11, s5, s2
772:              c.nop
                  bgeu       s8, a2, 775f
                  add        zero, t1, s3
775:              c.li       s3, 16
                  c.xor      a1, a0
                  .4byte 0x00100073 # ebreak
                  bne        a6, s8, 797f
                  sll        t5, s10, gp
                  c.mv       t4, s7
                  slli       ra, s7, 19
                  fence.i
                  andi       s6, s2, 815
                  mulh       a2, ra, t0
                  .4byte 0x00100073 # ebreak
                  andi       a3, s4, -898
                  mul        s8, t5, a2
                  c.srai     a2, 29
789:              add        a3, s3, t2
                  srl        s4, t0, t0
                  .4byte 0x00100073 # ebreak
                  slli       t3, a1, 7
                  sra        a6, t0, s3
                  csrrsi     ra, 0x340, 9
                  rem        t3, a4, s10
                  c.sub      a1, a4
797:              slli       a3, s4, 3
                  srli       s0, s5, 1
                  div        s8, t0, a5
                  and        s6, a1, s2
                  slti       t0, a2, -665
                  mulhsu     t4, tp, a4
                  andi       s1, ra, 551
                  c.slli     s11, 12
                  or         zero, sp, s0
                  add        gp, a6, a1
                  c.or       s1, s0
                  c.srli     a2, 18
                  mulh       a3, s9, s10
                  mul        s4, a2, a1
                  sltiu      s1, a7, -369
                  rem        gp, a0, tp
                  mulhsu     t4, t4, a1
                  c.nop
                  sub        s7, a2, s3
                  blt        s1, t2, 831f
                  blt        t3, a3, 836f
                  mulhu      t1, a0, t5
                  mul        s6, ra, a5
                  c.srli     s1, 23
                  ori        a1, a5, 1021
                  csrrs      t0, 0x340, a1
                  bltu       a2, s7, 843f
                  mulhsu     s7, ra, a5
                  rem        s7, a6, s11
                  mulh       s0, a4, ra
                  c.or       s0, s1
                  csrrci     zero, 0x340, 2
                  c.beqz     a2, 836f
                  .4byte 0x00100073 # ebreak
831:              nop
                  blt        ra, s0, 842f
                  csrrc      a1, 0x340, s9
                  add        a6, ra, s8
                  sltiu      s10, s5, 409
836:              bgeu       a3, zero, 845f
                  sub        s0, t4, t2
                  c.xor      a2, a1
                  mulhsu     ra, s1, t0
                  bltu       a5, a7, 856f
                  srai       ra, a1, 15
842:              c.ebreak;c.nop;
843:              div        t0, s11, a6
                  nop
845:              csrrsi     a6, 0x340, 30
                  c.srai     a3, 14
                  slli       s10, a6, 8
                  srli       a6, t3, 14
                  mulhu      a7, t4, s8
                  bltu       a5, s6, 855f
                  c.srli     a2, 6
                  ori        s5, s11, 509
                  mulhsu     s4, a3, a3
                  c.addi16sp sp, 496
855:              ori        t3, t4, -146
856:              srai       ra, t3, 24
                  andi       s4, a7, -481
                  nop
                  c.beqz     a1, 864f
                  or         s3, a6, t1
                  sll        zero, a6, t6
                  mul        s3, t4, tp
                  remu       t2, t6, gp
864:              div        s0, s7, t0
                  auipc      a2, 777801
                  sltu       s0, s8, s2
                  c.srai     a1, 12
                  c.add      sp, a0
                  c.and      a5, a5
                  c.slli     a5, 16
                  c.beqz     a5, 889f
                  c.ebreak;c.nop;
                  slt        a6, t3, s3
                  csrrc      a7, 0x340, s10
                  andi       a2, ra, -11
                  sltiu      s8, s0, 529
                  ori        t4, zero, 365
                  fence.i
                  slli       a1, t5, 22
                  sub        t3, s3, a6
                  la         gp, region_4+1406 #start load_store_instr_stream_1
                  la         t2, region_4+3591 #start load_store_instr_stream_0
                  sb         a0, -43(gp)
                  lh         t5, -46(gp)
                  lb         s5, 1(t2)
                  lhu        t1, 47(t2)
                  sw         s11, 26(gp)
                  lw         s7, -22(gp)
                  lb         s4, 35(gp)
                  lh         a1, -53(t2)
                  sb         s6, 7(gp)
                  lbu        s11, 52(t2)
                  sh         s1, 46(gp)
                  lbu        t3, 41(gp)
                  sh         s1, 45(t2)
                  sb         t1, -57(gp) #end load_store_instr_stream_1
                  lh         a5, -51(t2) #end load_store_instr_stream_0
                  bge        s11, t2, 898f
                  xor        s9, s5, sp
                  csrrs      s5, 0x340, tp
                  bltu       a0, t1, 890f
                  c.srai     a3, 21
                  nop
                  remu       s6, t2, s7
                  addi       s3, a2, 1016
889:              c.beqz     s0, 903f
890:              beq        s10, t3, 894f
                  mul        s8, s6, s9
                  c.xor      a1, a5
                  c.lui      s6, 31
894:              bge        a7, a6, 909f
                  sub        s2, s1, a6
                  c.bnez     s1, 905f
                  bltu       s10, s10, 898f
898:              lui        sp, 268405
                  sll        s5, t5, sp
                  xor        t4, t4, a7
                  mulhsu     a2, a2, a3
                  mulh       t2, t4, s3
903:              slti       t3, t5, 156
                  c.andi     a3, -1
905:              div        t5, a5, a4
                  c.li       ra, 18
                  ori        a3, t5, 58
                  bltu       t4, sp, 913f
909:              c.addi16sp sp, 496
                  srli       a6, s7, 12
                  xori       s1, gp, 373
                  csrrci     s10, 0x340, 5
913:              sra        s11, tp, tp
                  c.bnez     s1, 927f
                  c.mv       s11, a2
                  andi       zero, t2, -932
                  csrrwi     a6, 0x340, 2
                  c.bnez     a5, 928f
                  auipc      s6, 308682
                  mul        a2, tp, a3
                  blt        s4, a3, 936f
                  divu       s7, a3, a5
                  c.li       t1, -1
                  sub        a1, a6, sp
                  slli       sp, a0, 8
                  c.srai     a5, 9
927:              andi       gp, s8, 38
928:              csrrc      s3, 0x340, t4
                  c.andi     s0, -1
                  c.li       s9, -1
                  srai       s1, a4, 23
                  addi       a2, zero, 6 #init loop 1 counter
                  ori        a5, t5, 559
                  csrrsi     s9, 0x340, 12
                  addi       zero, zero, 0 #init loop 1 limit
sub_4_73_1_t:     and        t0, s6, a2
                  csrrc      s9, 0x340, a7
                  mul        a7, gp, a5
                  xor        a7, sp, t6
                  addi       a2, a2, -2 #update loop 1 counter
                  nop
                  c.add      ra, s8
                  addi       t1, zero, 3 #init loop 0 counter
                  srl        a1, a7, a3
                  addi       s10, zero, -15 #init loop 0 limit
                  fence
                  srl        s0, zero, s8
sub_4_73_0_t:     ori        s3, a2, -856
                  csrrwi     a5, 0x340, 19
                  csrrw      t4, 0x340, t3
                  div        a5, s8, s3
                  addi       t1, t1, -8 #update loop 0 counter
                  bge        t1, s10, sub_4_73_0_t #branch for loop 0
                  c.beqz     a2, sub_4_73_1_t #branch for loop 1
                  csrrsi     t0, 0x340, 11
                  c.li       t1, -1
                  xor        gp, t6, t5
                  sltiu      t5, s5, 210
                  c.sub      a3, a5
936:              sltu       t0, s4, t1
                  csrrw      s1, 0x340, s0
                  sra        s3, t3, s8
                  srli       a5, a6, 26
                  c.sub      a1, a5
                  sra        s7, tp, s4
                  .4byte 0x00100073 # ebreak
                  c.sub      a3, a1
                  srl        t1, a1, t5
                  fence.i
                  c.srai     a5, 27
                  srli       a7, a2, 9
                  divu       t4, a3, a6
                  c.nop
                  sub        tp, ra, a3
                  c.mv       t4, a7
                  c.srli     a3, 20
                  sub        s2, a6, a0
                  c.lui      t4, 25
                  c.srai     a3, 23
                  c.slli     s0, 21
                  c.srai     s0, 29
                  lui        a3, 394172
                  divu       a5, t2, a3
                  c.srai     a5, 8
                  sra        a2, s3, s7
                  c.ebreak;c.nop;
                  c.nop
                  csrrs      s7, 0x340, s10
                  .4byte 0x00100073 # ebreak
                  sltiu      zero, s4, 530
                  addi       a6, a1, -848
                  csrrs      ra, 0x340, a4
                  sll        a6, a6, t2
                  c.mv       s1, a4
                  sub        s11, s9, s5
                  c.slli     sp, 12
                  lui        a3, 589404
                  blt        s4, s11, 979f
                  srai       s5, s7, 4
                  mulhsu     a1, a2, t1
                  c.and      s1, s1
                  sra        a1, s2, a6
979:              lui        s0, 459507
                  c.slli     s8, 29
                  slti       sp, s5, 343
                  csrrci     s1, 0x340, 2
                  mulh       t4, a3, s7
                  blt        a2, s9, 1004f
                  csrrsi     a1, 0x340, 26
                  csrrwi     t2, 0x340, 28
                  srl        s0, t3, s0
                  csrrc      gp, 0x340, sp
                  sub        s3, sp, zero
                  sub        t5, a7, s10
                  auipc      s7, 21204
                  c.add      sp, s11
                  sub        t3, a4, a6
                  remu       zero, s4, s7
                  .4byte 0x00100073 # ebreak
                  csrrw      t2, 0x340, a6
                  c.sub      s1, s0
                  mul        s4, s7, s2
                  srl        zero, a6, s9
                  mul        a6, t5, s5
                  nop
                  c.andi     s1, 11
                  andi       s1, s3, 340
1004:             c.or       a3, a4
                  div        a5, t5, s2
                  csrrc      t4, 0x340, s8
                  csrrw      s1, 0x340, s1
                  divu       tp, s8, s9
                  auipc      t5, 70038
                  csrrwi     t4, 0x340, 14
                  ori        t1, ra, -34
                  c.lui      s11, 11
                  c.beqz     a2, 1022f
                  xori       s2, zero, 405
                  mul        s0, a1, t4
                  slt        a3, s4, s0
                  c.or       a5, a3
                  c.bnez     a1, 1023f
                  .4byte 0x00100073 # ebreak
                  csrrs      a7, 0x340, a4
                  fence
1022:             sub        a5, a2, t3
1023:             lui        t0, 736097
                  beq        t5, t5, 1043f
                  bne        s2, t5, 1044f
                  c.slli     s10, 23
                  c.lui      t2, 31
                  srl        t0, s4, sp
                  slli       sp, a0, 13
                  mul        s4, s6, s3
                  c.mv       s6, ra
                  c.bnez     a5, 1033f
1033:             sll        sp, s4, t3
                  sub        sp, a3, a5
                  auipc      s10, 1007557
                  divu       s6, a4, s4
                  lui        t5, 482278
                  bge        s5, t5, 1054f
                  c.xor      a3, a0
                  c.bnez     a2, 1049f
                  srai       tp, t3, 20
                  and        a7, s6, ra
1043:             remu       s11, gp, t4
1044:             xori       a6, t3, -926
                  addi       s6, a7, 248
                  xori       ra, s10, 670
                  csrrci     t5, 0x340, 15
                  slti       ra, s6, -45
1049:             csrrwi     s7, 0x340, 6
                  csrrci     a5, 0x340, 23
                  c.beqz     s1, 1066f
                  c.mv       a5, a6
                  bltu       t4, gp, 1068f
1054:             c.srai     a2, 1
                  remu       s8, a6, s1
                  sltiu      t4, t3, 617
                  csrrc      tp, 0x340, t5
                  fence.i
                  c.xor      a3, a1
                  slli       t5, a0, 1
                  nop
                  c.ebreak;c.nop;
                  bltu       t5, a0, 1081f
                  ori        s1, s8, -128
                  ori        sp, s8, -221
1066:             mulhu      a3, a4, t5
                  c.beqz     s1, 1081f
1068:             sra        s6, ra, s7
                  c.andi     s0, 22
                  bge        zero, s8, 1076f
                  nop
                  sll        s3, s4, s5
                  c.mv       s6, s0
                  mul        a2, s4, t4
                  sra        a1, s0, gp
1076:             sll        a1, gp, s1
                  xor        s4, tp, t2
                  .4byte 0x00100073 # ebreak
                  slti       s10, gp, 520
                  c.addi     a7, -1
1081:             fence
                  c.srai     a5, 25
                  sra        t3, a4, s7
                  c.li       a6, -1
                  add        t3, t4, s2
                  c.or       s0, a1
                  srli       a5, s4, 26
                  divu       gp, s0, t6
                  c.mv       t4, s11
                  or         t1, s6, tp
                  sltiu      a1, t4, -418
                  csrrwi     s3, 0x340, 6
                  c.ebreak;c.nop;
                  .4byte 0x00100073 # ebreak
                  csrrci     a1, 0x340, 27
                  csrrs      s7, 0x340, tp
                  and        a2, a5, a6
                  fence.i
                  c.and      a1, a0
                  bltu       s8, zero, 1120f
                  srli       t0, s4, 31
                  mul        s4, sp, a5
                  addi       s3, a3, -914
                  divu       t5, gp, t0
                  c.beqz     a2, 1115f
                  srai       s6, zero, 14
                  addi       s1, t0, 672
                  mulh       s3, t0, s5
                  ori        s10, s4, 362
                  xori       s4, s1, 797
                  c.mv       a3, t1
                  mul        s7, sp, a1
                  bne        ra, a6, 1128f
                  div        s3, sp, s11
1115:             srli       t4, s3, 2
                  c.or       a5, s1
                  c.srli     s0, 1
                  c.andi     s0, -1
                  sra        s8, a0, s0
1120:             c.add      s4, s11
                  c.or       s1, a4
                  sra        a5, s9, s4
                  c.ebreak;c.nop;
                  bne        s8, s0, 1144f
                  c.add      a1, t0
                  .4byte 0x00100073 # ebreak
                  fence
1128:             c.nop
                  srli       a6, gp, 29
                  xor        t5, a0, t0
                  beq        s0, gp, 1145f
                  csrrci     tp, 0x340, 4
                  c.xor      a5, s1
                  srli       s5, s8, 14
                  nop
                  c.ebreak;c.nop;
                  mulh       t3, s9, t5
                  and        tp, t0, s0
                  mulh       s4, t4, t0
                  xori       a7, s8, -697
                  nop
                  srl        s11, a1, a5
                  mulhsu     a1, t1, s8
1144:             csrrw      t4, 0x340, zero
1145:             c.slli     ra, 5
                  fence
                  lui        s7, 912933
                  c.xor      s1, a4
                  add        s8, s11, s7
                  add        a5, sp, s6
                  c.beqz     s1, 1156f
                  c.and      a1, a5
                  c.ebreak;c.nop;
                  mulhu      tp, t2, s3
                  nop
1156:             sll        s0, t5, s8
                  xori       a1, s3, -609
                  fence.i
                  divu       t0, a0, sp
                  c.li       s5, -1
                  csrrci     s6, 0x340, 5
                  blt        t4, zero, 1164f
                  csrrw      a1, 0x340, s2
1164:             csrrs      t2, 0x340, s4
                  nop
                  bge        s2, a7, 1172f
                  c.add      a7, s7
                  srli       s7, a6, 12
                  andi       a1, s2, -103
                  bgeu       s8, a2, 1180f
                  mulh       s11, a4, s7
1172:             bge        s2, t3, 1181f
                  sll        s6, a2, a6
                  c.beqz     s1, 1187f
                  csrrs      s7, 0x340, s5
                  fence
                  bltu       s2, s2, 1182f
                  beq        t4, s4, 1182f
                  rem        t3, t5, s7
1180:             xor        t3, s10, s7
1181:             add        t3, a4, tp
1182:             c.mv       s1, a3
                  lui        s9, 436050
                  srai       s9, a1, 26
                  csrrw      s4, 0x340, a7
                  rem        gp, t3, zero
1187:             blt        t4, s0, 1194f
                  c.addi16sp sp, 112
                  nop
                  divu       t5, gp, s1
                  mul        t0, s5, s6
                  csrrc      t4, 0x340, a2
                  nop
1194:             c.or       s0, a5
                  bge        s3, s7, 1204f
                  rem        t3, t6, a1
                  add        t0, t3, s4
                  csrrs      s11, 0x340, s1
                  sltiu      t2, t5, 924
                  fence.i
                  c.li       s9, -1
                  srl        s6, t3, gp
                  bgeu       t6, a1, 1208f
1204:             divu       zero, s2, zero
                  csrrsi     sp, 0x340, 1
                  c.bnez     a1, 1225f
                  c.add      s9, s9
1208:             addi       zero, s0, 701
                  blt        sp, s4, 1226f
                  mulh       a7, s0, a7
                  auipc      s11, 316650
                  c.addi     tp, -1
                  sltu       s3, a3, t6
                  c.lui      t5, 31
                  mulhsu     tp, t2, t5
                  mul        a6, a3, s7
                  andi       ra, s7, -878
                  c.slli     t4, 17
                  c.lui      s4, 31
                  c.slli     tp, 19
                  divu       zero, s5, s2
                  c.sub      a2, a2
                  xor        s11, t5, t5
                  rem        t3, s6, t5
1225:             sltu       s11, a0, s0
1226:             bge        s3, s8, 1230f
                  c.mv       a5, s0
                  csrrc      a2, 0x340, s10
                  slli       s0, a0, 0
1230:             sltiu      t5, s7, 618
                  fence
                  sll        gp, sp, s10
                  andi       a2, t3, 878
                  c.beqz     a2, 1252f
                  slti       s10, t1, -289
                  ori        s9, s1, 176
                  csrrci     s6, 0x340, 15
                  divu       s5, ra, a1
                  c.nop
                  divu       a7, s2, t3
                  c.and      a3, s1
                  sltiu      a7, s5, -560
                  xor        a7, a5, a2
                  c.srai     s1, 6
                  andi       s4, a2, 105
                  csrrsi     t5, 0x340, 24
                  c.ebreak;c.nop;
                  mulhu      t0, s11, s11
                  c.addi16sp sp, 368
                  c.sub      s1, a2
                  sub        s3, sp, a4
1252:             c.bnez     a5, 1257f
                  csrrwi     t3, 0x340, 12
                  remu       s11, t5, a4
                  sltu       t0, t3, s7
                  remu       t0, gp, s10
1257:             c.bnez     a5, 1266f
                  sra        s6, a7, a1
                  srl        ra, t1, a1
                  srl        t2, s6, t3
                  c.and      s0, a2
                  sub        s5, gp, s11
                  c.slli     s10, 28
                  csrrs      s8, 0x340, s1
                  xor        s2, ra, a6
1266:             slti       a2, t0, 340
                  fence
                  remu       gp, a6, a5
                  c.srli     a5, 17
                  csrrw      s7, 0x340, a5
                  csrrc      s4, 0x340, a0
                  div        s7, ra, gp
                  ori        t1, zero, -376
                  xori       t4, ra, 370
                  or         s11, a6, s6
                  sltu       s4, s3, t1
                  c.ebreak;c.nop;
                  c.mv       s8, s6
                  sltu       gp, a1, t3
                  csrrw      s3, 0x340, s7
                  add        s4, ra, a0
                  slli       a1, sp, 1
                  slti       s6, a2, 291
                  csrrc      t4, 0x340, s5
                  c.and      a2, s0
                  c.addi16sp sp, 192
                  mulhu      t1, s0, zero
                  slt        s5, s10, s6
                  beq        ra, t6, 1308f
                  csrrsi     s5, 0x340, 12
                  andi       t2, s10, -52
                  .4byte 0x00100073 # ebreak
                  csrrci     a1, 0x340, 31
                  c.srai     s1, 22
                  lui        t2, 669096
                  xor        s11, a3, s9
                  andi       a3, s10, -215
                  csrrwi     t5, 0x340, 23
                  or         zero, t0, s2
                  csrrw      a6, 0x340, t3
                  csrrs      t5, 0x340, s5
                  sltu       s5, s0, a5
                  c.sub      a2, s1
                  csrrs      sp, 0x340, a7
                  sltu       s0, t0, s4
                  addi       a6, s0, -69
                  c.mv       s11, s9
1308:             mulhu      s4, ra, s8
                  csrrwi     s11, 0x340, 4
                  c.srai     a1, 9
                  csrrwi     s0, 0x340, 4
                  c.addi     s3, -1
                  c.slli     sp, 2
                  mul        ra, s4, t4
                  divu       a1, s3, s10
                  c.andi     s1, -1
                  bne        t4, zero, 1334f
                  c.ebreak;c.nop;
                  c.andi     s0, -1
                  add        s9, s10, a5
                  sltu       s5, a1, a5
                  or         s8, zero, t2
                  c.nop
                  rem        sp, a1, a3
                  c.addi     s11, -1
                  c.bnez     a2, 1335f
                  fence
                  bgeu       a0, s11, 1342f
                  c.xor      s0, s1
                  sub        t2, t3, s8
                  bltu       s6, t4, 1350f
                  .4byte 0x00100073 # ebreak
                  csrrw      t4, 0x340, a3
1334:             c.mv       t1, s6
1335:             .4byte 0x00100073 # ebreak
                  andi       s11, s9, -553
                  csrrc      s1, 0x340, gp
                  blt        s9, a5, 1357f
                  or         s5, s10, s0
                  auipc      a6, 379582
                  c.addi16sp sp, 160
1342:             lui        s6, 1042822
                  csrrsi     a2, 0x340, 26
                  auipc      ra, 525839
                  ori        a6, sp, -711
                  sub        a6, a6, s1
                  xor        a2, gp, a3
                  nop
                  mulh       s5, tp, s1
1350:             c.xor      a2, a5
                  mulhu      s2, s2, a7
                  csrrs      s5, 0x340, a1
                  beq        t5, t4, 1369f
                  bltu       t0, ra, 1355f
1355:             c.sub      s0, a2
                  csrrwi     t4, 0x340, 11
1357:             c.slli     a2, 5
                  .4byte 0x00100073 # ebreak
                  lui        t2, 555333
                  remu       t0, t1, s10
                  csrrw      t4, 0x340, s2
                  beq        zero, s10, 1368f
                  srl        a3, a7, t1
                  xori       zero, a3, 93
                  sub        s11, a7, a3
                  c.addi     s5, 8
                  csrrsi     s3, 0x340, 25
1368:             slt        ra, s11, a7
1369:             csrrc      t1, 0x340, s10
                  xori       t5, s4, 983
                  c.add      s9, a4
                  mulhsu     a7, s1, t0
                  c.andi     a2, 15
                  auipc      zero, 77569
                  mul        a6, t5, s8
                  c.li       t4, 17
                  c.and      a1, a2
                  .4byte 0x00100073 # ebreak
                  c.add      s4, a5
                  mulh       s7, s4, s1
                  csrrs      t4, 0x340, s4
                  .4byte 0x00100073 # ebreak
                  sltu       s7, s5, s1
                  bgeu       a5, a0, 1389f
                  div        s11, t3, s3
                  csrrci     a3, 0x340, 4
                  sub        t1, s11, a7
                  csrrc      s7, 0x340, s6
1389:             xori       s2, t4, -407
                  sll        s5, a0, t3
                  blt        s6, s10, 1396f
                  c.lui      a1, 13
                  divu       t0, s11, zero
                  lui        s3, 587515
                  csrrs      s8, 0x340, s9
1396:             ori        t1, t1, 932
                  addi       s2, s10, 884
                  lui        s11, 847102
                  mulh       s7, zero, a4
                  beq        a5, s2, 1404f
                  c.ebreak;c.nop;
                  c.xor      s0, a3
                  c.mv       ra, t5
1404:             c.li       s8, -1
                  c.and      a2, s0
                  c.mv       s8, s10
                  div        s3, sp, t1
                  blt        s10, s7, 1414f
                  beq        s0, a1, 1418f
                  andi       s2, a4, 455
                  c.beqz     s1, 1431f
                  c.li       s11, 15
                  c.or       s1, a1
1414:             csrrc      s2, 0x340, t0
                  sltu       sp, a7, s6
                  div        t2, s9, t0
                  sra        t2, a2, a3
1418:             c.srli     s0, 11
                  divu       a7, s11, t4
                  slli       tp, s5, 7
                  andi       s3, t2, 44
                  remu       a6, a5, t4
                  sltu       s1, t6, s9
                  beq        t5, s8, 1439f
                  slti       t2, s8, 582
                  c.nop
                  c.nop
                  csrrc      t1, 0x340, s4
                  ori        s0, s7, 872
                  mul        zero, sp, s5
1431:             c.lui      tp, 21
                  sltu       s1, t3, a7
                  divu       ra, t4, a6
                  nop
                  csrrsi     a6, 0x340, 13
                  and        zero, t2, a5
                  addi       gp, tp, -588
                  c.and      a3, a2
1439:             slti       zero, t1, 292
                  c.sub      a3, a1
                  slt        a6, tp, s8
                  c.mv       s4, t5
                  xor        a5, a1, t3
                  slt        a7, s3, s4
                  c.mv       a7, t2
                  c.nop
                  bne        a2, t2, 1452f
                  c.nop
                  bge        s6, s3, 1464f
                  add        zero, s6, a5
                  and        sp, s5, a6
1452:             xori       t5, a4, -864
                  add        s7, a4, s9
                  slti       s5, t5, 277
                  mulhu      a5, gp, s7
                  .4byte 0x00100073 # ebreak
                  c.beqz     s0, 1467f
                  c.lui      s4, 4
                  xori       s7, a6, 519
                  blt        s6, zero, 1462f
                  c.srai     s0, 30
1462:             sltu       t0, t6, a4
                  or         s2, t5, t0
1464:             ori        s11, s10, -578
                  slli       s8, a1, 11
                  mulh       sp, s6, t3
1467:             csrrci     gp, 0x340, 22
                  csrrsi     a7, 0x340, 10
                  c.beqz     a2, 1483f
                  fence
                  ori        a5, a6, -229
                  c.lui      a5, 26
                  c.andi     s1, -1
                  xor        gp, s4, a2
                  sra        a2, s7, a4
                  lui        t0, 530273
                  andi       tp, s8, 866
                  c.bnez     a2, 1491f
                  bge        s5, a5, 1489f
                  slti       s1, a6, 812
                  auipc      s4, 537299
                  slti       a3, s10, -511
1483:             sra        s2, s2, s3
                  c.bnez     a5, 1499f
                  sub        t5, ra, s10
                  xori       t3, gp, -403
                  mulhsu     a5, a3, a1
                  lui        s3, 891255
1489:             c.srli     a3, 27
                  bne        s4, ra, 1497f
1491:             c.bnez     s1, 1495f
                  slti       a2, zero, -498
                  c.lui      a6, 19
                  .4byte 0x00100073 # ebreak
1495:             slt        t4, tp, a7
                  beq        a7, a5, 1516f
1497:             c.or       s1, a3
                  c.addi16sp sp, 336
1499:             c.xor      a1, s0
                  c.ebreak;c.nop;
                  c.srli     a3, 3
                  rem        a5, s3, s10
                  c.srli     a1, 24
                  bgeu       s6, t3, 1513f
                  rem        t1, s3, t0
                  beq        sp, t1, 1511f
                  csrrw      s11, 0x340, s4
                  c.sub      a1, a0
                  div        a1, s2, s6
                  c.and      a3, a3
1511:             xor        sp, t4, a7
                  c.li       a3, -1
1513:             srl        s11, s4, a7
                  srli       t4, a2, 0
                  bne        s4, a3, 1517f
1516:             bltu       s2, a3, 1522f
1517:             srai       s7, gp, 15
                  divu       a7, sp, s7
                  and        a7, s6, t0
                  xor        s1, sp, a4
                  rem        s9, a1, sp
1522:             csrrs      t5, 0x340, gp
                  slli       s5, a0, 5
                  c.nop
                  xor        s1, sp, t4
                  add        s11, zero, zero
                  and        s5, t2, a5
                  divu       a1, t2, a2
                  nop
                  and        s6, s9, s0
                  csrrwi     t2, 0x340, 0
                  c.add      s2, s6
                  add        a3, s10, t0
                  c.and      a1, s1
                  blt        tp, s5, 1549f
                  addi       s3, s5, 306
                  c.beqz     a1, 1555f
                  xori       a6, a5, -694
                  sra        tp, s8, sp
                  fence
                  sub        a3, s11, zero
                  ori        t5, t0, -202
                  add        s0, a3, gp
                  sll        gp, s10, s11
                  c.li       a2, -1
                  bge        zero, a0, 1565f
                  or         t1, a2, a2
                  csrrwi     sp, 0x340, 9
1549:             nop
                  mul        zero, gp, t1
                  c.bnez     a1, 1558f
                  csrrwi     a3, 0x340, 12
                  slt        s7, gp, s9
                  div        gp, a0, t5
1555:             c.and      a1, a0
                  andi       ra, s3, 957
                  mulhsu     tp, t6, s3
1558:             csrrci     a5, 0x340, 19
                  addi       t1, a4, -360
                  c.add      sp, ra
                  add        t1, t6, t6
                  add        s6, tp, t1
                  c.and      s0, a0
                  c.and      s1, a1
1565:             c.or       a1, a1
                  bgeu       t4, a1, 1567f
1567:             c.addi     a2, -1
                  div        t1, a3, a1
                  mul        s0, t1, s11
                  beq        s10, a2, 1583f
                  mul        s11, a7, zero
                  c.srli     a5, 24
                  ori        tp, t5, 36
                  slt        tp, s2, a2
                  bltu       a4, gp, 1585f
                  c.addi     s10, 21
                  sltu       a1, zero, a7
                  fence.i
                  mul        a3, s7, s4
                  c.lui      a2, 13
                  srl        a2, a3, s8
                  mulhu      a1, s1, a3
1583:             xori       s2, a3, 99
                  fence.i
1585:             c.mv       a7, t2
                  sll        a2, s0, s3
                  nop
                  c.bnez     a2, 1593f
                  andi       s10, s10, 910
                  sra        sp, sp, a6
                  c.bnez     s1, 1606f
                  beq        tp, gp, 1602f
1593:             slli       a6, zero, 3
                  xori       s7, a3, 823
                  c.andi     a1, -1
                  csrrw      s5, 0x340, zero
                  beq        s1, s2, 1613f
                  c.andi     a1, -1
                  rem        s5, a7, s8
                  lui        t0, 670856
                  c.lui      t1, 6
1602:             xor        s7, tp, s11
                  sra        s5, a5, s2
                  c.ebreak;c.nop;
                  csrrc      gp, 0x340, tp
1606:             sub        t0, t5, s11
                  bne        a5, s0, 1611f
                  c.lui      a1, 17
                  c.andi     a5, 4
                  fence.i
1611:             div        a5, t3, s10
                  csrrc      a6, 0x340, gp
1613:             c.andi     a1, -1
                  c.srli     a5, 11
                  csrrc      ra, 0x340, s10
                  sll        a2, a7, a2
                  c.srai     a1, 27
                  c.addi     s5, -1
                  nop
                  andi       t4, a0, -450
                  c.xor      s1, a4
                  remu       gp, t2, a2
                  csrrsi     t0, 0x340, 3
                  bge        s7, s11, 1643f
                  c.sub      s0, a0
                  c.nop
                  .4byte 0x00100073 # ebreak
                  fence
                  divu       t5, t6, t3
                  slti       a7, ra, 275
                  mul        s2, a0, a5
                  c.addi16sp sp, -16
                  c.or       a1, a3
                  divu       s3, a4, a6
                  c.bnez     a5, 1649f
                  mulhsu     a3, s7, t3
                  srli       gp, a6, 17
                  addi       s0, s1, 784
                  srl        gp, s6, t5
                  bltu       a2, t1, 1644f
                  c.or       s1, a4
                  c.ebreak;c.nop;
1643:             c.and      a2, a0
1644:             fence.i
                  div        s0, ra, s0
                  xor        s5, s11, gp
                  bge        s4, t6, 1662f
                  .4byte 0x00100073 # ebreak
1649:             sltiu      a6, gp, -384
                  c.ebreak;c.nop;
                  fence.i
                  sltu       t2, s11, s1
                  divu       s1, s3, a6
                  c.li       t4, 21
                  slli       t1, s6, 4
                  fence
                  c.add      a3, t6
                  blt        t1, s3, 1667f
                  add        s5, s11, s0
                  sltiu      a6, a1, -452
                  remu       s5, s4, s6
1662:             csrrsi     s0, 0x340, 16
                  nop
                  c.or       a3, s1
                  add        tp, s5, a6
                  sub        a5, s2, a0
1667:             ori        t1, s6, -991
                  srai       t5, s4, 18
                  c.andi     s1, -1
                  csrrw      a7, 0x340, s6
                  srli       t3, t6, 26
                  c.srai     a2, 23
                  c.lui      t3, 27
                  c.add      t5, tp
                  c.and      a1, a5
                  sltu       s4, s7, t4
                  slt        t3, tp, s11
                  ori        s11, a5, 929
                  c.lui      s0, 7
                  remu       a2, s6, a5
                  andi       s8, tp, 400
                  c.bnez     a1, 1702f
                  c.ebreak;c.nop;
                  c.addi16sp sp, 400
                  rem        t0, t2, a7
                  ori        s8, a2, 929
                  c.ebreak;c.nop;
                  slti       t4, a3, 22
                  c.xor      a1, a1
                  c.mv       tp, ra
                  sltiu      t4, s8, -1014
                  c.li       a5, -1
                  c.and      a3, a3
                  slti       s6, s1, -79
                  rem        s4, a7, ra
                  srai       a6, s3, 29
                  bge        zero, s7, 1703f
                  div        ra, a6, gp
                  andi       s9, sp, -340
                  add        s0, s3, s9
                  csrrw      s0, 0x340, zero
1702:             xor        s9, a4, t2
1703:             csrrs      a6, 0x340, ra
                  c.and      s1, a1
                  c.add      tp, s9
                  c.lui      a3, 26
                  c.slli     s10, 13
                  c.add      ra, s11
                  fence.i
                  remu       t3, s11, a7
                  fence
                  remu       zero, s4, a7
                  c.mv       t2, t6
                  srli       s3, s11, 11
                  sltiu      gp, t1, 199
                  c.mv       s4, s6
                  c.addi     t5, 8
                  sltiu      s9, s5, -368
                  srl        sp, a0, a2
                  sll        s11, zero, t3
                  fence.i
                  c.srli     a2, 1
                  c.bnez     a3, 1728f
                  divu       sp, s9, t0
                  c.andi     a5, 7
                  c.addi16sp sp, -16
                  lui        a5, 86005
1728:             csrrsi     s1, 0x340, 23
                  c.ebreak;c.nop;
                  .4byte 0x00100073 # ebreak
                  c.bnez     a3, 1751f
                  remu       s5, s8, t3
                  srai       tp, t3, 7
                  remu       s8, a2, s1
                  sltu       sp, sp, sp
                  mulhu      a1, s10, gp
                  c.addi     a5, 3
                  sltiu      gp, a7, -578
                  bltu       t3, s1, 1754f
                  c.nop
                  slt        t4, t6, t0
                  mulhsu     a7, s2, a5
                  divu       tp, sp, a0
                  c.addi16sp sp, -16
                  blt        s0, t6, 1764f
                  bgeu       gp, s5, 1763f
                  c.add      a3, sp
                  c.srli     a5, 21
                  bltu       a2, a4, 1758f
                  la         t1, region_2+2628 #start riscv_hazard_instr_stream_16
                  lb         a1, -10(t1)
                  sb         zero, 7(t1)
                  csrrwi     zero, 0x340, 24
                  lbu        a5, 5(t1)
                  div        s2, t3, a1
                  addi       t3, t3, 834
                  lbu        s2, 1(t1)
                  lb         s2, -13(t1)
                  lb         t3, -5(t1)
                  c.andi     a5, 21
                  c.ebreak;c.nop;
                  c.sub      a5, a1
                  lbu        zero, -4(t1)
                  lhu        a1, -14(t1)
                  lb         zero, -15(t1)
                  c.slli     s3, 6
                  lbu        a5, -7(t1)
                  c.or       a1, a5
                  lui        s3, 204011
                  lb         a1, 16(t1)
                  mul        s2, s2, s2
                  srl        s2, t3, s2
                  lbu        zero, -13(t1)
                  sb         s3, 7(t1)
                  lh         zero, 6(t1)
                  c.xor      a5, a5
                  sb         s3, -6(t1)
                  sb         a1, 13(t1)
                  lb         a1, -9(t1)
                  lbu        a5, -8(t1)
                  sb         t3, 15(t1)
                  c.mv       a1, a5
                  c.li       s2, -1
                  lbu        s3, -5(t1)
                  xori       s3, t3, 848
                  sh         zero, -6(t1)
                  lbu        s2, -4(t1) #end riscv_hazard_instr_stream_16
                  mul        t3, a3, s7
1751:             lui        s10, 1026004
                  remu       s11, t4, a6
                  c.and      a5, a4
1754:             remu       t2, t2, t1
                  addi       t0, s0, 532
                  xori       s8, a1, -777
                  csrrc      s6, 0x340, s4
1758:             beq        a0, s0, 1763f
                  srli       ra, t3, 23
                  remu       s10, s6, a2
                  mulhsu     s9, ra, a3
                  fence.i
1763:             bne        s8, s11, 1769f
1764:             mulhu      s9, s5, a3
                  csrrci     t1, 0x340, 7
                  c.li       s0, 27
                  c.bnez     a1, 1772f
                  sll        tp, t2, a7
1769:             sub        t4, t3, s6
                  csrrci     t4, 0x340, 18
                  blt        sp, gp, 1773f
1772:             fence
1773:             sub        s0, t2, s11
                  csrrwi     a7, 0x340, 15
                  bne        s10, sp, 1779f
                  sltiu      gp, s2, -898
                  c.beqz     a3, 1792f
                  slti       s6, s5, 780
1779:             sub        a3, a6, gp
                  c.lui      tp, 11
                  c.or       a5, a3
                  slt        t5, s0, a6
                  sll        s0, t2, t0
                  slt        t5, t1, zero
                  srli       s7, t4, 29
                  slt        s8, s5, a2
                  rem        t2, a4, s10
                  fence.i
                  c.bnez     a3, 1808f
                  csrrci     s10, 0x340, 29
                  c.sub      a3, s0
1792:             fence.i
                  mulh       a5, zero, s3
                  remu       s0, t4, t1
                  c.andi     s0, 11
                  csrrc      zero, 0x340, a1
                  c.li       tp, -1
                  c.slli     s1, 13
                  auipc      tp, 550510
                  c.mv       gp, tp
                  ori        s11, a1, 61
                  c.mv       sp, ra
                  c.beqz     s1, 1808f
                  c.or       a3, s0
                  slti       a5, a2, -16
                  srl        s4, tp, a3
                  csrrci     s6, 0x340, 2
1808:             c.and      s0, a5
                  lui        a2, 969936
                  c.sub      a1, s0
                  slt        s10, sp, a3
                  sub        t0, tp, a0
                  c.add      s8, a3
                  sltiu      a7, s4, 781
                  lui        t0, 364744
                  slt        s9, s9, a0
                  mul        a5, s5, a4
                  slt        s9, s2, t3
                  divu       s5, s10, a3
                  addi       s3, a5, -439
                  c.srli     s1, 22
                  xori       t4, a2, -487
                  c.mv       t1, gp
                  c.add      a7, s6
                  c.or       a2, s0
                  or         s6, s1, a4
                  and        s4, ra, a6
                  srai       ra, s0, 4
                  c.xor      a3, a1
                  csrrc      s4, 0x340, t5
                  remu       a7, a7, a3
                  slli       t2, t1, 31
                  auipc      a6, 280062
                  bne        t3, s2, 1853f
                  bge        tp, t2, 1854f
                  mulhsu     a5, t1, ra
                  xori       t2, a3, -53
                  c.addi16sp sp, 304
                  c.slli     sp, 14
                  bltu       s11, s0, 1845f
                  beq        a6, a5, 1848f
                  auipc      t0, 365812
                  csrrwi     tp, 0x340, 18
                  c.andi     a3, 27
1845:             srai       s6, t5, 25
                  and        t0, a0, a4
                  csrrci     s1, 0x340, 26
1848:             fence
                  c.mv       sp, t6
                  beq        s10, a4, 1866f
                  slti       s9, tp, -161
                  c.addi16sp sp, -16
1853:             c.lui      s11, 28
1854:             rem        a3, s1, a1
                  c.andi     a2, 23
                  mulh       a3, a0, s11
                  srl        s4, s7, a7
                  andi       t1, a5, -468
                  c.srai     a2, 6
                  lui        t1, 113442
                  remu       t0, t3, a5
                  slli       s1, t4, 29
                  bltu       t6, s8, 1876f
                  sltu       zero, s9, s6
                  srli       gp, ra, 21
1866:             remu       s5, t2, s0
                  c.beqz     s1, 1873f
                  bgeu       s0, t2, 1882f
                  c.add      s7, a0
                  c.slli     t1, 24
                  ori        s1, t0, -236
                  slti       t0, gp, 375
1873:             c.beqz     a5, 1887f
                  sltiu      t3, a3, -747
                  bltu       t1, s0, 1884f
1876:             sub        a6, t1, s1
                  c.nop
                  xor        t3, s3, s9
                  c.lui      s8, 31
                  mulhsu     t4, t0, s3
                  lui        s11, 996096
1882:             c.mv       t2, a0
                  bge        a1, a7, 1892f
1884:             c.add      s4, tp
                  c.addi     ra, -1
                  add        ra, a3, a7
1887:             slt        s8, ra, s11
                  c.and      a2, a4
                  slli       s7, s0, 30
                  andi       t2, s3, 296
                  slti       zero, a1, 480
1892:             mulh       a7, a5, a7
                  c.mv       s11, s10
                  c.lui      s0, 23
                  auipc      s7, 959611
                  c.slli     a5, 22
                  c.bnez     a2, 1898f
1898:             lui        t5, 833472
                  div        sp, t0, t0
                  ori        a5, t6, -464
                  csrrc      a2, 0x340, s9
                  mulh       t4, a1, a2
                  nop
                  rem        zero, t4, s3
                  c.slli     s10, 24
                  c.srai     s1, 14
                  mulh       s7, s8, s8
                  mulhsu     a5, sp, ra
                  sltiu      s2, a4, -1019
                  mulh       tp, t3, a3
                  c.add      a1, t6
                  c.andi     a1, -1
                  c.li       s2, 2
                  sll        t1, a1, a3
                  c.srli     a3, 16
                  csrrw      t5, 0x340, t0
                  sltiu      t4, a2, 743
                  c.add      sp, sp
                  divu       a7, t4, t6
                  c.bnez     a5, 1930f
                  sra        s1, a4, s11
                  csrrci     a7, 0x340, 15
                  c.li       a7, -1
                  remu       a3, s10, a1
                  csrrci     t2, 0x340, 27
                  c.and      s0, a3
                  c.nop
                  bge        t5, t1, 1948f
                  xori       s11, a2, -731
1930:             c.srli     a3, 2
                  and        a3, t1, a5
                  beq        gp, gp, 1942f
                  c.li       s7, 15
                  mulhsu     t0, a1, a5
                  and        s5, s0, s6
                  srai       s5, s5, 17
                  add        t5, ra, ra
                  bgeu       a5, s11, 1953f
                  c.srli     a1, 11
                  c.or       s1, a0
                  csrrs      t2, 0x340, t1
1942:             blt        t2, t2, 1957f
                  c.xor      a2, s1
                  fence
                  csrrs      s8, 0x340, s5
                  c.srli     a3, 29
                  c.and      a3, a3
1948:             c.srli     a2, 24
                  bltu       a5, s0, 1967f
                  c.nop
                  sra        tp, t4, zero
                  beq        a2, s9, 1957f
1953:             .4byte 0x00100073 # ebreak
                  srai       a1, s0, 0
                  rem        t0, s6, s6
                  fence.i
1957:             c.addi     t3, -1
                  bltu       t6, s0, 1978f
                  or         t1, s4, s6
                  bltu       t0, s6, 1977f
                  bne        a3, ra, 1965f
                  slti       s1, t0, -885
                  mul        s11, zero, tp
                  c.li       s2, 23
1965:             auipc      gp, 212346
                  c.srai     a2, 15
1967:             mul        s11, a0, s4
                  c.addi     s6, 6
                  bgeu       t3, s9, 1978f
                  sll        s1, s11, s4
                  csrrs      t4, 0x340, s9
                  c.ebreak;c.nop;
                  xori       s11, t1, -428
                  add        s11, t5, a7
                  csrrs      s1, 0x340, s5
                  nop
1977:             .4byte 0x00100073 # ebreak
1978:             mulh       s4, t4, s5
                  xor        s2, a4, t2
                  c.sub      a1, a0
                  c.or       a1, a3
                  c.and      a2, a4
                  c.slli     t4, 30
                  bge        s7, s5, 1985f
1985:             srl        s2, s10, a7
                  ori        t5, tp, -370
                  c.srai     a2, 10
                  srai       s1, ra, 28
                  c.ebreak;c.nop;
                  lui        s9, 977287
                  bltu       zero, s1, 2001f
                  c.li       a2, 22
                  mulh       t2, tp, tp
                  fence.i
                  div        gp, s2, s4
                  c.sub      a2, a3
                  csrrc      s11, 0x340, ra
                  divu       s11, a3, t1
                  srli       a5, t5, 4
                  lui        s8, 861305
2001:             bltu       s6, ra, 2015f
                  c.xor      a2, a3
                  c.andi     a3, -1
                  srli       s3, s8, 9
                  slt        s2, t1, t3
                  srl        t3, a0, s5
                  add        t2, s3, t5
                  c.beqz     a5, 2027f
                  add        t0, s1, gp
                  xori       t3, s2, 236
                  c.or       a5, a1
                  sltu       t2, s6, s5
                  c.slli     s4, 30
                  c.addi     a3, 29
2015:             csrrci     tp, 0x340, 31
                  sltiu      sp, a2, -652
                  slt        s10, t1, a4
                  bltu       s8, a4, 2028f
                  bltu       a3, a6, 2038f
                  and        a2, a4, t3
                  beq        s10, s2, 2026f
                  srai       t2, t3, 4
                  c.nop
                  remu       t3, a2, a0
                  add        ra, s0, a7
2026:             c.beqz     a5, 2035f
2027:             csrrc      a1, 0x340, a0
2028:             sltiu      tp, s10, -477
                  lui        t1, 257701
                  mulhsu     t2, a3, ra
                  mulhu      gp, a2, a4
                  add        s7, s2, ra
                  srai       s10, a4, 13
                  c.add      gp, a2
2035:             fence.i
                  c.lui      a2, 22
                  c.add      t1, t5
2038:             srli       s7, s7, 24
                  beq        s2, ra, 2056f
                  mulh       s4, s10, a2
                  remu       sp, sp, s9
                  mulh       a6, s0, t6
                  srli       a7, s3, 16
                  csrrs      tp, 0x340, a1
                  ori        t1, s10, 135
                  sra        s6, s6, a6
                  c.bnez     a2, 2056f
                  csrrci     t2, 0x340, 23
                  or         tp, a4, s6
                  sll        s11, s1, a6
                  sll        a5, s3, a6
                  div        ra, a1, a5
                  csrrs      a3, 0x340, t2
                  csrrsi     t2, 0x340, 31
                  slt        s11, s6, t0
2056:             andi       sp, s11, -997
                  c.srai     a1, 26
                  fence
                  mul        sp, s11, a2
                  mulhu      s7, t3, s11
                  rem        s3, ra, s7
                  fence
                  c.sub      a5, s1
                  c.xor      a3, a0
                  andi       s0, t4, -225
                  ori        a6, a2, 57
                  beq        gp, s8, 2071f
                  slt        s0, a5, a1
                  mulhu      s2, tp, s10
                  c.lui      ra, 19
2071:             divu       t4, t1, sp
                  c.srai     s0, 16
                  srl        zero, gp, s6
                  sub        t4, a1, t1
                  mulhsu     s1, a0, t1
                  csrrwi     a3, 0x340, 29
                  c.lui      t5, 17
                  bltu       s1, t4, 2093f
                  sll        s11, t1, a6
                  .4byte 0x00100073 # ebreak
                  blt        tp, s0, 2097f
                  slli       a1, s4, 3
                  c.andi     s0, -1
                  c.bnez     a1, 2099f
                  bne        t3, s6, 2091f
                  c.lui      s0, 1
                  addi       t2, a2, -214
                  sltiu      zero, s7, -399
                  bge        a7, s4, 2109f
                  nop
2091:             mulhu      s7, t0, a2
                  c.or       a2, a0
2093:             sltiu      t1, tp, 15
                  c.and      a3, a1
                  rem        t3, t3, s10
                  c.srli     s0, 3
2097:             csrrc      s2, 0x340, sp
                  bltu       s4, sp, 2102f
2099:             bgeu       s6, tp, 2117f
                  sll        s10, zero, s8
                  csrrsi     a1, 0x340, 8
2102:             bltu       s7, t5, 2111f
                  mulhsu     tp, s5, t0
                  c.srli     a3, 4
                  slti       s11, s8, 509
                  c.addi     s0, 8
                  bltu       t3, a2, 2113f
                  xori       gp, s0, 22
2109:             auipc      s0, 760109
                  addi       s1, a6, -180
2111:             addi       zero, s4, -347
                  fence
2113:             xori       t5, s11, -151
                  csrrci     a7, 0x340, 27
                  xori       t2, zero, -838
                  bne        s4, ra, 2129f
2117:             add        s9, s3, gp
                  c.or       a1, a4
                  fence
                  c.mv       s1, a1
                  c.srli     a1, 9
                  c.beqz     a5, 2127f
                  or         s4, s1, t5
                  csrrci     s1, 0x340, 29
                  add        s8, t5, t5
                  slli       t2, s5, 15
2127:             csrrs      s10, 0x340, t1
                  beq        a0, s7, 2133f
2129:             sra        zero, a1, s3
                  or         s3, t1, t1
                  sltu       s9, s2, s4
                  csrrci     t1, 0x340, 20
2133:             mulhsu     s8, s1, gp
                  c.addi16sp sp, -16
                  mul        s0, t0, s7
                  ori        t0, t1, -587
                  bltu       s7, a4, 2142f
                  c.lui      t1, 31
                  .4byte 0x00100073 # ebreak
                  add        t4, s8, s3
                  srl        sp, t1, a6
2142:             divu       s4, tp, a1
                  fence
                  fence
                  c.ebreak;c.nop;
                  sra        a6, a2, t4
                  mulhsu     s0, s1, s2
                  blt        a5, a0, 2168f
                  c.srai     a5, 14
                  srl        sp, ra, s0
                  c.xor      a3, a5
                  c.srli     s0, 24
                  or         gp, s10, a1
                  fence
                  csrrci     s11, 0x340, 29
                  srai       t5, s8, 12
                  srai       sp, ra, 15
                  c.and      s1, a3
                  divu       gp, ra, a1
                  bgeu       s6, s9, j_sub_4_sub_5_7 #branch to jump instr
                  sra        a2, gp, sp
                  csrrci     s7, 0x340, 11
                  c.lui      t3, 24
                  c.ebreak;c.nop;
j_sub_4_sub_5_7:  jal        t1, sub_5
                  blt        s8, t1, 2156f
                  xori       s7, s1, 80
2156:             csrrwi     s1, 0x340, 10
                  c.add      t1, t1
                  .4byte 0x00100073 # ebreak
                  bne        s2, t2, 2178f
                  c.add      s1, s11
                  mulhu      a5, s2, t4
                  c.lui      t2, 14
                  c.or       a2, a1
                  c.andi     a1, 6
                  sltu       a5, gp, a6
                  div        t2, s5, s7
                  ori        s6, s11, -454
2168:             or         t3, s6, s11
                  ori        s6, s9, 601
                  mulh       s11, ra, tp
                  blt        t5, a2, 2185f
                  c.or       a3, a5
                  mulh       a6, s1, a1
                  sltu       s10, s8, s6
                  blt        a5, s8, 2190f
                  sltu       a6, gp, t1
                  add        t1, a0, a2
2178:             slti       gp, s11, -1017
                  c.srli     s0, 29
                  mulh       s2, t5, s4
                  csrrci     t0, 0x340, 6
                  lui        a5, 812500
                  csrrwi     a5, 0x340, 2
                  slti       a1, sp, 466
2185:             sltu       a1, a7, t3
                  remu       s6, zero, t1
                  ori        s3, s4, -88
                  sra        s0, s11, s6
                  bge        t5, ra, 2196f
2190:             remu       s3, t4, gp
                  beq        a0, s7, 2210f
                  beq        a2, sp, 2206f
                  blt        a5, s4, 2200f
                  c.beqz     a3, 2208f
                  blt        s10, t4, 2197f
2196:             bge        a0, s0, 2214f
2197:             c.bnez     a3, 2202f
                  csrrs      t1, 0x340, s6
                  csrrwi     t3, 0x340, 0
2200:             srai       a6, t2, 11
                  c.beqz     a3, 2202f
2202:             div        t5, t1, tp
                  div        t3, s4, s1
                  auipc      s5, 191446
                  c.addi16sp sp, 32
2206:             bne        ra, s6, 2212f
                  divu       s7, t4, a3
2208:             bltu       s2, tp, 2223f
                  bge        s10, gp, 2214f
2210:             c.srli     s1, 29
                  c.lui      s8, 4
2212:             xori       s3, s6, -877
                  csrrc      s5, 0x340, s6
2214:             c.bnez     a2, 2219f
                  sltiu      a3, t0, 895
                  c.add      s5, sp
                  remu       a3, a1, a4
                  csrrw      a1, 0x340, s11
2219:             csrrc      t0, 0x340, gp
                  remu       a5, t6, s7
                  c.andi     a3, -1
                  c.slli     a3, 22
2223:             c.xor      s1, a1
                  c.slli     s2, 15
                  bge        a3, a7, 2229f
                  remu       zero, a7, s11
                  csrrw      a7, 0x340, t0
                  c.ebreak;c.nop;
2229:             c.mv       s9, s8
                  c.mv       t0, a0
                  fence.i
                  add        s7, s6, t3
                  sltu       a7, s3, a3
                  csrrw      t4, 0x340, a2
                  divu       tp, a4, t4
                  sll        a7, a0, a5
                  mulhu      sp, s4, a3
                  sub        sp, s9, a6
                  csrrc      s1, 0x340, t6
                  lui        sp, 81671
                  c.andi     a5, 29
                  slt        t1, a6, s10
                  c.addi     a1, 16
                  sub        s10, a7, ra
                  sltu       s2, s9, s8
                  c.andi     a5, 29
                  c.xor      a2, a2
                  srai       tp, s1, 7
                  fence
                  c.andi     s1, 0
                  c.and      a5, s0
                  c.andi     a5, 17
                  csrrc      s8, 0x340, a0
                  ori        s4, s3, 497
                  c.add      s2, s5
                  mulhu      t3, t5, t4
                  srai       s4, a6, 16
                  sra        s0, a1, s11
                  c.beqz     a5, 2269f
                  c.andi     a1, -1
                  fence.i
                  sltu       s3, t1, s2
                  slli       t3, t1, 21
                  fence
                  c.mv       s2, t2
                  slt        t3, ra, s5
                  c.li       s1, 16
                  sub        a1, s6, a0
2269:             slt        sp, a0, tp
                  sra        s2, a7, tp
                  slt        t1, s7, t1
                  c.nop
                  fence
                  slli       tp, s8, 15
                  rem        t1, t3, a5
                  csrrci     a7, 0x340, 8
                  sub        s11, s5, tp
                  csrrci     s11, 0x340, 13
                  c.nop
                  addi       t2, t2, 307
                  c.or       a2, a4
                  c.bnez     s0, 2302f
                  c.ebreak;c.nop;
                  c.mv       t4, sp
                  div        s4, t1, tp
                  c.andi     a3, 10
                  slt        s2, a7, a6
                  c.addi16sp sp, 288
                  c.nop
                  c.xor      s0, a4
                  c.addi16sp sp, 256
                  sra        t3, a0, a5
                  slt        t4, s2, s9
                  csrrsi     a6, 0x340, 4
                  divu       zero, tp, s6
                  or         s8, t1, a2
                  xor        s10, a3, s9
                  c.lui      s9, 7
                  nop
                  addi       s4, s8, 567
                  mul        s1, s8, s11
2302:             c.mv       s10, s5
                  or         tp, zero, a4
                  fence
                  mul        s2, s5, t0
                  srai       a5, s5, 22
                  remu       a2, a3, a3
                  srli       a7, s9, 26
                  c.addi     s3, 25
                  auipc      ra, 877591
                  fence
                  c.nop
                  div        s4, t3, s4
                  sra        s5, s3, s10
                  c.sub      a5, a3
                  fence.i
                  csrrs      s0, 0x340, a1
                  csrrsi     s11, 0x340, 20
                  csrrs      a5, 0x340, t3
                  sltu       t4, a4, sp
                  bltu       s0, t4, 2330f
                  c.nop
                  and        s0, s6, s7
                  csrrc      s1, 0x340, t0
                  csrrwi     zero, 0x340, 11
                  nop
                  div        s9, s3, a5
                  srl        s7, a6, s0
                  csrrwi     s5, 0x340, 20
2330:             c.li       s10, -1
                  mulh       s8, a5, a7
                  c.lui      t3, 7
                  c.beqz     s0, 2338f
                  slti       s0, s10, 883
                  beq        t1, a4, 2354f
                  add        s11, t2, t1
                  and        t1, zero, t6
2338:             div        t0, sp, s10
                  c.or       a5, s1
                  slti       t2, a2, -344
                  csrrwi     s10, 0x340, 5
                  mulhu      s3, sp, t5
                  c.srli     a5, 5
                  c.or       a2, a5
                  xori       t4, s11, -720
                  csrrwi     ra, 0x340, 24
                  xor        s5, t6, t1
                  srli       s3, s11, 31
                  blt        t0, s1, 2358f
                  sra        ra, s4, t3
                  bne        a7, s1, 2364f
                  srli       t1, s6, 11
                  mulhu      s11, s9, s11
2354:             c.and      s0, a2
                  nop
                  mulh       zero, s8, gp
                  srli       s11, gp, 19
2358:             .4byte 0x00100073 # ebreak
                  ori        s11, a0, 841
                  lui        t0, 702939
                  bge        t2, s4, 2377f
                  c.nop
                  bne        t3, t0, 2373f
2364:             c.li       a1, -1
                  csrrc      t5, 0x340, gp
                  fence.i
                  xor        t3, s9, s4
                  nop
                  divu       sp, s2, t2
                  blt        s8, s2, 2379f
                  csrrsi     a6, 0x340, 18
                  blt        t0, a6, 2392f
2373:             mulhsu     s4, s1, s0
                  bne        s4, s7, 2380f
                  bne        a1, s1, 2390f
                  bne        s3, sp, 2395f
2377:             c.beqz     a1, 2394f
                  bne        a2, t1, 2382f
2379:             c.ebreak;c.nop;
2380:             sltu       gp, t3, s8
                  sltiu      t3, s5, -596
2382:             xori       a6, s3, 367
                  addi       s3, t4, -419
                  ori        a6, s9, -598
                  slti       s0, a3, -143
                  .4byte 0x00100073 # ebreak
                  bne        s8, ra, 2402f
                  srai       a1, t3, 9
                  sub        s8, a0, s10
2390:             mulhsu     t5, t2, t0
                  xor        t5, s8, a7
2392:             sub        tp, t3, s10
                  c.beqz     a5, 2413f
2394:             slti       s10, t2, 620
2395:             sltu       s1, zero, s3
                  c.beqz     a2, 2415f
                  lui        t3, 783827
                  c.addi16sp sp, -16
                  bne        s9, zero, 2415f
                  mulh       a7, s8, s2
                  slli       t5, a1, 2
2402:             c.sub      a5, s0
                  andi       t3, a2, 802
                  xor        a7, a6, a3
                  srai       s10, a7, 26
                  ori        t5, a2, -52
                  csrrci     s7, 0x340, 20
                  sltiu      s8, t2, -523
                  c.and      a2, a1
                  srli       a2, ra, 3
                  srai       s8, ra, 6
                  c.sub      a5, s1
2413:             c.beqz     a1, 2415f
                  mulhsu     t5, zero, t6
2415:             c.lui      a2, 9
                  sra        a3, s7, a2
                  mulhsu     s7, a3, t2
                  c.srai     a2, 26
                  c.lui      a2, 21
                  c.srli     a3, 1
                  c.ebreak;c.nop;
                  c.slli     s2, 8
                  andi       tp, t6, 576
                  and        s4, s1, t1
                  c.and      a2, a5
                  nop
                  csrrc      a5, 0x340, t4
                  slli       tp, sp, 2
                  srli       a3, a6, 11
                  c.bnez     a5, 2440f
                  c.and      a1, s1
                  c.mv       a3, t2
                  slli       t0, t4, 3
                  slti       s7, a6, -865
                  rem        a5, zero, s7
                  sltiu      a1, a1, -657
                  div        ra, a4, a5
                  srl        t1, gp, a7
                  c.addi     a1, -1
2440:             bltu       s10, s4, 2441f
2441:             c.slli     t1, 23
                  srli       a3, a0, 23
                  sra        sp, t5, a7
                  xor        t4, a4, s6
                  add        s7, s10, tp
                  sub        ra, a0, gp
                  sra        s11, s7, s3
                  c.mv       s2, a1
                  c.add      s0, sp
                  srli       s9, s8, 21
                  .4byte 0x00100073 # ebreak
                  sub        t4, s11, s5
                  mulh       s2, t3, s4
                  fence
                  c.srli     a1, 29
                  c.bnez     a1, 2463f
                  mulhu      s8, a0, a5
                  csrrc      s8, 0x340, t6
                  add        t2, gp, t5
                  srai       s9, tp, 23
                  auipc      s4, 734719
                  fence
2463:             mul        a5, s6, s8
                  add        gp, a5, a6
                  slli       s4, a7, 5
                  ori        s1, s0, 360
                  c.xor      s1, a0
                  bge        a0, a4, 2474f
                  sub        t1, s3, gp
                  bge        s2, s6, 2484f
                  csrrwi     a2, 0x340, 4
                  bgeu       s3, s8, 2477f
                  c.ebreak;c.nop;
2474:             sra        s6, s6, s3
                  c.li       s0, 5
                  srai       s7, t5, 28
2477:             andi       t4, t6, -565
                  divu       a1, s10, t5
                  divu       t4, s0, s11
                  c.slli     tp, 29
                  srl        sp, ra, s4
                  c.ebreak;c.nop;
                  xor        s10, s3, s6
2484:             lui        s4, 778693
                  csrrsi     a7, 0x340, 10
                  csrrci     sp, 0x340, 18
                  addi       s6, sp, 620
                  csrrci     s7, 0x340, 28
                  csrrsi     a3, 0x340, 18
                  srli       s7, t5, 0
                  mulh       a1, a1, s11
                  add        s7, a5, a2
                  sltiu      t5, s0, 234
                  csrrci     s8, 0x340, 30
                  slti       a3, ra, -202
                  slti       a5, a4, -500
                  lui        t5, 902564
                  c.bnez     a2, 2516f
                  c.beqz     a2, 2508f
                  c.li       s1, 13
                  mul        t0, t0, s10
                  mul        t2, a5, s7
                  mulhsu     t1, s10, t2
                  slt        s1, a7, a1
                  auipc      a7, 760826
                  and        t3, t5, a2
                  sltiu      s3, a7, 263
2508:             fence
                  ori        a6, a1, 506
                  remu       t1, t2, zero
                  c.addi     s3, -1
                  c.sub      s1, s1
                  ori        a3, a5, -940
                  auipc      t3, 912011
                  c.and      a2, a5
2516:             div        s3, s3, t4
                  csrrsi     s9, 0x340, 6
                  c.beqz     a5, 2531f
                  c.add      s7, s7
                  nop
                  c.beqz     a3, 2525f
                  csrrw      t5, 0x340, a7
                  c.or       a1, a1
                  csrrci     s5, 0x340, 23
2525:             c.addi     a3, 24
                  c.andi     a5, 3
                  rem        t4, s6, a1
                  c.bnez     a3, 2542f
                  rem        zero, a6, zero
                  slti       a2, s5, -683
2531:             beq        t5, s8, 2551f
                  c.sub      s1, a1
                  slt        s7, t2, s2
                  auipc      s4, 611828
                  c.or       a1, a3
                  mulh       sp, s0, ra
                  c.and      a1, a4
                  and        t2, tp, gp
                  add        t0, s2, s5
                  c.nop
                  div        t4, t2, a7
2542:             srai       a6, s9, 11
                  c.or       s1, a3
                  sltiu      s11, sp, 164
                  c.addi16sp sp, 80
                  addi       a7, a6, 776
                  slli       t4, t5, 29
                  divu       t3, t5, a7
                  fence
                  c.nop
2551:             rem        tp, t3, ra
                  c.mv       a1, s6
                  bne        t0, s11, 2562f
                  c.slli     a3, 20
                  ori        s5, s5, 381
                  c.or       a5, a0
                  c.nop
                  lui        t2, 1042788
                  and        t5, gp, t0
                  csrrci     s6, 0x340, 20
                  sltiu      s8, a3, 347
2562:             srai       a3, a0, 27
                  div        s1, tp, sp
                  c.li       t0, 3
                  and        a2, a6, t3
                  sll        s11, a5, a6
                  slli       gp, tp, 20
                  mulhu      t4, gp, sp
                  c.ebreak;c.nop;
                  remu       a2, s1, t2
                  beq        s11, s1, 2588f
                  csrrw      t1, 0x340, s4
                  c.slli     t1, 17
                  c.beqz     s1, 2579f
                  mul        zero, a3, a1
                  c.sub      a5, s1
                  xor        a3, s6, a6
                  c.addi16sp sp, 176
2579:             c.lui      s8, 18
                  nop
                  .4byte 0x00100073 # ebreak
                  c.srai     a5, 24
                  remu       tp, a7, s6
                  ori        a1, s7, -286
                  slti       s10, sp, -144
                  csrrci     a7, 0x340, 5
                  csrrc      s3, 0x340, s3
2588:             csrrsi     t1, 0x340, 14
                  c.bnez     a2, 2604f
                  xori       s0, t4, -891
                  add        s10, t4, a4
                  slt        s11, s9, s5
                  bgeu       gp, t1, 2602f
                  fence.i
                  c.srai     a3, 1
                  divu       s7, t1, t6
                  and        s6, zero, t5
                  srli       s7, s0, 26
                  c.addi     s7, 19
                  mulhu      t1, t0, a0
                  or         t1, a0, s8
2602:             xori       s5, t6, -375
                  c.addi16sp sp, 336
2604:             lui        a1, 554738
                  c.bnez     a3, 2610f
                  divu       a1, ra, a3
                  c.xor      s1, s1
                  c.xor      a2, a2
                  nop
2610:             bltu       t5, s10, 2620f
                  sltu       ra, s7, a5
                  c.srli     s1, 30
                  c.beqz     s0, 2628f
                  mulhsu     tp, t3, s11
                  c.li       s5, 23
                  andi       t2, a5, -689
                  add        s2, s6, t5
                  xori       zero, a1, 938
                  bgeu       a2, tp, 2624f
2620:             slti       s3, s9, -769
                  c.srli     a3, 18
                  csrrwi     s0, 0x340, 25
                  c.addi16sp sp, 336
2624:             c.and      s1, a4
                  c.ebreak;c.nop;
                  c.srai     s1, 29
                  auipc      s2, 831481
2628:             csrrw      ra, 0x340, a7
                  and        zero, s3, ra
                  slt        s5, a2, a1
                  sltiu      t4, tp, -98
                  c.addi16sp sp, -16
                  xori       s10, tp, 209
                  mulh       ra, zero, gp
                  slli       a3, t5, 10
                  mulhsu     t5, t2, tp
                  srai       t3, s9, 15
                  bgeu       s6, s11, 2653f
                  c.lui      ra, 18
                  c.sub      a3, a4
                  c.srli     a2, 5
                  csrrsi     a3, 0x340, 30
                  auipc      s3, 589737
                  c.or       s0, a1
                  c.xor      a2, a0
                  c.or       s0, s0
                  sltiu      s8, gp, -739
                  c.and      s1, a5
                  slt        a1, a2, s2
                  remu       s5, t0, s9
                  lui        s4, 1014677
                  auipc      s0, 500797
2653:             c.addi     a1, 18
                  andi       t4, s11, -571
                  c.li       s9, 4
                  nop
                  c.sub      a1, a4
                  addi       sp, zero, 87
                  bne        s2, ra, 2663f
                  bgeu       a5, s8, 2679f
                  c.addi     s5, 17
                  and        s1, s2, s7
2663:             add        a6, t5, s6
                  c.mv       tp, a6
                  and        a7, s10, s1
                  sltu       a5, s6, a0
                  bge        s3, gp, 2673f
                  sub        t2, t2, s8
                  bne        a6, s8, 2688f
                  csrrwi     a7, 0x340, 31
                  and        a7, s1, s1
                  bge        t1, s4, 2691f
2673:             beq        sp, s0, 2678f
                  srai       s9, a1, 29
                  srl        s8, t3, a3
                  mulhu      zero, a4, a6
                  addi       a2, gp, -305
2678:             c.lui      s11, 7
2679:             sra        s9, a3, t0
                  rem        s4, zero, a0
                  mulhu      t4, t5, ra
                  fence
                  sub        a5, a3, t4
                  remu       s7, tp, t4
                  csrrw      t5, 0x340, a3
                  rem        t3, ra, t6
                  sll        s0, s2, t3
2688:             mulhsu     a5, s7, tp
                  c.ebreak;c.nop;
                  srai       a5, ra, 30
2691:             c.slli     a6, 27
                  mulhu      a3, s8, s11
                  rem        gp, s5, s8
                  c.or       a2, a4
                  lui        gp, 1044315
                  c.li       a5, -1
                  bltu       t6, s2, 2706f
                  csrrsi     s0, 0x340, 6
                  divu       t5, a5, t1
                  bltu       a7, t2, 2717f
                  mulhsu     s8, a2, s8
                  and        ra, ra, s5
                  xori       s10, s3, 179
                  div        ra, a2, s7
                  bltu       t4, t3, 2715f
2706:             csrrc      a1, 0x340, s1
                  c.addi     a3, -1
                  c.nop
                  sll        t2, zero, t1
                  c.xor      a2, s0
                  c.bnez     s0, 2725f
                  c.ebreak;c.nop;
                  xor        s3, s8, s0
                  csrrwi     gp, 0x340, 10
2715:             div        a2, tp, t1
                  mulhsu     s8, s11, a7
2717:             fence.i
                  bne        s9, a3, 2720f
                  c.li       s6, -1
2720:             sub        a1, s8, s10
                  lui        sp, 954229
                  mulhsu     a7, a3, s10
                  bge        s7, s9, 2729f
                  c.ebreak;c.nop;
2725:             sll        s8, s11, s11
                  sub        sp, s9, s5
                  csrrs      a6, 0x340, t2
                  c.ebreak;c.nop;
2729:             slt        s5, zero, s11
                  xori       s2, gp, 582
                  c.or       a1, a0
                  blt        s5, a0, 2745f
                  csrrsi     s6, 0x340, 22
                  csrrsi     a5, 0x340, 26
                  auipc      s7, 327795
                  rem        s6, ra, t5
                  ori        ra, s1, 283
                  c.or       a2, a0
                  sub        sp, t3, s3
                  sltu       t3, s11, s3
                  c.slli     s4, 23
                  fence
                  mulh       s7, a4, t0
                  sltiu      s10, t0, -139
2745:             csrrw      s0, 0x340, s3
                  bne        t5, t3, 2751f
                  slt        s2, s1, t5
                  c.slli     s4, 24
                  srai       t3, s6, 2
                  c.ebreak;c.nop;
2751:             divu       ra, s7, s2
                  add        s8, t3, a5
                  remu       s1, t6, a4
                  c.lui      t2, 30
                  c.sub      a3, a0
                  csrrw      t0, 0x340, t2
                  c.andi     s0, -1
                  remu       t0, s4, t2
                  c.beqz     s1, 2764f
                  sltu       s8, a2, a2
                  sub        a6, a4, t5
                  .4byte 0x00100073 # ebreak
                  sra        s3, sp, a3
2764:             lui        a6, 750590
                  c.srli     a5, 2
                  andi       s3, s5, -968
                  auipc      s1, 78987
                  c.srli     a2, 24
                  mulhsu     a6, zero, s7
                  or         a6, t1, tp
                  csrrs      s11, 0x340, sp
                  sra        s3, s6, t2
                  c.xor      s1, a2
                  addi       s2, a7, 357
                  srl        sp, a7, a2
                  srl        a6, s2, t3
                  slli       s2, ra, 6
                  c.sub      a3, a0
                  slti       s9, a0, 896
                  mulhu      s10, a2, s6
                  andi       s5, t3, 129
                  add        t0, s1, t4
                  add        t4, t2, ra
                  c.srli     s1, 25
                  c.beqz     s0, 2790f
                  beq        gp, t6, 2795f
                  csrrwi     s2, 0x340, 22
                  csrrs      s10, 0x340, s8
                  lui        s0, 474414
2790:             and        t4, gp, t1
                  c.beqz     s1, 2810f
                  c.and      a3, a5
                  csrrci     t2, 0x340, 2
                  xori       t3, t6, -221
2795:             bltu       t6, s9, 2811f
                  c.mv       a2, s1
                  sra        ra, t0, s10
                  or         s5, a4, s7
                  c.srli     s0, 20
                  mulhsu     ra, s3, a0
                  srai       s3, s10, 1
                  fence.i
                  c.or       s1, s1
                  csrrs      s9, 0x340, a2
                  c.addi16sp sp, -16
                  c.beqz     a3, 2812f
                  .4byte 0x00100073 # ebreak
                  mul        ra, s6, ra
                  sltiu      s5, s10, 644
2810:             lui        s1, 429220
2811:             fence
2812:             csrrci     s8, 0x340, 1
                  blt        a2, t4, 2828f
                  sra        s3, t0, t4
                  c.nop
                  csrrsi     s6, 0x340, 29
                  slti       s5, s10, -812
                  andi       ra, s2, -889
                  c.srai     s0, 20
                  c.add      gp, gp
                  csrrw      t5, 0x340, t3
                  sltu       s1, gp, s7
                  fence
                  andi       s2, t2, -499
                  c.nop
                  csrrsi     s9, 0x340, 22
                  csrrwi     t0, 0x340, 31
2828:             xor        s4, s3, t0
                  nop
                  add        s3, t1, t3
                  srli       a6, sp, 25
                  sra        t5, s8, s9
                  srl        t0, a4, a4
                  c.xor      a1, s1
                  mulh       zero, tp, t6
                  c.andi     a2, -1
                  bge        a2, t1, 2852f
                  csrrsi     t3, 0x340, 18
                  c.srai     s1, 7
                  sltu       s8, a6, s0
                  srai       a7, a5, 7
                  c.sub      a5, a4
                  csrrw      s0, 0x340, a2
                  csrrwi     s5, 0x340, 18
                  beq        gp, gp, 2854f
                  lui        gp, 848305
                  c.xor      a2, a3
                  slt        t1, a7, ra
                  c.or       a2, a4
                  sltiu      a3, s9, 320
                  csrrs      s3, 0x340, t2
2852:             c.addi16sp sp, -16
                  fence
2854:             blt        tp, s2, 2855f
2855:             sltu       s8, s5, gp
                  srai       s4, t1, 3
                  c.add      s8, sp
                  c.bnez     s1, 2868f
                  slti       s7, s9, 519
                  slt        s9, s3, t3
                  auipc      a7, 315240
                  csrrw      t4, 0x340, s1
                  remu       a1, s5, a4
                  csrrsi     s9, 0x340, 0
                  mulhu      s4, a2, s10
                  csrrci     a3, 0x340, 4
                  csrrsi     zero, 0x340, 31
2868:             slti       a5, sp, -647
                  nop
                  lui        t0, 912922
                  slti       gp, a5, 443
                  csrrs      sp, 0x340, t3
                  mul        t5, t2, t4
                  lui        t5, 782602
                  c.andi     a3, 13
                  c.addi     t5, 15
                  .4byte 0x00100073 # ebreak
                  sra        zero, a1, a4
                  srl        a6, a1, t1
                  bge        tp, s5, 2884f
                  nop
                  c.xor      s0, a2
                  mulhu      zero, t2, s1
2884:             or         s3, s11, t6
                  xori       s9, s0, -502
                  c.beqz     s0, 2906f
                  bgeu       s3, s7, 2905f
                  c.ebreak;c.nop;
                  slli       tp, s11, 29
                  xori       s4, t0, -998
                  srl        s5, s6, s10
                  c.beqz     a5, 2907f
                  c.srai     a3, 23
                  andi       s7, a4, 30
                  divu       t4, t4, a0
                  srl        s3, ra, s3
                  or         t5, tp, t6
                  c.lui      t0, 2
                  lui        a2, 781238
                  and        a2, t0, s1
                  rem        a6, a3, ra
                  c.beqz     s0, 2916f
                  csrrsi     sp, 0x340, 21
                  c.srai     s0, 29
2905:             srai       t4, s1, 8
2906:             csrrwi     ra, 0x340, 31
2907:             srli       t4, t0, 24
                  fence
                  nop
                  bge        s3, a4, 2929f
                  c.nop
                  sub        t0, a2, s3
                  xori       s7, s2, 11
                  c.mv       t5, s10
                  fence.i
2916:             c.ebreak;c.nop;
                  c.or       s0, a5
                  c.or       a3, a2
                  lui        ra, 241736
                  c.nop
                  c.ebreak;c.nop;
                  blt        s4, sp, 2929f
                  c.bnez     a5, 2943f
                  bltu       s5, a7, 2928f
                  c.and      s0, s0
                  c.beqz     a1, 2941f
                  xori       s9, s8, 870
2928:             c.andi     a5, 3
2929:             sra        t2, s8, s4
                  add        s7, t6, t5
                  csrrsi     t3, 0x340, 4
                  c.srai     s1, 11
                  addi       a5, zero, 6 #init loop 0 counter
                  addi       ra, zero, 20 #init loop 0 limit
sub_4_69_0_t:     ori        s7, s11, 664
                  addi       a5, a5, 2 #update loop 0 counter
                  sll        t5, a2, s3
                  bltu       a5, ra, sub_4_69_0_t #branch for loop 0
                  c.li       s8, 11
                  c.sub      a1, a4
                  c.sub      a3, a3
                  add        a2, tp, t1
                  c.and      a5, a3
                  c.srli     a1, 15
                  bgeu       a3, s0, 2958f
                  andi       a1, t4, -839
                  c.srli     a5, 20
2941:             c.sub      a5, a1
                  beq        a3, s7, 2959f
2943:             rem        t3, a3, a1
                  addi       t3, ra, -827
                  ori        t4, ra, 227
                  c.addi16sp sp, -16
                  sltu       t1, ra, t2
                  c.beqz     a2, 2957f
                  c.bnez     a5, 2963f
                  bne        t5, s7, 2959f
                  csrrsi     zero, 0x340, 31
                  mulhu      s0, s3, a7
                  c.bnez     a2, 2966f
                  c.mv       t3, s1
                  nop
                  bge        s11, ra, 2966f
2957:             c.nop
2958:             c.and      a3, s1
2959:             csrrw      gp, 0x340, s6
                  c.srli     a3, 2
                  c.ebreak;c.nop;
                  div        a7, s6, gp
2963:             ori        s5, s0, 686
                  remu       a5, s2, t6
                  c.slli     a2, 8
2966:             mulhu      t1, s10, t1
                  remu       s9, s7, s7
                  mul        gp, s3, t1
                  csrrci     gp, 0x340, 5
                  or         s1, s2, s6
                  bltu       a5, a6, 2977f
                  c.mv       t1, a3
                  fence
                  add        a3, ra, t6
                  c.li       a7, 15
                  c.xor      a2, a1
2977:             sltiu      s8, gp, -387
                  c.ebreak;c.nop;
                  sll        s4, t5, s11
                  slli       s11, s10, 15
                  fence
                  c.lui      a2, 3
                  bgeu       t3, a2, 2997f
                  c.xor      a1, a4
                  xori       t3, a0, -893
                  mulh       t2, a0, t4
                  or         s8, s1, a4
                  c.srai     a1, 21
                  slti       sp, t2, -612
                  sltu       a5, s9, a4
                  auipc      t2, 395374
                  c.srli     s1, 27
                  bne        a4, a0, 2998f
                  csrrs      a6, 0x340, a6
                  sltu       t0, t2, s0
                  mul        sp, a4, t6
2997:             c.addi16sp sp, -16
2998:             bgeu       s4, s5, 3002f
                  c.srai     s1, 8
                  auipc      a5, 361708
                  .4byte 0x00100073 # ebreak
3002:             c.addi16sp sp, 224
                  c.addi16sp sp, -16
                  .4byte 0x00100073 # ebreak
                  c.beqz     s1, 3014f
                  divu       t4, ra, t5
                  c.beqz     a2, 3026f
                  srai       t0, a3, 15
                  beq        s8, s1, 3028f
                  bgeu       s7, t4, 3014f
                  c.ebreak;c.nop;
                  mul        s3, a0, t4
                  blt        t6, s6, 3018f
3014:             c.or       a3, a5
                  c.nop
                  mulhu      tp, ra, t5
                  lui        s11, 714151
3018:             sub        s6, s4, s6
                  xori       s6, gp, 353
                  c.or       a2, s0
                  sub        a3, t5, a5
                  slti       s6, t1, 39
                  sra        t4, zero, t1
                  slli       a5, a0, 20
                  c.addi16sp sp, -16
3026:             csrrci     a7, 0x340, 17
                  ori        s6, zero, 959
3028:             bge        t2, s9, 3035f
                  xor        t3, t0, ra
                  c.nop
                  c.mv       s0, a3
                  sltiu      s6, sp, 268
                  c.andi     a1, -1
                  sll        ra, t0, t6
3035:             add        a6, s2, s9
                  c.nop
                  c.bnez     a5, 3055f
                  fence
                  csrrwi     t4, 0x340, 28
                  c.li       s7, 24
                  addi       s6, s4, -407
                  srli       s3, s6, 2
                  div        a5, t3, s0
                  c.or       s1, a2
                  srli       s10, sp, 9
                  csrrci     ra, 0x340, 17
                  beq        gp, s3, 3049f
                  sub        s0, t3, a5
3049:             nop
                  fence
                  sll        s8, a4, s9
                  add        s4, s5, t3
                  fence
                  beq        s3, s4, 3074f
3055:             c.addi     a3, 30
                  c.slli     a7, 9
                  c.bnez     a1, 3067f
                  c.add      t1, t6
                  c.mv       s7, ra
                  mulhu      s3, s8, s4
                  srl        s8, s8, t4
                  .4byte 0x00100073 # ebreak
                  bne        a5, t2, 3064f
3064:             c.nop
                  add        gp, a2, gp
                  bgeu       s8, s4, 3081f
3067:             c.slli     s1, 27
                  .4byte 0x00100073 # ebreak
                  c.li       s3, -1
                  xori       sp, a1, -26
                  mulhsu     s4, a0, gp
                  beq        a0, tp, 3091f
                  xori       a3, a3, 406
3074:             ori        s9, s5, 472
                  nop
                  c.ebreak;c.nop;
                  bltu       s3, s10, 3082f
                  bge        s7, t3, 3094f
                  c.beqz     a1, 3085f
                  c.bnez     a5, 3095f
3081:             .4byte 0x00100073 # ebreak
3082:             c.and      a5, a4
                  div        s6, tp, zero
                  auipc      s2, 642016
3085:             c.addi     s5, -1
                  csrrw      s3, 0x340, t4
                  ori        s7, s4, 42
                  sltiu      a2, s6, -970
                  c.bnez     s1, 3094f
                  xori       s5, gp, -78
3091:             bgeu       a5, t4, 3110f
                  c.addi     a2, -1
                  remu       s8, s2, t2
3094:             blt        s0, a3, 3103f
3095:             srai       s10, t1, 27
                  divu       s10, a1, a2
                  mul        t1, t2, ra
                  bltu       s2, s11, 3118f
                  remu       a2, s10, s10
                  csrrci     sp, 0x340, 20
                  fence
                  xori       t3, t4, 179
3103:             bge        tp, a4, 3122f
                  slt        zero, s9, t6
                  xor        t3, s3, tp
                  c.li       s7, 0
                  .4byte 0x00100073 # ebreak
                  andi       zero, a5, 394
                  ori        t1, a4, -137
3110:             remu       a7, s1, a4
                  divu       a3, s6, t0
                  c.andi     a3, 31
                  and        t2, tp, s10
                  c.andi     a5, 17
                  slli       tp, a5, 17
                  bne        s1, t4, 3117f
3117:             srai       s11, t3, 29
3118:             slli       a7, s6, 11
                  csrrc      a7, 0x340, a2
                  srai       t5, ra, 4
                  srli       t1, t5, 5
3122:             div        s4, s9, tp
                  .4byte 0x00100073 # ebreak
                  lui        t3, 196053
                  mulhsu     a6, a7, sp
                  andi       s7, s2, 76
                  c.andi     a2, -1
                  mulhsu     sp, zero, s11
                  c.mv       t0, a7
                  fence
                  bgeu       a1, a4, 3140f
                  blt        a5, s3, 3146f
                  auipc      s11, 282301
                  add        t1, s5, s11
                  beq        s8, s5, 3150f
                  slli       a6, a6, 24
                  beq        s3, s0, 3156f
                  slli       t0, tp, 0
                  bgeu       s7, s8, 3144f
3140:             csrrwi     s7, 0x340, 31
                  c.or       a5, a3
                  bne        a7, gp, 3157f
                  fence.i
3144:             sra        s3, a4, a3
                  c.and      a5, a0
3146:             mulhu      s11, s6, t3
                  c.slli     t1, 16
                  c.bnez     a2, 3157f
                  c.srai     s1, 19
3150:             add        s10, sp, t4
                  srli       s8, s0, 12
                  csrrsi     a3, 0x340, 3
                  c.lui      s9, 16
                  divu       s6, t3, a3
                  c.sub      a1, a3
3156:             add        s11, s6, s2
3157:             c.and      a2, a2
                  andi       sp, t3, 870
                  c.andi     a3, -1
                  sll        s5, zero, a0
                  mul        s0, a3, a1
                  nop
                  srai       s0, t5, 7
                  sll        zero, a0, s3
                  andi       s9, sp, -568
                  srai       a6, a3, 13
                  c.andi     s1, 19
                  and        a7, t3, s3
                  c.beqz     a5, 3171f
                  sra        s9, s9, a6
3171:             andi       s7, a5, -654
                  remu       t4, a7, s7
                  ori        t5, a1, -149
                  xor        t1, s6, s7
                  fence
                  c.addi     s6, 15
                  nop
                  csrrw      tp, 0x340, s2
                  or         s3, t3, a1
                  c.add      s11, a5
                  sltiu      tp, zero, 249
                  c.bnez     a3, 3202f
                  beq        s5, t2, 3197f
                  srai       s2, a6, 10
                  c.and      a1, a5
                  beq        s5, a7, 3190f
                  c.beqz     s0, 3194f
                  c.and      a3, a3
                  c.add      s1, t6
3190:             fence.i
                  remu       s10, s1, t4
                  c.srli     s0, 28
                  c.srli     s0, 20
3194:             c.add      sp, s10
                  bltu       t0, a4, 3208f
                  c.bnez     s1, 3202f
3197:             sltiu      t0, t1, -434
                  c.and      a5, a1
                  c.xor      a2, a5
                  csrrw      t4, 0x340, s1
                  csrrci     t1, 0x340, 8
3202:             c.or       s0, a3
                  divu       a2, t2, tp
                  c.or       a1, a3
                  csrrc      t0, 0x340, tp
                  div        a5, s9, t5
                  div        t4, s11, t2
3208:             c.mv       s0, sp
                  bgeu       s1, a6, 3219f
                  csrrw      a3, 0x340, gp
                  beq        s0, s10, 3229f
                  sltu       s2, t1, s5
                  c.addi16sp sp, -16
                  .4byte 0x00100073 # ebreak
                  sll        s1, s8, s3
                  c.li       t4, -1
                  and        a5, a6, t5
                  c.srai     a1, 2
3219:             bne        s0, t1, 3224f
                  srai       sp, s8, 24
                  sra        s11, zero, s8
                  mul        a5, t3, a1
                  andi       s3, s3, -978
3224:             slt        s11, s9, s10
                  csrrc      gp, 0x340, t2
                  slli       t0, gp, 8
                  sltiu      s10, s8, -916
                  slti       s7, a2, 1002
3229:             srai       t5, s10, 17
                  and        t4, t6, s4
                  .4byte 0x00100073 # ebreak
                  c.add      s3, t1
                  srl        s10, a2, s9
                  or         s4, a2, s7
                  sra        t3, gp, a2
                  slt        tp, tp, a7
                  csrrs      t2, 0x340, tp
                  c.addi16sp sp, 32
                  srl        s4, a7, a5
                  and        a7, a6, s6
                  csrrs      zero, 0x340, s7
                  c.srli     s1, 21
                  c.and      s1, s0
                  csrrs      t0, 0x340, sp
                  sltu       a3, s7, s6
                  bge        s7, t1, 3261f
                  sll        s4, t3, s9
                  slt        a7, s5, ra
                  csrrwi     t4, 0x340, 14
                  bgeu       s0, s7, 3266f
                  c.srli     a5, 3
                  c.addi     s7, 30
                  sra        a7, sp, s6
                  srli       s1, tp, 1
                  mulhsu     s4, t6, s5
                  fence
                  add        s3, t6, s5
                  csrrci     t5, 0x340, 23
                  sltiu      t5, t3, -642
                  xori       t1, t5, -918
3261:             c.addi16sp sp, 176
                  c.sub      a3, a1
                  bne        zero, sp, 3280f
                  csrrsi     tp, 0x340, 17
                  c.sub      a3, a0
3266:             c.li       a7, -1
                  c.srli     a3, 5
                  mulhu      s8, a3, s6
                  ori        s8, a4, 954
                  mulhu      s10, sp, tp
                  sll        sp, zero, s2
                  csrrw      tp, 0x340, gp
                  c.addi     sp, 11
                  c.addi     gp, 29
                  la         sp, region_3+417 #start riscv_load_store_rand_instr_stream_1
                  c.xor      a3, a2
                  lhu        a3, -1(sp)
                  c.sub      a3, a2
                  lb         s11, 26(sp)
                  c.nop
                  lb         t4, -13(sp)
                  lhu        zero, -55(sp)
                  and        t0, s1, t4
                  sll        a7, gp, s11
                  slti       s6, t1, -532
                  c.srai     a2, 5
                  lbu        gp, -18(sp)
                  lbu        t0, -16(sp)
                  srli       s4, t5, 15
                  mulh       t3, ra, t4
                  auipc      s4, 131726
                  nop
                  lw         s4, 3(sp)
                  and        a3, t5, a6
                  lb         s5, 52(sp)
                  lb         a2, 42(sp)
                  sb         t3, 52(sp)
                  sb         s4, 34(sp)
                  slti       t2, a4, 533
                  srai       t2, t3, 9
                  c.sub      s0, s0
                  mulhu      s0, zero, s5
                  lb         a2, -55(sp)
                  srai       s9, s9, 13
                  lbu        t0, 24(sp)
                  lbu        a6, 48(sp)
                  slli       a5, t1, 17
                  divu       gp, t2, a1
                  divu       gp, s8, t6
                  lbu        zero, 4(sp)
                  sub        s6, s2, a3
                  sb         s8, 38(sp)
                  lh         s7, 43(sp)
                  lb         s2, 44(sp)
                  lb         s5, 28(sp)
                  divu       s6, sp, s6
                  sb         t2, -48(sp)
                  and        a3, gp, t6
                  sb         s10, -22(sp)
                  nop
                  sb         a4, 19(sp)
                  ori        s4, s0, 264
                  csrrs      s9, 0x340, a2
                  lbu        a6, 57(sp) #end riscv_load_store_rand_instr_stream_1
                  bltu       tp, s7, 3285f
                  sra        a5, a3, s2
                  blt        s9, t4, 3281f
                  mulh       a6, gp, a1
                  or         s9, a1, a4
3280:             c.slli     t1, 3
3281:             c.srli     s0, 10
                  c.srli     a2, 7
                  slt        tp, a4, ra
                  c.or       a1, a5
3285:             ori        s11, s0, 326
                  remu       s6, t5, t5
                  bltu       gp, s10, 3292f
                  c.srli     s0, 24
                  bgeu       s6, ra, 3294f
                  c.andi     a5, 26
                  sub        s6, a5, sp
3292:             xor        s7, s3, a7
                  c.add      a2, s0
3294:             sll        tp, t3, s8
                  c.li       s10, 31
                  slti       s4, t3, -530
                  sra        s3, t4, s3
                  c.nop
                  rem        s4, a4, a3
                  c.xor      a3, a3
                  c.xor      a2, a3
                  rem        s4, s11, s7
                  sltu       t5, ra, s6
                  c.mv       ra, a3
                  c.addi     s11, 1
                  bltu       s5, a7, 3312f
                  c.bnez     a5, 3327f
                  xor        s2, s2, a1
                  c.mv       t3, a7
                  nop
                  div        ra, t5, a5
3312:             xor        t1, t0, a5
                  mul        a1, s3, t4
                  sltiu      s10, s1, 273
                  csrrc      t1, 0x340, a6
                  c.addi16sp sp, 384
                  c.lui      a6, 11
                  xori       t1, s11, -863
                  c.bnez     a1, 3334f
                  csrrsi     sp, 0x340, 9
                  rem        s6, s9, tp
                  csrrwi     a7, 0x340, 10
                  c.add      ra, tp
                  auipc      s5, 236377
                  c.ebreak;c.nop;
                  ori        gp, s0, -521
3327:             bge        a7, t2, 3346f
                  sub        a7, t0, a6
                  c.or       a5, a1
                  auipc      gp, 809251
                  sub        t2, s7, s7
                  bge        t5, s0, 3339f
                  xor        s1, tp, t5
3334:             beq        s10, s7, 3340f
                  blt        a2, t3, 3340f
                  csrrc      s7, 0x340, t4
                  c.andi     a5, -1
                  c.srli     s0, 4
3339:             nop
3340:             sll        s7, t0, t2
                  c.bnez     s1, 3354f
                  lui        s5, 981907
                  srai       gp, s8, 30
                  mulhsu     a1, s9, zero
                  c.beqz     s1, 3362f
3346:             c.lui      s2, 16
                  mulhsu     s5, a0, s4
                  add        s9, t6, a2
                  nop
                  c.mv       t3, s6
                  sltiu      gp, s10, -643
                  bgeu       ra, s3, 3361f
                  csrrw      s1, 0x340, a7
3354:             c.li       s2, -1
                  sltu       a1, s10, a1
                  c.ebreak;c.nop;
                  sltiu      s2, a1, 152
                  .4byte 0x00100073 # ebreak
                  mulhu      t4, s6, a7
                  rem        s5, ra, t6
3361:             bge        s8, t3, 3381f
3362:             remu       zero, a7, s7
                  c.lui      a6, 10
                  mul        a7, ra, sp
                  add        gp, s2, s1
                  ori        zero, s5, -945
                  srai       s10, s3, 1
                  remu       s10, t4, a3
                  c.or       s0, a2
                  slli       a3, s3, 11
                  ori        a2, t6, 577
                  fence
                  c.srai     a5, 1
                  sra        s1, s4, a1
                  srl        a3, s5, ra
                  slt        t0, a4, t2
                  sltu       s6, s6, a0
                  slli       zero, a1, 29
                  bne        a6, s8, 3384f
                  c.srli     a2, 21
3381:             c.slli     t2, 8
                  c.nop
                  c.mv       sp, s3
3384:             slt        s3, a6, s6
                  sltu       s1, a6, tp
                  bne        a2, a1, 3387f
3387:             csrrsi     t5, 0x340, 14
                  fence.i
                  div        s1, s10, a3
                  c.slli     a1, 4
                  srl        s3, a4, a5
                  auipc      a2, 492271
                  csrrw      sp, 0x340, t4
                  addi       a7, t6, -529
                  ori        s8, s9, -469
                  sll        t4, gp, s2
                  fence.i
                  slti       a5, s6, 405
                  bltu       a1, a7, 3418f
                  csrrs      a6, 0x340, a4
                  rem        t1, a6, s5
                  csrrs      s10, 0x340, a4
                  c.slli     s8, 7
                  add        s1, zero, s5
                  slli       s0, s3, 31
                  sltiu      ra, s7, 878
                  c.ebreak;c.nop;
                  srai       t1, s9, 16
                  csrrw      s1, 0x340, a4
                  c.ebreak;c.nop;
                  c.beqz     a5, 3420f
                  bgeu       a6, t2, 3417f
                  and        t0, s5, a3
                  auipc      t3, 996133
                  c.addi     t0, 16
                  slti       t4, a1, 741
3417:             sub        t0, a2, t3
3418:             blt        s11, zero, 3423f
                  mul        t5, a0, s6
3420:             sub        s10, a3, t6
                  csrrc      t2, 0x340, t1
                  csrrsi     s1, 0x340, 25
3423:             c.add      a5, a2
                  srai       ra, a2, 3
                  csrrci     s9, 0x340, 24
                  c.and      s0, s1
                  c.beqz     a5, 3437f
                  add        s7, a6, ra
                  c.lui      s11, 9
                  c.sub      s1, a2
                  or         a6, t3, a5
                  c.slli     a6, 14
                  .4byte 0x00100073 # ebreak
                  c.add      s11, t6
                  c.sub      a1, a4
                  c.srli     s1, 8
3437:             csrrs      a6, 0x340, t6
                  mulhu      s7, s10, s3
                  c.ebreak;c.nop;
                  c.nop
                  c.addi     s10, -1
                  mulh       zero, s2, sp
                  auipc      s5, 848871
                  c.slli     s8, 30
                  rem        a3, t4, a4
                  c.add      t3, a0
                  csrrs      s4, 0x340, s10
                  c.add      a3, s2
                  csrrs      t0, 0x340, t2
                  srl        a5, t4, a1
                  mulhu      s11, ra, ra
                  c.and      s0, a0
                  rem        a1, s3, s10
                  c.srai     a2, 2
                  rem        gp, s11, s0
                  srl        s7, s3, s4
                  or         s9, ra, s5
                  sra        s10, a7, s8
                  bne        s9, s7, 3463f
                  mulhu      t4, t6, s4
                  c.and      s1, a4
                  c.nop
3463:             sll        s2, s8, s9
                  c.slli     s3, 8
                  csrrwi     t1, 0x340, 19
                  sub        a3, t0, s0
                  csrrc      t0, 0x340, a6
                  div        tp, t5, t6
                  sub        t3, s3, s4
                  mulh       a5, tp, s9
                  mulh       t2, ra, a6
                  bge        ra, a5, 3488f
                  c.beqz     a3, 3475f
                  and        t2, zero, s1
3475:             .4byte 0x00100073 # ebreak
                  remu       s4, s11, s8
                  blt        s7, t2, 3495f
                  csrrsi     t0, 0x340, 6
                  csrrw      tp, 0x340, s6
                  bge        s2, a2, 3494f
                  fence
                  csrrw      a7, 0x340, t5
                  fence.i
                  divu       s9, s5, s4
                  xori       s3, s5, -167
                  mulh       s3, t4, a1
                  srl        a5, sp, t4
3488:             sra        t4, a0, s1
                  mulhsu     t2, s9, a3
                  bltu       a7, t5, 3504f
                  c.slli     tp, 4
                  csrrs      s5, 0x340, s4
                  bltu       zero, s2, 3502f
3494:             xori       t2, zero, -49
3495:             c.andi     a2, -1
                  slti       s11, tp, -827
                  andi       a5, gp, 815
                  srai       a2, a0, 15
                  mulh       a6, s5, a1
                  div        s11, s9, t5
                  mulhu      s4, a4, a1
3502:             mulhu      s3, s1, s9
                  c.xor      s1, a4
3504:             auipc      zero, 308277
                  lui        s5, 684759
                  bltu       a7, a0, 3512f
                  xori       s2, t6, -619
                  csrrs      s0, 0x340, t3
                  slt        t5, a7, t4
                  srai       s8, t1, 18
                  c.slli     ra, 10
3512:             ori        zero, t2, -190
                  c.beqz     s1, 3532f
                  divu       t2, s10, zero
                  div        s4, t3, s9
                  c.mv       a6, s2
                  bne        s6, s9, 3527f
                  mulhsu     a6, t1, a1
                  nop
                  c.bnez     a5, 3535f
                  addi       s10, ra, 488
                  c.andi     s0, 20
                  xor        ra, a4, a7
                  csrrs      zero, 0x340, sp
                  c.add      gp, a3
                  c.li       s10, -1
3527:             add        s3, t5, a0
                  srai       s0, a2, 3
                  c.li       a3, -1
                  bgeu       t3, s8, 3534f
                  c.bnez     s1, 3546f
3532:             srai       a6, a6, 26
                  c.li       s9, 28
3534:             lui        s4, 237811
3535:             mulh       t1, s3, s10
                  divu       s10, s1, ra
                  beq        ra, s1, 3556f
                  remu       s1, sp, t0
                  srai       gp, t0, 17
                  ori        t3, s0, 316
                  c.srai     s1, 28
                  mulhu      s4, tp, t0
                  c.bnez     a1, 3549f
                  srli       sp, s0, 0
                  c.li       s8, -1
3546:             beq        s2, s7, 3559f
                  sub        t2, a0, tp
                  csrrw      a1, 0x340, tp
3549:             csrrs      a5, 0x340, s1
                  mulh       t4, a6, t5
                  sltiu      t2, t4, 943
                  bltu       a4, a6, 3561f
                  add        s7, t1, s0
                  sltiu      t5, s6, 88
                  sub        s1, a0, s0
3556:             addi       s2, a0, 706
                  sltu       t0, s7, a5
                  sra        s10, zero, gp
3559:             slt        sp, sp, s7
                  c.ebreak;c.nop;
3561:             bltu       s3, a2, 3568f
                  csrrci     s2, 0x340, 20
                  auipc      t3, 632556
                  c.ebreak;c.nop;
                  c.li       s8, 23
                  .4byte 0x00100073 # ebreak
                  c.or       a2, a1
3568:             sra        a2, t3, t4
                  c.xor      a5, a2
                  csrrsi     a6, 0x340, 2
                  c.and      a1, a4
                  slli       t3, gp, 13
                  or         s4, sp, a1
                  and        s6, a5, t0
                  csrrci     s10, 0x340, 18
                  csrrci     s11, 0x340, 7
                  c.slli     t5, 7
                  c.or       s0, a3
                  mulhu      a5, t0, s5
                  slt        t4, t6, s1
                  c.li       s9, -1
                  ori        tp, s10, -119
                  csrrc      zero, 0x340, t4
                  beq        a5, t2, 3600f
                  c.lui      a3, 12
                  c.addi     s2, -1
                  csrrc      s0, 0x340, a6
                  c.bnez     a1, 3602f
                  remu       sp, zero, t1
                  nop
                  csrrci     t5, 0x340, 26
                  xori       ra, zero, 630
                  beq        s3, s9, 3597f
                  c.slli     t5, 21
                  c.bnez     a3, 3614f
                  csrrsi     a3, 0x340, 6
3597:             slti       sp, sp, 354
                  slli       s1, gp, 9
                  mulhu      s5, a2, a6
3600:             csrrw      a5, 0x340, s6
                  xori       s3, s3, -572
3602:             addi       t1, s0, 755
                  blt        t0, t3, 3608f
                  c.srai     s1, 30
                  srli       a6, s1, 29
                  c.and      a1, a5
                  slli       s8, sp, 4
3608:             c.or       a2, s1
                  mulhsu     a7, gp, s1
                  c.ebreak;c.nop;
                  bgeu       s6, t0, 3631f
                  c.srai     s1, 14
                  bne        a2, a4, 3632f
3614:             auipc      zero, 655924
                  div        s4, s8, a6
                  blt        ra, s6, 3620f
                  c.srli     a5, 19
                  csrrw      t3, 0x340, ra
                  beq        s0, s2, 3628f
3620:             srli       a2, s5, 2
                  c.ebreak;c.nop;
                  blt        a2, t6, 3640f
                  c.srli     a3, 6
                  c.srai     a1, 11
                  or         a3, a0, a0
                  bgeu       sp, s3, 3636f
                  lui        a5, 637373
3628:             slt        s2, s1, a5
                  blt        s6, sp, 3634f
                  c.li       a1, 15
3631:             csrrw      t1, 0x340, a0
3632:             sltu       sp, t6, t5
                  bne        t4, a5, 3643f
3634:             mulhsu     s10, s2, s11
                  sra        tp, s1, zero
3636:             c.or       a5, a0
                  sltiu      a6, s4, 158
                  c.slli     t2, 5
                  xori       s3, s2, 502
3640:             c.lui      tp, 7
                  andi       s6, s5, -57
                  mulh       zero, a1, t4
3643:             fence.i
                  csrrci     a1, 0x340, 1
                  c.nop
                  c.sub      a5, s0
                  bge        zero, a4, 3662f
                  mulhsu     gp, s1, a0
                  bge        s0, sp, 3664f
                  csrrc      t4, 0x340, s5
                  srl        s5, s11, a2
                  c.and      s0, a2
                  c.ebreak;c.nop;
                  c.nop
                  xor        gp, gp, t4
                  csrrci     s8, 0x340, 24
                  mulhu      tp, a6, t2
                  mulh       t5, zero, s7
                  fence.i
                  andi       t2, a4, -18
                  bge        t3, sp, 3666f
3662:             mulh       a7, t6, a5
                  and        t5, s0, a3
3664:             c.xor      s0, a4
                  addi       s9, t0, 548
3666:             slt        t0, a7, sp
                  and        sp, t3, gp
                  addi       t1, s10, 196
                  bge        s0, t1, 3686f
                  c.srli     a1, 28
                  c.add      s6, gp
                  or         s3, s4, s11
                  remu       a2, s4, s9
                  beq        t1, s5, 3683f
                  nop
                  addi       sp, a5, -244
                  c.addi16sp sp, 144
                  c.and      s0, s0
                  csrrci     t1, 0x340, 10
                  xor        a5, s1, a2
                  xori       s5, s7, 270
                  mulh       a5, t3, t0
3683:             sub        s2, gp, s11
                  div        tp, t5, s1
                  c.slli     t1, 20
3686:             c.mv       a3, s4
                  mulhu      t2, s8, t2
                  andi       s9, a5, 55
                  sra        a1, s1, tp
                  xori       s11, a7, 126
                  andi       zero, s1, -326
                  blt        t6, a7, 3707f
                  c.srai     s1, 25
                  mulhsu     a2, s6, t4
                  c.mv       s1, s6
                  andi       s3, t4, 380
                  addi       s2, tp, 616
                  sltu       s2, a1, sp
                  c.and      a2, a3
                  sll        s8, a7, a3
                  c.lui      a6, 11
                  slti       a6, s5, -910
                  sltu       s5, s8, s11
                  blt        a7, tp, 3706f
                  csrrwi     t0, 0x340, 16
3706:             addi       s6, s10, -252
3707:             srl        s2, s0, s10
                  sll        tp, s9, ra
                  add        s9, s1, s0
                  ori        s9, t1, 561
                  mul        t3, s6, t0
                  xor        s6, s8, s1
                  .4byte 0x00100073 # ebreak
                  ori        a7, a2, -669
                  beq        gp, a5, 3716f
3716:             c.lui      s9, 19
                  blt        ra, a7, 3722f
                  slti       t5, t3, -223
                  mulhu      t4, s7, t2
                  csrrc      s0, 0x340, s6
                  c.or       a3, s0
3722:             bltu       a6, sp, 3736f
                  auipc      s7, 735008
                  fence
                  csrrci     s3, 0x340, 15
                  srai       s3, s7, 24
                  fence.i
                  rem        zero, s11, s10
                  mulhu      t5, s3, t1
                  c.lui      s3, 22
                  mulh       zero, s0, t4
                  c.ebreak;c.nop;
                  ori        s7, t4, 689
                  c.andi     a3, 19
                  srli       ra, zero, 5
3736:             .4byte 0x00100073 # ebreak
                  fence.i
                  mul        ra, a3, t1
                  c.bnez     s0, 3759f
                  csrrwi     a3, 0x340, 8
                  c.nop
                  c.and      a5, a1
                  csrrc      s9, 0x340, s9
                  csrrc      t3, 0x340, zero
                  mulhu      a5, a1, t2
                  bge        a1, s10, 3752f
                  nop
                  c.andi     a2, -1
                  srl        s7, a2, t6
                  csrrwi     zero, 0x340, 4
                  remu       s7, zero, s8
3752:             rem        t2, t4, s1
                  mulh       t3, a3, a4
                  csrrwi     a1, 0x340, 30
                  and        t0, t6, s4
                  c.lui      a6, 14
                  c.andi     a1, -1
                  slt        t4, s11, s4
3759:             or         tp, t3, s0
                  fence.i
                  c.and      a2, a1
                  div        t0, a3, a0
                  c.mv       s3, a5
                  sltiu      t2, s6, 987
                  c.beqz     a2, 3778f
                  c.bnez     a2, 3775f
                  bltu       zero, s4, 3786f
                  blt        s4, a1, 3772f
                  csrrwi     s11, 0x340, 17
                  c.beqz     s1, 3777f
                  csrrw      a6, 0x340, s6
3772:             sra        s2, s9, t5
                  c.xor      a1, a0
                  slt        a6, a0, s9
3775:             slli       a3, gp, 31
                  rem        t4, a7, s6
3777:             c.or       s0, a1
3778:             sltiu      s9, s11, 412
                  beq        a3, a6, 3784f
                  c.nop
                  bgeu       s4, a1, 3791f
                  fence.i
                  sltu       a5, tp, t0
3784:             csrrci     s8, 0x340, 30
                  csrrwi     t2, 0x340, 20
3786:             .4byte 0x00100073 # ebreak
                  c.srli     a5, 1
                  sub        s11, a0, t1
                  slt        a7, tp, s9
                  mulhsu     s6, s10, ra
3791:             and        a7, a7, a3
                  auipc      a1, 624143
                  add        s4, sp, sp
                  c.slli     a2, 8
                  srai       s10, t0, 14
                  slli       a3, s11, 29
                  bltu       t2, t6, 3802f
                  remu       s10, gp, tp
                  fence
                  c.addi16sp sp, 480
                  c.lui      s6, 31
3802:             mul        t0, t5, s1
                  slti       t1, gp, 540
                  slli       t5, s10, 5
                  c.srai     a2, 23
                  mul        s8, s6, s7
                  slli       s2, s9, 18
                  andi       gp, a7, -732
                  slli       t0, a7, 20
                  csrrw      tp, 0x340, t1
                  c.lui      s9, 4
                  add        a3, a6, t0
                  bltu       t5, a6, 3818f
                  c.beqz     a2, 3816f
                  srl        gp, s2, zero
3816:             xori       a1, a2, -916
                  c.add      s8, t1
3818:             fence.i
                  csrrwi     tp, 0x340, 9
                  mul        a5, s10, s0
                  csrrs      t0, 0x340, a5
                  mulhsu     s8, t1, a5
                  bgeu       ra, ra, 3838f
                  add        s3, s7, s7
                  c.and      a5, a2
                  bltu       a0, s5, 3835f
                  c.and      a3, a3
                  mulhsu     t1, a7, sp
                  c.nop
                  addi       ra, s8, 588
                  bge        s2, s9, 3848f
                  divu       s2, t1, sp
                  csrrci     s8, 0x340, 31
                  c.ebreak;c.nop;
3835:             nop
                  srai       s1, a5, 27
                  div        a3, a3, s2
3838:             sra        gp, t3, tp
                  bne        a4, t3, 3845f
                  c.addi16sp sp, 256
                  mulh       a2, a3, a2
                  bgeu       t2, ra, 3860f
                  fence.i
                  divu       t0, s8, t1
3845:             blt        a5, s5, 3865f
                  c.or       a5, a3
                  remu       t5, t0, a4
3848:             csrrsi     a3, 0x340, 23
                  bltu       s5, a0, 3853f
                  c.bnez     a5, 3859f
                  c.and      a3, a3
                  la         a7, region_3+292 #start riscv_hazard_instr_stream_8
                  slli       t1, a2, 11
                  mul        a2, s3, a2
                  srli       s3, s11, 11
                  remu       t1, zero, zero
                  srli       a2, s3, 18
                  divu       s11, s11, s3
                  lh         s3, -14(a7)
                  sb         s11, -15(a7)
                  csrrs      zero, 0x340, s11
                  sh         a2, -16(a7)
                  sb         s3, 7(a7)
                  slti       s3, s11, 993
                  srai       s11, s3, 2
                  slli       a3, t1, 18
                  c.srli     a3, 7
                  sb         a2, 12(a7)
                  srli       s3, s3, 12
                  sb         zero, 13(a7)
                  csrrc      s3, 0x340, zero
                  sb         zero, 3(a7)
                  lbu        a2, -11(a7)
                  c.addi     a3, -1
                  c.sub      a3, a2
                  lb         a2, -11(a7)
                  lbu        s3, -16(a7)
                  lhu        s3, -10(a7)
                  sb         zero, -5(a7)
                  sb         zero, 15(a7)
                  mul        zero, a3, a3
                  slt        s11, s3, s3
                  xor        zero, zero, zero
                  mulhu      s3, a2, s3
                  sb         t1, -1(a7)
                  lbu        a2, -5(a7)
                  lbu        s3, -3(a7)
                  lb         a3, 3(a7)
                  sw         s3, 12(a7)
                  mulhu      s11, t1, a3
                  csrrs      t1, 0x340, a2
                  sb         s11, -5(a7)
                  lb         s11, 5(a7)
                  lb         s3, -1(a7)
                  mul        s3, a3, a2
                  sh         s11, -2(a7)
                  auipc      a3, 283945
                  lb         s3, -13(a7) #end riscv_hazard_instr_stream_8
                  blt        a2, t5, 3867f
3853:             xori       ra, gp, -240
                  srai       ra, tp, 24
                  auipc      s1, 245826
                  c.and      a3, a5
                  c.slli     a6, 23
                  c.or       s1, a2
3859:             c.ebreak;c.nop;
3860:             lui        t1, 197805
                  csrrs      s5, 0x340, s1
                  mul        a2, t2, a7
                  slti       t0, a7, -969
                  mul        s8, s5, s6
3865:             sltiu      a2, zero, -921
                  c.slli     a7, 28
3867:             csrrs      s4, 0x340, s1
                  c.sub      a1, a0
                  c.slli     a1, 20
                  addi       s9, t1, 850
                  add        a1, a2, s3
                  bge        s7, gp, 3877f
                  xori       a6, s6, -1019
                  and        s6, t1, t6
                  c.andi     a1, -1
                  sll        s1, t2, t2
3877:             mulhsu     s7, s4, a0
                  csrrs      s1, 0x340, s3
                  sltu       t3, s5, s11
                  c.srai     s1, 5
                  or         a3, s8, a6
                  c.beqz     a3, 3902f
                  c.addi     t2, 23
                  srli       a1, zero, 11
                  mul        a5, a6, s7
                  csrrsi     s4, 0x340, 29
                  mul        s2, s2, sp
                  mulhsu     ra, s0, s7
                  srli       s8, sp, 20
                  c.ebreak;c.nop;
                  c.mv       t3, s10
                  add        s10, a0, t2
                  mulhu      s2, sp, t3
                  blt        s0, t2, 3908f
                  srli       tp, t1, 9
                  mulhu      s0, s6, a5
                  sll        gp, s6, s9
                  .4byte 0x00100073 # ebreak
                  blt        a2, sp, 3914f
                  c.or       a5, a2
                  c.andi     a2, -1
3902:             rem        s3, a3, s2
                  xor        zero, t4, a2
                  srl        s0, t2, a4
                  c.andi     s0, 26
                  c.mv       ra, a5
                  xor        s6, t6, s7
3908:             addi       s9, a2, 579
                  xori       t0, t0, 290
                  c.srli     a1, 9
                  c.slli     s1, 24
                  c.andi     a2, 14
                  c.and      a2, a2
3914:             c.srai     s1, 11
                  c.and      a3, a3
                  c.andi     a3, -1
                  csrrw      a7, 0x340, t2
                  c.beqz     a1, 3924f
                  c.lui      a6, 20
                  c.addi16sp sp, 272
                  remu       sp, a7, s3
                  srl        t4, t5, gp
                  nop
3924:             slti       zero, s6, -30
                  sll        a2, ra, a4
                  div        s6, t1, s8
                  c.li       s9, -1
                  c.and      s0, s0
                  sub        gp, s0, s6
                  csrrc      s8, 0x340, t4
                  mulh       a5, t6, sp
                  c.addi16sp sp, 352
                  c.andi     a2, 11
                  c.addi     tp, 17
                  auipc      t2, 847593
                  csrrsi     t1, 0x340, 3
                  rem        a5, a7, gp
                  rem        t1, ra, s1
                  sra        s10, s7, t4
                  mul        zero, a1, t5
                  mul        s8, s2, t0
                  c.slli     s4, 23
                  srl        s9, s2, s1
                  sltu       s11, a3, s4
                  c.srai     a2, 14
                  nop
                  c.addi16sp sp, 448
                  mulhsu     t2, s8, t4
                  mulhu      s8, s4, t0
                  addi       a3, tp, -41
                  slti       tp, a3, 748
                  c.srli     a2, 23
                  remu       s8, gp, s2
                  andi       s6, s3, 790
                  csrrsi     tp, 0x340, 22
                  auipc      tp, 697095
                  sub        s3, a1, a5
                  sltu       s5, sp, s0
                  c.lui      t5, 30
                  div        a3, s6, ra
                  bltu       s7, s4, 3971f
                  c.add      a3, t0
                  sltiu      s8, s1, 629
                  bne        s9, a2, 3980f
                  c.addi16sp sp, -16
                  fence.i
                  addi       a3, a1, 120
                  ori        sp, t6, 652
                  sra        s3, s4, t4
                  srl        s6, ra, a1
3971:             c.srli     s0, 5
                  c.mv       a1, sp
                  c.and      a5, s0
                  csrrci     t4, 0x340, 5
                  c.ebreak;c.nop;
                  c.addi     s7, -1
                  c.bnez     a5, 3996f
                  lui        s10, 12586
                  c.li       a7, 5
3980:             divu       t5, a4, s10
                  c.andi     a5, 15
                  c.bnez     a3, 4001f
                  c.or       s1, a2
                  mulh       gp, a4, s7
                  c.addi16sp sp, -16
                  remu       s7, s0, a2
                  csrrci     s0, 0x340, 24
                  sltu       s7, s11, a1
                  srli       s9, tp, 7
                  sub        s11, ra, a2
                  div        sp, s7, t2
                  csrrsi     ra, 0x340, 22
                  sra        s9, s6, s8
                  c.lui      t4, 5
                  fence.i
3996:             sltu       a5, a1, t2
                  remu       t4, t3, a7
                  auipc      t4, 297423
                  div        a7, s1, a1
                  mul        a3, s8, a5
4001:             mul        a2, t5, s3
                  c.add      t4, t1
                  c.lui      a1, 3
                  c.sub      a3, s0
                  bgeu       s2, t4, 4006f
4006:             c.srli     a3, 19
                  bne        tp, zero, 4021f
                  remu       s9, s3, sp
                  c.or       a1, a3
                  c.xor      a2, s1
                  c.bnez     s1, 4020f
                  c.andi     s0, 23
                  sub        s5, t5, t0
                  addi       s4, a1, -150
                  srli       s1, s0, 13
                  c.ebreak;c.nop;
                  srl        s10, sp, s3
                  andi       s3, t4, 366
                  c.addi16sp sp, -16
4020:             srl        a1, s11, t6
4021:             csrrs      s0, 0x340, gp
                  bne        a3, tp, 4028f
                  c.ebreak;c.nop;
                  c.srai     a1, 18
                  bltu       s9, a6, 4040f
                  sltiu      t5, t4, 361
                  blt        t1, a0, 4028f
4028:             srai       t0, t0, 20
                  .4byte 0x00100073 # ebreak
                  c.bnez     a3, 4047f
                  csrrc      zero, 0x340, a6
                  csrrci     s9, 0x340, 14
                  .4byte 0x00100073 # ebreak
                  c.ebreak;c.nop;
                  beq        ra, t0, 4049f
                  csrrw      t1, 0x340, t1
                  c.bnez     a1, 4053f
                  c.ebreak;c.nop;
                  remu       s7, t1, s4
4040:             slli       s9, t5, 6
                  sub        s5, t6, s10
                  c.nop
                  c.srli     a2, 25
                  c.add      sp, a7
                  beq        s11, s2, 4055f
                  srl        s5, s9, s0
4047:             c.bnez     a5, 4067f
                  c.slli     s8, 16
4049:             sltu       a5, s1, a4
                  srli       t0, t6, 19
                  or         a1, t4, s11
                  csrrw      s9, 0x340, t2
4053:             csrrci     s8, 0x340, 13
                  c.mv       sp, a6
4055:             or         tp, s2, s0
                  csrrw      zero, 0x340, t4
                  .4byte 0x00100073 # ebreak
                  c.mv       t0, sp
                  c.beqz     s0, 4063f
                  csrrwi     t2, 0x340, 17
                  sltu       t2, t1, s7
                  slti       s2, t2, 734
4063:             sub        t0, s10, gp
                  c.slli     s4, 10
                  csrrc      a2, 0x340, s4
                  sra        a7, s10, s3
4067:             xori       s11, a3, 631
                  csrrsi     sp, 0x340, 21
                  c.addi16sp sp, 192
                  xori       s7, s9, 569
                  fence
                  sra        s7, s1, s9
                  rem        s1, a5, a6
                  bltu       s10, t4, 4094f
                  fence.i
                  ori        s0, a3, 211
                  fence.i
                  nop
                  bltu       s8, a0, 4092f
                  div        s4, s0, ra
                  c.addi     t2, 19
                  sltu       s7, zero, t2
                  csrrs      sp, 0x340, s0
                  csrrc      a2, 0x340, t1
                  csrrc      a3, 0x340, s4
                  or         s3, s0, s1
                  xor        s7, s0, a5
                  c.slli     s10, 3
                  .4byte 0x00100073 # ebreak
                  c.srai     s1, 14
                  c.and      s0, a2
4092:             c.addi16sp sp, -16
                  fence
4094:             c.srli     a3, 16
                  c.add      s9, s6
                  slt        s3, s11, t4
                  c.ebreak;c.nop;
                  c.slli     a7, 14
                  la         s8, region_1+10349 #start load_store_instr_stream_0
                  sb         s8, 53(s8)
                  sh         s7, 15(s8)
                  la         t5, region_1+11934 #start load_store_instr_stream_1
                  lb         gp, 0(s8)
                  lb         a1, 62(s8)
                  sh         a2, -5(s8)
                  lbu        a5, -3(t5)
                  lbu        s5, -1(t5)
                  lb         s7, -56(s8)
                  lhu        tp, -12(t5)
                  sb         t6, 52(s8)
                  lb         a7, 9(t5)
                  lbu        s7, 13(t5)
                  lh         t0, -12(t5) #end load_store_instr_stream_1
                  lb         t0, 20(s8)
                  lbu        s6, 52(s8) #end load_store_instr_stream_0
                  rem        s2, sp, s1
                  lui        gp, 548288
                  ori        s3, a7, -767
                  remu       sp, s11, s7
                  div        s3, t5, s3
                  bltu       tp, ra, 4108f
                  c.addi16sp sp, -16
                  fence.i
                  csrrw      s7, 0x340, a4
4108:             sll        a7, s5, s10
                  xori       ra, s3, 592
                  c.andi     s0, -1
                  c.sub      a1, s0
                  c.bnez     a1, 4117f
                  c.and      s1, a4
                  c.or       a2, s1
                  c.bnez     a5, 4129f
                  c.ebreak;c.nop;
4117:             srl        a5, a1, s4
                  csrrc      s2, 0x340, t1
                  sltiu      a3, ra, -85
                  bltu       t2, s6, 4139f
                  remu       a5, a4, a7
                  c.or       s1, a5
                  lui        s1, 657401
                  mul        s8, s7, t4
                  csrrci     s7, 0x340, 28
                  mul        s10, a4, t1
                  sltiu      a1, a4, 236
                  c.andi     a1, 29
4129:             csrrwi     a1, 0x340, 23
                  mulhu      zero, t5, s7
                  c.nop
                  bge        a7, a6, 4137f
                  c.addi16sp sp, 192
                  beq        s1, s9, 4143f
                  andi       a2, t5, 865
                  csrrs      s10, 0x340, t6
4137:             srl        s11, s6, s5
                  xori       a1, t3, 693
4139:             c.slli     a3, 14
                  bne        s7, t1, 4158f
                  sltiu      t0, a0, -345
                  add        a5, t1, a0
4143:             c.slli     s7, 23
                  csrrc      s1, 0x340, s8
                  .4byte 0x00100073 # ebreak
                  beq        s6, s9, 4148f
                  div        s7, a4, a4
4148:             bne        t5, t3, 4163f
                  and        t5, s2, zero
                  div        a6, a5, gp
                  c.srai     a3, 2
                  csrrw      t5, 0x340, a4
                  xori       a2, t3, 348
                  addi       ra, a3, 271
                  .4byte 0x00100073 # ebreak
                  c.nop
                  c.srai     a5, 19
4158:             mul        s6, t5, a3
                  csrrs      s0, 0x340, zero
                  mulh       a3, zero, zero
                  c.srli     a3, 2
                  mulhsu     s10, a6, tp
4163:             c.li       a3, 23
                  sub        t1, s7, t1
                  slli       s4, s10, 5
                  c.addi16sp sp, 48
                  bne        a3, s6, 4186f
                  c.addi16sp sp, 368
                  div        s5, a0, s6
sub_4_28:         jal        t1, 22f
0:                c.jal      28f
1:                c.jal      12f
2:                c.j        16f
3:                c.jal      19f
4:                c.j        24f
5:                c.j        20f
6:                jal        t1, 17f
7:                jal        ra, 30f
8:                c.jal      27f
9:                c.jal      18f
10:               c.j        8b
11:               c.jal      26f
12:               c.j        29f
13:               jal        t2, 25f
14:               c.jal      2b
15:               c.jal      9b
16:               c.j        0b
17:               c.jal      7b
18:               jal        a5, 23f
19:               c.jal      21f
20:               c.j        14b
21:               c.j        15b
22:               jal        ra, 4b
23:               c.j        10b
24:               jal        t1, 11b
25:               jal        ra, 3b
26:               c.j        13b
27:               c.j        1b
28:               c.j        6b
29:               c.jal      5b
30:               c.srli     a5, 12
                  beq        s0, s10, 4179f
                  c.andi     s1, -1
                  sltiu      s1, t1, 645
                  auipc      s8, 333206
                  fence
                  blt        s0, a7, 4180f
                  div        a1, ra, s10
                  xor        t1, a2, s5
                  c.addi     a1, 1
4179:             csrrwi     s10, 0x340, 17
4180:             c.and      a5, a0
                  c.mv       t2, t1
                  nop
                  csrrsi     t1, 0x340, 24
                  slt        s0, t5, s11
                  addi       sp, a2, 96
4186:             sltu       s11, s10, s4
sub_4_30:         jal        t1, 11f
0:                c.jal      23f
1:                c.jal      18f
2:                c.j        5f
3:                c.j        4f
4:                c.jal      12f
5:                jal        ra, 6f
6:                c.j        22f
7:                c.jal      0b
8:                c.j        17f
9:                c.jal      10f
10:               c.j        7b
11:               jal        t5, 14f
12:               c.j        15f
13:               c.j        9b
14:               c.jal      20f
15:               jal        t1, 8b
16:               c.j        21f
17:               c.j        13b
18:               c.jal      19f
19:               c.jal      3b
20:               jal        ra, 2b
21:               c.j        1b
22:               c.jal      16b
23:               or         t2, t0, a3
                  slli       t3, s9, 13
                  c.mv       t2, s10
                  mulhu      s0, ra, a4
                  csrrw      s5, 0x340, tp
                  divu       a7, s11, a7
                  remu       sp, a1, tp
                  csrrwi     a3, 0x340, 21
                  c.addi16sp sp, 16
                  remu       t4, s7, t2
                  csrrw      a5, 0x340, s11
                  nop
                  mul        a5, tp, ra
                  c.srli     a5, 17
                  fence
                  bgeu       tp, sp, 4216f
                  slt        a2, a5, s4
                  sra        s2, s9, s6
                  fence
                  c.andi     s0, -1
                  la         s11, region_1+2251 #start riscv_hazard_instr_stream_14
                  c.addi     a1, 18
                  sltu       s2, s0, s2
                  lbu        s0, -154(s11)
                  sh         t3, -27(s11)
                  mul        a1, a1, s0
                  lbu        t3, 24(s11)
                  sh         s0, -53(s11)
                  srli       a1, t0, 31
                  .4byte 0x00100073 # ebreak
                  c.and      s0, a5
                  sh         t3, -83(s11)
                  c.add      t0, s2
                  lui        t0, 179427
                  addi       a5, a1, -646
                  lh         t3, -223(s11)
                  csrrwi     t0, 0x340, 21
                  divu       s2, a5, s0
                  csrrci     a5, 0x340, 13
                  sh         t0, -101(s11)
                  lbu        s2, 146(s11)
                  sltiu      s0, t3, 956
                  lbu        s0, 54(s11)
                  c.srli     a1, 8
                  sh         s0, 175(s11)
                  slti       s2, s2, -818
                  c.srli     s0, 26
                  add        t3, s2, s0
                  srl        s0, s0, a5
                  c.ebreak;c.nop;
                  lbu        t3, 27(s11)
                  lh         a5, 155(s11)
                  lb         t3, 228(s11)
                  sltu       s0, a1, s0
                  lb         t0, 210(s11)
                  xor        a1, t0, s0
                  slti       t3, s2, -725
                  slti       t3, s2, 512
                  c.srli     a1, 10
                  c.addi     a1, 6
                  divu       a5, s2, t3
                  lbu        s2, 226(s11) #end riscv_hazard_instr_stream_14
                  slt        ra, t0, t1
                  mul        s5, t1, s6
                  fence
                  srl        s10, s5, a3
                  xori       s3, t2, -931
                  c.bnez     a5, 4218f
                  sll        gp, s1, s8
                  mul        t0, a7, a0
                  c.ebreak;c.nop;
                  div        s8, s11, s11
4216:             lui        s6, 581614
                  rem        s7, a5, s7
4218:             slli       sp, t4, 1
                  c.addi     ra, -1
                  bne        s3, s6, 4239f
                  .4byte 0x00100073 # ebreak
                  c.or       s0, a2
                  bltu       s2, a7, 4233f
                  c.mv       s11, s0
                  addi       ra, t0, -806
                  c.beqz     a1, 4232f
                  mul        s0, ra, a5
                  sra        t0, t2, t5
                  sub        s5, sp, t2
                  c.add      tp, a5
                  srl        s5, a0, t6
4232:             lui        t1, 375031
4233:             sra        s8, a3, s8
                  csrrc      a6, 0x340, s5
                  sra        t1, tp, a3
                  c.or       a1, s1
                  bltu       s9, gp, 4242f
                  or         a5, a1, ra
4239:             c.addi16sp sp, 256
                  mulhsu     s2, a3, a4
                  fence.i
4242:             mulh       s11, s4, s9
                  c.sub      a2, s0
                  fence.i
                  c.or       a1, s0
                  sub        t5, ra, s1
                  mulhsu     t2, t0, s10
                  .4byte 0x00100073 # ebreak
                  div        a5, s2, s6
                  divu       s2, s10, tp
                  sra        s4, tp, s4
                  remu       a2, s5, t6
                  bltu       s4, s9, 4271f
                  divu       gp, s1, s5
                  beq        s0, t0, 4264f
                  ori        a3, s7, 833
                  c.srai     a2, 2
                  c.srai     s0, 18
                  c.srai     a1, 18
                  sra        a3, s9, s1
                  c.srai     s1, 9
                  div        t0, s4, s11
                  auipc      a5, 344164
4264:             c.add      t2, ra
                  bltu       a0, t2, 4285f
                  fence.i
                  mulhsu     s3, a2, a4
                  mul        a2, t5, t2
                  c.and      a2, s0
                  c.srai     a3, 14
4271:             csrrw      a6, 0x340, sp
                  beq        a6, s6, 4291f
                  c.xor      a2, s0
                  mulhsu     t5, s1, t0
                  ori        s9, a7, -55
                  beq        ra, sp, 4281f
                  csrrwi     sp, 0x340, 0
                  bgeu       s11, a3, 4298f
                  sltiu      s9, t4, 151
                  blt        a5, a5, 4295f
4281:             csrrwi     s0, 0x340, 5
                  c.slli     s8, 5
                  c.li       s10, -1
                  ori        tp, s9, 834
4285:             mulh       zero, s4, s3
                  c.slli     ra, 26
                  bne        a7, s11, 4291f
                  c.slli     a1, 2
                  c.sub      a5, a2
                  c.slli     tp, 19
4291:             slti       s9, s8, -473
                  srl        a3, a2, s8
                  c.bnez     a1, 4294f
4294:             c.and      a3, a4
4295:             divu       t5, s9, s5
                  auipc      sp, 501664
                  .4byte 0x00100073 # ebreak
4298:             .4byte 0x00100073 # ebreak
                  c.sub      a1, a1
                  and        t5, a5, s0
                  csrrwi     t5, 0x340, 2
                  blt        t4, t5, 4306f
                  mul        s0, s1, t5
                  c.li       s11, 0
                  c.andi     s0, -1
4306:             csrrs      s10, 0x340, s6
                  bge        s0, t2, 4316f
                  srai       s6, a5, 24
                  or         a3, a3, a0
                  c.li       s4, -1
                  xor        s4, t2, s5
                  c.sub      a3, a0
                  ori        sp, s2, -558
                  srai       s0, s10, 9
                  mulh       s4, s0, s0
4316:             c.andi     a5, -1
                  fence.i
                  slli       s6, s11, 7
                  srl        s5, sp, a1
                  srl        a7, s1, a2
                  sltu       a1, a2, ra
                  xori       sp, t2, 814
                  sub        sp, a4, t2
                  bge        s8, tp, 4337f
                  csrrw      s7, 0x340, zero
                  mulhu      a3, s3, t4
                  la         s8, region_4+3205 #start load_store_instr_stream_1
                  la         sp, region_4+1501 #start load_store_instr_stream_2
                  la         a2, region_4+379 #start load_store_instr_stream_4
                  la         s9, region_4+2921 #start load_store_instr_stream_0
                  la         s2, region_4+3832 #start load_store_instr_stream_3
                  lb         s3, -96(s9)
                  lbu        s4, 191(a2)
                  lb         a6, 4(s8)
                  lb         gp, -58(a2)
                  lw         t5, 105(a2)
                  lb         a7, 209(s9)
                  lbu        t0, 11(s2)
                  lh         s5, 1687(a2)
                  sb         a3, 6(s8)
                  lb         t0, 15(s2)
                  sb         s7, -33(s9)
                  lbu        a3, 15(s2)
                  lbu        a7, 7(s8)
                  sh         sp, -231(s9)
                  sb         t0, -161(sp)
                  sb         s3, -1(s8)
                  sb         s10, 11(s8)
                  lbu        s11, -5(s2)
                  lhu        s6, -2(s2)
                  lb         a7, 126(sp)
                  lb         s3, -230(sp)
                  lbu        a7, -204(sp)
                  lb         a7, 205(s9)
                  lb         s0, -9(s8)
                  sb         gp, 16(s8)
                  lbu        zero, 30(sp)
                  sh         a5, 727(a2)
                  lb         t3, 248(sp)
                  lbu        a1, 232(sp)
                  lbu        t0, 90(s9)
                  lbu        s3, 100(sp)
                  lb         a7, -9(s2)
                  lbu        s3, 11(s8) #end load_store_instr_stream_1
                  sb         a6, -3(s2)
                  lbu        gp, 57(sp)
                  lw         a3, -12(s2) #end load_store_instr_stream_3
                  lb         s6, 1135(a2)
                  lhu        s11, -231(a2) #end load_store_instr_stream_4
                  lb         s6, 50(sp) #end load_store_instr_stream_2
                  lw         a5, -157(s9) #end load_store_instr_stream_0
                  c.nop
                  c.add      t2, s0
                  bgeu       s5, tp, 4334f
                  divu       sp, s8, a3
                  c.slli     s1, 23
                  bne        sp, a3, 4337f
                  ori        a1, s2, 37
4334:             csrrci     s10, 0x340, 16
                  sra        sp, a3, s5
                  csrrwi     s4, 0x340, 29
4337:             andi       s7, a1, -1011
                  fence
                  sra        a3, t1, t2
                  remu       s0, s3, s10
                  csrrwi     sp, 0x340, 12
                  c.andi     a3, -1
                  c.mv       s10, s0
                  mulhsu     t3, s6, s4
                  mulh       t5, s8, t4
                  auipc      t4, 85146
                  c.bnez     a3, 4361f
                  csrrw      a7, 0x340, t5
                  mul        t4, s6, t0
                  c.and      a1, a2
                  and        s4, a3, a3
                  bgeu       s1, a3, 4358f
                  divu       a3, s5, tp
                  c.sub      a3, s0
                  slli       zero, sp, 12
                  c.li       gp, 0
                  or         s4, t3, t6
4358:             srai       t2, ra, 23
                  c.nop
                  csrrwi     t3, 0x340, 25
4361:             and        t4, s5, t0
                  auipc      t0, 803195
                  c.and      a3, a3
                  srai       s4, t6, 8
                  c.nop
                  c.srai     a5, 31
                  srl        t4, a7, a3
                  c.lui      gp, 19
                  auipc      t1, 1032615
                  c.li       s6, 15
                  c.li       t3, -1
                  ori        t3, a5, 81
                  slli       a7, a3, 7
                  ori        s3, a3, 122
                  sra        a2, a1, ra
                  mul        s3, t1, a1
                  sub        a5, a1, sp
                  add        s5, s0, a7
                  c.nop
                  srl        t5, s4, gp
                  lui        a2, 987926
                  ori        a6, s2, 95
                  c.li       t4, 19
                  c.addi16sp sp, -16
                  auipc      t4, 84912
                  c.srli     s0, 23
                  addi       s9, a0, 266
                  c.or       s1, a2
                  slti       t5, a7, 770
                  lui        a1, 121392
                  csrrwi     t1, 0x340, 11
                  bne        zero, s5, 4394f
                  remu       s9, gp, t1
4394:             csrrc      s5, 0x340, a5
                  csrrci     a2, 0x340, 3
                  beq        a1, gp, 4403f
                  bgeu       t5, zero, 4403f
                  c.nop
                  lui        t4, 855358
                  auipc      t2, 1027385
                  blt        t5, a6, 4416f
                  mulh       s4, a5, gp
4403:             c.andi     s1, 29
                  sra        a2, s7, a6
                  blt        a4, zero, 4414f
                  c.ebreak;c.nop;
                  c.sub      s1, a1
                  c.andi     s0, 24
                  csrrc      s10, 0x340, t4
                  c.addi     a1, 24
                  c.li       s11, 27
                  sub        sp, s11, t5
                  c.srai     a3, 5
4414:             csrrc      a3, 0x340, s11
                  c.slli     t4, 23
4416:             csrrwi     s3, 0x340, 4
                  nop
                  slti       s7, s11, -157
                  bltu       s5, s1, 4436f
                  c.and      a5, a2
                  xor        a1, t3, t1
                  bne        s5, s3, 4441f
                  fence
                  and        s3, a0, a2
                  slli       a5, sp, 29
                  slli       s3, s1, 31
                  mulhsu     s1, a0, s11
                  mul        s3, t0, s3
                  remu       s4, t3, s3
                  bne        t5, s4, 4440f
                  c.add      t1, t0
                  c.addi16sp sp, 320
                  remu       t0, s1, t0
                  lui        t4, 1029492
                  c.ebreak;c.nop;
4436:             c.slli     s2, 3
                  slli       s6, t5, 6
                  mul        a7, s10, s4
                  rem        a2, a7, s2
4440:             or         a7, a1, t0
4441:             and        tp, t6, s6
                  c.sub      s0, a0
                  bge        sp, s1, 4458f
                  c.beqz     a5, 4463f
                  xori       t1, s9, 134
                  add        a5, ra, s3
                  div        a5, tp, s6
                  mulh       a1, sp, t2
                  sltiu      s4, s0, -246
                  csrrc      a5, 0x340, s8
                  c.li       s4, 29
                  slli       t1, s2, 23
                  c.srli     a1, 18
                  srai       a1, s9, 0
                  c.slli     t4, 6
                  ori        s5, t4, -310
                  sub        s9, t5, s5
4458:             blt        t4, a6, 4472f
                  mulhsu     a6, t1, s0
                  c.or       a2, a3
                  c.addi16sp sp, 416
                  c.xor      a5, s0
4463:             .4byte 0x00100073 # ebreak
                  lui        s2, 875809
                  sll        gp, tp, a0
                  bgeu       a6, s1, 4482f
                  c.srli     a2, 30
                  csrrwi     s4, 0x340, 1
                  divu       t1, t2, a0
                  mulh       s6, a4, t6
                  csrrc      a5, 0x340, s4
4472:             srli       s6, s5, 13
                  remu       s1, a0, s6
                  mulh       a5, a0, s3
                  mulhu      a2, s8, s7
                  c.addi16sp sp, -16
                  c.sub      s1, a4
                  nop
                  sll        s0, t1, t3
                  c.bnez     s1, 4489f
                  divu       a2, s0, s4
4482:             c.or       s1, s0
                  mul        a7, tp, a2
                  remu       zero, t1, a7
                  fence
                  c.ebreak;c.nop;
                  csrrci     zero, 0x340, 10
                  c.or       a5, a1
4489:             slti       s8, t0, -436
                  lw         t1, 4(a4)
                  addi       a4, a4, 52
                  c.nop
                  c.mv       s1, t6
                  csrrci     s8, 0x340, 21
                  c.lui      a6, 4
                  c.addi16sp sp, 112
7544:             c.jr x6
sub_5:            bltu       zero, s9, sub_5_stack_p
                  c.andi     a1, -1
                  lui        a5, 571235
sub_5_stack_p:    addi       a4, a4, -48
                  c.srai     s0, 6
                  div        tp, t6, a0
                  sw         t1, 4(a4)
                  sra        t0, t3, t5
                  or         s8, s7, a3
                  la         sp, region_3+458 #start riscv_load_store_rand_instr_stream_0
                  sll        t5, gp, s5
                  sb         s7, -131(sp)
                  srli       s8, s8, 25
                  sll        s11, zero, s7
                  sb         a4, -188(sp)
                  c.addi     t0, -1
                  srl        s4, s0, s6
                  lbu        s11, -199(sp)
                  c.srai     a3, 13
                  lh         s11, -108(sp)
                  lb         a7, -43(sp)
                  div        a6, a3, s1
                  c.lui      t5, 17
                  sb         s4, -160(sp)
                  c.slli     a1, 25
                  sb         s2, -175(sp)
                  mul        s2, gp, t3
                  lbu        gp, 4(sp)
                  c.slli     s2, 31
                  c.or       s0, a1
                  mulh       t5, t3, s8
                  sb         t1, -166(sp)
                  sh         a0, -230(sp)
                  lw         s3, 22(sp)
                  or         s3, s1, t1
                  c.ebreak;c.nop;
                  sw         a6, -194(sp)
                  lhu        s9, -68(sp)
                  sh         s9, -82(sp)
                  slti       t2, s11, -69
                  lbu        s0, -24(sp)
                  sh         t1, -100(sp)
                  lbu        s3, -124(sp)
                  csrrsi     tp, 0x340, 30
                  sh         s6, -52(sp)
                  sltu       a5, ra, a1
                  mulhsu     gp, s6, t2
                  sb         a2, -133(sp)
                  rem        zero, s5, a7
                  lb         a3, -149(sp)
                  lb         s2, -43(sp)
                  or         s4, zero, a5
                  slti       t4, s7, -554
                  sb         t0, -45(sp)
                  lbu        s7, -31(sp)
                  srli       s10, s5, 28
                  c.li       a7, -1
                  sb         s9, -177(sp)
                  srli       s7, s10, 31
                  sb         a7, -195(sp)
                  c.nop
                  sb         a6, -142(sp) #end riscv_load_store_rand_instr_stream_0
                  la         t3, region_4+2374 #start load_store_instr_stream_3
                  la         s8, region_2+4466 #start load_store_instr_stream_0
                  la         t2, region_0+77 #start load_store_instr_stream_2
                  lh         s10, -31(t2)
                  sb         a5, 11(t2)
                  la         s7, region_3+187 #start load_store_instr_stream_1
                  sb         t3, -16(t2)
                  lb         t0, 63(s7)
                  lhu        a6, 22(t3)
                  la         s2, region_1+6485 #start load_store_instr_stream_4
                  lb         a3, -44(t2)
                  lbu        s5, 102(s7)
                  sh         gp, 40(s8)
                  lh         s4, 53(t2)
                  lb         s10, -217(t3)
                  lb         a7, -133(s7)
                  lb         sp, 181(s8)
                  lbu        s9, 20(t3)
                  sh         s1, -185(s7)
                  lh         sp, 151(s2)
                  lbu        s11, -9(t2)
                  sb         s4, -24(t2)
                  sh         s0, 10(s8)
                  sb         a0, 189(s8)
                  sb         s8, 25(s7)
                  sb         gp, 256(s7)
                  lbu        t4, -176(s7)
                  sb         t6, -69(t3)
                  lh         a6, -240(s8)
                  lbu        zero, -547(s2)
                  sb         s9, -178(s7)
                  lb         s0, 15(t2)
                  lb         a3, -125(t3)
                  sh         a4, -959(s2)
                  sb         t6, -27(s8)
                  lb         s6, 1824(s2)
                  sb         s11, 0(s7)
                  lb         s10, -128(s7) #end load_store_instr_stream_1
                  lw         gp, 50(t3)
                  sb         s7, 54(t2)
                  sw         a0, -1909(s2)
                  lb         s10, 464(s2) #end load_store_instr_stream_4
                  lbu        s10, 37(s8)
                  sb         sp, -48(t2) #end load_store_instr_stream_2
                  lhu        s4, -32(s8)
                  lhu        t0, -88(t3) #end load_store_instr_stream_3
                  lbu        s10, 85(s8) #end load_store_instr_stream_0
                  la         a3, region_0+1906 #start load_store_instr_stream_1
                  lb         sp, -1141(a3)
                  la         ra, region_0+1366 #start load_store_instr_stream_2
                  lbu        a7, 132(ra)
                  la         s2, region_0+3903 #start load_store_instr_stream_0
                  lhu        t4, 252(ra)
                  sw         s2, -106(ra)
                  lbu        t2, -21(s2)
                  sh         a3, -736(a3)
                  sb         a5, 119(ra)
                  lb         s3, 1887(a3)
                  sw         sp, 194(ra)
                  sb         t3, 543(a3)
                  sb         s9, -44(s2)
                  sb         s10, 1899(a3)
                  lb         zero, -887(a3)
                  sb         a5, -274(a3)
                  lbu        t2, -1825(a3)
                  lbu        a5, -43(s2)
                  sb         a1, -55(s2)
                  sb         a3, 86(ra) #end load_store_instr_stream_2
                  lb         tp, 1771(a3) #end load_store_instr_stream_1
                  lb         s5, -10(s2) #end load_store_instr_stream_0
sub_5_1:          jal        t1, 20f
0:                c.jal      16f
1:                jal        t1, 14f
2:                c.jal      18f
3:                c.j        11f
4:                jal        ra, 9f
5:                c.j        7f
6:                c.j        17f
7:                c.jal      28f
8:                c.j        6b
9:                c.j        13f
10:               c.j        12f
11:               c.j        27f
12:               c.jal      24f
13:               jal        t1, 23f
14:               c.j        21f
15:               c.j        22f
16:               jal        sp, 3b
17:               jal        t1, 1b
18:               c.jal      0b
19:               jal        ra, 15b
20:               jal        t1, 10b
21:               c.jal      19b
22:               jal        ra, 25f
23:               c.jal      26f
24:               jal        a3, 8b
25:               c.j        4b
26:               c.j        2b
27:               c.jal      5b
28:               nop
                  c.add      t3, a1
                  divu       a5, t4, s3
                  c.addi     s9, 24
                  csrrc      s6, 0x340, t5
                  .4byte 0x00100073 # ebreak
                  sltiu      s2, a7, -380
                  andi       a5, zero, -611
                  bne        a2, t2, 14f
                  c.addi     s5, -1
                  sll        t3, gp, t4
                  bltu       tp, s3, 28f
                  srli       sp, t1, 27
                  c.bnez     a1, 14f
                  bltu       a1, tp, 24f
14:               slt        s7, a7, t5
                  c.xor      s0, s0
                  xori       s2, a3, 533
                  slt        s2, a7, a4
                  bltu       a2, s0, 32f
                  add        s10, s11, a5
                  c.nop
                  blt        ra, ra, 25f
                  bgeu       s10, t6, 23f
23:               csrrs      s7, 0x340, s1
                  la         s2, region_0+2171 #start riscv_hazard_instr_stream_0
                  xori       s4, a1, 365
                  lbu        a6, -43(s2)
                  lbu        t0, -62(s2)
                  divu       s1, s4, a1
                  andi       a7, s4, -860
                  ori        a6, a7, 408
                  c.andi     a1, -1
                  sltu       s4, s1, t0
                  lbu        t0, 44(s2)
                  lb         a1, -60(s2)
                  sb         t0, -25(s2)
                  lhu        s1, 25(s2)
                  sb         a6, 60(s2)
                  divu       s1, s1, a1
                  lb         s4, -14(s2)
                  andi       a6, a1, 967
                  lh         a7, 25(s2)
                  csrrs      a6, 0x340, s4
                  lbu        s1, -61(s2)
                  csrrwi     s4, 0x340, 7
                  c.and      s1, a1
                  c.srli     s1, 27
                  lb         a6, -3(s2)
                  slti       a6, a1, -397
                  sw         t0, -19(s2)
                  lbu        s4, -58(s2)
                  sb         a7, -24(s2)
                  c.li       s1, 6
                  andi       s1, s1, 954
                  lbu        a7, -56(s2)
                  sb         a6, 16(s2)
                  divu       t0, a6, s1
                  addi       s4, t0, 482
                  c.xor      s1, s1
                  lbu        s4, -20(s2)
                  sh         a7, 17(s2)
                  c.and      a1, a1
                  auipc      a7, 973233
                  andi       t0, s4, -125
                  lbu        a7, 2(s2)
                  c.lui      a7, 14
                  srli       a7, s1, 22
                  lhu        a6, 45(s2)
                  c.lui      s1, 17
                  csrrw      t0, 0x340, s4
                  xor        a1, s1, a6
                  lhu        a6, 7(s2)
                  sb         t0, -23(s2) #end riscv_hazard_instr_stream_0
24:               c.srli     a2, 9
25:               ori        s2, s11, 486
                  csrrs      s4, 0x340, a3
                  c.nop
28:               c.li       t2, 0
                  sub        s8, a7, t3
                  c.addi     ra, 28
                  auipc      s7, 177921
32:               csrrw      ra, 0x340, s5
                  csrrs      s0, 0x340, s2
                  c.or       s0, s1
                  fence.i
                  addi       tp, t1, 728
                  auipc      a1, 524289
                  add        t2, t6, a1
                  srl        s1, t2, s3
                  srl        t0, s2, s5
                  c.lui      s7, 17
                  csrrsi     sp, 0x340, 8
                  sll        s2, s0, t0
                  c.li       t0, -1
                  c.addi     s2, -1
                  rem        sp, s2, s4
                  sltiu      t3, a4, -987
                  remu       tp, a7, s10
                  auipc      sp, 191444
                  sltu       s0, a3, s2
                  c.xor      s1, s0
                  bge        a7, s6, 53f
53:               srl        s4, s4, a0
                  slt        t2, a6, s10
                  ori        a1, s0, -989
                  srli       t0, a0, 25
                  sltiu      s4, s5, -689
                  bltu       t4, s2, 75f
                  lui        t2, 82575
                  c.slli     s9, 22
                  csrrci     s5, 0x340, 29
                  bgeu       t2, s6, 77f
                  c.slli     s4, 25
                  csrrci     t0, 0x340, 20
                  c.or       s1, s0
                  sra        s9, s5, s3
                  c.and      s1, a3
                  bltu       tp, t6, 71f
                  fence.i
                  or         s9, t2, t2
71:               slt        s4, t0, s9
                  rem        t2, t6, zero
                  bltu       a0, s9, 87f
                  c.beqz     a1, 90f
75:               c.and      s0, a3
                  c.ebreak;c.nop;
77:               .4byte 0x00100073 # ebreak
                  c.sub      a3, s1
                  fence.i
                  slt        t0, a6, a7
                  c.slli     s11, 8
                  c.andi     a1, 7
                  div        sp, t6, zero
                  xor        s0, a7, a6
                  c.beqz     a5, 91f
                  c.ebreak;c.nop;
87:               csrrs      ra, 0x340, t3
                  srl        sp, a6, a3
                  addi       a5, t3, 575
90:               csrrc      s11, 0x340, zero
91:               csrrci     t2, 0x340, 31
                  blt        tp, tp, 106f
                  bge        t6, s7, 100f
                  c.xor      a2, a2
                  c.bnez     a3, 102f
                  sll        gp, t2, zero
                  sltiu      zero, s8, 200
                  csrrc      s2, 0x340, s4
                  fence.i
100:              blt        t2, t2, 111f
                  divu       s4, a3, s10
102:              bge        a0, t1, 116f
                  sub        a1, s7, gp
                  c.ebreak;c.nop;
                  mulhsu     a6, sp, t2
106:              or         s3, a0, s4
                  xori       s0, a7, 119
                  bne        s10, t4, 118f
                  c.andi     a3, -1
                  or         t2, s11, a4
111:              c.bnez     a5, 123f
                  .4byte 0x00100073 # ebreak
                  sub        t2, s4, gp
                  slt        s0, s2, sp
                  sub        s8, a7, t0
116:              bgeu       s11, s5, 130f
                  xori       t4, t1, 10
118:              fence.i
                  srli       s0, t5, 27
                  sra        a6, s1, s10
                  csrrci     s10, 0x340, 1
                  mul        s4, s4, t6
123:              slt        s9, t6, t5
                  ori        a5, s11, -332
                  .4byte 0x00100073 # ebreak
                  auipc      s11, 782071
                  slti       a5, t6, -885
                  csrrs      t3, 0x340, a2
                  sltiu      s4, a6, 576
130:              c.addi     s0, -1
                  c.ebreak;c.nop;
                  slt        s10, a1, s10
                  bge        t6, t2, 136f
                  and        gp, t5, a7
                  div        a3, tp, a6
136:              xori       s3, sp, -382
                  slti       a1, zero, 640
                  srli       s7, s11, 11
                  bgeu       a3, s9, 152f
                  c.addi16sp sp, 176
                  c.add      s7, sp
                  csrrw      s1, 0x340, a6
                  .4byte 0x00100073 # ebreak
                  add        s2, a4, gp
                  c.slli     s8, 7
                  c.lui      t5, 2
                  andi       t5, tp, -882
                  fence
                  beq        s10, s0, 166f
                  c.li       a3, 20
                  srl        s5, t5, s11
152:              srai       s7, s7, 14
                  csrrc      gp, 0x340, gp
                  bgeu       zero, a3, 165f
                  bltu       a6, s2, 170f
                  csrrs      s11, 0x340, t5
                  blt        s11, a5, 162f
                  csrrwi     s3, 0x340, 22
                  c.addi16sp sp, -16
                  c.addi16sp sp, -16
                  sltiu      s6, s5, 98
162:              or         a3, t0, s6
                  c.nop
                  slti       a2, zero, -456
165:              xor        a5, a3, t0
166:              srai       zero, a4, 1
                  bge        t2, t2, 173f
                  c.li       a6, 6
                  csrrc      zero, 0x340, t5
170:              c.andi     a2, -1
                  slli       t0, s3, 19
                  slt        s4, s4, s8
173:              blt        a6, s7, 183f
                  mul        a6, s0, s7
                  c.li       s4, -1
                  c.add      a3, gp
                  auipc      a6, 223929
                  srli       s3, tp, 18
                  or         a6, a2, s6
                  c.slli     sp, 1
                  c.slli     t5, 15
                  srl        s6, sp, s4
183:              fence
                  mulhsu     s1, s5, a7
                  c.lui      s7, 23
                  bne        t4, s8, 197f
                  slt        t4, a7, a5
                  slli       s2, a2, 19
                  nop
                  c.lui      t4, 16
                  c.and      a3, a4
                  srli       a3, s9, 1
                  c.lui      s9, 15
                  andi       t1, s6, -635
                  slli       s9, s5, 3
                  divu       s5, a4, s10
197:              c.nop
                  c.addi16sp sp, 272
                  c.sub      s1, a5
                  c.bnez     a5, 211f
                  c.mv       a6, s0
                  c.beqz     a1, 216f
                  csrrci     s8, 0x340, 1
                  bne        t4, ra, 214f
                  add        tp, a1, s0
                  nop
                  csrrci     a6, 0x340, 3
                  c.bnez     a5, 224f
                  addi       t5, t1, 384
                  fence
211:              and        s1, t0, a4
                  c.srai     a5, 5
                  and        s2, a7, s7
214:              c.andi     s0, 12
                  c.andi     a2, 6
216:              sll        s10, s6, a7
                  fence.i
                  csrrc      t3, 0x340, s0
                  c.slli     s5, 27
                  c.or       a5, a4
                  xori       ra, t2, -32
                  csrrwi     t2, 0x340, 6
                  c.ebreak;c.nop;
224:              blt        t3, t2, 230f
                  csrrsi     s7, 0x340, 18
                  c.li       s8, 13
                  addi       s3, s5, -553
                  c.srai     a2, 10
                  .4byte 0x00100073 # ebreak
230:              remu       a6, sp, s10
                  csrrs      a5, 0x340, a0
                  slli       a1, s8, 17
                  and        zero, tp, a5
                  lui        t3, 895092
                  c.or       a3, a3
                  add        s7, s6, a1
                  ori        a6, a7, 21
                  sra        a7, t4, a7
                  beq        ra, t6, 251f
                  c.and      s0, a5
                  auipc      s10, 854155
                  c.lui      a1, 10
                  auipc      s3, 78474
                  csrrs      s3, 0x340, s4
                  rem        s1, a2, s3
                  sltu       s11, tp, a6
                  csrrw      s7, 0x340, sp
                  xori       a7, a4, 108
                  csrrwi     sp, 0x340, 21
                  c.add      a5, s0
251:              sub        t4, zero, t3
                  c.xor      a3, a2
                  remu       s9, s5, s3
                  or         t0, a4, a1
                  nop
                  ori        sp, t1, -807
                  c.mv       gp, t2
                  mul        a1, sp, gp
                  bltu       s10, tp, 270f
                  sltiu      a7, t4, 315
                  slti       a5, a3, -57
                  sra        t4, a3, s3
                  xori       s11, a7, 254
                  add        s6, s0, s1
                  blt        a1, s0, 272f
                  xori       zero, a7, -642
                  c.xor      s1, a0
                  csrrci     s3, 0x340, 10
                  csrrw      s8, 0x340, ra
270:              add        s11, sp, s11
                  lui        t4, 641292
272:              c.or       a3, a5
                  csrrs      tp, 0x340, a7
                  c.srai     a1, 15
                  c.srai     a1, 3
                  or         s6, s2, t5
                  or         a7, t4, s4
                  ori        sp, s9, -257
                  c.mv       a1, s0
                  rem        zero, a0, a6
                  bgeu       t1, ra, 296f
                  srl        s2, a0, a2
                  csrrc      s2, 0x340, t5
                  srli       s1, a1, 1
                  c.srli     s0, 4
                  bgeu       t3, s7, 289f
                  srl        zero, s3, a0
                  mulhu      s6, s10, ra
289:              c.bnez     s1, 307f
                  lui        s5, 971677
                  remu       s10, a1, t0
                  slti       s0, zero, -861
                  ori        t1, s5, 329
                  bgeu       t6, s10, 308f
                  bge        t1, s10, 312f
296:              lui        s8, 606479
                  srai       a2, s9, 6
                  fence.i
                  sub        tp, s8, s6
                  andi       s9, s2, 849
                  c.li       s2, 28
                  csrrw      a1, 0x340, t6
                  mulhsu     t5, s6, a7
                  srai       s1, s7, 20
                  add        s5, a5, s2
                  c.bnez     s1, 323f
307:              rem        s7, s11, t5
308:              mul        t4, zero, t0
                  addi       s6, s4, 145
                  auipc      s7, 397756
                  c.li       a5, 20
312:              beq        t6, a4, 313f
313:              .4byte 0x00100073 # ebreak
                  slli       t1, s6, 9
                  mul        s3, ra, tp
                  nop
                  mul        a5, a3, a4
                  div        zero, a1, s5
                  csrrwi     s7, 0x340, 26
                  c.andi     s1, -1
                  c.slli     a3, 6
                  xor        s10, ra, a5
323:              csrrs      t1, 0x340, s9
                  fence
                  xor        s9, t3, a7
                  c.ebreak;c.nop;
                  c.andi     s1, -1
                  c.mv       a6, a2
                  mulhsu     s11, ra, a7
                  srli       gp, zero, 28
                  lw         t1, 4(a4)
                  c.sub      a2, a5
                  addi       a4, a4, 48
                  c.addi16sp sp, -16
                  slt        tp, s7, a0
                  c.srli     a5, 17
                  c.or       a1, s0
                  c.ebreak;c.nop;
                  sll        s7, t2, tp
                  sll        s7, a5, s10
552:              c.jr x6
sub_2:            c.or       a3, a1
                  srl        gp, zero, a6
                  c.addi     t0, -1
                  or         t0, s9, s1
                  c.bnez     a4, sub_2_stack_p
                  xor        zero, s1, tp
sub_2_stack_p:    addi       a4, a4, -60
                  sw         t1, 4(a4)
                  c.and      a3, a2
                  la         s11, region_0+4051 #start load_store_instr_stream_1
                  la         t3, region_4+343 #start load_store_instr_stream_2
                  lh         s1, -11(t3)
                  la         gp, region_2+7492 #start load_store_instr_stream_0
                  la         s9, region_1+15938 #start load_store_instr_stream_3
                  sb         t1, -14(s11)
                  lb         t1, 23(gp)
                  lbu        t5, 12(s9)
                  sb         zero, -9(s9)
                  lbu        a2, -7(s11)
                  lhu        s5, -4(s9)
                  lbu        s4, -42(gp)
                  lbu        s10, -6(t3)
                  sb         zero, 14(s11)
                  lb         a6, 7(s9)
                  lb         t1, -6(t3)
                  sb         t6, -9(s11)
                  lb         a6, -9(s9)
                  lb         s7, 44(gp)
                  sb         s2, 7(s11)
                  lh         tp, -13(t3)
                  lh         tp, 1(s11)
                  sb         s10, -5(gp)
                  lb         a1, 12(s11)
                  lb         t2, -16(s11)
                  lbu        s10, 4(gp)
                  lb         t1, 45(gp)
                  sb         s7, 44(gp)
                  lbu        a3, 4(s9)
                  lhu        s8, -13(t3) #end load_store_instr_stream_2
                  lbu        t4, -13(s11) #end load_store_instr_stream_1
                  lbu        ra, -5(s9)
                  lb         s1, 14(s9) #end load_store_instr_stream_3
                  sb         t2, -26(gp)
                  lb         a6, -13(gp) #end load_store_instr_stream_0
                  la         tp, region_4+3326 #start load_store_instr_stream_2
                  la         s8, region_3+401 #start load_store_instr_stream_0
                  la         s6, region_0+3522 #start load_store_instr_stream_1
                  lb         s10, -1237(tp)
                  lw         s7, 39(s8)
                  lb         s7, -485(tp)
                  lb         s4, -12(s8)
                  lbu        t2, 12(s6)
                  lbu        t3, 20(s8)
                  lhu        s4, 49(s8)
                  lb         s10, -58(s8)
                  sb         t3, -2015(tp)
                  lbu        s2, -40(s8)
                  sb         a1, -3(s6)
                  sb         s9, -716(tp)
                  lb         a5, 48(tp)
                  sw         ra, -14(s6)
                  lhu        s11, -41(s8)
                  lbu        t1, -523(tp)
                  lh         a6, -1552(tp) #end load_store_instr_stream_2
                  sh         a4, 16(s6)
                  lb         zero, 13(s8)
                  sb         tp, -36(s8)
                  sb         a5, 11(s6)
                  lbu        gp, 16(s6) #end load_store_instr_stream_1
                  lbu        s9, 0(s8) #end load_store_instr_stream_0
                  la         s11, region_3+209 #start riscv_hazard_instr_stream_0
                  lbu        s2, 220(s11)
                  srli       a5, s0, 2
                  andi       a1, s8, 1001
                  c.sub      a1, a1
                  sra        a6, s8, a5
                  srai       a1, a5, 13
                  mul        s8, a5, s2
                  lb         a5, 146(s11)
                  csrrsi     s0, 0x340, 10
                  sll        a5, a6, a1
                  srai       s8, a1, 27
                  sltu       s2, s0, s0
                  slti       a5, s0, 64
                  sb         s0, 28(s11)
                  lb         s8, 208(s11)
                  c.mv       s8, s0
                  lbu        a5, -144(s11)
                  lui        s0, 714207
                  sw         a6, 235(s11)
                  lbu        a5, -38(s11)
                  rem        s2, s2, a1
                  lbu        s8, 217(s11)
                  nop
                  sb         a5, 186(s11)
                  sb         a6, 182(s11)
                  srli       a6, a6, 23
                  csrrw      s0, 0x340, a1
                  c.nop
                  lb         s0, -38(s11)
                  and        s2, a6, s8
                  div        s8, a5, s2
                  c.sub      a1, a5
                  lb         s2, -33(s11)
                  srai       a6, s2, 23
                  lhu        s0, 89(s11)
                  lbu        s8, -154(s11)
                  c.srai     s0, 28
                  sb         a5, -116(s11)
                  c.ebreak;c.nop;
                  sb         s8, -32(s11)
                  remu       s2, a5, s0
                  mul        s2, a5, s2
                  addi       s8, s2, -30
                  c.srai     s0, 6
                  lbu        s0, 230(s11)
                  sub        s2, a5, a6
                  lb         s0, -132(s11)
                  sb         s2, -186(s11) #end riscv_hazard_instr_stream_0
sub_2_3:          jal        t1, 18f
0:                c.j        24f
1:                c.j        4f
2:                c.jal      3f
3:                c.jal      16f
4:                c.j        14f
5:                c.jal      26f
6:                c.j        23f
7:                c.jal      19f
8:                c.jal      25f
9:                c.jal      20f
10:               c.j        13f
11:               c.j        2b
12:               jal        t1, 0b
13:               jal        t1, 21f
14:               jal        ra, 9b
15:               jal        t1, 5b
16:               c.jal      12b
17:               c.j        7b
18:               jal        ra, 6b
19:               jal        ra, 22f
20:               c.j        27f
21:               jal        t5, 28f
22:               c.jal      8b
23:               jal        t1, 11b
24:               jal        gp, 1b
25:               c.j        15b
26:               c.jal      10b
27:               c.jal      17b
28:               xor        s9, t1, s5
                  la         a2, region_2+3787 #start riscv_hazard_instr_stream_1
                  lb         ra, 9(a2)
                  sltu       a6, t4, a6
                  andi       s4, a6, 597
                  lbu        ra, 54(a2)
                  csrrwi     t4, 0x340, 20
                  sw         t4, 17(a2)
                  lh         s4, -49(a2)
                  sub        s5, a6, t4
                  slt        t4, ra, t4
                  sb         s5, 58(a2)
                  csrrw      a6, 0x340, a6
                  lbu        a6, -8(a2)
                  lh         ra, 45(a2)
                  srl        a5, a5, s5
                  csrrci     a5, 0x340, 2
                  c.lui      a5, 13
                  sh         s4, -59(a2)
                  sb         s4, 30(a2)
                  lbu        s5, 46(a2)
                  fence
                  lw         a6, -55(a2)
                  sll        ra, t4, a5
                  sub        t4, s4, a6
                  srli       a6, s5, 26
                  lb         a6, -55(a2)
                  lbu        s5, 44(a2)
                  csrrw      ra, 0x340, a6
                  c.sub      a5, a5
                  csrrci     a5, 0x340, 16
                  slt        s5, t4, t4
                  slt        a5, s4, s5
                  srl        s4, t4, a5
                  c.add      s4, t4
                  c.addi     a5, 7
                  sb         ra, -60(a2)
                  csrrsi     a6, 0x340, 12
                  and        s5, a6, t4
                  sw         a6, -43(a2)
                  lb         a6, 24(a2)
                  sb         a5, 60(a2)
                  c.lui      t4, 28
                  lb         t4, 2(a2)
                  csrrsi     s4, 0x340, 5
                  fence
                  sb         s4, -50(a2) #end riscv_hazard_instr_stream_1
sub_2_2:          jal        t1, 10f
0:                c.j        18f
1:                jal        ra, 15f
2:                c.jal      14f
3:                c.j        6f
4:                jal        ra, 13f
5:                jal        ra, 7f
6:                c.jal      11f
7:                jal        ra, 3b
8:                jal        ra, 16f
9:                c.jal      17f
10:               c.jal      4b
11:               jal        ra, 0b
12:               c.jal      1b
13:               c.j        8b
14:               c.jal      5b
15:               c.jal      9b
16:               c.j        12b
17:               c.jal      2b
18:               c.andi     a3, -1
                  addi       a1, zero, -7 #init loop 1 counter
                  c.addi     s0, 12
                  c.srli     a2, 28
                  addi       zero, zero, 0 #init loop 1 limit
                  andi       gp, t0, -673
                  csrrsi     a5, 0x340, 18
                  c.lui      t4, 11
sub_2_8_1_t:      or         s3, ra, a7
                  rem        t1, a7, zero
                  csrrci     t2, 0x340, 1
                  csrrsi     s0, 0x340, 3
                  addi       a1, a1, 7 #update loop 1 counter
                  c.addi16sp sp, -16
                  andi       a5, a0, 837
                  addi       a6, zero, -7 #init loop 0 counter
                  fence.i
                  addi       ra, zero, -13 #init loop 0 limit
sub_2_8_0_t:      sltu       s7, zero, t2
                  srl        t4, s4, s5
                  .4byte 0x00100073 # ebreak
                  addi       a6, a6, -6 #update loop 0 counter
                  nop
                  bne        a6, ra, sub_2_8_0_t #branch for loop 0
                  csrrs      sp, 0x340, a5
                  srli       s1, a5, 11
                  c.beqz     a1, sub_2_8_1_t #branch for loop 1
                  c.and      s0, a0
                  la         sp, region_1+6957 #start riscv_load_store_rand_instr_stream_1
                  sb         s3, -2(sp)
                  lw         s10, -9(sp)
                  csrrwi     ra, 0x340, 29
                  c.srli     a3, 21
                  div        t5, s3, ra
                  lb         s8, 4(sp)
                  sh         t4, 9(sp)
                  andi       tp, a2, 464
                  xor        a5, t4, ra
                  c.mv       s10, t3
                  addi       a3, s9, -632
                  remu       t1, s8, s9
                  c.mv       s1, s11
                  c.add      s7, s4
                  lb         s11, 6(sp)
                  .4byte 0x00100073 # ebreak
                  sb         s10, 8(sp)
                  sb         ra, 0(sp)
                  lbu        a5, -10(sp)
                  sb         t2, -16(sp)
                  csrrwi     t0, 0x340, 7
                  lhu        s3, 13(sp)
                  c.srli     a5, 8
                  c.li       t4, -1
                  sb         s4, -6(sp)
                  lb         s1, -1(sp)
                  csrrwi     ra, 0x340, 31
                  mulh       a2, s8, s11
                  lb         s1, -10(sp)
                  sh         t6, 1(sp)
                  andi       s1, sp, 913
                  c.srai     a1, 1
                  lui        a7, 1001428
                  sh         s7, 1(sp) #end riscv_load_store_rand_instr_stream_1
                  srai       s6, s6, 26
                  xori       t5, s10, 960
                  csrrci     gp, 0x340, 14
                  fence
                  lui        sp, 250121
                  beq        s11, zero, 21f
                  fence.i
                  c.add      a3, a0
                  c.xor      s0, s1
                  ori        s2, a2, -619
                  bltu       gp, t6, 21f
                  sltu       s0, s10, a4
                  xor        gp, a1, a4
                  csrrci     t1, 0x340, 4
                  c.and      a3, a0
                  c.xor      a2, a2
                  csrrs      s11, 0x340, s1
                  fence.i
                  sll        s3, s8, a1
                  slti       a2, a5, 993
                  lui        a2, 957222
21:               andi       s3, tp, 54
                  rem        s3, tp, t2
                  or         t0, s9, s1
                  remu       t5, a1, t1
                  c.addi16sp sp, 240
                  andi       s0, a7, 772
                  c.ebreak;c.nop;
                  srai       s1, a0, 4
                  c.slli     a5, 14
                  rem        t5, s8, s6
                  c.srli     s1, 27
                  bne        a4, s5, 45f
                  blt        a7, t6, 46f
                  c.and      a3, a0
                  fence.i
                  c.srli     a1, 8
                  addi       a5, s8, -884
                  bne        t1, s1, 50f
                  csrrsi     t2, 0x340, 16
                  mul        tp, t2, t3
                  mulh       t3, a2, t2
                  and        t0, t6, s7
                  .4byte 0x00100073 # ebreak
                  sltu       t0, t5, s3
45:               c.srai     a5, 20
46:               c.addi16sp sp, -16
                  addi       sp, s4, -880
                  c.mv       sp, t5
                  bltu       gp, a1, 50f
50:               bge        a3, zero, 57f
                  blt        s4, s9, 68f
                  andi       a5, ra, 370
                  sub        a6, t1, tp
                  sll        t5, s0, s1
                  rem        s0, s6, sp
                  mulh       s3, s7, a6
57:               c.or       a1, a2
                  xor        s1, sp, a6
                  sll        zero, s1, s9
                  c.addi16sp sp, 160
                  c.add      s4, s4
                  c.add      ra, ra
                  and        a3, gp, a0
                  beq        a1, s3, 65f
65:               rem        a6, a1, t0
                  sltiu      s9, a4, -135
                  csrrs      tp, 0x340, s5
68:               csrrs      s10, 0x340, t5
                  divu       t2, a4, s4
                  c.bnez     a5, 74f
                  c.add      s1, t3
                  .4byte 0x00100073 # ebreak
                  bltu       t2, a1, 88f
74:               remu       a7, s10, a7
                  bltu       sp, s5, 91f
                  c.add      ra, a6
                  csrrci     gp, 0x340, 9
                  c.lui      a5, 27
                  mul        t0, s8, ra
                  c.bnez     a5, 94f
                  or         s11, s2, a3
                  csrrw      a5, 0x340, zero
                  bltu       a1, a0, 90f
                  xori       s6, zero, 179
                  sub        t4, t0, t2
                  slli       s8, s2, 6
                  c.sub      a3, a2
88:               c.srai     a2, 12
                  xori       a3, t1, 794
90:               blt        s5, a4, 104f
91:               bge        t4, sp, 92f
92:               mul        a1, s7, a0
                  div        t3, a0, t4
94:               c.xor      a5, s0
                  csrrsi     s0, 0x340, 22
                  blt        t2, s9, 113f
                  c.and      a1, a2
                  beq        a0, s0, 115f
                  remu       s5, s2, sp
                  addi       a7, s5, 491
                  slli       t2, t5, 27
                  c.or       s1, s1
                  c.bnez     a3, 114f
104:              mulhsu     t4, s5, a6
                  slt        s9, s7, t3
                  nop
                  csrrw      s5, 0x340, s8
                  and        s8, t6, sp
                  bgeu       t6, s8, 128f
                  c.li       a1, 3
                  sltiu      s9, s2, -380
                  divu       t5, tp, s5
113:              beq        t4, t1, 128f
114:              c.addi     a2, 11
115:              csrrsi     a7, 0x340, 3
                  sra        s6, t3, s7
                  fence.i
                  c.or       s1, s0
                  addi       a7, s3, 496
                  sra        s11, t2, s10
                  xor        t3, zero, s5
                  andi       t3, s11, -120
                  srai       t1, s1, 14
                  sltiu      s4, t6, 247
                  div        s9, s10, a2
                  csrrwi     a5, 0x340, 7
                  bne        a6, s11, 146f
128:              .4byte 0x00100073 # ebreak
                  lui        a3, 246023
                  mulhu      s11, t1, gp
                  auipc      ra, 824795
                  csrrw      t2, 0x340, t0
                  lui        s5, 760356
                  sltu       sp, gp, s3
                  csrrs      s9, 0x340, a2
                  sltiu      s7, s6, 628
                  sra        t1, t0, t4
                  mulhsu     s5, a5, t2
                  slti       a1, t3, 527
                  fence.i
                  srl        s7, s7, tp
                  srai       s1, a7, 25
                  sll        a6, s3, t6
                  bge        a7, s6, 158f
                  csrrw      sp, 0x340, a7
146:              bgeu       s8, s7, 163f
                  and        gp, t6, s5
                  and        t2, t4, s5
                  sub        ra, a5, a0
                  csrrw      t5, 0x340, t6
                  sll        s0, a0, t0
                  nop
                  nop
                  c.slli     t0, 10
                  srai       t4, s4, 8
                  la         s11, region_4+2929 #start load_store_instr_stream_1
                  la         s10, region_4+1126 #start load_store_instr_stream_0
                  sb         t3, -216(s11)
                  lbu        t3, 179(s11)
                  lb         a3, -12(s10)
                  sb         t0, 29(s11)
                  lbu        s0, 4(s10)
                  lb         t2, 4(s10)
                  sb         s2, -5(s10)
                  sh         s8, 12(s10)
                  lbu        t2, -199(s11)
                  lbu        a2, -154(s11)
                  lbu        t0, -5(s10)
                  lw         zero, -193(s11) #end load_store_instr_stream_1
                  sb         t3, -3(s10)
                  lbu        sp, 7(s10) #end load_store_instr_stream_0
                  csrrsi     s8, 0x340, 11
                  nop
158:              c.srai     a5, 18
                  c.addi16sp sp, 96
                  c.andi     a5, -1
                  div        a1, t5, t0
                  sltu       gp, s9, a2
163:              csrrw      s6, 0x340, s8
                  c.lui      s3, 3
                  c.xor      a5, s1
                  or         a7, t0, tp
                  csrrw      s5, 0x340, a7
                  sra        s7, sp, t4
                  auipc      a3, 507366
                  ori        a5, s0, 884
                  c.srli     a2, 21
                  c.andi     a1, 5
                  sltiu      sp, t4, -8
                  fence.i
                  remu       t3, s3, s7
                  xor        gp, zero, sp
                  beq        t5, s10, 189f
                  sub        s9, a3, s5
                  srli       gp, a4, 17
                  srli       t3, s0, 6
                  c.li       a3, -1
                  c.beqz     a1, 192f
                  addi       s8, t5, -971
                  beq        zero, a6, 194f
                  c.li       a5, 3
                  c.srai     s0, 25
                  csrrw      s4, 0x340, t4
                  ori        s9, s5, 671
189:              sltiu      s9, s1, 14
                  c.lui      s9, 17
                  sra        s9, s6, t0
192:              csrrwi     s11, 0x340, 31
                  add        s7, s10, s4
194:              .4byte 0x00100073 # ebreak
                  xor        a1, t0, t1
                  c.andi     a1, 16
                  c.addi16sp sp, -16
                  sltiu      s10, tp, 703
                  c.li       t2, -1
                  divu       t4, s2, sp
                  auipc      s8, 548407
                  fence
                  .4byte 0x00100073 # ebreak
                  mulh       s6, a3, sp
                  c.add      a2, s5
                  c.addi     t1, -1
                  c.or       a5, a2
                  lui        s8, 955982
                  srl        s5, a7, t6
                  slli       tp, t0, 5
                  c.lui      t4, 24
                  sltu       t0, s6, a5
                  srl        t1, t3, s0
                  auipc      gp, 227268
                  srai       a1, s2, 9
                  bge        a3, a1, 222f
                  c.mv       a3, t3
                  sltiu      s0, s11, 807
                  c.add      t2, s10
                  c.and      s1, a0
                  csrrsi     t1, 0x340, 10
222:              fence.i
                  c.slli     gp, 20
                  nop
                  c.addi16sp sp, 320
                  remu       s4, t0, a6
                  slt        tp, t1, s6
                  c.beqz     a1, 240f
                  sub        a7, t4, a0
                  divu       a6, a3, a3
                  addi       s8, t2, 621
                  c.mv       a2, a5
                  bltu       zero, zero, 234f
234:              c.or       s0, a4
                  slti       s7, a2, 626
                  c.mv       a2, sp
                  c.addi16sp sp, -16
                  csrrs      s3, 0x340, a6
                  andi       t2, ra, -672
240:              c.srai     s1, 19
                  c.ebreak;c.nop;
                  bge        t5, s9, 259f
                  sub        s0, ra, t1
                  c.and      a1, a3
                  divu       s6, a6, s10
                  c.beqz     a2, 260f
                  mulh       t5, a1, s2
                  c.addi     t4, -1
                  .4byte 0x00100073 # ebreak
                  c.sub      s0, a2
                  addi       t5, s9, 808
                  mulhsu     t1, t1, s11
                  c.srai     a5, 27
                  c.or       a5, a4
                  csrrci     t4, 0x340, 24
                  bge        ra, a3, 257f
257:              sub        t5, ra, s7
                  mulhu      a6, s5, s10
259:              lui        s4, 786487
260:              c.add      s7, a1
                  c.or       s0, s1
                  remu       s9, a1, a1
                  blt        t4, a6, 275f
                  c.srai     s0, 23
                  sll        t2, s5, s2
                  nop
                  blt        t3, t4, 279f
                  c.lui      s0, 7
                  beq        zero, a5, 270f
270:              beq        gp, t2, 289f
                  c.lui      tp, 7
                  xori       t4, s2, -289
                  c.andi     a3, -1
                  rem        gp, s11, s6
275:              c.srli     s1, 1
                  bltu       sp, s3, 286f
                  c.nop
                  c.li       s5, -1
279:              c.and      s1, a5
                  c.mv       s11, t5
                  ori        t2, s9, -901
                  c.and      a3, a5
                  c.and      s1, a1
                  srai       a6, ra, 23
                  sltu       s5, a7, t1
286:              bge        s6, t2, 290f
                  c.bnez     a1, 300f
                  rem        s1, t0, s3
289:              sltiu      a3, s5, 612
290:              ori        tp, s9, -900
                  bne        a3, zero, 292f
292:              bltu       s0, s11, 308f
                  and        s9, s9, sp
                  c.addi     s2, 16
                  sll        a1, s7, s2
                  ori        a2, tp, -827
                  lui        s4, 254581
                  mulhsu     s8, sp, t5
                  c.srli     a1, 21
300:              mulh       t1, t4, sp
                  divu       a5, a7, a7
                  or         s1, s6, s7
                  mulhsu     a6, a6, tp
                  sub        a5, s6, gp
                  sltu       t1, a3, a6
                  remu       t5, a2, t5
                  c.addi16sp sp, -16
308:              rem        t5, gp, s0
                  xori       s1, a6, -468
                  lui        t1, 550200
                  and        a5, a3, s1
                  c.xor      a5, a2
                  fence.i
                  c.mv       s2, a2
                  srl        tp, s6, a1
                  slt        s10, t3, zero
                  .4byte 0x00100073 # ebreak
                  c.lui      a6, 3
                  csrrs      t3, 0x340, a3
                  c.srli     a3, 24
                  xor        a6, s11, a0
                  srai       t5, tp, 6
                  mul        t0, s0, a7
                  c.and      a3, a4
                  c.addi16sp sp, 144
                  .4byte 0x00100073 # ebreak
                  remu       a5, t5, s7
                  sra        t5, t5, t2
                  c.beqz     s1, 340f
                  remu       zero, s4, zero
                  add        t3, t2, a7
                  mul        s5, sp, s1
                  c.addi     s11, -1
                  or         s4, a2, s6
                  ori        sp, t2, 281
                  nop
                  and        t0, s5, t1
                  csrrs      s11, 0x340, a3
                  fence
340:              c.srai     a2, 14
                  c.srli     a3, 30
                  mul        s8, s8, t0
                  c.li       t4, -1
                  c.mv       s2, t2
                  csrrs      a3, 0x340, t6
                  bgeu       t5, gp, 352f
                  c.sub      a3, a1
                  nop
                  la         s11, region_2+3709 #start riscv_load_store_rand_instr_stream_0
                  sub        s3, t6, a5
                  lb         s2, -3(s11)
                  fence.i
                  csrrci     a2, 0x340, 1
                  .4byte 0x00100073 # ebreak
                  c.add      s10, s9
                  c.addi     s3, -1
                  slli       a5, a7, 8
                  lh         t3, -245(s11)
                  or         a5, t6, a4
                  lbu        s9, 124(s11)
                  and        t2, s1, s11
                  lh         t0, -231(s11)
                  addi       s3, s5, 711
                  sw         a4, -249(s11)
                  lbu        s9, -172(s11)
                  srl        t2, s3, s5
                  div        a3, s7, a6
                  lb         s0, -74(s11)
                  lbu        a5, -131(s11)
                  xor        a2, a6, a0
                  srli       s8, t6, 13
                  divu       t1, gp, a4
                  sh         s2, -115(s11)
                  c.ebreak;c.nop;
                  sra        t1, zero, sp
                  csrrsi     s1, 0x340, 22
                  sra        s1, t4, a4
                  addi       s3, t2, -1007
                  c.and      a3, a5
                  srl        t0, a0, s1
                  sb         t3, -176(s11)
                  csrrc      s10, 0x340, s11
                  sra        s5, t2, a5
                  remu       sp, s8, s6
                  c.lui      a6, 17
                  lb         gp, 27(s11) #end riscv_load_store_rand_instr_stream_0
                  nop
                  mulhsu     s0, s6, ra
                  bne        s1, a7, 358f
352:              slti       a2, a0, 339
                  fence
                  c.addi16sp sp, -16
                  bge        ra, a5, 368f
                  addi       s9, s6, -167
                  sltu       a7, s4, t2
358:              sltiu      a6, s1, 839
                  c.srli     s0, 6
                  csrrw      a2, 0x340, a2
                  c.srai     s1, 8
                  csrrci     a3, 0x340, 20
                  bgeu       s6, ra, 370f
                  c.andi     s0, -1
                  bne        a0, t3, 382f
                  divu       a3, s0, tp
                  csrrc      t5, 0x340, s8
368:              srai       s2, s11, 14
                  add        t1, a5, a0
370:              c.bnez     s0, 385f
                  .4byte 0x00100073 # ebreak
                  c.mv       s8, tp
                  c.nop
                  slli       t2, t5, 27
                  srl        a3, t1, s1
                  csrrci     a3, 0x340, 17
                  c.slli     t2, 22
                  slli       zero, s0, 13
                  c.xor      a5, a5
                  csrrw      t2, 0x340, t5
                  sra        a1, t5, a3
382:              lui        s3, 49673
                  blt        s8, gp, 398f
                  andi       s1, a3, 212
385:              fence.i
                  c.bnez     a3, 387f
387:              c.add      s4, a4
                  rem        a6, s5, ra
                  c.srai     s1, 1
                  auipc      s1, 235046
                  ori        s9, s3, 939
                  addi       s1, a5, -14
                  c.mv       s8, a2
                  and        t1, s5, a4
                  bge        a6, ra, 407f
                  div        s4, ra, s5
                  c.slli     t2, 4
398:              slt        a3, t5, a0
                  c.lui      s0, 9
                  bltu       t4, a1, 414f
                  divu       a5, a7, a4
                  csrrci     ra, 0x340, 17
                  c.li       a1, -1
                  sltu       a1, s9, s6
                  remu       a3, a4, tp
                  srli       s2, s2, 2
407:              blt        t0, a1, 424f
                  lui        s4, 867542
                  c.li       s7, -1
                  fence
                  slti       a6, a6, 638
                  and        s6, a1, s8
                  srli       s4, a0, 12
414:              c.andi     a2, -1
                  divu       a2, t4, sp
                  c.lui      s3, 1
                  c.addi     s11, 10
                  c.srli     a1, 25
                  rem        s9, t4, t5
                  slt        zero, s0, t6
                  sra        s6, a5, s8
                  csrrs      gp, 0x340, t1
                  add        tp, s7, t6
424:              fence.i
                  blt        t6, t1, 441f
                  csrrci     s7, 0x340, 29
                  sra        s5, zero, a1
                  xor        s1, s4, a2
                  csrrwi     s1, 0x340, 26
                  c.xor      s0, a1
                  sll        zero, t2, t2
                  fence.i
                  csrrsi     sp, 0x340, 30
                  bgeu       s8, s5, 451f
                  div        s7, gp, t6
                  lui        s8, 901145
                  .4byte 0x00100073 # ebreak
                  sltu       a5, a2, s4
                  c.srai     s1, 15
                  bltu       s2, s7, 459f
441:              c.or       a1, a2
                  c.lui      s7, 24
                  c.andi     a1, 14
                  c.and      s1, a3
                  srl        tp, t4, s8
                  csrrci     s11, 0x340, 30
                  add        a1, gp, a3
                  c.mv       s6, s8
                  csrrs      gp, 0x340, a4
                  addi       a1, s3, 555
451:              c.sub      a3, a1
                  beq        t6, a0, 466f
                  bne        t2, s3, 464f
                  mulhu      s3, s8, s5
                  c.add      t3, sp
                  srli       a5, s11, 14
                  xori       s9, s8, 915
                  c.add      gp, t1
459:              sra        sp, a2, t2
                  mulh       a3, s0, gp
                  and        s6, sp, sp
                  and        tp, a7, gp
                  beq        a0, a7, 473f
464:              c.xor      a3, a0
                  c.or       a3, s0
466:              srli       ra, s8, 3
                  remu       s6, t2, s3
                  csrrw      t5, 0x340, t3
                  sltu       s2, a7, a2
                  sra        t0, tp, t6
                  slti       t1, s3, 737
                  c.sub      a5, a1
473:              mulhu      s11, s11, t4
                  c.nop
                  sll        t4, s8, tp
                  c.lui      s0, 29
                  mulh       s9, t4, t1
                  auipc      s8, 642876
                  csrrsi     s8, 0x340, 12
                  csrrs      s9, 0x340, s11
                  bltu       zero, s4, 494f
                  xori       s9, s10, 986
                  csrrc      a1, 0x340, s7
                  srai       s8, s10, 11
                  csrrs      s5, 0x340, s9
                  slti       s2, zero, 495
                  c.xor      s0, a5
                  bge        s7, s5, 503f
                  c.sub      a1, a3
                  c.mv       s11, s10
                  or         t0, a0, a4
                  fence
                  bltu       s6, a1, 499f
494:              div        s10, a6, t2
                  c.lui      a2, 30
                  csrrs      s2, 0x340, zero
                  csrrwi     t0, 0x340, 20
                  c.lui      t2, 15
499:              c.slli     s7, 2
                  rem        gp, tp, t6
                  c.andi     s1, -1
                  c.xor      a2, a5
503:              rem        a3, s6, a3
                  c.lui      a6, 16
                  lui        t5, 67394
                  srl        t1, s1, s6
                  sra        t2, t3, a3
                  mul        t4, t0, zero
                  sltu       s11, a6, ra
                  ori        s5, a6, -248
                  c.xor      s0, a3
                  fence.i
                  bgeu       a0, s4, 530f
                  c.mv       ra, s1
                  sub        t5, t1, s8
                  blt        t3, s9, 517f
517:              c.and      s1, a0
                  c.addi     t5, -1
                  slt        a6, s10, a2
                  mulh       a5, s8, s5
                  add        a3, s5, t6
                  .4byte 0x00100073 # ebreak
                  csrrsi     s9, 0x340, 7
                  xor        s1, a5, ra
                  add        a7, a2, t6
                  and        ra, t3, t0
                  srli       s3, t5, 7
                  nop
                  mulh       a6, s9, zero
530:              andi       s5, a5, 376
                  csrrc      a1, 0x340, gp
                  c.ebreak;c.nop;
                  .4byte 0x00100073 # ebreak
                  slt        s2, s10, a1
                  c.lui      a2, 9
                  andi       t1, s7, -1015
                  add        a2, s9, a7
                  c.ebreak;c.nop;
                  nop
                  c.andi     a2, 20
                  div        t0, t0, s6
                  c.li       s1, -1
                  c.andi     a1, -1
                  slli       t4, t1, 24
                  c.xor      a3, a5
                  xori       a2, a6, 1018
                  c.nop
                  la         a1, region_0+3750 #start load_store_instr_stream_1
                  lb         sp, -28(a1)
                  la         gp, region_0+2023 #start load_store_instr_stream_0
                  sb         t5, 59(a1)
                  lhu        s5, -40(a1)
                  lb         t4, -20(gp)
                  lb         t1, -68(gp)
                  lbu        t4, 11(a1)
                  lbu        s5, -1380(gp)
                  sb         a2, 1(a1)
                  sb         t6, -19(a1)
                  lb         s5, -250(gp)
                  lb         s8, -22(a1) #end load_store_instr_stream_1
                  lbu        a2, -1680(gp) #end load_store_instr_stream_0
                  c.slli     s8, 8
                  csrrw      gp, 0x340, s8
                  c.xor      a1, s1
                  csrrci     a6, 0x340, 15
                  and        t0, sp, gp
                  csrrsi     zero, 0x340, 0
                  or         s8, s8, sp
                  c.or       a3, a2
                  auipc      t4, 966609
                  mulh       s2, s2, s10
                  fence.i
                  c.and      a1, s0
                  nop
                  sltu       s7, t4, a4
                  sltiu      s6, a4, 585
                  slli       s3, a3, 15
                  xor        t3, s8, s3
                  auipc      a7, 451976
                  csrrsi     s9, 0x340, 9
                  c.lui      s6, 1
                  bne        a3, a2, 582f
                  bgeu       s10, s7, 576f
                  sltiu      s5, a2, -407
                  sll        ra, gp, s9
                  mulhsu     ra, s8, s8
                  lui        t0, 725178
                  xori       t0, t5, -802
                  mulh       a5, t6, s5
576:              srai       sp, t5, 17
                  rem        t3, ra, s6
                  csrrwi     tp, 0x340, 24
                  csrrwi     t3, 0x340, 28
                  c.and      a3, s1
                  sltu       ra, sp, s3
582:              c.slli     t4, 21
                  auipc      a7, 779119
                  auipc      a3, 683978
                  blt        a6, s8, 602f
                  c.and      a1, a5
                  bltu       t5, a7, 603f
                  auipc      s3, 475974
                  csrrci     ra, 0x340, 29
                  c.mv       tp, a1
                  c.sub      a3, a2
                  slt        s9, s3, t1
                  nop
                  mulhsu     t4, tp, s9
                  srli       s3, t5, 9
                  sltiu      a1, a7, -177
                  srli       s10, s8, 10
                  sltu       a5, s0, zero
                  mulh       s5, s3, a2
                  c.ebreak;c.nop;
                  remu       t3, s8, s9
602:              c.li       s5, -1
603:              sll        s8, s5, s11
                  mul        s11, s0, zero
                  sra        a7, a1, ra
                  sltiu      a2, sp, 766
                  c.lui      a2, 25
                  c.addi     a1, 22
                  c.srai     s1, 1
                  csrrs      s10, 0x340, tp
                  c.slli     gp, 21
                  sll        tp, a2, t1
                  xori       a6, t4, 912
                  xori       zero, t2, 688
                  xori       s8, t4, 24
                  ori        s10, s9, 529
                  remu       s9, s9, a1
                  srai       a6, a7, 9
                  xor        s10, a2, zero
                  c.li       a2, -1
                  c.and      a5, a2
                  bne        ra, a2, 623f
623:              divu       s3, a3, t1
                  xori       s8, s1, 919
                  and        s3, s2, s3
                  c.mv       t3, t0
                  c.srai     a5, 9
                  c.or       a5, a1
                  and        a1, a4, s2
                  fence.i
                  .4byte 0x00100073 # ebreak
                  c.and      a5, a4
                  fence.i
                  c.mv       s3, s7
                  lui        t1, 773184
                  rem        t1, s6, t2
                  xor        s5, s10, s7
                  lw         t1, 4(a4)
                  c.addi     s3, -1
                  addi       a4, a4, 60
                  csrrc      a1, 0x340, t0
                  and        s11, s2, s7
                  sub        zero, s5, a6
                  nop
                  mul        s5, tp, tp
                  sltiu      sp, s2, 458
                  c.add      s6, t1
                  c.and      a5, a0
                  nop
995:              c.jr x6
sub_3:            csrrwi     s9, 0x340, 24
                  bne        s11, zero, sub_3_stack_p
sub_3_stack_p:    addi       a4, a4, -40
                  c.sub      a2, a0
                  sw         t1, 4(a4)
                  c.lui      s10, 25
                  c.addi16sp sp, 304
                  la         sp, region_0+2582 #start riscv_load_store_rand_instr_stream_1
                  c.nop
                  lb         t3, -15(sp)
                  c.ebreak;c.nop;
                  sh         t1, 12(sp)
                  add        s0, s6, t2
                  sw         s8, -18(sp)
                  lbu        s6, 59(sp)
                  sb         s0, 11(sp)
                  mul        tp, s2, s6
                  fence
                  csrrw      a2, 0x340, t0
                  sub        a7, s9, a1
                  lhu        tp, -38(sp)
                  xor        t2, a0, s7
                  lbu        t4, 52(sp)
                  sh         a4, 10(sp)
                  lb         t2, 16(sp)
                  sb         a4, 1(sp)
                  fence.i
                  ori        s4, gp, 714
                  lb         s8, -29(sp)
                  lhu        tp, 26(sp)
                  sb         s1, 15(sp)
                  sh         t5, 52(sp)
                  lbu        a7, 61(sp)
                  sb         a7, -41(sp)
                  srl        s2, tp, a4
                  lbu        tp, -38(sp)
                  sb         a5, 35(sp) #end riscv_load_store_rand_instr_stream_1
                  addi       s4, zero, -4 #init loop 0 counter
                  ori        t1, t1, 294
                  addi       t3, zero, 10 #init loop 0 limit
                  auipc      a6, 931607
sub_3_9_0_t:      or         sp, s0, t5
                  addi       s4, s4, 7 #update loop 0 counter
                  c.sub      s0, s0
                  beq        s4, t3, sub_3_9_0_t #branch for loop 0
                  mul        t4, s1, s2
                  la         s6, region_1+6409 #start load_store_instr_stream_1
                  lbu        s8, -14(s6)
                  la         t2, region_0+3634 #start load_store_instr_stream_0
                  lbu        tp, 54(s6)
                  lbu        t0, 245(t2)
                  lhu        s9, -208(t2)
                  lb         s5, 18(s6)
                  lhu        s1, -29(s6)
                  lhu        tp, 230(t2)
                  lb         s9, -56(s6)
                  lhu        tp, 0(t2)
                  lbu        s2, -23(t2)
                  sb         zero, 28(s6)
                  lb         a3, 0(s6) #end load_store_instr_stream_1
                  lbu        s7, -192(t2)
                  lbu        t0, -9(t2)
                  sb         s7, -245(t2)
                  sb         s9, -204(t2)
                  sb         s6, -33(t2) #end load_store_instr_stream_0
sub_3_3:          jal        t1, 21f
0:                c.j        24f
1:                c.j        13f
2:                jal        s10, 5f
3:                jal        s11, 1b
4:                c.jal      28f
5:                c.j        9f
6:                c.jal      20f
7:                jal        ra, 4b
8:                jal        ra, 2b
9:                c.jal      29f
10:               c.jal      7b
11:               c.j        16f
12:               c.j        27f
13:               c.jal      15f
14:               c.j        19f
15:               c.jal      17f
16:               c.jal      0b
17:               jal        s7, 6b
18:               jal        ra, 23f
19:               jal        ra, 3b
20:               c.j        12b
21:               c.jal      25f
22:               c.j        18b
23:               c.jal      26f
24:               c.j        22b
25:               jal        ra, 10b
26:               jal        ra, 8b
27:               c.j        11b
28:               c.jal      14b
29:               csrrwi     t1, 0x340, 0
                  la         s0, region_1+14717 #start load_store_instr_stream_0
                  la         t3, region_1+12154 #start load_store_instr_stream_2
                  la         a6, region_1+5391 #start load_store_instr_stream_3
                  lbu        t4, -80(a6)
                  la         s11, region_1+4219 #start load_store_instr_stream_1
                  lw         s8, 13(s11)
                  lw         s9, -26(t3)
                  lbu        s1, 170(a6)
                  lbu        s6, -14(s11)
                  lb         sp, -15(s11)
                  lb         ra, 130(a6)
                  sb         a5, 46(s0)
                  lb         zero, 15(t3)
                  sh         sp, -60(t3)
                  sw         tp, 211(s0)
                  lbu        t0, -13(s11)
                  sb         zero, -9(s11)
                  lhu        t2, 1(s11)
                  lw         s8, 11(s0)
                  lb         s7, 33(t3)
                  lbu        s6, -8(t3)
                  lb         zero, 1(s11)
                  lbu        s4, 61(t3) #end load_store_instr_stream_2
                  lh         s4, 139(s0)
                  lhu        s2, -229(a6)
                  lh         a2, -5(s11)
                  lbu        s10, -248(a6) #end load_store_instr_stream_3
                  sb         s8, -22(s0)
                  lbu        gp, -7(s11) #end load_store_instr_stream_1
                  sb         gp, 36(s0) #end load_store_instr_stream_0
sub_3_2:          jal        t1, 20f
0:                c.jal      9f
1:                jal        ra, 22f
2:                c.j        12f
3:                jal        ra, 14f
4:                c.j        10f
5:                c.j        13f
6:                c.jal      4b
7:                c.jal      17f
8:                c.jal      1b
9:                c.jal      16f
10:               c.j        3b
11:               jal        ra, 8b
12:               c.jal      18f
13:               jal        ra, 11b
14:               c.j        5b
15:               jal        t1, 2b
16:               jal        tp, 6b
17:               c.jal      21f
18:               c.jal      19f
19:               c.jal      7b
20:               jal        ra, 15b
21:               c.j        0b
22:               c.lui      gp, 21
                  la         ra, region_2+566 #start riscv_load_store_rand_instr_stream_0
                  lb         s10, 0(ra)
                  c.xor      a5, a4
                  csrrsi     t5, 0x340, 6
                  sub        t3, a2, s0
                  c.or       a2, s1
                  .4byte 0x00100073 # ebreak
                  mulhsu     t4, t2, s5
                  lw         s9, -2(ra)
                  lw         s11, 2(ra)
                  sll        s7, ra, a4
                  c.lui      s6, 22
                  lb         s1, 13(ra)
                  c.and      a5, a1
                  csrrwi     t0, 0x340, 19
                  mulhu      s11, a1, a0
                  slti       s3, tp, -851
                  c.sub      s1, a2
                  auipc      gp, 70039
                  sb         a3, -1(ra)
                  lhu        a7, -8(ra)
                  lbu        a3, -10(ra)
                  csrrc      a5, 0x340, a7
                  mulhu      tp, t2, s6
                  csrrci     a2, 0x340, 19
                  addi       t3, t2, -663
                  sb         a5, 9(ra)
                  sb         a7, -5(ra)
                  addi       tp, t5, 305
                  c.addi16sp sp, -16
                  sltiu      a1, s0, 326
                  c.or       s0, a2
                  sh         s4, 6(ra)
                  c.addi     s7, 21
                  lbu        a2, 7(ra)
                  lb         t4, -1(ra)
                  srli       sp, s6, 16
                  mulh       t3, s1, a2
                  sb         a5, 3(ra)
                  sb         a3, 16(ra)
                  lb         zero, -15(ra)
                  sra        a7, t4, s2
                  c.ebreak;c.nop;
                  sll        a1, t5, s5
                  sltu       gp, s6, s7
                  lb         s11, 13(ra) #end riscv_load_store_rand_instr_stream_0
                  la         s8, region_3+89 #start load_store_instr_stream_1
                  la         s3, region_4+986 #start load_store_instr_stream_2
                  lbu        a3, -64(s8)
                  la         t4, region_1+6476 #start load_store_instr_stream_3
                  sb         a5, 23(s3)
                  sb         t5, 37(t4)
                  la         tp, region_0+3010 #start load_store_instr_stream_0
                  sh         a5, 16(s3)
                  lh         t0, -60(tp)
                  lbu        ra, -55(s3)
                  lb         s4, -575(tp)
                  sh         zero, -1320(tp)
                  lh         a7, -6(s3)
                  sb         a7, -852(tp)
                  lb         s9, 230(s8)
                  sb         s5, 176(s8)
                  sh         s11, -466(tp)
                  lh         zero, -60(t4)
                  lb         a3, 33(s3)
                  lbu        a1, -44(s8)
                  lb         s9, -6(s3)
                  lbu        zero, -12(s8) #end load_store_instr_stream_1
                  lb         s11, -23(s3) #end load_store_instr_stream_2
                  sw         gp, -40(t4)
                  lb         s10, -1231(tp)
                  lhu        t0, -264(tp)
                  lhu        s7, 18(t4)
                  lb         t5, -45(t4) #end load_store_instr_stream_3
                  sb         a6, -794(tp) #end load_store_instr_stream_0
                  la         s6, region_0+2082 #start load_store_instr_stream_1
                  lbu        t1, -30(s6)
                  la         sp, region_0+3837 #start load_store_instr_stream_0
                  sw         tp, 243(sp)
                  sb         a0, 213(sp)
                  lbu        t5, -21(s6)
                  lb         gp, -5(s6)
                  sb         s0, 44(s6)
                  lb         t2, 32(sp)
                  sb         s0, -5(s6)
                  lb         a7, 56(s6)
                  lbu        t0, -1(s6)
                  lh         ra, -67(sp)
                  sb         t4, 196(sp)
                  lhu        s1, 48(s6)
                  lb         t4, -42(s6)
                  lbu        t3, -171(sp)
                  lbu        s1, 59(s6) #end load_store_instr_stream_1
                  lb         ra, -228(sp) #end load_store_instr_stream_0
                  la         sp, region_3+275 #start riscv_hazard_instr_stream_1
                  c.or       s0, s0
                  sw         tp, -231(sp)
                  lw         tp, -55(sp)
                  lbu        a7, 212(sp)
                  rem        t2, t0, s6
                  csrrsi     a7, 0x340, 30
                  lbu        t2, -213(sp)
                  lbu        a7, 198(sp)
                  c.mv       s6, s6
                  lbu        t0, 72(sp)
                  lh         tp, 51(sp)
                  csrrsi     s6, 0x340, 5
                  lb         a7, -145(sp)
                  lb         tp, -42(sp)
                  sb         t2, -10(sp)
                  fence
                  lbu        a7, -72(sp)
                  lh         s6, -139(sp)
                  csrrci     tp, 0x340, 31
                  csrrsi     t0, 0x340, 19
                  sh         s0, 223(sp)
                  mulhu      a7, tp, t2
                  sb         s6, -72(sp)
                  remu       tp, t0, a7
                  csrrw      a7, 0x340, tp
                  slli       s0, s0, 26
                  lbu        s6, -138(sp)
                  ori        a7, s6, 351
                  sb         s6, -188(sp)
                  lbu        tp, 228(sp)
                  lbu        s6, 9(sp)
                  sub        tp, t2, t0
                  andi       tp, s6, 994
                  lbu        s6, 113(sp)
                  c.and      s0, s0
                  sb         t2, 167(sp)
                  csrrwi     s6, 0x340, 1
                  lbu        t2, -50(sp)
                  lb         s6, -234(sp) #end riscv_hazard_instr_stream_1
                  slli       a7, sp, 12
                  mul        a2, a5, gp
                  la         s6, region_1+11632 #start riscv_hazard_instr_stream_0
                  lb         s1, 220(s6)
                  lb         zero, -219(s6)
                  lb         gp, 69(s6)
                  c.and      s1, s1
                  c.xor      s1, s1
                  sll        zero, ra, t4
                  slt        gp, ra, s4
                  sub        t4, ra, s4
                  lbu        gp, 103(s6)
                  csrrwi     zero, 0x340, 21
                  lbu        ra, -62(s6)
                  lb         s4, 193(s6)
                  sb         ra, 17(s6)
                  .4byte 0x00100073 # ebreak
                  mulh       s4, gp, s4
                  c.mv       gp, t4
                  sw         ra, 88(s6)
                  lb         gp, -200(s6)
                  add        s4, s1, zero
                  sb         ra, -167(s6)
                  lw         t4, 212(s6)
                  lh         s4, 216(s6)
                  sh         zero, -186(s6)
                  c.slli     gp, 10
                  c.nop
                  sh         zero, 242(s6)
                  c.or       s1, s1
                  csrrw      s1, 0x340, t4
                  sltiu      gp, ra, 160
                  sb         s1, -252(s6)
                  slti       zero, zero, -595
                  c.li       gp, -1
                  sh         s1, -46(s6)
                  sh         zero, 14(s6)
                  lb         t4, 167(s6)
                  csrrw      zero, 0x340, gp
                  lhu        gp, -194(s6)
                  xor        t4, s1, ra
                  lbu        gp, 141(s6)
                  lhu        t4, 204(s6)
                  c.srai     s1, 5
                  slti       zero, gp, -320
                  srl        s4, s4, t4
                  c.or       s1, s1
                  lbu        zero, -8(s6)
                  lb         gp, 161(s6)
                  lbu        zero, 250(s6) #end riscv_hazard_instr_stream_0
                  c.mv       a2, a0
                  mul        a6, a7, a3
                  slt        t0, a0, tp
                  csrrc      zero, 0x340, a7
                  addi       a1, s10, 666
                  mulhsu     t2, t4, s0
                  c.add      s6, a0
                  csrrsi     a1, 0x340, 1
                  fence
                  bge        s6, a5, 21f
                  csrrc      a2, 0x340, s5
                  mul        s5, t6, zero
                  bne        s9, a2, 16f
                  csrrsi     s3, 0x340, 8
16:               sll        ra, s4, a5
                  bltu       t3, t0, 19f
                  srl        s5, s0, a3
19:               auipc      zero, 832394
                  c.bnez     a3, 39f
21:               bgeu       a6, a7, 35f
                  c.add      t3, s5
                  mulhu      s8, s8, s8
                  c.bnez     a5, 44f
                  addi       a1, s8, -524
                  c.addi16sp sp, 160
                  csrrs      ra, 0x340, s0
                  xor        t5, a2, s1
                  or         t0, a4, gp
                  csrrs      s7, 0x340, s8
                  bgeu       zero, a7, 35f
                  remu       sp, a6, t4
                  ori        a1, a4, 431
                  c.lui      t2, 21
35:               c.nop
                  auipc      a3, 614508
                  c.or       s0, a5
                  c.andi     a1, 10
39:               blt        a6, s3, 41f
                  xor        t0, s2, s1
41:               rem        t2, sp, s3
                  c.li       t2, -1
                  bge        t1, a1, 44f
44:               and        s9, s8, t6
                  c.sub      a2, a3
                  rem        t1, s0, a4
                  mulh       s6, s1, sp
                  rem        t0, tp, t0
                  c.and      a1, a3
                  sltiu      s3, a6, 1003
                  sub        a2, a0, a4
                  c.or       a5, s0
                  csrrsi     sp, 0x340, 17
                  and        ra, a7, zero
                  c.mv       s1, a1
                  divu       a5, sp, gp
                  addi       t1, s7, 519
                  c.xor      a2, s0
                  mulhu      t4, ra, s10
                  nop
                  c.xor      a5, s0
                  bge        a2, s11, 79f
                  .4byte 0x00100073 # ebreak
                  c.slli     t3, 7
                  srli       a5, t2, 16
                  andi       s5, s4, 387
                  auipc      tp, 1038897
                  c.lui      s5, 6
                  fence
                  slli       s7, s4, 13
                  andi       s8, sp, 667
                  c.sub      a3, a1
                  bge        a1, s1, 83f
                  c.srli     a5, 29
                  mul        t4, s8, s2
                  rem        a2, s2, a7
                  blt        a0, t3, 89f
                  beq        s7, sp, 92f
79:               mulhsu     t2, t6, s11
                  c.srai     a3, 14
                  fence.i
                  sll        a6, a2, a7
83:               slt        t3, s1, t2
                  c.addi16sp sp, -16
                  srl        t2, s9, a4
                  c.srai     s1, 12
                  c.sub      a3, a5
                  c.ebreak;c.nop;
89:               or         s2, s6, t3
                  bne        s8, s9, 106f
                  mulhu      ra, tp, t0
92:               mulhsu     a1, a0, s8
                  csrrc      a5, 0x340, t4
                  add        s9, t0, s1
                  c.lui      s3, 11
                  c.andi     s0, -1
                  fence
                  or         s8, s5, a1
                  slt        a7, s6, s10
                  csrrw      zero, 0x340, s11
                  addi       zero, tp, 863
                  c.addi16sp sp, -16
                  .4byte 0x00100073 # ebreak
                  csrrci     t0, 0x340, 2
                  csrrc      s7, 0x340, a3
106:              csrrci     s5, 0x340, 16
                  auipc      s1, 276667
                  bltu       a7, a1, 111f
                  csrrsi     s9, 0x340, 30
                  srai       t1, t1, 19
111:              fence.i
                  add        s5, sp, t6
                  c.li       s8, 29
                  beq        s1, s7, 127f
                  csrrwi     s7, 0x340, 6
                  slli       a3, a7, 4
                  .4byte 0x00100073 # ebreak
                  beq        a5, t6, 120f
                  c.and      s0, a0
120:              xor        s8, t4, gp
                  remu       s2, s11, a5
                  bgeu       s8, s9, 131f
                  or         t3, s3, s3
                  c.add      s11, s3
                  c.sub      s1, a2
                  slli       t0, s2, 30
127:              c.sub      a5, a0
                  c.mv       sp, s6
                  csrrsi     t0, 0x340, 28
                  csrrw      s9, 0x340, s0
131:              c.add      tp, s5
                  sltu       s2, s3, ra
                  slt        t2, gp, a4
                  csrrsi     t5, 0x340, 9
                  bge        a4, t4, 141f
                  lui        t1, 34220
                  beq        s7, a5, 143f
                  fence
                  andi       a2, s6, 4
                  mulhu      s4, s10, tp
141:              c.lui      a3, 28
                  c.addi     s2, 11
143:              div        t0, t2, a2
                  c.srli     a3, 11
                  or         t1, t2, s7
                  sltu       a6, s3, s5
                  c.li       a1, 26
                  addi       s7, s9, -124
                  mulh       s10, s4, t2
                  sltu       t3, a1, gp
                  srai       s7, zero, 19
                  c.srli     s1, 9
                  c.sub      s1, a2
                  mulhsu     s0, a5, s8
                  bne        s7, tp, 171f
                  csrrsi     s6, 0x340, 20
                  sltu       t1, a4, s3
                  mulh       s11, s6, s5
                  c.mv       tp, t0
                  csrrsi     t3, 0x340, 16
                  csrrw      ra, 0x340, a7
                  csrrsi     s11, 0x340, 17
                  ori        t3, t3, 775
                  lui        t3, 132257
                  c.bnez     s1, 172f
                  c.mv       a5, a6
                  div        ra, t0, t4
                  sltu       s8, zero, a4
                  lui        t0, 761285
                  c.xor      a1, a1
171:              srai       tp, a7, 4
172:              andi       s9, gp, -359
                  bge        t4, a5, 180f
                  addi       s6, s11, -541
                  c.xor      a3, a5
                  c.srli     s0, 6
                  c.nop
                  c.add      a1, t2
                  c.srai     a2, 3
180:              c.nop
                  mulh       sp, s1, s6
                  bne        a7, a2, 189f
                  xor        s6, s7, t2
                  rem        t4, s9, a4
                  csrrc      s5, 0x340, sp
                  div        tp, a7, s2
                  mulhsu     s1, s8, s4
                  fence
189:              c.lui      a7, 7
                  csrrci     t1, 0x340, 19
                  remu       t5, a2, s9
                  lui        t5, 381255
                  addi       a1, tp, 962
                  csrrsi     s0, 0x340, 22
                  sll        s5, t1, sp
                  sra        tp, t3, a5
                  bne        a4, s0, 203f
                  c.mv       t2, a5
                  xori       s5, s10, 778
                  csrrc      s4, 0x340, s11
                  sll        t1, a2, a6
                  sltiu      tp, s2, 465
203:              div        s0, s3, s1
                  nop
                  sltu       s3, s9, a7
                  csrrsi     a2, 0x340, 27
                  lui        a3, 278508
                  csrrwi     s3, 0x340, 20
                  ori        sp, ra, 98
                  xori       t5, a2, 631
                  csrrci     tp, 0x340, 28
                  auipc      s3, 420467
                  csrrw      a2, 0x340, s10
                  lui        ra, 276184
                  c.ebreak;c.nop;
                  ori        t2, s2, -768
                  c.mv       s3, s5
                  c.li       t5, -1
                  div        t2, s4, t3
                  c.andi     a5, 28
                  c.beqz     a1, 236f
                  sra        s9, tp, a5
                  sra        a1, t2, s3
                  srli       s1, s5, 17
                  csrrc      s11, 0x340, s0
                  mul        s2, a5, tp
                  fence.i
                  divu       s8, a5, a7
                  beq        t6, s2, 249f
                  c.add      t4, t2
                  addi       a2, zero, -2 #init loop 1 counter
                  slt        s6, s11, ra
                  fence.i
                  slti       s11, s3, 38
                  addi       a5, zero, -7 #init loop 1 limit
sub_3_8_1_t:      c.andi     s0, -1
                  mulh       t1, s4, s10
                  csrrc      t1, 0x340, t6
                  addi       a2, a2, -8 #update loop 1 counter
                  addi       tp, zero, 4 #init loop 0 counter
                  c.slli     t2, 1
                  addi       a6, zero, -11 #init loop 0 limit
sub_3_8_0_t:      mul        a1, s3, s3
                  addi       tp, tp, -4 #update loop 0 counter
                  c.addi16sp sp, 112
                  mul        s9, s0, a0
                  bge        tp, a6, sub_3_8_0_t #branch for loop 0
                  fence
                  slt        t5, t6, gp
                  xor        ra, a2, t5
                  xori       t4, s10, 194
                  bge        a2, a5, sub_3_8_1_t #branch for loop 1
                  andi       t1, s0, -475
                  nop
                  srli       sp, t1, 0
                  csrrc      s1, 0x340, s3
                  bltu       a5, a0, 247f
                  srl        s10, t0, a7
236:              mulhsu     s1, tp, a5
                  c.andi     a2, -1
                  mulhu      s2, gp, s8
                  mul        a3, s11, ra
                  c.li       t4, -1
                  slti       s8, s7, -808
                  c.nop
                  auipc      a2, 826816
                  auipc      t5, 734618
                  c.lui      s3, 29
                  remu       tp, s1, s1
247:              slti       s1, s1, 692
                  fence.i
249:              div        a7, t2, ra
                  andi       s2, s3, -168
                  divu       t4, a7, t4
                  csrrc      zero, 0x340, t3
                  bne        gp, gp, 265f
                  nop
                  lui        s10, 304904
                  c.addi16sp sp, 304
                  c.srai     s0, 31
                  c.addi16sp sp, -16
                  .4byte 0x00100073 # ebreak
                  csrrc      s10, 0x340, a0
                  csrrc      s10, 0x340, s10
                  srli       ra, t4, 15
                  mulh       s3, s2, t0
                  blt        s11, s8, 265f
265:              c.andi     a2, -1
                  bltu       a0, t5, 268f
                  c.xor      s1, a4
268:              bne        t3, tp, 281f
                  blt        t0, t1, 282f
                  auipc      t5, 7011
                  sltu       s1, s11, s5
                  c.slli     t1, 9
                  mulhu      s10, s7, a7
                  bltu       s3, a5, 276f
                  or         ra, a3, s5
276:              c.li       a7, 8
                  bltu       t4, a5, 292f
                  divu       zero, t0, s11
                  xori       s6, s10, 964
                  auipc      t2, 851064
281:              ori        s7, s8, -888
282:              c.add      s4, sp
                  c.addi16sp sp, -16
                  c.srai     a1, 1
                  csrrsi     t3, 0x340, 2
                  csrrwi     s10, 0x340, 25
                  csrrci     a1, 0x340, 13
                  fence
                  fence
                  c.lui      tp, 2
                  and        ra, zero, s0
292:              slli       s3, t2, 6
                  addi       sp, s10, 952
                  bltu       s0, s4, 296f
                  csrrc      s11, 0x340, ra
296:              c.andi     a2, -1
                  blt        s5, zero, 317f
                  nop
                  c.srai     a3, 9
                  mulhsu     s11, a1, a2
                  srl        s5, s1, sp
                  auipc      gp, 11920
                  c.ebreak;c.nop;
                  c.lui      a1, 23
                  add        s11, a2, s10
                  csrrw      s8, 0x340, gp
                  sltu       t2, sp, s9
                  .4byte 0x00100073 # ebreak
                  bge        a4, s3, 321f
                  ori        s6, t5, -264
                  mulhu      s10, t3, sp
                  slt        a1, a6, s11
                  c.addi16sp sp, -16
                  sra        sp, t3, a0
                  ori        sp, s0, 948
                  add        s8, t0, t1
317:              sltiu      gp, t0, 441
                  c.srai     a5, 15
                  c.lui      a3, 12
                  c.addi16sp sp, 64
321:              beq        s2, s4, 328f
                  c.and      a5, s0
                  div        s11, s3, t5
                  fence
                  ori        s2, ra, 466
                  bne        s11, s6, 342f
                  addi       gp, s2, 481
328:              c.addi16sp sp, 80
                  sub        zero, a1, s7
                  csrrc      s0, 0x340, a4
                  nop
                  c.and      s0, a2
                  ori        s11, s7, 579
                  csrrwi     t3, 0x340, 20
                  c.slli     s5, 15
                  c.srli     s0, 10
                  csrrsi     s4, 0x340, 0
                  c.xor      a3, s1
                  and        sp, t1, s3
                  auipc      s6, 189102
                  and        a5, t1, t1
342:              c.add      a7, t0
                  c.nop
                  c.srli     s0, 16
                  c.andi     s1, 5
                  csrrc      a2, 0x340, a7
                  fence.i
                  srl        a1, a0, t5
                  rem        sp, t6, a2
                  c.slli     gp, 30
                  bltu       s4, a4, 353f
                  c.mv       s6, sp
353:              c.sub      a1, a3
                  lui        s0, 874425
                  sra        s10, s4, t3
                  sltu       tp, zero, t3
                  srl        s11, t1, a2
                  c.and      s0, s1
                  c.sub      a2, s1
                  divu       s6, s10, ra
                  csrrc      s2, 0x340, a6
                  c.xor      a2, a2
                  csrrs      zero, 0x340, s1
                  xori       a2, t1, -501
                  fence.i
                  c.and      a5, a3
                  addi       s0, a1, -829
                  c.srai     s0, 1
                  add        s4, sp, s4
                  fence.i
                  xori       s11, a2, -298
                  mulhsu     sp, t0, t5
                  c.slli     a3, 5
                  mulhsu     t0, a5, s0
                  c.lui      tp, 21
                  c.ebreak;c.nop;
                  mulh       t3, a7, s3
                  or         a7, t5, a4
                  bltu       ra, sp, 386f
                  blt        ra, s2, 394f
                  sub        s9, a5, t2
                  srli       t1, t0, 8
                  csrrci     s10, 0x340, 19
                  srai       s2, t0, 1
                  c.addi     s8, 29
386:              lui        t0, 668596
                  c.sub      a1, a1
                  and        s6, s7, t5
                  div        s7, s0, t5
                  remu       t3, s2, t5
                  c.addi16sp sp, -16
                  bne        a1, s1, 411f
                  c.slli     s10, 11
394:              csrrsi     a5, 0x340, 19
                  srl        s9, s0, s3
                  remu       a3, s6, zero
                  lui        t0, 65377
                  bge        a5, s10, 404f
                  c.xor      s0, a2
                  sll        s7, t3, ra
                  .4byte 0x00100073 # ebreak
                  slli       a6, a0, 7
                  bge        s7, s6, 423f
404:              and        t5, t4, gp
                  bltu       s4, tp, 422f
                  add        s5, t5, tp
                  c.beqz     a3, 410f
                  csrrs      a6, 0x340, t3
                  c.ebreak;c.nop;
410:              lui        t0, 597202
411:              csrrs      s7, 0x340, s11
                  c.li       s6, 27
                  xori       s7, a0, -803
                  csrrs      zero, 0x340, s2
                  divu       t1, t0, t5
                  add        a5, s6, zero
                  sltu       s7, t5, s9
                  fence
                  andi       sp, s6, 934
                  mulh       sp, s10, s5
                  c.mv       s9, s1
422:              c.addi     s5, 12
423:              div        a7, a3, a3
                  rem        a2, s6, a4
                  c.and      s1, a3
                  slt        ra, t6, t2
                  addi       a3, t0, -147
                  divu       t3, s7, s4
                  lui        t5, 287297
                  csrrsi     s8, 0x340, 12
                  remu       s7, s0, s1
                  bne        a1, sp, 433f
433:              c.srli     a3, 26
                  bge        a4, s5, 448f
                  bgeu       s11, s7, 441f
                  c.sub      s1, s0
                  slli       t5, s6, 12
                  xor        a2, s11, s9
                  c.nop
                  c.bnez     s1, 450f
441:              csrrwi     s11, 0x340, 8
                  bge        s11, sp, 449f
                  csrrs      s1, 0x340, a3
                  auipc      a2, 931461
                  csrrwi     t5, 0x340, 27
                  c.or       a2, s0
                  csrrsi     a3, 0x340, 27
448:              srl        s7, a7, a6
449:              csrrwi     s1, 0x340, 20
450:              c.srai     a3, 5
                  fence
                  addi       gp, t3, -413
                  and        zero, a2, a5
                  xori       t1, s10, 224
                  c.srli     a3, 7
                  beq        a1, s10, 465f
                  c.li       t1, 29
                  slt        tp, gp, s6
                  ori        a1, s2, 683
                  .4byte 0x00100073 # ebreak
                  sra        s4, s2, a0
                  c.slli     t2, 4
                  slli       s1, s4, 15
                  csrrc      s11, 0x340, a2
465:              csrrci     s0, 0x340, 31
                  slti       t4, t5, -401
                  csrrsi     s9, 0x340, 31
                  .4byte 0x00100073 # ebreak
                  c.xor      a1, a4
                  c.ebreak;c.nop;
                  slt        a2, s9, s5
                  blt        s8, ra, 478f
                  nop
                  beq        t1, a0, 478f
                  xor        s6, s3, gp
                  remu       s5, s9, t3
                  fence
478:              bge        a7, a5, 494f
                  c.sub      a5, a1
                  addi       a3, s3, -800
                  rem        a7, s2, t1
                  mulh       s6, a4, t0
                  mul        t4, a1, t5
                  csrrw      a3, 0x340, t3
                  bne        ra, ra, 495f
                  sltu       a3, s7, s2
                  bltu       s3, s11, 499f
                  c.li       s7, 20
                  c.ebreak;c.nop;
                  c.srli     a5, 22
                  c.andi     a3, -1
                  div        t5, a0, s10
                  sltiu      a2, a2, -403
494:              c.mv       s11, s1
495:              slli       zero, s2, 4
                  auipc      s4, 535339
                  bgeu       t6, a1, 498f
498:              bge        a4, s11, 499f
499:              c.mv       a5, a0
                  c.add      s1, sp
                  c.addi     t2, -1
                  slti       s6, s10, 902
                  remu       ra, ra, s4
                  csrrsi     s10, 0x340, 0
                  sra        s6, a7, s10
                  ori        sp, s10, -987
                  c.sub      a3, a1
                  c.slli     s10, 4
                  xori       s11, s2, -202
                  auipc      t4, 851300
                  csrrw      sp, 0x340, s1
                  c.bnez     a2, 529f
                  csrrw      a1, 0x340, t0
                  c.srai     s0, 6
                  addi       s4, t4, -586
                  mul        a1, a3, t6
                  c.or       s0, s0
                  c.sub      s0, a2
                  .4byte 0x00100073 # ebreak
                  xor        t0, t5, s9
                  c.srli     a5, 2
                  ori        s2, a5, -855
                  c.addi     t1, 15
                  sub        s2, sp, s0
                  c.mv       ra, t1
                  sub        a3, a7, s9
                  beq        s6, s1, 539f
                  mulhu      t1, s6, a4
529:              xori       s3, s8, 262
                  mul        t1, s2, t3
                  slti       s9, s4, 367
                  bne        tp, s9, 551f
                  c.sub      a3, s1
                  bne        t0, s11, 544f
                  c.xor      a2, a3
                  bge        sp, a0, 537f
537:              c.li       s11, 28
                  xor        t0, a3, t2
539:              div        sp, s10, t0
                  csrrwi     s4, 0x340, 22
                  mulhsu     t3, s4, s5
                  andi       sp, zero, 542
                  sub        ra, s9, a5
544:              c.lui      t3, 7
                  csrrw      s6, 0x340, s9
                  c.and      a1, a3
                  slt        a6, a7, s8
                  csrrci     s11, 0x340, 1
                  andi       s1, s8, -372
                  mulhsu     t1, a3, a2
551:              c.slli     a5, 20
                  mul        gp, s2, s3
                  c.sub      a3, a4
                  div        s11, sp, gp
                  divu       t4, s5, gp
                  bltu       a4, s7, 569f
                  c.bnez     s1, 577f
                  add        s11, t3, sp
                  andi       s2, s9, 95
                  c.addi     gp, 11
                  sra        s5, t3, t6
                  sra        t3, a4, t5
                  rem        t0, t6, s11
                  fence.i
                  bne        s9, s0, 577f
                  fence
                  fence
                  add        s8, ra, s1
569:              rem        a7, gp, s8
                  rem        s0, s2, t6
                  auipc      zero, 75534
                  sltiu      s5, a5, -410
                  fence.i
                  sll        sp, gp, s1
                  csrrwi     s6, 0x340, 12
                  slt        a7, ra, t2
577:              srl        t0, sp, sp
                  bne        s11, t6, 591f
                  slt        a1, a4, a5
                  auipc      s4, 44455
                  srl        a5, s8, s9
                  slt        a5, t6, zero
                  c.beqz     s0, 599f
                  c.li       s2, 15
                  c.slli     gp, 6
                  sra        s1, s0, sp
                  mul        s4, t4, a0
                  nop
                  lui        zero, 627398
                  bltu       gp, t5, 592f
591:              bltu       t4, s2, 605f
592:              and        s10, s10, s2
                  c.srli     s1, 18
                  lui        s4, 748309
                  mulh       s3, s0, s8
                  csrrw      a1, 0x340, t1
                  c.lui      s9, 21
                  c.and      a3, a0
599:              fence
                  mul        t0, gp, s3
                  c.sub      a3, a1
                  bne        sp, a7, 604f
                  c.lui      t0, 17
604:              .4byte 0x00100073 # ebreak
605:              blt        tp, t0, 614f
                  mulhu      a7, s2, sp
                  add        s5, gp, a4
                  srli       s0, t2, 20
                  csrrs      s4, 0x340, t2
                  c.ebreak;c.nop;
                  bgeu       s6, a7, 615f
                  c.mv       sp, s8
                  divu       s6, s7, s3
614:              csrrs      t4, 0x340, t6
615:              c.mv       t1, a4
                  or         s7, t1, s8
                  c.srai     a1, 25
                  bltu       s1, s5, 624f
                  c.lui      a5, 30
                  fence
                  and        a6, a3, zero
                  srl        a5, s11, t1
                  mulhu      s4, s7, s6
624:              nop
                  c.and      a1, a4
                  bne        t3, s4, 628f
                  c.ebreak;c.nop;
628:              beq        a2, sp, 630f
                  fence
630:              c.lui      s9, 14
                  xori       s10, t1, 928
                  sub        t0, tp, t2
                  csrrwi     gp, 0x340, 4
                  c.ebreak;c.nop;
                  c.mv       t4, t5
                  add        t1, s5, t3
                  c.addi     tp, 23
                  divu       a7, t6, a2
                  nop
                  addi       t0, s10, 30
                  and        s4, s7, sp
                  c.addi     ra, 14
                  c.ebreak;c.nop;
                  la         a6, sub_4
                  mulh       s0, t2, t4
                  mulh       ra, s6, ra
                  c.andi     a5, -1
                  c.add      t4, s8
                  slli       s6, s7, 28
                  and        s9, t0, s10
                  addi       a6, a6, -522
                  mulhu      t4, s6, s5
                  bge        s1, t5, j_sub_3_sub_4_6 #branch to jump instr
                  c.slli     s3, 14
j_sub_3_sub_4_6:  jalr       t1, a6, 522
                  c.or       s0, a0
                  and        s6, zero, s4
                  ori        s3, s7, -789
                  c.nop
                  xor        sp, t0, s10
                  c.xor      s1, a1
                  .4byte 0x00100073 # ebreak
                  rem        s9, a7, s1
                  c.and      a1, s1
                  sltu       t4, s8, a1
                  c.addi16sp sp, 176
                  c.mv       ra, s2
                  mulhsu     a7, s7, a4
                  div        tp, gp, a1
                  c.srli     a1, 1
                  c.xor      a3, a4
                  xori       t5, a0, -794
                  csrrsi     s5, 0x340, 2
                  c.sub      a2, a4
                  c.beqz     s1, 670f
                  addi       s4, a6, -181
                  beq        a2, t4, 685f
                  beq        a2, a2, 673f
                  fence
                  csrrc      s10, 0x340, a4
                  sltu       t5, a3, s7
670:              nop
                  andi       t1, a7, -57
                  div        s3, t2, a7
673:              xor        t3, s9, t4
                  blt        s2, s10, 687f
                  lui        gp, 218173
                  mulhsu     a6, s7, s0
                  xor        s4, a2, a3
                  c.andi     s1, -1
                  nop
                  remu       s10, tp, t4
                  c.bnez     a3, 687f
                  xor        tp, a4, sp
                  c.xor      s1, a5
                  slli       s6, s3, 15
685:              remu       s3, s10, s10
                  remu       t4, s2, s0
687:              slt        a2, s6, t1
                  lw         t1, 4(a4)
                  slli       t3, s5, 6
                  addi       a4, a4, 40
                  c.ebreak;c.nop;
                  c.add      a1, s7
1060:             c.jr x6
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

init_machine_mode:
                  li x22, 0x141800
                  csrw 0x300, x22 # MSTATUS
                  li x22, 0x0
                  csrw 0x304, x22 # MIE
                  mret
.data
.pushsection .tohost,"aw",@progbits;
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.popsection;
.pushsection .region_0,"aw",@progbits;
region_0:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.popsection;
.pushsection .region_1,"aw",@progbits;
region_1:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.popsection;
.pushsection .region_2,"aw",@progbits;
region_2:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.popsection;
.pushsection .region_3,"aw",@progbits;
region_3:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.popsection;
.pushsection .region_4,"aw",@progbits;
region_4:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.popsection;
.align 4;
.pushsection .user_stack,"aw",@progbits;
.align 12
_user_stack_start:
.rept 4999
.4byte 0x0
.endr
_user_stack_end:
.4byte 0x0
.popsection;
_kernel_instr_start: .align 12
.text
.align 12
mtvec_handler:    
                  csrrw x14, 0x340, x14
                  add x14, x31, zero
                  1: addi x14, x14, -124
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  csrr x22, 0x300 # MSTATUS
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 31
                  bne x22, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x22, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x22, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x22, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x22, x5, ecall_handler
                  li x5, 0x1
                  beq x22, x5, instr_fault_handler
                  li x5, 0x5
                  beq x22, x5, load_fault_handler
                  li x5, 0x7
                  beq x22, x5, store_fault_handler
                  li x5, 0xc
                  beq x22, x5, pt_fault_handler
                  li x5, 0xd
                  beq x22, x5, pt_fault_handler
                  li x5, 0xf
                  beq x22, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: jal x1, test_done 

ebreak_handler:   
                  csrr  x22, mepc
                  addi  x22, x22, 4
                  csrw  mepc, x22
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 124
                  add x31, x14, zero
                  csrrw x14, 0x340, x14
                  mret

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  j write_tohost
illegal_instr_handler:
                  csrr  x22, mepc
                  addi  x22, x22, 4
                  csrw  mepc, x22
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 124
                  add x31, x14, zero
                  csrrw x14, 0x340, x14
                  mret

instr_fault_handler:
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 124
                  add x31, x14, zero
                  csrrw x14, 0x340, x14
                  mret

load_fault_handler:
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 124
                  add x31, x14, zero
                  csrrw x14, 0x340, x14
                  mret

store_fault_handler:
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 124
                  add x31, x14, zero
                  csrrw x14, 0x340, x14
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 124
                  add x31, x14, zero
                  csrrw x14, 0x340, x14
                  mret;

_kernel_instr_end: nop
.pushsection .kernel_stack,"aw",@progbits;
.align 12
_kernel_stack_start:
.rept 3999
.4byte 0x0
.endr
_kernel_stack_end:
.4byte 0x0
.popsection;
