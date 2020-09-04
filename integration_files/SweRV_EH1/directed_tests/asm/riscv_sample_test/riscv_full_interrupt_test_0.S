.include "user_define.h"
.globl _start
.section .text
_start:
                  li x0, 0xbddae313
                  li x1, 0x7
                  li x2, 0x80000000
                  li x3, 0xfb9c2a80
                  li x4, 0xd
                  li x5, 0xe
                  li x6, 0x79c3d1d2
                  li x7, 0x5421259c
                  li x8, 0xfdd11d0f
                  li x9, 0x0
                  li x10, 0xf
                  li x11, 0xf2f66572
                  li x12, 0xa
                  li x13, 0xf44fde72
                  li x14, 0x80000000
                  li x15, 0xf9af6978
                  li x16, 0xb
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0xf
                  li x21, 0x936e2ea1
                  li x22, 0x0
                  li x23, 0xf2a7a964
                  li x24, 0x30a21007
                  li x25, 0x6
                  li x26, 0x2
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0xf
                  li x30, 0x80000000
                  li x31, 0x0
                  li x24, 0x40001104
                  csrw misa, x24
kernel_sp:        
                  la x7, _kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, _init
                  csrw mepc, x24
                  j init_machine_mode

_init:            
                  la x2, _user_stack_end
_main:            addi       a4, zero, -7 #init loop 1 counter
                  csrrc      s9, 0x340, zero
                  addi       s5, zero, -17 #init loop 1 limit
                  div        zero, s8, a1
main_42_1_t:      remu       s9, t4, s9
                  addi       a4, a4, -10 #update loop 1 counter
                  csrrc      t0, 0x340, t2
                  addi       a3, zero, 0 #init loop 0 counter
                  addi       s2, zero, 7 #init loop 0 limit
                  andi       a7, sp, 596
                  c.and      s1, a0
main_42_0_t:      c.add      s10, s3
                  addi       a3, a3, 5 #update loop 0 counter
                  ori        ra, zero, 771
                  sll        s9, s6, t3
                  csrrci     tp, 0x340, 24
                  bltu       a3, s2, main_42_0_t #branch for loop 0
                  rem        a5, a2, t0
                  csrrc      a2, 0x340, s10
                  beq        a4, s5, main_42_1_t #branch for loop 1
                  sub        s8, s10, zero
                  la         a7, region_3+299 #start load_store_instr_stream_1
                  la         t3, region_3+478 #start load_store_instr_stream_2
                  la         s9, region_3+437 #start load_store_instr_stream_0
                  lb         t5, -19(a7)
                  lbu        a0, -62(a7)
                  sb         s11, -416(t3)
                  sb         s10, 56(s9)
                  lb         a2, -18(a7)
                  lb         a3, 3(s9)
                  sb         s4, -22(a7)
                  lbu        a3, -56(a7)
                  lhu        t1, -192(t3)
                  lbu        a4, 22(s9)
                  sh         s5, 63(a7)
                  lh         s1, 57(a7)
                  lb         s3, -415(t3)
                  sw         s0, 39(s9)
                  lbu        s3, -167(t3)
                  lbu        s1, 38(a7)
                  lw         ra, -23(a7)
                  sb         a3, -145(t3)
                  lbu        t0, 62(a7) #end load_store_instr_stream_1
                  sb         a1, -379(t3) #end load_store_instr_stream_2
                  lbu        a1, 43(s9)
                  sh         a4, 47(s9) #end load_store_instr_stream_0
                  la         s1, region_0+965 #start load_store_instr_stream_1
                  la         a7, region_0+2573 #start load_store_instr_stream_0
                  lhu        s7, -1(s1)
                  lb         a5, 14(s1)
                  lbu        s10, 11(s1)
                  lb         ra, -25(a7)
                  sb         ra, -12(s1)
                  lb         tp, 52(a7)
                  lbu        s10, -3(s1)
                  sh         t0, -3(s1)
                  lb         ra, -2(s1)
                  sb         t3, -46(a7)
                  sb         s0, -3(s1)
                  sb         t5, 11(s1)
                  sb         s6, 2(a7)
                  sh         s9, -13(s1) #end load_store_instr_stream_1
                  sh         zero, 1(a7) #end load_store_instr_stream_0
                  la         t4, region_0+3832 #start load_store_instr_stream_1
                  lb         a5, -7(t4)
                  la         t1, region_1+10764 #start load_store_instr_stream_0
                  sw         t2, 12(t4)
                  lbu        s0, 15(t1)
                  lb         a5, 1783(t1)
                  sb         s5, 12(t4)
                  sb         a5, -15(t4)
                  lb         s11, 469(t1)
                  sb         tp, -1288(t1)
                  sb         tp, 369(t1)
                  lb         s2, 6(t4)
                  lbu        t0, -9(t4)
                  lbu        tp, 3(t4)
                  sb         s7, 1633(t1)
                  lb         s5, -7(t4)
                  lhu        zero, 4(t4)
                  lh         s8, -16(t4) #end load_store_instr_stream_1
                  lbu        s3, 815(t1) #end load_store_instr_stream_0
                  addi       t1, zero, -4 #init loop 1 counter
                  addi       ra, zero, 3 #init loop 1 limit
main_40_1_t:      c.xor      a5, a0
                  addi       t1, t1, 3 #update loop 1 counter
                  addi       s1, zero, -8 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
main_40_0_t:      c.and      a5, a3
                  addi       s1, s1, 8 #update loop 0 counter
                  c.bnez     s1, main_40_0_t #branch for loop 0
                  blt        t1, ra, main_40_1_t #branch for loop 1
                  ori        a4, t3, 879
                  addi       s9, zero, -1 #init loop 1 counter
                  mul        s1, gp, t4
                  csrrc      t3, 0x340, zero
                  addi       t6, zero, 13 #init loop 1 limit
                  lui        a6, 83254
                  or         s10, a2, s7
                  or         zero, a4, s7
main_41_1_t:      add        s2, ra, a2
                  addi       s11, ra, -772
                  addi       s9, s9, 8 #update loop 1 counter
                  csrrs      s10, 0x340, t4
                  fence.i
                  andi       a4, t3, 884
                  addi       ra, zero, 2 #init loop 0 counter
                  srl        a7, t3, a0
                  divu       t3, a4, a6
                  addi       s7, zero, -14 #init loop 0 limit
main_41_0_t:      mulhu      t3, a5, s9
                  slt        t1, a1, a4
                  addi       ra, ra, -8 #update loop 0 counter
                  beq        ra, s7, main_41_0_t #branch for loop 0
                  xor        s3, t5, a7
                  c.srai     a5, 1
                  c.mv       s5, t0
                  bltu       s9, t6, main_41_1_t #branch for loop 1
                  csrrci     a3, 0x340, 4
main_15:          jal        s11, 19f
0:                c.jal      4f
1:                c.j        8f
2:                c.jal      7f
3:                c.jal      16f
4:                jal        ra, 14f
5:                c.j        13f
6:                jal        ra, 3b
7:                c.j        15f
8:                c.jal      11f
9:                jal        ra, 6b
10:               c.j        2b
11:               jal        t1, 20f
12:               c.j        1b
13:               c.j        17f
14:               c.jal      12b
15:               jal        t1, 9b
16:               c.jal      18f
17:               c.jal      0b
18:               jal        ra, 5b
19:               c.jal      10b
20:               c.xor      s1, s1
                  la         ra, region_3+473 #start load_store_instr_stream_1
                  la         s6, region_4+924 #start load_store_instr_stream_2
                  sh         s2, -129(ra)
                  sb         t5, -326(s6)
                  la         a6, region_1+4160 #start load_store_instr_stream_0
                  lbu        a7, 29(a6)
                  lhu        a2, -249(ra)
                  lb         s4, 1578(s6)
                  sh         s5, -10(a6)
                  lbu        s10, -578(s6)
                  sh         a2, -12(a6)
                  sh         s8, 15(ra)
                  lb         tp, -1(a6)
                  lh         t3, -384(s6)
                  lb         s7, 45(a6)
                  sb         s9, -256(ra)
                  lbu        tp, 1087(s6)
                  sh         sp, 22(a6)
                  sb         s10, 233(s6)
                  lbu        s8, -246(ra)
                  sb         s5, -41(a6)
                  lw         s3, 24(a6)
                  lhu        t6, -217(ra) #end load_store_instr_stream_1
                  sh         s5, 2(a6)
                  lbu        a7, 870(s6) #end load_store_instr_stream_2
                  lbu        a1, 20(a6) #end load_store_instr_stream_0
                  la         s11, region_1+15364 #start riscv_hazard_instr_stream_7
                  lb         a7, 337(s11)
                  sb         a0, 138(s11)
                  lb         a6, 219(s11)
                  addi       s0, s1, 503
                  lbu        a7, -1764(s11)
                  lbu        a0, -633(s11)
                  sb         a7, -1313(s11)
                  lbu        s0, -530(s11)
                  add        s1, s1, a7
                  c.mv       a7, a0
                  lbu        a0, 11(s11)
                  sb         t4, -773(s11)
                  c.srai     a0, 3
                  divu       s1, a0, a6
                  sb         a6, 108(s11)
                  lh         s1, -1886(s11)
                  c.mv       s1, s1
                  mulh       s1, s0, a6
                  and        a7, s1, a6
                  rem        a6, t4, a6
                  csrrw      t4, 0x340, a0
                  lh         s0, -632(s11)
                  sb         a6, 170(s11)
                  c.srli     s1, 24
                  sb         t4, 838(s11)
                  auipc      a6, 827103
                  sb         s0, -582(s11)
                  mulh       a6, s1, s1
                  lbu        t4, -1255(s11)
                  csrrw      a7, 0x340, a7
                  lbu        a0, -651(s11)
                  lbu        t4, -312(s11)
                  c.or       a0, a0
                  lbu        a0, -1191(s11)
                  sb         s1, -708(s11) #end riscv_hazard_instr_stream_7
                  la         s7, region_4+3770 #start load_store_instr_stream_2
                  la         s9, region_4+2523 #start load_store_instr_stream_3
                  la         a6, region_4+1041 #start load_store_instr_stream_0
                  la         a5, region_4+453 #start load_store_instr_stream_4
                  lbu        s8, 56(s9)
                  lbu        a0, -5(s7)
                  lbu        t4, 135(s9)
                  sb         t5, 7(s7)
                  lbu        a1, -13(a5)
                  lb         ra, 246(s9)
                  lbu        t6, 179(s9)
                  la         tp, region_4+771 #start load_store_instr_stream_1
                  lbu        s6, -12(a5)
                  sb         s9, -77(s9)
                  lbu        a2, 100(tp)
                  lbu        a3, 46(a6)
                  lbu        t6, -178(tp)
                  lb         t0, 0(a5)
                  lhu        t5, -1(a5)
                  lbu        a1, 250(tp)
                  lb         zero, 35(tp)
                  lw         s3, 35(a6)
                  sb         a1, -59(s9)
                  sb         s4, 9(s7)
                  lhu        a0, 61(tp)
                  sb         a1, 3(s7)
                  sb         s0, 12(a5)
                  lb         t1, -4(a5)
                  sb         s7, -178(tp)
                  lh         s2, 15(a5)
                  lb         zero, -222(a6)
                  lb         s6, -94(tp)
                  sb         zero, -218(s9)
                  lb         s2, 9(s7)
                  sb         ra, 55(tp)
                  lbu        s3, -10(a5)
                  sb         s0, -253(s9)
                  lw         a3, -99(tp)
                  lbu        a4, 8(s9)
                  sb         s4, -11(s7)
                  lb         s4, 90(a6)
                  sb         a0, -10(a5) #end load_store_instr_stream_4
                  lb         s10, 5(a6)
                  lb         t4, 248(s9) #end load_store_instr_stream_3
                  lbu        s10, 239(tp) #end load_store_instr_stream_1
                  sh         a4, 12(s7)
                  lb         t3, -5(s7) #end load_store_instr_stream_2
                  lbu        s10, 26(a6) #end load_store_instr_stream_0
                  la         a3, region_3+494 #start riscv_hazard_instr_stream_3
                  sh         s4, -38(a3)
                  c.slli     s4, 28
                  lbu        a4, -57(a3)
                  mul        s4, s4, s0
                  auipc      s4, 895480
                  xori       a4, s0, 781
                  lbu        s7, -14(a3)
                  lbu        s7, -8(a3)
                  srl        s4, a7, s4
                  c.addi     s7, -1
                  sh         s0, 0(a3)
                  lbu        a2, -7(a3)
                  or         a4, a4, a2
                  lb         a4, -53(a3)
                  c.srai     s0, 2
                  c.srai     s0, 8
                  csrrs      a7, 0x340, a2
                  lbu        a4, 15(a3)
                  sb         a4, 11(a3)
                  sh         s4, -2(a3)
                  lhu        a7, 4(a3)
                  lui        a4, 597178
                  divu       a4, a4, s7
                  rem        a2, a7, s4
                  lh         s0, -42(a3)
                  lbu        a7, -4(a3)
                  lh         s7, -34(a3)
                  sub        a2, s0, a2
                  divu       a4, a2, s7
                  slti       a2, a4, -46
                  divu       a7, s7, s4
                  lh         a4, -28(a3) #end riscv_hazard_instr_stream_3
                  la         a3, region_0+2535 #start load_store_instr_stream_2
                  la         s0, region_0+2783 #start load_store_instr_stream_1
                  lbu        tp, 13(a3)
                  la         s3, region_0+2532 #start load_store_instr_stream_3
                  sb         a4, -447(s0)
                  la         a1, region_0+1021 #start load_store_instr_stream_0
                  lbu        ra, 14(a3)
                  lbu        a0, -738(s0)
                  sb         gp, -3(s3)
                  sb         a2, -983(s0)
                  lbu        s7, 14(s3)
                  lbu        s6, -7(s3)
                  sb         s5, 16(a1)
                  sb         t4, 3(a3)
                  lhu        t0, -1251(s0)
                  lh         a0, -1145(s0)
                  sb         gp, 3(a3)
                  lb         t3, -5(a1)
                  sb         a0, 8(a3)
                  lb         t4, 828(s0)
                  sh         a5, 15(a3)
                  lbu        s7, 11(s3)
                  lb         t4, 15(s3) #end load_store_instr_stream_3
                  lh         s11, -5(a1)
                  lbu        s5, 756(s0)
                  lhu        s11, 5(a1)
                  sb         s0, 7(a3)
                  lbu        s2, -1000(s0) #end load_store_instr_stream_1
                  lb         ra, -2(a3)
                  lb         s4, -9(a3) #end load_store_instr_stream_2
                  lhu        a0, -13(a1) #end load_store_instr_stream_0
                  la         s3, region_2+4871 #start riscv_load_store_rand_instr_stream_1
                  sra        s5, s0, s4
                  c.and      a3, a4
                  lb         ra, -1256(s3)
                  c.nop
                  sh         t0, -411(s3)
                  sw         a6, -99(s3)
                  fence.i
                  sb         ra, 1462(s3)
                  sh         tp, 23(s3)
                  xor        s6, s9, ra
                  lhu        zero, -1373(s3)
                  csrrwi     zero, 0x340, 14
                  lui        a1, 779986
                  c.li       s9, 0
                  lb         s11, 1540(s3)
                  slli       t5, s0, 29
                  sb         t4, 1928(s3)
                  and        t3, t0, s1
                  fence
                  lbu        s0, 714(s3)
                  lb         s4, -2022(s3)
                  sh         a6, -465(s3)
                  rem        a5, a4, sp
                  xor        tp, a6, t5
                  fence
                  rem        s0, a4, a3
                  c.andi     a0, 28
                  sh         t3, 183(s3)
                  sh         s3, 471(s3)
                  xor        t5, sp, s0
                  add        t5, gp, t6
                  lhu        t1, 965(s3)
                  srl        s5, a0, s8
                  sb         zero, -922(s3)
                  csrrw      s8, 0x340, s9
                  sb         s0, -1793(s3)
                  sb         t6, -1480(s3)
                  sh         s10, -2013(s3)
                  remu       s11, t6, zero
                  csrrs      t4, 0x340, a1
                  sh         t1, 1723(s3)
                  lbu        s8, -2044(s3) #end riscv_load_store_rand_instr_stream_1
                  la         ra, region_1+2180 #start load_store_instr_stream_1
                  la         t4, region_2+5900 #start load_store_instr_stream_0
                  sh         s1, -20(ra)
                  lbu        s11, 1421(t4)
                  sb         s5, -47(ra)
                  lbu        t0, -2(ra)
                  lb         s9, -248(t4)
                  lb         a5, -491(t4)
                  lb         s3, 27(ra)
                  lb         a6, -57(ra)
                  lb         s0, 1887(t4)
                  lb         s6, 18(ra)
                  lbu        tp, 59(ra)
                  lbu        s10, 493(t4)
                  sb         s4, 4(ra)
                  sb         s4, 1700(t4)
                  sb         sp, -19(ra)
                  lbu        s4, -21(ra) #end load_store_instr_stream_1
                  sh         s11, -142(t4) #end load_store_instr_stream_0
                  la         a2, region_0+599 #start riscv_load_store_rand_instr_stream_6
                  lbu        t4, 168(a2)
                  sw         a4, 249(a2)
                  lbu        t1, -132(a2)
                  c.srli     a5, 18
                  lbu        t0, -195(a2)
                  nop
                  sb         tp, -37(a2)
                  c.nop
                  slli       t6, ra, 23
                  lbu        s5, 123(a2)
                  c.mv       s4, a6
                  lh         s0, 243(a2)
                  lbu        a5, 33(a2)
                  slli       s5, t4, 11
                  nop
                  c.lui      s8, 29
                  lbu        s11, -122(a2)
                  csrrci     a0, 0x340, 12
                  c.li       a7, -1
                  slti       t0, tp, -976
                  ori        s6, s5, 83
                  sb         a6, 42(a2)
                  auipc      zero, 158626
                  sra        s6, a7, s2
                  lbu        a7, -94(a2)
                  lbu        a7, 5(a2)
                  srl        s4, s0, gp
                  lbu        s8, -78(a2)
                  xor        s2, a3, a2
                  lbu        s10, 192(a2)
                  sltiu      a3, a7, -788
                  lb         zero, 64(a2)
                  lbu        s7, 208(a2)
                  or         s5, s11, s1
                  lhu        t3, -29(a2)
                  lbu        s7, 216(a2)
                  lbu        s8, -121(a2)
                  lb         a5, -10(a2)
                  fence.i
                  sh         ra, 239(a2)
                  rem        t5, t1, a2
                  lb         s0, 114(a2)
                  andi       t0, a3, 373
                  mulhu      t1, s3, tp
                  lb         s4, -142(a2)
                  lh         a4, -217(a2)
                  lh         t1, 203(a2)
                  lbu        s4, 216(a2) #end riscv_load_store_rand_instr_stream_6
                  addi       a2, zero, -6 #init loop 0 counter
                  rem        ra, s0, s1
                  c.add      t3, t0
                  ori        tp, tp, -557
                  csrrw      t5, 0x340, t3
                  addi       zero, zero, 0 #init loop 0 limit
main_38_0_t:      addi       s1, s7, -166
                  sra        s8, tp, s0
                  c.srli     a1, 9
                  sra        s2, s7, s11
                  c.andi     s1, -1
                  auipc      t5, 589412
                  lui        a6, 433305
                  nop
                  csrrci     s11, 0x340, 4
                  addi       a2, a2, 6 #update loop 0 counter
                  nop
                  c.nop
                  rem        t0, tp, a4
                  csrrc      s4, 0x340, s2
                  slti       s10, a7, 197
                  c.bnez     a2, main_38_0_t #branch for loop 0
                  c.andi     a0, -1
                  la         s6, region_4+3801 #start load_store_instr_stream_1
                  sh         t2, -1841(s6)
                  la         s7, region_4+173 #start load_store_instr_stream_0
                  lh         s10, 57(s7)
                  la         s11, region_4+2761 #start load_store_instr_stream_2
                  lb         s1, 10(s7)
                  sb         ra, 205(s11)
                  lbu        s3, -1512(s6)
                  lh         t0, -1875(s6)
                  lbu        a6, -234(s6)
                  lbu        a3, -25(s7)
                  sh         s3, -341(s6)
                  lb         zero, 52(s7)
                  sb         sp, -1582(s6)
                  sh         s0, 45(s11)
                  sb         sp, -1708(s6)
                  lbu        s8, 256(s11)
                  lhu        a2, -19(s7)
                  sb         t1, -38(s11)
                  sh         t1, 225(s11) #end load_store_instr_stream_2
                  lhu        t1, 25(s7)
                  lbu        s2, -542(s6)
                  lhu        a0, -153(s6) #end load_store_instr_stream_1
                  lbu        a1, 56(s7) #end load_store_instr_stream_0
                  la         a6, region_0+2403 #start load_store_instr_stream_1
                  la         s3, region_0+2570 #start load_store_instr_stream_2
                  la         a2, region_0+70 #start load_store_instr_stream_3
                  lh         a1, 1438(a2)
                  la         a0, region_0+2023 #start load_store_instr_stream_0
                  sb         t0, 667(a2)
                  lb         s11, 6(a6)
                  sh         t0, 7(a0)
                  lhu        s6, 49(a6)
                  lbu        s1, 735(a0)
                  lb         t4, -40(s3)
                  lh         s11, -46(s3)
                  lhu        s11, -1215(a0)
                  lhu        t4, 38(s3)
                  sh         a5, 34(s3)
                  lh         t0, 11(a6)
                  sh         a2, -10(s3)
                  lbu        ra, -68(a2)
                  sb         s2, -44(a6)
                  lb         s6, 1008(a0)
                  lbu        t5, -1284(a0)
                  sb         a0, 1951(a2)
                  lbu        s7, 59(s3)
                  lw         t0, 6(s3)
                  lhu        tp, 1767(a0)
                  lbu        s4, -33(s3)
                  lbu        s1, 1499(a2)
                  sb         s10, -502(a0)
                  sh         s3, -14(s3)
                  lb         s10, 1487(a2)
                  sh         t3, 1792(a2) #end load_store_instr_stream_3
                  lhu        s10, -1(a6) #end load_store_instr_stream_1
                  lb         tp, 35(s3) #end load_store_instr_stream_2
                  sb         a0, 1998(a0) #end load_store_instr_stream_0
                  la         s8, region_2+474 #start riscv_hazard_instr_stream_1
                  c.add      s5, s7
                  andi       s5, s5, 923
                  sw         t5, 2(s8)
                  and        s5, a4, a1
                  mulhu      a4, a4, t5
                  c.xor      a1, a1
                  c.add      t0, t0
                  csrrw      t0, 0x340, s5
                  lhu        s5, -10(s8)
                  c.srli     a1, 18
                  lh         a4, 2(s8)
                  lbu        a1, -1(s8)
                  csrrsi     t0, 0x340, 25
                  c.and      a4, a1
                  mul        s5, t0, t5
                  or         a1, t5, t0
                  fence.i
                  mulhsu     s7, s7, a4
                  sb         t5, 10(s8)
                  lbu        t5, -7(s8)
                  srai       s5, t0, 17
                  lbu        s7, 13(s8)
                  lb         t0, -1(s8)
                  lhu        t5, 4(s8)
                  sra        s7, s5, a1
                  xor        t0, t5, s7
                  c.or       a1, a4
                  rem        a1, s7, a4
                  sb         t5, -9(s8)
                  lhu        t0, -8(s8)
                  sub        t0, t0, t5
                  c.srai     a1, 11
                  div        s5, s7, t0
                  sltu       a4, t0, s5
                  lbu        a4, 13(s8)
                  div        a4, t0, t5
                  rem        s5, s5, s5
                  csrrwi     s5, 0x340, 12
                  sb         a4, 3(s8)
                  c.srai     a1, 17
                  mulh       t0, s7, t5
                  csrrsi     t0, 0x340, 1
                  sb         s5, 11(s8)
                  c.andi     a1, 30
                  lb         a4, -11(s8)
                  lh         s5, 16(s8) #end riscv_hazard_instr_stream_1
                  la         a2, region_0+2308 #start load_store_instr_stream_2
                  la         a0, region_1+1658 #start load_store_instr_stream_0
                  la         t3, region_3+376 #start load_store_instr_stream_1
                  la         s8, region_4+2671 #start load_store_instr_stream_3
                  sh         s6, -10(a2)
                  lb         s6, -109(t3)
                  sb         a1, -44(t3)
                  sb         gp, -48(s8)
                  lbu        t0, 5(a2)
                  lb         t5, -5(a2)
                  lb         s9, -7(a2)
                  lhu        t4, -71(s8)
                  sb         t6, -144(a0)
                  sb         a4, -176(s8)
                  lh         zero, -156(t3)
                  lb         t0, -125(s8)
                  lhu        a3, 210(a0)
                  lbu        s2, -244(s8)
                  sb         s0, -253(t3)
                  lbu        s0, 181(a0)
                  sb         a6, 2(a2)
                  sh         gp, -302(t3)
                  c.lw       s0, 4(a2)
                  lhu        a4, -4(a0)
                  sw         a6, -107(s8)
                  lbu        s4, 11(a2) #end load_store_instr_stream_2
                  lbu        s0, -370(t3)
                  lh         tp, -13(s8) #end load_store_instr_stream_3
                  lh         ra, 90(t3) #end load_store_instr_stream_1
                  lh         t0, -178(a0) #end load_store_instr_stream_0
                  la         a2, region_0+2184 #start riscv_hazard_instr_stream_0
                  or         s10, a0, s0
                  lbu        t4, 1(a2)
                  and        a0, a1, s10
                  lb         a0, -45(a2)
                  c.addi     a0, -1
                  c.addi     a1, -1
                  c.add      s10, a0
                  slli       s7, a1, 29
                  sh         a1, 54(a2)
                  lb         s7, 30(a2)
                  lb         s10, 39(a2)
                  sb         s7, 3(a2)
                  c.add      s7, t4
                  sw         s7, -16(a2)
                  sb         s7, 7(a2)
                  c.srli     s0, 17
                  srl        s0, t4, a1
                  sltu       t4, a1, t4
                  lb         s0, -51(a2)
                  remu       a1, t4, a0
                  csrrc      t4, 0x340, s0
                  mul        s10, s0, t4
                  lh         s7, -18(a2)
                  sb         s7, -49(a2)
                  sb         s7, 3(a2)
                  lb         s7, -25(a2)
                  slt        t4, s0, t4
                  lb         t4, 45(a2)
                  srai       a0, a1, 10
                  divu       s0, s10, a1
                  div        s0, t4, s10
                  lbu        a0, -41(a2)
                  lb         a1, -7(a2)
                  or         s10, s0, t4
                  csrrci     s10, 0x340, 15
                  and        a1, a1, a1
                  lb         s7, 3(a2)
                  srl        a1, s0, s10
                  divu       a1, a0, a0
                  lbu        s10, -9(a2)
                  lb         s7, 19(a2)
                  sb         a1, -63(a2) #end riscv_hazard_instr_stream_0
                  la         s7, region_0+2999 #start riscv_load_store_rand_instr_stream_8
                  csrrw      t4, 0x340, s2
                  csrrci     a1, 0x340, 28
                  sb         a6, -170(s7)
                  lhu        s3, 93(s7)
                  sb         s6, -54(s7)
                  c.nop
                  c.li       s9, 25
                  sll        s3, t3, s7
                  lb         a6, -10(s7)
                  lhu        s2, -149(s7)
                  mul        t5, a2, t6
                  c.addi     a2, -1
                  lbu        s11, -81(s7)
                  lbu        s5, 160(s7)
                  lb         s11, -254(s7)
                  sb         ra, -223(s7)
                  lui        s11, 274435
                  srli       s4, a0, 2
                  c.mv       s8, a1
                  lbu        a5, 124(s7)
                  lhu        s6, 215(s7) #end riscv_load_store_rand_instr_stream_8
                  la         a5, region_4+433 #start riscv_hazard_instr_stream_4
                  lbu        s1, -4(a5)
                  srl        a2, a7, a2
                  lbu        s1, 16(a5)
                  lh         a4, -11(a5)
                  sh         a1, 9(a5)
                  srli       a1, s1, 14
                  lbu        a1, -6(a5)
                  xori       a4, a2, 34
                  csrrsi     a7, 0x340, 27
                  c.andi     s1, -1
                  sh         a7, 13(a5)
                  sltiu      a3, a2, -828
                  div        a7, a2, s1
                  csrrs      a7, 0x340, a3
                  c.and      a3, a2
                  lb         a3, 6(a5)
                  sh         s1, -7(a5)
                  lb         a7, 16(a5)
                  lw         a1, -1(a5)
                  lhu        a2, -13(a5)
                  lhu        a3, 3(a5)
                  xor        a3, s1, a3
                  lbu        a7, 12(a5)
                  sb         a1, 16(a5)
                  lhu        a4, 7(a5)
                  c.add      a2, a3
                  lb         a2, 0(a5)
                  c.xor      a1, s1
                  lbu        a3, 9(a5)
                  sh         a3, -1(a5)
                  c.li       a2, 7
                  lhu        a7, 11(a5)
                  lb         a3, -4(a5)
                  srli       a3, a2, 7
                  sb         s1, -13(a5)
                  lb         a4, 10(a5)
                  lbu        a7, -14(a5)
                  c.or       s1, a2
                  sb         a1, -5(a5)
                  lbu        a2, -3(a5)
                  andi       a2, a7, -55
                  lb         a2, -15(a5)
                  c.li       s1, -1
                  lb         a2, 10(a5)
                  sb         a2, 1(a5)
                  lh         a4, -5(a5) #end riscv_hazard_instr_stream_4
main_16:          jal        s11, 15f
0:                c.jal      16f
1:                c.jal      6f
2:                c.j        13f
3:                jal        t0, 14f
4:                jal        s11, 19f
5:                c.j        3b
6:                c.jal      17f
7:                c.jal      2b
8:                jal        tp, 18f
9:                c.jal      23f
10:               c.jal      0b
11:               jal        s2, 10b
12:               c.j        25f
13:               c.j        21f
14:               c.jal      8b
15:               jal        ra, 4b
16:               jal        s0, 1b
17:               c.j        5b
18:               c.j        22f
19:               jal        a4, 20f
20:               c.j        24f
21:               c.j        9b
22:               c.j        12b
23:               jal        ra, 11b
24:               c.j        7b
25:               c.nop
                  la         t1, region_0+1023 #start load_store_instr_stream_1
                  lh         a6, 15(t1)
                  la         t4, region_0+1815 #start load_store_instr_stream_2
                  la         ra, region_0+3192 #start load_store_instr_stream_0
                  la         tp, region_0+2262 #start load_store_instr_stream_3
                  lh         s6, -3(t1)
                  sb         s5, -952(tp)
                  sb         a0, -1489(tp)
                  lbu        s6, 4(t1)
                  lhu        s6, -7(t1)
                  lb         a0, 610(ra)
                  lb         a0, -6(t1)
                  sb         a4, -884(tp)
                  lbu        t6, 79(ra)
                  sb         a5, -154(t4)
                  lbu        t0, 308(tp)
                  lb         s3, -382(tp)
                  lh         s7, -1(t4)
                  lb         t3, -1018(ra)
                  lb         s3, 777(tp)
                  lhu        t6, 23(t4)
                  sb         s1, 16(t1)
                  sb         a6, -1149(tp)
                  lbu        t5, -1431(ra)
                  lb         a0, -21(tp) #end load_store_instr_stream_3
                  lhu        s9, 13(t1)
                  lb         s11, -62(t4)
                  lhu        s10, 1(t1) #end load_store_instr_stream_1
                  sb         s11, -212(t4)
                  sw         s10, -1636(ra)
                  sb         a6, -206(t4)
                  lbu        s7, 253(t4)
                  lbu        a0, 263(ra)
                  sh         s10, -117(t4)
                  lbu        t6, -68(t4) #end load_store_instr_stream_2
                  lbu        t5, -2023(ra) #end load_store_instr_stream_0
                  la         a4, region_4+385 #start riscv_hazard_instr_stream_2
                  sb         t1, -21(a4)
                  lbu        s8, 201(a4)
                  sw         t0, 83(a4)
                  add        a5, t0, s7
                  lbu        t1, -66(a4)
                  lh         s8, -71(a4)
                  lb         s8, 37(a4)
                  andi       a1, s7, -281
                  lb         a1, -73(a4)
                  lbu        s8, 186(a4)
                  addi       s8, s7, -430
                  mulhsu     s7, a1, s8
                  rem        a5, s7, t0
                  sb         s8, 177(a4)
                  fence.i
                  rem        a5, s8, s7
                  div        t0, s8, t0
                  c.li       s7, -1
                  sw         t1, -85(a4)
                  lbu        t1, 34(a4)
                  add        s7, s8, t0
                  mul        a5, t0, a5
                  mulhsu     a5, a5, a5
                  or         a1, s8, a5
                  sra        t0, a1, a5
                  add        t1, a5, s8
                  lh         a1, 189(a4) #end riscv_hazard_instr_stream_2
                  la         tp, region_1+11074 #start riscv_load_store_rand_instr_stream_7
                  sra        s10, a1, s6
                  lb         s4, 1763(tp)
                  c.lui      s2, 24
                  sb         a5, 167(tp)
                  sw         t1, -1158(tp)
                  sb         zero, -811(tp)
                  sh         zero, 472(tp)
                  sb         a4, -533(tp)
                  sb         a4, 373(tp)
                  xor        t5, a4, t0
                  lhu        zero, 1806(tp)
                  lhu        a4, -228(tp)
                  sb         a7, -1696(tp)
                  lb         s1, -555(tp)
                  mulhu      t5, a3, a4
                  sb         a1, -1603(tp)
                  c.andi     a1, 9
                  sb         s6, 926(tp)
                  lh         t1, -1554(tp)
                  lb         t1, -507(tp)
                  lh         a7, -886(tp)
                  lb         a2, 893(tp)
                  lb         a6, 1417(tp)
                  lb         s9, 328(tp)
                  csrrci     t3, 0x340, 8
                  fence.i
                  sh         t0, 682(tp)
                  csrrs      s5, 0x340, a0
                  fence.i
                  csrrw      s0, 0x340, s11
                  lb         a6, -1163(tp)
                  lbu        s3, 1176(tp)
                  lbu        t5, 1443(tp)
                  lh         a3, 652(tp)
                  slti       a4, s2, -148
                  lbu        a3, -617(tp)
                  lb         a6, 2010(tp)
                  slt        t4, s3, s6
                  c.srli     a1, 11
                  lb         t5, -1246(tp)
                  lw         t1, -906(tp) #end riscv_load_store_rand_instr_stream_7
                  la         t3, region_0+3658 #start riscv_load_store_rand_instr_stream_2
                  ori        s3, s6, 309
                  lh         a0, -12(t3)
                  sb         a5, 2(t3)
                  c.srai     a5, 1
                  lb         s6, 10(t3)
                  lbu        s3, -1(t3)
                  mulh       ra, gp, ra
                  sb         t4, -5(t3)
                  sb         ra, -15(t3)
                  c.xor      a2, a5
                  lbu        a3, 9(t3)
                  lb         s5, -13(t3)
                  xori       s10, a5, 721
                  csrrc      s6, 0x340, a4
                  csrrw      a6, 0x340, t1
                  lbu        t5, 14(t3)
                  c.xor      a1, a1
                  c.srli     a1, 20
                  sb         s0, -12(t3)
                  sll        a6, zero, s3
                  auipc      s5, 1007642
                  c.mv       s3, a1
                  srai       zero, a3, 22
                  slt        a0, s5, ra
                  xor        s10, sp, t3
                  c.or       a1, a2
                  csrrwi     t0, 0x340, 22
                  sw         s4, -2(t3)
                  lbu        t0, -9(t3)
                  lb         ra, -5(t3)
                  c.and      s0, s0
                  lbu        t5, 15(t3)
                  divu       t6, a0, a3
                  c.andi     a1, 26
                  slt        a3, t3, a1
                  lbu        s3, -1(t3)
                  lbu        s10, -11(t3)
                  mul        s5, s4, s9
                  ori        a7, a0, -773
                  lh         t5, 12(t3)
                  mulhu      t4, t0, s8
                  fence.i
                  csrrsi     t0, 0x340, 29
                  lh         s10, 6(t3)
                  lh         a0, 4(t3)
                  lbu        t4, 5(t3)
                  sb         t3, 7(t3)
                  slt        t1, s0, t5
                  nop
                  lhu        t0, 8(t3)
                  lb         s7, 9(t3)
                  lhu        tp, 10(t3)
                  and        a3, zero, a6
                  lbu        s3, -9(t3)
                  or         t6, a3, s4
                  lbu        s2, -12(t3)
                  lbu        a7, -3(t3) #end riscv_load_store_rand_instr_stream_2
                  la         a2, region_4+1279 #start riscv_load_store_rand_instr_stream_4
                  sh         s2, 1023(a2)
                  xori       s1, t0, 433
                  auipc      s4, 1029390
                  sb         t5, -198(a2)
                  addi       s3, ra, 949
                  sltu       s10, a1, s0
                  fence
                  lw         a0, 669(a2)
                  addi       s1, t3, 511
                  remu       s10, s8, s8
                  mulh       t0, t6, t6
                  sb         s11, 824(a2)
                  lb         a0, -580(a2)
                  add        s1, s5, t4
                  lbu        a7, 1641(a2)
                  sb         gp, 1238(a2)
                  lbu        zero, -1250(a2)
                  lb         a1, 646(a2)
                  lhu        a1, 1711(a2)
                  slti       ra, s4, -373
                  lb         s0, 530(a2)
                  sb         a7, 1330(a2)
                  lb         s9, 1360(a2)
                  sb         a3, -752(a2)
                  c.srai     a1, 28
                  sra        a1, a5, t4
                  lhu        s7, 1207(a2)
                  csrrci     a1, 0x340, 7
                  lb         a0, 1732(a2) #end riscv_load_store_rand_instr_stream_4
                  la         s7, region_3+218 #start riscv_load_store_rand_instr_stream_5
                  lbu        t5, 284(s7)
                  lb         t4, 109(s7)
                  mulhsu     t6, sp, a0
                  lb         a0, 253(s7)
                  or         a7, s2, t2
                  sb         s4, 164(s7)
                  lb         zero, -175(s7)
                  andi       s10, s8, 39
                  lb         s5, -128(s7)
                  sw         a3, -134(s7)
                  c.li       s11, 18
                  c.sub      a4, a0
                  fence.i
                  or         a5, s1, ra
                  c.li       a0, -1
                  c.andi     s0, 3
                  c.add      a4, s5
                  c.lui      tp, 22
                  lbu        s11, 83(s7)
                  lui        s2, 838011
                  lb         a7, 243(s7)
                  sll        s0, s3, s9
                  c.lui      s8, 18
                  sh         s11, 14(s7)
                  csrrc      ra, 0x340, s7
                  c.or       a4, a4
                  csrrs      a4, 0x340, t5
                  fence.i
                  sb         a3, 267(s7)
                  sb         t5, 203(s7)
                  lb         s3, 281(s7)
                  c.andi     a0, 3
                  lb         tp, 1(s7)
                  lh         s1, 60(s7)
                  lhu        t5, -212(s7)
                  mulhu      s4, s10, ra
                  lbu        a5, 278(s7)
                  c.or       a1, s0
                  csrrc      s9, 0x340, tp
                  sub        s4, a7, s1
                  fence
                  csrrs      a0, 0x340, a6
                  xori       s2, s4, 426
                  sltiu      s8, s11, 689
                  sll        s3, tp, zero
                  lh         s5, 114(s7) #end riscv_load_store_rand_instr_stream_5
main_11:          jal        s11, 8f
0:                jal        ra, 1f
1:                jal        ra, 9f
2:                c.j        17f
3:                c.jal      4f
4:                c.jal      5f
5:                jal        t1, 14f
6:                jal        ra, 7f
7:                c.jal      15f
8:                jal        t1, 12f
9:                c.j        19f
10:               jal        t0, 0b
11:               jal        t1, 16f
12:               c.j        6b
13:               c.jal      18f
14:               jal        t1, 11b
15:               jal        t1, 13b
16:               c.jal      10b
17:               c.jal      3b
18:               jal        t1, 2b
19:               lui        s6, 1021692
                  la         t5, region_1+4323 #start load_store_instr_stream_2
                  la         t0, region_4+753 #start load_store_instr_stream_3
                  la         a0, region_3+398 #start load_store_instr_stream_1
                  sb         t6, 59(a0)
                  la         s6, region_2+3883 #start load_store_instr_stream_0
                  la         t3, region_0+3401 #start load_store_instr_stream_4
                  lhu        s2, -7(t3)
                  lb         a3, -100(t0)
                  lh         s4, 7(t3)
                  lb         t4, -24(t5)
                  sw         a5, -47(t5)
                  lbu        ra, -16(t3)
                  sb         t1, 660(s6)
                  lbu        s10, 9(t3)
                  sb         s0, 1965(s6)
                  lbu        s2, -73(a0)
                  lb         s8, 1821(s6)
                  sb         s1, -194(a0)
                  lw         s7, -51(t5)
                  lw         tp, 13(t5)
                  lh         a4, -11(t5)
                  lb         a2, -10(t3)
                  sb         sp, -115(a0)
                  sb         sp, 35(t5)
                  lh         t1, -209(t0)
                  lh         tp, -1623(s6)
                  lb         a4, -1518(s6)
                  sb         s4, 16(t5)
                  sh         gp, -5(t3)
                  lhu        ra, -59(t0)
                  lbu        a2, -93(a0) #end load_store_instr_stream_1
                  lb         t4, -90(t0)
                  lbu        s3, -12(t5) #end load_store_instr_stream_2
                  sb         s5, 108(t0) #end load_store_instr_stream_3
                  lb         tp, 11(t3)
                  lbu        s0, 12(t3) #end load_store_instr_stream_4
                  lbu        t4, -1439(s6) #end load_store_instr_stream_0
                  la         s10, region_1+6401 #start load_store_instr_stream_0
                  la         s7, region_1+16379 #start load_store_instr_stream_1
                  lbu        zero, -11(s10)
                  sw         a3, -63(s7)
                  lb         a1, 4(s10)
                  lhu        t6, -13(s10)
                  sb         s10, 16(s10)
                  lbu        t3, 4(s7)
                  sb         s6, -30(s7)
                  sb         a7, -42(s7)
                  sb         t1, -6(s10)
                  sb         tp, 7(s10)
                  lbu        s4, 14(s10)
                  lb         t4, 2(s7) #end load_store_instr_stream_1
                  lh         s1, 1(s10) #end load_store_instr_stream_0
main_12:          jal        s11, 13f
0:                c.jal      14f
1:                c.j        7f
2:                jal        t1, 11f
3:                jal        ra, 8f
4:                c.j        15f
5:                c.j        9f
6:                c.jal      0b
7:                c.j        3b
8:                c.jal      6b
9:                c.jal      1b
10:               c.j        12f
11:               c.jal      4b
12:               c.jal      5b
13:               c.jal      10b
14:               c.jal      2b
15:               slt        a7, ra, a0
main_9:           jal        s11, 15f
0:                c.j        3f
1:                c.jal      17f
2:                jal        t1, 20f
3:                c.jal      7f
4:                jal        s7, 22f
5:                c.j        28f
6:                jal        ra, 24f
7:                c.jal      13f
8:                jal        t1, 29f
9:                jal        a3, 16f
10:               jal        ra, 18f
11:               jal        ra, 27f
12:               jal        t1, 26f
13:               c.jal      8b
14:               c.jal      30f
15:               jal        t1, 12b
16:               jal        ra, 14b
17:               jal        s11, 23f
18:               jal        tp, 25f
19:               c.j        9b
20:               jal        ra, 0b
21:               c.jal      19b
22:               c.j        11b
23:               jal        ra, 5b
24:               c.j        21b
25:               jal        ra, 2b
26:               jal        s10, 10b
27:               c.j        6b
28:               c.jal      4b
29:               c.jal      1b
30:               sll        s4, s4, gp
                  addi       a3, zero, -9 #init loop 1 counter
                  sub        a7, s11, t3
                  lui        t6, 692705
                  addi       zero, zero, 0 #init loop 1 limit
                  c.addi     s10, 25
                  c.or       a0, a4
main_37_1_t:      c.li       s7, -1
                  addi       a3, a3, 9 #update loop 1 counter
                  csrrs      t0, 0x340, t0
                  mulhu      tp, a2, s8
                  addi       s9, zero, -10 #init loop 0 counter
                  addi       a1, zero, -16 #init loop 0 limit
                  srl        t3, t0, ra
                  remu       s5, t6, s5
                  remu       s7, gp, s11
main_37_0_t:      andi       t6, zero, 572
                  c.and      s0, a3
                  addi       s9, s9, -2 #update loop 0 counter
                  c.andi     a2, -1
                  sltu       s1, s2, tp
                  c.add      s1, s4
                  slt        s7, t6, s3
                  beq        s9, a1, main_37_0_t #branch for loop 0
                  csrrci     t1, 0x340, 15
                  c.bnez     a3, main_37_1_t #branch for loop 1
                  csrrs      s7, 0x340, a4
                  la         s6, region_0+2570 #start riscv_hazard_instr_stream_8
                  mulhsu     t0, t0, a4
                  csrrc      s5, 0x340, t6
                  lbu        a4, 84(s6)
                  lb         s5, 469(s6)
                  sra        a4, a4, a4
                  lui        t6, 292128
                  lhu        s5, 92(s6)
                  lb         s10, 952(s6)
                  lbu        t6, -896(s6)
                  c.or       a4, a4
                  c.addi     tp, 14
                  nop
                  lbu        s10, 677(s6)
                  lbu        s10, -367(s6)
                  sh         s5, 1324(s6)
                  sh         a4, -118(s6)
                  sw         a4, 1178(s6)
                  c.xor      a4, a4
                  sb         a4, -953(s6)
                  csrrw      t6, 0x340, t0
                  srl        a4, s10, tp
                  lhu        t6, -1260(s6)
                  lb         tp, 616(s6)
                  lb         s5, -26(s6)
                  lb         s10, 749(s6)
                  lb         s10, -375(s6)
                  lb         s10, 815(s6)
                  c.addi     t6, -1
                  slti       s10, s5, -814
                  mul        s10, s10, tp
                  mul        s5, s5, s10
                  sb         a4, 420(s6)
                  sb         s10, -249(s6)
                  fence.i
                  sb         tp, -43(s6)
                  lhu        t6, -1092(s6)
                  sw         s5, 650(s6)
                  srl        t6, tp, t6
                  c.sub      a4, a4
                  lhu        s5, -718(s6)
                  lb         t6, -84(s6)
                  fence.i
                  sw         tp, 26(s6)
                  lb         t6, 1387(s6)
                  c.lui      t0, 28
                  lb         s5, -1521(s6)
                  lb         t0, 277(s6) #end riscv_hazard_instr_stream_8
main_17:          jal        s11, 6f
0:                jal        ra, 19f
1:                c.jal      29f
2:                jal        ra, 21f
3:                c.j        26f
4:                jal        a5, 23f
5:                c.jal      28f
6:                c.jal      10f
7:                c.j        8f
8:                jal        ra, 18f
9:                c.j        12f
10:               jal        s0, 3b
11:               c.j        17f
12:               c.jal      27f
13:               c.j        5b
14:               c.j        9b
15:               c.jal      4b
16:               c.j        1b
17:               c.j        0b
18:               c.j        24f
19:               c.j        20f
20:               c.j        7b
21:               c.j        15b
22:               c.j        13b
23:               jal        s7, 22b
24:               jal        ra, 2b
25:               c.jal      14b
26:               c.jal      25b
27:               jal        ra, 11b
28:               jal        t1, 16b
29:               c.and      a2, a5
                  la         s4, region_4+782 #start riscv_load_store_rand_instr_stream_3
                  lh         t4, 840(s4)
                  c.lui      s8, 27
                  lhu        s11, -202(s4)
                  sltu       a2, a6, a4
                  csrrsi     ra, 0x340, 31
                  sb         a6, 1731(s4)
                  lb         zero, 1859(s4)
                  sb         a4, 325(s4)
                  mul        tp, t4, s4
                  sh         t6, 1308(s4)
                  or         a6, s8, s3
                  ori        s0, s11, -622
                  c.slli     t1, 3
                  lb         s1, -471(s4)
                  sw         zero, -110(s4)
                  sb         s5, -109(s4)
                  lbu        t6, 2033(s4)
                  sb         t2, 1217(s4)
                  sub        ra, a0, a3
                  divu       s8, a0, s0
                  lbu        t6, -207(s4)
                  sb         a5, 914(s4)
                  andi       a7, a2, 644
                  sh         zero, 1800(s4)
                  lh         s5, -776(s4)
                  xor        zero, s8, s9
                  lbu        s3, 711(s4)
                  sb         zero, 1097(s4)
                  sb         tp, 955(s4)
                  sb         t1, 1950(s4)
                  srai       a2, a0, 12
                  sw         t5, 962(s4)
                  lb         t5, -701(s4)
                  lbu        a2, 571(s4)
                  sb         zero, 1033(s4)
                  lb         t6, 1253(s4)
                  sb         t3, 1823(s4)
                  mulh       s1, s8, a2
                  mul        s5, s5, gp
                  srai       a7, t1, 31
                  sb         a0, 291(s4)
                  sh         a3, 330(s4) #end riscv_load_store_rand_instr_stream_3
                  addi       ra, zero, 4 #init loop 1 counter
                  addi       s2, zero, 8 #init loop 1 limit
main_36_1_t:      c.and      a0, a5
                  addi       ra, ra, 4 #update loop 1 counter
                  addi       t0, zero, 10 #init loop 0 counter
                  addi       a4, zero, 8 #init loop 0 limit
main_36_0_t:      addi       t1, t2, -588
                  addi       t0, t0, -6 #update loop 0 counter
                  bgeu       t0, a4, main_36_0_t #branch for loop 0
                  beq        ra, s2, main_36_1_t #branch for loop 1
                  add        zero, tp, gp
                  addi       s0, zero, 8 #init loop 0 counter
                  andi       t3, tp, -31
                  fence.i
                  lui        ra, 700302
                  c.or       a5, a0
                  and        t1, a1, t1
                  addi       zero, zero, 0 #init loop 0 limit
                  andi       t6, s4, -898
main_39_0_t:      add        t0, a6, tp
                  c.xor      a2, s0
                  or         a3, a1, s7
                  mulh       a7, s7, ra
                  c.addi     s5, -1
                  addi       s0, s0, -2 #update loop 0 counter
                  csrrci     s4, 0x340, 21
                  c.beqz     s0, main_39_0_t #branch for loop 0
                  c.nop
main_14:          jal        s11, 0f
0:                jal        a2, 12f
1:                jal        ra, 2f
2:                c.jal      7f
3:                c.jal      9f
4:                jal        s5, 14f
5:                c.jal      4b
6:                jal        t1, 13f
7:                c.jal      5b
8:                c.jal      6b
9:                jal        a0, 1b
10:               c.j        8b
11:               c.j        10b
12:               jal        ra, 11b
13:               jal        ra, 3b
14:               mulh       t3, s1, a3
                  la         t4, region_2+4548 #start load_store_instr_stream_0
                  lbu        s11, 232(t4)
                  lbu        s7, -120(t4)
                  la         s10, region_2+4597 #start load_store_instr_stream_1
                  sb         t3, -62(s10)
                  sb         a6, 31(t4)
                  sb         t2, -48(s10)
                  sh         a0, 5(s10)
                  lb         t0, -6(s10)
                  lh         s8, 122(t4)
                  sb         zero, 60(s10)
                  lb         s6, -32(s10)
                  lb         s4, 12(s10) #end load_store_instr_stream_1
                  lbu        t0, -117(t4) #end load_store_instr_stream_0
                  csrrs      s3, 0x340, ra
                  csrrci     t6, 0x340, 2
                  csrrs      a0, 0x340, sp
                  slti       s0, s3, -227
                  sltu       s6, t2, s4
                  sll        s4, s7, a2
                  andi       t5, s6, 628
                  bgeu       tp, a6, 15f
                  csrrwi     s3, 0x340, 8
                  c.bnez     a0, 11f
                  slti       s4, s0, 178
11:               sub        t5, zero, a6
                  c.nop
                  c.srai     a3, 21
                  bge        a7, s0, 26f
15:               mulhsu     s4, a2, s0
                  c.or       a0, a5
                  bgeu       s3, t5, 28f
                  mulhsu     a4, t5, t2
                  srl        s5, s9, s9
                  andi       s10, s11, 511
                  c.xor      s0, a2
                  fence
                  slt        s11, s10, gp
                  bge        t1, t6, 37f
                  slt        t0, t5, ra
26:               sltiu      a6, a6, 968
                  sltu       s4, t4, gp
28:               c.nop
                  c.addi     s1, 8
                  mulhsu     s5, a1, s2
                  c.bnez     a1, 32f
32:               blt        ra, a5, 36f
                  csrrci     a1, 0x340, 31
                  andi       tp, a1, -358
                  csrrsi     s7, 0x340, 5
36:               fence.i
37:               c.sub      a4, a2
                  c.and      a4, s1
                  c.xor      a1, s1
                  and        s8, s9, gp
                  c.sub      a4, a0
                  csrrwi     s10, 0x340, 28
                  nop
                  c.bnez     s0, 64f
                  mulh       a0, ra, a5
                  csrrsi     ra, 0x340, 20
                  xor        s8, s3, t1
                  csrrwi     s3, 0x340, 30
                  slli       t4, t5, 19
                  blt        s0, s1, 61f
                  srai       a3, t5, 5
                  slt        t5, ra, tp
                  c.lui      s6, 10
                  c.srai     a4, 31
                  srl        s10, a7, t0
                  slti       t1, t2, -356
                  csrrc      zero, 0x340, s2
                  c.srli     a0, 4
                  addi       s6, a6, -883
                  mulh       s6, t0, s8
61:               c.mv       ra, s0
                  fence
                  c.lui      s5, 9
64:               c.lui      s1, 7
                  and        t5, s8, s8
                  c.or       s0, a2
                  c.slli     t3, 15
                  rem        a2, s11, a4
                  srl        t4, s4, a3
                  bge        t6, gp, 71f
71:               bltu       t5, t3, 83f
                  bltu       t0, s7, 89f
                  mulh       a2, s5, s8
                  rem        s4, a7, s8
                  slli       s0, gp, 4
                  srl        s7, ra, ra
                  csrrsi     a4, 0x340, 6
                  div        tp, tp, s4
                  xori       zero, t4, 24
                  c.and      a5, a5
                  slti       t6, s10, 701
                  slli       t5, a5, 14
83:               mul        a3, s2, s9
                  csrrw      t1, 0x340, s10
                  c.bnez     s1, 86f
86:               c.xor      a4, a1
                  c.bnez     s0, 92f
                  c.addi     t4, -1
89:               slli       s4, a1, 25
                  csrrci     ra, 0x340, 27
                  c.li       s7, -1
92:               slli       s5, s6, 27
                  divu       a2, s3, t3
                  auipc      s8, 607736
                  csrrwi     t3, 0x340, 14
                  c.srai     s0, 25
                  and        s0, s7, s8
                  c.nop
                  or         t6, t5, t3
                  blt        s7, a1, 101f
101:              auipc      t0, 89580
                  csrrc      a3, 0x340, a4
                  sltiu      tp, t0, -849
                  remu       s2, ra, t4
                  c.nop
                  c.addi     t4, -1
                  sll        s6, s4, a6
                  csrrs      s11, 0x340, s5
                  nop
                  c.sub      a5, a0
                  srai       a1, s8, 2
                  lui        a0, 335774
                  remu       t5, s3, t2
                  blt        a3, t3, 121f
                  sub        t6, s5, t4
                  slti       s1, s0, 174
                  lui        s6, 68151
                  slt        tp, s3, s7
                  c.and      a5, s0
                  c.xor      a1, s0
121:              c.mv       s8, a1
                  fence.i
                  csrrsi     t6, 0x340, 17
                  c.nop
                  andi       t5, t4, 568
                  xor        t5, sp, s10
                  div        s1, a0, t1
                  c.mv       s11, s4
                  mulh       t4, s10, gp
                  c.andi     a3, -1
                  blt        s6, s11, 137f
                  auipc      s4, 154520
                  c.xor      a5, a3
                  c.xor      a1, a4
                  bge        a7, a2, 152f
                  c.nop
137:              c.nop
                  mul        tp, s2, zero
                  csrrsi     a6, 0x340, 26
                  andi       t1, a3, -853
                  srl        t3, s4, a0
                  add        a0, tp, gp
                  rem        t3, a1, s2
                  divu       s0, ra, t4
                  csrrci     s6, 0x340, 1
                  add        a3, t6, s3
                  xor        t0, t3, a4
                  div        s2, s4, s3
                  andi       s9, s3, 100
                  lui        s0, 906527
                  c.add      s8, t4
152:              c.sub      a1, s1
                  c.srai     s0, 20
                  blt        s3, s0, 163f
                  csrrw      a0, 0x340, s4
                  c.or       s1, a0
                  csrrwi     s4, 0x340, 22
                  c.xor      a1, a4
                  c.mv       ra, t6
                  slt        tp, a3, s6
                  mulhu      s11, s9, s9
                  ori        t3, a7, 46
163:              slli       a0, t2, 23
                  c.sub      s0, s0
                  bne        s11, t4, 167f
                  c.lui      s11, 7
167:              csrrs      tp, 0x340, t4
                  csrrsi     t5, 0x340, 16
                  c.srli     s1, 4
                  c.li       s2, 2
                  nop
                  c.srai     a4, 15
                  c.li       a3, -1
                  blt        tp, s8, 188f
                  lui        s10, 294716
                  slti       t1, a0, -558
                  c.slli     s0, 11
                  add        a1, a7, zero
                  mulhu      s7, a2, gp
                  div        s10, s3, a4
                  bltu       s7, a5, 193f
                  sra        a4, t1, ra
                  c.andi     a4, 15
                  c.nop
                  bgeu       t0, t6, 192f
                  mulh       t3, t0, s2
                  ori        t1, a6, 967
188:              csrrs      s8, 0x340, gp
                  c.lui      a2, 5
                  c.beqz     a3, 191f
191:              fence
192:              c.beqz     a0, 208f
193:              addi       s2, t2, -328
                  bltu       t2, s4, 206f
                  c.srli     a2, 9
                  mulhu      s2, t3, a2
                  fence.i
                  c.addi     a3, -1
                  csrrsi     s7, 0x340, 26
                  sra        s1, t5, sp
                  csrrwi     s5, 0x340, 16
                  add        s9, a5, s1
                  sltu       s11, s1, s5
                  fence
                  beq        s3, a3, 217f
206:              fence
                  srli       a1, t5, 5
208:              c.and      a3, a0
                  c.mv       t3, t6
                  fence.i
                  srl        a2, t4, zero
                  sltiu      s6, t1, -417
                  srl        t6, s4, a2
                  csrrwi     s8, 0x340, 0
                  mul        a7, a5, s9
                  and        s9, s7, a2
217:              c.beqz     s1, 231f
                  nop
                  csrrs      t6, 0x340, t6
                  csrrs      s7, 0x340, s8
                  sll        s1, sp, s11
                  c.slli     t0, 15
                  csrrs      a3, 0x340, s5
                  add        s0, a1, a6
                  sll        a1, s11, ra
                  bltu       s9, t1, 228f
                  xor        a7, a7, t4
228:              c.slli     a3, 14
                  c.add      s2, t3
                  c.and      a1, a5
231:              c.slli     t3, 15
                  blt        t2, gp, 237f
                  srli       a5, sp, 26
                  or         t4, t5, sp
                  sltu       s8, a2, s11
                  bge        t3, t5, 244f
237:              lui        t5, 54645
                  mulhu      t5, a6, s3
                  divu       ra, ra, s3
                  mul        s11, a3, ra
                  auipc      s5, 864744
                  bltu       s6, s6, 244f
                  srl        a7, a6, gp
244:              sub        s8, s0, t4
                  slli       a7, t6, 19
                  div        s10, ra, s3
                  c.bnez     a5, 259f
                  mul        t3, a7, t1
                  csrrci     s9, 0x340, 24
                  csrrci     t3, 0x340, 16
                  c.and      s0, s0
                  divu       a1, s5, a1
                  bltu       s11, s2, 270f
                  sltiu      s11, s9, 236
                  fence.i
                  nop
                  sltiu      t5, s10, 854
                  lui        a5, 896086
259:              xor        a5, s10, t6
                  fence
                  c.and      s1, a2
                  sub        s11, ra, s8
                  c.sub      a0, a2
                  csrrw      s7, 0x340, s5
                  c.or       a2, a4
                  mulhu      s10, s3, t0
                  bne        a1, s8, 279f
                  slt        a4, a7, s7
                  lui        a2, 324207
270:              and        tp, a0, t4
                  c.lui      s1, 15
                  bne        a3, s0, 284f
                  c.xor      s0, a5
                  csrrwi     a1, 0x340, 2
                  auipc      tp, 387447
                  srli       s9, t6, 0
                  sltu       ra, t4, a4
                  csrrci     s11, 0x340, 26
279:              mulhsu     tp, s2, s5
                  c.srli     a4, 4
                  rem        s8, a7, s2
                  sltu       s10, a5, s7
                  add        t6, s3, zero
284:              c.bnez     s1, 291f
                  c.srli     a5, 16
                  c.li       s8, -1
                  blt        a5, a6, 288f
288:              or         a5, s3, s7
                  slt        s5, t6, a4
                  ori        ra, a1, 105
291:              srai       s9, a5, 1
                  c.lui      s6, 3
                  xor        s7, t1, s0
                  csrrs      t0, 0x340, a4
                  c.srai     a4, 10
                  srai       s8, t6, 19
                  c.lui      s4, 15
                  c.mv       a3, s7
                  csrrs      t6, 0x340, s1
                  xor        a4, ra, t3
                  csrrsi     a4, 0x340, 26
                  beq        s4, a4, 314f
                  csrrci     t4, 0x340, 9
                  div        a6, s2, tp
                  srl        a2, ra, t1
                  rem        a5, s3, s2
                  xori       s10, s10, 60
                  bltu       a1, s8, 328f
                  csrrsi     s7, 0x340, 16
                  csrrwi     s1, 0x340, 2
                  xor        t3, s3, s2
                  remu       zero, a1, s0
                  bltu       s5, t1, 317f
314:              sltiu      s1, s11, -448
                  bgeu       t0, s6, 316f
316:              slti       s11, t0, -193
317:              bgeu       t0, gp, 331f
                  mulhu      a5, s1, t2
                  divu       t5, tp, s11
                  fence.i
                  rem        a0, a2, s4
                  csrrci     s8, 0x340, 7
                  sra        s10, s11, t0
                  slti       s2, s3, -803
                  bge        s6, a2, 327f
                  srli       s0, t5, 27
327:              slli       s8, a0, 29
328:              c.nop
                  c.srai     a3, 16
                  rem        s7, t0, gp
331:              sra        zero, gp, s4
                  slti       s3, s7, -454
                  csrrs      t1, 0x340, t0
                  srli       a1, tp, 6
                  bltu       s9, gp, 337f
                  rem        a0, zero, a6
337:              c.sub      a3, a2
                  c.and      a1, a3
                  slli       s9, a7, 22
                  srai       a5, s11, 19
                  auipc      a3, 86297
                  xori       s10, a7, -717
                  c.srli     s0, 7
                  srai       a7, t4, 1
                  csrrc      a6, 0x340, t1
                  c.and      a5, a2
                  c.add      a3, a4
                  divu       a4, s3, t1
                  csrrci     s6, 0x340, 16
                  c.bnez     a4, 361f
                  bne        s5, s4, 357f
                  or         t0, t2, s0
                  slt        s6, zero, tp
                  mul        t3, s3, a1
                  fence
                  divu       s8, s5, s7
357:              sltu       a2, s5, a1
                  xor        t0, t0, s11
                  sll        t6, ra, a4
                  sra        a6, s6, t1
361:              or         s5, gp, sp
                  c.li       s8, 2
                  ori        t4, s6, 828
                  c.li       t0, 1
                  c.beqz     a1, 377f
                  lui        s4, 380003
                  c.srli     a1, 24
                  c.addi     a6, 13
                  csrrwi     s2, 0x340, 9
                  c.mv       s3, ra
                  c.bnez     s1, 372f
372:              add        a2, a5, s4
                  bge        s4, s1, 387f
                  csrrc      t0, 0x340, a7
                  remu       t5, t4, t5
                  ori        a6, tp, 722
377:              csrrw      s4, 0x340, t4
                  c.li       s9, 23
                  srai       t5, s4, 9
                  blt        zero, s7, 387f
                  c.and      a4, s0
                  sltu       s8, s11, a2
                  c.nop
                  addi       tp, a2, 102
                  bltu       s10, s5, 396f
                  remu       t3, s7, a3
387:              bltu       s0, t2, 404f
                  sub        t3, s11, s8
                  bge        a4, s6, 390f
390:              c.nop
                  mulh       s9, a5, zero
                  bltu       sp, s7, 401f
                  csrrci     s4, 0x340, 10
                  bge        s7, t2, 395f
395:              sltiu      t4, a5, 931
396:              sll        a5, t0, t3
                  xor        a3, t2, a7
                  bgeu       t1, t4, 403f
                  c.add      a7, s5
                  bge        s10, t2, 405f
401:              c.beqz     s0, 417f
                  csrrs      a1, 0x340, s11
403:              c.li       s3, 15
404:              c.add      s11, s8
405:              csrrsi     a6, 0x340, 31
                  bge        sp, ra, 419f
                  andi       t0, zero, -633
                  sll        a4, s10, a3
                  c.and      s0, a0
                  mulh       a6, s0, s3
                  addi       s3, t1, 500
                  c.addi     s11, -1
                  c.andi     a3, -1
                  blt        t4, s4, 426f
                  mulh       a7, t2, s3
                  div        t3, s0, s5
417:              bgeu       a7, t3, 422f
                  lui        a7, 148263
419:              nop
                  or         a2, a7, a7
                  c.sub      s1, a5
422:              nop
                  sra        t3, a2, ra
                  csrrwi     t5, 0x340, 23
                  fence.i
426:              rem        t0, s4, s10
                  c.srai     s0, 6
                  rem        a1, a5, a5
                  sltiu      zero, s6, -128
                  c.beqz     s0, 442f
                  xor        s1, s6, a3
                  srli       a1, t5, 8
                  c.or       a0, a0
                  csrrc      a0, 0x340, a4
                  csrrs      zero, 0x340, a4
                  bge        s9, a1, 448f
                  divu       s3, s9, a0
                  sra        a5, t2, s4
                  c.bnez     a2, 441f
                  c.xor      a4, a1
441:              bgeu       tp, ra, 448f
442:              c.slli     s8, 9
                  rem        a1, s11, t5
                  mulhsu     s0, a6, a7
                  mulh       t3, a0, s3
                  sll        ra, a0, s2
                  c.or       a4, a5
448:              fence.i
                  xor        a2, sp, a4
                  xori       s10, sp, -396
                  c.sub      a3, a0
                  c.andi     a3, -1
                  c.and      a2, a4
                  and        a7, a5, s11
                  c.lui      a3, 25
                  srli       s2, s1, 29
                  addi       s5, a4, 301
                  csrrwi     a4, 0x340, 15
                  blt        zero, t2, 467f
                  fence.i
                  slli       s4, a7, 1
                  la         a7, region_0+1161 #start riscv_load_store_rand_instr_stream_0
                  c.andi     a4, 0
                  lbu        s8, 1(a7)
                  sb         s10, -3(a7)
                  sub        t0, s11, s5
                  c.srli     a3, 21
                  nop
                  lbu        s9, 9(a7)
                  c.andi     a2, -1
                  c.or       a5, a5
                  sb         s5, 9(a7)
                  and        zero, s8, a5
                  mulhu      ra, s4, a4
                  c.slli     s9, 6
                  sb         a3, -1(a7)
                  sb         t2, -14(a7)
                  lb         s3, 0(a7)
                  lb         a0, -10(a7)
                  rem        s5, a6, t3
                  lb         s9, 15(a7)
                  lbu        zero, -1(a7)
                  c.srai     s1, 9
                  lh         s5, -1(a7)
                  sb         ra, -3(a7)
                  c.add      t1, a3
                  nop
                  srli       t6, s11, 3
                  srl        s6, s1, zero
                  sh         t5, 9(a7) #end riscv_load_store_rand_instr_stream_0
                  mulhsu     a1, a3, t5
                  sra        tp, t4, a2
                  c.srli     a2, 21
                  c.and      a0, a1
                  bltu       s5, a1, 467f
467:              addi       a2, s2, -843
                  sra        a7, a5, a3
                  c.addi     t1, 9
                  addi       s8, a6, 172
                  csrrwi     t5, 0x340, 25
                  c.lui      a2, 5
                  nop
                  bltu       s11, s7, 488f
                  xori       s2, s11, 359
                  csrrw      s10, 0x340, s6
                  xor        a2, t2, a5
                  c.lui      t1, 22
                  fence
                  srai       a0, s1, 19
                  lui        s8, 989125
                  csrrwi     s5, 0x340, 14
                  c.addi     a5, -1
                  sub        a0, s3, a4
                  fence.i
                  c.srai     a5, 28
                  csrrs      s9, 0x340, s3
488:              c.mv       t5, s3
                  divu       tp, a6, s10
                  div        s9, s3, ra
                  mul        s6, s7, a1
                  nop
                  c.bnez     s0, 495f
                  xori       tp, a1, -912
495:              remu       t4, s3, t0
                  mulh       zero, a4, t2
                  sll        s4, s10, a2
                  mulhsu     a5, t5, a6
                  div        a5, a7, tp
                  c.srai     a2, 28
                  c.xor      a4, a3
                  srl        zero, a3, s11
                  fence.i
                  c.or       s0, s0
                  or         ra, t6, zero
                  c.xor      s0, s0
                  c.and      s1, a5
                  ori        zero, sp, 409
                  csrrw      t3, 0x340, s3
                  auipc      ra, 685048
                  csrrci     t5, 0x340, 5
                  c.li       a7, -1
                  slt        a0, a2, t4
                  c.srai     a4, 31
                  c.nop
                  c.nop
                  sra        t3, s5, s5
                  c.lui      s11, 2
                  c.or       a5, a0
                  or         s7, s2, a2
                  sra        s6, a2, s3
                  sltiu      a3, ra, 951
                  sub        s3, s4, s11
                  csrrs      s8, 0x340, a3
                  bge        s4, s5, 526f
526:              divu       t6, t1, s0
                  csrrs      t6, 0x340, t6
                  fence.i
                  and        s8, a6, t5
                  c.addi     s7, 18
                  sltiu      s0, a3, 433
                  sra        t5, a1, t1
                  c.andi     a1, -1
                  csrrwi     s0, 0x340, 17
                  xor        a2, a4, s5
                  c.addi     s1, -1
                  slti       t0, t6, -460
                  auipc      s8, 594448
                  beq        t2, s5, 550f
                  xor        s4, t2, sp
                  xori       a7, a7, 866
                  rem        a5, a1, zero
                  add        a2, s7, t3
                  c.slli     s0, 12
                  csrrci     s4, 0x340, 18
                  c.srai     s1, 30
                  c.andi     a1, -1
                  ori        s11, s0, 775
                  add        s6, s1, t2
550:              sltu       a6, t4, a7
                  c.bnez     s1, 557f
                  bgeu       s3, a4, 565f
                  auipc      s6, 743918
                  csrrc      zero, 0x340, a3
                  sltiu      s6, t4, 627
                  mulh       s0, a5, s3
557:              lui        s8, 239398
                  c.sub      s0, s0
                  c.sub      s0, s1
                  rem        t4, s6, tp
                  c.lui      s1, 5
                  csrrwi     tp, 0x340, 3
                  sll        t4, s2, s2
                  bne        s2, a2, 573f
565:              sltiu      s2, tp, 569
                  csrrsi     t1, 0x340, 17
                  c.srai     a1, 1
                  c.sub      a5, a4
                  c.srai     s1, 11
                  c.nop
                  c.xor      s1, a1
                  c.bnez     a0, 592f
573:              c.addi     t6, 22
                  bge        t2, t0, 588f
                  csrrw      a6, 0x340, s10
                  addi       t3, s0, -268
                  lui        t6, 96976
                  csrrs      t5, 0x340, s9
                  c.andi     a0, -1
                  auipc      a7, 301357
                  csrrsi     s11, 0x340, 2
                  c.li       s4, -1
                  sub        s3, t0, a3
                  c.or       a4, a1
                  bne        s2, a5, 587f
                  csrrc      s9, 0x340, a7
587:              fence
588:              lui        a4, 460383
                  auipc      s6, 787691
                  slli       a0, t5, 0
                  ori        t1, a2, 193
592:              fence.i
                  slt        t5, s3, t2
                  c.beqz     s1, 611f
                  fence
                  csrrsi     s4, 0x340, 16
                  srai       tp, s1, 2
                  blt        s3, t0, 599f
599:              srl        a2, a3, zero
                  srai       tp, s8, 13
                  beq        s10, a7, 617f
                  sltu       s7, a1, s2
                  lui        zero, 62801
                  blt        a3, a5, 609f
                  fence
                  or         s1, t0, zero
                  sltiu      a3, zero, -937
                  c.sub      a4, a4
609:              c.add      s9, s6
                  c.bnez     a3, 611f
611:              c.sub      a3, a0
                  slti       a6, tp, 702
                  srai       s2, a4, 23
                  c.srai     a5, 10
                  csrrw      s0, 0x340, t0
                  csrrwi     a6, 0x340, 23
617:              csrrsi     t3, 0x340, 28
                  mulhu      s11, a4, a2
                  sub        t5, t0, s1
                  csrrwi     a1, 0x340, 20
                  beq        t5, a3, 625f
                  sub        ra, a1, s2
                  andi       t1, a2, 1010
                  csrrci     s1, 0x340, 14
625:              addi       s6, a7, 904
                  or         a6, s10, s5
                  or         t3, a2, t4
                  mulhu      a0, s2, s7
                  sub        s9, a0, a1
                  add        a5, t3, s8
                  addi       a5, s11, 492
                  c.nop
                  mulhu      t6, s5, s6
                  csrrci     s7, 0x340, 14
                  xori       s9, t0, 300
                  slli       a2, t6, 23
                  c.nop
                  slti       tp, a7, 914
                  beq        s4, ra, 656f
                  sra        s4, t0, t3
                  c.lui      a1, 25
                  csrrc      zero, 0x340, a2
                  csrrs      a7, 0x340, a4
                  sltu       s10, s1, s4
                  bge        s0, s5, 657f
                  fence.i
                  la         s1, region_0+1593 #start load_store_instr_stream_2
                  la         t6, region_2+2510 #start load_store_instr_stream_1
                  lbu        t0, -7(t6)
                  lb         s3, 20(s1)
                  la         a4, region_3+135 #start load_store_instr_stream_0
                  lbu        s4, 15(t6)
                  lbu        s2, 31(a4)
                  sb         s9, 49(s1)
                  sw         s6, 2(t6)
                  lh         a6, 21(s1)
                  lb         t3, 42(a4)
                  lbu        s0, -29(s1)
                  lb         a5, 3(t6)
                  sb         s9, 3(t6)
                  lb         t4, -4(t6)
                  lbu        s10, -44(s1)
                  lh         a3, -27(a4)
                  sb         s7, -13(t6)
                  lw         a5, -49(s1)
                  lhu        s6, -57(a4)
                  sb         s1, 27(s1)
                  lb         s10, 31(a4)
                  sb         s9, 3(s1) #end load_store_instr_stream_2
                  lbu        zero, -1(t6) #end load_store_instr_stream_1
                  lb         t1, 57(a4) #end load_store_instr_stream_0
                  nop
                  xori       s11, t0, 443
                  beq        ra, a2, 656f
                  c.xor      s1, a4
                  c.mv       a1, t1
                  fence
                  ori        t5, tp, 104
                  add        s1, s5, s11
                  remu       t4, t5, s2
656:              csrrci     s5, 0x340, 29
657:              srai       s9, t5, 23
                  ori        a6, a4, 945
                  srai       t5, t0, 5
                  slli       t3, a1, 24
                  bltu       s5, sp, 662f
662:              c.srai     a2, 15
                  bltu       gp, a2, 675f
                  nop
                  sub        s7, a1, t1
                  c.add      s9, t0
                  andi       t4, s10, -808
                  divu       s8, t5, s9
                  srai       s10, t4, 20
                  slti       t0, a5, 914
                  sra        t4, a0, a3
                  nop
                  div        t5, s3, ra
                  blt        s7, t5, 685f
675:              slt        a7, a5, s5
                  and        a5, s7, s8
                  sltiu      s1, s1, -90
                  slli       s2, s4, 5
                  srl        s2, a2, s6
                  c.srai     a1, 11
                  mul        s2, a6, s4
                  sltu       t6, s11, t2
                  lui        a2, 320185
                  c.srli     a3, 6
685:              auipc      t1, 884584
                  blt        sp, t4, 697f
                  slli       a0, t0, 19
                  slt        tp, zero, t1
                  fence.i
                  c.beqz     a3, 692f
                  mulh       s6, a3, s6
692:              addi       t4, sp, -175
                  srai       s8, s5, 9
                  addi       s10, s3, -621
                  sub        t5, s10, zero
                  c.slli     tp, 23
697:              blt        zero, s3, 698f
698:              csrrsi     a2, 0x340, 23
                  bltu       s6, s3, 706f
                  c.or       a3, s0
                  c.or       a5, a5
                  srli       a7, a6, 7
                  rem        a3, s8, ra
                  sra        t4, s0, s0
                  and        s8, a0, s9
706:              rem        s0, s8, s6
                  beq        sp, a2, 711f
                  ori        a3, zero, 972
                  mulhsu     tp, s5, s8
                  lui        s8, 553163
711:              fence.i
                  ori        a5, t6, 84
                  auipc      zero, 363120
                  srai       s5, t0, 2
                  sltu       s6, s7, a4
                  nop
                  lui        s3, 184029
                  c.li       s3, 4
                  ori        s7, t5, 209
                  c.bnez     a0, 725f
                  fence
                  c.nop
                  bgeu       a7, a5, 735f
                  c.addi     s8, 18
725:              xori       s4, t0, -35
                  c.beqz     a1, 735f
                  c.beqz     a5, 739f
                  c.mv       s0, ra
                  mulhu      t4, tp, s3
                  c.li       t5, 18
                  c.slli     tp, 29
                  xor        s0, tp, a7
                  and        t5, s5, s1
                  nop
735:              rem        a5, zero, tp
                  c.nop
                  srl        s9, s11, a0
                  bgeu       zero, t4, 750f
739:              xor        a5, tp, a4
                  c.nop
                  srai       a4, t6, 22
                  csrrci     s1, 0x340, 25
                  srli       t4, a6, 5
                  bgeu       a5, a7, 746f
                  div        t0, s2, a0
746:              csrrci     s9, 0x340, 13
                  c.add      ra, t2
                  mulh       s11, t1, s3
                  slli       s8, a5, 26
750:              andi       t6, t6, -931
                  slt        s6, s4, s6
                  addi       zero, s1, 279
                  addi       s6, s0, 291
                  srai       t3, s11, 29
                  nop
                  c.or       a5, a1
                  sub        t5, a5, s11
                  srl        s6, sp, a5
                  c.mv       a4, a5
                  sra        s0, s6, s4
                  beq        s6, t2, 762f
762:              c.nop
                  remu       zero, a0, s11
                  c.srli     s0, 6
                  c.add      t4, s9
                  sll        s1, sp, s9
                  c.srai     a4, 15
                  la         s8, region_1+7391 #start load_store_instr_stream_4
                  la         s6, region_2+4227 #start load_store_instr_stream_1
                  lb         a5, -26(s8)
                  la         s4, region_0+3165 #start load_store_instr_stream_0
                  sb         a7, -1933(s6)
                  la         a1, region_3+172 #start load_store_instr_stream_2
                  la         s0, region_4+2754 #start load_store_instr_stream_3
                  lw         a6, -1777(s4)
                  sh         tp, -1689(s6)
                  lbu        s5, -2029(s4)
                  lhu        zero, 84(a1)
                  lbu        a6, 1578(s6)
                  lbu        s3, 48(s8)
                  sb         a3, -70(a1)
                  lb         s1, 702(s6)
                  lhu        a5, 281(s4)
                  lbu        s10, -1421(s0)
                  lbu        t5, -344(s4)
                  lbu        t5, 269(a1)
                  lh         t0, -3(s8)
                  sb         a4, -834(s0)
                  lb         a5, -374(s0)
                  sb         a7, -7(s8)
                  lw         zero, 261(s6)
                  lb         a7, -78(s4)
                  sw         s8, 659(s4)
                  sb         a0, -1041(s6)
                  sw         s5, 321(s6)
                  lw         a0, -954(s0)
                  lbu        a7, -1254(s6)
                  sb         sp, -222(s4)
                  lb         a2, -641(s0)
                  lbu        s10, -1336(s6)
                  sb         a7, 1139(s0)
                  sb         s4, -64(s8)
                  lhu        a0, 236(a1)
                  sb         a0, -21(s8)
                  lbu        s11, 184(s4)
                  sb         s0, -1827(s0) #end load_store_instr_stream_3
                  sb         s6, 215(a1)
                  lb         a0, 21(s8)
                  sb         s3, -652(s6) #end load_store_instr_stream_1
                  lbu        t3, -520(s4)
                  sw         s10, -15(s8) #end load_store_instr_stream_4
                  sb         s4, 259(a1) #end load_store_instr_stream_2
                  lb         zero, -1668(s4) #end load_store_instr_stream_0
                  bne        tp, tp, 769f
769:              c.mv       a5, s8
                  c.andi     a5, 8
                  fence.i
                  srl        ra, a6, t6
                  c.srai     a1, 16
                  c.xor      a2, a1
                  beq        s4, s7, 787f
                  slti       s10, tp, -50
                  mulhu      t1, s8, s7
                  slli       s7, s7, 7
                  bgeu       a2, s0, 796f
                  c.mv       a0, gp
                  or         t6, gp, gp
                  c.beqz     a3, 790f
                  and        zero, t5, sp
                  mulhsu     s5, sp, t4
                  mulh       s8, gp, a1
                  sub        s4, a4, a6
787:              slli       s9, a4, 2
                  slti       s2, a2, -400
                  nop
790:              c.andi     a0, 24
                  remu       s11, s11, a1
                  c.addi     s11, -1
                  bltu       s9, sp, 809f
                  mul        s11, a1, t0
                  fence.i
796:              bgeu       s1, s11, 798f
                  divu       t0, zero, s8
798:              sltiu      a4, t5, 658
                  csrrci     t6, 0x340, 19
                  c.or       s1, a3
                  sll        s3, a2, s4
                  c.bnez     s1, 816f
                  sltu       a2, gp, s5
                  c.andi     a3, -1
                  xori       t4, t1, 736
                  csrrci     a5, 0x340, 5
                  c.andi     a3, -1
                  c.mv       s10, s1
809:              mulh       t5, a0, gp
                  lui        s11, 1013388
                  srai       s2, a6, 27
                  sub        tp, t1, sp
                  divu       a0, t5, tp
                  addi       zero, s7, 76
                  csrrc      s1, 0x340, t5
816:              c.xor      a5, s0
                  sra        zero, s2, tp
                  mulh       t5, sp, s7
                  slt        a5, s2, s11
                  bltu       t0, a5, 821f
821:              ori        a3, s1, 282
                  c.nop
                  add        a6, a0, ra
                  add        a4, s2, s8
                  c.addi     t4, -1
                  c.add      a1, a0
                  slt        s10, s7, s11
                  mulhu      s8, t4, t2
                  c.addi     a1, -1
                  c.srai     a3, 14
                  srli       s3, s1, 16
                  bne        a6, t1, 838f
                  fence.i
                  srai       s3, s3, 17
                  andi       tp, s8, -570
                  srli       s9, t1, 1
                  mulh       s2, ra, t5
838:              bge        sp, s9, 843f
                  fence.i
                  andi       s1, a2, 246
                  c.sub      a1, a3
                  xor        s11, s2, s5
843:              div        t5, s6, ra
                  fence
                  c.bnez     a1, 856f
                  csrrw      a6, 0x340, s2
                  csrrci     a1, 0x340, 16
                  blt        s7, s3, 849f
849:              csrrc      tp, 0x340, t4
                  rem        a2, gp, s1
                  sltu       a7, s0, a1
                  c.xor      a0, a2
                  beq        a4, s5, 865f
                  c.bnez     a0, 867f
                  slt        t3, a4, a2
856:              auipc      a5, 830578
                  srli       t0, s10, 0
                  mulh       a1, a6, t0
                  or         a7, t0, a2
                  sll        s8, s7, a0
                  auipc      s9, 615824
                  bgeu       s6, t3, 882f
                  bge        t1, gp, 870f
                  c.sub      a1, a2
865:              lui        s2, 735848
                  xori       s10, zero, -457
867:              sltiu      t3, s1, 121
                  c.xor      a2, a2
                  srai       s5, s2, 23
870:              c.srai     a1, 13
                  slli       a4, ra, 23
                  c.lui      s0, 14
                  c.lui      a4, 20
                  mul        a3, s10, a7
                  csrrc      s9, 0x340, a5
                  divu       s5, sp, s10
                  mulh       s5, t5, s10
                  slti       tp, t3, -439
                  c.and      a2, a5
                  csrrsi     s11, 0x340, 0
                  c.srli     a2, 6
882:              csrrsi     s8, 0x340, 22
                  mul        s4, t3, t5
                  ori        s1, a5, -347
                  nop
                  mulh       s7, tp, s3
                  bne        s3, t6, 901f
                  bgeu       a1, s3, 905f
                  c.bnez     a4, 901f
                  bltu       s1, a0, 894f
                  div        a6, s2, a2
                  auipc      t5, 9833
                  mul        a4, s6, a5
894:              sltu       s0, t6, ra
                  c.srli     a3, 16
                  c.li       a3, -1
                  srl        t4, s11, gp
                  remu       t4, s6, t4
                  xor        a6, t6, a2
                  auipc      a1, 384869
901:              slli       t0, gp, 9
                  add        s9, s4, s2
                  fence
                  andi       t0, t5, -524
905:              mulhsu     s5, s6, s4
                  c.add      s3, s2
                  srli       s0, t1, 17
                  bgeu       s5, gp, 922f
                  sltiu      s3, a7, 155
                  c.slli     s2, 19
                  c.slli     s3, 11
                  sltiu      t0, s2, 925
                  fence.i
                  fence.i
                  sltu       s8, t2, t0
                  sra        a0, tp, a0
                  bltu       a0, a0, 924f
                  rem        ra, zero, a3
                  lui        t5, 458941
                  div        t1, t1, s8
                  c.addi     t5, -1
922:              c.xor      a0, a5
                  mulh       a7, a5, s11
924:              c.nop
                  srl        s0, t1, a3
                  fence
                  slt        a1, a7, ra
                  addi       t1, a5, -522
                  c.addi     t0, -1
                  blt        s5, s9, 931f
931:              sub        ra, t2, s5
                  sub        s2, t0, t4
                  slli       a0, a2, 9
                  c.li       t0, 4
                  csrrs      s11, 0x340, ra
                  auipc      s1, 488182
                  andi       a0, a7, 105
                  divu       t4, t1, a3
                  mulhsu     t6, t1, s9
                  csrrci     s2, 0x340, 18
                  nop
                  c.lui      a3, 18
main_13:          jal        s11, 20f
0:                jal        ra, 4f
1:                c.j        10f
2:                jal        ra, 3f
3:                c.j        6f
4:                jal        ra, 2b
5:                c.jal      0b
6:                c.j        22f
7:                c.jal      11f
8:                jal        t1, 9f
9:                c.j        7b
10:               c.j        23f
11:               c.jal      16f
12:               c.j        14f
13:               c.jal      1b
14:               c.jal      18f
15:               c.j        17f
16:               c.j        19f
17:               c.j        12b
18:               c.jal      8b
19:               c.jal      21f
20:               jal        ra, 5b
21:               c.j        13b
22:               c.j        15b
23:               xori       t6, ra, -141
                  c.andi     a2, 31
                  sra        zero, s9, zero
                  c.add      s10, s6
                  csrrsi     s0, 0x340, 10
                  slt        s8, zero, gp
                  c.bnez     s1, 949f
949:              csrrci     a6, 0x340, 9
                  bge        ra, a4, 961f
                  xor        a3, a6, s3
                  lui        t4, 940591
                  c.lui      a7, 18
                  or         s11, t0, s4
                  remu       a7, t0, s8
                  c.lui      t4, 1
                  mulhsu     s6, a0, t5
                  csrrc      s8, 0x340, s8
                  slti       a6, t6, -808
                  c.xor      a3, a4
961:              c.nop
                  slti       s6, t6, -714
                  csrrsi     s8, 0x340, 12
                  bge        a5, a2, 965f
965:              csrrs      a2, 0x340, t2
                  c.sub      a3, a3
                  or         t6, s2, a0
                  c.and      a5, a0
                  lui        ra, 676242
                  addi       zero, ra, 531
                  bne        s5, a4, 983f
                  mul        s7, t5, tp
                  c.beqz     a5, 974f
974:              c.sub      a4, a5
                  c.andi     a1, 13
                  csrrs      s5, 0x340, t1
                  csrrci     a0, 0x340, 12
                  c.andi     a3, -1
                  slt        a2, tp, t6
                  c.and      a0, a1
                  mulhsu     a1, t6, a7
                  bgeu       a1, a5, 987f
983:              c.beqz     s0, 1003f
                  c.lui      t4, 6
                  div        tp, sp, gp
                  fence.i
987:              and        t4, t2, a6
                  c.nop
                  bge        t0, a3, 997f
                  sub        ra, t0, s6
                  c.srai     a3, 31
                  sra        s2, s10, a7
                  bltu       sp, s9, 995f
                  c.sub      a5, s0
995:              or         a5, a0, s5
                  addi       a3, s9, -423
997:              or         t3, s11, t6
                  c.srli     a1, 8
                  sll        t3, a5, s9
                  csrrs      a7, 0x340, a1
                  c.addi     s8, -1
                  bgeu       s6, t3, 1008f
1003:             c.bnez     a0, 1012f
                  sra        s6, t0, a3
                  andi       s4, gp, -461
                  slli       s11, s1, 19
                  divu       a3, t2, s6
1008:             c.add      s3, s2
                  srai       t0, s3, 30
                  lui        zero, 680702
                  c.srai     a3, 28
1012:             auipc      zero, 10188
                  and        tp, ra, a5
                  bgeu       s11, s3, 1028f
                  c.srai     s1, 17
                  fence.i
                  csrrw      s2, 0x340, ra
                  c.lui      s1, 23
                  sll        s2, s0, s2
                  beq        a0, s0, 1022f
                  slt        tp, t1, tp
1022:             c.nop
                  c.slli     a7, 29
                  c.mv       t4, tp
                  c.and      s1, a5
                  sub        a2, a3, a3
                  csrrw      s11, 0x340, a7
1028:             c.mv       t5, s2
                  csrrsi     s11, 0x340, 13
                  srli       a6, s4, 31
                  sltiu      s1, zero, 216
                  mulhu      s11, gp, a4
                  c.xor      s1, a1
                  auipc      t4, 756201
                  c.srai     a0, 4
                  mulhu      ra, zero, s5
                  bltu       s9, a0, 1054f
                  xor        t0, s3, s7
                  srl        a6, s0, s10
                  and        s3, s4, a7
                  blt        s11, s2, 1053f
                  slti       s2, sp, 206
                  c.nop
                  bne        gp, t4, 1060f
                  remu       s10, s2, a7
                  mulhu      a0, t6, t4
                  c.beqz     a4, 1048f
1048:             c.slli     t5, 9
                  c.li       t4, -1
                  c.bnez     a1, 1061f
                  c.nop
                  slti       s1, a4, -725
1053:             xor        a5, t2, a5
1054:             mulhsu     a0, s8, a3
                  c.bnez     a1, 1068f
                  c.srli     s0, 21
                  divu       a6, s2, s10
                  c.beqz     s1, 1070f
                  srl        s11, s4, a7
1060:             sub        a3, s3, a0
1061:             c.nop
                  csrrsi     s0, 0x340, 18
                  c.li       a3, 9
                  addi       s2, a5, 556
                  c.lui      t6, 30
                  c.lui      a3, 8
                  c.lui      s2, 9
1068:             or         t6, gp, s1
                  fence
                  la         s4, region_3+215 #start load_store_instr_stream_1
                  sb         a6, -47(s4)
                  la         t0, region_0+2013 #start load_store_instr_stream_0
                  sh         sp, 17(s4)
                  lw         s8, -3(s4)
                  sh         a1, 7(t0)
                  lhu        ra, 3(s4)
                  sb         zero, -46(s4)
                  sh         s0, -61(s4)
                  lb         t6, -9(t0)
                  sb         s7, 0(s4)
                  lh         tp, 13(t0)
                  lb         s7, -54(s4)
                  lbu        a2, -11(t0)
                  lhu        s2, 27(s4) #end load_store_instr_stream_1
                  lb         a1, 2(t0) #end load_store_instr_stream_0
1070:             c.and      a0, a0
                  remu       s1, s8, a6
                  remu       ra, t6, a6
                  c.xor      a1, a0
                  lui        s11, 416574
                  bltu       t3, s8, 1080f
                  remu       tp, a4, s6
                  slti       t0, s0, -699
                  bgeu       a6, zero, 1090f
                  slti       a5, tp, -935
1080:             c.bnez     s1, 1087f
                  slti       s5, s7, 660
                  csrrwi     a2, 0x340, 11
                  bltu       a4, a3, 1085f
                  c.mv       a7, a0
1085:             blt        s7, a1, 1102f
                  c.andi     a3, 11
1087:             slli       a4, a6, 21
                  c.slli     t1, 14
                  csrrsi     s7, 0x340, 14
1090:             lui        s3, 627370
                  mul        t4, tp, a4
                  sltiu      a7, s4, -189
                  c.and      a3, s0
                  sll        t6, gp, s4
                  c.or       a5, a3
                  c.add      a4, s4
                  divu       a0, s9, s2
                  c.beqz     s1, 1110f
                  csrrc      a1, 0x340, t1
                  c.xor      a3, a1
                  csrrci     a2, 0x340, 9
1102:             csrrwi     s9, 0x340, 23
                  xor        t1, a2, a5
                  csrrci     s9, 0x340, 0
                  lui        s3, 241006
                  beq        s9, s6, 1120f
                  mulhsu     s3, a6, s0
                  add        s0, a3, s11
                  c.or       s1, a1
1110:             sub        s5, t6, a0
                  c.addi     a7, -1
                  or         s1, s8, s10
                  c.addi     a6, 18
                  c.mv       s1, s1
                  csrrw      t5, 0x340, t6
                  srai       s7, a7, 14
                  c.slli     s7, 10
                  mulhsu     t1, s7, s0
                  csrrc      a3, 0x340, gp
1120:             c.xor      a3, a1
                  xori       s4, a1, -687
                  addi       s7, tp, -929
                  divu       t4, ra, t2
                  auipc      s10, 396942
                  rem        a4, t5, a0
                  sll        s3, s6, a5
                  andi       s1, sp, -903
                  c.li       s5, -1
                  remu       a0, ra, t0
                  and        s6, a4, s2
                  srai       tp, a0, 26
                  csrrci     a7, 0x340, 27
                  c.mv       t3, gp
                  mulhsu     s10, t1, sp
                  xori       s11, s9, -495
                  c.slli     a0, 1
                  sub        t0, s1, s9
                  c.add      s9, t1
                  c.add      a0, s7
                  sub        zero, s7, t5
                  slt        t5, ra, zero
                  csrrc      s11, 0x340, a6
                  c.addi     a1, -1
                  csrrwi     s1, 0x340, 1
                  csrrci     t6, 0x340, 28
                  lui        a7, 661816
                  c.nop
                  addi       tp, a5, 859
                  sub        s1, s2, s11
                  c.add      s9, a1
                  mulhu      a5, a6, a2
                  csrrc      s10, 0x340, sp
                  c.addi     s1, 4
                  sltu       s1, a0, a4
                  c.andi     a0, 19
                  mulh       a3, s6, zero
                  nop
                  c.nop
                  c.bnez     a2, 1161f
                  addi       s4, s1, -981
1161:             slt        t1, zero, a2
                  and        s11, a7, gp
                  c.srli     a5, 3
                  c.lui      a4, 14
                  divu       a0, zero, s4
                  sltu       t3, a2, s3
                  csrrc      a4, 0x340, t4
                  sra        t4, t4, s1
                  andi       a7, s1, 415
                  csrrc      t3, 0x340, t2
                  c.addi     s4, -1
                  mulhsu     t0, t3, a4
                  c.li       a0, 21
                  addi       s1, sp, 301
                  mul        t3, a1, tp
                  nop
                  auipc      s2, 606619
                  la         s10, region_3+496 #start riscv_hazard_instr_stream_5
                  sb         s9, -9(s10)
                  mul        s1, a4, a4
                  lb         s1, -63(s10)
                  c.sub      a4, s1
                  remu       s6, a4, a4
                  csrrw      t0, 0x340, s6
                  c.slli     t0, 24
                  div        a4, s2, s9
                  lh         a4, -14(s10)
                  sb         s9, -44(s10)
                  lb         s9, -31(s10)
                  sw         s2, -36(s10)
                  lb         s6, -13(s10)
                  sb         s2, -58(s10)
                  fence
                  c.sub      a4, s1
                  sw         s6, -36(s10)
                  csrrc      s6, 0x340, s9
                  c.srli     s1, 22
                  lui        s2, 935113
                  lb         s9, -10(s10)
                  c.mv       s9, s9
                  sb         s9, 5(s10)
                  sh         s9, -44(s10)
                  lb         s9, -61(s10)
                  sw         s9, 4(s10)
                  csrrc      a4, 0x340, a4
                  c.mv       a4, a4
                  xori       t0, t0, -67
                  mulhsu     s1, a4, s1
                  sb         s9, -29(s10)
                  lb         a4, -15(s10)
                  lhu        s1, -50(s10)
                  srai       s1, t0, 7
                  lbu        s2, 1(s10)
                  sh         s6, -24(s10)
                  sll        s2, s6, t0
                  lb         s9, -19(s10)
                  sub        a4, s9, t0
                  lbu        s9, -37(s10)
                  sltu       s6, s6, s1
                  sb         s9, -50(s10)
                  lb         s9, -64(s10) #end riscv_hazard_instr_stream_5
                  addi       s5, sp, 209
                  fence
                  srl        s0, s8, s3
                  xor        a5, s7, s1
                  bltu       s5, a1, 1184f
                  mul        s11, t5, s0
1184:             bge        s4, t0, 1189f
                  c.or       a4, s1
                  xori       a3, t2, -841
                  mulhsu     a4, s10, s5
                  c.xor      a3, a2
1189:             c.slli     t5, 16
                  or         a1, a4, ra
                  csrrc      t4, 0x340, s1
                  fence
                  fence
                  c.add      s10, s8
                  c.xor      a3, a3
                  mulhsu     ra, t4, zero
                  nop
                  lui        t5, 10306
                  c.andi     a1, -1
                  c.beqz     a3, 1217f
                  add        ra, s6, t2
                  c.bnez     a3, 1210f
                  auipc      t3, 420716
                  andi       s3, s10, 454
                  divu       a4, t3, zero
                  c.srli     a3, 23
                  xor        t1, t6, s4
                  bgeu       t6, sp, 1209f
1209:             sub        a2, gp, a5
1210:             srli       s11, a4, 28
                  fence
                  ori        t5, s0, -107
                  srl        a2, s8, a2
                  lui        s5, 417905
                  csrrc      a5, 0x340, a3
                  blt        s8, t2, 1236f
1217:             bgeu       t5, s11, 1233f
                  c.srai     a2, 3
                  c.addi     ra, -1
                  sltu       a7, gp, a0
                  or         t5, s4, s2
                  csrrci     a4, 0x340, 3
                  ori        s11, a0, -327
                  ori        t1, t3, 795
                  andi       s3, ra, -925
                  addi       t4, t1, 995
                  c.and      a5, a0
                  bne        t3, s6, 1240f
                  csrrs      ra, 0x340, a2
                  auipc      tp, 492987
                  c.andi     a2, -1
                  or         a7, a4, t1
1233:             add        a5, a0, a6
                  or         a5, t0, s10
                  sra        a3, t4, s2
1236:             csrrc      s1, 0x340, a7
                  bne        t1, a1, 1238f
1238:             c.slli     t4, 25
                  c.li       s1, -1
1240:             slli       a7, t6, 8
                  c.li       s11, 26
                  nop
                  ori        a3, s9, -547
                  c.beqz     a3, 1245f
1245:             lui        s0, 191590
                  c.nop
                  c.or       a4, a3
                  csrrc      ra, 0x340, s7
                  c.xor      a5, a0
                  sltiu      a5, sp, -113
                  lui        s4, 818521
                  c.lui      a6, 5
                  divu       a3, a0, a5
                  csrrci     a7, 0x340, 20
                  c.add      tp, ra
                  c.and      a2, a1
                  bgeu       a5, sp, 1258f
1258:             lui        s9, 576995
                  c.slli     t3, 8
                  rem        s6, t1, s8
                  sltu       s2, s11, s7
                  and        ra, t2, t1
                  rem        s8, gp, a7
                  nop
                  c.mv       tp, s3
                  auipc      s3, 85511
                  c.lui      a1, 7
                  c.li       s9, -1
                  or         a1, ra, s3
                  xor        s6, sp, sp
                  c.addi     t0, -1
                  c.srli     a1, 7
                  c.andi     a1, 5
                  csrrc      t0, 0x340, s11
                  mulhsu     a6, s7, s7
                  c.lui      t0, 2
                  srl        s4, a5, a1
                  ori        tp, t0, -875
                  c.beqz     a4, 1284f
                  sltu       a7, t1, a2
                  csrrc      tp, 0x340, s10
                  srai       s3, s4, 11
                  c.nop
1284:             c.or       a2, a0
                  csrrw      zero, 0x340, tp
                  c.lui      s1, 19
                  srli       t3, a2, 24
                  c.and      s0, a1
                  mul        a3, gp, s11
                  bgeu       s0, s1, 1302f
                  xori       s0, s6, 247
                  sub        s11, s7, a1
                  beq        t2, s10, 1300f
                  mul        s6, t2, t5
                  csrrwi     a0, 0x340, 7
                  slti       s10, a0, -12
                  lui        t6, 1047133
                  c.lui      s2, 18
                  xor        s1, sp, tp
1300:             c.li       t0, -1
                  srli       t5, gp, 17
1302:             nop
                  c.beqz     a3, 1307f
                  divu       s5, s7, t0
                  mulhsu     s5, t2, a5
                  divu       s6, t1, a3
1307:             c.li       t1, 0
                  slli       t3, sp, 29
                  c.addi     t6, 20
                  ori        a4, zero, -744
                  remu       a4, t0, a4
                  mulhu      s8, t3, s11
                  auipc      s6, 593555
                  srli       s7, s7, 3
                  lui        s9, 592092
                  sub        s1, t2, s6
                  c.add      s4, s8
                  c.addi     a4, 27
                  remu       a0, s11, s0
                  divu       s0, t3, a7
                  remu       t1, s4, s5
                  csrrwi     a6, 0x340, 24
                  sltu       a2, t1, t6
                  c.addi     a3, 12
                  c.xor      a0, a1
                  srl        s9, t0, a0
                  csrrw      s1, 0x340, s7
                  c.xor      a1, a3
                  c.andi     s1, -1
                  beq        s0, s7, 1344f
                  sltu       t5, s5, s10
                  xori       t5, s6, -130
                  c.li       s6, -1
                  c.sub      a0, s1
                  c.or       a1, a3
                  lui        a0, 631692
                  bne        a3, a1, 1354f
                  beq        t3, zero, 1344f
                  c.li       s6, -1
                  srai       s5, a6, 31
                  csrrwi     s0, 0x340, 7
                  c.lui      t1, 10
                  nop
1344:             add        t3, t4, s3
                  slt        s1, s9, tp
                  auipc      s9, 867405
                  fence
                  csrrs      tp, 0x340, s6
                  or         s2, s0, t6
                  or         a7, s0, s8
                  xori       a3, s3, 89
                  sltu       zero, a5, s8
                  c.xor      a1, s0
1354:             rem        s3, sp, s8
                  srai       ra, t5, 19
                  c.nop
                  lui        zero, 870127
                  csrrwi     s4, 0x340, 14
                  mulhu      s6, s3, s4
                  bltu       s6, ra, 1362f
                  srli       ra, t2, 20
1362:             c.mv       t5, s11
                  bltu       s4, s0, 1370f
                  slli       ra, t3, 17
                  sll        s7, s2, gp
                  sra        s1, s1, sp
                  srl        s7, t2, s9
                  remu       t5, gp, tp
                  c.and      s1, a4
1370:             csrrs      s4, 0x340, s7
                  srl        s1, tp, t1
                  csrrsi     a5, 0x340, 4
                  fence
                  sltiu      t6, s2, -44
                  c.srai     a0, 23
                  ori        s3, s5, -855
                  bge        a5, t0, 1386f
                  rem        s10, a5, a1
                  csrrs      s6, 0x340, a6
                  andi       a7, s0, 806
                  c.lui      a4, 14
                  rem        s8, s11, a2
                  rem        ra, t6, s10
                  lui        t3, 29894
                  xor        s8, s8, s0
1386:             rem        s10, s6, s3
                  c.andi     a5, -1
                  xori       ra, t2, -667
                  csrrs      s8, 0x340, ra
                  sra        t0, a5, t5
                  ori        a0, t1, 239
                  rem        t5, a3, s0
                  rem        s10, s2, s4
                  sra        s10, a1, s3
                  c.nop
                  c.lui      a4, 8
                  srl        a4, s11, a3
                  fence
                  blt        s0, s9, 1412f
                  fence.i
                  c.nop
                  div        a7, s1, t1
                  xor        s7, a2, s1
                  c.mv       s7, a2
                  slti       a2, s5, 148
                  c.nop
                  c.and      a2, a1
                  c.add      a2, s9
                  csrrwi     a4, 0x340, 16
                  csrrsi     t6, 0x340, 25
                  addi       s8, t3, 109
1412:             csrrwi     s3, 0x340, 11
                  c.and      s1, a5
                  remu       s5, s0, t4
                  c.lui      s4, 31
                  mulhsu     s7, t1, ra
                  srli       t3, s5, 7
                  c.srai     a3, 20
                  c.and      a4, s0
                  csrrc      a6, 0x340, t0
                  mulhsu     tp, ra, s4
                  csrrs      s9, 0x340, ra
                  bgeu       a2, t0, 1434f
                  fence.i
                  c.sub      a4, s1
                  srl        s11, s9, ra
                  c.and      a2, a5
                  div        s3, a5, t3
                  c.li       a0, 1
                  bgeu       a5, t1, 1441f
                  mulhsu     t1, s0, a1
                  bgeu       s2, t2, 1444f
                  c.nop
1434:             sub        t1, tp, s11
                  ori        t3, sp, -744
                  sll        s11, t5, t1
                  remu       s8, sp, s10
                  slti       a1, a5, 145
                  mulhu      zero, s1, a7
                  srl        s6, sp, s5
1441:             bgeu       a6, a3, 1453f
                  c.beqz     a3, 1443f
1443:             c.or       a0, a0
1444:             csrrci     a2, 0x340, 7
                  mulh       a0, a3, sp
                  c.add      s6, t6
                  csrrw      s6, 0x340, a2
                  csrrwi     s9, 0x340, 23
                  and        s7, s6, a5
                  sll        t4, s8, sp
                  c.beqz     s0, 1464f
                  mul        s10, s10, a4
1453:             and        tp, s10, s11
                  add        s3, t0, a1
                  or         s5, s4, s1
                  xor        s2, a6, s10
                  mulhu      a7, s9, a6
                  blt        a6, s1, 1472f
                  c.sub      s0, s1
                  sltu       ra, ra, s10
                  srl        s9, a4, s4
                  csrrw      zero, 0x340, a6
                  addi       a3, s8, 1002
1464:             c.srai     a2, 4
                  bltu       zero, s8, 1467f
                  beq        a2, t2, 1486f
1467:             addi       a2, a7, 374
                  slt        s11, t6, s7
                  blt        s11, s8, 1480f
                  mul        t4, t6, t6
                  c.andi     a3, 21
1472:             srl        s1, s1, a6
                  csrrs      tp, 0x340, s1
main_10:          jal        s11, 3f
0:                jal        t1, 19f
1:                jal        ra, 9f
2:                c.j        15f
3:                c.j        1b
4:                jal        ra, 10f
5:                jal        t1, 8f
6:                jal        t0, 14f
7:                c.j        0b
8:                c.j        4b
9:                c.jal      17f
10:               jal        tp, 16f
11:               c.jal      7b
12:               jal        t1, 13f
13:               jal        ra, 11b
14:               c.j        2b
15:               jal        ra, 12b
16:               jal        ra, 18f
17:               c.jal      6b
18:               c.jal      20f
19:               c.j        5b
20:               c.li       t5, 3
                  slt        t6, s8, gp
                  csrrwi     ra, 0x340, 12
                  sltu       zero, t5, t0
                  c.srli     a1, 1
                  c.srai     a3, 29
                  addi       a3, s3, 968
1480:             fence
                  c.sub      a1, s1
                  srl        a3, zero, s6
                  sub        tp, a2, t0
                  c.or       a1, a1
                  c.or       a2, a3
1486:             mulh       s3, s7, s9
                  bge        s1, sp, 1496f
                  ori        s8, t4, -106
                  c.andi     a3, 28
                  xor        a4, a4, s11
                  bne        a3, s5, 1503f
                  sll        s0, t0, a2
                  csrrsi     a6, 0x340, 16
                  divu       s9, t1, a7
                  div        a1, s7, t2
1496:             addi       s2, t6, -246
                  bgeu       s9, a5, 1499f
                  lui        s11, 445446
1499:             sub        s4, zero, a1
                  c.add      a4, t4
                  beq        t6, a4, 1502f
1502:             mulhu      s10, s9, s10
1503:             c.and      s0, s0
                  bne        t2, a5, 1509f
                  srai       s5, t5, 14
                  c.and      s1, a4
                  c.xor      a5, a1
                  c.xor      a4, a5
1509:             c.add      s6, a3
                  addi       s0, s11, 702
                  c.beqz     s0, 1522f
                  c.mv       s1, a7
                  csrrsi     ra, 0x340, 19
                  csrrw      t6, 0x340, a4
                  c.addi     s6, 15
                  c.srai     a1, 30
                  fence
                  csrrsi     t3, 0x340, 4
                  sll        s10, s9, a2
                  mul        a2, s9, t4
                  c.mv       t5, s8
1522:             divu       s2, zero, t5
                  xori       s2, a5, 867
                  csrrc      ra, 0x340, zero
                  c.mv       t6, a6
                  bne        t6, t2, 1528f
                  sltu       s8, gp, a4
1528:             c.beqz     a1, 1540f
                  c.li       a7, 2
                  divu       s6, a1, t1
                  sra        a5, a5, t6
                  c.srli     a5, 14
                  srai       tp, s10, 19
                  c.bnez     a4, 1546f
                  div        a5, sp, a7
                  slti       a3, s5, -193
                  xor        a0, zero, s7
                  c.add      s11, s11
                  or         t1, a1, a4
1540:             sltiu      a3, s4, -511
                  slti       s2, t3, 715
                  c.add      s9, s6
                  fence
                  bgeu       s9, zero, 1552f
                  c.slli     s2, 29
1546:             div        t5, s2, s2
                  divu       tp, t2, t5
                  slli       a1, t5, 7
                  c.mv       t0, s4
                  blt        t2, t1, 1566f
                  slti       s10, sp, 683
1552:             sltiu      s3, a4, -190
                  csrrsi     a0, 0x340, 16
                  mulh       s1, gp, t1
                  c.srli     a5, 19
                  bge        s9, a6, 1562f
                  c.xor      a4, s0
                  bne        a2, a0, 1570f
                  sub        a2, s0, s7
                  bgeu       t6, a1, 1561f
1561:             xor        s0, s3, s2
1562:             srli       t1, a2, 1
                  fence.i
                  c.srai     s1, 4
                  c.li       ra, -1
1566:             bne        s6, t4, 1573f
                  csrrwi     s0, 0x340, 28
                  lui        zero, 836267
                  addi       t5, s6, 154
1570:             c.bnez     a3, 1584f
                  sub        t6, tp, a1
                  sll        s11, gp, s4
1573:             c.andi     a2, 28
                  rem        t0, s5, ra
                  sltu       t1, ra, a1
                  csrrci     s8, 0x340, 4
                  srl        a1, s11, s7
                  c.mv       s7, s7
                  lui        s10, 233019
                  srai       s6, a1, 6
                  lui        s3, 37069
                  mulhu      tp, s10, sp
                  c.xor      a5, a1
1584:             c.add      t3, s9
                  csrrci     t6, 0x340, 19
                  divu       s2, s1, a3
                  slt        s2, zero, t0
                  blt        s6, gp, 1589f
1589:             addi       a1, s11, 38
                  slt        t4, a5, s5
                  or         s8, a1, t2
                  divu       s8, a6, a2
                  nop
                  fence
                  sra        s10, s10, a2
                  lui        t0, 381625
                  csrrc      t0, 0x340, t6
                  c.sub      s0, a3
                  c.and      a0, a3
                  divu       a0, s7, s0
                  divu       zero, s1, s2
                  remu       s9, ra, tp
                  c.mv       s8, s11
                  c.or       a4, s0
                  c.nop
                  bltu       a0, s11, 1618f
                  bgeu       t2, t6, 1614f
                  bltu       a3, t6, 1625f
                  c.li       s5, 0
                  blt        t0, s3, 1611f
1611:             slt        s7, gp, t4
                  csrrci     a0, 0x340, 31
                  c.srai     a3, 9
1614:             rem        s11, s4, s9
                  sub        tp, a0, tp
                  c.or       a2, a1
                  lui        a0, 716738
1618:             c.add      t1, s10
                  add        s1, s9, s5
                  c.bnez     s0, 1621f
1621:             c.add      s5, a6
                  c.bnez     a2, 1627f
                  csrrw      a3, 0x340, gp
                  srli       t0, a6, 22
1625:             blt        s8, t6, 1629f
                  auipc      a3, 398021
1627:             csrrwi     s3, 0x340, 2
                  c.srai     a0, 23
1629:             mulhsu     s5, ra, s11
                  addi       s8, a2, 273
                  lui        t5, 565906
                  srl        t0, a5, a2
                  andi       s9, t5, -641
                  xor        s6, a0, s0
                  mulhu      a3, t3, t4
                  andi       a4, s7, 450
                  c.srli     a4, 28
                  ori        t6, zero, 392
                  srli       t5, s6, 12
                  div        s4, a5, a3
                  beq        a1, gp, 1658f
                  c.or       a4, a5
                  srl        s5, s6, a4
                  addi       a2, s9, -87
                  lui        t4, 860282
                  mulhu      s8, s6, s1
                  fence.i
                  c.nop
                  lui        t3, 178082
                  srl        t0, s1, a5
                  bgeu       a5, sp, 1662f
                  sltiu      a3, t2, 298
                  srl        s2, s10, s0
                  andi       s7, s10, -797
                  div        t5, a6, s7
                  c.and      a4, a4
                  fence.i
1658:             sll        t5, gp, sp
                  srli       s6, t1, 31
                  c.slli     t1, 23
                  c.and      a5, a3
1662:             csrrwi     ra, 0x340, 23
                  csrrwi     t1, 0x340, 4
                  c.li       s1, -1
                  xori       t6, s7, 616
                  csrrs      a5, 0x340, a1
                  add        s1, s2, a4
                  c.or       s0, a0
                  la         s9, sub_1
                  c.and      a2, a0
                  addi       s9, s9, -669
                  c.or       a4, s0
j__main_sub_1_1:  jalr       s11, s9, 669
                  c.li       a3, -1
                  csrrs      t4, 0x340, s6
                  addi       a2, sp, -58
                  or         s0, s6, s9
                  c.nop
                  slli       a6, s1, 15
                  sub        a6, t6, s0
                  csrrwi     t1, 0x340, 29
                  sll        s2, s5, s4
                  mul        tp, t6, a5
                  div        s4, s9, sp
                  csrrwi     s6, 0x340, 30
                  csrrs      ra, 0x340, gp
                  srli       s5, s2, 16
                  sll        s6, s5, a3
                  c.addi     t5, 10
                  c.sub      a2, s0
                  c.slli     s1, 15
                  csrrci     s2, 0x340, 8
                  sltiu      s4, t5, 327
                  c.srli     s0, 20
                  c.or       a3, s1
                  c.andi     a5, 10
                  srl        a1, s11, s10
                  xor        t5, s11, t4
                  sltiu      t1, t4, 144
                  beq        s3, s2, 1694f
                  csrrsi     s6, 0x340, 7
1694:             srl        a2, a7, t3
                  c.li       s9, 23
                  sltu       tp, a3, gp
                  mulhu      s0, a4, a7
                  c.addi     s8, -1
                  csrrwi     t1, 0x340, 30
                  sltiu      s0, s4, 308
                  c.li       s2, -1
                  remu       a0, a5, t4
                  c.nop
                  csrrci     ra, 0x340, 24
                  csrrc      a0, 0x340, s3
                  bne        s0, s5, 1718f
                  csrrc      zero, 0x340, a0
                  sltu       s4, t3, s5
                  c.lui      a1, 26
                  srli       t1, a3, 4
                  c.bnez     a5, 1724f
                  c.beqz     a2, 1713f
1713:             csrrw      s0, 0x340, s7
                  addi       t5, s8, 423
                  srl        s6, ra, s10
                  divu       s2, a4, s5
                  bge        a1, s6, 1734f
1718:             srai       s1, t3, 27
                  c.addi     s1, -1
                  csrrw      s6, 0x340, s7
                  xor        s9, s4, s3
                  bne        a3, t1, 1733f
                  c.bnez     a4, 1729f
1724:             c.andi     a4, -1
                  mul        a7, a6, s0
                  remu       s11, zero, s6
                  or         a4, s11, t4
                  sltiu      a0, a0, -934
1729:             nop
                  addi       t4, t1, -107
                  fence.i
                  rem        s10, s9, sp
1733:             sltu       s7, a0, s1
1734:             c.mv       s1, tp
                  csrrc      t0, 0x340, ra
                  c.srli     s0, 24
                  beq        a1, a6, 1741f
                  csrrwi     a4, 0x340, 29
                  ori        t1, s2, -324
                  sub        a0, s11, t3
1741:             srl        t5, a5, t6
                  mulhsu     a4, t5, s6
                  lui        s11, 482176
                  ori        a1, tp, 878
                  bgeu       s9, a5, 1754f
                  add        a3, s3, sp
                  beq        a6, t6, 1748f
1748:             csrrsi     s2, 0x340, 26
                  slli       s8, t4, 6
                  csrrsi     s11, 0x340, 11
                  c.addi     a7, 15
                  sltu       s11, s11, s4
                  slti       a5, s8, -865
1754:             c.add      t3, t3
                  c.lui      t1, 28
                  nop
                  sll        s7, s10, t5
                  fence
                  c.or       a3, a0
                  sll        t1, s9, a7
                  sub        s5, t4, gp
                  sra        a5, a2, t6
                  xor        s5, s7, s7
                  add        s3, s1, s0
                  srai       a2, s9, 20
                  bgeu       s2, s9, 1778f
                  xori       zero, t0, -497
                  slli       t1, t3, 12
                  sub        s5, a2, s4
                  andi       tp, a2, -751
                  mulhu      s5, s9, t3
                  c.bnez     a3, 1773f
1773:             sltiu      zero, s5, 312
                  csrrsi     a0, 0x340, 30
                  divu       tp, a1, gp
                  lui        zero, 2172
                  xori       t4, zero, 499
1778:             lui        ra, 325685
                  csrrci     s6, 0x340, 25
                  csrrci     s4, 0x340, 1
                  c.lui      a2, 21
                  c.slli     t5, 11
                  c.sub      a1, a2
                  div        a4, s9, ra
                  slti       s6, s3, 353
                  c.mv       s7, a0
                  sra        a5, gp, s0
                  c.beqz     a0, 1795f
                  c.li       a6, 12
                  srli       s5, s1, 6
                  auipc      t0, 329453
                  csrrci     a3, 0x340, 9
                  beq        tp, sp, 1805f
                  c.li       s9, -1
1795:             mul        s4, a1, s8
                  or         a7, t2, a5
                  beq        s4, a2, 1799f
                  c.sub      a3, s0
1799:             c.lui      t0, 20
                  rem        t3, s3, t5
                  div        s10, a1, t5
                  bltu       t2, a7, 1803f
1803:             andi       s9, t2, 233
                  remu       s11, s3, s5
1805:             srli       s8, a2, 30
                  csrrw      t1, 0x340, t1
                  auipc      a1, 104054
                  c.beqz     a2, 1820f
                  slli       t1, s10, 7
                  bltu       t2, s1, 1824f
                  c.sub      a3, a3
                  beq        s11, s10, 1832f
                  fence
                  csrrsi     s4, 0x340, 9
                  bne        t5, s3, 1831f
                  slti       a2, a7, -1022
                  csrrs      tp, 0x340, s4
                  ori        s11, s9, 851
                  mulhsu     s9, t0, s10
1820:             addi       tp, s3, -387
                  mulhsu     zero, gp, s4
                  beq        s1, gp, 1830f
                  c.srli     a1, 23
1824:             nop
                  c.addi     t6, -1
                  fence.i
                  c.sub      a4, a2
                  c.sub      a3, s0
                  bltu       s5, tp, 1836f
1830:             csrrc      t0, 0x340, ra
1831:             lui        s3, 627313
1832:             mulhu      s4, s8, s6
                  sub        a5, a0, s5
                  nop
                  c.lui      t4, 17
1836:             blt        s8, s10, 1841f
                  xor        a2, a5, zero
                  csrrsi     tp, 0x340, 2
                  xori       t1, s10, -147
                  beq        a3, t1, 1845f
1841:             sltu       a2, s1, s0
                  rem        tp, t0, t2
                  csrrs      s1, 0x340, s1
                  remu       t1, t2, ra
1845:             beq        gp, ra, 1859f
                  lui        a4, 18911
                  and        a1, t6, a6
                  lui        a2, 529612
                  csrrwi     t0, 0x340, 25
                  sll        s1, ra, zero
                  srai       s1, a6, 21
                  bge        s3, a4, 1854f
                  slt        s4, t1, s9
1854:             xori       t4, a5, -1023
                  slti       t6, tp, 418
                  c.add      t5, t3
                  csrrci     s7, 0x340, 5
                  c.li       s9, -1
1859:             div        a6, zero, s7
                  xor        a4, zero, t1
                  and        t4, a0, ra
                  slli       t6, t6, 7
                  c.addi     a7, 25
                  sub        a4, s0, a0
                  csrrwi     zero, 0x340, 4
                  and        s2, zero, t4
                  mulh       a3, a0, a5
                  fence
                  bge        a7, t3, 1886f
                  c.sub      a5, s1
                  c.beqz     a1, 1872f
1872:             xor        a7, t3, s1
                  div        s11, t3, a6
                  slt        t5, s10, s6
                  sub        a1, s7, zero
                  xor        s10, a7, s8
                  div        s0, t0, t4
                  csrrc      zero, 0x340, s9
                  sra        a3, ra, t0
                  c.mv       t1, t3
                  csrrci     a3, 0x340, 16
                  c.and      a2, s0
                  c.and      a1, a5
                  c.slli     a6, 17
                  mul        a2, t4, t6
1886:             or         a1, a2, a1
                  c.andi     s1, -1
                  fence
                  c.lui      s9, 25
                  sltu       t4, s7, s5
                  csrrc      s8, 0x340, ra
                  xori       a0, s7, 582
                  srl        t4, s8, t6
                  c.lui      t3, 14
                  mulh       t4, s1, a4
                  bltu       t3, t6, 1908f
                  ori        s1, ra, 279
                  sltiu      s11, s5, -129
                  slti       s6, s10, 90
                  c.and      a4, a2
                  beq        sp, t6, 1902f
1902:             c.nop
                  and        t3, t3, a1
                  slt        s4, gp, t2
                  bge        s11, s2, 1913f
                  sll        t0, a6, a1
                  bgeu       zero, a0, 1908f
1908:             and        s0, a3, s9
                  fence.i
                  srai       s10, a6, 23
                  c.beqz     a0, 1927f
                  and        s11, s3, zero
1913:             srli       s8, t2, 20
                  sub        a5, t1, t4
                  c.addi     t3, 6
                  andi       s1, s4, 853
                  beq        s0, s1, 1919f
                  xori       s7, s7, 664
1919:             slti       zero, s3, -719
                  lui        t3, 729920
                  fence.i
                  fence.i
                  mul        t5, a0, s4
                  bge        s9, a1, 1930f
                  sltiu      t3, t3, -402
                  rem        tp, s8, gp
1927:             auipc      a3, 823672
                  remu       s8, s10, tp
                  mulh       ra, s7, s2
1930:             divu       t4, s1, s11
                  mulhsu     a3, a4, t6
                  mulhu      t5, gp, ra
                  slt        a6, s5, s4
                  csrrw      s0, 0x340, a6
                  mul        t0, tp, a4
                  bltu       sp, s8, 1940f
                  addi       a5, a5, 487
                  sub        a6, s5, a3
                  lui        zero, 11658
1940:             slt        t6, s1, a4
                  c.sub      a5, a4
                  c.and      s0, a3
                  bgeu       s7, ra, 1948f
                  blt        a5, s6, 1961f
                  csrrw      tp, 0x340, s8
                  c.nop
                  fence.i
1948:             mulh       s7, s1, s6
                  c.bnez     s0, 1950f
1950:             csrrsi     s1, 0x340, 2
                  csrrci     s5, 0x340, 16
                  andi       a7, s7, -170
                  slt        s5, s7, s8
                  mulh       ra, s6, t1
                  mul        t6, s11, a1
                  auipc      s2, 955743
                  sub        s0, s10, t6
                  mulh       s7, t1, s3
                  c.or       a0, a3
                  c.bnez     a2, 1971f
1961:             mul        s3, a2, sp
                  add        a5, t0, s3
                  fence.i
                  c.add      a7, s1
                  and        s5, s4, s0
                  c.add      t5, t2
                  nop
                  csrrsi     a1, 0x340, 21
                  c.beqz     a2, 1981f
                  sltiu      s8, gp, -124
1971:             c.sub      s1, a3
                  c.and      a4, a5
                  c.addi     ra, 1
                  c.andi     a5, -1
                  c.xor      a2, s0
                  c.and      a3, a5
                  fence
                  c.addi     a3, 26
                  c.sub      a5, a2
                  c.srli     s1, 27
1981:             sll        t0, a1, s5
                  c.bnez     a1, 1987f
                  c.bnez     a4, 1992f
                  c.srli     a5, 6
                  c.sub      s0, s0
                  csrrwi     s1, 0x340, 6
1987:             csrrs      s3, 0x340, t4
                  mulhsu     s1, ra, s1
                  addi       t6, s10, 368
                  c.sub      a2, a0
                  srli       t3, a4, 8
1992:             or         a5, s8, s3
                  csrrs      t1, 0x340, a1
                  c.mv       a5, t3
                  c.sub      a4, a2
                  blt        s0, t5, 2013f
                  mulh       s8, a4, t3
                  ori        t0, t1, -687
                  c.nop
                  c.addi     ra, 19
                  csrrci     a2, 0x340, 21
                  addi       a0, t4, -1023
                  add        s8, s10, a7
                  csrrwi     a5, 0x340, 0
                  sra        t1, a5, t0
                  and        ra, s4, s1
                  srl        s9, s4, a3
                  srli       zero, a7, 10
                  csrrw      t1, 0x340, s5
                  csrrs      s5, 0x340, a1
                  and        ra, s5, t3
                  slli       a3, t6, 10
2013:             slt        s9, ra, t3
                  bge        t2, t5, 2026f
                  csrrs      a6, 0x340, s5
                  mulhu      a3, s6, s2
                  csrrsi     t5, 0x340, 13
                  remu       t3, s0, zero
                  rem        a5, zero, gp
                  c.sub      a1, a3
                  csrrc      a5, 0x340, s3
                  c.slli     t3, 31
                  fence.i
                  xori       s6, a1, 452
                  fence.i
2026:             c.nop
                  c.lui      a6, 24
                  c.and      a3, a3
                  xori       a1, ra, -452
                  c.addi     a2, 31
                  c.sub      a3, a0
                  c.addi     a0, 31
                  bge        t5, t1, 2044f
                  c.xor      a2, a5
                  addi       ra, a7, 942
                  bgeu       s2, s0, 2043f
                  csrrc      ra, 0x340, a2
                  fence
                  ori        t0, s4, -304
                  c.andi     s0, -1
                  ori        t3, t3, 854
                  c.beqz     a2, 2054f
2043:             bne        sp, s1, 2050f
2044:             csrrwi     tp, 0x340, 10
                  beq        a4, t3, 2057f
                  csrrwi     a2, 0x340, 17
                  divu       tp, sp, s8
                  addi       a2, t4, -861
                  ori        t5, s4, -282
2050:             bgeu       zero, ra, 2070f
                  lui        t4, 714081
                  c.andi     a0, 9
                  or         a5, s6, s7
2054:             mul        zero, a3, t6
                  bltu       s7, a4, 2056f
2056:             slti       a3, sp, 433
2057:             mulh       a1, s6, s5
                  csrrw      a6, 0x340, t2
                  addi       s10, s9, 785
                  ori        s11, a5, -894
                  sltiu      t5, a1, 899
                  sltu       ra, t2, a6
                  add        s11, t6, s2
                  bltu       s6, zero, 2066f
                  srl        tp, s3, s3
2066:             add        a4, a0, a1
                  ori        s10, a2, 140
                  fence.i
                  slt        a4, t6, a4
2070:             ori        s2, t5, 98
                  xor        t6, s5, zero
                  c.srai     a5, 18
                  c.nop
                  blt        s3, s9, 2076f
                  rem        zero, s10, s11
2076:             sltu       a3, s11, a0
                  c.nop
                  c.mv       s4, s3
                  mulhu      s3, zero, t5
                  c.lui      s11, 19
                  c.or       a4, s0
                  ori        s4, t3, -288
                  bge        s11, tp, 2084f
2084:             c.or       s1, a3
                  csrrwi     t0, 0x340, 25
                  xori       s9, s0, -514
                  csrrw      s2, 0x340, t0
                  c.srai     a3, 30
                  csrrwi     a0, 0x340, 16
                  c.lui      a1, 25
                  csrrc      a7, 0x340, s4
                  c.or       a2, a5
                  c.slli     s6, 18
                  or         a0, t4, t4
                  slti       t3, a3, -96
                  bge        a3, a3, 2109f
                  c.andi     a5, -1
                  andi       a1, s5, -129
                  csrrsi     t5, 0x340, 14
                  sltu       s4, sp, t5
                  c.mv       s6, s2
                  blt        s8, a7, 2116f
                  slli       ra, s0, 4
                  xori       a3, a0, -389
                  c.lui      s1, 18
                  rem        a1, gp, t1
                  c.beqz     s0, 2121f
                  srai       a2, a0, 17
2109:             remu       s11, ra, s7
                  slt        s0, a0, s9
                  addi       s1, a7, -22
                  c.srai     a2, 12
                  c.andi     a2, -1
                  xor        t6, s3, t3
                  c.addi     t1, 16
2116:             div        tp, s9, s4
                  slt        s0, a0, s6
                  mulh       s0, t3, a3
                  bgeu       a5, s1, 2131f
                  c.srli     s0, 18
2121:             or         a7, a0, t3
                  mul        s1, s9, gp
                  rem        s10, t2, a1
                  ori        s9, t0, 911
                  csrrw      a1, 0x340, s2
                  and        a3, zero, s5
                  remu       a7, t1, s7
                  c.lui      s11, 5
                  srai       a3, ra, 23
                  csrrw      s1, 0x340, t0
2131:             c.add      t1, gp
                  bge        a0, s2, 2133f
2133:             auipc      s7, 887561
                  remu       a2, a0, s2
                  srl        s8, a3, a4
                  c.addi     s3, 8
                  c.add      s11, a5
                  fence
                  c.and      s0, a5
                  divu       s5, t1, s6
                  csrrw      s2, 0x340, s11
                  bne        s4, t3, 2159f
                  bge        a2, t6, 2155f
                  bgeu       ra, t5, 2156f
                  mul        t6, t3, a2
                  c.add      a0, a4
                  bltu       t2, a0, 2148f
                  la         t0, region_4+2845 #start load_store_instr_stream_1
                  lb         s10, -1176(t0)
                  lbu        s1, -722(t0)
                  la         a7, region_2+3477 #start load_store_instr_stream_0
                  lb         a2, -888(t0)
                  sb         a7, 9(a7)
                  lbu        s0, 1049(t0)
                  sw         t0, 11(a7)
                  lbu        s10, 1234(t0)
                  lb         s7, -13(a7)
                  lbu        s3, 512(t0)
                  sb         s9, 780(t0)
                  lbu        s2, 0(a7)
                  lb         zero, -990(t0)
                  lb         s7, 1(a7)
                  sb         s5, 2(a7)
                  sw         t1, 407(t0) #end load_store_instr_stream_1
                  sb         a7, -6(a7) #end load_store_instr_stream_0
2148:             sub        t3, s10, t4
                  sub        ra, a2, zero
                  sll        t0, t1, zero
                  mulh       a6, s11, zero
                  slli       s9, zero, 27
                  div        t6, t5, gp
                  c.srai     a4, 31
2155:             sra        s8, t3, sp
2156:             mulhsu     s11, t4, s2
                  mulhsu     t1, ra, s10
                  fence.i
2159:             lui        s3, 480591
                  and        s7, s2, zero
                  c.beqz     a1, 2166f
                  slti       zero, a1, 935
                  c.or       a0, s0
                  sltiu      a1, t5, 781
                  c.srai     a5, 12
2166:             c.mv       s8, s10
                  c.sub      a5, a5
                  c.andi     a5, -1
                  mulhsu     s8, s2, gp
                  c.mv       tp, t5
                  mulhsu     t6, s5, a0
                  c.and      a2, a0
                  sll        s1, s2, s0
                  c.xor      a1, a3
                  csrrwi     a6, 0x340, 11
                  andi       s1, t0, 389
                  slt        a1, s9, s4
                  csrrw      a7, 0x340, a7
                  csrrsi     ra, 0x340, 30
                  c.mv       t4, t6
                  addi       s1, a1, -899
                  c.addi     a2, 22
                  remu       s0, s9, s7
                  mulhsu     s10, t4, s9
                  div        s5, s2, sp
                  c.li       a1, 15
                  rem        t6, s4, t5
                  bgeu       t3, s11, 2190f
                  bgeu       a4, gp, 2195f
2190:             c.addi     s10, 8
                  beq        t4, s11, 2205f
                  andi       a6, ra, 708
                  srai       s1, a6, 30
                  div        ra, s11, a1
2195:             bge        s6, t2, 2215f
                  xor        s3, a5, t5
                  c.andi     a5, 21
                  srl        a2, s0, s6
                  c.lui      t0, 18
                  sll        s2, s9, t4
                  sub        s3, s11, a1
                  and        zero, s11, s6
                  csrrci     s9, 0x340, 13
                  fence.i
2205:             mul        ra, a3, s9
                  or         s10, a0, t5
                  c.li       s5, 23
                  divu       t3, s6, s1
                  remu       a5, s2, a4
                  slt        s11, t5, a7
                  sltiu      s2, a2, -173
                  c.xor      a1, a3
                  and        s3, s11, s7
                  c.li       t4, -1
2215:             c.andi     s0, -1
                  c.srli     a4, 9
                  bne        s7, t4, 2222f
                  fence
                  c.mv       t6, a1
                  fence
                  remu       t5, s4, s8
2222:             add        s2, ra, s6
                  mulhu      s5, s1, s5
                  csrrs      t3, 0x340, s8
                  csrrci     t4, 0x340, 14
                  c.srai     a5, 31
                  fence.i
                  csrrs      t4, 0x340, gp
                  slti       s4, t2, 674
                  and        t0, s7, s4
                  c.srai     a4, 17
                  c.sub      s1, a2
                  c.beqz     a2, 2246f
                  c.slli     a4, 8
                  slt        s6, s9, a1
                  and        s7, t0, t4
                  bltu       s1, t3, 2246f
                  lui        t0, 1008909
                  remu       t0, gp, a6
                  c.addi     t0, -1
                  c.or       s0, a3
                  rem        s0, s9, a2
                  csrrc      t3, 0x340, gp
                  c.srli     a2, 5
                  mulhsu     t3, a0, t2
2246:             c.xor      s1, a1
                  bne        zero, a3, 2254f
                  c.srai     a2, 2
                  bge        s7, s10, 2266f
                  addi       s10, t5, -262
                  c.or       a4, a2
                  rem        a1, gp, s9
                  blt        s11, s0, 2260f
2254:             mul        a3, a2, s1
                  csrrwi     t0, 0x340, 11
                  c.nop
                  c.bnez     s1, 2259f
                  bltu       s3, t2, 2272f
2259:             sll        s3, t0, t3
2260:             blt        a0, a4, 2276f
                  rem        a4, a0, t5
                  div        a4, t1, s2
                  c.lui      t0, 12
                  c.add      a6, a7
                  c.xor      s1, a2
2266:             slli       a3, a5, 21
                  bge        gp, s1, 2278f
                  la         s9, region_3+316 #start riscv_hazard_instr_stream_6
                  lhu        s4, -242(s9)
                  c.xor      s0, s0
                  rem        s11, s0, t6
                  lbu        t6, 34(s9)
                  sb         t6, 192(s9)
                  slti       s4, s0, -884
                  c.addi     s4, -1
                  csrrw      s11, 0x340, s10
                  sb         s4, -204(s9)
                  csrrc      s10, 0x340, s10
                  fence.i
                  lbu        s11, -271(s9)
                  lb         a6, -175(s9)
                  csrrc      s4, 0x340, t6
                  sb         t6, 63(s9)
                  lbu        s0, 53(s9)
                  sh         s0, -170(s9)
                  sub        t6, a6, s4
                  lh         s4, -236(s9)
                  sltiu      s4, t6, -309
                  lbu        s4, -183(s9)
                  addi       s10, s11, -251
                  sb         s11, -109(s9)
                  sb         s10, 114(s9)
                  sb         a6, -45(s9)
                  lb         t6, 191(s9)
                  lbu        s11, -150(s9)
                  lb         s10, -97(s9)
                  csrrw      a6, 0x340, a6
                  sb         s4, 90(s9)
                  csrrsi     t6, 0x340, 29
                  auipc      s0, 783358
                  lbu        s0, 139(s9) #end riscv_hazard_instr_stream_6
                  beq        sp, s9, 2269f
2269:             sltu       a5, ra, s6
                  xori       s0, s2, -129
                  mulhu      a2, s0, t2
2272:             c.sub      a0, s1
                  c.slli     s3, 17
                  mulhu      s2, s5, s9
                  srai       s4, s1, 11
2276:             fence
                  c.addi     s1, 2
2278:             bgeu       s2, t2, 2279f
2279:             c.or       s1, s0
                  c.addi     ra, -1
                  c.mv       s8, t3
                  remu       t6, s8, s8
                  slt        zero, s0, s8
                  fence.i
                  andi       a3, a2, 426
                  csrrci     tp, 0x340, 19
                  addi       s3, a3, 756
                  sltu       t3, s2, t2
                  csrrwi     t3, 0x340, 5
                  beq        zero, s3, 2298f
                  addi       s5, a1, -184
                  sub        s3, s9, s1
                  csrrs      s3, 0x340, s4
                  c.beqz     a2, 2306f
                  addi       a5, s3, -731
                  andi       t1, s3, 970
                  addi       a4, a6, 703
2298:             srl        s1, s0, t5
                  csrrw      a6, 0x340, t3
                  c.and      s0, a2
                  sltiu      s1, s6, -376
                  slt        t1, s11, t1
                  c.addi     s7, 13
                  c.lui      a0, 21
                  div        t5, s7, s11
2306:             c.add      t6, t5
                  mul        a7, sp, s6
                  csrrsi     s9, 0x340, 9
                  srl        s10, s2, t6
                  csrrwi     t1, 0x340, 24
                  c.xor      a0, a2
                  nop
                  blt        s7, s11, 2324f
                  c.nop
                  blt        a2, t2, 2319f
                  sltiu      s6, t0, -181
                  c.lui      a3, 17
                  slti       s11, t2, -849
2319:             bge        a3, t0, 2320f
2320:             csrrs      a0, 0x340, s7
                  mulhu      s5, t1, t0
                  bge        a0, a3, 2324f
                  c.nop
2324:             mul        a5, s6, t4
                  csrrwi     s4, 0x340, 7
                  c.or       a2, a0
                  csrrc      s2, 0x340, s6
                  csrrsi     s7, 0x340, 9
                  c.lui      a3, 3
                  mulhu      s6, s10, s5
                  c.mv       s9, t0
                  lui        s5, 263072
                  or         s6, s9, a5
                  sll        t1, gp, a7
                  c.mv       t6, t2
                  slti       s6, s4, 392
                  csrrs      s6, 0x340, s10
                  c.srli     a5, 17
                  fence.i
                  bgeu       t1, ra, 2352f
                  nop
                  rem        t1, a4, zero
                  sltu       a2, zero, zero
                  mul        a4, t3, s4
                  or         t1, tp, s10
                  csrrc      t0, 0x340, a4
                  bltu       a3, a5, 2359f
                  mulhu      tp, t0, t3
                  sub        s9, t5, s3
                  sltiu      zero, a3, -307
                  csrrc      a7, 0x340, s8
2352:             slli       t1, t4, 17
                  c.mv       t4, ra
                  mulhsu     s6, s10, s4
                  slt        t4, t0, s0
                  rem        s11, a1, t2
                  srl        tp, t5, s1
                  slt        s3, s11, s9
2359:             mulh       s4, t3, s6
                  c.beqz     a0, 2362f
                  blt        s11, a1, 2373f
2362:             sltiu      t1, s0, -425
                  xor        zero, a0, s9
                  slti       s6, t6, -514
                  slt        a4, a7, s4
                  c.sub      a3, s0
                  bltu       t2, a3, 2383f
                  srli       t4, a2, 21
                  csrrw      s9, 0x340, s5
                  c.or       a2, a0
                  addi       s5, s8, 450
                  bltu       a1, t0, 2378f
2373:             sltiu      s8, s3, 64
                  srai       s8, s9, 21
                  auipc      s1, 567449
                  bge        sp, s0, 2388f
                  c.slli     t3, 4
2378:             c.and      a5, a0
                  c.lui      t1, 28
                  csrrw      t4, 0x340, a1
                  mulhsu     a2, a0, a3
                  c.nop
2383:             fence.i
                  c.or       a4, a1
                  auipc      s1, 304951
                  c.andi     s0, -1
                  sub        s3, s8, s6
2388:             and        t4, s4, t4
                  csrrc      s0, 0x340, a1
                  c.srai     a4, 18
                  ori        a6, s7, 121
                  fence
                  remu       a5, t2, s8
                  and        ra, a1, s11
                  c.and      s0, s0
                  c.bnez     a1, 2397f
2397:             c.srai     a0, 27
                  c.beqz     a2, 2399f
2399:             beq        t3, s2, 2404f
                  bltu       s1, t0, 2408f
                  c.srli     a1, 27
                  addi       s0, t0, -658
                  c.sub      a4, a4
2404:             csrrw      a5, 0x340, s4
                  ori        t6, s8, 710
                  csrrci     t5, 0x340, 18
                  c.srai     a1, 10
2408:             c.li       t5, -1
                  auipc      s9, 33426
                  ori        s2, t6, 790
                  c.xor      a3, a0
                  slti       s9, sp, -573
                  fence
                  sltiu      a0, a4, 695
                  andi       s0, s8, -211
                  andi       a4, zero, -228
                  auipc      t0, 17453
                  c.andi     s0, 2
                  addi       a4, ra, -375
                  sra        s0, s11, s5
                  csrrci     tp, 0x340, 18
test_done:        
                  li gp, 1
                  ecall
sub_4:            sltiu      s5, s0, 718
                  csrrwi     a7, 0x340, 28
                  c.beqz     a2, sub_4_stack_p
                  c.slli     a3, 23
                  srl        zero, t1, a3
                  srl        zero, a0, t0
sub_4_stack_p:    addi       sp, sp, -56
                  csrrsi     a1, 0x340, 23
                  sw         s11, 4(sp)
                  csrrc      s5, 0x340, s1
                  la         a0, sub_5
                  addi       a0, a0, 657
                  auipc      tp, 745051
                  lui        t4, 444424
                  c.sub      a2, a5
                  sltiu      s10, s4, 18
                  csrrci     s7, 0x340, 0
                  c.li       a3, -1
                  c.andi     a3, -1
                  bgeu       s1, s8, j_sub_4_sub_5_7 #branch to jump instr
                  c.slli     a7, 5
                  divu       a4, t6, s7
                  slti       t3, ra, 579
j_sub_4_sub_5_7:  jalr       s11, a0, -657
                  bltu       a3, t6, 7f
                  sra        t0, t5, s2
                  c.lui      s7, 1
                  srai       a5, sp, 11
                  c.lui      t3, 18
                  xori       t4, t4, 628
                  rem        s1, s9, a1
7:                fence.i
                  c.mv       a0, s6
                  c.sub      a1, a3
                  divu       t6, a5, s1
                  c.nop
                  ori        s1, t6, 469
                  sltu       s4, s11, tp
                  ori        t6, s5, -949
                  auipc      t5, 165640
                  c.sub      a5, a4
                  blt        gp, s6, 22f
                  fence.i
                  c.add      t6, a3
                  fence.i
                  slt        t5, gp, s7
22:               bltu       a2, s2, 37f
                  add        s1, t1, s2
                  csrrc      s5, 0x340, t0
                  fence
                  c.xor      a0, a4
                  sra        s2, s5, t5
                  bge        a1, s8, 35f
                  slti       s4, t4, 341
                  c.add      s8, s1
                  slti       t1, s5, 915
                  sll        s8, s5, s4
                  csrrw      a0, 0x340, a1
                  bne        sp, ra, 50f
35:               fence.i
                  rem        a7, t5, s0
37:               c.or       a5, a4
                  c.and      s0, s0
                  mul        t3, a3, a3
                  c.mv       t0, ra
                  srl        tp, t2, t5
                  sltu       a1, t1, s11
                  sll        zero, sp, s10
                  xor        a5, a3, a7
                  sltiu      s6, sp, -800
                  divu       t4, zero, s3
                  nop
                  sll        a7, t0, a4
                  sub        s5, s1, t5
50:               srai       t3, s5, 20
                  lw         s11, 4(sp)
                  c.srai     s0, 15
                  addi       sp, sp, 56
                  mulhu      a4, t5, t1
                  add        a4, t2, t6
                  mulh       a0, s2, a5
81:               c.jr x27
sub_2:            beq        a2, sp, sub_2_stack_p
                  csrrwi     s8, 0x340, 13
                  remu       t0, gp, t4
sub_2_stack_p:    addi       sp, sp, -28
                  slt        a0, s10, t3
                  or         a1, a6, s11
                  srl        s10, ra, s7
                  sw         s11, 4(sp)
                  csrrsi     t5, 0x340, 6
                  la         ra, region_3+435 #start riscv_hazard_instr_stream_3
                  xor        a4, s9, a3
                  lhu        a2, -39(ra)
                  mulh       a6, a3, a4
                  lh         a3, 17(ra)
                  nop
                  mulhsu     a4, a0, a0
                  c.slli     a3, 12
                  lb         a4, -30(ra)
                  lbu        a2, -48(ra)
                  srli       a4, a0, 1
                  sb         a6, 42(ra)
                  and        a6, a6, s9
                  lb         a6, 8(ra)
                  fence
                  lh         a2, 63(ra)
                  sltu       a3, a3, a6
                  and        a0, a4, a6
                  lbu        s9, -3(ra)
                  lbu        a4, -46(ra)
                  sll        a6, a0, s9
                  lbu        a0, 61(ra)
                  sb         a4, -64(ra)
                  lb         a0, -40(ra)
                  c.lui      a0, 9
                  csrrsi     a4, 0x340, 15
                  lh         a6, -49(ra)
                  sb         a3, 36(ra)
                  sb         s9, 20(ra)
                  divu       a4, a3, a2
                  and        a2, a4, a4
                  mulhsu     a4, a3, a6
                  lb         a0, 34(ra)
                  lw         a0, -59(ra)
                  sh         a2, 13(ra)
                  and        a6, a6, s9
                  add        a3, s9, a3
                  slt        a0, a3, a0
                  csrrwi     s9, 0x340, 17
                  xor        a6, s9, a0
                  lbu        a6, 0(ra) #end riscv_hazard_instr_stream_3
                  addi       s5, zero, 0 #init loop 1 counter
                  c.xor      a1, a1
                  srl        tp, a3, a2
                  lui        t0, 28185
                  sub        s9, a5, a0
                  ori        ra, s8, 587
                  csrrwi     a2, 0x340, 0
                  mulh       s6, zero, t0
                  addi       s2, zero, -17 #init loop 1 limit
                  sltu       s4, t5, t6
sub_2_18_1_t:     nop
                  addi       s5, s5, -9 #update loop 1 counter
                  addi       a0, zero, 6 #init loop 0 counter
                  sltu       s4, gp, s1
                  c.sub      a4, a3
                  addi       zero, zero, 0 #init loop 0 limit
                  slt        s4, a3, s2
                  c.sub      a5, a3
                  mulh       t0, a7, a3
sub_2_18_0_t:     mulhsu     a4, a2, a2
                  c.and      a3, a2
                  csrrs      a4, 0x340, s7
                  slti       t6, a4, 775
                  sltiu      s7, t5, 22
                  addi       a0, a0, -3 #update loop 0 counter
                  c.slli     s10, 14
                  c.beqz     a0, sub_2_18_0_t #branch for loop 0
                  div        ra, zero, a7
                  c.lui      a7, 13
                  c.srai     a2, 14
                  c.srai     a4, 31
                  bge        s5, s2, sub_2_18_1_t #branch for loop 1
                  csrrwi     ra, 0x340, 16
sub_2_5:          jal        s11, 16f
0:                c.j        15f
1:                jal        s5, 26f
2:                jal        ra, 6f
3:                c.jal      21f
4:                c.jal      0b
5:                c.j        18f
6:                c.jal      13f
7:                c.j        8f
8:                c.jal      14f
9:                jal        ra, 3b
10:               c.jal      4b
11:               jal        t1, 19f
12:               c.j        20f
13:               c.jal      28f
14:               c.j        23f
15:               jal        ra, 25f
16:               c.j        10b
17:               c.j        12b
18:               jal        tp, 1b
19:               jal        t1, 5b
20:               c.j        22f
21:               c.jal      7b
22:               c.jal      11b
23:               jal        t1, 2b
24:               jal        ra, 17b
25:               jal        t1, 24b
26:               c.jal      27f
27:               jal        ra, 9b
28:               srl        t1, s11, s8
                  la         t5, region_1+11961 #start riscv_hazard_instr_stream_0
                  lbu        a2, 92(t5)
                  auipc      tp, 856500
                  csrrw      tp, 0x340, t3
                  lb         tp, 89(t5)
                  divu       a2, s0, s0
                  div        s7, t3, zero
                  lbu        zero, -194(t5)
                  lb         tp, 220(t5)
                  c.xor      s0, s0
                  csrrci     t3, 0x340, 22
                  lb         s0, 18(t5)
                  sb         tp, -248(t5)
                  c.xor      a2, s0
                  c.srai     a2, 7
                  sub        s7, tp, zero
                  c.or       a2, s0
                  c.slli     s7, 22
                  sll        s7, tp, s7
                  lb         t3, -227(t5)
                  lb         zero, -18(t5)
                  mulh       s0, s0, zero
                  csrrwi     s0, 0x340, 23
                  lw         t3, 23(t5)
                  csrrc      s0, 0x340, t3
                  mulhu      t3, s0, tp
                  c.mv       a2, a2
                  c.or       s0, a2
                  or         zero, tp, s7
                  sb         s7, 89(t5)
                  lb         s7, -126(t5)
                  lb         tp, 3(t5)
                  c.li       tp, 28
                  sub        zero, tp, tp
                  sb         tp, -196(t5)
                  sltiu      a2, s0, 91
                  divu       s0, tp, s0
                  lui        t3, 951575
                  sb         s0, -225(t5)
                  sb         s0, -78(t5)
                  lb         s0, 181(t5)
                  csrrci     t3, 0x340, 25
                  sb         s0, -200(t5)
                  lui        a2, 376342
                  fence
                  sb         zero, -12(t5) #end riscv_hazard_instr_stream_0
                  la         s10, region_2+771 #start riscv_load_store_rand_instr_stream_2
                  sb         a7, -40(s10)
                  lh         s3, -1(s10)
                  slti       zero, ra, -222
                  lb         a5, 9(s10)
                  ori        s9, s3, -663
                  lb         a3, -40(s10)
                  sltu       tp, s2, a3
                  csrrw      s1, 0x340, s10
                  sb         ra, 22(s10)
                  csrrs      s5, 0x340, a6
                  c.addi     a3, 13
                  or         s11, ra, tp
                  sb         t2, 54(s10)
                  c.and      a2, s0
                  lh         t5, -31(s10)
                  mulhsu     t6, tp, gp
                  sb         s4, -24(s10)
                  divu       t3, s7, s8
                  c.srai     a2, 21
                  csrrci     s5, 0x340, 23
                  lw         s9, -35(s10)
                  lbu        s6, 58(s10)
                  csrrci     t3, 0x340, 29
                  lhu        s0, 49(s10)
                  sh         s2, 63(s10)
                  lbu        a4, 20(s10)
                  slli       t6, gp, 18
                  and        s8, zero, zero
                  lb         a1, 17(s10)
                  sw         a5, -15(s10)
                  csrrwi     t1, 0x340, 2
                  sb         s2, -61(s10)
                  c.sub      a1, a4
                  fence.i
                  mul        a0, s6, a1
                  sh         s1, -23(s10)
                  lh         a5, -63(s10) #end riscv_load_store_rand_instr_stream_2
                  addi       a4, zero, 2 #init loop 1 counter
                  addi       a5, zero, 7 #init loop 1 limit
                  c.addi     t0, 28
                  srai       s11, s2, 31
sub_2_16_1_t:     addi       s2, t4, -468
                  csrrci     a7, 0x340, 19
                  csrrsi     s10, 0x340, 11
                  csrrwi     t5, 0x340, 2
                  c.xor      a3, a0
                  addi       a4, a4, 6 #update loop 1 counter
                  addi       a0, zero, 1 #init loop 0 counter
                  addi       s6, a6, -933
                  csrrc      s10, 0x340, s0
                  addi       s4, zero, -16 #init loop 0 limit
                  mulhsu     a1, t3, s6
                  sub        t3, a4, s7
sub_2_16_0_t:     addi       t4, s3, -170
                  csrrsi     s3, 0x340, 20
                  addi       a0, a0, -7 #update loop 0 counter
                  csrrc      s10, 0x340, s7
                  bge        a0, s4, sub_2_16_0_t #branch for loop 0
                  fence.i
                  blt        a4, a5, sub_2_16_1_t #branch for loop 1
                  c.xor      s0, a4
                  la         s4, region_1+8104 #start load_store_instr_stream_2
                  la         s0, region_1+1168 #start load_store_instr_stream_3
                  la         s9, region_1+4737 #start load_store_instr_stream_1
                  lb         s10, -1391(s4)
                  sb         a6, -222(s9)
                  la         a2, region_1+14870 #start load_store_instr_stream_0
                  lbu        s2, 4(a2)
                  lw         s11, -96(s0)
                  lb         t4, -157(s9)
                  lb         t6, 499(s0)
                  lb         s10, -797(s4)
                  sb         a3, 226(s9)
                  lbu        s1, 1263(s4)
                  lb         s6, -200(s0)
                  sh         tp, 52(a2)
                  lbu        s5, -349(s0)
                  sh         s3, -1924(s4)
                  sb         s0, -5(a2)
                  lbu        t5, 1579(s0)
                  lbu        t3, -1032(s0)
                  lbu        a6, 222(s9)
                  sh         t2, 556(s0)
                  lbu        a5, -33(a2)
                  lb         a0, 244(s9)
                  sb         a7, -8(s9) #end load_store_instr_stream_1
                  sw         a3, 1328(s4) #end load_store_instr_stream_2
                  sb         a5, -825(s0)
                  lhu        s8, -1052(s0) #end load_store_instr_stream_3
                  sb         a2, -15(a2) #end load_store_instr_stream_0
                  addi       t6, zero, 8 #init loop 1 counter
                  addi       a4, zero, 11 #init loop 1 limit
                  c.mv       t5, a2
sub_2_17_1_t:     lui        t4, 253774
                  c.li       s7, 19
                  addi       t6, t6, 3 #update loop 1 counter
                  addi       t3, zero, 10 #init loop 0 counter
                  c.xor      s0, a4
                  c.add      s11, t6
                  mulhu      s7, s10, a0
                  addi       s1, zero, 18 #init loop 0 limit
sub_2_17_0_t:     ori        s4, zero, -665
                  addi       t3, t3, 1 #update loop 0 counter
                  slti       ra, a4, -40
                  blt        t3, s1, sub_2_17_0_t #branch for loop 0
                  c.nop
                  c.slli     a1, 7
                  beq        t6, a4, sub_2_17_1_t #branch for loop 1
                  srl        s8, a4, t0
                  la         a1, region_3+339 #start load_store_instr_stream_3
                  la         s9, region_4+3709 #start load_store_instr_stream_2
                  la         s4, region_0+867 #start load_store_instr_stream_0
                  lhu        a3, 55(s4)
                  lb         a3, 2(a1)
                  la         s7, region_1+6625 #start load_store_instr_stream_4
                  lbu        s0, 4(s9)
                  lb         a7, -11(s7)
                  la         tp, region_2+4908 #start load_store_instr_stream_1
                  lh         t6, 19(s4)
                  sb         s6, -14(a1)
                  lbu        s10, 13(s7)
                  sh         s4, 7(s4)
                  lbu        t3, -2(tp)
                  lb         a4, -10(s4)
                  sh         s2, 5(s9)
                  lbu        s1, -9(s4)
                  sh         t5, -17(s4)
                  sb         s10, 0(a1)
                  sw         a2, -1(s7)
                  lbu        t6, 12(s7)
                  lb         s6, -10(s7)
                  sb         a4, 12(s9)
                  sb         gp, -1(tp)
                  sw         s5, -1(s7)
                  sb         t4, -14(a1)
                  sb         s1, -35(s4)
                  sb         s4, -6(s7)
                  lbu        ra, -34(s4)
                  sw         gp, 13(a1)
                  lb         s0, 5(s9)
                  sb         t0, -14(s7) #end load_store_instr_stream_4
                  lhu        t1, 7(a1)
                  lbu        s10, -14(tp)
                  lbu        s8, 1(s9)
                  lw         s0, -3(s4)
                  lb         s1, -2(s9) #end load_store_instr_stream_2
                  sw         s11, 5(a1)
                  lbu        t3, 7(tp)
                  lbu        t4, -8(a1)
                  lbu        a7, -11(tp) #end load_store_instr_stream_1
                  lbu        s1, 0(a1)
                  sb         s1, -14(a1) #end load_store_instr_stream_3
                  lbu        a0, -60(s4) #end load_store_instr_stream_0
                  la         a5, region_3+299 #start load_store_instr_stream_1
                  la         a1, region_3+279 #start load_store_instr_stream_0
                  la         a7, region_3+502 #start load_store_instr_stream_2
                  lbu        t6, 54(a5)
                  sb         t1, -168(a1)
                  sb         a2, -185(a5)
                  sb         t0, -189(a1)
                  lbu        t6, -168(a5)
                  lbu        t6, -11(a7)
                  la         a6, region_3+506 #start load_store_instr_stream_3
                  lbu        t3, 230(a1)
                  lh         s8, -56(a7)
                  sb         t5, 144(a5)
                  lb         s9, 147(a5)
                  lb         t4, -43(a7)
                  sh         a5, -105(a1)
                  lb         ra, -64(a7)
                  lhu        s6, -242(a6)
                  sb         s7, -247(a5)
                  lbu        t6, 205(a5)
                  lh         ra, 123(a5)
                  lbu        s7, -53(a7)
                  lbu        ra, -178(a5)
                  sh         t5, -79(a5) #end load_store_instr_stream_1
                  lb         t5, -57(a6)
                  lbu        t3, -239(a1)
                  lhu        a4, -22(a6)
                  lb         a3, 5(a7)
                  sb         a7, -7(a6)
                  lw         a4, -107(a1)
                  lbu        t6, -175(a6) #end load_store_instr_stream_3
                  lb         s7, -3(a7) #end load_store_instr_stream_2
                  sb         s9, 0(a1) #end load_store_instr_stream_0
                  la         s9, region_0+3561 #start load_store_instr_stream_1
                  la         s8, region_3+100 #start load_store_instr_stream_0
                  la         s2, region_4+2417 #start load_store_instr_stream_4
                  lhu        a4, -8(s8)
                  la         s0, region_2+6899 #start load_store_instr_stream_2
                  sb         a2, -122(s9)
                  sb         s7, -214(s2)
                  lbu        a0, 190(s2)
                  sb         a3, -226(s0)
                  lb         s6, -20(s0)
                  lb         s4, 8(s2)
                  sb         s1, 72(s0)
                  lb         t5, -54(s9)
                  lb         s3, -102(s0)
                  lb         s5, -14(s0)
                  lbu        a7, -11(s8)
                  la         a6, region_1+4015 #start load_store_instr_stream_3
                  lbu        s5, -159(s2)
                  sb         a0, -24(s2)
                  lb         s5, 4(s8)
                  lhu        a2, 175(s0)
                  lb         a1, -108(a6)
                  lbu        s5, 253(s9)
                  lh         s6, 8(s8)
                  lbu        a0, 115(a6)
                  lbu        t5, 118(s9)
                  lbu        a2, 10(s8)
                  lb         s1, -30(a6)
                  lb         t6, 36(a6)
                  sb         s3, 190(s2)
                  lw         s6, -153(s9)
                  sb         tp, -24(s2)
                  sw         a2, -69(s9) #end load_store_instr_stream_1
                  sh         s10, 101(s0)
                  lbu        a3, 201(s0) #end load_store_instr_stream_2
                  sh         s0, 133(a6)
                  sh         a0, -85(a6)
                  lb         a1, 234(s2)
                  lbu        t4, -5(s8)
                  lh         tp, -97(a6) #end load_store_instr_stream_3
                  lbu        s10, -61(s2) #end load_store_instr_stream_4
                  lb         s5, -5(s8) #end load_store_instr_stream_0
                  la         t0, region_4+2110 #start riscv_load_store_rand_instr_stream_1
                  fence
                  mulh       s0, s10, s1
                  c.and      s1, a0
                  mul        s2, a3, tp
                  csrrwi     s5, 0x340, 3
                  and        zero, a6, a1
                  sb         t2, 127(t0)
                  lbu        a3, -132(t0)
                  fence.i
                  slli       s7, a5, 26
                  remu       a1, s10, s2
                  addi       s11, s7, 351
                  srai       s8, ra, 21
                  lb         ra, -98(t0)
                  lb         s4, -232(t0)
                  sw         s11, -162(t0)
                  andi       tp, t2, -802
                  mul        s7, s4, a1
                  lb         t6, 238(t0)
                  lbu        s8, -155(t0)
                  slt        s1, t3, s4
                  sltu       a5, t2, t2
                  andi       a0, s3, 671
                  lbu        s5, 221(t0)
                  sub        s10, a0, s11
                  c.mv       t5, t2
                  auipc      s10, 226249
                  add        a0, s1, s10
                  c.mv       s5, s10
                  or         t6, a4, t0
                  sb         sp, -35(t0)
                  and        t6, t6, a1
                  c.or       a3, a2
                  sb         s11, -103(t0)
                  sh         t4, 44(t0)
                  lb         s11, -199(t0)
                  csrrsi     s6, 0x340, 23
                  lb         s11, -107(t0)
                  sh         t5, 24(t0) #end riscv_load_store_rand_instr_stream_1
                  la         s9, region_0+2749 #start load_store_instr_stream_1
                  lb         s8, -15(s9)
                  la         a5, region_1+11512 #start load_store_instr_stream_0
                  sb         s9, -217(a5)
                  lbu        a2, 61(s9)
                  lbu        a3, 5(s9)
                  lb         a0, 22(s9)
                  lb         s8, 160(a5)
                  lw         a0, 11(s9)
                  lbu        t5, -184(a5)
                  lbu        a2, -27(s9)
                  sh         s10, -34(a5)
                  lh         t4, -63(s9)
                  lbu        a2, -127(a5)
                  sb         zero, -30(s9) #end load_store_instr_stream_1
                  lh         a6, -154(a5) #end load_store_instr_stream_0
sub_2_7:          jal        s11, 3f
0:                jal        ra, 12f
1:                jal        t0, 7f
2:                jal        ra, 0b
3:                c.j        5f
4:                c.j        10f
5:                c.jal      4b
6:                c.jal      9f
7:                c.j        13f
8:                c.jal      1b
9:                c.jal      8b
10:               jal        a1, 2b
11:               c.jal      14f
12:               c.j        6b
13:               jal        s7, 11b
14:               c.srli     a3, 14
                  la         s10, region_3+213 #start riscv_load_store_rand_instr_stream_3
                  c.nop
                  sb         a1, 29(s10)
                  lbu        s11, 55(s10)
                  lb         a2, 62(s10)
                  sb         s9, 20(s10)
                  srai       tp, s0, 14
                  sb         gp, -54(s10)
                  sb         a0, 18(s10)
                  xor        s11, t0, tp
                  lb         t1, -52(s10)
                  lhu        s3, -31(s10)
                  lbu        zero, -54(s10)
                  lb         a7, -38(s10)
                  sra        s3, sp, s8
                  c.andi     a1, -1
                  c.and      s0, s1
                  lh         a2, 23(s10)
                  div        a5, tp, a2
                  lh         t1, 9(s10)
                  sb         tp, 28(s10)
                  lb         a6, -26(s10)
                  lbu        s7, 11(s10)
                  c.nop
                  sb         s7, -10(s10)
                  slli       t6, s1, 26
                  sltiu      a5, a2, -625
                  lbu        s7, -32(s10)
                  c.add      tp, s1
                  slli       t3, s6, 17
                  sb         t1, -33(s10)
                  c.nop
                  slt        t3, a7, a7
                  csrrsi     s4, 0x340, 0
                  mul        t6, s5, t6
                  addi       a0, s4, -349
                  c.srai     a1, 2
                  sb         a5, 4(s10)
                  xori       a3, s4, 787
                  csrrw      s4, 0x340, a2
                  lbu        t3, 46(s10) #end riscv_load_store_rand_instr_stream_3
                  la         ra, region_1+9354 #start load_store_instr_stream_4
                  la         t0, region_1+1347 #start load_store_instr_stream_2
                  la         a0, region_1+12261 #start load_store_instr_stream_3
                  lbu        s1, -181(ra)
                  la         t1, region_1+4953 #start load_store_instr_stream_1
                  lh         s4, 36(ra)
                  lhu        s5, -3(t1)
                  sb         s11, -54(t0)
                  lh         s11, 31(a0)
                  la         s9, region_1+10390 #start load_store_instr_stream_0
                  lh         s11, -59(a0)
                  sb         s10, -252(t0)
                  lbu        zero, -63(a0)
                  lh         t4, -4(ra)
                  lw         t6, 163(a0)
                  lbu        t5, -10(t1)
                  sb         t0, 8(a0)
                  lb         s4, -29(ra)
                  lbu        a2, 4(t1)
                  lbu        s2, 75(s9)
                  lbu        a3, -71(a0)
                  lbu        s0, 2(t0)
                  sb         a5, -217(ra)
                  sb         t5, 155(s9)
                  lh         t3, -5(t1)
                  lbu        zero, -138(t0)
                  lb         zero, -3(t1)
                  lb         s8, -18(t0)
                  lbu        s5, -94(s9)
                  lb         s5, 185(ra)
                  lbu        s5, -38(a0)
                  sb         a1, 91(t0) #end load_store_instr_stream_2
                  lhu        s3, -252(s9)
                  lbu        a3, -14(t1)
                  lb         tp, 10(t1)
                  sw         t2, 67(a0)
                  sb         sp, 52(a0)
                  sh         t4, -6(ra)
                  lh         s7, 59(a0) #end load_store_instr_stream_3
                  lb         t6, 16(t1) #end load_store_instr_stream_1
                  sh         a2, -36(ra) #end load_store_instr_stream_4
                  lbu        s0, -79(s9) #end load_store_instr_stream_0
                  la         s2, region_2+4227 #start riscv_hazard_instr_stream_1
                  lbu        a4, 14(s2)
                  lb         t1, -8(s2)
                  divu       t0, a4, a1
                  c.and      a1, a1
                  lh         ra, 11(s2)
                  lb         t0, -2(s2)
                  srai       a4, ra, 30
                  lb         t0, 8(s2)
                  lhu        t0, -3(s2)
                  sh         a1, 3(s2)
                  slt        a7, ra, t0
                  nop
                  sb         t0, 10(s2)
                  c.slli     t1, 23
                  sw         a7, -11(s2)
                  sb         t0, -8(s2)
                  xor        t0, a4, t0
                  sw         a7, 1(s2)
                  lb         t1, -8(s2)
                  sb         a4, -8(s2)
                  lb         t0, -4(s2)
                  lb         ra, 8(s2)
                  sb         a4, 5(s2)
                  lhu        a7, -7(s2)
                  sh         t1, -13(s2)
                  lb         a4, -10(s2)
                  lb         a1, 0(s2)
                  csrrw      ra, 0x340, t1
                  lw         a1, -3(s2)
                  lb         t1, 4(s2)
                  addi       a7, t1, 480
                  nop
                  c.srai     a4, 31
                  lbu        a7, 10(s2)
                  lb         t1, -6(s2) #end riscv_hazard_instr_stream_1
                  la         s4, region_1+9566 #start load_store_instr_stream_4
                  la         a1, region_4+3823 #start load_store_instr_stream_1
                  la         s5, region_2+3727 #start load_store_instr_stream_2
                  lb         s2, -151(s4)
                  lb         t5, 12(s5)
                  la         t0, region_3+232 #start load_store_instr_stream_0
                  lb         t1, -34(a1)
                  lb         s8, -34(a1)
                  lbu        ra, 98(t0)
                  sh         t2, -1(s5)
                  sw         a3, 178(s4)
                  la         s9, region_0+2710 #start load_store_instr_stream_3
                  sw         s7, -74(s4)
                  lb         t5, -6(a1)
                  lb         tp, -53(a1)
                  lhu        s2, -88(s4)
                  lbu        s8, -10(s5)
                  lb         t5, 49(s4)
                  lbu        a7, 214(s4)
                  lh         ra, -5(s5)
                  lbu        s2, -63(s9)
                  lbu        tp, 0(s5)
                  sb         a7, 151(t0)
                  sb         a3, 6(s5)
                  lbu        a5, -12(a1)
                  lbu        tp, -25(s9)
                  sb         sp, 42(s9)
                  lb         s1, -113(s4)
                  lbu        t3, -229(s4)
                  lb         t1, 48(a1)
                  sb         s3, 55(t0)
                  lbu        ra, 18(t0)
                  lbu        ra, -153(s4) #end load_store_instr_stream_4
                  lb         s2, -60(s9)
                  lbu        zero, 50(t0)
                  lb         a4, 60(s9)
                  lbu        a4, -23(s9)
                  lhu        s0, -22(s9)
                  sb         zero, -8(s5) #end load_store_instr_stream_2
                  sb         a5, 31(s9) #end load_store_instr_stream_3
                  sb         sp, -22(a1)
                  sb         s2, -42(a1) #end load_store_instr_stream_1
                  sh         s2, -80(t0) #end load_store_instr_stream_0
                  la         a5, region_0+666 #start load_store_instr_stream_0
                  la         s2, region_0+2342 #start load_store_instr_stream_1
                  sb         a7, -11(a5)
                  la         t1, region_0+2544 #start load_store_instr_stream_4
                  la         a3, region_0+2858 #start load_store_instr_stream_2
                  la         s0, region_0+1715 #start load_store_instr_stream_3
                  sb         s8, 0(s2)
                  lhu        s10, 14(s2)
                  lbu        a4, 171(t1)
                  lbu        zero, 16(a5)
                  sb         zero, 140(s0)
                  lbu        a0, -144(s0)
                  sb         t4, -48(s0)
                  sh         a3, 16(a5)
                  lbu        a1, 1(a3)
                  sb         zero, 8(a3)
                  sb         s11, -178(s0)
                  lw         s10, 10(s2)
                  lbu        t0, 886(t1)
                  sh         t3, 0(a3)
                  lbu        a1, -1055(t1)
                  lbu        zero, -1169(t1)
                  lbu        a1, -15(s2)
                  lb         a2, -917(t1)
                  lh         s7, -1936(t1)
                  lh         a1, 0(s2)
                  lb         t4, 11(a5)
                  sb         sp, -2023(t1)
                  sh         a6, -12(s2)
                  lh         s7, 8(a3)
                  sb         a4, -983(t1)
                  lhu        a6, 1098(t1)
                  lbu        t3, -155(s0) #end load_store_instr_stream_3
                  lb         a7, 7(a3) #end load_store_instr_stream_2
                  lbu        a2, -1733(t1) #end load_store_instr_stream_4
                  lbu        t6, -11(s2) #end load_store_instr_stream_1
                  lbu        t0, 1(a5) #end load_store_instr_stream_0
                  la         s6, region_4+1476 #start riscv_hazard_instr_stream_2
                  lbu        t0, -26(s6)
                  sb         t1, -20(s6)
                  mulh       a3, s1, s1
                  csrrwi     a3, 0x340, 19
                  c.or       a3, s1
                  rem        a3, ra, s1
                  csrrwi     a3, 0x340, 9
                  lw         ra, 56(s6)
                  lhu        s1, 22(s6)
                  c.lui      t0, 3
                  sb         ra, 44(s6)
                  sltu       s7, s7, s1
                  mulh       a3, ra, t1
                  lb         t0, 30(s6)
                  lbu        s1, -45(s6)
                  fence.i
                  srai       ra, ra, 12
                  lb         a3, 28(s6)
                  lb         ra, -7(s6)
                  lb         t0, -31(s6)
                  sb         t1, 27(s6)
                  csrrwi     a3, 0x340, 2
                  lb         s7, 56(s6)
                  slli       t0, ra, 29
                  lh         t1, -56(s6)
                  lbu        t0, 53(s6)
                  sb         s7, 9(s6)
                  lb         t1, -21(s6)
                  sh         a3, 46(s6)
                  csrrw      s7, 0x340, t1
                  csrrs      t0, 0x340, t1
                  auipc      t0, 286453
                  lbu        s1, -61(s6)
                  lbu        a3, -30(s6)
                  sltiu      s7, a3, 176
                  lbu        a3, -54(s6)
                  ori        t1, t1, 944
                  lbu        s7, 56(s6)
                  sb         s1, 42(s6)
                  sb         s1, -35(s6)
                  mulh       s7, s7, a3
                  c.sub      s1, a3
                  sb         s7, 21(s6)
                  lh         s1, -22(s6)
                  csrrc      a3, 0x340, a3
                  lbu        t0, -34(s6)
                  lbu        t1, -7(s6)
                  lbu        t0, -18(s6) #end riscv_hazard_instr_stream_2
sub_2_6:          jal        s11, 1f
0:                jal        t1, 11f
1:                jal        t1, 9f
2:                jal        ra, 0b
3:                jal        ra, 8f
4:                c.jal      14f
5:                jal        a0, 13f
6:                c.j        2b
7:                c.jal      19f
8:                c.jal      16f
9:                c.jal      15f
10:               c.j        5b
11:               jal        s11, 4b
12:               c.j        20f
13:               c.j        6b
14:               c.j        7b
15:               c.jal      3b
16:               c.j        10b
17:               c.jal      12b
18:               jal        ra, 21f
19:               jal        a6, 17b
20:               c.j        18b
21:               csrrw      s5, 0x340, s11
                  c.nop
                  c.add      a3, s7
                  csrrsi     s11, 0x340, 22
                  c.srai     a3, 11
                  c.slli     s2, 13
                  bgeu       a3, s0, 22f
                  c.srli     a5, 9
                  sll        s7, s9, a0
                  c.add      a1, a7
                  c.bnez     a3, 28f
                  mul        s2, s2, s2
                  bgeu       s10, a2, 30f
                  xor        a0, a7, t1
                  xori       ra, sp, 62
                  mul        t4, s4, ra
                  c.lui      s10, 2
                  c.mv       s4, t5
                  csrrs      s1, 0x340, a7
                  mulhsu     a5, a4, a7
                  csrrw      t1, 0x340, sp
                  csrrc      s8, 0x340, s8
                  divu       s5, a3, a0
22:               csrrs      tp, 0x340, s11
                  lui        s7, 786960
                  slti       s4, s2, 245
                  c.lui      tp, 13
                  mulhu      t5, a6, s3
                  csrrwi     s7, 0x340, 24
28:               c.beqz     s1, 41f
                  bne        gp, s9, 40f
30:               c.beqz     a3, 46f
                  ori        t3, t3, -217
                  sra        s10, s4, sp
                  srl        s3, t3, t4
                  fence
                  c.srli     s0, 12
                  divu       s7, a3, s1
                  slt        s8, s7, t4
                  sll        s1, a4, s0
                  sll        t6, s5, s7
40:               andi       t6, tp, 408
41:               xor        s11, s0, t1
                  c.slli     s2, 19
                  c.add      s2, ra
                  fence
                  rem        ra, s9, s4
46:               add        s0, t4, s4
                  sra        a6, a7, s6
                  fence
                  xor        t5, t0, t1
                  srl        a2, s2, a5
                  bne        s10, t6, 52f
52:               remu       ra, a7, s11
                  csrrwi     s6, 0x340, 18
                  c.xor      a3, a4
                  xori       a0, s1, 968
                  sltiu      zero, s1, 640
                  csrrwi     a5, 0x340, 5
                  xori       s9, a5, 562
                  divu       a2, s4, s2
                  c.srai     a0, 28
                  c.and      a1, a2
                  slli       a5, sp, 9
                  mulhsu     s6, s6, gp
                  c.or       s0, a1
                  c.lui      ra, 1
                  c.beqz     a4, 67f
67:               and        s7, t1, tp
                  sltu       s11, s2, a0
                  mulhu      s7, sp, sp
                  lui        s0, 700317
                  and        s6, s1, s4
                  fence.i
                  c.xor      a1, a1
                  blt        s6, a1, 83f
                  slt        tp, ra, s6
                  xori       a4, ra, 809
                  c.srli     a3, 17
                  nop
                  c.slli     a5, 22
                  csrrw      a3, 0x340, a6
                  addi       s8, a1, 968
                  csrrwi     s6, 0x340, 18
83:               csrrw      s11, 0x340, sp
                  srl        s7, s3, s10
                  c.slli     t3, 15
                  nop
                  mulh       s3, a2, a3
                  c.nop
                  c.nop
                  addi       s0, a4, -971
                  andi       s1, s5, 783
                  sub        a7, s6, a2
                  ori        s5, ra, 924
                  sub        a3, zero, t6
                  sll        s3, gp, s5
                  srli       t4, s2, 27
                  bltu       a5, a2, 108f
                  srai       a6, a1, 27
                  or         a6, s6, a3
                  c.sub      a2, s0
                  andi       a5, a5, 266
                  c.or       s0, a1
                  c.andi     a3, 14
                  bltu       a0, t5, 107f
                  sra        t3, a7, s4
                  add        s5, s0, a0
107:              blt        t1, a1, 110f
108:              c.or       a5, a0
                  sub        a0, sp, s4
110:              c.srai     a3, 7
                  c.andi     a5, -1
                  c.add      a1, t0
                  c.srli     a3, 28
                  rem        t4, s1, ra
                  mulhu      t6, a6, t5
                  bne        a1, t0, 117f
117:              remu       s8, s1, s3
                  csrrwi     s2, 0x340, 28
                  divu       a3, gp, s9
                  slti       t3, t0, 938
                  c.srai     a0, 6
                  c.andi     a4, -1
                  c.or       a1, a1
                  bne        a5, s8, 133f
                  c.addi     a7, 5
                  c.nop
                  rem        t0, sp, a6
                  mulhsu     s1, s9, s11
                  rem        t1, t6, a0
                  divu       a2, s3, s7
                  xori       t3, t3, -926
                  divu       s9, s4, a7
133:              c.mv       s0, t1
                  csrrwi     s0, 0x340, 5
                  sltiu      s3, t4, -952
                  andi       zero, ra, -926
                  slti       s11, sp, 799
                  slt        s7, s6, s8
                  c.andi     s0, -1
                  divu       s3, a0, s8
                  div        t5, s3, t1
                  c.or       a1, a4
                  srl        t5, s1, a3
                  csrrsi     a7, 0x340, 9
                  sltiu      zero, s10, 58
                  c.and      a4, a4
                  c.lui      a4, 7
                  bge        t6, a0, 153f
                  mul        t3, s3, s7
                  beq        s8, s11, 161f
                  beq        t3, a0, 163f
                  c.bnez     s0, 168f
153:              slti       a0, s8, -490
                  ori        s1, s1, 190
                  addi       t3, s1, 154
                  xori       t1, s11, 5
                  lui        s5, 580660
                  c.andi     a2, -1
                  beq        a7, s0, 169f
                  beq        s6, s4, 171f
161:              rem        s7, zero, s2
                  ori        t5, t6, -324
163:              xori       tp, t2, -381
                  c.beqz     a4, 176f
                  rem        t6, s9, a5
                  mulhsu     s10, zero, s9
                  xori       s6, a3, 21
168:              sra        t5, s0, gp
169:              blt        a5, s3, 175f
                  and        a0, a0, t4
171:              sltiu      tp, a2, 517
                  bltu       t0, a6, 174f
                  xor        a7, s3, s6
174:              add        s9, a3, s11
175:              bltu       s5, t3, 183f
176:              csrrs      s0, 0x340, sp
                  csrrs      s1, 0x340, t6
                  mulhu      s7, s6, a4
                  blt        a0, a1, 185f
                  c.nop
                  mul        s4, s8, s3
                  c.srai     a3, 23
183:              bltu       a1, t0, 199f
                  remu       a7, s5, t4
185:              srli       tp, s2, 9
                  andi       s7, a2, -567
                  c.li       a5, -1
                  srli       t5, a7, 27
                  c.andi     a2, -1
                  csrrsi     a5, 0x340, 11
                  mul        a4, s11, t4
                  c.srli     s0, 26
                  c.lui      a6, 25
                  csrrs      s5, 0x340, t3
                  slli       a1, sp, 7
                  bgeu       a6, t4, 214f
                  bge        sp, a5, 217f
                  divu       s8, s5, zero
199:              xori       t0, a0, -811
                  mul        t3, a6, s0
                  csrrs      s5, 0x340, s7
                  c.srai     a1, 3
                  c.bnez     a4, 208f
                  bne        zero, a5, 206f
                  nop
206:              fence.i
                  or         a4, s4, gp
208:              c.or       a4, a0
                  div        a5, a1, tp
                  c.or       a1, s0
                  fence
                  auipc      a4, 84142
                  and        t1, tp, s5
214:              or         zero, s2, a3
                  c.sub      s1, a5
                  c.beqz     a2, 224f
217:              div        s8, ra, s10
                  beq        a3, a0, 231f
                  mulhsu     s2, s2, ra
                  mulhu      a7, a7, a3
                  csrrwi     s7, 0x340, 8
                  c.mv       t3, s2
                  bge        s8, t0, 235f
224:              blt        t0, a0, 230f
                  slti       s10, ra, 451
                  and        s11, a6, s7
                  c.beqz     a4, 232f
                  csrrc      t0, 0x340, s5
                  beq        gp, a6, 248f
230:              slt        a7, t1, s11
231:              slt        s6, s6, t6
232:              srai       a1, s8, 4
                  c.nop
                  c.and      a2, s1
235:              srli       t1, a5, 17
                  sltu       a6, s7, a4
                  c.mv       t6, s3
                  ori        s1, s7, -987
                  add        zero, ra, s6
                  srl        a4, s10, s5
                  fence
                  csrrs      ra, 0x340, s6
                  sub        s2, s1, t2
                  c.srai     s1, 20
                  c.li       t1, -1
                  bltu       a2, s9, 257f
                  auipc      t5, 953193
248:              c.li       a3, -1
                  c.add      t5, sp
                  c.srli     a1, 10
                  blt        s1, sp, 252f
252:              and        s0, ra, t2
                  sub        s5, t3, t6
                  sll        s0, a3, a5
                  csrrci     a5, 0x340, 12
                  divu       s4, t2, s3
257:              remu       s7, zero, a7
                  xori       t0, s8, 333
                  rem        tp, t4, s2
                  bne        s8, ra, 269f
                  c.lui      t6, 16
                  fence.i
                  add        s0, a1, a3
                  remu       s8, s8, s1
                  and        s11, s5, s7
                  c.srai     a2, 21
                  or         t6, a0, s9
                  slli       tp, a7, 23
269:              and        a4, t0, gp
                  csrrci     s8, 0x340, 25
                  c.bnez     a4, 281f
                  c.sub      a0, a2
                  c.xor      a0, a0
                  mulhsu     s6, t0, s0
                  mulhu      zero, tp, a3
                  csrrs      s9, 0x340, a6
                  beq        a4, t2, 297f
                  lui        a6, 972650
                  c.sub      a5, a1
                  mulh       s8, s0, a2
281:              bltu       sp, a7, 283f
                  csrrs      s6, 0x340, t4
283:              c.srli     a1, 2
                  sltu       s9, t2, s3
                  c.andi     a5, 16
                  c.or       a1, a2
                  srl        t0, s9, a1
                  remu       s8, s10, s5
                  lui        ra, 603644
                  c.or       a3, a2
                  mulhu      s4, s1, t1
                  mul        s2, a5, a7
                  bge        s7, a6, 304f
                  mulh       s0, t2, t0
                  c.srli     a2, 5
                  lui        a5, 19251
297:              sll        s6, s0, a6
                  mulhu      t1, s4, sp
                  c.and      s1, a3
                  c.add      s9, a7
                  c.xor      a5, s1
                  fence
                  add        a2, a3, t1
304:              or         t5, a7, s5
                  c.and      s0, a1
                  c.add      tp, a3
                  lui        s11, 169439
                  mul        s0, t1, gp
                  div        t5, a3, s0
                  bltu       s7, t2, 328f
                  c.mv       t4, t6
sub_2_4:          jal        s11, 4f
0:                c.jal      12f
1:                c.jal      5f
2:                c.jal      11f
3:                c.jal      0b
4:                jal        ra, 9f
5:                c.jal      3b
6:                c.jal      8f
7:                c.j        10f
8:                jal        t1, 13f
9:                c.jal      1b
10:               c.j        2b
11:               c.jal      6b
12:               jal        ra, 7b
13:               c.srai     a4, 7
                  c.bnez     a0, 328f
                  c.and      a0, s0
                  bge        ra, s8, 320f
                  c.or       a0, a1
                  blt        s4, a0, 317f
317:              mulhu      s2, s6, s8
                  c.sub      a5, a0
                  slli       ra, a3, 4
320:              csrrw      a3, 0x340, s2
                  remu       t1, s1, s3
                  sra        t0, s10, t1
                  sltiu      a7, a5, 964
                  ori        a3, s1, 967
                  or         s0, s7, a5
                  srli       t0, a7, 5
                  c.srai     a2, 23
328:              c.srai     a1, 8
                  fence.i
                  sub        s10, ra, t2
                  bne        s0, a3, 332f
332:              bne        sp, s5, 348f
                  div        s1, a2, s10
                  blt        t5, a3, 345f
                  sltiu      t3, a0, 58
                  c.xor      s0, a1
                  mulhu      t6, a4, sp
                  sltu       s4, ra, s9
                  sub        a3, t6, s10
                  c.slli     s7, 27
                  div        t5, a5, tp
                  c.andi     a2, 3
                  mulh       t4, s6, a6
                  sltiu      t3, s7, 829
345:              c.sub      a4, s0
                  c.addi     a6, -1
                  ori        a3, a5, -862
348:              sll        a7, s8, zero
                  beq        ra, ra, 360f
                  auipc      t4, 787344
                  c.slli     a7, 29
                  slti       a0, a4, -815
                  xori       s6, s3, 905
                  csrrsi     tp, 0x340, 1
                  csrrs      ra, 0x340, t3
                  auipc      t6, 854922
                  remu       ra, s1, a7
                  bne        a6, s4, 375f
                  mulhu      t6, t3, s3
360:              bne        t3, sp, 365f
                  beq        s3, a5, 380f
                  ori        s0, a3, 260
                  c.lui      t3, 5
                  add        s11, a0, gp
365:              slti       s3, s8, -699
                  andi       a3, s2, -110
                  beq        a6, t1, 370f
                  sll        t0, t6, t2
                  sra        s0, t3, s9
370:              slli       s6, ra, 6
                  remu       a7, s1, a1
                  mul        s2, t5, s1
                  or         t1, s5, tp
                  ori        a1, s7, 751
375:              c.srli     a0, 27
                  slti       t5, a6, -419
                  c.sub      a3, a3
                  c.and      s0, a2
                  bge        a7, s10, 388f
380:              c.slli     a5, 27
                  csrrc      t5, 0x340, t6
                  c.nop
                  c.andi     s1, -1
                  c.xor      a1, s1
                  lui        a2, 592022
                  slt        a4, zero, sp
                  divu       a2, a2, a1
388:              xori       t6, s7, -595
                  bltu       a0, s0, 405f
                  bgeu       s11, a4, 392f
                  rem        t5, a4, s9
392:              c.and      s0, a5
                  c.and      a3, a2
                  c.srai     a0, 5
                  bge        gp, s4, 407f
                  c.add      s6, s10
                  bge        s4, s1, 400f
                  csrrsi     s0, 0x340, 21
                  sltu       ra, gp, a3
400:              rem        t0, a3, s4
                  csrrwi     s1, 0x340, 13
                  andi       s6, s9, -889
                  or         ra, s10, tp
                  bltu       s6, s9, 420f
405:              bltu       gp, a1, 424f
                  or         a7, s9, a1
407:              mulhsu     t1, tp, a2
                  c.srai     s0, 29
                  csrrw      t4, 0x340, s2
                  c.bnez     s1, 426f
                  c.and      a1, s1
                  csrrs      tp, 0x340, a6
                  andi       t6, s6, -867
                  c.sub      a5, a0
                  bge        s8, t0, 424f
                  c.addi     a2, -1
                  or         t6, a1, a4
                  csrrci     t1, 0x340, 11
                  csrrci     s4, 0x340, 15
420:              fence.i
                  div        a6, s6, a2
                  bne        a7, s5, 430f
                  c.addi     a6, -1
424:              andi       s2, t0, -578
                  mulhu      t6, s7, t0
                  la         t5, region_2+5373 #start riscv_load_store_rand_instr_stream_0
                  c.srli     s1, 10
                  sb         a6, 6(t5)
                  c.srai     a5, 10
                  slt        s0, ra, a3
                  lbu        s8, 12(t5)
                  lb         s2, 15(t5)
                  sb         s6, 16(t5)
                  lb         a6, 1(t5)
                  sb         tp, -3(t5)
                  csrrwi     a5, 0x340, 2
                  lb         a7, -10(t5)
                  sb         a3, -10(t5)
                  sb         t5, -5(t5)
                  lbu        s6, 6(t5)
                  sb         s11, 0(t5)
                  lb         s7, 2(t5)
                  lbu        ra, -8(t5)
                  mulhu      a6, s4, s8
                  srai       s7, gp, 10
                  lb         t4, -13(t5)
                  add        a1, sp, s9
                  sb         s0, 7(t5)
                  lb         a5, 4(t5)
                  and        a3, a6, a7
                  sb         s11, 3(t5)
                  c.andi     a5, -1
                  lb         s8, 13(t5)
                  lbu        s3, -14(t5)
                  sb         s5, 2(t5)
                  divu       a3, s1, a5
                  lb         s6, -10(t5)
                  lh         s3, -3(t5)
                  slt        t1, a6, zero
                  lb         s2, -10(t5)
                  lh         a2, -15(t5) #end riscv_load_store_rand_instr_stream_0
426:              lui        t1, 737129
                  c.srai     a2, 23
                  andi       ra, gp, 15
                  c.bnez     s0, 441f
430:              beq        gp, t3, 432f
                  c.addi     s1, 31
432:              xori       s4, s1, -865
                  ori        s7, a1, -747
                  c.sub      s0, a0
                  remu       s4, s3, zero
                  sltu       t3, a0, a2
                  c.srai     a4, 4
                  and        s0, t3, s9
                  xor        s4, a4, a4
                  csrrci     a1, 0x340, 22
441:              and        a0, s11, t6
                  csrrs      a4, 0x340, s5
                  csrrwi     a2, 0x340, 13
                  andi       s8, t2, 379
                  nop
                  c.srai     a5, 29
                  lui        zero, 96210
                  csrrs      s3, 0x340, s11
                  divu       t6, a5, s5
                  csrrc      zero, 0x340, t2
                  c.lui      a3, 13
                  auipc      s7, 758512
                  slli       s1, zero, 21
                  csrrci     s6, 0x340, 9
                  c.xor      s0, s1
                  mul        t1, s0, a1
                  and        t4, t3, s0
                  sra        ra, a6, gp
                  slt        s5, s0, a4
                  div        a0, a2, s6
                  beq        tp, t6, 470f
                  sub        s6, s3, t2
                  xori       a7, a6, -952
                  or         a3, t2, sp
                  srai       s8, sp, 20
                  c.srli     a5, 10
                  sltiu      a3, a4, 100
                  c.li       s8, 16
                  sll        s2, s9, s1
470:              sub        s0, s6, a4
                  addi       a6, s7, 243
                  slt        s9, s11, tp
                  c.andi     a2, 4
                  rem        s3, a3, zero
                  c.nop
                  c.andi     a1, 24
                  sub        s11, s6, a5
                  c.srai     s1, 13
                  sra        tp, t1, a6
                  csrrsi     t0, 0x340, 22
                  c.xor      a0, a0
                  c.lui      ra, 10
                  slt        s6, s7, s3
                  c.lui      a0, 26
                  slli       a5, s10, 13
                  xor        a3, t0, s0
                  auipc      a0, 583204
                  bge        s4, s11, 499f
                  bne        t1, s5, 492f
                  andi       a5, s11, -76
                  rem        s10, s5, s1
492:              bge        a2, a4, 493f
493:              c.or       a2, a3
                  bne        s10, t3, 499f
                  auipc      a2, 721581
                  bgeu       t5, t6, 514f
                  c.sub      a5, s0
                  csrrw      s5, 0x340, t5
499:              bgeu       s7, s1, 510f
                  c.addi     s10, -1
                  nop
                  sltiu      a2, s9, 436
                  c.mv       s6, t6
                  xori       a3, t4, -166
                  c.bnez     a1, 507f
                  bne        s4, a0, 512f
507:              lui        t4, 516040
                  c.lui      a0, 21
                  c.or       a4, a3
510:              bge        a3, t5, 516f
                  srai       a4, t2, 20
512:              mulh       s6, s6, t3
                  auipc      a3, 696677
514:              and        a6, a7, sp
                  c.srli     s0, 22
516:              csrrw      a6, 0x340, t5
                  ori        s6, t5, -341
                  div        s2, sp, t3
                  auipc      a6, 883661
                  srli       s10, a3, 14
                  c.beqz     a2, 533f
                  sub        s6, s0, s4
                  srai       s2, a3, 26
                  bne        s11, s3, 525f
525:              mulhu      s3, s8, s0
                  and        a2, a0, a7
                  slti       t0, s3, -644
                  xori       a6, tp, -995
                  csrrwi     s2, 0x340, 4
                  divu       s11, s11, a3
                  sra        a6, s7, s1
                  c.srli     a1, 17
533:              csrrsi     t0, 0x340, 22
                  bltu       a7, t5, 545f
                  or         zero, s9, t6
                  c.mv       a4, a3
                  beq        t3, s6, 553f
                  c.xor      s0, s1
                  c.or       s1, a3
                  c.nop
                  sub        zero, s1, t3
                  divu       s6, s1, s11
                  c.or       a5, a1
                  csrrwi     s11, 0x340, 26
545:              c.srai     s1, 24
                  andi       s10, a3, 398
                  xor        s7, sp, s6
                  c.addi     t5, 16
                  csrrsi     a5, 0x340, 6
                  ori        s10, s1, -518
                  mul        a1, t5, s6
                  mulh       a0, sp, t5
553:              c.mv       ra, s3
                  addi       t5, s6, 695
                  c.beqz     a3, 568f
                  c.xor      s1, a2
                  c.li       tp, -1
                  bne        ra, sp, 578f
                  or         s5, a5, tp
                  c.or       a2, a0
                  xori       s11, s3, -512
                  andi       s0, t5, 961
                  csrrsi     s9, 0x340, 1
                  sltu       ra, a7, s7
                  nop
                  xor        s7, a1, s9
                  blt        zero, s10, 577f
568:              mulhsu     ra, s1, t5
                  auipc      t6, 506482
                  c.lui      a0, 14
                  or         s2, t2, t2
                  mul        t1, a7, a1
                  srl        s10, s4, s8
                  c.bnez     a0, 585f
                  c.or       s1, a2
                  slli       a0, a4, 16
577:              csrrwi     s5, 0x340, 27
578:              mul        s9, s7, a3
                  remu       t0, t3, s1
                  csrrsi     s8, 0x340, 25
                  sub        a1, s5, a5
                  c.add      t1, t2
                  c.addi     s0, -1
                  c.andi     a1, -1
585:              fence.i
                  sll        s8, gp, s9
                  ori        s4, t5, -446
                  sltiu      tp, s4, 17
                  csrrc      a5, 0x340, gp
                  slli       a1, s4, 1
                  auipc      s3, 94550
                  sltiu      s0, t1, -642
                  xor        zero, a2, a2
                  c.slli     s1, 29
                  c.slli     t0, 30
                  csrrci     a4, 0x340, 20
                  srli       a0, t6, 9
                  and        a4, gp, s9
                  fence
                  c.srai     a3, 21
                  c.srli     a4, 1
                  c.li       t4, 13
                  addi       t4, a3, -148
                  auipc      s7, 292879
                  sltiu      a3, a7, 132
                  c.and      a2, s0
                  csrrci     t0, 0x340, 9
                  xor        s1, s8, t6
                  mul        s11, s0, t1
                  sub        t3, s9, sp
                  sub        s6, a5, t4
                  rem        t4, t1, t0
                  or         a4, a6, sp
                  srl        s3, t6, s8
                  divu       s3, s11, gp
                  ori        a4, s6, -828
                  divu       a0, ra, a1
                  andi       s5, sp, 319
                  lui        t1, 113251
                  remu       a4, a7, a2
                  csrrw      t0, 0x340, a1
                  csrrwi     ra, 0x340, 14
                  sltiu      s6, a1, 213
                  csrrw      a1, 0x340, s8
                  add        s4, s1, a4
                  c.sub      a3, a2
                  c.xor      a2, a3
                  csrrs      s4, 0x340, t0
                  blt        s4, a3, 630f
630:              c.andi     a1, -1
                  addi       s5, t4, -21
                  slti       s10, a7, -461
                  andi       a7, s8, 158
                  and        s6, s7, s11
                  remu       a4, a6, s4
                  xor        a4, s0, s4
                  c.add      s2, s3
                  srl        a3, t0, s10
                  csrrci     s4, 0x340, 15
                  csrrwi     s3, 0x340, 8
                  c.mv       s10, ra
                  mul        a6, t1, t3
                  remu       s3, s8, s8
                  c.sub      a2, a5
                  blt        s10, s3, 650f
                  or         s4, s1, s7
                  c.lui      a0, 2
                  c.mv       a6, s11
                  bltu       s7, t3, 666f
650:              sra        zero, tp, s1
                  blt        zero, t5, 654f
                  csrrs      a3, 0x340, a4
                  div        s9, a7, t3
654:              csrrsi     s0, 0x340, 22
                  beq        a7, s6, 674f
                  remu       t6, s4, s5
                  c.srai     s0, 10
                  c.addi     t3, 10
                  nop
                  lui        zero, 971963
                  divu       s7, a6, s2
                  remu       zero, a7, t4
                  sltiu      s1, a2, 921
                  mul        tp, a7, s0
                  divu       a5, t6, a0
666:              sub        a1, s9, s6
                  srai       t4, s1, 15
                  slt        s7, a1, a2
                  div        a2, s7, t5
                  fence
                  remu       t1, a2, s8
                  andi       a2, tp, 973
                  c.or       a1, a5
674:              sub        s4, s7, t1
                  auipc      s3, 31080
                  c.xor      a3, a4
                  srai       t6, a3, 13
                  blt        gp, a6, 689f
                  csrrs      a0, 0x340, a0
                  c.sub      a2, a4
                  c.andi     a5, 2
                  sra        t0, a3, s8
                  csrrwi     s5, 0x340, 11
                  csrrwi     ra, 0x340, 6
                  c.and      a1, a1
                  bne        a5, t3, 694f
                  nop
                  auipc      t3, 860118
689:              ori        t6, a7, 121
                  c.srai     a4, 1
                  addi       s6, a4, -685
                  xor        t4, s6, s10
                  mulhu      s1, a0, s9
694:              auipc      t5, 674860
                  bgeu       s10, t3, 712f
                  slli       tp, sp, 11
                  c.srai     s1, 26
                  c.sub      a1, a4
                  slli       t1, zero, 19
                  bge        tp, t1, 716f
                  srai       ra, s4, 0
                  csrrc      t1, 0x340, gp
                  csrrw      a1, 0x340, t5
                  remu       a6, s5, t0
                  fence
                  add        t1, t4, a2
                  slt        s6, t2, s5
                  srli       t0, s0, 26
                  mulhu      t0, a0, t3
                  mulhu      s3, a0, a4
                  csrrci     s2, 0x340, 27
712:              lui        a6, 842614
                  divu       s4, t6, s3
                  sub        a6, s0, t3
                  mulhu      t4, a0, gp
716:              c.xor      s1, a5
                  slti       t5, a5, -99
                  c.xor      a5, s1
                  sltu       s9, s10, s7
                  csrrc      t6, 0x340, a5
                  divu       s1, t2, a0
                  mulhu      t5, a7, a2
                  or         a3, s11, t6
                  sub        s1, gp, t5
                  c.srai     a3, 4
                  c.add      a6, s1
                  csrrwi     t0, 0x340, 13
                  mul        a5, a1, s8
                  c.or       s0, a3
                  mulhsu     s3, a4, s11
                  fence.i
                  and        t0, t0, t2
                  c.bnez     a3, 735f
                  slt        s8, a3, s7
735:              c.sub      a1, a0
                  srli       s9, sp, 26
                  mulh       t5, s7, s0
                  add        s3, s3, s5
                  c.li       a3, 0
                  c.srai     a5, 14
                  fence.i
                  c.lui      s1, 29
                  sll        a3, gp, a1
                  xor        tp, t6, a2
                  mul        a3, ra, a5
                  c.slli     t4, 19
                  blt        s9, zero, 752f
                  div        s6, a4, a6
                  bne        t2, s0, 758f
                  fence
                  srai       ra, s11, 18
752:              c.nop
                  srai       a7, s8, 31
                  lui        s2, 428485
                  c.sub      a5, a2
                  rem        s10, t1, sp
                  c.addi     a4, -1
758:              slti       s7, s1, -341
                  slt        a6, a3, a3
                  slli       s5, a7, 22
                  div        s7, a5, t3
                  c.srai     a0, 18
                  c.xor      a5, s1
                  c.beqz     s0, 776f
                  csrrc      a0, 0x340, s0
                  lui        tp, 641086
                  blt        gp, t1, 786f
                  c.li       s2, 21
                  bge        t0, t0, 785f
                  beq        a2, sp, 790f
                  csrrc      t4, 0x340, a3
                  c.li       ra, 21
                  mulh       t0, t2, s1
                  slti       s2, t6, 595
                  c.beqz     a2, 776f
776:              srai       s6, a4, 20
                  mulhsu     s0, a5, t3
                  srl        s4, a1, a0
                  or         t6, s0, s11
                  c.xor      s1, a0
                  fence.i
                  csrrwi     t3, 0x340, 27
                  and        t3, a0, t1
                  nop
785:              mulhsu     a0, s8, s5
786:              mul        ra, s1, s2
                  sub        a6, t0, a6
                  c.slli     s5, 11
                  c.sub      a1, a5
790:              csrrwi     s8, 0x340, 8
                  srai       s3, s3, 7
                  xori       a6, a0, -711
                  bgeu       s2, a5, 806f
                  rem        s11, s4, s3
                  c.or       a4, a0
                  c.srai     s0, 6
                  fence.i
                  c.sub      a2, a2
                  c.sub      a2, s1
                  fence.i
                  addi       a7, s2, 879
                  c.li       s11, 17
                  c.mv       t0, sp
                  bltu       s7, s11, 810f
                  sub        s4, s1, t0
806:              lui        a0, 40136
                  c.or       a4, a0
                  c.srli     a3, 6
                  c.and      a0, a4
810:              sltiu      a3, s0, -725
                  sra        zero, s5, t3
                  srli       t5, t6, 5
                  sll        a7, ra, t0
                  csrrs      s2, 0x340, sp
                  c.srai     s1, 17
                  nop
                  xori       a0, s11, -233
                  mulhsu     t5, t2, t1
                  c.slli     s1, 27
                  c.srai     a5, 12
                  slli       s9, t0, 23
                  mulh       t0, t1, a1
                  srai       a5, t4, 13
                  bne        t2, s3, 840f
                  csrrwi     a2, 0x340, 29
                  c.li       s1, 22
                  and        a6, t0, zero
                  c.slli     s5, 16
                  c.add      s10, t3
                  c.xor      s0, a0
                  csrrci     s9, 0x340, 16
                  c.li       a7, 3
                  c.li       a5, -1
                  slti       t1, t0, -16
                  sltu       s8, t4, s2
                  sltu       t1, a0, t6
                  andi       s3, a7, -901
                  sll        a5, s4, sp
                  auipc      a7, 268539
840:              csrrc      s8, 0x340, sp
                  or         a3, a0, a6
                  xori       s0, s9, 797
                  bne        t0, sp, 854f
                  c.add      a4, s10
                  c.xor      a2, s1
                  ori        s7, ra, 153
                  srai       s3, sp, 26
                  divu       s1, s0, a3
                  c.beqz     s1, 850f
850:              auipc      a5, 437043
                  c.srai     a3, 5
                  csrrsi     t3, 0x340, 14
                  blt        t6, a1, 864f
854:              mulhu      zero, a6, a4
                  c.addi     s3, 28
                  auipc      t1, 100916
                  c.andi     s0, -1
                  mulhsu     t3, s8, ra
                  andi       s3, a2, 582
                  csrrs      zero, 0x340, a2
                  sra        a0, s10, a2
                  csrrsi     s0, 0x340, 9
                  remu       a1, s7, ra
864:              srli       s9, a4, 2
                  c.srli     a3, 24
                  nop
                  c.srli     a0, 28
                  bltu       a2, a6, 886f
                  c.or       a5, s0
                  remu       a1, s8, s0
                  auipc      s2, 13631
                  nop
                  bne        t5, s8, 875f
                  addi       s6, s1, -152
875:              andi       s3, s11, -504
                  sltiu      s1, a0, -126
                  srli       a7, s10, 19
                  c.sub      a5, a5
                  rem        s2, t4, s7
                  bne        sp, t5, 886f
                  or         tp, t0, gp
                  mul        t1, s5, a3
                  c.and      a4, a2
                  slti       a5, t6, -1009
                  auipc      t0, 391174
886:              csrrw      s0, 0x340, tp
                  c.beqz     s1, 898f
                  slt        t6, tp, s0
                  c.srai     a0, 4
                  or         a6, tp, s5
                  bne        a0, a7, 894f
                  c.nop
                  csrrs      a4, 0x340, s10
894:              sltiu      a4, zero, -678
                  xor        ra, a3, t2
                  andi       a5, t4, 658
                  beq        s5, t4, 902f
898:              csrrc      s8, 0x340, zero
                  c.or       a1, a1
                  mulh       s5, ra, t3
                  mul        s10, t2, s3
902:              c.xor      a3, a4
                  bne        s7, s10, 915f
                  addi       a1, t2, 912
                  c.and      a4, a3
                  fence.i
                  sltu       a0, a6, s9
                  bge        s2, a5, 911f
                  c.andi     a3, 24
                  mul        a4, t6, s4
911:              add        s6, s8, a0
                  xori       a4, sp, -852
                  bne        s2, t5, 932f
                  c.li       s9, -1
915:              csrrs      a2, 0x340, s6
                  blt        a6, s4, 926f
                  mulhsu     s1, s3, s11
                  csrrs      t5, 0x340, s6
                  sltiu      s4, t6, -115
                  fence
                  sltiu      zero, s9, -999
                  bgeu       ra, t6, 931f
                  nop
                  c.nop
                  csrrs      zero, 0x340, t2
926:              c.sub      s0, s1
                  addi       t5, s5, 179
                  csrrs      zero, 0x340, a0
                  rem        t4, t1, a0
                  remu       s8, a3, zero
931:              mulh       s11, a5, s6
932:              csrrs      ra, 0x340, a4
                  nop
                  c.add      tp, a4
                  sub        t1, s10, s4
                  c.slli     s8, 17
                  remu       s9, a2, s0
                  c.lui      a3, 18
                  c.mv       a3, a6
                  slti       t0, s7, 942
                  and        s11, s2, t3
                  mulh       s5, s0, s2
                  csrrc      t6, 0x340, t1
                  c.and      a3, a2
                  c.add      t6, a3
                  addi       t3, s8, -715
                  div        t6, a6, a4
                  c.andi     a1, 26
                  c.and      s0, s1
                  c.and      a1, s1
                  csrrs      t4, 0x340, s5
                  c.and      a3, a1
                  beq        t2, a6, 954f
954:              bge        s10, s5, 964f
                  csrrs      s6, 0x340, s2
                  slli       s11, a6, 28
                  auipc      tp, 85847
                  sra        s8, a5, a0
                  divu       s11, a2, a3
                  bge        t4, s4, 978f
                  xor        s0, s10, t1
                  csrrci     zero, 0x340, 21
                  c.nop
964:              c.addi     a7, -1
                  addi       a0, sp, 283
                  add        t4, a7, s4
                  c.sub      s0, s0
                  mul        a0, s10, ra
                  sra        a5, t0, a0
                  remu       s1, s6, s11
                  csrrci     s6, 0x340, 21
                  bltu       s2, s11, 978f
                  c.srai     a0, 17
                  div        s5, t2, ra
                  or         t6, a2, s7
                  divu       a3, t2, a2
                  mulhu      a5, s4, t3
978:              c.lui      s0, 6
                  mulhu      s0, t5, t3
                  lui        s4, 14283
                  csrrs      t4, 0x340, t5
                  bltu       s1, s6, 998f
                  xor        a3, s10, a1
                  c.sub      a4, a3
                  bne        tp, a7, 996f
                  slti       t5, gp, 934
                  slli       a2, t4, 1
                  c.andi     s1, 23
                  xori       a7, s0, -53
                  mul        a7, sp, t1
                  bge        s8, tp, 1002f
                  xor        t0, t3, a1
                  c.add      a0, s2
                  slli       s9, s9, 16
                  blt        s9, ra, 1006f
996:              c.bnez     a5, 1001f
                  sub        s8, tp, s9
998:              addi       t5, t4, 792
                  srai       s0, zero, 19
                  ori        t5, s0, -611
1001:             addi       t1, t3, -433
1002:             sltu       a3, t0, s9
                  sub        a7, s2, t3
                  xor        zero, zero, a6
                  mul        s4, t1, ra
1006:             c.addi     s10, 31
                  andi       t1, tp, 1000
                  c.beqz     a0, 1027f
                  bge        tp, s4, 1014f
                  c.xor      s1, a1
                  rem        a7, s11, ra
                  sll        a2, t6, a1
                  csrrwi     s11, 0x340, 26
1014:             add        a3, s9, zero
                  mulhu      s5, tp, s1
                  bne        t3, s3, 1025f
                  add        s3, a6, s1
                  sra        s9, zero, t2
                  c.or       a3, a5
                  fence.i
                  srli       ra, s2, 17
                  c.xor      s0, a0
                  sltiu      a1, t0, 111
                  andi       t6, t4, 602
1025:             srli       t1, s4, 3
                  c.andi     a4, 28
1027:             mul        a1, s11, a0
                  c.srli     s1, 4
                  c.and      a3, a4
                  csrrc      a7, 0x340, zero
                  bltu       s6, s7, 1040f
                  c.lui      ra, 3
                  c.beqz     s1, 1045f
                  c.and      a0, s1
                  ori        s0, zero, 401
                  beq        s7, s2, 1038f
                  c.bnez     s0, 1057f
1038:             c.bnez     s0, 1039f
1039:             c.lui      a5, 21
1040:             fence
                  mulhsu     a2, t2, a3
                  csrrc      s10, 0x340, t0
                  xor        s0, a1, s9
                  sltu       s0, s7, s7
1045:             slt        s3, s6, zero
                  lui        s4, 470145
                  xori       a3, a5, 352
                  csrrsi     a7, 0x340, 14
                  bltu       s1, tp, 1050f
1050:             fence
                  csrrci     s4, 0x340, 31
                  csrrwi     a3, 0x340, 11
                  srl        zero, t0, s4
                  divu       s7, a6, s0
                  mulhsu     a5, s1, t1
                  rem        a5, a2, s6
1057:             divu       t1, s1, s8
                  mul        a7, ra, t6
                  fence.i
                  c.andi     a5, -1
                  csrrsi     s1, 0x340, 21
                  mulh       t5, t3, t2
                  csrrwi     a5, 0x340, 28
                  c.or       a4, a3
                  mul        s3, s8, a4
                  div        tp, a0, t4
                  or         t5, zero, t4
                  c.add      a2, s9
                  la         s10, sub_3
                  csrrs      a4, 0x340, s11
                  lui        a2, 1032269
                  csrrsi     a1, 0x340, 2
                  addi       s10, s10, 297
                  c.nop
                  srli       a4, t5, 5
                  slli       t0, t4, 21
                  remu       a6, a0, tp
                  c.and      a4, a5
                  bgeu       zero, tp, j_sub_2_sub_3_5 #branch to jump instr
                  sub        a2, a1, a4
j_sub_2_sub_3_5:  jalr       s11, s10, -297
                  and        a5, sp, tp
                  fence
                  c.li       a1, 3
                  sra        a7, s7, a3
                  xor        t0, t2, tp
                  c.or       a1, s0
                  blt        s0, gp, 1086f
                  mul        t4, s6, a0
                  blt        t1, s9, 1080f
                  andi       t4, s2, -169
                  bltu       a5, s9, 1081f
1080:             srl        a5, t1, sp
1081:             remu       s5, t4, s1
                  c.addi     a7, 8
                  c.or       a3, a2
                  slli       s7, t5, 11
                  divu       t6, t5, a5
1086:             mulhu      s3, tp, gp
                  bne        s0, a5, 1103f
                  slt        s1, s2, s10
                  csrrc      a7, 0x340, s4
                  c.xor      a3, a2
                  andi       a3, s3, 835
                  ori        s0, sp, 338
                  srl        a1, s9, s11
                  bge        t3, a6, 1100f
                  sub        t4, a2, a1
                  bge        t0, s1, 1108f
                  c.li       s4, 10
                  slli       s10, s10, 11
                  blt        s1, s1, 1115f
1100:             c.and      s0, s0
                  beq        a4, s8, 1114f
                  c.srai     a0, 30
1103:             auipc      t3, 738622
                  c.li       a4, -1
                  slt        s7, s3, a7
                  addi       s8, t3, 473
                  bge        a2, zero, 1110f
1108:             or         s4, t2, a3
                  c.srli     a0, 14
1110:             remu       s1, s8, sp
                  c.andi     a1, 4
                  sll        a6, s10, a3
                  c.lui      a2, 19
1114:             csrrci     t4, 0x340, 27
1115:             c.sub      a0, a2
                  fence
                  auipc      a4, 399900
                  c.andi     a1, -1
                  blt        a5, t4, 1138f
                  csrrs      zero, 0x340, a2
                  csrrw      t6, 0x340, zero
                  addi       t5, s9, -412
                  div        t1, s1, s5
                  c.andi     a1, -1
                  fence
                  c.xor      a0, a3
                  nop
                  c.sub      a3, a2
                  c.mv       a7, s10
                  rem        t3, t0, s7
                  addi       a0, t4, 6
                  csrrs      s9, 0x340, a0
                  c.bnez     s1, 1150f
                  fence.i
                  and        t3, a6, s10
                  bge        s3, a4, 1137f
1137:             slt        t6, t5, a1
1138:             c.srai     a2, 25
                  csrrci     s1, 0x340, 7
                  c.nop
                  c.li       t3, 25
                  c.and      a5, a4
                  sltiu      t4, s10, 1005
                  c.sub      a5, s1
                  addi       zero, zero, -353
                  srli       s4, s7, 7
                  bne        t2, s1, 1155f
                  divu       s6, s11, s4
                  csrrsi     t3, 0x340, 9
1150:             c.nop
                  csrrci     s9, 0x340, 25
                  and        s9, a3, s1
                  fence.i
                  c.andi     a3, 22
1155:             csrrwi     s1, 0x340, 2
                  srl        t5, s9, zero
                  mulhu      t6, t5, sp
                  mul        s5, sp, s3
                  srai       tp, s3, 16
                  beq        s4, ra, 1172f
                  add        a6, s11, a2
                  auipc      s8, 1020676
                  sltiu      s6, ra, 423
                  divu       ra, s5, ra
                  c.mv       t3, a6
                  c.andi     s0, 22
                  c.lui      t3, 24
                  slti       s9, s6, -797
                  c.xor      a5, a3
                  c.srli     a4, 9
                  c.add      s0, s5
1172:             c.andi     a2, 22
                  c.bnez     s1, 1184f
                  sll        s9, gp, s10
                  bge        s11, a2, 1184f
                  div        s6, a1, tp
                  xor        a0, s2, s2
                  c.li       s4, -1
                  srai       t1, s9, 19
                  c.li       ra, -1
                  fence
                  divu       zero, t0, a6
                  c.nop
1184:             bge        s10, s5, 1190f
                  c.sub      s0, a4
                  rem        s5, s5, s8
                  c.or       a2, a0
                  slt        s4, zero, t4
                  slli       s8, s6, 5
1190:             andi       s4, s9, 195
                  bltu       a5, s2, 1202f
                  xor        s11, t5, s10
                  c.slli     a1, 25
                  c.lui      a1, 30
                  sub        a3, s6, a7
                  c.sub      s1, a1
                  c.srli     a5, 28
                  sltiu      t4, s8, 467
                  ori        a7, s0, 474
                  c.beqz     a3, 1216f
                  bge        s5, s9, 1204f
1202:             auipc      t6, 428203
                  srli       a6, a0, 10
                  ori        s1, s8, 954
                  bne        a2, a1, j_sub_2_sub_3_4 #branch to jump instr
                  sltiu      t3, a6, -967
                  sra        s4, s5, s0
                  csrrsi     s8, 0x340, 20
                  andi       s9, gp, 458
                  rem        s1, s5, s10
                  slt        s8, sp, s5
j_sub_2_sub_3_4:  jal        s11, sub_3
                  bltu       tp, sp, 1213f
1204:             sub        s8, s3, s9
                  lui        t1, 17938
                  c.xor      a0, a2
                  mulh       a3, s3, t3
                  c.li       s6, 31
                  c.li       t6, 31
                  c.bnez     a3, 1221f
                  c.and      a4, a4
                  slti       s10, a3, -751
1213:             c.mv       a3, a2
                  c.xor      a2, a3
                  c.or       a2, a2
1216:             srli       a2, t3, 2
                  csrrwi     a6, 0x340, 21
                  slti       s10, s4, -513
                  fence
                  bge        s3, t6, 1221f
1221:             mulhsu     a6, sp, a5
                  srl        s11, s7, sp
                  or         s7, s2, t0
                  beq        a1, s0, 1233f
                  c.xor      s0, a3
                  sll        t1, s6, s1
                  div        t1, s4, s11
                  csrrsi     s9, 0x340, 22
                  divu       s8, a0, a7
                  or         s11, t5, s1
                  remu       a1, a7, ra
                  c.andi     a1, -1
1233:             sll        s9, a5, t2
                  or         a0, ra, s0
                  lui        a4, 774438
                  fence.i
                  sltiu      s10, t0, -427
                  sltu       t3, a1, zero
                  xori       s3, sp, -500
                  mulh       t4, sp, a1
                  lw         s11, 4(sp)
                  fence
                  addi       sp, sp, 28
                  divu       s0, s11, s1
                  sll        t6, a1, s11
2051:             c.jr x27
sub_5:            sra        s2, zero, s10
                  addi       sp, sp, -64
                  sw         s11, 4(sp)
                  mulh       a2, t0, s3
                  srl        zero, a2, s5
                  sra        s8, s1, s3
                  addi       a0, t3, -643
                  csrrc      s3, 0x340, t6
                  c.andi     a0, -1
                  la         s2, region_0+281 #start riscv_hazard_instr_stream_3
                  mulhsu     s1, a1, s0
                  srai       t0, a0, 6
                  lb         s0, -70(s2)
                  lb         s0, -66(s2)
                  mulhu      a1, t0, t3
                  srli       a0, s1, 15
                  lb         s1, 156(s2)
                  csrrw      a1, 0x340, s0
                  lb         s0, 193(s2)
                  lbu        t0, -84(s2)
                  fence.i
                  nop
                  lb         a0, 37(s2)
                  addi       s0, t0, 902
                  sb         a0, -231(s2)
                  sh         s0, 95(s2)
                  sh         t0, -165(s2)
                  c.addi     t3, -1
                  csrrs      t3, 0x340, s0
                  mulh       t3, t3, t0
                  srai       s0, s0, 7
                  div        a1, s0, t3
                  sb         a1, 166(s2)
                  slli       t0, a0, 20
                  nop
                  add        a1, s1, s0
                  lb         s1, 158(s2)
                  fence
                  c.and      s1, s1
                  xor        a0, s0, s0
                  addi       s1, t0, 245
                  c.add      t3, s0
                  sb         a0, 69(s2)
                  c.or       a0, s0
                  srai       s0, t0, 11
                  c.srli     s0, 26
                  srli       t3, a0, 14
                  sb         a0, 90(s2) #end riscv_hazard_instr_stream_3
                  la         t3, region_4+3242 #start load_store_instr_stream_0
                  la         t0, region_4+763 #start load_store_instr_stream_3
                  lbu        a3, -969(t3)
                  la         a5, region_4+107 #start load_store_instr_stream_2
                  lb         ra, 1516(t0)
                  sb         gp, -618(t3)
                  la         s1, region_4+559 #start load_store_instr_stream_1
                  lh         s9, 1003(a5)
                  sb         t0, 6(s1)
                  la         s5, region_4+3660 #start load_store_instr_stream_4
                  lbu        s3, 1892(a5)
                  lhu        s4, 693(t0)
                  lhu        t6, 13(s1)
                  sb         a7, -76(a5)
                  sb         t5, 1007(a5)
                  lb         t1, -1707(t3)
                  lb         ra, 215(s5)
                  lbu        s2, 1530(t0)
                  lb         tp, 116(a5)
                  lbu        s0, -68(s5)
                  lw         s2, -7(s1)
                  sb         s10, 115(t3)
                  lbu        a2, 2(s5)
                  lbu        s8, 254(s5)
                  sh         s5, -1982(t3)
                  lbu        zero, 223(s5)
                  lbu        t6, 840(a5)
                  lb         a3, 33(s5)
                  lbu        a7, 1484(a5)
                  sb         s0, -47(s5)
                  lbu        s6, -291(t0)
                  sb         a7, 2(s1)
                  lhu        t5, 1495(t0)
                  sb         ra, -396(t3)
                  lw         s11, 224(s5) #end load_store_instr_stream_4
                  lhu        s2, 183(t0) #end load_store_instr_stream_3
                  lbu        s9, 2(s1)
                  lb         a4, -11(s1) #end load_store_instr_stream_1
                  lbu        a3, 1150(a5)
                  lh         s10, 1935(a5) #end load_store_instr_stream_2
                  lb         a2, -386(t3) #end load_store_instr_stream_0
                  la         s4, region_2+6381 #start load_store_instr_stream_2
                  la         a2, region_2+657 #start load_store_instr_stream_0
                  la         s11, region_2+1814 #start load_store_instr_stream_4
                  la         a0, region_2+5375 #start load_store_instr_stream_3
                  lbu        s5, 3(a0)
                  la         ra, region_2+5254 #start load_store_instr_stream_1
                  lbu        tp, -3(s11)
                  lb         s3, -12(s11)
                  sb         a6, -250(a0)
                  sb         s9, 1314(s4)
                  lb         s2, -15(s11)
                  sb         s11, 107(a0)
                  lb         s3, -34(a2)
                  lbu        t4, 86(ra)
                  lbu        t0, 11(s11)
                  lbu        s5, 141(ra)
                  sb         s4, -9(s11)
                  sb         zero, -24(a2)
                  lb         t6, 11(s11)
                  lbu        s10, 14(a0)
                  lbu        s5, 190(ra)
                  lbu        s8, 10(s11)
                  lbu        s3, 8(a2)
                  lbu        tp, -118(a0) #end load_store_instr_stream_3
                  lbu        t6, 2(s11)
                  lh         s7, -1521(s4)
                  sb         s6, 129(ra)
                  lbu        s3, -548(s4)
                  sb         t1, -18(a2)
                  lbu        s8, 40(a2)
                  lbu        a4, -1185(s4)
                  lb         t6, -4(a2)
                  lb         a3, -30(a2)
                  lw         a5, 14(s11) #end load_store_instr_stream_4
                  lh         t3, 164(ra)
                  sb         s1, -215(ra) #end load_store_instr_stream_1
                  lbu        t5, 1699(s4) #end load_store_instr_stream_2
                  lb         t6, -6(a2) #end load_store_instr_stream_0
sub_5_6:          jal        s11, 13f
0:                jal        a7, 2f
1:                c.jal      10f
2:                c.jal      1b
3:                jal        ra, 20f
4:                jal        t1, 17f
5:                c.j        11f
6:                jal        s5, 15f
7:                c.jal      16f
8:                c.jal      7b
9:                c.jal      18f
10:               c.j        3b
11:               c.j        19f
12:               c.jal      6b
13:               c.j        8b
14:               jal        ra, 4b
15:               c.jal      5b
16:               c.jal      12b
17:               jal        ra, 9b
18:               jal        ra, 0b
19:               c.j        14b
20:               srli       s0, a3, 12
                  la         a2, region_4+1535 #start riscv_hazard_instr_stream_0
                  mulhsu     s0, s6, zero
                  fence.i
                  c.and      s0, s0
                  lbu        t3, 1882(a2)
                  sb         t3, 1982(a2)
                  andi       a1, a1, -458
                  csrrsi     a1, 0x340, 13
                  c.andi     s0, -1
                  lbu        s0, -1262(a2)
                  add        t3, s6, s6
                  lui        t3, 278372
                  sh         t3, 903(a2)
                  lb         a3, 1835(a2)
                  lbu        t3, 1920(a2)
                  sh         s6, 1619(a2)
                  lw         zero, 497(a2)
                  lhu        zero, -769(a2)
                  lb         s6, -1457(a2)
                  srai       s0, a1, 29
                  mulhu      a3, t3, s6
                  lbu        t3, 1342(a2)
                  lb         s6, 1176(a2)
                  lhu        a3, 1537(a2)
                  lb         a1, -232(a2)
                  lbu        a1, 45(a2)
                  srl        zero, a1, a3
                  lb         a3, -1374(a2)
                  sltiu      a1, s0, -56
                  lb         zero, -1032(a2)
                  c.and      s0, a3
                  csrrsi     a1, 0x340, 15
                  lb         a1, 1677(a2)
                  andi       s6, zero, 180
                  add        a1, zero, s6
                  lbu        s6, -870(a2)
                  csrrs      t3, 0x340, s6
                  lb         s6, -614(a2)
                  lbu        t3, 1538(a2)
                  sb         s0, 352(a2)
                  sb         s0, -1146(a2)
                  sltiu      zero, a3, -805
                  lhu        zero, 413(a2) #end riscv_hazard_instr_stream_0
                  addi       s3, zero, -4 #init loop 0 counter
                  c.and      a1, a4
                  addi       s11, zero, -3 #init loop 0 limit
                  or         s9, s1, t3
                  c.addi     t1, -1
sub_5_17_0_t:     addi       zero, tp, -784
                  c.lui      s5, 30
                  c.or       a0, a0
                  slti       s1, a7, -876
                  sltu       a1, a3, gp
                  xori       t4, tp, 172
                  csrrc      s8, 0x340, s6
                  auipc      s1, 541597
                  addi       s3, s3, 5 #update loop 0 counter
                  csrrw      a6, 0x340, s5
                  or         t6, s4, s8
                  mul        t0, t3, s9
                  and        t0, a6, s2
                  xori       a4, t1, -676
                  rem        zero, t6, t1
                  sltu       a7, t1, s8
                  c.addi     ra, -1
                  c.li       ra, -1
                  fence.i
                  c.addi     t6, -1
                  sltiu      zero, a7, 493
                  mulhsu     a3, s7, s9
                  blt        s3, s11, sub_5_17_0_t #branch for loop 0
                  divu       s2, s10, s1
                  la         s1, region_0+1870 #start riscv_load_store_rand_instr_stream_2
                  xor        t1, a6, s5
                  remu       s11, t0, a1
                  c.lui      a3, 9
                  c.srli     a3, 6
                  lw         a1, 6(s1)
                  lbu        a3, -4(s1)
                  auipc      a0, 428553
                  lb         s5, 13(s1)
                  sltu       a1, a3, s9
                  xori       s10, a4, -633
                  csrrw      t3, 0x340, t0
                  mulhsu     t5, s2, s3
                  lb         s3, -5(s1)
                  xor        t0, s11, a5
                  lh         zero, -14(s1)
                  srli       s10, s10, 28
                  csrrw      t0, 0x340, s8
                  lb         s5, -3(s1)
                  sltiu      t4, s0, -384
                  c.li       s9, 6
                  lb         s0, 5(s1)
                  lh         a7, 12(s1)
                  csrrwi     tp, 0x340, 4
                  c.lui      a6, 29
                  slli       a3, gp, 27
                  sltiu      a5, s4, 49
                  sub        tp, t3, t2
                  lbu        zero, -13(s1)
                  sltiu      s3, t1, -310
                  sra        a4, a2, t3
                  lh         s9, 6(s1)
                  add        ra, sp, a5
                  lui        s11, 755714
                  addi       a3, t6, -358
                  sh         zero, 6(s1)
                  lb         s4, 4(s1)
                  lb         a0, -6(s1)
                  c.mv       t5, gp
                  mul        s4, a6, s7
                  sb         a4, -11(s1)
                  lbu        t1, 4(s1)
                  sh         zero, -12(s1) #end riscv_load_store_rand_instr_stream_2
                  la         s0, region_3+94 #start load_store_instr_stream_1
                  la         s4, region_4+3611 #start load_store_instr_stream_3
                  la         tp, region_1+8194 #start load_store_instr_stream_0
                  lw         s10, 197(s4)
                  lb         s10, -57(tp)
                  la         s5, region_2+176 #start load_store_instr_stream_2
                  sb         tp, -45(s0)
                  lbu        a7, -106(s4)
                  lbu        t0, -208(s4)
                  lbu        s10, 17(s5)
                  lw         a6, 22(tp)
                  sb         a7, -9(tp)
                  sw         s11, -12(s5)
                  lw         s8, -235(s4)
                  sb         t1, -33(s0)
                  lh         s7, 5(s4)
                  lbu        a6, 49(tp)
                  lbu        t1, -25(tp)
                  sb         a4, 13(tp)
                  lb         a7, -53(s5)
                  lb         a5, 60(s0)
                  lbu        zero, 103(s4) #end load_store_instr_stream_3
                  lbu        t6, -44(tp)
                  sw         a4, -44(s5)
                  lb         a3, 51(s0)
                  lhu        s6, -36(tp)
                  lbu        t4, -51(s5)
                  sb         a4, -21(s0)
                  sb         t0, -33(s5)
                  lh         s7, 54(s0)
                  lb         s2, -29(s5) #end load_store_instr_stream_2
                  lb         s8, -9(s0) #end load_store_instr_stream_1
                  lb         s10, -5(tp) #end load_store_instr_stream_0
sub_5_7:          jal        s11, 15f
0:                c.jal      8f
1:                jal        ra, 6f
2:                c.j        21f
3:                c.jal      11f
4:                c.jal      23f
5:                c.jal      20f
6:                jal        ra, 14f
7:                c.j        19f
8:                c.jal      17f
9:                c.jal      0b
10:               c.j        3b
11:               c.j        16f
12:               c.jal      4b
13:               jal        ra, 7b
14:               c.jal      25f
15:               c.jal      24f
16:               c.j        9b
17:               jal        s6, 5b
18:               c.j        12b
19:               c.j        10b
20:               c.jal      22f
21:               jal        t1, 1b
22:               c.jal      18b
23:               c.jal      2b
24:               jal        ra, 13b
25:               lui        s7, 392173
                  la         s0, region_3+218 #start riscv_load_store_rand_instr_stream_1
                  csrrwi     a1, 0x340, 8
                  lb         zero, -31(s0)
                  or         t1, s11, a3
                  c.mv       s11, s9
                  c.xor      a1, a4
                  csrrc      s2, 0x340, s4
                  lw         t3, 58(s0)
                  xor        t6, zero, a5
                  lbu        a3, -61(s0)
                  c.sub      a3, a0
                  sb         s6, -53(s0)
                  andi       a7, t3, -371
                  or         a5, s2, t5
                  sb         a6, 44(s0)
                  and        zero, s3, a0
                  lbu        t5, -30(s0)
                  lbu        s5, -59(s0)
                  sb         a0, 7(s0)
                  lbu        a0, 47(s0)
                  addi       t5, a7, -289
                  lhu        zero, -64(s0)
                  nop
                  lh         s7, -64(s0)
                  lbu        s1, 51(s0)
                  fence
                  mulhsu     a1, zero, s2
                  mul        t4, t6, a1
                  ori        t4, t2, 213
                  c.mv       t1, a2
                  sh         s0, -30(s0)
                  csrrsi     zero, 0x340, 8
                  mulhu      s2, a2, a0
                  mul        s2, t1, sp
                  c.and      a1, a3
                  rem        a7, a0, a0
                  srli       a4, a6, 16
                  sb         s10, -33(s0)
                  sra        t1, t1, s4
                  rem        t5, a5, a0
                  lbu        s4, -41(s0)
                  lb         a7, -25(s0)
                  lbu        s3, -41(s0)
                  lb         s1, -31(s0)
                  c.srai     a2, 3
                  csrrwi     t4, 0x340, 13
                  lb         t1, -9(s0)
                  sb         s7, 1(s0)
                  srai       s9, a5, 3
                  lbu        s8, -4(s0)
                  sb         a4, -49(s0)
                  lbu        s6, 43(s0)
                  lb         t0, -55(s0)
                  remu       a6, a1, zero
                  lb         s1, 64(s0)
                  div        tp, s11, a4
                  sb         gp, -19(s0) #end riscv_load_store_rand_instr_stream_1
                  la         a6, region_2+6982 #start load_store_instr_stream_1
                  la         tp, region_0+1334 #start load_store_instr_stream_2
                  sw         gp, 226(a6)
                  sb         s1, 6(tp)
                  la         s10, region_1+3183 #start load_store_instr_stream_0
                  sb         s11, 7(tp)
                  lb         a4, 244(a6)
                  sb         a4, 9(tp)
                  sb         a1, 95(a6)
                  sh         s8, 2043(s10)
                  lhu        s4, -67(s10)
                  sw         gp, 130(a6)
                  sb         s1, 939(s10)
                  lb         t5, -255(a6)
                  lb         t5, 45(a6)
                  sh         s6, -1815(s10)
                  sb         sp, -413(s10)
                  lhu        t4, 220(a6)
                  sw         zero, -319(s10)
                  sb         a5, -204(a6)
                  sb         sp, 186(a6)
                  lb         t6, 1298(s10)
                  lb         t3, -203(a6) #end load_store_instr_stream_1
                  lh         a1, 95(s10)
                  lb         a5, 13(tp)
                  sw         gp, -10(tp) #end load_store_instr_stream_2
                  lbu        a2, 1690(s10) #end load_store_instr_stream_0
                  la         a3, region_0+1107 #start riscv_hazard_instr_stream_1
                  sb         s0, 61(a3)
                  lbu        a2, 206(a3)
                  slti       s2, a2, 25
                  ori        a1, s5, -818
                  andi       s11, s11, -279
                  addi       s2, s11, -690
                  lbu        s0, -91(a3)
                  c.srli     a1, 28
                  c.sub      a1, s0
                  add        s11, a1, a2
                  srl        a1, s5, s0
                  fence
                  srai       a2, a2, 4
                  xori       a2, s11, 833
                  mulh       s11, s5, s5
                  ori        s2, s2, -52
                  lb         s0, 104(a3)
                  add        a2, s0, s0
                  slt        s2, s0, a1
                  sra        a1, s11, s5
                  c.xor      s0, s0
                  lui        s5, 118191
                  c.srli     a1, 9
                  sh         s11, -181(a3)
                  lbu        a2, 209(a3)
                  lhu        s11, 167(a3)
                  sub        s0, s2, s0
                  nop
                  lhu        s11, 213(a3)
                  lbu        a2, -194(a3)
                  lbu        s0, -223(a3)
                  slt        a2, s5, s5
                  c.srli     a2, 5
                  lb         a1, -54(a3)
                  c.xor      a1, a1
                  lbu        s2, 126(a3)
                  lh         a1, 235(a3)
                  div        s2, s2, a1
                  c.nop
                  lbu        a1, -247(a3) #end riscv_hazard_instr_stream_1
                  addi       s0, zero, 7 #init loop 1 counter
                  csrrwi     zero, 0x340, 17
                  c.srli     a1, 20
                  c.srli     a0, 5
                  rem        t1, t0, t6
                  c.sub      a0, a0
                  addi       s5, zero, 6 #init loop 1 limit
                  mulh       t1, s5, s3
                  c.mv       s8, a5
                  c.slli     a7, 19
sub_5_18_1_t:     nop
                  addi       s0, s0, -4 #update loop 1 counter
                  sub        a4, s5, ra
                  c.lui      s11, 14
                  addi       s1, zero, -9 #init loop 0 counter
                  auipc      t4, 28265
                  c.srai     a3, 10
                  addi       tp, a6, -592
                  addi       ra, zero, 3 #init loop 0 limit
                  andi       t4, t4, 475
sub_5_18_0_t:     c.lui      t0, 1
                  c.nop
                  mul        a7, s5, a1
                  remu       s10, a0, s2
                  divu       t6, s4, a6
                  csrrw      t0, 0x340, s5
                  addi       s1, s1, 9 #update loop 0 counter
                  blt        s1, ra, sub_5_18_0_t #branch for loop 0
                  sltiu      s9, a2, 563
                  c.or       a0, a1
                  slt        s7, a3, a5
                  bgeu       s0, s5, sub_5_18_1_t #branch for loop 1
                  c.slli     a3, 25
                  la         a5, region_0+2070 #start riscv_load_store_rand_instr_stream_0
                  lbu        a1, -185(a5)
                  and        s7, gp, s3
                  lb         t0, -9(a5)
                  lb         ra, -159(a5)
                  csrrs      s4, 0x340, s11
                  lbu        tp, -133(a5)
                  srl        s4, tp, ra
                  csrrsi     s10, 0x340, 3
                  csrrs      s8, 0x340, s5
                  c.lui      a2, 5
                  remu       ra, t5, a3
                  ori        a1, t2, -594
                  srli       t3, t0, 16
                  sb         sp, -12(a5)
                  rem        s5, s10, ra
                  add        s9, t2, s5
                  srai       s5, s5, 29
                  fence.i
                  c.mv       s1, a3
                  and        s9, t5, s0
                  lb         s0, -7(a5)
                  sra        s0, a5, s4
                  lbu        s5, 247(a5)
                  lbu        s9, -83(a5)
                  sb         t4, 64(a5)
                  lb         s6, -225(a5)
                  mulhsu     s6, a0, zero
                  sh         t1, 48(a5)
                  sb         s9, 232(a5)
                  lbu        a1, 179(a5)
                  lb         tp, 19(a5)
                  csrrci     s11, 0x340, 9
                  csrrci     s2, 0x340, 10
                  mulh       s11, a7, s4
                  div        s8, s5, a6
                  sb         s0, 128(a5)
                  sb         s8, 141(a5)
                  lhu        ra, 122(a5) #end riscv_load_store_rand_instr_stream_0
sub_5_4:          jal        s11, 22f
0:                c.j        7f
1:                c.j        16f
2:                c.jal      18f
3:                c.j        9f
4:                c.j        23f
5:                c.jal      0b
6:                c.j        19f
7:                jal        ra, 4b
8:                jal        t1, 1b
9:                jal        ra, 5b
10:               c.jal      3b
11:               c.j        17f
12:               c.jal      6b
13:               c.jal      20f
14:               c.j        2b
15:               jal        ra, 8b
16:               c.jal      12b
17:               c.jal      10b
18:               jal        t1, 15b
19:               c.j        13b
20:               jal        t1, 11b
21:               jal        ra, 14b
22:               jal        ra, 21b
23:               c.j        24f
24:               csrrs      t3, 0x340, s0
                  la         t0, region_0+1264 #start load_store_instr_stream_2
                  la         s5, region_0+609 #start load_store_instr_stream_1
                  sh         t0, 1507(s5)
                  la         a5, region_0+2807 #start load_store_instr_stream_3
                  lb         t4, 1687(s5)
                  lb         t3, -55(t0)
                  la         ra, region_0+2511 #start load_store_instr_stream_0
                  lb         s2, -14(a5)
                  lbu        zero, 15(t0)
                  lb         a4, -41(t0)
                  sb         a3, -1(a5)
                  lbu        t5, -9(ra)
                  sb         t1, 1644(s5)
                  lb         t1, 92(s5)
                  lhu        s7, 5(a5)
                  lbu        tp, -112(s5)
                  lw         s7, -9(s5)
                  lb         t1, 1450(s5)
                  lbu        s7, 12(a5)
                  lbu        a3, 3(ra)
                  lbu        a0, -250(s5)
                  lh         t5, 3(ra)
                  sb         s4, 2(a5)
                  lb         t1, -412(s5)
                  lbu        s3, 509(s5) #end load_store_instr_stream_1
                  lbu        a7, 38(t0)
                  sb         zero, -22(t0)
                  sb         a5, 1(a5) #end load_store_instr_stream_3
                  sb         zero, 4(ra)
                  sh         tp, 26(t0) #end load_store_instr_stream_2
                  lbu        t6, 10(ra) #end load_store_instr_stream_0
                  la         ra, region_3+407 #start load_store_instr_stream_1
                  la         s3, region_4+3933 #start load_store_instr_stream_3
                  lb         t6, 134(s3)
                  la         s9, region_2+5417 #start load_store_instr_stream_2
                  la         s0, region_1+1204 #start load_store_instr_stream_0
                  la         s4, region_0+2196 #start load_store_instr_stream_4
                  sb         s8, 56(ra)
                  lh         a4, 95(ra)
                  lb         t4, -1742(s4)
                  lb         tp, 145(s3)
                  lbu        s5, -1999(s4)
                  lb         a7, 570(s9)
                  sh         s6, 218(s0)
                  sb         ra, 1733(s4)
                  lb         s1, 1585(s4)
                  sb         s2, 66(ra)
                  lb         zero, 52(ra)
                  lb         t0, 10(ra)
                  lbu        t1, 1666(s9)
                  lh         s2, -1175(s9)
                  lbu        s5, -1815(s4)
                  lbu        t4, -190(s3)
                  lbu        s6, 1457(s9)
                  lbu        t3, 47(ra)
                  lw         zero, 7(s3)
                  lh         s7, -1948(s4)
                  sh         s8, -238(s0)
                  lb         t4, -45(s3)
                  lbu        a2, 1689(s4)
                  lb         t1, -248(s3)
                  lb         s2, -1510(s9)
                  lbu        s8, 1609(s4)
                  lw         s2, -241(s3)
                  lhu        tp, -46(s0)
                  lbu        a0, -1355(s9)
                  lb         t1, -32(ra)
                  sh         a2, 102(s4)
                  lb         s2, 69(s0)
                  lb         s1, 722(s9)
                  lb         a0, -156(s3) #end load_store_instr_stream_3
                  sb         tp, 4(s0)
                  lb         a3, 1901(s9)
                  lhu        s11, 11(ra)
                  sh         s9, -634(s4) #end load_store_instr_stream_4
                  lhu        a2, 715(s9) #end load_store_instr_stream_2
                  lbu        t4, -157(ra) #end load_store_instr_stream_1
                  lbu        t0, 78(s0) #end load_store_instr_stream_0
sub_5_5:          jal        s11, 13f
0:                c.j        12f
1:                jal        t1, 2f
2:                jal        s7, 16f
3:                c.jal      11f
4:                c.jal      9f
5:                jal        ra, 19f
6:                c.j        0b
7:                c.j        17f
8:                jal        s6, 7b
9:                jal        s0, 3b
10:               jal        s10, 15f
11:               c.j        10b
12:               jal        t5, 14f
13:               jal        ra, 18f
14:               jal        s0, 8b
15:               c.j        1b
16:               c.j        20f
17:               c.j        4b
18:               c.jal      5b
19:               c.jal      6b
20:               mulhu      a0, gp, a1
                  la         t3, region_2+5922 #start riscv_load_store_rand_instr_stream_3
                  lb         t5, -192(t3)
                  sh         t3, -192(t3)
                  lb         a4, -75(t3)
                  lbu        s5, 116(t3)
                  mul        s11, s10, s2
                  c.nop
                  c.nop
                  remu       t4, t0, s1
                  lh         s6, -72(t3)
                  c.li       t4, 24
                  auipc      t4, 491506
                  lhu        a3, -126(t3)
                  addi       t5, t2, -347
                  lh         a4, -252(t3)
                  sb         a6, 75(t3)
                  lhu        s2, -116(t3)
                  sb         a2, 136(t3)
                  sb         t5, 6(t3)
                  sb         s0, -2(t3)
                  c.and      s0, a0
                  lbu        s0, 64(t3)
                  csrrw      a6, 0x340, a4
                  sb         s8, 65(t3)
                  sw         a2, 38(t3)
                  c.addi     t1, -1
                  lbu        s5, 183(t3)
                  lh         zero, -12(t3)
                  or         s4, a0, t6
                  mul        a6, a4, s9
                  c.mv       s5, s6
                  lb         a3, 221(t3)
                  sb         a5, -185(t3)
                  sb         s2, 2(t3)
                  lbu        s10, 25(t3)
                  c.srai     a5, 2
                  srl        t5, t4, s8
                  or         t1, s0, a2
                  rem        a5, s3, s7
                  lb         s9, -169(t3)
                  sh         s1, -58(t3)
                  sb         t4, -115(t3) #end riscv_load_store_rand_instr_stream_3
                  la         t5, region_0+3095 #start load_store_instr_stream_1
                  la         t4, region_0+836 #start load_store_instr_stream_0
                  lbu        s5, -5(t5)
                  lbu        zero, -51(t4)
                  lbu        a1, -107(t4)
                  sb         s3, -24(t5)
                  la         s9, region_0+3648 #start load_store_instr_stream_2
                  sb         s6, 55(t4)
                  lbu        a1, -17(t5)
                  sb         s3, -12(t5)
                  lbu        a6, 121(s9)
                  lhu        s7, 250(t4)
                  lb         s6, -64(t5)
                  lb         a3, -179(s9)
                  lh         s4, 186(t4)
                  lb         s0, -48(t5)
                  lbu        ra, 144(t4)
                  lb         a7, -29(s9)
                  lh         ra, -94(s9)
                  lb         ra, -177(t4)
                  lhu        zero, -53(t5)
                  lbu        s7, -26(t5) #end load_store_instr_stream_1
                  lb         s3, 17(s9) #end load_store_instr_stream_2
                  lh         s7, -98(t4) #end load_store_instr_stream_0
                  mulhsu     s7, s2, a4
                  csrrs      s9, 0x340, a6
                  mulhu      s8, zero, s4
                  csrrwi     s5, 0x340, 21
                  bltu       tp, s4, 21f
                  bltu       t5, a3, 24f
                  beq        a6, gp, 25f
                  csrrs      a6, 0x340, s2
                  c.or       a2, s0
                  divu       t5, t4, a1
                  bgeu       t0, s0, 22f
                  mulhsu     a6, gp, s11
                  csrrsi     ra, 0x340, 17
                  sub        s2, a5, t0
                  bltu       a3, s3, 24f
                  and        s2, ra, s0
                  divu       t4, a4, s11
                  fence.i
                  mulh       s11, t2, s2
                  or         s9, t2, s7
                  sra        t3, a2, a3
21:               c.sub      a4, a5
22:               sra        tp, t0, a0
                  c.xor      a5, s1
24:               mulhu      t5, tp, a5
25:               or         a3, t0, s11
                  xori       a3, a0, -577
                  srl        s1, s1, t2
                  c.sub      s1, s0
                  c.srai     s0, 17
                  sll        t1, t5, s4
                  csrrc      a2, 0x340, s9
                  c.xor      a3, a1
                  csrrci     ra, 0x340, 18
                  div        a6, ra, t1
                  srl        t4, a7, gp
                  c.and      a5, a2
                  sltiu      a2, s7, -224
                  addi       s3, zero, 10 #init loop 0 counter
                  c.xor      a5, a2
                  addi       s1, zero, 8 #init loop 0 limit
                  c.srli     a3, 28
sub_5_16_0_t:     mulhu      s7, zero, s10
                  addi       s3, s3, -1 #update loop 0 counter
                  bgeu       s3, s1, sub_5_16_0_t #branch for loop 0
                  fence
                  xor        a4, tp, ra
                  sltu       s8, s2, a2
                  and        s11, s7, s11
                  c.srli     a4, 4
                  c.bnez     s0, 46f
                  sltiu      a4, zero, 151
                  mulh       t5, a7, a4
                  c.srli     a5, 29
46:               nop
                  beq        s5, t3, 53f
                  c.li       s0, -1
                  c.xor      a5, s1
                  c.add      t0, s7
                  mul        s5, s3, a4
                  c.sub      a0, a0
53:               c.add      a7, t2
                  c.lui      s0, 25
                  csrrs      s5, 0x340, t4
                  c.nop
                  div        a3, s1, s6
                  c.srai     a0, 19
                  slt        s5, s3, a6
                  blt        gp, a1, 72f
                  sll        a4, t6, a4
                  bge        s9, t2, 68f
                  srli       s9, ra, 30
                  csrrsi     s3, 0x340, 0
                  xor        t6, s4, s0
                  c.bnez     a5, 81f
                  c.or       a1, a2
68:               ori        a5, s3, 40
                  rem        s5, zero, a0
                  srai       a2, s11, 7
                  remu       t4, t0, t6
72:               c.add      s5, gp
                  bne        s9, s5, 82f
                  c.li       a4, 10
                  ori        t4, s7, -50
                  c.srai     a5, 18
                  remu       a2, sp, s4
                  c.lui      s11, 30
                  csrrw      t6, 0x340, a4
                  andi       a1, zero, 394
81:               fence
82:               c.slli     a2, 21
                  bge        s6, s1, 91f
                  mul        t0, s0, s6
                  csrrci     a0, 0x340, 12
                  c.srli     s0, 1
                  c.nop
                  fence
                  lui        a5, 1011108
                  sltiu      s10, tp, 589
91:               mul        t4, t6, zero
                  c.sub      s0, a3
                  andi       a1, s0, 923
                  bne        a2, sp, 101f
                  ori        s9, t6, -249
                  csrrs      s5, 0x340, gp
                  csrrs      a7, 0x340, s4
                  ori        a1, a6, 1005
                  fence
                  csrrsi     a0, 0x340, 23
101:              sra        s0, s1, tp
                  fence.i
                  divu       s4, a7, a0
                  bltu       s0, s6, 119f
                  c.li       a1, 15
                  bgeu       ra, a5, 122f
                  divu       s9, s10, s1
                  c.lui      t0, 3
                  c.or       s0, s0
                  lui        t1, 102353
                  sltu       s0, t6, s6
                  slt        a5, s11, s3
                  mulhsu     s4, tp, a1
                  xori       a4, s0, 358
                  c.beqz     a5, 117f
                  mulh       s11, a1, a3
117:              csrrc      s7, 0x340, a0
                  c.addi     s5, -1
119:              xori       zero, a3, -601
                  c.mv       a5, a4
                  slt        t1, t3, a2
122:              andi       a2, gp, 466
                  mulhu      s3, s3, s5
                  c.bnez     a1, 144f
                  ori        s9, ra, 121
                  c.nop
                  blt        zero, s5, 146f
                  xor        a6, t1, sp
                  c.add      s5, s1
                  c.addi     tp, -1
                  csrrwi     s1, 0x340, 31
                  srli       t1, s10, 15
                  csrrs      t3, 0x340, a6
                  fence
                  c.slli     t0, 5
                  and        a4, zero, a5
                  c.andi     a1, 23
                  sll        s4, ra, t4
                  sll        s3, zero, a3
                  sltiu      s6, s8, -820
                  andi       t4, tp, 685
                  c.li       a2, 10
                  c.add      t5, s7
144:              slli       s11, ra, 23
                  fence.i
146:              csrrsi     t6, 0x340, 9
                  slt        a1, t6, s0
                  mulh       s10, a6, t0
                  c.srli     a4, 28
                  bge        s6, s10, 163f
                  c.or       a5, a5
                  bne        ra, zero, 172f
                  c.bnez     a2, 165f
                  fence
                  xor        a7, s5, tp
                  c.li       s5, 29
                  mulhsu     t0, t0, a0
                  c.add      s3, t2
                  c.andi     a5, -1
                  csrrc      a4, 0x340, t3
                  sltu       s2, a5, s9
                  mulhu      s11, s1, gp
163:              fence.i
                  csrrs      s8, 0x340, s3
165:              c.or       a2, a3
                  lui        tp, 505537
                  add        s9, s4, s4
                  slti       a6, s8, 383
                  c.or       a1, a0
                  c.andi     s1, 8
                  c.addi     a0, 23
172:              addi       s10, gp, -9
                  auipc      tp, 283500
                  sltu       a6, s2, a4
                  sll        s4, t3, t6
                  c.lui      t4, 21
                  beq        ra, t3, 186f
                  and        a4, s2, s7
                  slli       t5, s0, 1
                  c.nop
                  divu       t5, zero, s1
                  mul        s2, a1, s3
                  csrrw      a4, 0x340, a5
                  bge        s4, s11, 203f
                  bne        a5, s6, 194f
186:              slli       t4, a0, 13
                  and        s10, t4, a1
                  mulhsu     s8, sp, a1
                  c.and      a5, s0
                  bltu       gp, t1, 202f
                  c.lui      s10, 30
                  bge        s4, a7, 207f
                  c.beqz     s1, 195f
194:              beq        s11, t6, 198f
195:              auipc      t0, 730596
                  div        t5, s9, t5
                  slti       s2, t4, -585
198:              csrrwi     t0, 0x340, 22
                  div        a7, zero, s10
                  mulhu      s10, s0, a7
                  remu       a0, s11, t0
202:              slli       zero, s9, 4
203:              c.and      a5, a4
                  and        s3, a3, t5
                  sll        a4, t5, t0
                  c.xor      a2, a3
207:              c.srai     a2, 8
                  blt        a7, s10, 225f
                  sltu       a2, s1, t4
                  bltu       t6, ra, 214f
                  fence
                  andi       zero, s3, 467
                  c.srai     a1, 31
214:              mulhu      t4, a4, s7
                  c.bnez     s0, 234f
                  c.srai     a5, 23
                  addi       t6, s9, 707
                  beq        s0, tp, 222f
                  rem        s11, sp, t6
                  c.srli     a4, 3
                  xori       s2, t0, 158
222:              c.srai     a2, 3
                  csrrs      s0, 0x340, s3
                  c.bnez     a5, 236f
225:              c.srai     s1, 27
                  lui        s0, 496168
                  c.slli     t0, 21
                  mulhu      s5, a4, a6
                  c.addi     t4, 21
                  sltiu      a3, sp, 500
                  remu       tp, t6, a7
                  csrrci     t3, 0x340, 2
                  xor        s7, t3, a6
234:              c.or       a4, a4
                  c.mv       s7, s11
236:              sltu       a7, s5, t0
                  mulh       a5, a1, tp
                  fence.i
                  c.or       a4, a4
                  sltu       a3, s9, s7
                  blt        t5, a4, 256f
                  c.beqz     a4, 259f
                  mul        a7, a5, a7
                  mul        s3, t3, a2
                  c.srai     a1, 2
                  c.srli     a0, 20
                  csrrs      t6, 0x340, gp
                  mulhu      a6, s0, s4
                  mulhu      s9, a5, ra
                  csrrw      s7, 0x340, sp
                  srai       s3, s0, 21
                  c.andi     s0, -1
                  csrrc      ra, 0x340, s5
                  xor        t6, s6, s6
                  sltu       s5, s2, t6
256:              slt        s7, s9, a3
                  srl        s7, s7, a0
                  or         a7, s2, s10
259:              slli       a7, s1, 18
                  beq        a1, sp, 272f
                  mulh       s10, a7, s8
                  c.and      a1, s1
                  slt        t4, s11, t6
                  slti       s11, a1, -705
                  csrrw      ra, 0x340, s0
                  fence.i
                  fence.i
                  mulhsu     a4, t0, a0
                  c.sub      a1, a1
                  slli       s11, a4, 1
                  xor        a0, ra, t2
272:              xor        s6, s3, s4
                  auipc      ra, 920484
                  sltiu      tp, t0, 633
                  sub        a2, t6, s2
                  blt        t4, s5, 285f
                  c.li       t4, 30
                  csrrsi     a3, 0x340, 28
                  c.or       a2, a2
                  bltu       gp, s10, 290f
                  rem        t1, a1, s11
                  c.sub      a2, s0
                  c.beqz     a5, 302f
                  beq        t6, s0, 292f
285:              sltu       t3, t2, t0
                  csrrwi     s10, 0x340, 3
                  sll        a1, s4, t6
                  slli       s11, a3, 12
                  bne        tp, s10, 308f
290:              c.sub      a0, a5
                  sra        s9, t0, s7
292:              c.and      a2, a0
                  csrrw      s7, 0x340, s3
                  c.lui      t1, 2
                  c.and      s0, a1
                  mulhu      s7, t2, t6
                  bltu       t0, a1, 310f
                  bltu       ra, t4, 307f
                  slti       t0, t1, -745
                  or         s3, s0, s2
                  or         t6, s8, s1
302:              csrrci     a4, 0x340, 13
                  c.slli     s8, 11
                  c.sub      a2, s0
                  and        t5, t2, gp
                  sll        s11, t0, s4
307:              csrrw      t6, 0x340, s5
308:              csrrwi     tp, 0x340, 9
                  sub        a3, s0, a3
310:              sub        s11, s0, s2
                  sltu       t6, s5, t0
                  sltiu      s5, s11, -827
                  mulh       a1, s10, t6
                  slli       a3, a1, 17
                  c.andi     a1, -1
                  mulhu      s6, s9, zero
                  slt        s5, t3, tp
                  csrrc      s4, 0x340, s10
                  bge        gp, a2, 335f
                  c.addi     s11, 18
                  addi       a5, a1, -795
                  csrrsi     s10, 0x340, 18
                  andi       t1, s4, -813
                  add        a4, s7, s6
                  bgeu       s7, s9, 345f
                  fence.i
                  sltu       t0, ra, ra
                  bne        s9, s11, 332f
                  xor        s9, t6, t2
                  slt        ra, s10, a1
                  c.srai     a0, 16
332:              slti       s3, s3, 921
                  beq        a6, t5, 337f
                  c.mv       ra, sp
335:              sll        a1, s2, tp
                  c.nop
337:              xori       ra, a5, 152
                  csrrsi     t0, 0x340, 28
                  bne        t4, a5, 351f
                  div        a3, s0, s9
                  srai       s3, t1, 20
                  sub        s6, zero, a5
                  divu       s11, t6, a5
                  bgeu       a5, s4, 364f
345:              slti       s0, s0, 455
                  sub        t3, s9, s1
                  sra        a2, zero, a5
                  mulhu      s10, s8, t3
                  bltu       t3, s1, 355f
                  nop
351:              srl        s9, s1, a6
                  c.andi     a3, 8
                  beq        a1, a5, 370f
                  or         a7, gp, s10
355:              c.add      s3, s3
                  c.and      a1, a2
                  c.and      s1, a0
                  csrrci     a7, 0x340, 13
                  csrrsi     tp, 0x340, 29
                  divu       s6, s5, s8
                  csrrw      zero, 0x340, t1
                  srli       s1, s5, 13
                  slli       a5, t4, 25
                  la         a1, region_1+7927 #start load_store_instr_stream_0
                  sb         t0, -277(a1)
                  sb         t6, -1353(a1)
                  lbu        a4, 206(a1)
                  la         a5, region_3+429 #start load_store_instr_stream_1
                  sb         a1, -169(a1)
                  sb         s4, -574(a1)
                  lhu        a6, -273(a5)
                  sb         s8, 2(a5)
                  lb         s9, -1113(a1)
                  lb         s6, 75(a5)
                  lb         s4, -150(a1)
                  sb         zero, 69(a5)
                  lb         zero, 1346(a1)
                  lb         s0, -1636(a1)
                  sb         gp, -410(a5) #end load_store_instr_stream_1
                  sb         a3, 1876(a1) #end load_store_instr_stream_0
364:              mulh       t4, t1, s8
                  mulh       a2, a4, a7
                  csrrs      s3, 0x340, s5
                  c.bnez     a1, 382f
                  bge        s1, a2, 383f
                  c.beqz     a4, 378f
370:              divu       s7, t4, a6
                  srli       a6, t2, 8
                  c.andi     s1, -1
                  csrrsi     a5, 0x340, 6
                  c.or       a5, a4
                  csrrs      t0, 0x340, sp
                  c.srai     a5, 7
                  beq        zero, s6, 379f
378:              bge        a7, s7, 390f
379:              csrrc      s2, 0x340, s8
                  c.add      s4, s6
                  csrrci     a4, 0x340, 6
382:              mul        t0, t5, s11
383:              addi       a1, t4, 903
                  csrrsi     t1, 0x340, 22
                  c.srli     a3, 28
                  mulhu      a5, a6, t0
                  auipc      t1, 604752
                  bltu       s4, zero, 394f
                  fence.i
390:              sltu       t3, t4, s10
                  bltu       ra, s4, 410f
                  sltu       a4, s9, sp
                  mulhsu     s7, t5, a4
394:              c.andi     a4, 13
                  c.beqz     a1, 397f
                  addi       t6, s9, 68
397:              srli       a6, a1, 4
                  c.or       a5, s0
                  addi       t1, a6, 120
                  c.add      s6, t1
                  srai       t5, a1, 25
                  xori       a7, a4, -439
                  c.and      a3, s0
                  csrrsi     s5, 0x340, 27
                  c.andi     s0, -1
                  mulh       s6, a4, gp
                  c.srai     a5, 29
                  xori       a0, t0, -10
                  bgeu       s11, t1, 416f
410:              add        a6, s5, a7
                  xori       t4, a6, -985
                  andi       tp, s4, 926
                  ori        s8, s3, 966
                  mul        t5, t3, s2
                  bne        t5, s5, 421f
416:              c.or       a4, a2
                  c.beqz     a3, 426f
                  slt        a4, s2, a2
                  csrrc      zero, 0x340, t6
                  fence
421:              c.xor      a5, a2
                  c.slli     a3, 1
                  csrrsi     s11, 0x340, 19
                  srl        a4, gp, a6
                  csrrw      s0, 0x340, s7
426:              bne        s10, a6, 445f
                  lui        t6, 863740
                  mul        s7, tp, s5
                  sll        tp, a5, s3
                  sub        a6, a6, s11
                  srli       s10, t4, 7
                  addi       t5, ra, 836
                  csrrc      a4, 0x340, sp
                  csrrsi     s2, 0x340, 0
                  mulh       s9, t0, gp
                  div        s1, a2, s2
                  bne        t1, a6, 457f
                  csrrc      s9, 0x340, s6
                  beq        s6, t1, 441f
                  auipc      s11, 21506
441:              csrrsi     a4, 0x340, 6
                  c.add      a3, a4
                  add        a2, s7, tp
                  xor        t6, t4, t6
445:              bge        t5, t4, 464f
                  bne        ra, gp, 456f
                  csrrwi     t3, 0x340, 3
                  divu       t1, s5, t6
                  mulhu      a2, sp, zero
                  auipc      a6, 720926
                  add        a4, t2, t4
                  remu       s11, a4, s10
                  xor        zero, a0, t4
                  csrrsi     s7, 0x340, 25
                  c.slli     t4, 29
456:              xor        a1, t5, s9
457:              c.add      s3, s5
                  sltiu      t0, s7, 986
                  remu       s7, a5, s11
                  auipc      s1, 447828
                  c.bnez     a5, 476f
                  fence.i
                  nop
464:              csrrc      s7, 0x340, a6
                  bne        tp, s0, 469f
                  srli       s10, t6, 5
                  c.li       s2, 6
                  xor        s8, s11, s8
469:              c.add      s7, a5
                  srai       zero, t3, 19
                  mulhu      s8, a2, s2
                  mulhu      s10, tp, zero
                  c.mv       s6, s0
                  c.slli     a2, 23
                  or         s4, t3, a0
476:              andi       a2, tp, 494
                  c.xor      a3, a5
                  remu       a6, t1, tp
                  slli       s6, a5, 15
                  remu       a5, zero, t2
                  mulh       s1, a3, s1
                  andi       s6, s6, 114
                  c.li       s2, 11
                  slti       s9, sp, -404
                  csrrw      t1, 0x340, s11
                  c.bnez     a0, 503f
                  csrrsi     a5, 0x340, 23
                  or         s3, t0, s4
                  sra        s11, a6, t4
                  sltu       a0, s1, s6
                  slli       zero, a6, 11
                  bne        tp, s8, 496f
                  bne        gp, s7, 512f
                  slt        a6, zero, t3
                  c.lui      a6, 13
496:              c.slli     s7, 7
                  sltu       a3, s1, s5
                  c.sub      a5, s1
                  sub        a0, t4, tp
                  c.li       s11, 23
                  c.srli     a1, 22
                  c.sub      a4, a0
503:              csrrs      s8, 0x340, a5
                  add        a7, t2, s3
                  fence.i
                  c.beqz     a1, 515f
                  c.xor      a4, s1
                  xor        s6, s7, sp
                  and        t3, s4, t5
                  bne        s10, s7, 530f
                  c.bnez     a3, 523f
512:              sll        a3, t2, s1
                  c.or       a0, s1
                  bge        s2, t1, 526f
515:              c.and      a5, a2
                  remu       t5, t5, t6
                  fence
                  csrrsi     a3, 0x340, 31
                  nop
                  sra        tp, t0, s9
                  c.or       a4, s1
                  sltu       s9, s8, ra
523:              mul        ra, zero, zero
                  c.or       a1, a1
                  sltu       a5, sp, a5
526:              csrrci     a4, 0x340, 24
                  c.sub      a3, s1
                  csrrwi     s6, 0x340, 24
                  c.add      a7, a1
530:              or         a3, a0, tp
                  sra        t3, gp, t0
                  c.bnez     a5, 548f
                  c.sub      a2, a3
                  blt        s3, a0, 540f
                  auipc      a1, 571893
                  c.addi     s5, 22
                  fence
                  c.sub      a0, s0
                  csrrsi     s5, 0x340, 8
540:              c.bnez     s1, 559f
                  sra        t1, t3, a0
                  csrrsi     t5, 0x340, 3
                  csrrsi     t4, 0x340, 2
                  csrrsi     s10, 0x340, 4
                  xori       t6, t2, 805
                  srai       s8, a2, 2
                  auipc      s4, 103198
548:              addi       s8, s6, -945
                  rem        ra, a1, a2
                  sub        t3, s0, t2
                  bge        s4, s10, 559f
                  c.nop
                  c.lui      a7, 8
                  mulhu      a2, a4, ra
                  and        a7, s3, s3
                  mul        a0, s0, t4
                  mul        s6, t6, t4
                  sra        s11, t1, t0
559:              nop
                  c.srli     a0, 20
                  c.or       s0, s0
                  mul        a6, a5, s4
                  remu       ra, t2, t3
                  sll        zero, t6, s8
                  and        s7, t1, t3
                  csrrci     a1, 0x340, 0
                  sll        a7, s3, a7
                  mulhu      a5, a6, t2
                  c.srai     a0, 1
                  divu       tp, t4, tp
                  c.mv       tp, sp
                  csrrsi     a4, 0x340, 0
                  blt        sp, s0, 585f
                  nop
                  bne        s8, s11, 588f
                  bge        s5, sp, 593f
                  csrrsi     t5, 0x340, 20
                  csrrs      s8, 0x340, t4
                  sltiu      a0, t6, 625
                  csrrci     tp, 0x340, 2
                  lui        s10, 487259
                  andi       a6, a3, -433
                  c.li       t0, 29
                  c.andi     a2, -1
585:              rem        ra, t0, tp
                  nop
                  srai       s9, a6, 0
588:              auipc      t6, 881360
                  mulhu      t5, s6, s9
                  c.sub      a0, a5
                  slti       t4, a2, -135
                  c.bnez     a2, 599f
593:              auipc      tp, 127341
                  csrrci     a2, 0x340, 16
                  lui        s0, 368455
                  csrrs      a1, 0x340, s11
                  slti       a5, s10, 163
                  mul        a3, t0, a2
599:              beq        s2, a2, 611f
                  c.li       t0, 3
                  and        a0, sp, t0
                  sra        s1, s6, ra
                  sll        s1, a1, t4
                  sra        s2, a2, s8
                  c.nop
                  or         a5, s1, s5
                  c.srli     a1, 17
                  slti       s1, t5, -398
                  c.slli     s5, 26
                  blt        t5, t4, 625f
611:              bne        a2, s9, 613f
                  c.bnez     a0, 627f
613:              srli       a5, zero, 30
                  beq        t2, a2, 623f
                  bgeu       s3, a7, 619f
                  c.srli     a5, 3
                  lui        t4, 42871
                  mulh       t5, t6, gp
619:              nop
                  and        s8, sp, s3
                  mul        a6, a2, s4
                  mul        s9, a7, a0
623:              csrrc      tp, 0x340, t3
                  mulh       tp, gp, s5
625:              fence.i
                  c.or       a4, a0
627:              c.beqz     a5, 631f
                  slti       a2, gp, -250
                  srai       s11, a3, 8
                  fence.i
631:              nop
                  c.nop
                  bltu       t1, sp, 652f
                  c.slli     s3, 4
                  sltu       tp, t5, a4
                  c.srli     a2, 9
                  csrrsi     tp, 0x340, 16
                  bge        sp, gp, 657f
                  slti       t5, s3, 410
                  sltiu      t6, s5, -293
                  div        t1, t1, t2
                  slli       s7, a4, 6
                  slli       t0, s10, 13
                  andi       s4, s9, -147
                  ori        a4, a5, 762
                  c.andi     a1, -1
                  c.add      ra, a3
                  xor        a1, s0, t6
                  c.sub      a0, a1
                  lui        s7, 1021421
                  andi       s4, a5, 757
652:              sra        a3, s8, a1
                  bge        a5, t0, 665f
                  nop
                  c.slli     s2, 17
                  xor        tp, t5, a6
657:              srai       a6, a4, 8
                  c.add      s9, s3
                  c.add      a1, s6
                  slti       s10, s10, 52
                  csrrs      a6, 0x340, s0
                  csrrs      s11, 0x340, s10
                  c.slli     ra, 7
                  beq        s10, a6, 668f
665:              c.slli     s4, 6
                  c.li       t6, -1
                  andi       a0, s6, 521
668:              xor        s7, s5, a3
                  sltu       t4, a2, gp
                  slli       a3, tp, 10
                  c.bnez     a4, 673f
                  sll        a2, s2, ra
673:              c.and      a1, s0
                  add        a1, a6, t2
                  c.bnez     a2, 684f
                  rem        ra, t5, a6
                  c.nop
                  c.andi     s0, -1
                  add        s10, a5, a2
                  addi       s1, a4, -868
                  fence.i
                  c.srli     a0, 1
                  xori       s3, s0, -669
684:              rem        s5, a1, t2
                  c.andi     a4, 20
                  xori       s7, s3, 456
                  c.slli     a3, 9
                  c.beqz     a3, 690f
                  srl        t6, zero, s4
690:              andi       s1, s6, -159
                  srli       t3, tp, 30
                  sltiu      a2, zero, 427
                  csrrc      s7, 0x340, a3
                  fence.i
                  lui        t4, 236525
                  srai       t3, s8, 7
                  blt        zero, a3, 717f
                  c.li       tp, -1
                  auipc      t3, 267635
                  divu       s4, t5, ra
                  c.srli     a1, 3
                  addi       s1, s7, 810
                  mulhu      s11, s7, s5
                  bge        s11, s2, 708f
                  sltiu      a7, a2, -575
                  c.bnez     a3, 725f
                  bne        s4, a2, 719f
708:              c.beqz     a1, 720f
                  lui        s7, 828424
                  bne        t4, s10, 719f
                  bne        a1, t6, 730f
                  divu       t3, t2, t6
                  c.li       t3, 11
                  c.sub      a1, a5
                  fence
                  c.lui      a4, 20
717:              srl        s4, tp, s6
                  c.add      t0, t5
719:              bge        s6, t2, 731f
720:              csrrsi     a2, 0x340, 27
                  c.lui      a0, 4
                  c.addi     a0, -1
                  sll        s8, a1, a2
                  andi       a4, sp, 192
725:              blt        t1, t1, 732f
                  divu       t3, t2, t4
                  bne        sp, gp, 744f
                  slt        s9, t2, s8
                  la         tp, region_0+4013 #start riscv_hazard_instr_stream_2
                  lb         t3, -1928(tp)
                  divu       s4, s8, a3
                  c.slli     t3, 26
                  rem        s8, a3, t3
                  c.li       a3, -1
                  lb         s0, -1179(tp)
                  lb         s0, -1595(tp)
                  sra        a0, s0, t3
                  lbu        a3, -366(tp)
                  sb         a0, -1706(tp)
                  sll        s8, a3, s8
                  mulhu      t3, t3, s8
                  sh         s0, -1931(tp)
                  slti       a0, t3, 132
                  srai       t3, s8, 4
                  csrrs      a3, 0x340, s4
                  lb         a0, 73(tp)
                  sltiu      t3, s8, -445
                  divu       s0, a3, t3
                  lb         a0, -2045(tp)
                  c.xor      a0, s0
                  lb         s8, -1927(tp)
                  lb         a0, -1185(tp)
                  xor        s0, a0, a3
                  andi       s4, t3, 1021
                  c.li       a3, 28
                  c.li       s4, 22
                  c.srli     s0, 4
                  sh         s8, -1451(tp)
                  sb         s0, -1394(tp)
                  or         a0, s4, t3
                  mul        a0, s8, t3
                  div        a0, s0, s8
                  csrrwi     s8, 0x340, 31
                  mul        a0, s0, a3
                  sltiu      s0, s8, -66
                  mulhsu     s8, a3, a3
                  divu       a3, a0, t3
                  srl        t3, s4, s0
                  sub        a3, t3, t3
                  c.or       a3, a0
                  sb         a3, -1144(tp)
                  csrrs      s4, 0x340, s8
                  lb         a0, 27(tp) #end riscv_hazard_instr_stream_2
                  c.or       a3, a5
730:              mulh       t1, s1, s1
731:              csrrc      s1, 0x340, ra
732:              c.srai     a0, 20
                  c.li       a4, 21
                  lui        t6, 992475
                  div        a1, s11, s3
                  bne        a0, gp, 746f
                  andi       a1, s6, -523
                  c.slli     t6, 27
                  csrrsi     t6, 0x340, 21
                  ori        s1, s9, 569
                  csrrci     s2, 0x340, 0
                  csrrw      a7, 0x340, a7
                  bne        s9, s11, 763f
744:              c.nop
                  bge        s2, t3, 760f
746:              nop
                  rem        t6, t1, s11
                  c.sub      a4, a3
                  or         t4, s8, s10
                  slti       zero, a5, -785
                  csrrw      t6, 0x340, a7
                  sltiu      a7, t5, -806
                  csrrwi     a2, 0x340, 1
                  csrrs      s6, 0x340, a0
                  c.bnez     s1, 764f
                  divu       zero, s11, s10
                  bne        a5, t5, 772f
                  c.li       s0, -1
                  srl        t0, a0, a7
760:              ori        s1, sp, -897
                  beq        s0, a7, 767f
                  bne        t4, t2, 775f
763:              sra        s9, t0, s7
764:              csrrc      t4, 0x340, a7
                  div        s4, s10, gp
                  add        s7, a5, t3
767:              bne        sp, s9, 784f
                  sltu       ra, t1, t3
                  slli       t4, tp, 14
                  mul        s11, a5, a3
                  divu       s10, t4, s0
772:              c.addi     s5, -1
                  sub        a0, a4, s11
                  c.xor      s0, s0
775:              slli       zero, t2, 30
                  blt        t1, s11, 782f
                  slt        s3, t4, s8
                  csrrci     a1, 0x340, 26
                  csrrw      zero, 0x340, s10
                  andi       t0, s6, -135
                  c.add      s10, s1
782:              srai       s6, t0, 2
                  mulhsu     a7, t6, s8
784:              c.srli     a0, 27
                  sll        t4, t0, s5
                  add        t1, a3, t1
                  lui        ra, 444457
                  fence.i
                  add        tp, t5, s2
                  c.and      a5, s0
                  bgeu       a4, s10, 806f
                  c.and      a4, a4
                  c.and      a3, s0
                  c.or       a3, a5
                  or         ra, s8, s8
                  srli       a3, a7, 10
                  beq        s1, a7, 813f
                  fence.i
                  sltu       a1, gp, s1
                  mulh       s6, s0, t4
                  sltiu      s8, s2, 307
                  srai       s11, tp, 21
                  or         t0, s10, a2
                  slt        a3, s6, tp
                  rem        a4, gp, a5
806:              fence.i
                  sra        a7, s10, sp
                  nop
                  mulh       a6, s10, s2
                  and        tp, s0, t0
                  sll        a6, a4, zero
                  c.slli     a5, 31
813:              divu       t3, a7, t2
                  mulhu      s3, s5, t5
                  and        s0, a5, s3
                  csrrwi     s7, 0x340, 4
                  csrrsi     t3, 0x340, 3
                  xori       ra, a5, -699
                  divu       a1, s2, t0
                  srl        s9, s3, s4
                  csrrsi     a3, 0x340, 7
                  xori       t5, a0, -856
                  c.mv       a5, t6
                  c.slli     s7, 12
                  mulh       s7, s6, t1
                  blt        a6, t5, 834f
                  bltu       t3, s8, 847f
                  fence
                  remu       s10, s10, t5
                  or         s6, a1, sp
                  c.srli     a3, 31
                  c.and      s0, a3
                  and        t1, zero, s5
834:              srli       s8, zero, 20
                  slli       s9, a5, 25
                  slli       s9, zero, 11
                  slt        ra, t3, t1
                  slli       s7, sp, 8
                  slt        s1, a7, gp
                  csrrci     s9, 0x340, 6
                  csrrw      a6, 0x340, tp
                  mulh       tp, tp, a3
                  srl        s9, s5, s10
                  csrrw      s6, 0x340, t2
                  slt        t3, t5, s0
                  rem        a3, s5, zero
847:              remu       s0, a6, s3
                  bltu       s3, a4, 854f
                  sltiu      ra, t0, -931
                  csrrs      s8, 0x340, a7
                  c.xor      a2, s0
                  c.and      a5, a5
                  divu       s6, s2, s5
854:              c.beqz     a1, 874f
                  ori        s2, s3, -64
                  add        s7, zero, tp
                  div        s11, s1, a2
                  csrrs      a4, 0x340, a0
                  c.srai     a2, 9
                  c.andi     a3, -1
                  div        tp, t1, s6
                  srl        a0, t4, s10
                  c.mv       t4, s5
                  c.addi     s7, 9
                  mulh       s10, s8, s5
                  ori        t1, t0, 422
                  auipc      a3, 861104
                  sltiu      s0, s8, -731
                  divu       s1, s8, s7
                  slti       a0, s5, -536
                  c.li       s5, -1
                  addi       a6, a3, 505
                  blt        s11, a1, 886f
874:              srl        s3, a7, tp
                  c.srli     a3, 10
                  nop
                  bge        t1, s4, 889f
                  and        s0, a3, ra
                  c.beqz     a2, 881f
                  sltiu      t6, s4, 376
881:              csrrs      s8, 0x340, s10
                  bgeu       sp, t3, 899f
                  bne        t6, a0, 902f
                  sltiu      a0, s1, -135
                  csrrsi     t0, 0x340, 6
886:              slli       a5, t4, 22
                  lui        a6, 678667
                  csrrci     s3, 0x340, 5
889:              sltu       s9, s7, s6
                  bge        t4, s9, 902f
                  srai       s9, a6, 4
                  add        a7, ra, gp
                  add        s11, t2, zero
                  beq        s8, a3, 903f
                  sll        ra, a4, gp
                  mulhu      t0, s2, t2
                  sll        tp, s7, t6
                  c.srli     a2, 8
899:              csrrs      a1, 0x340, t2
                  and        s9, t0, tp
                  and        s4, s3, s2
902:              slt        s11, gp, a2
903:              lui        s2, 317183
                  sltiu      zero, a3, 595
                  csrrs      t3, 0x340, s0
                  srl        s0, a3, t6
                  c.add      s6, s10
                  rem        s6, a6, a5
                  srai       s6, s5, 17
                  c.li       s8, 24
                  c.bnez     s1, 915f
                  slt        s3, zero, a7
                  csrrc      a1, 0x340, t4
                  c.xor      s0, s0
915:              csrrwi     ra, 0x340, 8
                  slti       s0, a1, 176
                  divu       s2, tp, a0
                  c.slli     a1, 12
                  slli       a7, s4, 13
                  andi       t1, s4, -448
                  nop
                  c.slli     a4, 22
                  srl        s9, s5, t3
                  ori        s11, s11, 589
                  sll        ra, a5, a2
                  c.mv       t6, a6
                  slt        t0, s10, a5
                  sltiu      zero, s10, 476
                  c.sub      s0, a3
                  lui        s11, 11777
                  div        s0, tp, tp
                  sra        s1, s1, ra
                  mul        s1, a1, t6
                  and        s0, t3, s1
                  c.xor      a5, a2
                  c.bnez     a1, 951f
                  csrrwi     t1, 0x340, 19
                  c.slli     a7, 2
                  slt        s8, a1, s9
                  csrrs      a3, 0x340, t0
                  csrrci     s10, 0x340, 8
                  slti       s2, a5, 310
                  csrrw      s2, 0x340, a1
                  c.srli     a0, 28
                  c.slli     ra, 28
                  lui        a0, 170677
                  c.lui      s6, 13
                  add        a7, a3, s5
                  srl        a4, t0, s9
                  andi       a3, s5, -579
951:              or         s11, t5, gp
                  c.and      a0, s1
                  bltu       gp, t4, 970f
                  sltiu      ra, zero, -341
                  c.add      a1, s10
                  bge        gp, a5, 958f
                  rem        s3, ra, a3
958:              sub        s3, a4, t2
                  c.add      s9, s9
                  mulhu      s5, a1, s8
                  sra        s9, t2, a5
                  c.srai     a4, 8
                  c.add      tp, a5
                  c.add      s9, s0
                  c.sub      s1, a1
                  c.and      s0, s1
                  add        zero, s5, s3
                  blt        a6, s3, 975f
                  remu       a6, s6, s0
970:              c.or       a4, a0
                  c.slli     a4, 14
                  nop
                  slli       s10, a2, 14
                  mulh       a3, t0, s3
975:              csrrw      s7, 0x340, a0
                  c.slli     s5, 8
                  c.and      a3, a0
                  sub        ra, a4, a2
                  nop
                  sltiu      s10, zero, -713
                  fence.i
                  c.slli     tp, 15
                  slti       a3, a3, 671
                  bge        a0, tp, 993f
                  c.srai     a3, 8
                  ori        t5, s3, -817
                  divu       s10, a0, a6
                  csrrsi     a0, 0x340, 14
                  auipc      s9, 371612
                  ori        s10, t3, 563
                  sltu       s11, a0, s9
                  csrrs      t5, 0x340, s8
993:              c.srli     a3, 3
                  blt        a5, s1, 1013f
                  sub        s6, a4, t2
                  c.and      a4, a2
                  sltiu      s2, ra, 590
                  mul        s11, a6, t1
                  beq        a1, ra, 1009f
                  csrrc      a2, 0x340, s6
                  c.beqz     s0, 1020f
                  lui        a0, 362467
                  auipc      s5, 234271
                  c.addi     t5, 18
                  or         s0, t3, a4
                  bltu       s7, a5, 1018f
                  auipc      a7, 841183
                  c.slli     a5, 13
1009:             csrrwi     a3, 0x340, 25
                  c.srai     a0, 27
                  slli       s4, t4, 21
                  c.beqz     a3, 1027f
1013:             c.mv       s6, s11
                  div        a4, t1, zero
                  xor        t4, a1, a1
                  or         a1, a0, a6
                  c.nop
1018:             div        a4, t1, zero
                  c.and      a4, a0
1020:             srai       s6, s7, 13
                  sll        t0, tp, s7
                  srai       s3, a2, 21
                  bgeu       t4, a1, 1032f
                  c.sub      a1, s1
                  fence
                  add        t5, s3, s7
1027:             c.nop
                  mulh       s5, sp, a3
                  bge        s2, a6, 1048f
                  csrrci     s10, 0x340, 14
                  c.srli     a3, 29
1032:             fence.i
                  csrrsi     ra, 0x340, 7
                  c.srai     a1, 27
                  sltu       s0, s7, s2
                  csrrwi     a0, 0x340, 2
                  slt        s5, s1, s3
                  csrrci     tp, 0x340, 24
                  c.slli     a6, 19
                  srli       s1, s8, 9
                  sll        t3, s1, s10
                  c.srai     a4, 10
                  or         s6, a0, a7
                  blt        a5, t5, 1048f
                  c.xor      a0, a4
                  bgeu       a0, a7, 1048f
                  srai       a7, s3, 13
1048:             csrrs      t1, 0x340, s4
                  csrrw      a3, 0x340, s0
                  mulhu      zero, t5, s3
                  c.andi     a5, -1
                  csrrc      s7, 0x340, a5
                  lw         s11, 4(sp)
                  c.or       a3, a5
                  c.nop
                  srai       s7, s9, 13
                  addi       sp, sp, 64
                  fence
1842:             c.jr x27
sub_1:            addi       sp, sp, -24
                  fence.i
                  c.srai     a2, 7
                  sw         s11, 4(sp)
                  addi       t5, t4, -1011
                  la         a1, region_2+5536 #start load_store_instr_stream_1
                  la         s6, region_1+1922 #start load_store_instr_stream_2
                  lbu        s8, -31(s6)
                  la         s5, region_3+449 #start load_store_instr_stream_0
                  lbu        a6, -3(a1)
                  lw         a7, 34(s6)
                  sb         s7, -5(a1)
                  sh         a5, -6(a1)
                  lb         s11, 4(a1)
                  lb         a2, 6(s5)
                  lhu        a5, 13(s5)
                  lb         s10, 5(s5)
                  sb         s7, 9(s5)
                  sb         a5, -8(s5)
                  lh         t4, 52(s6)
                  lbu        a4, 6(s6)
                  lhu        ra, -12(a1) #end load_store_instr_stream_1
                  sb         t6, 49(s6)
                  lh         s10, 9(s5)
                  sb         s7, 4(s5)
                  sh         s4, -7(s5)
                  sb         t2, 39(s6) #end load_store_instr_stream_2
                  lbu        t0, 16(s5) #end load_store_instr_stream_0
sub_1_13:         jal        s11, 2f
0:                c.j        5f
1:                c.j        8f
2:                c.jal      11f
3:                jal        a4, 7f
4:                c.jal      9f
5:                c.jal      4b
6:                jal        ra, 12f
7:                c.j        1b
8:                c.j        10f
9:                c.j        6b
10:               c.j        0b
11:               jal        s10, 3b
12:               csrrsi     a5, 0x340, 23
                  la         t4, region_1+6070 #start riscv_hazard_instr_stream_1
                  csrrsi     a2, 0x340, 4
                  c.andi     a2, -1
                  lhu        s11, -36(t4)
                  lb         t5, -49(t4)
                  lb         t5, 53(t4)
                  lhu        s11, 20(t4)
                  sh         a2, -56(t4)
                  sll        a2, t6, a2
                  sb         s11, -31(t4)
                  sll        a7, t6, s0
                  lh         t5, 50(t4)
                  ori        a2, a7, -1001
                  lbu        a7, -11(t4)
                  lb         t6, 45(t4)
                  sh         s0, -22(t4)
                  sb         a2, 51(t4)
                  c.andi     a2, -1
                  sb         a2, 13(t4)
                  c.or       s0, s0
                  slli       s0, s11, 26
                  lh         t6, -46(t4)
                  slli       s11, s11, 4
                  c.lui      s0, 1
                  lbu        t5, 25(t4)
                  rem        a7, s0, a7
                  sw         t6, 50(t4)
                  lbu        t6, 40(t4)
                  csrrw      a7, 0x340, a7
                  c.nop
                  sub        a2, a7, t5
                  lb         t5, 41(t4)
                  lb         a7, 55(t4)
                  sb         s11, 34(t4)
                  lb         t5, -17(t4)
                  lw         t6, -6(t4)
                  lhu        s11, 40(t4)
                  sh         a2, 36(t4)
                  slli       t5, a2, 22
                  lb         t6, -2(t4)
                  sb         s0, -59(t4)
                  mul        a2, a7, s11
                  lb         a7, 3(t4)
                  sb         s0, -11(t4)
                  sb         t5, -37(t4) #end riscv_hazard_instr_stream_1
                  la         s5, region_4+335 #start load_store_instr_stream_1
                  la         s9, region_0+2139 #start load_store_instr_stream_0
                  sb         gp, -241(s5)
                  sb         a0, 50(s5)
                  lbu        s3, 68(s5)
                  lbu        s1, -160(s5)
                  lhu        s10, 795(s9)
                  sb         a3, 1232(s9)
                  lw         s0, 161(s5)
                  sb         t0, -1636(s9)
                  sh         t3, -1453(s9)
                  sb         a7, 34(s5)
                  lb         s10, -217(s5)
                  lbu        a7, 4(s5)
                  sb         t4, -1726(s9)
                  lb         a1, 346(s9)
                  lb         ra, 13(s5) #end load_store_instr_stream_1
                  sb         s0, 1714(s9) #end load_store_instr_stream_0
                  la         s7, region_4+1720 #start load_store_instr_stream_3
                  la         s5, region_4+1979 #start load_store_instr_stream_0
                  lb         s6, -47(s7)
                  la         s4, region_4+198 #start load_store_instr_stream_2
                  lb         s0, 23(s7)
                  la         a7, region_4+35 #start load_store_instr_stream_4
                  lw         t6, -19(s5)
                  lb         t4, -10(a7)
                  lb         t5, 63(s7)
                  lb         a2, 48(s5)
                  lbu        s11, 54(s5)
                  lbu        a3, 12(a7)
                  sw         tp, 1678(s4)
                  lb         s2, -23(s5)
                  sb         s7, 8(s5)
                  lhu        s10, -5(a7)
                  sb         tp, 1533(s4)
                  lb         a0, 2(a7)
                  lhu        t3, 7(a7)
                  la         a5, region_4+2599 #start load_store_instr_stream_1
                  lb         s1, 4(a7)
                  sb         a3, -26(a5)
                  sb         t0, 42(s5)
                  lbu        s11, 484(s4)
                  lb         ra, 12(a5)
                  lb         t1, 44(s5)
                  lbu        a4, 10(a5)
                  lb         a2, 1207(s4)
                  sb         t3, 58(a5)
                  lbu        s1, 56(s5)
                  lb         a0, 20(a5)
                  lh         a0, -1(a7)
                  lhu        s9, -17(a5) #end load_store_instr_stream_1
                  lb         s11, 16(a7)
                  sb         s2, -15(s7)
                  sb         tp, 3(a7) #end load_store_instr_stream_4
                  sb         t4, 1261(s4) #end load_store_instr_stream_2
                  lw         t6, 28(s7)
                  lh         t3, 30(s7) #end load_store_instr_stream_3
                  lbu        t0, -56(s5) #end load_store_instr_stream_0
                  la         s1, region_4+264 #start riscv_hazard_instr_stream_8
                  sh         t5, 1644(s1)
                  div        a2, s9, s0
                  lb         t5, -105(s1)
                  lh         t5, 1704(s1)
                  sb         a3, 635(s1)
                  sh         s9, 146(s1)
                  sb         t5, 1518(s1)
                  sh         s0, 1268(s1)
                  c.mv       t5, s2
                  lbu        t5, 551(s1)
                  sb         a2, 1551(s1)
                  andi       a2, s9, -347
                  lb         s9, 1517(s1)
                  fence
                  sb         t5, -222(s1)
                  csrrci     s0, 0x340, 15
                  sltiu      t5, t5, 51
                  auipc      t5, 1009715
                  nop
                  div        s0, s9, s9
                  csrrci     a3, 0x340, 1
                  xori       s0, a3, 497
                  sb         s0, -181(s1)
                  lb         a3, 298(s1)
                  xor        s0, s9, a2
                  nop
                  lbu        s2, 527(s1)
                  c.srli     a3, 29
                  csrrsi     s0, 0x340, 31
                  csrrw      s0, 0x340, a2
                  div        t5, s2, a2
                  sh         a2, 1206(s1)
                  ori        s0, s0, -229
                  lbu        a3, -63(s1)
                  sb         a2, 845(s1)
                  lbu        s0, 2046(s1) #end riscv_hazard_instr_stream_8
sub_1_18:         jal        s11, 8f
0:                jal        tp, 3f
1:                jal        t1, 9f
2:                c.jal      6f
3:                jal        a0, 13f
4:                c.j        11f
5:                c.jal      10f
6:                jal        s10, 7f
7:                jal        ra, 5b
8:                c.j        12f
9:                c.j        4b
10:               c.j        0b
11:               c.j        2b
12:               c.jal      1b
13:               slti       a7, gp, -142
                  la         a4, region_0+2572 #start load_store_instr_stream_1
                  la         t1, region_0+287 #start load_store_instr_stream_2
                  la         a3, region_0+1660 #start load_store_instr_stream_4
                  la         s0, region_0+312 #start load_store_instr_stream_0
                  lbu        s5, 217(a4)
                  lbu        s8, 2017(a3)
                  lb         s4, 102(a4)
                  c.sw       a4, 72(a4)
                  sh         s7, -235(t1)
                  lb         s10, -6(s0)
                  lbu        a0, -1173(a3)
                  la         s7, region_0+872 #start load_store_instr_stream_3
                  lw         zero, 133(t1)
                  sb         s10, -12(s7)
                  sb         t4, -1(a4)
                  lh         t5, -12(s0)
                  lb         ra, -186(t1)
                  lhu        s10, -16(s7)
                  lbu        s3, -625(a3)
                  sw         a1, 0(s7)
                  lhu        s5, -158(a4)
                  lb         tp, 5(s7)
                  sb         s0, 236(t1)
                  sb         s9, 6(s0)
                  lbu        s9, -1022(a3)
                  lbu        t5, -57(a4)
                  sh         s5, -16(s7)
                  lbu        ra, -150(t1)
                  lb         a1, -9(s0)
                  lb         a2, 15(s7)
                  sb         a4, -15(s7)
                  sb         t6, -963(a3)
                  lh         t6, 217(t1)
                  sb         s9, -10(s7)
                  lbu        s4, -734(a3)
                  sb         a0, -191(a4) #end load_store_instr_stream_1
                  lbu        a7, 5(s7) #end load_store_instr_stream_3
                  lb         s11, 84(t1) #end load_store_instr_stream_2
                  sb         a2, -373(a3) #end load_store_instr_stream_4
                  lb         a1, -15(s0) #end load_store_instr_stream_0
                  la         a6, region_4+3195 #start riscv_load_store_rand_instr_stream_6
                  csrrwi     t1, 0x340, 26
                  sll        s0, s1, gp
                  xor        s4, t6, gp
                  sh         s8, -93(a6)
                  c.xor      a3, a2
                  srai       zero, a6, 30
                  addi       s9, t6, 827
                  lhu        t3, -193(a6)
                  sb         s0, -95(a6)
                  lbu        s5, -111(a6)
                  lui        s7, 688343
                  lbu        s3, 74(a6)
                  sll        s11, t6, s4
                  sb         t3, -162(a6)
                  div        s10, sp, t3
                  slt        t1, t3, zero
                  lb         t3, 52(a6)
                  lbu        ra, -7(a6)
                  lb         t5, 243(a6)
                  lbu        s3, -136(a6)
                  sb         t4, -86(a6)
                  sltiu      t5, a1, -676
                  lh         s3, 125(a6)
                  c.lui      a4, 29
                  divu       s2, s1, t3
                  lbu        a0, -148(a6)
                  sll        a3, s5, t3
                  rem        a4, s3, s2
                  lhu        a5, 161(a6)
                  c.addi     a3, 7
                  lb         ra, 128(a6)
                  sb         a3, -192(a6)
                  auipc      t5, 423399
                  sb         s5, -44(a6)
                  divu       t3, zero, a3
                  c.or       a4, a0
                  sltiu      t4, a0, -173
                  lb         t4, -222(a6)
                  lhu        tp, -231(a6)
                  lbu        s5, -183(a6)
                  lbu        a7, -150(a6)
                  lb         s6, 72(a6)
                  lbu        s9, -85(a6)
                  nop
                  c.andi     a1, 1
                  addi       ra, s11, -956
                  c.or       a2, a4
                  lh         s10, -15(a6)
                  addi       a2, ra, 974
                  c.and      s0, a3
                  srli       t0, s9, 12
                  csrrwi     t6, 0x340, 1
                  lb         zero, -170(a6) #end riscv_load_store_rand_instr_stream_6
                  addi       a0, zero, 8 #init loop 1 counter
                  xor        s10, s1, t1
                  xori       t3, a5, -895
                  addi       zero, zero, 0 #init loop 1 limit
                  csrrsi     t6, 0x340, 14
                  c.mv       s6, a4
                  c.sub      a5, a3
                  rem        s4, a0, sp
sub_1_48_1_t:     sub        s5, s2, t1
                  addi       a0, a0, -2 #update loop 1 counter
                  c.mv       a7, t1
                  srai       a3, zero, 24
                  addi       a1, zero, 9 #init loop 0 counter
                  c.mv       tp, s10
                  mulhu      s5, s1, a5
                  c.sub      a4, a4
                  ori        tp, s0, 174
                  mulhu      s9, a5, s7
                  xor        s7, t3, s10
                  csrrs      t1, 0x340, t2
                  addi       t5, zero, 9 #init loop 0 limit
                  fence
sub_1_48_0_t:     add        s9, s1, s5
                  addi       a1, a1, -5 #update loop 0 counter
                  mulh       s5, t0, gp
                  bgeu       a1, t5, sub_1_48_0_t #branch for loop 0
                  c.addi     t0, 17
                  srl        s9, t2, s8
                  c.beqz     a0, sub_1_48_1_t #branch for loop 1
                  csrrci     s6, 0x340, 1
                  la         s9, region_1+6198 #start load_store_instr_stream_2
                  la         s0, region_1+11788 #start load_store_instr_stream_3
                  la         s10, region_1+5212 #start load_store_instr_stream_1
                  lb         a0, 239(s0)
                  lb         a0, 407(s10)
                  la         t6, region_1+4507 #start load_store_instr_stream_0
                  lbu        tp, -870(s10)
                  sh         t1, -2(s0)
                  sb         a6, -1973(s9)
                  lb         a4, -185(t6)
                  sb         ra, 20(s9)
                  lbu        s4, -1590(t6)
                  lbu        a1, -930(t6)
                  sb         t6, 916(s9)
                  lb         a2, -182(s10)
                  lb         s4, 43(s0)
                  lh         a3, -64(s9)
                  lbu        s3, 260(t6)
                  sh         s2, -2034(s9)
                  lbu        s8, 1687(t6)
                  sh         a7, 252(s0)
                  sh         s9, -892(s9)
                  lb         s1, 222(s0)
                  sb         s10, 1482(t6)
                  lbu        a1, -217(s0)
                  lh         s3, 1296(s9)
                  lbu        a5, 969(s10)
                  lb         t5, 383(s9) #end load_store_instr_stream_2
                  lb         t1, 167(s0) #end load_store_instr_stream_3
                  sb         s0, 1(s10) #end load_store_instr_stream_1
                  lb         a7, 420(t6) #end load_store_instr_stream_0
                  la         s8, region_3+401 #start riscv_hazard_instr_stream_7
                  sll        a5, a7, t6
                  lb         a7, 62(s8)
                  c.andi     a3, -1
                  csrrsi     a5, 0x340, 7
                  c.and      a5, a5
                  lb         a3, -19(s8)
                  lb         a3, -26(s8)
                  csrrs      a3, 0x340, a7
                  csrrci     a7, 0x340, 10
                  csrrci     a7, 0x340, 7
                  sb         a7, -208(s8)
                  div        s7, s7, s7
                  div        t6, a3, t6
                  sb         a3, -110(s8)
                  lb         t3, -106(s8)
                  and        s7, t6, t6
                  lbu        a3, 92(s8)
                  lbu        t3, -119(s8)
                  slli       t6, a3, 14
                  sb         t6, -216(s8)
                  lbu        t3, -42(s8)
                  c.srli     a5, 16
                  csrrsi     s7, 0x340, 25
                  srai       s7, a7, 18
                  c.slli     t6, 15
                  xori       s7, s7, -358
                  lh         t6, -67(s8)
                  csrrwi     a3, 0x340, 4
                  lb         a5, 94(s8)
                  c.slli     t6, 30
                  sh         s7, -235(s8)
                  lbu        a5, -90(s8)
                  c.lui      a3, 8
                  lbu        a5, 43(s8)
                  c.nop
                  csrrsi     t6, 0x340, 1
                  lb         t6, 103(s8)
                  sb         t3, -215(s8)
                  lbu        a5, -177(s8)
                  c.srai     a3, 17
                  lw         s7, -189(s8)
                  lhu        a3, 81(s8)
                  lb         s7, 50(s8)
                  lhu        a5, -9(s8)
                  csrrsi     t6, 0x340, 13
                  c.or       a3, a5
                  sltu       a3, t3, t6
                  lbu        a5, -29(s8)
                  divu       t3, t6, a5
                  lbu        a3, -222(s8)
                  lhu        a5, 27(s8) #end riscv_hazard_instr_stream_7
                  la         s7, region_4+1694 #start riscv_load_store_rand_instr_stream_1
                  lb         t1, -304(s7)
                  mulh       a5, gp, t6
                  csrrw      ra, 0x340, t5
                  csrrsi     a2, 0x340, 31
                  mul        s0, t3, a0
                  c.sub      s1, s1
                  sb         a0, 431(s7)
                  mulhsu     t5, s8, a5
                  srl        s0, t5, t0
                  nop
                  lb         s4, 335(s7)
                  srli       s11, s0, 17
                  sb         s3, 1192(s7)
                  c.and      a1, s0
                  csrrs      s5, 0x340, gp
                  ori        s5, s6, -787
                  sra        s9, s7, s11
                  sra        t0, s9, s8
                  or         a4, a2, s10
                  c.li       s6, 31
                  divu       s8, s3, s6
                  csrrsi     s4, 0x340, 19
                  lhu        a4, 1124(s7)
                  c.srli     a5, 2
                  c.srli     a5, 6
                  c.srai     s1, 20
                  sb         sp, -143(s7)
                  c.mv       a6, s2
                  lw         tp, 1566(s7)
                  lbu        s6, -931(s7)
                  lbu        a1, 1238(s7)
                  sb         a0, 1281(s7)
                  lb         a0, 1636(s7)
                  lb         tp, -1085(s7) #end riscv_load_store_rand_instr_stream_1
                  addi       t0, zero, -6 #init loop 0 counter
                  mulh       a1, a6, a2
                  c.and      a5, a0
                  addi       s11, zero, 3 #init loop 0 limit
                  c.xor      a2, s0
sub_1_47_0_t:     c.sub      a4, a4
                  addi       t0, t0, 4 #update loop 0 counter
                  srl        s1, gp, s8
                  csrrci     a1, 0x340, 31
                  srai       t5, sp, 5
                  mulh       a6, t3, a4
                  fence.i
                  c.srai     a4, 28
                  bltu       t0, s11, sub_1_47_0_t #branch for loop 0
                  ori        s10, ra, -1023
                  la         t4, region_3+396 #start riscv_hazard_instr_stream_10
                  sltu       t6, a1, a1
                  lb         a1, -382(t4)
                  lb         t1, -138(t4)
                  lbu        t6, -333(t4)
                  lw         t1, 44(t4)
                  lbu        s5, -35(t4)
                  addi       s6, t6, 985
                  lh         s6, -308(t4)
                  lh         a1, -374(t4)
                  sb         s5, -120(t4)
                  lb         s7, -129(t4)
                  c.lui      s7, 26
                  c.addi     s7, 3
                  lb         t1, -257(t4)
                  c.xor      a1, a1
                  sra        s5, t1, s5
                  sb         s6, -335(t4)
                  c.andi     a1, -1
                  sh         a1, -26(t4)
                  c.li       t1, 1
                  ori        t1, a1, -907
                  lbu        t6, -112(t4)
                  lb         a1, -44(t4)
                  c.or       a1, a1
                  sb         s6, -305(t4)
                  lhu        s5, 58(t4)
                  sra        a1, s6, t6
                  csrrc      t1, 0x340, t1
                  sltiu      a1, s6, -673
                  c.li       s7, 4
                  lbu        a1, -174(t4)
                  lw         a1, -104(t4)
                  sltu       s5, t6, s6
                  lb         s7, 65(t4)
                  lui        s6, 463967
                  c.sub      a1, a1
                  c.slli     s6, 8
                  sb         s7, 103(t4)
                  c.srli     a1, 21
                  nop
                  lhu        s7, -26(t4)
                  nop
                  lbu        s7, -85(t4)
                  c.nop
                  srl        t6, a1, a1
                  sb         t1, -305(t4)
                  csrrc      s5, 0x340, t1
                  lhu        s6, -96(t4)
                  srai       s5, s5, 30
                  sb         a1, -365(t4)
                  fence
                  lbu        s6, -395(t4)
                  sb         s7, -207(t4)
                  c.sub      a1, a1
                  srai       t1, s5, 6
                  lb         t1, -85(t4) #end riscv_hazard_instr_stream_10
                  la         t5, region_0+734 #start riscv_load_store_rand_instr_stream_5
                  lw         tp, -14(t5)
                  sh         t3, -10(t5)
                  add        s10, a7, s7
                  sb         s11, 13(t5)
                  sh         a6, -16(t5)
                  divu       s2, s4, t5
                  c.or       a0, s0
                  lb         a5, 0(t5)
                  sh         a5, -14(t5)
                  c.srai     s1, 26
                  sb         s4, 15(t5)
                  lh         s11, -10(t5)
                  fence
                  lb         a1, 16(t5)
                  lbu        s8, 3(t5)
                  lbu        s0, -14(t5)
                  lbu        a4, 9(t5)
                  lhu        s1, 16(t5)
                  lb         a3, 3(t5)
                  sb         s8, -12(t5)
                  lb         a7, -5(t5)
                  sb         s5, -8(t5)
                  sb         gp, 2(t5)
                  lbu        s8, -13(t5)
                  sh         s6, 0(t5)
                  sra        a1, a4, a1
                  lhu        t1, -16(t5)
                  mul        t0, s2, a0
                  sb         a0, 8(t5)
                  and        s8, a3, t5
                  lbu        s0, -9(t5)
                  sub        t0, a0, s10
                  c.lui      s9, 16
                  lb         s4, -2(t5)
                  addi       a2, t0, 942
                  lhu        t1, -16(t5) #end riscv_load_store_rand_instr_stream_5
                  addi       a1, zero, -5 #init loop 1 counter
                  addi       zero, zero, 0 #init loop 1 limit
sub_1_44_1_t:     c.xor      s0, a0
                  addi       a1, a1, 5 #update loop 1 counter
                  srl        a5, sp, t5
                  c.slli     s3, 18
                  addi       t1, zero, 1 #init loop 0 counter
                  sltu       s10, a3, ra
                  csrrc      s11, 0x340, s1
                  addi       t0, zero, 11 #init loop 0 limit
                  c.srai     a4, 24
sub_1_44_0_t:     auipc      s10, 381293
                  csrrw      tp, 0x340, a5
                  and        t3, ra, s9
                  addi       t1, t1, 1 #update loop 0 counter
                  blt        t1, t0, sub_1_44_0_t #branch for loop 0
                  div        a4, tp, s2
                  c.bnez     a1, sub_1_44_1_t #branch for loop 1
                  sltu       a5, a5, s5
                  la         a2, region_0+2573 #start riscv_load_store_rand_instr_stream_8
                  sb         t4, -189(a2)
                  lb         s9, -72(a2)
                  sltiu      ra, t0, 260
                  c.srli     a0, 16
                  lbu        a6, 42(a2)
                  lb         s9, -48(a2)
                  sb         sp, 178(a2)
                  lhu        t6, 73(a2)
                  csrrsi     s6, 0x340, 26
                  div        s9, a7, s10
                  div        a4, tp, a4
                  lh         s8, 31(a2)
                  lbu        s9, -45(a2)
                  c.sub      a4, a3
                  sb         a2, 28(a2)
                  lbu        s11, 32(a2)
                  c.sub      a0, s1
                  lh         a7, -251(a2)
                  sb         s5, 176(a2)
                  andi       t6, a5, 921
                  fence
                  xori       s3, t4, 421
                  lbu        t3, -252(a2)
                  lb         a3, 100(a2)
                  fence
                  sw         s9, -73(a2)
                  fence
                  lw         s6, 179(a2)
                  slli       tp, t6, 23
                  nop
                  srli       a1, s4, 28
                  lhu        s10, 87(a2)
                  csrrwi     s1, 0x340, 4
                  lh         tp, -171(a2)
                  sb         s7, 105(a2)
                  slt        s11, t4, a6
                  csrrs      s10, 0x340, s2
                  srai       tp, gp, 23
                  lw         s8, 103(a2)
                  sll        s11, a5, s8
                  srl        a5, s3, s4
                  sb         sp, -228(a2)
                  c.xor      a5, a1
                  lb         s2, -108(a2)
                  srl        s5, a5, a5
                  csrrwi     ra, 0x340, 27
                  lh         a6, 161(a2)
                  lbu        s3, 29(a2)
                  lw         s10, 87(a2)
                  fence.i
                  xori       s5, a1, -578
                  csrrsi     s2, 0x340, 2
                  srai       s2, s7, 11
                  sw         s0, 251(a2)
                  lb         zero, -22(a2)
                  c.or       a0, s0
                  lbu        t1, 198(a2)
                  lb         s2, -212(a2)
                  slli       t0, s3, 4
                  sh         s0, 245(a2) #end riscv_load_store_rand_instr_stream_8
                  la         tp, region_0+1070 #start load_store_instr_stream_0
                  sb         a5, -11(tp)
                  la         s1, region_0+532 #start load_store_instr_stream_1
                  la         t6, region_0+1201 #start load_store_instr_stream_2
                  la         s0, region_0+163 #start load_store_instr_stream_3
                  lb         s7, 542(s0)
                  lbu        s8, -135(s1)
                  lh         a0, 12(tp)
                  sb         a2, 1730(s0)
                  lbu        a1, 1454(s0)
                  lb         a0, 18(tp)
                  lbu        s6, -31(s1)
                  lbu        s8, 1189(s1)
                  lbu        t5, 10(t6)
                  lw         a5, -9(t6)
                  sh         s1, 1339(s0)
                  lbu        t4, 58(tp)
                  lb         s9, 31(tp)
                  lh         a0, -7(t6)
                  lb         t0, -22(tp)
                  sb         t2, 897(s1)
                  sb         a1, 3(t6)
                  lh         t0, -13(t6)
                  lbu        t5, -463(s1) #end load_store_instr_stream_1
                  sb         s11, -64(tp)
                  sb         s4, -4(t6) #end load_store_instr_stream_2
                  sb         zero, 399(s0) #end load_store_instr_stream_3
                  lh         a1, 44(tp) #end load_store_instr_stream_0
                  la         s5, region_0+1172 #start load_store_instr_stream_3
                  la         t3, region_0+2460 #start load_store_instr_stream_1
                  lh         a5, 28(s5)
                  la         s1, region_0+2024 #start load_store_instr_stream_2
                  la         t6, region_0+3704 #start load_store_instr_stream_0
                  sb         s9, -27(s5)
                  lb         tp, -552(t6)
                  la         t5, region_0+3668 #start load_store_instr_stream_4
                  lhu        a5, -1028(t6)
                  sb         a4, -1085(t3)
                  lw         ra, -1672(t3)
                  lb         a7, -674(t5)
                  lh         a3, -2016(t5)
                  lb         a6, -1035(t5)
                  lbu        s7, 191(s1)
                  lb         a2, -107(t6)
                  sh         s2, -98(s1)
                  sb         sp, 227(t3)
                  lbu        ra, 43(s5)
                  sb         t3, -246(t5)
                  sb         s2, 141(t5)
                  lhu        s2, 178(s1)
                  sh         tp, -1886(t6)
                  sb         s9, -167(t3)
                  lbu        a3, -1409(t6)
                  lb         s0, -827(t3)
                  lh         s2, -278(t6)
                  lbu        s3, 30(s5)
                  lb         a5, -1779(t5)
                  lbu        a7, 689(t3)
                  lbu        s10, -49(s5)
                  sb         tp, -1905(t3)
                  lhu        ra, -1862(t5)
                  lhu        s4, -222(s1)
                  lbu        t0, -553(t5) #end load_store_instr_stream_4
                  lbu        a0, -1135(t6)
                  sb         a3, -47(s5)
                  sb         s6, -61(s5)
                  lhu        s9, -1636(t3)
                  sh         a7, 1246(t3) #end load_store_instr_stream_1
                  lbu        s0, 135(s1) #end load_store_instr_stream_2
                  lb         s11, -55(s5) #end load_store_instr_stream_3
                  lhu        s2, -1164(t6) #end load_store_instr_stream_0
                  la         a6, region_4+1042 #start load_store_instr_stream_3
                  sb         t6, 13(a6)
                  la         s9, region_2+3529 #start load_store_instr_stream_1
                  sb         s3, 1(a6)
                  la         tp, region_1+184 #start load_store_instr_stream_2
                  la         a5, region_0+1779 #start load_store_instr_stream_0
                  sb         s6, 115(tp)
                  lb         s10, 1(s9)
                  sb         sp, -79(tp)
                  sb         a5, -33(s9)
                  lb         s6, -5(tp)
                  lh         a2, -29(a5)
                  lbu        s3, -103(tp)
                  lbu        s1, -47(a5)
                  lbu        t5, 13(a6)
                  lb         t4, 12(s9)
                  sb         t4, 37(s9)
                  lb         s8, -13(a6)
                  lb         ra, -46(s9)
                  sb         a0, -13(tp) #end load_store_instr_stream_2
                  lb         s4, 34(s9)
                  lhu        s6, -13(a5)
                  lbu        t4, -40(a5)
                  lw         a3, -21(s9)
                  sh         s7, -9(a5)
                  lb         ra, 4(s9)
                  sb         tp, -49(s9) #end load_store_instr_stream_1
                  lbu        a7, 11(a6)
                  lhu        s5, 35(a5)
                  lbu        a4, -8(a6) #end load_store_instr_stream_3
                  lb         s5, -9(a5) #end load_store_instr_stream_0
                  addi       a5, zero, -9 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
                  sll        s10, s9, ra
                  auipc      t4, 272048
sub_1_45_0_t:     mulh       a6, s4, a4
                  slti       t3, a4, -377
                  sub        ra, s7, a6
                  csrrsi     s3, 0x340, 26
                  slti       s1, t2, 259
                  add        s4, a1, gp
                  c.nop
                  addi       a5, a5, 9 #update loop 0 counter
                  sra        s9, t1, sp
                  c.bnez     a5, sub_1_45_0_t #branch for loop 0
                  mul        ra, a1, a4
sub_1_21:         jal        s11, 3f
0:                c.j        13f
1:                c.j        0b
2:                c.j        1b
3:                c.j        9f
4:                c.j        6f
5:                jal        s1, 2b
6:                c.j        12f
7:                c.j        8f
8:                c.jal      5b
9:                c.j        10f
10:               c.jal      11f
11:               c.jal      4b
12:               jal        ra, 7b
13:               csrrw      s11, 0x340, s7
                  la         s9, region_2+2931 #start riscv_hazard_instr_stream_2
                  c.srli     a3, 21
                  mulhsu     a6, a3, tp
                  lbu        a3, -60(s9)
                  c.srli     a3, 23
                  slt        t3, a3, a6
                  c.or       a3, a3
                  c.addi     a3, 15
                  lbu        a3, -52(s9)
                  ori        t3, a3, 180
                  sw         tp, 33(s9)
                  csrrsi     t3, 0x340, 17
                  xor        s7, a3, t3
                  lb         s7, -58(s9)
                  c.addi     s7, -1
                  sb         t3, -64(s9)
                  sltu       s7, t3, tp
                  slt        t3, a3, s7
                  c.lui      a4, 20
                  sltu       a4, s7, tp
                  sb         tp, -28(s9)
                  or         a6, a6, t3
                  lb         a6, 26(s9)
                  srli       t3, tp, 31
                  lbu        a3, 35(s9)
                  divu       tp, a3, a3
                  sb         t3, 6(s9)
                  sltiu      a6, t3, -6
                  sb         t3, -44(s9)
                  sb         s7, -38(s9)
                  c.addi     a3, -1
                  lhu        a4, 39(s9)
                  divu       a3, s7, a3
                  sw         t3, -23(s9)
                  lbu        a4, -49(s9)
                  sw         a3, -59(s9)
                  c.andi     a4, -1
                  remu       t3, tp, a4
                  slli       a3, t3, 4
                  lbu        s7, -30(s9)
                  lh         t3, -17(s9)
                  c.add      s7, t3
                  and        tp, a6, t3
                  lhu        a3, 33(s9)
                  sw         t3, -55(s9)
                  lbu        a4, 60(s9)
                  slli       tp, a3, 12
                  lbu        t3, -6(s9) #end riscv_hazard_instr_stream_2
                  la         t6, region_4+2128 #start riscv_load_store_rand_instr_stream_9
                  lbu        s7, 15(t6)
                  c.xor      a0, a5
                  sb         s6, 3(t6)
                  lui        a6, 668853
                  nop
                  lbu        a4, -15(t6)
                  sb         t1, 13(t6)
                  lb         a4, -12(t6)
                  mulh       s6, t4, s0
                  sra        s6, s4, a7
                  lbu        s10, 13(t6)
                  lbu        s6, 6(t6)
                  lb         s0, 8(t6)
                  fence
                  c.nop
                  lbu        s10, -10(t6)
                  c.or       s1, s1
                  div        s4, a2, t3
                  csrrc      s9, 0x340, s5
                  csrrs      t3, 0x340, t5
                  mul        s5, s11, s5
                  csrrsi     ra, 0x340, 14
                  lbu        t5, -10(t6)
                  sub        t1, sp, s4
                  lh         s3, -2(t6)
                  xor        a3, a7, s11
                  c.add      t1, s9
                  lb         a1, -7(t6)
                  csrrs      s4, 0x340, a3
                  lh         t4, -2(t6)
                  sb         gp, 4(t6)
                  lbu        s8, 13(t6)
                  div        s0, t0, tp
                  lbu        s9, 5(t6)
                  ori        a7, a1, -795
                  fence.i
                  sw         t1, -16(t6)
                  csrrs      s4, 0x340, sp
                  slli       s3, gp, 23
                  addi       s9, t4, 525
                  sltiu      a5, s9, 380
                  or         t0, a3, ra
                  rem        a7, tp, a5
                  xor        s4, s2, ra
                  lbu        a7, -13(t6)
                  sh         a1, -14(t6)
                  slt        a1, a2, s1
                  fence
                  lbu        t4, 14(t6)
                  addi       a1, sp, 730
                  lw         t4, -8(t6) #end riscv_load_store_rand_instr_stream_9
                  la         s5, region_0+1302 #start load_store_instr_stream_1
                  lb         t0, -65(s5)
                  la         s6, region_0+2004 #start load_store_instr_stream_2
                  la         t6, region_0+2507 #start load_store_instr_stream_0
                  lb         s4, -11(s5)
                  lb         zero, -236(t6)
                  lbu        zero, 385(s6)
                  lbu        t1, 657(s6)
                  lbu        s9, 95(s5)
                  sb         a3, 221(s5)
                  lb         a6, -839(s6)
                  lb         t3, -475(t6)
                  lw         a7, -1471(t6)
                  sh         s11, -530(s6)
                  sh         t5, 168(s5)
                  lb         a0, -1593(s6)
                  lbu        s8, 1404(s6)
                  lb         a3, -1078(t6)
                  lh         s8, -1820(s6)
                  lb         s11, -93(s5)
                  sb         s8, 1661(s6)
                  sw         s1, 13(t6)
                  lb         s1, 996(s6) #end load_store_instr_stream_2
                  lbu        ra, -71(s5)
                  lbu        a6, -121(s5) #end load_store_instr_stream_1
                  sh         a0, 1073(t6) #end load_store_instr_stream_0
                  la         a6, region_3+112 #start load_store_instr_stream_0
                  la         s1, region_3+7 #start load_store_instr_stream_1
                  sh         s4, -56(a6)
                  lbu        a4, 80(s1)
                  sb         a1, 6(s1)
                  lb         s8, 6(a6)
                  lb         s5, 70(s1)
                  lhu        zero, 99(s1)
                  lb         s5, -55(a6)
                  lbu        t4, -57(a6)
                  sb         gp, 221(s1) #end load_store_instr_stream_1
                  lbu        a3, 63(a6) #end load_store_instr_stream_0
                  la         a2, region_3+474 #start load_store_instr_stream_0
                  la         a0, region_3+338 #start load_store_instr_stream_1
                  lhu        t6, -106(a0)
                  la         t5, region_3+436 #start load_store_instr_stream_2
                  lb         s11, -31(a2)
                  lb         zero, -237(t5)
                  lhu        s5, 14(a2)
                  sh         a3, 28(a2)
                  sb         a0, -59(a2)
                  sb         gp, -309(t5)
                  lb         s10, -16(t5)
                  lhu        t4, 16(t5)
                  sb         s4, -26(a2)
                  lbu        t3, -200(a0)
                  sb         t5, 13(a2)
                  lb         a1, -29(a0)
                  sb         a1, -402(t5) #end load_store_instr_stream_2
                  sb         t0, -335(a0)
                  lbu        s1, 27(a2)
                  sb         t5, -173(a0) #end load_store_instr_stream_1
                  sb         s9, -4(a2)
                  sb         zero, -47(a2) #end load_store_instr_stream_0
                  la         s1, region_1+12399 #start load_store_instr_stream_1
                  lbu        a0, 12(s1)
                  la         s2, region_2+4729 #start load_store_instr_stream_2
                  lw         t0, -1(s2)
                  la         s8, region_4+3639 #start load_store_instr_stream_0
                  lb         a0, -45(s1)
                  lh         s10, -3(s2)
                  sh         s10, -217(s8)
                  lbu        a6, -4(s2)
                  lh         a6, 3(s2)
                  lbu        a3, -925(s8)
                  sb         t0, 16(s1)
                  sb         s4, -717(s8)
                  lb         a6, 6(s8)
                  lb         a6, 40(s1)
                  lb         s6, 11(s2)
                  sb         s8, -44(s1)
                  lhu        t6, -7(s2)
                  lbu        t3, 31(s1)
                  lhu        s7, 3(s1)
                  sw         a2, -1623(s8)
                  lb         t4, -5(s2) #end load_store_instr_stream_2
                  sh         a0, 15(s1)
                  lb         a0, -39(s1) #end load_store_instr_stream_1
                  sb         t4, -1540(s8) #end load_store_instr_stream_0
sub_1_15:         jal        s11, 21f
0:                c.jal      25f
1:                jal        ra, 16f
2:                jal        t5, 28f
3:                c.j        0b
4:                c.j        5f
5:                jal        t1, 7f
6:                jal        ra, 4b
7:                c.jal      11f
8:                c.j        18f
9:                c.j        17f
10:               jal        a4, 19f
11:               jal        ra, 9b
12:               c.j        13f
13:               c.j        6b
14:               jal        tp, 29f
15:               jal        ra, 12b
16:               c.jal      27f
17:               jal        a7, 14b
18:               jal        t1, 26f
19:               jal        ra, 23f
20:               c.jal      24f
21:               c.jal      10b
22:               c.j        15b
23:               c.j        20b
24:               c.jal      8b
25:               c.j        1b
26:               c.jal      3b
27:               c.j        2b
28:               c.j        22b
29:               csrrwi     s0, 0x340, 17
                  la         s6, region_4+3972 #start riscv_load_store_rand_instr_stream_4
                  lb         s5, -197(s6)
                  c.nop
                  csrrci     ra, 0x340, 6
                  auipc      a5, 39641
                  lhu        zero, -452(s6)
                  c.srai     a3, 11
                  sub        a3, s11, s1
                  c.xor      a1, s1
                  rem        s0, t3, s1
                  lh         s1, -1228(s6)
                  lb         a4, -1412(s6)
                  lb         a5, -565(s6)
                  srli       t0, t6, 15
                  lb         a3, -2045(s6)
                  lbu        s4, -695(s6)
                  sub        a0, s10, a0
                  srai       zero, s8, 17
                  xor        a2, t3, s6
                  c.sub      s1, a0
                  c.srli     a2, 13
                  lbu        s4, -279(s6)
                  addi       s0, a6, 27
                  srli       a7, t0, 16
                  csrrc      ra, 0x340, s8
                  lb         a6, -1213(s6)
                  auipc      t0, 813523
                  sb         a2, -1354(s6)
                  sb         t3, -533(s6)
                  rem        t4, a6, a2
                  c.slli     s8, 30
                  c.or       a5, a2
                  sh         t4, -624(s6)
                  sw         t4, -1220(s6)
                  and        s9, s4, a7
                  lb         t3, -574(s6)
                  auipc      t4, 802907
                  sb         a7, -1731(s6)
                  lui        t6, 196028
                  lbu        s2, -1285(s6) #end riscv_load_store_rand_instr_stream_4
                  la         a4, region_3+247 #start load_store_instr_stream_1
                  la         s0, region_3+431 #start load_store_instr_stream_0
                  lbu        a3, 133(a4)
                  la         s2, region_3+400 #start load_store_instr_stream_3
                  la         t0, region_3+199 #start load_store_instr_stream_4
                  lb         t3, 14(t0)
                  la         a1, region_3+126 #start load_store_instr_stream_2
                  sb         s0, 1(a4)
                  lbu        s9, 7(a1)
                  sw         t2, -99(s0)
                  lw         t4, -52(s2)
                  lb         t5, 195(a4)
                  lb         s4, -255(s2)
                  lb         s8, -17(a1)
                  lb         s9, -183(t0)
                  lhu        s11, -227(a4)
                  lb         a2, -112(s2)
                  sw         tp, -14(a1)
                  lb         s10, 31(a1)
                  sh         a0, -37(t0)
                  sb         s1, -56(s0)
                  lw         tp, -187(t0)
                  lbu        t4, -47(s2)
                  lb         ra, -378(s0)
                  lhu        a7, -85(t0)
                  lbu        t5, -51(a1)
                  lh         t4, -309(s0)
                  sw         zero, -140(s2)
                  sh         s7, 229(a4)
                  sb         s4, 16(t0)
                  lb         t3, -55(t0)
                  lw         a3, -199(s0)
                  lh         a0, -30(a1)
                  sb         a3, -12(t0)
                  lh         t6, 17(t0) #end load_store_instr_stream_4
                  lbu        s9, 6(s0)
                  lb         s11, -198(s0)
                  sb         s3, -109(s2)
                  lb         s8, 40(a1) #end load_store_instr_stream_2
                  sb         s10, -184(s0)
                  lb         t6, 66(a4) #end load_store_instr_stream_1
                  lh         s10, 102(s2) #end load_store_instr_stream_3
                  sb         zero, 41(s0) #end load_store_instr_stream_0
                  la         s6, region_4+2845 #start riscv_load_store_rand_instr_stream_10
                  c.xor      a3, s1
                  lbu        s9, 11(s6)
                  sh         s6, 7(s6)
                  sh         sp, 5(s6)
                  slti       s0, s9, -562
                  fence
                  sra        t4, a3, t3
                  xor        a1, s9, t5
                  c.xor      a1, a3
                  xori       s0, a6, -140
                  addi       t0, t6, -625
                  andi       a7, gp, 326
                  lhu        a7, -9(s6)
                  lb         s0, -16(s6)
                  sb         gp, 6(s6)
                  sb         t1, -2(s6)
                  lbu        a6, -8(s6)
                  nop
                  lbu        a6, -14(s6)
                  srl        s2, s4, a4
                  sb         t2, 4(s6)
                  or         a4, tp, t3
                  lb         a0, -7(s6)
                  rem        ra, t6, t4
                  csrrwi     t6, 0x340, 3
                  lb         a5, 3(s6)
                  lb         s0, 6(s6)
                  lbu        a5, -2(s6)
                  c.li       tp, 12
                  lbu        s1, -16(s6)
                  c.or       s1, a3
                  sb         s9, 2(s6)
                  sh         tp, 5(s6)
                  c.srli     a4, 9
                  sb         s1, 6(s6)
                  csrrwi     a1, 0x340, 18
                  c.andi     a4, -1
                  lbu        t6, 6(s6) #end riscv_load_store_rand_instr_stream_10
                  la         a5, region_1+2080 #start riscv_load_store_rand_instr_stream_3
                  sb         a7, 1233(a5)
                  sll        t4, a0, s3
                  csrrc      t0, 0x340, s0
                  csrrc      t4, 0x340, tp
                  sb         s6, 1437(a5)
                  lh         s11, 1538(a5)
                  sh         ra, -430(a5)
                  sh         a1, -516(a5)
                  div        s9, a4, s1
                  csrrwi     zero, 0x340, 17
                  sh         a1, 442(a5)
                  fence
                  csrrc      s5, 0x340, s2
                  lh         s8, 1980(a5)
                  sb         gp, 1073(a5)
                  lh         a3, 1134(a5)
                  sh         t1, -92(a5)
                  csrrwi     s3, 0x340, 20
                  sb         zero, 1901(a5)
                  c.xor      a4, a1
                  sb         t5, 1109(a5)
                  sb         a0, 1519(a5)
                  lbu        s11, -1495(a5)
                  divu       a1, t3, t3
                  lbu        s0, -1621(a5)
                  csrrc      s11, 0x340, t3
                  sb         a3, -279(a5)
                  lb         a1, 1491(a5)
                  xori       s10, a7, -76
                  lh         a7, -1778(a5)
                  lh         t3, 2038(a5)
                  lbu        a3, 1391(a5)
                  or         a1, a6, gp
                  lb         t1, 1509(a5)
                  sw         s3, -1424(a5) #end riscv_load_store_rand_instr_stream_3
sub_1_20:         jal        s11, 17f
0:                c.j        6f
1:                c.j        10f
2:                c.jal      23f
3:                c.jal      1b
4:                c.j        14f
5:                c.j        22f
6:                c.jal      3b
7:                c.j        20f
8:                c.j        18f
9:                jal        t1, 16f
10:               c.j        13f
11:               c.jal      15f
12:               c.j        11b
13:               jal        ra, 19f
14:               jal        t1, 21f
15:               jal        ra, 9b
16:               jal        ra, 0b
17:               jal        a1, 4b
18:               c.jal      2b
19:               jal        t1, 8b
20:               jal        ra, 12b
21:               c.jal      5b
22:               c.jal      7b
23:               c.li       a3, -1
                  la         s3, region_1+9136 #start riscv_hazard_instr_stream_4
                  lbu        t4, 93(s3)
                  div        s6, t4, t0
                  c.mv       a0, t4
                  lw         s6, -396(s3)
                  lbu        t5, -1231(s3)
                  c.addi     a0, 30
                  csrrw      s6, 0x340, s6
                  or         a0, s6, t5
                  addi       t3, t5, 466
                  sb         a0, -839(s3)
                  mul        a0, t4, t3
                  c.srli     a0, 20
                  lhu        t5, 2022(s3)
                  andi       a0, t3, -967
                  lbu        a0, 997(s3)
                  lb         t4, 455(s3)
                  c.nop
                  fence
                  rem        t0, t0, a0
                  csrrsi     t5, 0x340, 11
                  lb         t3, -49(s3)
                  sub        t4, t0, a0
                  slli       t3, t0, 17
                  lhu        t0, 416(s3)
                  fence.i
                  csrrw      t3, 0x340, t3
                  lui        t0, 413875
                  divu       t4, t3, t3
                  lb         t5, -1826(s3)
                  lh         t3, -1562(s3)
                  lbu        t5, -1706(s3)
                  lb         t5, -267(s3)
                  sb         t0, 1668(s3)
                  srli       t0, t0, 13
                  lb         t3, 1659(s3)
                  lbu        t5, 419(s3)
                  add        t5, t5, s6
                  csrrwi     a0, 0x340, 2
                  csrrsi     a0, 0x340, 21
                  lbu        t0, -1677(s3)
                  sltu       t4, a0, t5
                  xor        t0, t0, t3
                  lbu        t3, 1259(s3)
                  remu       t5, a0, t5
                  lbu        s6, -1653(s3)
                  xori       t3, t3, -390
                  lui        s6, 980241
                  sw         t3, -1476(s3) #end riscv_hazard_instr_stream_4
                  addi       s4, zero, 10 #init loop 1 counter
                  addi       a5, zero, 16 #init loop 1 limit
                  c.andi     a2, 25
sub_1_51_1_t:     sltiu      s11, s8, -930
                  fence.i
                  addi       s4, s4, 6 #update loop 1 counter
                  addi       a1, zero, -4 #init loop 0 counter
                  srai       s9, s11, 1
                  slli       a6, t6, 4
                  addi       zero, zero, 0 #init loop 0 limit
                  csrrs      t0, 0x340, s8
sub_1_51_0_t:     and        s3, t4, a6
                  slti       t3, t2, 536
                  addi       a1, a1, 4 #update loop 0 counter
                  c.bnez     a1, sub_1_51_0_t #branch for loop 0
                  c.xor      s1, a1
                  sra        t3, s9, a6
                  mulhu      t1, s1, zero
                  mulhu      ra, s6, t0
                  beq        s4, a5, sub_1_51_1_t #branch for loop 1
                  fence.i
sub_1_11:         jal        s11, 15f
0:                c.j        1f
1:                c.j        24f
2:                c.j        17f
3:                jal        t1, 6f
4:                jal        s3, 11f
5:                c.jal      3b
6:                c.j        22f
7:                c.j        4b
8:                c.j        12f
9:                c.j        23f
10:               jal        s6, 5b
11:               c.j        0b
12:               jal        s6, 13f
13:               c.jal      10b
14:               c.j        7b
15:               c.jal      16f
16:               jal        t1, 2b
17:               c.j        21f
18:               jal        t0, 19f
19:               c.jal      14b
20:               jal        t1, 8b
21:               jal        ra, 9b
22:               c.jal      18b
23:               c.jal      20b
24:               csrrs      t3, 0x340, a2
                  la         tp, region_1+4076 #start load_store_instr_stream_1
                  la         s5, region_3+479 #start load_store_instr_stream_2
                  la         a0, region_4+2674 #start load_store_instr_stream_3
                  sb         t2, -14(s5)
                  la         a7, region_2+3499 #start load_store_instr_stream_0
                  lbu        a1, 7(a0)
                  lb         s10, -14(s5)
                  lw         t5, 65(a7)
                  lb         s2, -13(s5)
                  lw         ra, 2(a0)
                  sw         s6, -6(a0)
                  lbu        t0, -1707(tp)
                  lbu        t4, -15(a0)
                  lb         t4, 1392(tp)
                  sb         sp, 14(a0)
                  lh         ra, -1924(tp)
                  lbu        a3, -8(s5)
                  lbu        s10, -5(a0)
                  sb         a6, -1734(tp)
                  lb         a4, -1(a0)
                  lbu        s0, 240(a7)
                  sh         s5, 237(a7)
                  lb         s7, -12(a0)
                  lh         s9, 1556(tp)
                  sw         t1, -7(s5)
                  sh         a1, -1492(tp)
                  sh         a1, 11(s5) #end load_store_instr_stream_2
                  sh         s5, 211(a7)
                  lb         s8, 5(a0)
                  lbu        s8, 377(tp)
                  sb         s3, 14(a0) #end load_store_instr_stream_3
                  lbu        zero, 221(tp)
                  lb         t6, 302(tp) #end load_store_instr_stream_1
                  lbu        s4, -106(a7) #end load_store_instr_stream_0
                  la         a2, region_0+3911 #start riscv_hazard_instr_stream_9
                  sw         a3, -1723(a2)
                  csrrc      tp, 0x340, tp
                  sb         s1, -1727(a2)
                  add        a3, a7, s1
                  srai       s1, t0, 27
                  sltu       a7, a0, t0
                  lbu        tp, -133(a2)
                  sb         t0, -775(a2)
                  lb         t0, -394(a2)
                  c.and      a0, a0
                  andi       a3, t0, -179
                  c.slli     a7, 24
                  xori       s1, a7, 3
                  sb         a3, -946(a2)
                  lb         a7, -582(a2)
                  lb         a3, -1624(a2)
                  mulh       a3, tp, s1
                  lui        a0, 502720
                  srl        a0, s1, s1
                  lbu        a0, -1753(a2)
                  lb         a3, -128(a2)
                  sh         a7, 73(a2)
                  sh         s1, 137(a2)
                  sb         t0, 78(a2)
                  lb         a7, -1764(a2) #end riscv_hazard_instr_stream_9
                  la         a6, region_3+435 #start riscv_load_store_rand_instr_stream_2
                  sra        zero, a0, s7
                  c.andi     a1, 3
                  sb         ra, -14(a6)
                  sb         t6, 10(a6)
                  csrrwi     s5, 0x340, 24
                  sub        s10, s11, t4
                  lh         a0, -15(a6)
                  sb         s6, 2(a6)
                  remu       t0, s3, t6
                  add        s10, s7, s1
                  sw         a2, -7(a6)
                  slli       a0, t3, 28
                  c.add      s9, a6
                  lbu        a2, -10(a6)
                  lhu        s1, -3(a6)
                  slti       a3, t3, -542
                  sb         tp, 6(a6)
                  srl        a7, a2, t4
                  lbu        s10, 16(a6)
                  lh         t0, -7(a6)
                  xori       zero, s6, -754
                  ori        t1, s2, 561
                  lh         t1, -11(a6)
                  lb         s2, -16(a6)
                  sb         t0, 8(a6)
                  lb         t5, 12(a6)
                  lb         s5, -4(a6)
                  srli       a1, s11, 25
                  xori       a5, t5, 777
                  sub        s10, s0, s5
                  lb         a4, -16(a6)
                  lh         a0, -13(a6) #end riscv_load_store_rand_instr_stream_2
                  addi       s5, zero, 7 #init loop 0 counter
                  mulh       a1, s4, s7
                  c.nop
                  addi       tp, zero, 7 #init loop 0 limit
                  csrrwi     t5, 0x340, 11
                  sub        s11, a0, s0
                  rem        s3, t6, s11
                  srli       t1, ra, 20
                  addi       s6, gp, 630
                  c.nop
                  slt        a2, t5, gp
                  c.sub      a2, a2
                  div        a5, gp, s8
                  addi       s3, a7, -36
                  c.slli     t6, 11
                  csrrsi     s6, 0x340, 1
                  nop
                  nop
sub_1_50_0_t:     slti       s0, a1, 181
                  c.mv       t0, ra
                  lui        s6, 48187
                  srai       s6, tp, 16
                  remu       s8, t4, t0
                  auipc      s0, 728143
                  xor        s0, s7, a1
                  addi       s5, s5, -3 #update loop 0 counter
                  csrrc      s1, 0x340, s4
                  sra        zero, s3, a4
                  bgeu       s5, tp, sub_1_50_0_t #branch for loop 0
                  srl        t3, t3, t1
sub_1_14:         jal        s11, 9f
0:                c.j        12f
1:                c.jal      16f
2:                c.jal      1b
3:                c.jal      14f
4:                jal        ra, 17f
5:                c.jal      10f
6:                jal        ra, 0b
7:                c.jal      3b
8:                jal        s8, 18f
9:                c.j        2b
10:               jal        ra, 19f
11:               c.j        6b
12:               c.j        5b
13:               c.jal      7b
14:               c.jal      11b
15:               c.jal      8b
16:               c.jal      15b
17:               c.j        13b
18:               c.jal      4b
19:               auipc      ra, 496353
sub_1_16:         jal        s11, 22f
0:                c.j        28f
1:                c.j        6f
2:                jal        ra, 20f
3:                c.jal      2b
4:                jal        t1, 18f
5:                c.jal      10f
6:                jal        ra, 14f
7:                jal        ra, 27f
8:                c.jal      12f
9:                c.jal      7b
10:               jal        ra, 15f
11:               c.j        26f
12:               jal        s4, 5b
13:               c.jal      30f
14:               c.jal      23f
15:               c.jal      0b
16:               c.jal      29f
17:               c.jal      24f
18:               c.j        17b
19:               c.j        8b
20:               c.j        9b
21:               jal        ra, 1b
22:               c.j        19b
23:               c.j        13b
24:               jal        t0, 16b
25:               c.jal      11b
26:               c.j        21b
27:               c.jal      4b
28:               c.jal      3b
29:               c.j        25b
30:               csrrs      t0, 0x340, a3
                  la         a2, region_3+147 #start load_store_instr_stream_0
                  la         s4, region_0+135 #start load_store_instr_stream_1
                  sb         s10, -32(s4)
                  la         ra, region_4+2454 #start load_store_instr_stream_3
                  sb         s3, 115(a2)
                  la         a3, region_1+2809 #start load_store_instr_stream_2
                  la         s7, region_2+707 #start load_store_instr_stream_4
                  lb         a1, -216(ra)
                  sb         a0, 32(a3)
                  lbu        t3, 179(s4)
                  sb         s10, 177(ra)
                  lb         t6, -158(a3)
                  lb         s10, -67(ra)
                  sb         s10, 7(a3)
                  lbu        t0, 248(a2)
                  lb         a6, 1826(s7)
                  lh         t1, -16(ra)
                  lb         s9, -12(a2)
                  lbu        a0, 149(s4)
                  lh         t6, -383(s7)
                  sb         t0, 243(ra)
                  lhu        a7, 195(a2)
                  lbu        t5, 224(s4)
                  lh         s8, 205(a3)
                  lh         s2, -87(s7)
                  lb         t6, -112(a2)
                  sb         a7, -34(a2)
                  lb         s8, -32(s4)
                  lb         s10, -16(a2)
                  lb         a1, -118(s4)
                  lb         s5, 119(s4)
                  lb         t0, 1746(s7)
                  lb         a0, 82(a2)
                  lh         s8, 1563(s7)
                  sw         s9, 163(a3)
                  sb         s0, -51(ra) #end load_store_instr_stream_3
                  lb         s10, 152(a2)
                  sb         s6, 1503(s7)
                  lbu        a6, -218(a3)
                  lb         tp, 589(s7)
                  lbu        s3, 232(s4) #end load_store_instr_stream_1
                  sb         s11, -100(a3)
                  sh         a5, -297(s7) #end load_store_instr_stream_4
                  lh         a4, -211(a3) #end load_store_instr_stream_2
                  lb         s0, 173(a2) #end load_store_instr_stream_0
                  la         a7, region_3+76 #start riscv_hazard_instr_stream_0
                  fence.i
                  lbu        s3, 132(a7)
                  sb         t5, 89(a7)
                  sb         s9, 168(a7)
                  lbu        s9, 255(a7)
                  sltiu      zero, t5, 534
                  lbu        a4, 63(a7)
                  srli       zero, s3, 3
                  addi       zero, zero, -228
                  c.xor      a4, a0
                  c.addi     a0, 27
                  lhu        zero, 142(a7)
                  lhu        s9, 204(a7)
                  lb         zero, -25(a7)
                  c.xor      a0, a0
                  mulhu      s9, t5, s9
                  lb         a4, 190(a7)
                  lui        zero, 173934
                  lb         s3, 201(a7)
                  fence.i
                  sb         a0, 245(a7)
                  c.sub      a4, a4
                  lbu        a0, 50(a7)
                  lb         s9, 141(a7)
                  lb         t5, 66(a7)
                  lh         s3, 4(a7)
                  csrrsi     t5, 0x340, 15
                  csrrsi     a0, 0x340, 11
                  lb         zero, 118(a7)
                  sb         zero, -53(a7)
                  c.li       s9, -1
                  mulhsu     s3, s9, zero
                  auipc      s3, 563580
                  sb         a0, 75(a7)
                  lh         s3, 36(a7)
                  sb         zero, 197(a7)
                  mulhu      zero, zero, s3
                  lhu        a0, -54(a7)
                  c.xor      a0, a4
                  lb         s3, 17(a7)
                  mul        t5, t5, s3
                  csrrwi     s9, 0x340, 3
                  sw         a0, 256(a7)
                  lbu        a4, 101(a7)
                  sb         zero, 103(a7) #end riscv_hazard_instr_stream_0
                  la         s11, region_2+258 #start load_store_instr_stream_2
                  la         a5, region_4+2980 #start load_store_instr_stream_1
                  sb         s3, 105(s11)
                  lb         s0, -1(a5)
                  lhu        s10, -126(s11)
                  lb         s9, 231(s11)
                  lbu        s8, 10(a5)
                  lb         ra, 30(s11)
                  la         t3, region_0+2901 #start load_store_instr_stream_0
                  sb         sp, -89(s11)
                  sb         t4, 18(a5)
                  c.lw       s1, 20(a5)
                  lbu        s5, 14(t3)
                  sb         a7, -23(a5)
                  lb         s4, -51(a5)
                  lbu        ra, 0(t3)
                  lb         s0, -31(a5)
                  lbu        ra, 14(t3)
                  lbu        s7, 16(t3)
                  lb         ra, 207(s11)
                  lbu        t0, -17(a5)
                  lbu        t4, 51(a5)
                  sb         a3, 33(a5) #end load_store_instr_stream_1
                  lb         t4, -3(t3)
                  sb         zero, -65(s11)
                  sh         a4, 106(s11) #end load_store_instr_stream_2
                  lh         s2, -11(t3) #end load_store_instr_stream_0
                  la         s7, region_1+15613 #start load_store_instr_stream_2
                  la         a5, region_1+12459 #start load_store_instr_stream_3
                  la         ra, region_1+12054 #start load_store_instr_stream_0
                  la         tp, region_1+4301 #start load_store_instr_stream_1
                  lhu        a1, 31(s7)
                  sb         a0, -992(a5)
                  lb         a7, 212(s7)
                  sb         a0, 40(ra)
                  lb         t1, -433(a5)
                  lb         a4, -126(s7)
                  lb         t5, -2(tp)
                  sh         sp, -46(ra)
                  lbu        a4, -15(tp)
                  sh         a4, 35(s7)
                  lb         t5, -1910(a5)
                  lh         a4, 245(s7)
                  sh         a6, -9(tp)
                  sb         a7, 392(a5)
                  sb         tp, -46(s7)
                  lhu        s10, -251(s7)
                  lw         s5, -915(a5)
                  lhu        s9, -1451(a5)
                  sh         a7, -26(ra)
                  lh         zero, 279(a5)
                  sh         t0, -44(ra)
                  sb         t2, -1(ra)
                  lb         a6, 40(ra)
                  lb         a2, -8(tp)
                  lbu        t0, -38(a5)
                  lb         s3, -1645(a5)
                  lw         t6, -57(s7)
                  lb         t6, -39(ra)
                  sb         tp, 4(tp)
                  lbu        a4, -1996(a5) #end load_store_instr_stream_3
                  sh         a0, 34(ra)
                  sb         gp, 32(s7) #end load_store_instr_stream_2
                  sh         ra, 7(tp) #end load_store_instr_stream_1
                  sb         s6, -13(ra) #end load_store_instr_stream_0
                  la         t0, region_2+3262 #start riscv_hazard_instr_stream_6
                  sltu       a5, t6, s3
                  sb         s1, -1279(t0)
                  auipc      zero, 981733
                  xori       s3, a5, 488
                  slli       zero, s1, 3
                  sw         a7, -1690(t0)
                  c.mv       t6, s3
                  mulh       s3, t6, zero
                  fence
                  lb         zero, 312(t0)
                  sltiu      s3, s3, -913
                  lb         a7, -477(t0)
                  c.addi     t6, -1
                  c.lui      t6, 29
                  nop
                  lh         a7, -1122(t0)
                  lb         zero, 285(t0)
                  andi       s3, s1, -207
                  rem        s1, zero, t6
                  c.or       a5, a5
                  lh         t6, 1912(t0)
                  sb         zero, -957(t0)
                  sb         s3, -1947(t0)
                  lui        s1, 239886
                  rem        t6, zero, s1
                  c.lui      a7, 18
                  rem        s3, s1, a7
                  srai       zero, a5, 22
                  c.li       s1, -1
                  sh         zero, -930(t0)
                  sra        s3, s1, a5
                  lb         s3, -1469(t0)
                  csrrci     zero, 0x340, 1
                  mulhsu     a7, t6, t6
                  slt        t6, s3, s1
                  sh         s3, 1060(t0)
                  c.mv       a5, s1
                  sb         s1, -999(t0) #end riscv_hazard_instr_stream_6
                  la         s0, region_4+571 #start load_store_instr_stream_3
                  la         a3, region_2+1498 #start load_store_instr_stream_1
                  la         t6, region_1+11526 #start load_store_instr_stream_0
                  la         a1, region_3+205 #start load_store_instr_stream_2
                  sb         a0, -140(a1)
                  sb         s0, 163(t6)
                  lb         a4, -1453(a3)
                  lbu        s2, -857(a3)
                  lb         a6, -32(a1)
                  lbu        a6, -47(t6)
                  lbu        a0, 213(a1)
                  lhu        a7, -89(s0)
                  lh         s5, -604(a3)
                  lh         t1, 1949(s0)
                  lhu        t3, 236(t6)
                  lb         s10, 1386(s0)
                  sb         s0, -269(a3)
                  lh         s7, -22(t6)
                  lhu        a6, 819(s0)
                  lbu        a7, -439(a3)
                  lb         s3, -82(s0)
                  sb         t4, 101(t6)
                  lh         t5, 191(a1)
                  sb         a5, 201(t6)
                  sb         t3, 127(t6)
                  lbu        t5, -213(s0)
                  lbu        s10, 1602(s0)
                  sh         t2, 856(a3)
                  lh         tp, -176(t6)
                  lhu        s2, 1477(s0)
                  lbu        t5, 228(a1) #end load_store_instr_stream_2
                  sb         s0, -226(s0)
                  lbu        zero, -1133(a3) #end load_store_instr_stream_1
                  lbu        t1, 195(t6)
                  lhu        s6, 1741(s0) #end load_store_instr_stream_3
                  lh         a7, 4(t6) #end load_store_instr_stream_0
                  la         s7, region_2+7338 #start load_store_instr_stream_1
                  la         t1, region_2+3043 #start load_store_instr_stream_2
                  lbu        t5, -78(s7)
                  lbu        a0, 709(s7)
                  la         s6, region_2+7328 #start load_store_instr_stream_4
                  lbu        s5, 1235(t1)
                  sb         s5, 51(s6)
                  la         a4, region_2+1827 #start load_store_instr_stream_0
                  sh         a5, -90(s6)
                  la         ra, region_2+5694 #start load_store_instr_stream_3
                  lbu        tp, 23(ra)
                  sb         s7, -13(s6)
                  lbu        t4, -1184(t1)
                  sh         s7, -187(t1)
                  lbu        t5, 53(ra)
                  lhu        a6, -184(s6)
                  sb         t1, -6(a4)
                  sb         s10, 8(a4)
                  lb         t5, 8(ra)
                  lb         s4, 64(s6)
                  lb         a3, -13(a4)
                  lhu        a7, 54(ra)
                  lbu        a5, -767(s7)
                  sb         s8, -10(a4)
                  lbu        t3, -1294(s7)
                  sh         a2, 232(s6)
                  lbu        s0, -29(ra) #end load_store_instr_stream_3
                  lb         s2, -1566(t1)
                  lbu        t3, 167(s7) #end load_store_instr_stream_1
                  lbu        t5, 155(s6) #end load_store_instr_stream_4
                  sh         tp, -1461(t1) #end load_store_instr_stream_2
                  sw         zero, 5(a4) #end load_store_instr_stream_0
                  la         s4, region_2+4417 #start load_store_instr_stream_0
                  la         s8, region_3+3 #start load_store_instr_stream_2
                  lb         a5, -23(s4)
                  la         a6, region_1+1697 #start load_store_instr_stream_1
                  sb         zero, 2(s4)
                  sb         t5, 2(s8)
                  lbu        a1, -211(a6)
                  sb         s8, 8(s8)
                  lb         s10, 40(a6)
                  sh         t1, -49(s4)
                  sb         ra, 62(s4)
                  lb         s0, 3(s8)
                  lb         ra, 36(a6)
                  sb         a7, -1(s8)
                  lbu        zero, 16(s8)
                  lb         a5, 252(a6)
                  lw         t0, 9(s8)
                  sb         sp, 3(s8)
                  lb         s1, 216(a6)
                  lbu        t3, 6(s8)
                  sb         a3, 18(s4)
                  lbu        s11, -183(a6)
                  lh         s7, 15(s8)
                  lhu        s5, 53(a6)
                  lh         t5, 47(s4)
                  lh         ra, -3(s8) #end load_store_instr_stream_2
                  lb         s6, 124(a6)
                  sw         a3, -61(s4)
                  lbu        t3, 248(a6)
                  lbu        s9, -222(a6) #end load_store_instr_stream_1
                  lb         a7, 59(s4) #end load_store_instr_stream_0
sub_1_17:         jal        s11, 10f
0:                c.j        14f
1:                c.jal      8f
2:                jal        ra, 0b
3:                c.jal      1b
4:                jal        ra, 6f
5:                jal        s3, 9f
6:                jal        t0, 13f
7:                c.jal      4b
8:                c.jal      12f
9:                jal        ra, 11f
10:               c.j        7b
11:               c.j        2b
12:               c.j        5b
13:               jal        ra, 3b
14:               slli       s2, t4, 19
                  la         s9, region_1+15959 #start riscv_hazard_instr_stream_5
                  add        t5, t5, a2
                  lh         a7, 55(s9)
                  mulhu      s10, s2, a7
                  lbu        s2, 251(s9)
                  lw         t6, -211(s9)
                  sb         a7, -122(s9)
                  lb         a2, -62(s9)
                  lb         t5, 255(s9)
                  lh         a2, 199(s9)
                  lh         s10, 53(s9)
                  lhu        s2, 173(s9)
                  c.andi     a2, 20
                  c.and      a2, a2
                  sh         s10, -61(s9)
                  sh         s2, 23(s9)
                  slti       a2, s10, 25
                  divu       t6, s10, t5
                  lbu        s2, 133(s9)
                  lb         s10, 70(s9)
                  remu       t5, a7, a7
                  lb         a2, 200(s9)
                  srli       s10, s2, 13
                  c.add      s2, t5
                  sb         t5, 36(s9)
                  lhu        t6, 49(s9)
                  lbu        t6, -256(s9)
                  sltiu      a2, t6, 84
                  and        a7, s10, s10
                  lb         t6, -192(s9)
                  sb         s10, -57(s9) #end riscv_hazard_instr_stream_5
                  c.and      a0, a0
                  c.srli     a3, 19
                  srli       a0, s10, 30
                  sra        a5, s4, t6
                  auipc      s7, 296231
                  slti       t6, a7, -479
                  c.srai     s0, 15
                  slli       t5, a1, 6
                  csrrsi     ra, 0x340, 8
                  slt        s8, t0, a6
                  bltu       s1, s0, 14f
                  c.and      a5, a0
                  csrrw      a6, 0x340, a4
                  c.lui      t4, 11
14:               rem        a1, s11, a3
                  c.li       t0, -1
                  srl        zero, t2, t0
                  bne        t3, a5, 28f
                  c.xor      a5, a4
                  fence.i
                  csrrsi     t1, 0x340, 17
                  sltu       s3, a1, s6
                  c.lui      t6, 1
                  addi       ra, s8, -46
                  c.sub      a5, a3
                  slli       s1, s5, 21
                  and        a0, t1, t4
                  c.li       t3, 19
28:               c.mv       s7, s6
                  div        s0, s7, t2
                  c.add      t3, a6
                  slt        a6, sp, ra
                  auipc      a3, 430401
                  ori        a0, s6, -925
                  c.bnez     a2, 47f
                  sltu       ra, a7, t6
                  sub        a6, tp, tp
                  and        ra, s0, s2
                  c.lui      a3, 17
                  csrrw      t5, 0x340, s3
                  c.or       a0, s1
                  c.andi     a1, 4
                  blt        s7, tp, 51f
                  sltiu      a2, a2, 185
                  csrrc      t4, 0x340, t1
                  slt        s1, s6, t6
                  or         ra, a7, s6
47:               fence.i
                  srai       a6, a3, 14
                  slli       s3, a6, 13
                  c.slli     a0, 15
51:               rem        a0, t6, s2
                  bne        s1, a4, 67f
                  sub        s3, s6, s5
                  c.or       a1, s1
                  div        t3, zero, s8
                  addi       s8, s10, -269
                  xori       s6, zero, 706
                  sltiu      s1, t1, 215
                  add        a7, s5, s4
                  c.bnez     s1, 69f
                  csrrsi     zero, 0x340, 15
                  c.srli     a5, 28
                  xor        t3, s1, s2
                  csrrci     s8, 0x340, 15
                  ori        a1, s9, -249
                  mulhsu     s4, t3, zero
67:               c.srli     s1, 12
                  slt        t4, a3, sp
69:               mulh       tp, t2, t5
                  mulh       s2, tp, s2
                  andi       s3, t5, 392
                  lui        s8, 661321
                  sltiu      a4, t3, 213
                  sltu       s1, t2, a4
                  bgeu       gp, s3, 90f
                  c.srai     a2, 27
                  mulh       a1, t5, gp
                  fence.i
                  auipc      t6, 723906
                  blt        s5, gp, 89f
                  blt        s0, s7, 83f
                  srai       a5, a2, 24
83:               c.slli     t4, 9
                  mulh       s5, s5, a7
                  srli       s11, a2, 6
                  auipc      t6, 68560
                  rem        t1, a7, tp
                  bgeu       gp, s3, 91f
89:               c.mv       s3, t5
90:               c.andi     a4, -1
91:               add        a0, s11, a5
                  csrrci     s7, 0x340, 1
                  mul        t6, s2, t6
                  nop
                  lui        a0, 671789
                  bltu       t3, s3, 113f
                  c.slli     a4, 11
                  nop
                  c.nop
                  slli       a6, a2, 29
                  add        t5, t2, s4
                  srli       t4, a1, 7
                  c.srai     a0, 4
                  remu       s0, s9, t4
                  c.and      a0, a1
                  or         s5, a7, s0
                  c.sub      s1, s0
                  add        a7, sp, tp
                  bge        a1, s11, 124f
                  lui        a1, 1024121
                  c.srli     a3, 9
                  addi       s11, s7, 108
113:              fence
                  csrrci     a1, 0x340, 18
                  csrrwi     s8, 0x340, 5
                  or         s0, s5, s2
                  sll        s11, t6, s3
                  and        s2, s3, zero
                  andi       s10, a7, 529
                  beq        tp, s11, 140f
                  xori       a2, a5, -298
                  remu       s10, a3, s1
                  bne        a6, t1, 128f
124:              addi       s9, a2, 100
                  xori       a0, t0, -473
                  slti       s4, t0, 7
                  c.or       a2, a2
128:              c.andi     a3, -1
                  c.and      a4, s1
                  auipc      t3, 699152
                  csrrc      s9, 0x340, t4
                  blt        t4, s10, 147f
                  csrrsi     a1, 0x340, 8
                  lui        zero, 25925
                  fence.i
                  bgeu       t4, a7, 150f
                  csrrsi     s8, 0x340, 20
                  c.nop
                  sltu       s6, t1, sp
140:              xor        t0, s8, s10
                  bgeu       s5, s3, 156f
                  remu       s3, a7, s3
                  c.beqz     a4, 162f
                  c.slli     tp, 14
                  c.addi     s2, -1
                  slti       s11, sp, -934
147:              mulhsu     a7, s11, a4
                  mulh       t1, gp, s2
                  mulhu      ra, zero, t4
150:              bge        s10, a5, 169f
                  sltiu      a2, a0, 640
                  addi       t5, a3, -758
                  c.srai     a1, 3
                  csrrc      s2, 0x340, a3
                  add        s10, s3, t4
156:              c.bnez     a0, 168f
                  c.xor      a1, a0
                  andi       t3, a5, -25
                  xori       a6, a6, 182
                  sub        s1, t0, s6
                  beq        s9, s2, 163f
162:              div        t1, s2, t5
163:              addi       s2, a7, 799
                  csrrw      s3, 0x340, t6
                  blt        a4, a7, 184f
                  divu       t6, s4, s8
                  c.srai     a0, 16
168:              div        a4, s7, s2
169:              c.sub      a4, a5
                  c.or       a0, a1
                  ori        zero, a1, -153
                  srli       a7, t5, 19
                  slli       t1, tp, 11
                  fence.i
                  csrrc      a3, 0x340, a3
                  csrrsi     a2, 0x340, 15
                  c.xor      a1, a0
                  sltiu      s4, s8, -935
                  slti       s5, s2, 467
                  srl        t1, s6, a2
                  or         tp, zero, s11
                  csrrwi     a4, 0x340, 9
                  srl        a3, s5, s4
184:              and        t6, a0, s0
                  slli       s1, s7, 17
                  c.addi     s3, -1
                  addi       t1, s11, -795
                  slti       s4, s3, 928
                  mul        a7, t4, t4
                  srl        a5, ra, a3
                  slt        a7, s9, t2
                  mulhsu     s3, s2, s4
                  c.beqz     a4, 208f
                  c.nop
                  slti       t0, s8, -623
                  csrrsi     s7, 0x340, 17
                  lui        a2, 159435
                  nop
                  c.or       a2, a1
                  nop
                  c.and      a5, a3
                  c.bnez     a5, 220f
                  add        a1, a6, a5
                  sra        s1, ra, t2
                  xori       a3, s10, -904
                  bne        t2, ra, 219f
                  c.add      s11, s7
208:              c.beqz     a0, 211f
                  slt        s10, s11, t5
                  add        t1, sp, s0
211:              nop
                  srli       t1, s4, 19
                  xor        a3, ra, tp
                  csrrci     a4, 0x340, 31
                  fence
                  sub        ra, s10, t1
                  c.and      a5, a5
                  c.add      a7, s1
219:              csrrsi     s5, 0x340, 6
220:              csrrwi     t0, 0x340, 25
                  bne        t0, s2, 223f
                  csrrsi     t3, 0x340, 10
223:              c.slli     s2, 21
                  addi       s4, s1, 87
                  or         s9, a0, s1
                  csrrci     s0, 0x340, 2
                  c.li       s3, -1
                  c.sub      a3, a4
                  add        t3, a1, s4
                  csrrs      tp, 0x340, t0
                  xor        t4, s0, a5
                  c.xor      s0, a0
                  div        s9, t1, s3
                  sub        s6, zero, a7
                  slli       t3, gp, 24
                  sll        s7, s10, s11
                  bne        s5, a1, 244f
                  beq        s6, a6, 247f
                  csrrw      s1, 0x340, ra
                  la         t5, region_1+9475 #start load_store_instr_stream_1
                  lh         s6, -9(t5)
                  sb         t6, -14(t5)
                  la         s5, region_2+6807 #start load_store_instr_stream_0
                  sb         a3, -4(t5)
                  lb         a2, 4(t5)
                  lbu        a4, -22(s5)
                  lbu        a1, 46(s5)
                  lbu        ra, -10(t5)
                  lbu        t6, 42(s5)
                  lb         s3, -43(s5)
                  lb         s9, -4(s5)
                  lhu        a3, -15(t5)
                  sb         s8, -14(t5) #end load_store_instr_stream_1
                  lhu        tp, 31(s5) #end load_store_instr_stream_0
                  csrrci     s1, 0x340, 2
                  addi       ra, t1, -286
                  c.addi     s1, 9
                  srai       t0, s4, 13
244:              nop
                  blt        s3, a4, 247f
                  c.mv       s3, a7
247:              andi       s5, s7, -131
                  c.mv       s0, a4
                  c.and      s1, a4
                  csrrw      a5, 0x340, s0
                  nop
                  c.or       a4, a2
                  andi       s9, a4, -374
                  slti       a0, t6, 252
                  blt        a6, s4, 268f
                  xori       t6, s6, -745
                  andi       s0, a1, 256
                  c.mv       t4, ra
                  beq        s3, a6, 278f
                  csrrwi     s0, 0x340, 18
                  csrrs      s11, 0x340, t0
                  lui        t0, 411427
                  c.srai     a0, 6
                  sltiu      s10, t3, -147
                  csrrw      s11, 0x340, s5
                  bge        gp, a4, 281f
                  csrrw      s1, 0x340, s9
268:              c.srli     a1, 24
                  csrrs      a7, 0x340, zero
                  c.mv       s11, a3
                  andi       t5, t5, -150
                  bne        s6, s2, 275f
                  remu       a0, s1, a6
                  blt        s5, t1, 289f
275:              divu       zero, a5, s2
                  bgeu       ra, t2, 279f
                  fence
278:              or         s10, t2, a3
279:              sra        t6, t6, s11
                  sltiu      t1, a2, 581
                  la         a7, region_2+7456 #start load_store_instr_stream_1
                  la         s1, region_1+15577 #start load_store_instr_stream_2
                  lbu        s0, 309(a7)
                  la         s9, region_3+243 #start load_store_instr_stream_0
                  lb         s0, -17(a7)
                  lhu        zero, -153(s1)
                  lbu        t4, -1632(a7)
                  sb         t2, 234(s9)
                  sh         t5, -107(s1)
                  lw         s5, -1036(a7)
                  sb         a5, 110(s1)
                  sb         t1, 322(a7)
                  lhu        s2, 189(s1)
                  lbu        tp, 19(s9)
                  sh         s0, -1542(a7)
                  sb         s2, -1394(a7)
                  lbu        s8, -47(s9)
                  lb         s6, 142(s9)
                  sb         s5, 57(s1)
                  sb         t5, -137(s1)
                  lbu        a2, 93(a7) #end load_store_instr_stream_1
                  sb         t0, 156(s1)
                  lbu        t6, -14(s1)
                  lbu        t1, 19(s1) #end load_store_instr_stream_2
                  lb         a4, -183(s9)
                  sb         s4, 152(s9) #end load_store_instr_stream_0
281:              slti       t3, a4, 519
                  sra        a7, t1, tp
                  srl        t0, a3, a7
                  rem        a5, a1, s9
                  bgeu       s8, s4, 304f
                  srl        s11, t0, ra
                  c.xor      a5, a2
                  rem        tp, t2, t0
289:              bge        t6, s6, 302f
                  mulhu      a7, s5, s3
                  xor        ra, t6, t4
                  mulhu      a5, t5, sp
                  c.and      s0, a5
                  rem        s5, s6, t3
                  fence
                  bge        tp, s4, 311f
                  rem        s7, t4, sp
                  beq        s5, s6, 300f
                  slti       tp, t4, 677
300:              and        a6, t4, a2
                  nop
302:              sub        tp, a2, s6
                  xor        ra, s3, s9
304:              nop
                  beq        s9, s8, 314f
                  slt        s8, t6, t6
                  bge        s2, s9, 322f
                  andi       s8, ra, 533
                  csrrs      a6, 0x340, t4
                  csrrs      s5, 0x340, t6
311:              mul        t6, a4, a4
                  div        s2, a3, zero
                  sltiu      s2, a0, -235
314:              c.addi     s5, -1
                  rem        s3, sp, s7
                  csrrci     tp, 0x340, 10
                  csrrs      s6, 0x340, t5
                  add        t6, a3, a7
                  sub        a3, ra, zero
                  add        a2, ra, t5
                  c.slli     s1, 2
322:              c.add      s4, s3
                  divu       s3, gp, t1
                  csrrs      tp, 0x340, a0
                  csrrc      a2, 0x340, s2
                  bgeu       a1, ra, 344f
                  mulhsu     ra, a6, s2
                  sub        s3, s4, t0
                  csrrc      s7, 0x340, a0
                  c.sub      a5, a5
                  blt        a4, s7, 333f
                  c.srai     a1, 12
333:              mulhu      s1, t2, s5
                  csrrw      a7, 0x340, gp
                  mulh       a0, t0, s2
                  mulhu      s3, s4, a6
                  c.beqz     a5, 346f
                  sltiu      s11, zero, -714
                  c.sub      a0, a5
                  remu       s6, sp, s0
                  csrrci     t0, 0x340, 20
                  c.beqz     a3, 359f
                  c.nop
344:              slt        s3, t4, t1
                  c.nop
346:              or         a4, t6, t6
                  div        s10, a2, a6
                  csrrc      a6, 0x340, t5
                  rem        s8, s2, gp
                  slli       a5, t6, 9
                  c.li       t0, -1
                  c.bnez     a0, 361f
                  sltiu      s5, s7, 692
                  c.andi     a4, 31
                  nop
                  csrrs      s8, 0x340, s3
                  andi       s8, a4, 282
                  bge        a7, s4, 360f
359:              c.nop
360:              c.lui      s4, 31
361:              c.srli     a3, 1
                  nop
                  c.sub      a1, s0
                  mul        s8, tp, s0
                  mul        a0, a4, s7
                  srl        a0, t5, s1
                  xori       a2, t3, 1007
                  c.addi     s2, -1
                  ori        s0, sp, 428
                  beq        t0, a0, 384f
                  nop
                  andi       t3, s11, 384
                  add        a5, t5, s1
                  fence.i
                  slti       a6, s7, 118
                  ori        t3, a4, -762
                  c.mv       a3, a7
                  c.xor      a1, a3
                  div        s8, tp, a7
                  sub        a2, s6, ra
                  divu       s8, ra, gp
                  csrrsi     s7, 0x340, 20
                  xori       a5, a2, 452
384:              srli       tp, s0, 2
                  sll        t0, a7, s10
                  sltu       a6, t2, s9
                  beq        s8, a7, 396f
                  csrrsi     a7, 0x340, 19
                  csrrs      a7, 0x340, t0
                  csrrwi     s1, 0x340, 9
                  addi       zero, s5, 181
                  mulh       t0, a6, t6
                  mul        a5, s5, t6
                  remu       s10, s4, t2
                  c.and      a4, s0
396:              csrrwi     a1, 0x340, 4
                  xori       s6, s2, 925
                  andi       a7, a4, -993
                  c.and      s1, a2
                  slli       s0, t1, 9
                  csrrwi     t3, 0x340, 0
                  slt        s0, t5, t2
                  c.beqz     a2, 410f
                  c.and      a2, a0
                  c.nop
                  slti       t1, t5, -650
                  slt        s2, s8, s3
                  add        a0, t6, a6
                  mul        zero, t0, t1
410:              sll        s5, s5, a7
                  add        s6, t5, a2
                  blt        s1, s4, 416f
                  xor        s7, s3, t4
                  slli       t4, a7, 10
                  add        ra, a1, a5
416:              c.mv       s0, t2
                  c.lui      s1, 9
                  c.lui      s6, 17
                  mulhu      a4, a1, a1
                  nop
                  csrrc      a1, 0x340, a7
                  c.mv       a4, s9
                  srli       s2, s4, 0
                  ori        s11, t6, 515
                  mulhsu     s4, t3, s11
                  c.srli     a0, 8
                  mulhu      t3, t2, s11
                  div        t3, s7, sp
                  c.nop
                  c.bnez     s0, 441f
                  beq        zero, zero, 436f
                  andi       a3, s5, -27
                  auipc      a4, 956774
                  mulh       a3, sp, t2
                  c.or       a0, a0
436:              sub        s7, a1, s0
                  c.or       s1, a2
                  remu       a1, t2, t6
                  sltu       t0, a0, a2
                  slt        s6, a6, sp
441:              or         a6, t3, a1
                  lui        s0, 391736
                  fence.i
                  ori        a0, t2, 196
                  mulh       tp, gp, t1
                  csrrwi     s11, 0x340, 2
                  bltu       s7, a5, 467f
                  bge        t0, zero, 463f
                  remu       s1, s10, s8
                  c.srai     a0, 2
                  c.lui      s0, 30
                  xor        a5, s9, s2
                  bgeu       ra, s11, 472f
                  sltiu      s7, s10, -296
                  c.andi     a0, -1
                  c.li       s9, 17
                  auipc      a4, 806126
                  mulhu      a7, s10, s5
                  c.nop
                  xori       t6, a5, 71
                  addi       s2, s9, 81
                  bne        zero, s1, 477f
463:              c.li       a4, 22
                  c.and      a2, s1
                  c.nop
                  nop
467:              lui        a7, 935196
                  lui        s7, 862004
                  c.xor      a3, a0
                  csrrwi     t4, 0x340, 9
                  divu       t3, a3, a5
472:              c.lui      s0, 25
                  sub        s9, s4, zero
                  mulhsu     a0, a7, s8
                  or         t0, s4, t2
                  slli       a0, a3, 29
477:              fence.i
                  sra        t6, a1, t3
                  csrrwi     a5, 0x340, 29
                  srl        a1, t1, s5
                  fence.i
                  c.lui      s1, 10
                  xor        t5, a7, t3
                  fence
                  bltu       s11, a4, 487f
                  c.addi     s3, 5
487:              bltu       tp, s1, 499f
                  c.beqz     s1, 503f
                  div        s4, zero, a2
                  sltiu      a3, t1, 358
                  bne        a5, t4, 493f
                  div        t6, t3, t3
493:              addi       tp, s9, 177
                  c.addi     s8, 25
                  or         s2, s1, s9
                  csrrs      s7, 0x340, tp
                  c.lui      s5, 11
                  beq        s9, s6, 516f
499:              addi       a6, a1, 59
                  bne        a3, t5, 509f
                  sub        s3, a7, s4
                  c.srli     s1, 17
503:              csrrwi     a6, 0x340, 4
                  srl        a3, s9, t1
                  c.beqz     a5, 507f
                  c.nop
507:              sltiu      t1, a1, 882
                  bltu       s4, a7, 527f
509:              mulh       a5, s6, tp
                  lui        a1, 818324
                  c.srli     a5, 10
                  csrrs      a3, 0x340, a5
                  c.srli     s1, 28
                  c.beqz     s0, 533f
                  sll        s6, s4, t4
516:              mulhu      s5, a4, s4
                  srl        s9, t4, s6
                  mulh       a0, s6, t1
                  c.add      a4, tp
                  csrrci     t3, 0x340, 26
                  mul        s8, a2, s6
                  csrrsi     s3, 0x340, 18
                  mulhsu     t6, s2, zero
                  c.li       t0, -1
                  div        s1, s1, s6
                  mulh       s8, zero, s10
527:              sltu       s2, a4, t0
                  ori        a6, ra, -847
                  slti       s3, t1, 817
                  c.add      s6, s7
                  xori       t5, a1, 900
                  c.nop
533:              c.beqz     a1, 542f
                  c.beqz     a3, 545f
                  csrrw      s3, 0x340, tp
                  addi       a5, a4, 953
                  c.addi     s9, -1
                  csrrwi     s2, 0x340, 8
                  lui        s9, 942821
                  ori        t3, s4, -254
                  c.mv       s4, s6
542:              srai       a4, a1, 18
                  c.and      a2, a2
                  c.srai     a3, 25
545:              div        s11, t1, s1
                  srli       s0, t3, 21
                  and        tp, s2, zero
                  c.or       a3, a3
                  bltu       s8, s8, 558f
                  blt        a7, s6, 552f
                  c.nop
552:              mulh       t4, a1, t2
                  remu       s6, a7, tp
                  c.bnez     a2, 563f
                  add        s11, a6, s11
                  bge        t3, a5, 573f
                  sub        s9, s1, a7
558:              c.li       s5, 18
                  lui        zero, 670644
                  sra        t1, t1, s2
                  beq        s11, a5, 580f
                  c.lui      t6, 16
563:              sra        a2, s10, s9
                  beq        s7, t5, 579f
                  rem        a4, s9, a4
                  div        t5, t2, gp
                  csrrw      s1, 0x340, s2
                  mul        s11, t5, t2
                  slt        a3, t4, s6
                  and        a3, a5, s8
                  div        t5, s5, a2
                  c.lui      s9, 27
573:              sub        t5, s1, a6
                  ori        s6, t2, -272
                  slt        s7, s10, s3
                  xori       a4, a3, -251
                  csrrsi     s11, 0x340, 4
                  slti       s7, a2, 205
579:              slt        s1, s6, ra
580:              csrrw      t5, 0x340, t6
                  and        s10, a5, t4
                  csrrsi     ra, 0x340, 27
                  c.addi     a1, -1
                  c.lui      a7, 2
                  c.xor      a3, a0
                  csrrw      t6, 0x340, s9
                  csrrw      s5, 0x340, s4
                  mulhu      s0, a7, t0
                  and        s9, t5, a0
                  blt        s0, a2, 605f
                  bne        s11, t0, 594f
                  srl        t1, s5, s6
                  fence
594:              csrrs      s6, 0x340, sp
                  sra        a4, t3, a6
                  srai       zero, s6, 29
                  csrrw      s9, 0x340, t4
                  csrrw      s5, 0x340, a1
                  ori        t6, s2, 754
                  mulhu      a4, t2, a1
                  andi       t1, s6, -418
                  c.beqz     a1, 606f
                  sltu       s1, ra, a3
                  csrrci     s7, 0x340, 22
605:              c.xor      a2, a5
606:              sll        a0, s1, a7
                  andi       s0, t6, -231
                  c.beqz     a1, 623f
                  lui        s0, 413642
                  sltiu      s1, a0, -18
                  c.bnez     a1, 614f
                  divu       s0, a2, t3
                  c.nop
614:              rem        s8, s2, gp
                  bge        s10, t2, 620f
                  mul        s5, s4, tp
                  sltu       a6, s4, t1
                  sltu       s11, t6, a3
                  bne        t6, t1, 632f
620:              c.mv       a7, sp
                  add        s11, sp, t1
                  c.add      s6, s2
623:              fence
                  srai       a3, zero, 11
                  c.bnez     a4, 645f
                  c.li       a4, -1
                  fence.i
                  sltu       a7, t6, gp
                  c.add      s3, t3
                  c.add      s4, t3
                  sltiu      zero, t2, 34
632:              mulhsu     t4, a0, a4
                  lui        s3, 705081
                  la         a4, region_1+4103 #start riscv_hazard_instr_stream_3
                  lhu        s8, -5(a4)
                  auipc      t0, 517590
                  fence
                  lb         s11, 12(a4)
                  sltiu      s8, a0, 896
                  div        s11, t0, t0
                  slti       t0, s11, 935
                  lb         s8, 8(a4)
                  c.andi     a0, -1
                  lhu        s7, -7(a4)
                  lb         s7, 16(a4)
                  add        a0, t0, t0
                  lbu        s1, 0(a4)
                  sb         t0, -12(a4)
                  sb         s11, 16(a4)
                  lb         s1, -5(a4)
                  lbu        s7, 10(a4)
                  lb         s1, 13(a4)
                  sb         s8, -2(a4)
                  sb         s7, -8(a4)
                  ori        s11, s8, -860
                  lb         t0, 4(a4)
                  auipc      s11, 515987
                  mulhsu     t0, s11, s8
                  mulh       s7, s7, s7
                  c.slli     s11, 24
                  fence.i
                  add        s8, s7, s11
                  or         t0, t0, t0
                  sltiu      a0, s1, -338
                  c.addi     s1, 31
                  c.xor      a0, a0
                  csrrc      s1, 0x340, s1
                  lb         s8, -1(a4)
                  slt        s8, s7, s7
                  lh         s7, -5(a4)
                  sltiu      a0, s11, -213
                  csrrwi     s11, 0x340, 17
                  lh         t0, -1(a4)
                  csrrc      s7, 0x340, s1
                  csrrsi     s7, 0x340, 21
                  lh         t0, -9(a4)
                  sb         a0, 5(a4)
                  lb         s8, -11(a4)
                  sb         a0, -2(a4)
                  sll        s1, s11, s1
                  auipc      s7, 700620
                  c.mv       s1, a0
                  sb         t0, 11(a4)
                  lh         s1, -13(a4)
                  sb         s1, -14(a4)
                  lbu        s7, 4(a4)
                  sub        t0, s1, s8
                  sb         a0, 4(a4)
                  mulh       s7, s7, s7
                  lh         t0, -9(a4) #end riscv_hazard_instr_stream_3
                  csrrs      s6, 0x340, s7
                  add        s8, a0, s6
                  csrrs      s8, 0x340, s0
                  mul        s1, a6, s1
                  addi       s9, t5, -144
                  bge        t2, t2, 652f
                  andi       ra, s11, 452
                  sra        t0, s6, s8
                  c.bnez     s0, 656f
                  c.nop
                  c.and      a3, s0
645:              bne        s8, t4, 652f
                  bne        a5, s7, 661f
                  c.srli     a3, 27
                  c.bnez     a1, 663f
                  c.or       a1, a2
                  sll        t5, s1, sp
                  slti       s11, zero, -925
652:              c.addi     a7, -1
                  ori        a2, s9, 134
                  xori       ra, t2, 770
                  xori       s5, zero, 974
656:              slti       a7, t3, 960
                  fence.i
                  auipc      s11, 688683
                  csrrs      s9, 0x340, t6
                  bne        s7, s6, 672f
661:              srli       a3, a4, 30
                  addi       s9, a6, -841
663:              c.nop
                  c.nop
                  mulhsu     s7, zero, t3
                  sltu       s7, a7, t6
                  bltu       t6, s7, 669f
                  sll        s8, a3, t1
669:              sra        a7, t1, a2
                  c.nop
                  c.nop
672:              auipc      a1, 968102
                  lui        a3, 1000328
                  fence.i
                  bge        tp, s3, 689f
                  csrrw      ra, 0x340, t0
                  sltu       t4, a1, s3
                  beq        s4, s4, 689f
                  fence.i
                  blt        a3, s11, 682f
                  c.mv       s7, ra
682:              slli       a3, s0, 8
                  div        a1, s3, s6
                  xor        ra, a2, a6
                  c.bnez     a0, 704f
                  c.addi     s5, 7
                  csrrsi     tp, 0x340, 25
                  and        s1, a0, s9
689:              c.slli     a6, 2
                  or         a6, s5, s0
                  auipc      t1, 727345
                  c.or       a2, s1
                  add        s2, a5, a2
                  bgeu       s6, t3, 697f
                  c.srli     a5, 29
                  nop
697:              csrrwi     a0, 0x340, 22
                  sltiu      s5, t4, 770
                  c.add      a0, t2
                  mulhu      a2, tp, a2
                  bltu       gp, a3, 716f
                  beq        s2, gp, 717f
                  mulh       a7, t2, s0
704:              slli       s6, gp, 7
                  bge        gp, s5, 718f
                  and        t5, s1, t2
                  sll        s1, s3, gp
                  remu       ra, gp, t3
                  c.lui      a0, 24
                  c.add      t5, t3
                  c.li       a3, -1
                  c.li       a7, 4
                  sltiu      a3, s9, -857
                  c.srli     a2, 10
                  c.xor      s0, a1
716:              c.andi     s1, 11
717:              c.beqz     a3, 719f
718:              srai       s2, s5, 27
719:              c.andi     a4, -1
                  srl        s9, sp, t5
                  bgeu       a2, a2, 723f
                  c.mv       a5, s10
723:              srli       s5, tp, 19
                  c.addi     ra, -1
                  remu       ra, gp, a7
                  blt        s3, s1, 745f
                  c.sub      s1, s0
                  bge        sp, a7, 740f
                  add        s2, s7, s8
                  or         a6, zero, zero
                  bltu       s11, t5, 750f
                  c.li       t1, -1
                  csrrwi     s11, 0x340, 30
                  and        zero, t3, s4
                  sltu       s7, s0, tp
                  mul        s1, ra, t0
                  sll        s1, s9, a2
                  c.nop
                  mulh       a6, s8, a4
740:              c.li       s10, -1
                  beq        t1, a7, 759f
                  csrrci     s3, 0x340, 15
                  add        s9, a4, s1
                  c.andi     a4, 4
745:              nop
                  csrrwi     ra, 0x340, 3
                  remu       s11, s9, s2
                  c.or       a0, a0
                  c.sub      a2, a4
750:              bge        ra, a6, 759f
                  andi       a3, a2, -380
                  mul        t0, s3, s10
                  mulhu      a3, s2, s7
                  beq        a5, s6, 758f
                  mulh       a6, t1, s5
                  csrrsi     s7, 0x340, 9
                  lui        t6, 938496
758:              csrrw      s3, 0x340, t2
759:              c.beqz     a3, 768f
                  c.and      a5, s0
                  fence.i
                  c.and      s0, a4
                  bltu       s5, s4, 778f
                  c.mv       t1, t6
                  c.andi     s1, -1
                  c.andi     s1, -1
                  c.and      a1, a2
768:              sra        s7, t5, t3
                  srai       s0, t4, 7
                  mulh       a5, a2, s6
                  c.slli     s4, 9
                  csrrc      a5, 0x340, s6
sub_1_19:         jal        s11, 9f
0:                c.j        7f
1:                jal        ra, 14f
2:                c.j        4f
3:                c.jal      6f
4:                jal        t0, 10f
5:                jal        tp, 11f
6:                c.j        5b
7:                c.jal      8f
8:                c.jal      1b
9:                c.j        2b
10:               jal        ra, 12f
11:               jal        a3, 13f
12:               jal        ra, 3b
13:               c.j        0b
14:               nop
                  mulhu      zero, a5, ra
                  c.sub      a3, a3
                  and        s6, a5, s8
                  srai       a7, t2, 27
                  c.add      ra, s1
778:              mul        t4, t4, s2
                  srl        s2, s7, zero
                  slt        s5, t4, zero
                  fence
                  remu       a2, tp, s4
                  csrrs      s10, 0x340, s11
                  c.sub      a3, s0
                  beq        t4, s6, 800f
                  bgeu       s0, sp, 791f
                  slt        t6, s3, s1
                  csrrs      a2, 0x340, s0
                  fence
                  c.and      a5, s0
791:              c.add      s10, t3
                  divu       t0, zero, gp
                  addi       s10, a7, -178
                  divu       a3, s6, sp
                  blt        s10, s5, 802f
                  c.andi     a4, -1
                  divu       t3, s11, s5
                  bge        sp, a2, 807f
                  c.nop
800:              csrrs      t5, 0x340, a3
                  lui        s6, 219210
802:              c.and      a0, a2
                  c.sub      a2, a2
                  xor        s4, t3, s0
                  c.srli     a5, 17
                  c.mv       a5, a1
807:              c.nop
                  fence
                  csrrc      s6, 0x340, s6
                  c.beqz     a5, 827f
                  sra        a4, t1, s3
                  srai       s5, a3, 28
                  bge        s8, s6, 816f
                  sltiu      tp, t2, -722
                  fence
816:              beq        a2, sp, 836f
                  sra        s0, s7, s9
                  c.srai     a2, 24
                  lui        t6, 546064
                  srl        t6, s6, s4
                  nop
                  or         s7, sp, a2
                  c.beqz     a1, 832f
                  c.addi     t6, 10
                  sra        t3, s2, zero
                  c.andi     a5, 9
827:              sll        s6, a3, s3
                  c.addi     s3, -1
                  c.mv       a5, sp
                  mulh       s4, a5, t1
                  lui        t5, 295333
832:              csrrsi     s3, 0x340, 22
                  andi       s8, t0, 107
                  rem        s7, a1, a5
                  or         s7, s6, s9
836:              csrrw      t0, 0x340, gp
                  srai       s2, sp, 10
                  csrrw      s5, 0x340, s7
                  bge        t2, a5, 854f
                  mulhu      t5, tp, s7
                  srli       ra, s2, 7
                  srli       t1, ra, 29
                  c.mv       t3, a2
                  rem        a3, s8, s4
                  mul        t4, s3, s5
                  c.and      a3, a0
                  c.beqz     a0, 849f
                  lui        a1, 669854
849:              sltu       s8, t0, a1
                  bne        t6, s10, 865f
                  c.srli     a5, 4
                  auipc      t4, 836188
                  slli       a4, s4, 11
854:              csrrci     s4, 0x340, 10
                  bge        s1, s11, 868f
                  bge        a5, zero, 867f
                  mulhsu     zero, s2, a7
                  csrrs      t3, 0x340, a4
                  srl        a1, s9, t3
                  slli       s6, s8, 13
                  csrrwi     a4, 0x340, 2
                  c.sub      s0, a5
                  bne        a3, t0, 876f
                  csrrc      tp, 0x340, zero
865:              srli       t0, s0, 8
                  blt        s6, s2, 871f
867:              addi       s10, s2, -861
868:              c.lui      s1, 1
                  slti       s6, t6, 693
                  divu       a3, tp, a7
871:              sub        a1, s2, t2
                  csrrwi     s0, 0x340, 9
                  xor        s6, s3, a1
                  divu       s11, a6, s11
                  divu       s9, s11, t2
876:              csrrsi     s2, 0x340, 28
                  sll        s2, s7, a6
                  csrrwi     t0, 0x340, 13
                  bge        a0, t0, 881f
                  bge        s8, s5, 882f
881:              csrrc      a4, 0x340, gp
882:              div        t3, a7, a5
                  csrrw      s6, 0x340, a2
                  or         zero, s10, s5
                  c.mv       s11, s11
                  csrrw      a2, 0x340, a4
                  c.nop
                  c.bnez     s0, 890f
                  c.add      t0, sp
890:              slti       s2, s7, 652
                  mulhsu     zero, s0, t2
                  sra        s8, s10, a5
                  c.bnez     s0, 911f
                  c.mv       a0, a4
                  srl        t5, a6, t2
                  c.addi     s3, -1
                  c.beqz     a1, 912f
                  bge        s5, a4, 917f
                  fence.i
                  mulh       s10, s8, a4
                  sub        t1, s0, t4
                  bltu       gp, a6, 917f
                  slt        ra, a5, s10
                  csrrwi     s8, 0x340, 16
                  bltu       a1, t5, 920f
                  c.or       s1, a2
                  c.xor      a2, a3
                  bne        t6, s6, 923f
                  srl        a3, s8, s10
                  csrrs      a1, 0x340, gp
911:              csrrsi     s2, 0x340, 26
912:              srli       t0, t4, 9
                  c.srai     a1, 14
                  csrrsi     zero, 0x340, 22
                  sltiu      s5, a6, 166
                  lui        t5, 43514
917:              sub        a0, s10, s10
                  ori        t3, s6, -77
                  sub        t3, zero, gp
920:              c.and      a0, s0
                  lui        a4, 606431
                  sub        a7, s9, a6
923:              lui        a1, 34938
                  mulhu      t6, a1, s0
                  c.mv       s4, a6
                  remu       t4, s9, s1
                  c.and      a0, a0
                  c.srai     a1, 22
                  c.srli     a4, 6
                  mulhsu     a1, s0, s6
                  div        s4, a6, a2
                  xori       t6, a3, 382
                  auipc      s6, 943446
                  divu       tp, gp, t3
                  c.li       tp, -1
                  c.lui      s3, 26
                  sll        a0, s4, a5
                  c.sub      a4, a4
                  divu       s11, s6, sp
                  c.li       s1, -1
                  csrrw      t5, 0x340, a4
                  or         ra, a3, a6
                  sltiu      t1, t5, 460
                  sra        t6, gp, s7
                  and        s8, t1, a4
                  beq        a7, s1, 955f
                  sll        s0, t3, t1
                  csrrwi     s0, 0x340, 16
sub_1_12:         jal        s11, 20f
0:                jal        ra, 14f
1:                c.j        13f
2:                c.j        18f
3:                jal        t0, 19f
4:                c.j        6f
5:                c.j        17f
6:                jal        tp, 16f
7:                c.j        11f
8:                c.j        2b
9:                jal        s11, 4b
10:               jal        t1, 21f
11:               jal        t1, 1b
12:               jal        ra, 10b
13:               jal        ra, 5b
14:               c.jal      12b
15:               c.jal      0b
16:               c.j        8b
17:               c.jal      3b
18:               jal        t1, 15b
19:               jal        ra, 9b
20:               jal        ra, 7b
21:               c.and      a0, a4
                  remu       t3, a1, s1
                  srli       s9, s10, 22
                  srl        a0, s5, s9
                  mulhsu     t5, ra, s0
                  c.nop
                  c.nop
955:              xor        s9, t5, zero
                  c.or       s1, a5
                  csrrci     s10, 0x340, 25
                  c.and      a2, a3
                  slt        s9, s0, s1
                  slti       a7, s1, 361
                  srl        t0, s9, s6
                  sub        a5, s5, s1
                  fence.i
                  csrrsi     t4, 0x340, 25
                  xor        a2, s11, ra
                  ori        a5, a7, -564
                  fence.i
                  sra        s4, s1, sp
                  mulhu      tp, gp, t5
                  add        tp, s8, s7
                  c.sub      a3, a3
                  rem        s5, a3, a2
                  divu       t4, t0, s3
                  nop
                  c.nop
                  lui        s9, 35270
                  fence.i
                  srli       s2, a5, 26
                  srli       t3, zero, 8
                  csrrc      s0, 0x340, a5
                  slt        s6, s9, s8
                  c.sub      s0, a1
                  bne        gp, a4, 986f
                  xor        t0, t5, sp
                  sra        a5, s1, s9
986:              c.andi     a5, -1
                  srai       s11, t0, 19
                  bgeu       s0, s10, 995f
                  xor        a6, s10, s1
                  c.slli     a0, 21
                  fence
                  bltu       a7, s1, 995f
                  c.xor      a4, a0
                  lui        a1, 929102
995:              bge        t6, a5, 999f
                  c.xor      a5, a2
                  c.and      a5, a2
                  csrrs      a6, 0x340, a7
999:              andi       a2, a4, -992
                  bge        s11, a4, 1002f
                  slli       s8, a5, 4
1002:             fence.i
                  csrrci     tp, 0x340, 1
                  slti       s6, s4, -434
                  slt        t6, s5, gp
                  c.slli     ra, 12
                  c.nop
                  and        a7, s6, a4
                  mul        s4, t3, a4
                  csrrw      s2, 0x340, t3
                  ori        a5, s4, 457
                  csrrc      s11, 0x340, a2
                  div        s9, s6, t4
                  lui        a3, 27990
                  bge        sp, s4, 1024f
                  mulhsu     t6, s9, s3
                  csrrci     s7, 0x340, 10
                  c.mv       s8, s4
                  csrrs      s3, 0x340, a1
                  csrrw      ra, 0x340, a3
                  divu       a3, s9, t0
                  fence
                  srl        t3, s5, t3
1024:             mul        s3, a4, s11
                  xor        a5, t1, s4
                  c.and      a3, s1
                  mulhsu     ra, s9, s1
                  bltu       ra, gp, 1048f
                  slt        s5, a1, s8
                  csrrwi     t1, 0x340, 19
                  add        t4, s4, s9
                  div        s8, t1, tp
                  sll        s2, a3, a7
                  div        s6, s1, a6
                  c.srai     s1, 7
                  csrrw      s5, 0x340, zero
                  sltu       s1, a1, a0
                  nop
                  mulhsu     t5, s5, t1
                  csrrc      a4, 0x340, tp
                  c.mv       a2, s2
                  c.andi     a1, -1
                  c.bnez     a3, 1057f
                  nop
                  csrrsi     a2, 0x340, 0
                  beq        s10, t5, 1065f
                  mulhsu     a1, s9, t5
1048:             add        ra, s6, t0
                  slli       s3, a3, 2
                  c.lui      a3, 29
                  c.nop
                  ori        t1, a5, 213
                  sra        a1, t4, s10
                  sub        a7, a4, gp
                  bge        s9, a5, 1067f
                  sll        a3, s9, s11
1057:             c.bnez     a1, 1066f
                  c.and      s0, a1
                  andi       tp, s5, 849
                  c.or       a0, a0
                  csrrwi     zero, 0x340, 1
                  slt        a4, t1, s10
                  beq        t4, a7, 1080f
                  mulhu      a5, t0, s4
1065:             bgeu       t1, gp, 1078f
1066:             bgeu       a0, s11, 1081f
1067:             andi       zero, t5, -495
                  bge        s0, t5, 1087f
                  csrrs      s6, 0x340, gp
                  c.li       ra, -1
                  c.and      a0, s0
                  csrrwi     s11, 0x340, 8
                  c.andi     s1, 11
                  divu       t0, a0, s9
                  sltiu      s8, t0, -629
                  c.add      s3, a4
                  srli       a4, s0, 13
1078:             c.nop
                  xori       s0, a5, 626
1080:             bge        s1, a5, 1089f
1081:             andi       t0, t1, 349
                  csrrw      a7, 0x340, tp
                  xori       s6, t5, 55
                  slli       s4, a5, 6
                  mulhu      s4, s8, s6
                  sra        a7, s2, t5
1087:             c.andi     s1, -1
                  c.addi     a3, 31
1089:             mulhu      t5, a7, a0
                  c.li       s5, 10
                  c.add      t3, s3
                  or         s10, s3, s4
                  c.srli     a3, 14
                  srli       a1, s1, 21
                  fence.i
                  mulh       a7, s2, sp
                  div        s8, s3, a1
                  sltiu      t6, s10, 386
                  csrrw      a3, 0x340, gp
                  csrrc      zero, 0x340, t2
                  csrrs      tp, 0x340, gp
                  csrrci     zero, 0x340, 27
                  slti       s1, tp, 415
                  lui        s6, 515032
                  fence.i
                  c.srai     s1, 10
                  c.nop
                  mulh       a5, a0, s11
                  or         t6, t4, a3
                  c.or       a5, a5
                  c.or       s0, s0
                  bgeu       s3, a1, 1127f
                  c.addi     s3, 15
                  divu       s5, a0, ra
                  addi       t1, a1, -932
                  c.and      a0, a2
                  c.bnez     s1, 1122f
                  c.or       a2, a5
                  srli       t6, a6, 29
                  bge        s11, t3, 1129f
                  slli       s10, s0, 0
1122:             sltiu      s1, s11, 638
                  sltiu      s1, ra, -965
                  sub        s9, t3, zero
                  sltiu      a4, s4, -907
                  sltiu      s8, a7, -422
1127:             nop
                  addi       s5, t2, -592
1129:             and        a6, s0, ra
                  srli       t0, t5, 6
                  c.lui      a7, 14
                  c.slli     a6, 20
                  addi       a2, t4, -711
                  lui        a4, 708299
                  mulh       s2, s6, tp
                  divu       t1, s0, s9
                  sra        s7, a6, s2
                  sltiu      zero, s8, -343
                  c.and      s0, a4
                  c.andi     s1, 24
                  lui        s4, 857059
                  sll        a6, t3, a1
                  c.bnez     s0, 1163f
                  la         s7, region_2+8143 #start riscv_load_store_rand_instr_stream_7
                  c.mv       a0, a2
                  c.mv       s3, s11
                  c.li       s6, -1
                  c.srli     s1, 10
                  lh         a4, -1141(s7)
                  srai       a1, a0, 31
                  c.andi     s1, 15
                  csrrwi     s3, 0x340, 23
                  divu       a5, s9, zero
                  srli       a7, s6, 31
                  lb         a1, -1882(s7)
                  and        s8, a4, t2
                  lbu        s0, -1183(s7)
                  mulh       s9, a1, s6
                  lb         s5, -1277(s7)
                  sb         a7, -439(s7)
                  lbu        a2, -956(s7)
                  srai       t1, t2, 6
                  mulh       a7, s5, t6
                  c.srli     a0, 11
                  xor        a2, s7, t0
                  srli       t1, s7, 5
                  sub        ra, t4, s1
                  csrrci     zero, 0x340, 1
                  lbu        t3, -684(s7)
                  sh         t0, -1633(s7)
                  slt        a3, sp, a7
                  sub        a3, t6, s2
                  sb         s3, -1721(s7)
                  sb         s3, -1524(s7)
                  c.li       tp, -1
                  lbu        s2, -1093(s7)
                  sb         s7, -1577(s7)
                  mulh       t4, a7, tp
                  sb         a6, -278(s7)
                  sb         zero, -285(s7) #end riscv_load_store_rand_instr_stream_7
                  mulh       s3, t2, s9
                  csrrci     s11, 0x340, 8
                  and        a7, t5, a0
                  remu       zero, a3, tp
                  c.mv       s10, s6
                  c.mv       s11, a2
                  c.beqz     a0, 1169f
                  bne        a7, s3, 1164f
                  sll        s5, s11, a7
                  c.or       s0, s1
                  srl        t4, a0, s5
                  div        a7, a1, s6
                  c.mv       s3, a4
                  slt        s0, t5, gp
                  c.srli     a0, 20
                  add        a7, a4, s2
                  sra        a2, a6, s9
                  mulhu      s6, t1, s11
                  srli       a7, zero, 5
1163:             c.andi     a1, -1
1164:             sltu       s9, s8, s2
                  blt        ra, s2, 1180f
                  sub        s6, a6, t5
                  bge        s1, s11, 1182f
                  mulhu      s3, s1, t6
1169:             divu       a6, a5, t5
                  mulhsu     s2, t0, s5
                  bltu       t5, s7, 1175f
                  mulh       s4, zero, s6
                  fence
                  nop
1175:             slli       s4, s4, 13
                  sub        a6, t3, t1
                  div        s5, a7, ra
                  bge        s10, t3, 1180f
                  or         s8, t1, t3
1180:             andi       s3, a1, -39
                  mulh       t1, a3, a4
1182:             divu       t6, s0, gp
                  bltu       s7, s11, 1192f
                  csrrw      a1, 0x340, s8
                  c.sub      a0, a5
                  c.andi     a2, 31
                  c.xor      a0, a5
                  and        a0, gp, a4
                  and        t4, a2, tp
                  csrrs      s3, 0x340, s9
                  bne        zero, a5, 1202f
1192:             fence
                  sltiu      s11, s11, 992
                  bltu       a3, a4, 1196f
                  mulh       a4, t5, a4
1196:             csrrci     a4, 0x340, 0
                  div        a4, t5, tp
                  slli       s10, a5, 24
                  c.or       s0, a3
                  andi       a1, s6, 868
                  slti       s0, a0, -575
1202:             bltu       t6, sp, 1211f
                  c.sub      a1, a0
                  andi       zero, t1, 609
                  or         t4, t3, a2
                  c.bnez     a0, 1220f
                  bne        s1, a6, 1222f
                  divu       t6, t2, t2
                  bge        s4, a1, 1221f
                  slti       ra, ra, 389
1211:             mul        t0, s4, s8
                  c.li       s2, -1
                  csrrsi     ra, 0x340, 2
                  rem        zero, gp, s1
                  bne        zero, s8, 1230f
                  auipc      s5, 132962
                  c.srli     s0, 26
                  fence
                  beq        a1, ra, 1238f
1220:             c.srai     a0, 19
1221:             c.andi     s1, 22
1222:             bge        t4, s5, 1240f
                  c.nop
                  div        a2, s9, a4
                  slti       s0, a1, -625
                  srai       a6, a2, 24
                  nop
                  c.addi     s6, 14
                  c.beqz     s0, 1244f
1230:             srai       s10, s1, 8
                  or         t5, s7, s8
                  divu       s9, zero, zero
                  c.addi     s7, 3
                  lui        t5, 130015
                  c.or       s0, s0
                  blt        s0, s7, 1245f
                  rem        s11, a6, s1
1238:             csrrw      t1, 0x340, a0
                  bltu       tp, s11, 1258f
1240:             add        s9, a1, a3
                  c.bnez     a5, 1258f
                  sll        t6, t6, t1
                  addi       t4, s3, -862
1244:             c.srli     a3, 3
1245:             c.or       a2, a2
                  mulh       t5, t5, s10
                  csrrs      ra, 0x340, s4
                  c.and      s1, a4
                  srl        s6, s5, t6
                  xor        s10, a4, s6
                  c.slli     t6, 3
                  rem        tp, a6, a2
                  c.xor      a4, s0
                  addi       a2, t2, -984
                  add        s9, s10, s3
                  and        t5, s1, ra
                  c.add      s4, s1
1258:             mulhsu     s5, t4, a7
                  c.addi     t4, -1
                  mul        t4, s4, t5
                  fence.i
                  c.and      a0, a4
                  sra        a1, t6, a1
                  mul        a6, t1, t1
                  c.addi     t3, -1
                  fence.i
                  beq        s6, a1, 1280f
                  slti       t5, a6, 505
                  slli       s7, t6, 8
                  srai       s5, gp, 29
                  and        a1, s3, tp
                  csrrw      ra, 0x340, a3
                  c.nop
                  andi       a6, s9, 832
                  fence
                  xor        a1, a6, a2
                  c.xor      a4, a4
                  or         ra, s9, t3
                  sltu       s7, a2, s8
1280:             beq        s9, zero, 1282f
                  slli       s2, s9, 12
1282:             nop
                  rem        s8, a7, a0
                  remu       s2, s0, ra
                  or         t3, t5, t3
                  remu       a3, a2, tp
                  remu       s0, s11, s0
                  slti       s5, sp, 862
                  andi       s2, s5, -257
                  ori        s5, s4, -968
                  auipc      a1, 65784
                  c.bnez     s0, 1295f
                  c.nop
                  c.srli     a3, 16
1295:             lui        a0, 166002
                  fence
                  mulhsu     s9, s2, zero
                  mulhsu     a5, s6, s4
                  c.andi     a2, -1
                  div        s10, a2, a1
                  div        s0, a4, s3
                  sltu       t0, a4, t2
                  bgeu       t1, s3, 1318f
                  or         t6, t3, t2
                  c.addi     ra, 25
                  bge        t2, a7, 1313f
                  csrrc      tp, 0x340, s5
                  slli       t1, s5, 13
                  fence.i
                  c.bnez     s0, 1312f
                  c.slli     s9, 23
1312:             addi       s11, s2, -952
1313:             bltu       s11, sp, 1316f
                  mulh       s7, t5, a3
                  csrrs      a6, 0x340, s4
1316:             c.beqz     s0, 1318f
                  sra        t5, s1, a3
1318:             c.beqz     a5, 1323f
                  bgeu       a3, s9, 1333f
                  or         tp, a3, s5
                  c.or       a1, a4
                  addi       t6, a0, -282
1323:             andi       ra, s1, 362
                  sra        t1, t6, t3
                  c.srai     a3, 1
                  c.addi     a7, -1
                  csrrsi     s8, 0x340, 21
                  c.lui      ra, 17
                  bne        t5, t6, 1331f
                  c.sub      a4, a1
1331:             lui        s0, 949395
                  srli       t3, zero, 20
1333:             csrrci     tp, 0x340, 31
                  ori        tp, a7, 356
                  slti       s11, s4, 738
                  bgeu       a7, t5, 1356f
                  slli       s7, s6, 30
                  c.beqz     s1, 1347f
                  andi       s3, t3, -652
                  xori       a0, s5, -895
                  xor        t5, tp, s1
                  addi       a2, ra, -37
                  csrrw      zero, 0x340, t2
                  xor        a5, s5, s6
                  lui        tp, 619849
                  add        t3, t0, s11
1347:             slt        s9, t1, t2
                  c.lui      s3, 14
                  c.and      a1, s0
                  nop
                  bgeu       s2, t0, 1370f
                  bgeu       t5, a1, 1354f
                  srai       s4, a0, 2
1354:             csrrs      a7, 0x340, s11
                  mul        a6, t5, sp
1356:             sltu       s3, s1, s11
                  fence.i
                  or         zero, a7, ra
                  c.mv       s8, a5
                  auipc      s1, 953442
                  bne        s5, a1, 1364f
                  srli       a2, t0, 13
                  c.add      s10, t6
1364:             sub        s7, s1, zero
                  srli       t4, a0, 5
                  c.add      ra, a5
                  slt        t1, s5, a0
                  c.nop
                  c.beqz     a2, 1384f
1370:             lui        a0, 963923
                  c.andi     a4, -1
                  srai       s0, s9, 9
                  div        s8, s9, s4
                  bltu       s3, a6, 1393f
                  c.mv       s6, a1
                  c.mv       tp, a7
                  c.srai     a0, 5
                  and        a0, gp, t4
                  c.lui      a6, 31
                  slli       t4, s10, 16
                  c.xor      a1, a1
                  c.li       a2, -1
                  sltiu      s9, a6, 287
1384:             csrrc      zero, 0x340, a6
                  and        s6, s4, s3
                  divu       t0, s8, s7
                  mulh       a0, t0, a7
                  slt        a1, s1, a7
                  bge        a7, s8, 1398f
                  c.or       a3, a0
                  c.sub      a5, a0
                  mulh       s9, s8, a0
1393:             auipc      ra, 59006
                  c.nop
                  csrrs      t3, 0x340, a5
                  fence
                  sltu       s1, t2, s4
1398:             andi       a4, s11, -462
                  slli       s0, tp, 16
                  srli       a4, s0, 1
                  c.sub      s0, a3
                  fence
                  rem        s0, s5, gp
                  bgeu       a3, s2, 1419f
                  c.xor      a2, a2
                  mulhu      s6, t3, s7
                  xori       s4, s7, 960
                  bge        s2, s5, 1425f
                  bne        s4, s6, 1418f
                  divu       t3, s10, s5
                  rem        s8, t0, sp
                  ori        s6, s0, 613
                  c.addi     a1, 29
                  or         zero, t3, s10
                  mul        a7, s11, a1
                  sltiu      s10, sp, -337
                  or         s2, a3, sp
1418:             csrrc      s2, 0x340, a3
1419:             srai       t5, a5, 26
                  c.lui      s7, 17
                  ori        ra, s5, 761
                  fence
                  add        s3, s2, tp
                  c.or       a5, s0
1425:             add        a5, a6, s2
                  sll        t5, s10, s4
                  xori       a6, ra, 203
                  csrrwi     a2, 0x340, 20
                  c.lui      a1, 13
                  srai       s2, a0, 23
                  c.sub      a5, a5
                  and        ra, a4, tp
                  csrrwi     tp, 0x340, 17
                  csrrs      t3, 0x340, a3
                  csrrs      s6, 0x340, ra
                  sltiu      s7, a5, -264
                  srai       s3, a6, 14
                  or         a5, t2, s2
                  c.bnez     a0, 1442f
                  auipc      s0, 292914
                  c.and      s1, s1
1442:             rem        t5, s0, s3
                  c.andi     a2, 3
                  mulh       t6, t0, s7
                  xori       s11, s4, 2
                  add        s4, s9, zero
                  mulhu      zero, s9, zero
                  csrrc      s9, 0x340, zero
                  mulh       zero, a5, a1
                  slt        a1, s0, s5
                  beq        s9, s3, 1455f
                  c.srli     a0, 23
                  mul        s6, s0, s0
                  c.or       a0, a3
1455:             div        s10, s10, s0
                  mulh       tp, a2, ra
                  divu       t0, t5, t6
                  c.beqz     a2, 1473f
                  c.li       a2, 17
                  xori       s0, a3, 514
                  andi       a6, gp, -393
                  c.xor      a0, s0
                  bge        tp, s5, 1481f
                  c.nop
                  div        a3, s6, t4
                  bne        s1, t6, 1479f
                  auipc      a2, 656331
                  beq        sp, s10, 1480f
                  mul        s3, s8, t1
                  beq        s4, ra, 1481f
                  nop
                  c.or       a4, a3
1473:             and        s3, s1, t3
                  remu       t0, ra, s11
                  c.slli     t6, 21
                  csrrc      s6, 0x340, s8
                  csrrs      s6, 0x340, t6
                  sll        t1, zero, s8
1479:             and        s3, s6, s6
1480:             mulhu      s10, zero, s9
1481:             ori        t5, t6, 227
                  ori        t1, t4, -528
                  sltu       s2, a3, a5
                  and        t6, a3, s4
                  c.mv       a6, t5
                  and        a4, a2, s9
                  srl        a5, t1, t1
                  c.or       a1, a0
                  c.mv       s8, a5
                  bge        s1, s5, 1505f
                  addi       a4, s10, -220
                  xor        s8, s1, s11
                  slli       s10, ra, 29
                  mulhu      t6, s10, ra
                  mulh       t6, t6, s8
                  bgeu       tp, s2, 1505f
                  and        a6, a5, a6
                  and        a2, s8, tp
                  c.andi     a4, 30
                  rem        a2, a3, s8
                  c.sub      a0, a4
                  c.andi     a4, 31
                  sub        s8, s8, a4
                  srli       s7, s3, 9
1505:             mulh       a7, s6, gp
                  slli       a1, s4, 21
                  blt        s2, tp, 1522f
                  auipc      t3, 503705
                  slli       a6, s8, 24
                  c.sub      s0, s1
                  csrrci     a5, 0x340, 18
                  nop
                  nop
                  c.andi     s1, 9
                  sltu       s9, tp, t3
                  add        zero, t6, zero
                  slti       s1, t3, -555
                  and        ra, a5, s6
                  c.or       a1, a2
                  sra        zero, s2, a3
                  srl        s5, a4, s6
1522:             csrrwi     s0, 0x340, 20
                  c.nop
                  c.xor      a4, a2
                  rem        ra, a3, t1
                  beq        s0, tp, 1541f
                  c.mv       t1, sp
                  csrrs      a1, 0x340, a4
                  c.lui      s4, 2
                  csrrwi     s6, 0x340, 1
                  c.or       a2, a3
                  srli       a1, t1, 15
                  andi       s3, sp, -857
                  c.lui      t6, 25
                  bne        t4, tp, 1548f
                  c.nop
                  ori        tp, tp, -545
                  c.nop
                  fence.i
                  c.addi     a2, -1
1541:             c.andi     a1, 16
                  mulhsu     a3, s7, s0
                  bltu       zero, s3, 1550f
                  fence.i
                  fence.i
                  ori        s6, a0, 149
                  bltu       gp, t4, 1566f
1548:             or         s3, a0, s5
                  bne        t4, s11, 1551f
1550:             srli       a2, a2, 31
1551:             csrrw      tp, 0x340, a6
                  nop
                  slt        s2, ra, t4
                  csrrs      t1, 0x340, ra
                  c.addi     t0, -1
                  sltiu      tp, sp, -177
                  c.srli     a3, 5
                  mulh       t1, t0, t4
                  and        s4, ra, a2
                  srai       t6, a5, 3
                  srli       t3, a7, 25
                  nop
                  c.bnez     a3, 1565f
                  srai       a2, s9, 22
1565:             divu       s6, t5, gp
1566:             xori       t5, a2, 567
                  c.andi     s1, -1
                  divu       s11, t2, s2
                  fence
                  xor        a4, s8, t2
                  rem        ra, s10, a3
                  sll        s10, tp, s1
                  c.slli     t4, 14
                  fence
                  c.add      tp, t4
                  fence.i
                  beq        s1, a4, 1597f
                  add        s8, a3, t1
                  srli       a0, t0, 16
                  slt        a0, s8, t4
                  srli       t0, s2, 23
                  ori        s2, a7, -513
                  c.and      a4, a2
                  mulh       s6, ra, t4
                  ori        s1, sp, 351
                  andi       a7, a5, 521
                  mulhu      s3, a6, t1
                  c.sub      a1, a5
                  slti       s0, t1, 416
                  or         s0, a3, t4
                  rem        t6, t5, s2
                  sltiu      s4, s1, -138
                  c.srli     a1, 16
                  srai       s9, a6, 28
                  ori        s3, s0, 724
                  sll        s8, t0, s5
1597:             sra        t1, s0, a7
                  mulhu      ra, s2, a6
                  fence
                  c.li       ra, -1
                  csrrs      zero, 0x340, a6
                  csrrwi     s11, 0x340, 4
                  c.add      s0, ra
                  srai       t0, t5, 15
                  mul        s5, a2, t6
                  xor        t4, t3, ra
                  sub        a1, t1, t5
                  blt        gp, a4, 1621f
                  auipc      s7, 117033
                  or         ra, ra, t6
                  csrrw      tp, 0x340, a4
                  csrrw      s3, 0x340, a2
                  srai       a7, s8, 13
                  fence.i
                  blt        s6, s3, 1624f
                  c.srai     a0, 10
                  srai       s0, s6, 1
                  c.nop
                  c.xor      a4, a1
                  csrrc      s5, 0x340, s2
1621:             bge        t5, t5, 1623f
                  andi       s0, s11, 822
1623:             bge        s11, s4, 1630f
1624:             c.srli     a2, 9
                  slt        s11, zero, t3
                  bne        zero, s3, 1641f
                  c.nop
                  sll        t6, s11, a4
                  xor        a3, a7, a7
1630:             auipc      s5, 737575
                  sra        s9, ra, gp
                  lui        zero, 724947
                  c.nop
                  rem        t1, s2, s3
                  lui        t3, 40831
                  addi       a2, sp, 711
                  sltu       a7, t2, s10
                  c.add      a0, s5
                  c.bnez     a0, 1658f
                  bne        s0, sp, 1649f
1641:             nop
                  remu       s9, s9, a6
                  mulh       s4, sp, s11
                  div        a0, s4, s11
                  or         s8, tp, sp
                  addi       t0, a3, -826
                  c.nop
                  csrrwi     t6, 0x340, 26
1649:             blt        sp, s2, 1661f
                  c.beqz     a4, 1661f
                  xor        s9, s6, t2
                  sra        ra, tp, tp
                  csrrwi     a0, 0x340, 24
                  andi       a6, t4, -973
                  c.srai     a2, 29
                  remu       t3, a4, s5
                  bne        s1, s9, 1666f
1658:             c.or       s1, a2
                  csrrc      zero, 0x340, s11
                  mulh       a5, tp, a5
1661:             c.sub      a3, a3
                  c.add      t1, s9
                  divu       s8, a3, s11
                  mulhsu     s1, a1, a7
                  mul        t6, t5, a6
1666:             xor        s2, zero, a5
                  c.nop
                  mul        t1, a1, t5
                  add        tp, sp, t2
                  c.bnez     a1, 1675f
                  bne        s1, s8, 1686f
                  mulhu      t4, a0, s1
                  c.or       a3, a3
                  slt        a7, gp, s1
1675:             mul        s5, sp, a5
                  xori       s4, s2, 477
                  blt        gp, a7, 1696f
                  c.mv       s4, s11
                  c.sub      a4, a3
                  c.xor      a5, a1
                  addi       s9, s3, -967
                  sra        s10, s2, a0
                  or         a3, a7, a6
                  sltiu      s1, s2, -30
                  rem        a0, t2, a4
1686:             c.srli     a4, 8
                  csrrw      a5, 0x340, a1
                  c.beqz     s1, 1707f
                  c.add      t1, t6
                  addi       s9, s11, -762
                  c.or       s1, s1
                  mulhsu     s8, t3, s8
                  bne        tp, t3, 1696f
                  sltu       zero, sp, t5
                  c.addi     a7, 16
1696:             add        s10, t0, a5
                  add        s8, a7, s6
                  c.nop
                  andi       s6, a6, 1018
                  c.li       s9, -1
                  slti       ra, tp, 107
                  mul        s4, t2, s1
                  addi       a4, a5, -857
                  auipc      ra, 350441
                  bgeu       a3, ra, 1720f
                  fence.i
1707:             csrrci     s1, 0x340, 23
                  addi       s8, gp, -14
                  csrrs      s10, 0x340, s9
                  blt        a6, s5, 1725f
                  mulhsu     s8, a0, s9
                  xori       t3, s6, 374
                  csrrs      t6, 0x340, s10
                  sub        s6, t3, t4
                  addi       a4, s5, -908
                  c.slli     t6, 8
                  nop
                  c.li       s11, 5
                  slt        s3, zero, t1
1720:             srai       a5, s11, 5
                  csrrsi     tp, 0x340, 16
                  srl        s6, ra, s3
                  c.lui      s4, 3
                  srai       a2, s0, 28
1725:             srai       a3, a2, 27
                  srli       a6, a5, 23
                  csrrw      a1, 0x340, t2
                  blt        t2, s7, 1731f
                  c.addi     s10, -1
                  csrrw      a3, 0x340, a2
1731:             c.beqz     a1, 1735f
                  sltiu      a7, tp, 682
                  mulhu      a2, t1, t1
                  add        t6, a3, s10
1735:             c.addi     t4, -1
                  c.xor      s1, a0
                  sltu       s10, s1, t3
                  c.mv       t3, s10
                  csrrc      a7, 0x340, s1
                  csrrwi     ra, 0x340, 23
                  auipc      s3, 1014510
                  c.addi     a4, 18
                  c.lui      a1, 12
                  sltu       tp, s6, tp
                  mulhu      a7, s9, gp
                  c.mv       s6, s0
                  blt        t6, a0, 1749f
                  sll        a0, gp, a7
1749:             c.or       s0, s1
                  nop
                  c.nop
                  c.nop
                  srai       t1, a7, 13
                  beq        t2, s7, 1767f
                  and        s0, t2, s2
                  mulh       t5, t4, s8
                  sub        s9, s6, t1
                  sltu       a5, sp, a1
                  bne        t0, t0, 1768f
                  c.addi     a5, 20
                  slli       s2, s1, 7
                  c.lui      s9, 16
                  csrrwi     s5, 0x340, 21
                  sll        s6, t2, s1
                  mulhsu     zero, s6, s11
                  bge        t0, s9, 1780f
1767:             bgeu       sp, s2, 1782f
1768:             auipc      s0, 507669
                  c.lui      s5, 13
                  c.xor      a0, a0
                  c.li       tp, 26
                  sra        s5, a0, s9
                  blt        gp, gp, 1788f
                  nop
                  mulhu      a1, a2, a6
                  fence
                  beq        a2, a0, 1779f
                  srai       s1, ra, 15
1779:             sltu       a3, t3, a0
1780:             add        s10, a1, sp
                  c.addi     s10, 20
1782:             rem        s1, s0, s9
                  and        s9, a2, s5
                  xori       s1, s7, 656
                  slt        a6, a0, t2
                  xor        a1, t4, sp
                  fence
1788:             c.srai     a2, 26
                  slt        ra, sp, t1
                  slli       s4, a7, 11
                  sltu       s4, s0, tp
                  bne        s5, s7, 1810f
                  c.srai     s0, 25
                  c.andi     a1, -1
                  c.sub      a5, s0
                  beq        t2, t3, 1813f
                  or         a0, tp, s10
                  c.srai     a0, 11
                  auipc      s2, 585255
                  c.xor      a0, a1
                  srai       t4, s3, 6
                  csrrw      a3, 0x340, s0
                  rem        a3, s7, a7
                  rem        t1, s2, tp
                  c.andi     a0, 1
                  slli       a3, s1, 7
                  and        s3, a6, t0
                  mulh       s4, gp, zero
                  c.nop
1810:             remu       t6, t3, a3
                  slt        t0, s6, sp
                  bge        a1, t6, 1827f
1813:             srai       t4, s10, 3
                  c.xor      a0, a1
                  mulh       a4, a1, a2
                  c.addi     s11, -1
                  div        zero, t1, s3
                  c.beqz     s1, 1821f
                  srl        s6, ra, t0
                  nop
1821:             c.mv       t3, s6
                  beq        a1, s10, 1841f
                  c.andi     a4, -1
                  xori       t4, s3, 506
                  bgeu       a3, a5, 1827f
                  mulhu      s2, t0, t3
1827:             c.andi     a3, 2
                  c.bnez     a5, 1837f
                  c.sub      a5, a0
                  bltu       sp, s10, 1835f
                  andi       s1, s11, -531
                  c.add      t3, s8
                  fence
                  div        s6, t2, t2
1835:             srli       s4, sp, 31
                  c.xor      s0, a5
1837:             csrrwi     a6, 0x340, 16
                  mul        t1, a5, s6
                  bgeu       s0, t6, 1841f
                  csrrs      zero, 0x340, a2
1841:             c.li       a7, 31
                  and        s5, s1, a1
                  csrrw      ra, 0x340, a5
                  sltu       s6, a4, a4
                  sll        a6, s4, s5
                  mulhsu     s6, t3, a1
                  c.lui      a5, 19
                  bltu       t2, s2, 1863f
                  c.or       a5, a2
                  c.mv       t0, t3
                  c.addi     a4, -1
                  slt        a6, a7, t0
                  add        t4, s1, gp
                  bltu       s3, s0, 1865f
                  andi       t3, sp, 211
                  mulhu      s5, a4, a3
                  slt        a6, tp, sp
                  and        a0, a3, sp
                  mulhu      zero, s2, gp
                  c.slli     s1, 20
                  addi       ra, s0, 610
                  sra        tp, s3, s11
1863:             c.nop
                  csrrwi     a7, 0x340, 1
1865:             and        s8, tp, a1
                  c.lui      a3, 22
                  c.addi     tp, 19
                  bne        s8, zero, 1877f
                  andi       s1, sp, -964
                  addi       s6, ra, -687
                  nop
                  c.srai     a0, 7
                  addi       a2, a0, -724
                  xori       s8, t4, -37
                  div        s4, zero, s4
                  sltu       tp, a1, sp
1877:             c.xor      a2, a4
                  c.andi     s1, 10
                  sub        s3, a4, t5
                  rem        s8, s0, zero
                  slt        s4, a3, t4
                  ori        s7, s2, 97
                  srl        s9, s8, s2
                  c.srai     a2, 11
                  c.andi     a5, -1
                  ori        t0, t3, -754
                  c.mv       a3, a1
                  srai       t5, a1, 6
                  or         a2, s1, t3
                  blt        t4, s1, 1908f
                  divu       t6, t5, a7
                  fence
                  and        s9, a2, s8
                  bltu       a6, a1, 1909f
                  c.beqz     a1, 1914f
                  srai       t1, t6, 5
                  andi       zero, a1, 192
                  sltu       s8, sp, t5
                  c.or       a0, a0
                  slti       t5, s4, -22
                  nop
                  lui        ra, 384755
                  c.or       s1, s1
                  remu       s10, s11, a1
                  beq        a7, s7, 1925f
                  auipc      s5, 317202
                  c.andi     a0, -1
1908:             c.bnez     a2, 1910f
1909:             csrrc      s7, 0x340, t0
1910:             c.sub      a3, s1
                  c.addi     s4, -1
                  and        a7, t4, a5
                  csrrwi     s3, 0x340, 4
1914:             mul        s0, t4, t5
                  csrrc      s5, 0x340, t4
                  srli       s0, t1, 9
                  c.andi     a3, 16
                  csrrsi     s2, 0x340, 16
                  nop
                  c.srai     s0, 18
                  slli       s5, a0, 15
                  c.mv       ra, gp
                  c.nop
                  c.bnez     s0, 1939f
1925:             remu       s8, t5, s10
                  csrrsi     s6, 0x340, 4
                  c.bnez     a4, 1931f
                  andi       s5, t3, -703
                  sltiu      tp, s0, 813
                  slt        s6, s9, s6
1931:             div        a4, a5, ra
                  c.beqz     a2, 1947f
                  la         a2, region_2+4936 #start riscv_load_store_rand_instr_stream_0
                  lbu        a3, -251(a2)
                  csrrc      s9, 0x340, s7
                  sb         a6, 191(a2)
                  c.mv       s8, a0
                  csrrw      t5, 0x340, s4
                  lbu        s9, 3(a2)
                  c.xor      a1, a1
                  lh         a6, 162(a2)
                  c.mv       t0, t1
                  lbu        a1, 46(a2)
                  lw         a3, -124(a2)
                  sltu       t4, t0, tp
                  xori       tp, gp, -650
                  lbu        s9, 35(a2)
                  lb         zero, 242(a2)
                  lw         t6, 140(a2)
                  srai       tp, s1, 9
                  c.add      a4, a2
                  sb         sp, 52(a2)
                  sh         s9, -96(a2)
                  sb         s11, -191(a2)
                  sh         t2, 228(a2)
                  sub        s7, s10, tp
                  auipc      a4, 843973
                  lbu        s11, 213(a2)
                  lbu        s10, 120(a2)
                  c.lui      s10, 14
                  c.li       s8, 4
                  auipc      t6, 843261
                  c.sw       a1, 88(a2)
                  mul        a4, a3, s2
                  lbu        a4, 201(a2)
                  fence
                  lhu        t3, 186(a2)
                  sb         s2, 59(a2)
                  lb         s11, 47(a2)
                  c.add      s0, a0
                  lh         s11, -12(a2)
                  c.li       t0, -1
                  sll        s4, t1, sp
                  lbu        s5, -116(a2)
                  sw         t1, 72(a2)
                  lb         s6, 51(a2)
                  xor        a5, t2, gp
                  slti       t5, s10, -474
                  slt        ra, a2, s8
                  sb         t0, -155(a2)
                  sh         tp, 164(a2)
                  lb         a0, -104(a2)
                  lb         t3, 16(a2) #end riscv_load_store_rand_instr_stream_0
                  c.andi     s0, 18
                  c.lui      s3, 4
                  fence
                  andi       s10, tp, 647
                  c.or       a5, s1
                  slli       a1, s5, 19
1939:             c.bnez     a2, 1954f
                  rem        a4, s10, a1
                  rem        a4, a0, ra
                  ori        s10, a7, 268
                  c.add      a2, a1
                  add        t0, s9, t2
                  bltu       a6, s11, 1959f
                  sltu       s9, t0, tp
1947:             c.bnez     a4, 1960f
                  c.li       tp, -1
                  srai       a4, a4, 4
                  c.slli     s10, 14
                  sub        s3, t3, gp
                  blt        a0, s10, 1961f
                  c.beqz     a2, 1972f
1954:             divu       s2, a3, a6
                  add        s2, ra, s9
                  beq        s10, s3, 1968f
                  nop
                  sra        a5, t5, s9
1959:             blt        t1, tp, 1972f
1960:             add        s5, t1, a2
1961:             fence.i
                  c.slli     s4, 10
                  c.slli     s7, 6
                  sra        s1, ra, sp
                  csrrci     zero, 0x340, 30
                  c.srai     a5, 16
                  slt        t3, t6, s7
1968:             addi       ra, a2, 858
                  c.li       s10, 8
                  blt        a3, a2, 1972f
                  c.or       a1, a1
1972:             bltu       s5, t4, 1989f
                  c.sub      a0, s1
                  c.beqz     s0, 1981f
                  srai       s10, a2, 14
                  blt        a1, t1, 1985f
                  slti       t5, s4, 950
                  div        s0, a6, a6
                  mulhsu     zero, s5, s6
                  mul        a6, a2, sp
1981:             add        s8, s3, s3
                  blt        a0, zero, 1985f
                  remu       a1, a4, t2
                  c.beqz     s1, 1987f
1985:             slt        a2, a0, tp
                  bne        t1, t3, 2003f
1987:             srl        a1, t4, s10
                  c.slli     a5, 18
1989:             mulhu      t6, s11, a3
                  and        a6, a2, s4
                  auipc      s6, 51847
                  div        ra, a0, s8
                  sra        t3, a6, a3
                  lui        s3, 550540
                  c.andi     a0, -1
                  srli       s8, a5, 18
                  c.srai     a4, 31
                  slli       s6, a0, 22
                  div        s8, sp, t0
                  csrrc      t1, 0x340, s8
                  lui        ra, 103183
                  c.slli     a1, 16
2003:             slt        a4, a0, a0
                  sltu       a2, s7, s2
                  c.sub      a3, a2
                  bltu       s4, t1, 2008f
                  c.slli     a7, 17
2008:             lui        t3, 472999
                  sll        s6, s2, t4
                  bgeu       s1, s7, 2012f
                  ori        a6, a0, 399
2012:             xor        s4, t3, s2
                  fence
                  blt        t2, zero, 2026f
                  csrrc      t3, 0x340, gp
                  csrrci     t3, 0x340, 18
                  c.sub      a2, s1
                  xor        s3, t2, s1
                  c.bnez     a3, 2028f
                  or         tp, ra, a0
                  bltu       s7, s0, 2036f
                  c.slli     tp, 15
                  c.xor      s0, a4
                  bne        tp, t0, 2042f
                  auipc      a5, 434946
2026:             xor        s10, s9, s5
                  divu       a7, s9, zero
2028:             auipc      zero, 992134
                  bgeu       s9, s4, 2044f
                  lui        a0, 411733
                  c.nop
                  bltu       s8, gp, 2046f
                  c.mv       a4, t4
                  xor        tp, t2, s9
                  ori        a0, s3, 126
2036:             c.nop
                  csrrs      zero, 0x340, s5
                  fence.i
                  add        s10, t6, t5
                  sll        s11, ra, t0
                  mulhsu     zero, a4, s11
2042:             lui        t4, 604028
                  srl        t1, t2, t4
2044:             mul        a2, s11, a7
                  csrrs      a2, 0x340, s5
2046:             mulhu      a5, s5, t1
                  bne        s8, s3, 2056f
                  c.add      s1, gp
                  or         t1, a2, t3
                  add        a0, s4, s6
                  c.addi     t0, 2
                  rem        t4, a3, s5
                  c.bnez     a0, 2058f
                  slt        s11, s3, t5
                  c.and      a4, a1
2056:             c.srai     a0, 25
                  c.srai     a2, 23
2058:             or         s0, sp, a5
                  c.beqz     a3, 2072f
                  csrrw      t3, 0x340, s5
                  bge        zero, s1, 2068f
                  c.add      s9, s7
                  sltiu      s11, t1, 635
                  bne        s0, sp, 2077f
                  sltiu      a5, s5, -469
                  bgeu       a3, s4, 2086f
                  csrrw      s3, 0x340, s3
2068:             add        a6, t3, tp
                  srli       s3, t3, 18
                  c.mv       s1, s4
                  slti       s5, tp, -871
2072:             csrrwi     s0, 0x340, 6
                  csrrsi     s4, 0x340, 25
                  sltiu      s11, s8, 164
                  xori       s6, a0, 423
                  csrrw      s3, 0x340, s5
2077:             ori        s11, gp, 810
                  slt        a4, s4, a2
                  c.nop
                  csrrci     s10, 0x340, 14
                  c.add      t6, s5
                  sra        s3, s11, a4
                  csrrw      a5, 0x340, a5
                  fence
                  ori        s10, t4, -722
2086:             srai       s4, a6, 29
                  xor        zero, a0, a6
                  or         s8, t6, a2
                  blt        t6, t5, 2108f
                  ori        ra, zero, -706
                  c.li       s0, 10
                  sltu       tp, t4, a5
                  nop
                  c.mv       s9, a3
                  c.bnez     a2, 2106f
                  c.xor      a2, a4
                  andi       a5, s7, 794
                  c.nop
                  remu       a6, a6, sp
                  and        a2, a5, t3
                  c.xor      a0, a2
                  c.and      a5, a5
                  slt        zero, tp, a3
                  nop
                  mulhu      zero, gp, t2
2106:             c.beqz     a0, 2121f
                  or         s0, s10, s0
2108:             bgeu       s8, a2, 2127f
                  c.or       s1, a4
                  srai       t0, a7, 10
                  mulhsu     tp, ra, t4
                  c.or       a4, a4
                  xori       s0, a5, -590
                  sub        s5, a6, ra
                  xori       s11, a3, -703
                  ori        a7, s4, 748
                  xor        s2, t3, zero
                  mulh       s4, s3, s11
                  srl        a2, s9, a3
j_sub_1_sub_2_2:  jal        s11, sub_2
                  srl        s9, a4, zero
                  mulhu      s4, tp, tp
                  c.xor      s1, s1
                  csrrw      t0, 0x340, s10
                  beq        t5, t4, 2120f
                  xori       t5, t0, 710
2120:             slti       a3, s3, -442
2121:             mulhu      a4, t4, t4
                  or         t1, s8, t6
                  c.sub      s0, a2
                  bne        s8, s3, 2133f
                  c.mv       tp, t2
                  csrrc      a6, 0x340, s1
2127:             fence.i
                  sll        t6, s10, t4
                  slti       a3, s5, 900
                  c.andi     a1, 31
                  c.mv       s1, s8
                  c.or       s0, a0
2133:             addi       t0, s7, 835
                  div        tp, s2, s2
                  xori       a5, s9, 787
                  c.sub      a3, s1
                  lui        s11, 918956
                  c.lui      s10, 21
                  xor        a2, a2, s3
                  mulhu      s2, s10, s2
                  csrrwi     t0, 0x340, 16
                  add        s5, s9, a1
                  add        t1, a6, s0
                  slti       s10, a4, 139
                  mul        t5, zero, a6
                  c.li       s5, 18
                  xor        s8, s4, s3
                  csrrsi     s1, 0x340, 17
                  c.beqz     a5, 2152f
                  c.lui      a6, 3
                  c.andi     a3, 11
2152:             bltu       a3, t5, 2154f
                  c.andi     a2, -1
2154:             slti       s11, t2, 155
                  fence
                  sub        s5, a1, s6
                  c.mv       a2, t6
                  sll        s3, t5, a0
                  mulhu      ra, a1, zero
                  bne        t1, s2, 2175f
                  add        s8, t3, t0
                  and        s0, a6, gp
                  srl        zero, s10, tp
                  c.or       a4, s0
                  c.sub      a3, a0
                  sub        t3, a5, a4
                  xori       s10, s10, -1007
                  ori        ra, s7, 255
                  sra        a7, s8, s10
                  bge        sp, zero, 2174f
                  c.nop
                  xor        s6, tp, t6
                  xor        s4, s4, s9
2174:             mulhu      t6, ra, s4
2175:             srli       a5, sp, 28
                  srl        s7, gp, s2
                  sra        t4, sp, a6
                  c.li       t1, -1
                  bne        gp, tp, 2194f
                  slli       t3, gp, 18
                  sub        t6, gp, a0
                  sll        a2, s11, a6
                  c.andi     s0, 25
                  bge        s0, s10, 2193f
                  rem        s3, t5, a5
                  bge        a5, tp, 2201f
                  sltiu      s1, s2, -946
                  addi       s9, s8, -363
                  nop
                  c.li       s0, 4
                  xor        ra, a7, ra
                  fence
2193:             ori        a5, a1, 1007
2194:             sltu       t5, s11, s10
                  csrrwi     t4, 0x340, 26
                  c.addi     s10, -1
                  sra        t3, t3, s7
                  rem        s1, s5, a4
                  remu       a0, t3, sp
                  addi       s10, s9, 291
2201:             srl        s6, s7, a2
                  c.li       s0, -1
                  remu       a2, a6, s11
                  c.andi     a0, -1
                  srai       s10, s0, 16
                  rem        zero, s7, t3
                  mul        a2, s4, tp
                  c.andi     a0, -1
                  mul        a2, s5, a1
                  rem        s0, s5, t6
                  c.slli     s3, 16
                  srai       a7, tp, 6
                  rem        t4, zero, s5
                  c.andi     a4, -1
                  srli       a4, tp, 5
                  bgeu       s4, t5, 2235f
                  c.addi     a2, -1
                  c.srai     a4, 19
                  c.srai     a2, 9
                  c.nop
                  csrrc      s0, 0x340, t5
                  sra        a7, a1, t2
                  div        ra, s2, s4
                  add        s6, s7, a1
                  xor        s11, t3, s11
                  and        s2, a1, a6
                  c.slli     s4, 25
                  remu       a7, s3, tp
                  c.add      s1, t0
                  sub        t0, s10, s8
                  csrrsi     s4, 0x340, 9
                  srli       tp, a5, 19
                  sll        a6, s4, s0
                  c.slli     s0, 19
2235:             c.andi     s0, 7
                  sll        s8, s0, a6
                  blt        t6, t1, 2252f
                  c.lui      a2, 19
                  bge        s9, gp, 2258f
                  c.andi     s1, 27
                  bltu       s6, sp, 2250f
                  andi       a5, a6, -940
                  slti       s8, s9, -764
                  and        ra, a2, t0
                  nop
                  auipc      a6, 125832
                  c.bnez     a4, 2250f
                  mulhu      s0, s7, s11
                  csrrwi     t0, 0x340, 10
2250:             remu       a6, s2, t6
                  xor        t1, a6, sp
2252:             srl        t6, a5, s3
                  bge        a1, s11, 2264f
                  lui        s5, 637465
                  nop
                  csrrs      a4, 0x340, sp
                  c.xor      a4, a1
2258:             add        s11, ra, t3
                  ori        a6, gp, -661
                  c.addi     s10, 24
                  srai       s2, s5, 31
                  andi       zero, t2, 125
                  c.mv       a7, t2
2264:             csrrw      s9, 0x340, s7
                  srl        s5, a1, t1
                  mulhu      s10, t5, gp
                  c.and      a1, a4
                  and        t6, s5, s1
                  divu       zero, t3, s10
                  bltu       a1, s1, 2275f
                  csrrs      a3, 0x340, s11
                  c.srai     a3, 19
                  nop
                  andi       a7, a0, -977
2275:             mulhu      t1, t0, a0
                  and        a1, a0, ra
                  ori        t5, ra, 268
                  bltu       s5, a1, 2281f
                  csrrc      t6, 0x340, s3
                  xor        s2, a5, tp
2281:             c.beqz     s1, 2283f
                  srai       s9, a7, 30
2283:             nop
                  and        s0, s1, zero
                  div        s8, t2, t1
                  sra        s4, t5, t5
                  slt        a7, s6, s11
                  lui        t4, 574977
                  ori        a2, s1, 59
                  srai       s1, t3, 24
                  blt        t2, a5, 2304f
                  sltiu      zero, s7, 327
                  sll        a4, t6, s8
                  c.and      a0, a3
                  csrrc      a5, 0x340, s3
                  mulhsu     t0, t3, s1
                  c.srai     a2, 27
                  addi       s7, a7, -261
                  c.beqz     a5, 2308f
                  c.and      a3, a4
                  nop
                  sltu       s5, a1, s9
                  c.srai     s0, 21
2304:             blt        zero, s11, 2319f
                  addi       s8, a1, -151
                  c.and      a5, a3
                  sltu       a1, s8, s4
2308:             and        s2, s8, a5
                  sub        t4, s5, s0
                  c.and      s0, a3
                  srai       s11, t5, 21
                  bne        s5, a3, 2326f
                  csrrwi     t4, 0x340, 3
                  addi       tp, sp, 58
                  mulhsu     s8, s1, sp
                  ori        s7, s1, 217
                  add        zero, a3, a6
                  auipc      s1, 549031
2319:             rem        s7, a0, t6
                  lui        a3, 966225
                  rem        t1, t3, a4
                  csrrc      s4, 0x340, s7
                  csrrs      s6, 0x340, s3
                  add        zero, a2, a7
                  c.andi     a0, 31
2326:             srl        t0, t5, s11
                  sra        a2, a2, s3
                  c.addi     s3, -1
                  csrrw      s1, 0x340, s4
                  csrrwi     zero, 0x340, 27
                  sub        tp, a7, a1
                  sll        t1, t0, t1
                  fence
                  srli       t3, a7, 4
                  c.and      a3, s0
                  slt        t4, s2, ra
                  srl        s0, s7, s2
                  add        t0, a3, a1
                  div        s2, s10, a7
                  sltu       s7, t6, s4
                  xori       s10, a7, 270
                  c.or       s1, a3
                  sltu       t4, t4, t5
                  remu       s3, s6, s6
                  or         ra, ra, s9
                  csrrwi     s6, 0x340, 14
                  slti       tp, a6, -530
                  slli       s8, t1, 10
                  sra        a6, t6, s3
                  srai       a4, t1, 14
                  blt        a1, t5, 2370f
                  bne        t5, a1, 2369f
                  c.li       s8, 15
                  blt        a2, t2, 2369f
                  c.li       t1, -1
                  remu       a7, s7, t1
                  and        t6, a1, gp
                  lui        a7, 1045125
                  sra        s6, s5, a1
                  csrrs      s7, 0x340, a0
                  xor        s7, t6, sp
                  c.srli     s0, 28
                  slli       s3, a4, 4
                  or         s7, a1, a0
                  bltu       s3, t2, 2367f
                  sra        s2, s1, a7
2367:             bgeu       gp, s0, 2382f
                  c.addi     s6, -1
2369:             c.beqz     a0, 2373f
2370:             fence.i
                  add        t0, a3, a7
                  bge        s0, gp, 2390f
2373:             slt        t6, s3, a2
                  c.srai     s1, 29
                  nop
                  c.srai     a2, 23
                  sltu       s8, s10, t1
                  c.xor      a4, a3
                  c.andi     a5, -1
                  csrrci     s5, 0x340, 8
                  c.lui      a3, 24
2382:             sltiu      a7, sp, 885
                  srli       s4, t4, 21
                  ori        tp, s10, -1016
                  c.mv       s9, a1
                  rem        s1, a0, t6
                  c.nop
                  csrrwi     s3, 0x340, 13
                  csrrw      s3, 0x340, a1
2390:             bgeu       t2, t3, 2405f
                  sltu       s11, s5, s9
                  mul        a5, s10, a6
                  auipc      zero, 518243
                  lui        s2, 395438
                  csrrci     a0, 0x340, 13
                  beq        a4, a6, 2405f
                  fence.i
                  srli       a1, t1, 21
                  csrrs      a6, 0x340, a7
                  or         t4, tp, t2
                  c.beqz     a4, 2403f
                  fence.i
2403:             slt        s3, a7, t1
                  csrrw      a2, 0x340, t4
2405:             bne        s11, s8, 2417f
                  bge        s8, s3, 2425f
                  c.or       s0, a3
                  csrrsi     s6, 0x340, 8
                  csrrc      a5, 0x340, t5
                  auipc      t6, 198370
                  xor        s6, s3, gp
                  c.beqz     a0, 2419f
                  csrrw      a5, 0x340, s11
                  bltu       s4, s8, 2429f
                  sltiu      a1, s7, -710
                  bne        a7, a0, 2429f
2417:             c.and      a0, a3
                  c.or       a3, s1
2419:             c.and      a5, s0
                  c.nop
                  srl        s1, t1, a5
                  c.srli     a5, 6
                  slti       s10, s5, -439
                  mulhsu     a1, a2, tp
2425:             blt        s5, t0, 2427f
                  srli       a5, a5, 27
2427:             fence.i
                  c.sub      a4, a4
2429:             csrrc      s11, 0x340, s7
                  sltu       s7, a7, s8
                  remu       s1, sp, t0
                  bgeu       s0, a7, 2441f
                  andi       a2, t2, 175
                  c.slli     s4, 13
                  mulhu      t1, s3, s6
                  c.and      s1, s0
                  addi       s2, a1, -1020
                  srai       a2, a2, 22
                  mulhu      t6, s1, t3
                  csrrc      s7, 0x340, s6
2441:             and        s5, s1, a6
                  add        s3, a0, a3
                  bge        s5, a4, 2463f
                  xor        s1, t4, a0
                  blt        t2, s1, 2465f
                  c.addi     s11, -1
                  c.add      s0, gp
                  andi       a3, a6, 870
                  c.and      a2, a3
                  c.bnez     s1, 2461f
                  div        s5, t4, s6
                  lui        s8, 29010
                  bge        ra, sp, 2465f
                  slti       a2, s3, 370
                  c.li       t5, -1
                  c.sub      a1, a0
                  addi       t1, s6, 752
                  csrrc      a2, 0x340, ra
                  c.srli     a2, 13
                  c.beqz     a4, 2462f
2461:             c.beqz     s1, 2464f
2462:             slli       a4, s4, 5
2463:             c.srai     a3, 27
2464:             div        s3, t4, s4
2465:             auipc      a2, 313825
                  lui        t4, 249422
                  csrrwi     a4, 0x340, 9
                  csrrci     t5, 0x340, 21
                  slti       a2, sp, -517
                  bne        s1, s3, 2485f
                  csrrc      s11, 0x340, t4
                  c.srai     a3, 30
                  csrrs      a7, 0x340, t2
                  bltu       t0, t2, 2476f
                  bgeu       a2, s2, 2484f
2476:             slt        a0, t6, s5
                  c.nop
                  c.add      a0, a1
                  c.lui      s5, 30
                  slt        s5, tp, s3
                  c.andi     a2, 0
                  csrrw      t6, 0x340, t1
                  nop
2484:             auipc      s8, 704231
2485:             c.bnez     a5, 2492f
                  remu       t6, sp, t6
                  slt        a3, s3, s4
                  div        s11, t3, t6
                  c.slli     a7, 13
                  srl        s7, s7, gp
                  sra        t4, s10, s9
2492:             bltu       t0, s4, 2511f
                  csrrsi     s6, 0x340, 14
                  csrrwi     s11, 0x340, 17
                  csrrwi     zero, 0x340, 23
                  c.slli     t6, 16
                  c.add      t1, s6
                  bltu       gp, a6, 2513f
                  sub        a7, s3, zero
                  srl        s5, t2, a4
                  c.addi     a5, 3
                  c.xor      a2, a3
                  sltu       s5, s5, a5
                  beq        t1, t3, 2519f
                  c.and      a0, a5
                  csrrw      zero, 0x340, s2
                  or         s2, zero, s7
                  bge        s9, a3, 2510f
                  sll        t0, tp, s9
2510:             srai       a3, t6, 0
2511:             mulhu      s8, a1, t3
                  remu       a5, t2, s6
2513:             mul        a6, a1, t2
                  c.sub      a0, a3
                  c.xor      a2, s1
                  c.li       s5, -1
                  mul        s3, tp, s0
                  srli       t6, t5, 13
2519:             fence.i
                  c.srai     a1, 16
                  srli       tp, t6, 25
                  sra        s3, tp, s3
                  slli       s7, s2, 29
                  xori       s0, a7, -487
                  c.or       a3, a5
                  sra        tp, gp, t5
                  addi       a2, zero, 10 #init loop 0 counter
                  c.li       a5, 7
                  sltu       a3, s10, sp
                  xor        s8, t4, gp
                  nop
                  addi       zero, zero, 0 #init loop 0 limit
                  div        s1, t0, s6
                  slti       s6, s8, 851
sub_1_46_0_t:     or         s1, a4, s6
                  ori        s1, a1, 1009
                  nop
                  addi       a2, a2, -10 #update loop 0 counter
                  srl        s1, t3, a6
                  c.bnez     a2, sub_1_46_0_t #branch for loop 0
                  csrrs      s1, 0x340, a3
                  divu       a0, s9, t1
                  blt        a0, zero, 2541f
                  xori       zero, s0, 157
                  bne        s1, a3, 2549f
                  andi       t4, a5, 791
                  c.beqz     s1, 2534f
                  csrrci     t4, 0x340, 11
2534:             mulhu      a5, a0, s10
                  andi       s4, a7, -131
                  c.sub      a2, a3
                  c.srli     a3, 15
                  c.and      a5, s0
                  rem        tp, a0, a5
                  csrrwi     s11, 0x340, 4
2541:             csrrci     a5, 0x340, 24
                  sltiu      s0, a4, -700
                  fence
                  divu       tp, zero, s11
                  srai       t6, sp, 23
                  divu       s6, s3, s8
                  c.bnez     a3, 2556f
                  c.add      tp, s2
2549:             c.lui      s1, 2
                  slti       a1, s5, -600
                  sll        tp, s11, s8
                  c.bnez     s1, 2555f
                  bne        zero, tp, 2562f
                  nop
                  c.andi     a0, 5
                  andi       t0, ra, -376
                  c.addi     a5, 18
                  c.nop
                  srai       s9, ra, 10
j_sub_1_sub_2_3:  jal        s11, sub_2
2555:             csrrs      t3, 0x340, a0
2556:             srli       s1, s1, 12
                  and        zero, s2, t2
                  c.and      s0, a0
                  slti       s4, gp, 549
                  nop
                  lui        a3, 862809
2562:             csrrc      ra, 0x340, s0
                  lui        s10, 436199
                  mul        s9, tp, a3
                  auipc      t5, 39005
                  srl        s9, ra, t2
                  c.or       a5, a4
                  csrrci     s9, 0x340, 31
                  csrrw      a6, 0x340, zero
                  srl        a7, s11, s3
                  c.mv       a0, s7
                  sltiu      a5, t6, 381
                  bltu       tp, s11, 2588f
                  addi       t0, a4, 870
                  mulhu      s5, s2, s8
                  sll        a6, a0, s6
                  add        a1, t5, t3
                  bge        zero, a6, 2596f
                  sra        s6, s7, s2
                  add        a2, s6, s6
                  divu       a6, a5, s3
                  xor        s11, s6, tp
                  srli       a5, t3, 23
                  sra        s11, s6, s1
                  lui        s10, 217624
                  addi       s9, s8, 563
                  sub        t1, a4, t5
2588:             bgeu       a7, t2, 2592f
                  lui        s2, 557914
                  add        s2, s4, sp
                  divu       t5, s10, a4
2592:             csrrwi     tp, 0x340, 2
                  beq        a6, a1, 2606f
                  add        a3, s4, s3
                  c.sub      a5, a5
2596:             c.xor      s1, a5
                  andi       s11, t3, -415
                  c.xor      a4, s0
                  add        s2, zero, a5
                  srli       a5, zero, 16
                  csrrsi     t1, 0x340, 16
                  c.addi     a6, 1
                  blt        s10, s2, 2617f
                  div        a7, tp, t1
                  bltu       sp, s5, 2622f
2606:             c.mv       s9, s0
                  csrrc      s0, 0x340, t0
                  c.li       s2, -1
                  auipc      t1, 633079
                  c.li       s4, 26
                  mulhsu     a6, s6, s4
                  sub        t3, a3, ra
                  c.li       t3, 28
                  c.li       t4, -1
                  divu       a0, s10, s2
                  xor        s0, a7, t4
2617:             nop
                  addi       t5, s8, -339
                  srl        a4, zero, t3
                  xori       s10, t5, -302
                  csrrc      ra, 0x340, t5
2622:             csrrci     s5, 0x340, 20
                  mulhsu     s3, s9, t5
                  csrrw      a0, 0x340, s4
                  csrrsi     a5, 0x340, 11
                  sub        a1, a3, a2
                  sltiu      t4, a2, -242
                  srl        s0, a0, a7
                  csrrc      s5, 0x340, t3
                  xor        s9, s3, s6
                  sll        t1, a2, t2
                  c.xor      a1, a5
                  c.addi     s0, 15
                  lui        ra, 739908
                  srli       s10, t2, 31
                  srai       t4, zero, 15
                  bltu       s6, t4, 2652f
                  andi       s8, s9, -871
                  nop
                  bge        t3, s10, 2655f
                  slli       a2, t0, 19
                  fence
                  remu       t1, s0, a3
                  c.lui      s5, 3
                  sll        s9, t5, t6
                  bgeu       sp, sp, 2655f
                  lui        zero, 149819
                  sll        t4, a2, s7
                  beq        s11, t6, 2654f
                  auipc      a2, 441745
                  fence
2652:             srli       s1, s4, 4
                  c.addi     s8, 31
2654:             andi       s9, t5, -696
2655:             csrrwi     tp, 0x340, 17
                  sra        s5, t3, a7
                  c.and      s0, a2
                  bltu       s7, a6, 2677f
                  bge        t2, s5, 2674f
                  csrrs      s3, 0x340, s7
                  add        a3, s4, a3
                  csrrc      t1, 0x340, s10
                  lui        s8, 215626
                  divu       s10, s10, a0
                  c.sub      a2, a4
                  nop
                  c.mv       s9, a4
                  beq        t1, s7, 2683f
                  csrrwi     a3, 0x340, 16
                  fence.i
                  c.andi     a4, -1
                  bne        a4, s4, 2674f
                  sra        t5, tp, s2
2674:             xori       s1, s7, -13
                  auipc      a2, 555835
                  c.nop
2677:             csrrsi     a3, 0x340, 24
                  ori        ra, zero, 689
                  slt        t0, t0, a7
                  csrrwi     s5, 0x340, 5
                  srai       s4, s11, 17
                  c.add      a2, a0
2683:             c.addi     a2, 24
                  fence
                  addi       s8, t4, -834
                  csrrci     s1, 0x340, 5
                  bgeu       a7, tp, 2702f
                  c.srai     a0, 3
                  divu       s4, t2, a0
                  ori        s9, s8, 86
                  csrrs      t6, 0x340, s6
                  c.mv       s1, s2
                  blt        t2, s1, 2697f
                  lui        s3, 362398
                  bgeu       a4, t2, 2709f
                  slli       s10, tp, 14
2697:             c.mv       ra, t3
                  xor        a1, a5, a0
                  c.mv       s11, s10
                  csrrci     t4, 0x340, 8
                  xor        s0, s5, a5
2702:             csrrci     a2, 0x340, 26
                  mulhu      t0, a1, ra
                  andi       t1, ra, 849
                  srl        s9, s10, s9
                  add        s4, t6, s6
                  and        s10, s2, t1
                  beq        ra, t2, 2713f
2709:             mulh       s7, zero, s2
                  or         s9, s11, sp
                  andi       ra, s0, 852
                  c.and      a1, s1
2713:             bge        ra, t4, 2730f
                  fence
                  fence
                  csrrci     s10, 0x340, 24
                  slt        s10, a4, s10
                  c.slli     a3, 27
                  c.add      s7, t0
                  csrrci     s8, 0x340, 18
                  mulh       a7, ra, s10
                  divu       s1, s2, s5
                  c.andi     a5, -1
                  csrrw      s2, 0x340, a7
                  nop
                  sll        s11, s5, s3
                  slti       a0, t5, 109
                  xori       s3, s8, -623
                  xori       a2, s1, 100
2730:             add        ra, t3, a0
                  c.and      a0, a3
                  beq        a5, a5, 2745f
                  andi       a4, s5, -88
                  srl        s5, a0, s6
                  c.nop
                  bltu       s2, ra, 2745f
                  blt        t3, s6, 2755f
                  c.or       s1, a1
                  xor        t6, s11, s11
                  mul        s5, ra, a0
                  c.xor      a5, a0
                  c.add      s4, t3
                  c.srai     a0, 11
                  fence.i
2745:             fence.i
                  mulhsu     s4, s10, tp
                  blt        s7, s1, 2759f
                  mulh       s7, sp, t5
                  csrrwi     t0, 0x340, 10
                  addi       s3, zero, 9 #init loop 1 counter
                  c.li       s6, -1
                  add        t6, s4, a4
                  addi       ra, zero, 15 #init loop 1 limit
                  c.nop
sub_1_49_1_t:     mulhsu     s4, a3, gp
                  addi       s3, s3, 2 #update loop 1 counter
                  addi       t5, zero, 7 #init loop 0 counter
                  addi       t3, zero, 9 #init loop 0 limit
                  slli       a4, a3, 13
                  c.and      s1, a1
                  mul        s4, s9, tp
                  c.mv       s8, s3
                  mul        t0, a0, a4
sub_1_49_0_t:     sltu       t4, s5, ra
                  csrrs      s9, 0x340, s8
                  csrrc      t4, 0x340, t0
                  nop
                  c.mv       tp, t2
                  addi       t5, t5, 1 #update loop 0 counter
                  c.addi     a5, -1
                  c.srli     a0, 30
                  blt        t5, t3, sub_1_49_0_t #branch for loop 0
                  xori       s4, a1, -983
                  beq        s3, ra, sub_1_49_1_t #branch for loop 1
                  rem        s0, s3, gp
                  and        s7, s7, sp
                  div        s5, t3, a2
                  slt        s6, t6, gp
                  c.and      a4, s0
                  c.and      a3, a0
2755:             c.and      a2, a4
                  csrrsi     t6, 0x340, 31
                  auipc      s11, 639036
                  xor        s7, s6, a1
2759:             slt        a1, s9, a1
                  mulhu      s10, s11, a0
                  andi       tp, ra, -383
                  sltu       s8, s8, t3
                  sltu       s7, a2, a7
                  xori       tp, s1, 460
                  c.li       a4, -1
                  lui        s1, 188994
                  xori       s5, a6, -259
                  bge        t5, a6, 2770f
                  sub        a3, t1, a1
2770:             sltu       tp, a0, t5
                  lw         s11, 4(sp)
                  csrrwi     t6, 0x340, 11
                  addi       sp, sp, 24
                  or         a6, a6, s5
                  sltiu      s3, s4, 238
                  sltu       s5, a2, s8
4828:             c.jr x27
sub_3:            bltu       t5, t3, sub_3_stack_p
                  c.xor      a2, a0
                  srai       s8, t2, 28
sub_3_stack_p:    addi       sp, sp, -64
                  c.andi     a0, -1
                  c.add      s2, s0
                  srai       a2, a6, 23
                  sw         s11, 4(sp)
                  lui        a6, 468934
                  la         s0, region_4+2364 #start riscv_load_store_rand_instr_stream_5
                  sb         t4, -1121(s0)
                  sw         s9, 1424(s0)
                  lh         a6, 1376(s0)
                  lb         t4, -793(s0)
                  lbu        a3, -1025(s0)
                  lb         s1, 937(s0)
                  sb         t6, -1797(s0)
                  nop
                  divu       s2, s1, t6
                  c.lui      s4, 21
                  c.nop
                  csrrw      zero, 0x340, t6
                  lh         s3, 1198(s0)
                  c.nop
                  lb         tp, 1391(s0)
                  sb         s9, 25(s0)
                  csrrci     a1, 0x340, 18
                  lhu        s3, 872(s0)
                  srl        s7, s6, a4
                  sll        s6, s1, s2
                  lb         s2, 767(s0)
                  lbu        t5, 1541(s0)
                  lbu        zero, -1674(s0)
                  c.sub      a1, a4
                  c.addi     t6, 3
                  lw         s5, 912(s0)
                  divu       t4, t6, sp
                  rem        t6, s5, s5
                  sb         s5, 816(s0)
                  sb         s10, -558(s0)
                  slti       s5, s8, 884
                  c.add      a1, s7
                  lhu        a1, 1052(s0) #end riscv_load_store_rand_instr_stream_5
                  la         tp, region_1+5474 #start riscv_load_store_rand_instr_stream_2
                  nop
                  csrrs      ra, 0x340, t5
                  mul        t5, a7, s7
                  lb         s0, -124(tp)
                  lb         a5, 23(tp)
                  sb         a2, 19(tp)
                  sb         s0, 213(tp)
                  sb         a4, -197(tp)
                  xori       a1, a4, 799
                  c.sub      a4, a0
                  lbu        s11, 30(tp)
                  slli       t5, a5, 8
                  sb         a6, -143(tp)
                  c.slli     t1, 22
                  lb         a6, -87(tp)
                  sh         t0, -114(tp)
                  lh         t1, -226(tp)
                  sb         a0, -153(tp)
                  lb         t6, -228(tp)
                  sb         a5, 178(tp)
                  sb         s10, -60(tp)
                  c.mv       s3, a2
                  lui        t1, 903529
                  csrrs      s4, 0x340, t5
                  c.nop
                  addi       a7, a2, 197
                  div        t5, t5, sp
                  slt        t1, gp, s4
                  sb         t3, -217(tp)
                  sb         t3, -224(tp)
                  srl        t3, a2, zero
                  lh         s8, 244(tp)
                  sb         ra, -53(tp)
                  lbu        s3, 199(tp)
                  sltiu      s11, s6, 101
                  c.srli     s0, 31
                  slti       s5, s7, 170
                  sll        a3, sp, t3
                  sb         a4, -69(tp)
                  c.srli     a1, 21
                  lb         s7, -223(tp)
                  lbu        a2, -159(tp)
                  lbu        a4, 115(tp)
                  sh         t2, 26(tp)
                  sltu       s10, a0, t4
                  lbu        s2, 248(tp)
                  sw         gp, -146(tp) #end riscv_load_store_rand_instr_stream_2
                  la         tp, region_1+7352 #start riscv_load_store_rand_instr_stream_0
                  lh         s6, 4(tp)
                  sb         s8, -12(tp)
                  sw         a0, 12(tp)
                  lb         s6, 9(tp)
                  sb         t4, -6(tp)
                  divu       t5, s7, t6
                  srl        s9, t2, s3
                  lb         s8, -9(tp)
                  xori       s3, sp, -534
                  lbu        t3, 5(tp)
                  c.andi     a4, 10
                  mul        t3, zero, s8
                  csrrsi     s8, 0x340, 28
                  sb         t5, -11(tp)
                  lbu        a0, 14(tp)
                  auipc      a6, 957553
                  auipc      t4, 998273
                  csrrwi     t0, 0x340, 31
                  rem        a4, ra, zero
                  sltu       a7, s11, s9
                  addi       t0, s8, -201
                  csrrwi     t6, 0x340, 31
                  sh         s6, 12(tp)
                  sb         s4, 1(tp)
                  sb         a7, -1(tp)
                  xor        s2, s8, zero
                  rem        a5, a7, s0
                  sh         a2, 4(tp)
                  lb         s5, 7(tp)
                  sltiu      a1, s1, 193
                  lb         s11, -10(tp)
                  lb         s5, -3(tp)
                  mulhu      t0, gp, s1
                  srl        s8, t2, t2
                  mulhsu     a7, s7, s11
                  srli       s7, s1, 10
                  lb         a0, 1(tp)
                  sb         a3, 5(tp)
                  rem        zero, gp, a2
                  fence
                  c.and      a1, a2
                  andi       s1, ra, -373
                  sh         t2, -14(tp)
                  lb         a2, -10(tp)
                  lh         t1, -16(tp)
                  slti       a3, s2, 206
                  c.slli     s10, 30
                  sb         t4, -3(tp)
                  lb         s5, -15(tp)
                  lb         s6, 1(tp)
                  lh         t6, -12(tp) #end riscv_load_store_rand_instr_stream_0
                  la         a2, region_0+1521 #start load_store_instr_stream_1
                  la         t0, region_0+3272 #start load_store_instr_stream_0
                  lbu        a7, -11(t0)
                  lbu        t4, 46(a2)
                  lbu        tp, 41(a2)
                  sb         a0, -13(t0)
                  sh         s6, -19(a2)
                  lh         t3, 53(a2)
                  sb         s5, -28(a2)
                  sb         ra, -11(t0)
                  lhu        s7, -61(a2)
                  lbu        s5, 36(a2)
                  sb         zero, -8(t0)
                  lbu        tp, 26(a2)
                  sw         s2, -5(a2)
                  lw         ra, -21(a2) #end load_store_instr_stream_1
                  sh         s2, 2(t0)
                  lb         tp, -2(t0)
                  lbu        s4, -7(t0)
                  lbu        a6, 4(t0) #end load_store_instr_stream_0
                  addi       ra, zero, 1 #init loop 1 counter
                  mulhu      s10, t2, a0
                  addi       s0, zero, -5 #init loop 1 limit
                  csrrwi     s4, 0x340, 8
                  c.sub      a3, a0
sub_3_40_1_t:     c.or       a2, a5
                  addi       ra, ra, -3 #update loop 1 counter
                  addi       s1, zero, 8 #init loop 0 counter
                  addi       t6, zero, -10 #init loop 0 limit
                  sub        s6, zero, s8
sub_3_40_0_t:     xori       tp, s9, -106
                  addi       s1, s1, -2 #update loop 0 counter
                  bge        s1, t6, sub_3_40_0_t #branch for loop 0
                  beq        ra, s0, sub_3_40_1_t #branch for loop 1
                  rem        s7, t4, s4
                  la         a7, region_2+1906 #start load_store_instr_stream_1
                  la         s3, region_2+3215 #start load_store_instr_stream_2
                  la         ra, region_2+2950 #start load_store_instr_stream_0
                  la         a1, region_2+3942 #start load_store_instr_stream_4
                  lb         a2, 130(a1)
                  lw         s1, 93(s3)
                  la         s4, region_2+6973 #start load_store_instr_stream_3
                  sb         a2, 178(a1)
                  lb         a3, 693(ra)
                  sb         tp, 40(s4)
                  sb         t0, -29(a1)
                  lhu        s5, -286(a7)
                  sb         s8, 83(a1)
                  sh         a3, -55(s4)
                  lh         tp, 5(s4)
                  lbu        s10, 41(s4)
                  sb         t2, 111(a1)
                  lw         a2, 81(s3)
                  lhu        t5, -47(s3)
                  lbu        t1, 105(a1)
                  lbu        s7, 967(ra)
                  sw         zero, -222(a1)
                  lhu        a3, -35(s4)
                  lh         t3, 1818(a7)
                  lbu        s9, 99(a1)
                  lbu        a6, -48(s4)
                  sb         s4, 2(a1)
                  lh         a4, -1376(ra)
                  lbu        t5, -311(a7)
                  lb         t4, -52(s4)
                  lw         t1, 33(s3)
                  lhu        s10, 580(ra)
                  lbu        t4, 42(s4)
                  lbu        a6, 159(s3)
                  lb         a4, -48(s4) #end load_store_instr_stream_3
                  lbu        zero, 475(a7)
                  lb         s10, -98(s3) #end load_store_instr_stream_2
                  sh         a1, -52(a7) #end load_store_instr_stream_1
                  lb         s5, -38(a1) #end load_store_instr_stream_4
                  sb         s4, 1923(ra) #end load_store_instr_stream_0
                  la         a1, region_3+43 #start load_store_instr_stream_0
                  lhu        s10, -15(a1)
                  lb         a5, 2(a1)
                  la         t0, region_0+1967 #start load_store_instr_stream_2
                  la         s9, region_4+3613 #start load_store_instr_stream_3
                  sb         s0, -5(t0)
                  lbu        t6, 2(a1)
                  lb         a5, -11(t0)
                  lbu        a4, 2(s9)
                  sh         s6, -1(a1)
                  lhu        s10, 9(s9)
                  sb         tp, -14(t0)
                  lb         s8, -14(s9)
                  la         s7, region_1+9862 #start load_store_instr_stream_1
                  lbu        t3, -7(a1)
                  lb         s2, 5(t0)
                  lh         t6, 188(s7)
                  lb         s2, -2(t0)
                  sb         a4, -12(s9)
                  lb         tp, 16(a1)
                  sb         t2, -209(s7)
                  lh         s6, -48(s7)
                  sb         s1, -14(a1)
                  lbu        s6, 11(t0)
                  sb         s3, -7(s9)
                  sw         tp, -5(s9)
                  lh         t6, 3(a1)
                  lb         s3, 3(s9)
                  lh         s2, 15(s9)
                  lb         a4, -11(s9)
                  sb         s8, 144(s7)
                  sw         t6, 5(a1)
                  sw         t3, -3(t0)
                  sb         s0, 16(s9) #end load_store_instr_stream_3
                  sb         t5, -37(s7) #end load_store_instr_stream_1
                  sb         a7, -10(t0) #end load_store_instr_stream_2
                  lbu        s6, 1(a1) #end load_store_instr_stream_0
                  la         s7, region_3+347 #start riscv_load_store_rand_instr_stream_8
                  sh         t5, -129(s7)
                  sll        s9, s9, a2
                  mul        ra, s11, a4
                  sb         s5, -2(s7)
                  lbu        zero, 57(s7)
                  c.addi     tp, 15
                  csrrc      s0, 0x340, a4
                  c.sub      a1, a0
                  lbu        t5, -174(s7)
                  c.mv       s3, ra
                  lb         zero, -152(s7)
                  c.add      t3, a6
                  c.slli     s2, 30
                  c.srai     a2, 5
                  lui        t1, 299559
                  sb         gp, -221(s7)
                  csrrwi     s11, 0x340, 27
                  lb         s11, -64(s7)
                  lh         s6, -117(s7)
                  srai       ra, t5, 19
                  rem        s4, a1, s2
                  lui        a4, 124326
                  fence
                  sw         s7, -187(s7)
                  lb         a3, -262(s7)
                  div        s10, a2, gp
                  c.srai     a2, 29
                  lb         t0, -317(s7)
                  sh         t1, -251(s7)
                  c.sub      s0, a0
                  csrrci     ra, 0x340, 4
                  or         s0, gp, s11
                  c.xor      a5, a4
                  c.lui      s6, 16
                  fence.i
                  lbu        a3, -118(s7)
                  lb         a0, 140(s7)
                  lhu        t6, -301(s7)
                  c.slli     s3, 2
                  lw         a5, -151(s7)
                  csrrs      s0, 0x340, a4
                  sb         zero, -210(s7) #end riscv_load_store_rand_instr_stream_8
                  la         tp, region_0+3480 #start riscv_load_store_rand_instr_stream_7
                  c.nop
                  lh         a0, -44(tp)
                  lbu        a2, -15(tp)
                  lbu        t3, -35(tp)
                  lbu        t1, -50(tp)
                  sb         a7, -49(tp)
                  sll        a5, s5, ra
                  lh         t3, 22(tp)
                  sb         a1, 33(tp)
                  sb         tp, -40(tp)
                  srai       ra, s6, 7
                  mulhu      s9, zero, gp
                  csrrci     s9, 0x340, 21
                  divu       s9, s11, t2
                  lb         a0, 41(tp)
                  csrrw      a2, 0x340, a6
                  csrrci     a3, 0x340, 4
                  sb         a2, -8(tp)
                  sra        a0, s8, a0
                  sltu       a0, a4, s1
                  sb         a0, 11(tp)
                  lb         a2, -42(tp)
                  c.xor      s1, a4
                  sw         s4, -56(tp)
                  srai       s4, a2, 30
                  sh         a2, -24(tp)
                  lbu        s10, 15(tp)
                  lb         s1, 50(tp)
                  sltu       t1, a7, t4
                  lb         s5, -5(tp)
                  sb         s6, 2(tp)
                  sw         a5, 32(tp)
                  sb         s4, 13(tp)
                  sltiu      a6, s9, -85
                  sh         a4, -40(tp)
                  mulhsu     ra, s1, s9
                  lb         s6, -41(tp)
                  c.andi     a3, -1
                  lb         ra, -60(tp)
                  sh         t5, -44(tp)
                  lhu        t6, 40(tp)
                  sw         s2, -12(tp)
                  sb         s3, -35(tp)
                  lbu        s11, -11(tp)
                  lbu        a1, 23(tp)
                  lb         t4, -29(tp) #end riscv_load_store_rand_instr_stream_7
                  la         t5, region_1+6693 #start riscv_hazard_instr_stream_8
                  andi       s0, s0, -190
                  nop
                  lbu        t4, -12(t5)
                  lbu        zero, -243(t5)
                  sltu       a3, s2, zero
                  sb         s0, -47(t5)
                  c.sub      s0, a3
                  c.srli     s0, 9
                  lb         t4, -113(t5)
                  sb         a6, 24(t5)
                  csrrci     zero, 0x340, 19
                  srai       t4, a6, 26
                  c.slli     s0, 2
                  lui        s2, 709361
                  csrrsi     a3, 0x340, 15
                  c.srli     a3, 2
                  lhu        s0, -213(t5)
                  sb         zero, -243(t5)
                  slt        a6, s0, s2
                  fence.i
                  sb         t4, 88(t5)
                  c.lui      a6, 18
                  slti       a6, zero, 867
                  lb         s2, 216(t5)
                  andi       zero, s2, -886
                  c.xor      a3, s0
                  ori        s2, a6, 900
                  slti       zero, s0, -602
                  slti       a6, s0, -37
                  slti       a6, s0, 916
                  sw         s2, 107(t5) #end riscv_hazard_instr_stream_8
sub_3_11:         jal        s11, 4f
0:                c.jal      9f
1:                c.j        3f
2:                c.jal      6f
3:                jal        t6, 5f
4:                c.jal      1b
5:                jal        ra, 2b
6:                jal        a2, 7f
7:                jal        ra, 8f
8:                c.jal      10f
9:                c.jal      11f
10:               jal        t1, 0b
11:               c.or       a0, a4
                  la         t0, region_2+7118 #start load_store_instr_stream_4
                  la         s3, region_0+200 #start load_store_instr_stream_3
                  la         s0, region_3+344 #start load_store_instr_stream_2
                  lhu        t6, -6(s3)
                  la         s8, region_1+876 #start load_store_instr_stream_0
                  lbu        a2, 24(t0)
                  sb         gp, 167(s0)
                  lb         t6, -13(s3)
                  lh         t5, -14(s3)
                  la         a3, region_4+1202 #start load_store_instr_stream_1
                  sb         t3, -12(s3)
                  sw         s11, 36(s0)
                  lbu        a6, 1888(s8)
                  lh         a7, -312(s0)
                  lbu        t5, 60(t0)
                  lh         a6, -70(a3)
                  sh         s6, 8(s3)
                  lbu        t3, -271(s8)
                  lh         a5, -50(t0)
                  lbu        s6, -151(s0)
                  sb         gp, 5(s3)
                  lb         s4, -93(a3)
                  sh         a5, -12(s3)
                  lh         t4, -10(s3)
                  sb         t5, 66(a3)
                  lb         a1, -331(s0)
                  lbu        a1, 5(s3)
                  lb         s5, 2029(s8)
                  sb         zero, -343(s0)
                  lbu        a6, 137(s0)
                  sh         s9, 214(a3)
                  lhu        s6, 94(s0)
                  lb         a2, -211(a3)
                  lb         ra, 435(s8)
                  lh         tp, 164(s8)
                  lbu        a7, 63(a3)
                  sb         s3, 7(s3) #end load_store_instr_stream_3
                  sb         a5, 21(t0)
                  lhu        s7, 64(s0) #end load_store_instr_stream_2
                  lhu        tp, 2(t0) #end load_store_instr_stream_4
                  sh         a5, 154(a3) #end load_store_instr_stream_1
                  sb         a5, 1022(s8)
                  lb         t4, -491(s8) #end load_store_instr_stream_0
                  addi       a2, zero, -7 #init loop 1 counter
                  c.sub      a4, a5
                  csrrc      s7, 0x340, t4
                  c.srli     a0, 3
                  c.mv       a6, t2
                  addi       zero, zero, 0 #init loop 1 limit
sub_3_36_1_t:     c.li       t0, 14
                  rem        a0, zero, t2
                  addi       a2, a2, 7 #update loop 1 counter
                  slt        a7, s10, a4
                  addi       s1, zero, -5 #init loop 0 counter
                  c.xor      a5, s1
                  addi       ra, zero, 18 #init loop 0 limit
                  csrrc      t5, 0x340, zero
sub_3_36_0_t:     sub        a0, a7, s10
                  csrrsi     a1, 0x340, 5
                  addi       s1, s1, 2 #update loop 0 counter
                  auipc      s2, 18783
                  bltu       s1, ra, sub_3_36_0_t #branch for loop 0
                  fence.i
                  c.bnez     a2, sub_3_36_1_t #branch for loop 1
                  slti       a4, a7, -874
                  la         t0, region_4+2546 #start riscv_load_store_rand_instr_stream_4
                  rem        s6, s8, gp
                  divu       tp, s0, a0
                  mul        zero, t0, t0
                  sb         a4, -431(t0)
                  lbu        a2, -1900(t0)
                  c.or       a2, a2
                  lhu        a0, -2018(t0)
                  lhu        t3, -1738(t0)
                  lbu        ra, -179(t0)
                  lb         tp, -1373(t0)
                  addi       a3, a6, -424
                  sb         ra, -1481(t0)
                  slt        s9, s1, s7
                  sh         ra, 1316(t0)
                  c.lui      s0, 4
                  sb         a2, -1660(t0)
                  mulhu      a5, t3, s7
                  lbu        s8, -1927(t0)
                  sb         s8, -1240(t0)
                  sb         s7, 214(t0)
                  sb         t2, -1563(t0)
                  csrrw      s5, 0x340, s0
                  sb         s8, -1550(t0)
                  xor        s10, s8, s9
                  lw         a6, -994(t0)
                  lh         s3, 292(t0)
                  lb         a4, -1835(t0)
                  lbu        s8, -80(t0)
                  lbu        t1, -1902(t0)
                  csrrsi     t1, 0x340, 30
                  lb         a5, -332(t0)
                  sltiu      ra, s3, 517
                  lb         s7, -1826(t0)
                  c.xor      a4, a2
                  lb         a4, 760(t0) #end riscv_load_store_rand_instr_stream_4
                  la         s6, region_4+3560 #start riscv_hazard_instr_stream_6
                  remu       s2, s5, s8
                  mulhsu     s2, s8, s5
                  lbu        s7, -26(s6)
                  lbu        s8, 81(s6)
                  ori        s5, s2, -286
                  lh         s5, -6(s6)
                  lb         s10, -41(s6)
                  lbu        s8, -205(s6)
                  lhu        s8, 238(s6)
                  lb         s5, -60(s6)
                  sb         a0, 173(s6)
                  sb         s7, 165(s6)
                  sb         s7, 101(s6)
                  sltiu      s5, s2, 412
                  lw         s8, 244(s6)
                  lb         a0, 201(s6)
                  rem        s8, a0, s5
                  lbu        a0, 129(s6)
                  lb         a0, 69(s6)
                  sb         s7, -255(s6)
                  lbu        s10, 144(s6)
                  mulh       s8, a0, s10
                  sll        s2, a0, s8
                  c.xor      a0, a0
                  lhu        a0, 160(s6)
                  lhu        s2, 146(s6)
                  lb         s7, -146(s6)
                  mul        a0, s7, s2
                  c.sub      a0, a0
                  sb         a0, 238(s6)
                  fence
                  sb         a0, -33(s6)
                  srl        a0, s5, s10
                  c.slli     s7, 17
                  lb         s8, -185(s6)
                  lh         s10, 142(s6)
                  sb         s2, -47(s6)
                  lb         s7, 33(s6)
                  lb         s8, -227(s6)
                  sb         s8, -240(s6)
                  or         s10, s7, s8
                  lbu        a0, 3(s6)
                  lbu        s7, -138(s6)
                  sb         s8, 193(s6) #end riscv_hazard_instr_stream_6
                  la         a7, region_4+2432 #start riscv_hazard_instr_stream_0
                  c.add      t3, t4
                  csrrw      t4, 0x340, zero
                  csrrci     t3, 0x340, 19
                  lhu        t5, -144(a7)
                  lb         t3, -1844(a7)
                  lb         t5, -1200(a7)
                  div        t3, a5, t4
                  c.lui      s3, 8
                  xori       zero, s3, 891
                  ori        s3, s3, -260
                  c.and      a5, a5
                  sra        t4, t3, t5
                  lb         zero, -1379(a7)
                  sh         s3, 1658(a7)
                  lhu        t3, -774(a7)
                  sll        s3, t3, t5
                  and        zero, s3, a5
                  lhu        s3, 1402(a7)
                  lb         t4, 1298(a7)
                  rem        a5, t3, s3
                  csrrw      s3, 0x340, t5
                  lbu        t4, 1241(a7)
                  sh         t3, 906(a7)
                  xori       zero, t3, -10
                  lh         a5, -1740(a7)
                  c.srai     a5, 3
                  sltu       t4, s3, a5
                  lb         s3, 1130(a7)
                  lb         t4, -2027(a7)
                  sub        s3, t4, t4
                  lbu        t4, -859(a7)
                  divu       t4, zero, zero
                  sltiu      zero, zero, 973
                  c.sub      a5, a5
                  sh         t3, -1058(a7)
                  sb         t3, -1538(a7)
                  sltu       a5, zero, zero
                  add        t4, s3, s3
                  c.srli     a5, 4
                  lbu        s3, 1278(a7)
                  sw         a5, -680(a7)
                  lh         a5, 10(a7)
                  sb         zero, 1243(a7)
                  lbu        zero, -171(a7)
                  lhu        t5, -1414(a7) #end riscv_hazard_instr_stream_0
                  la         a5, region_3+59 #start load_store_instr_stream_2
                  la         a6, region_1+3557 #start load_store_instr_stream_1
                  lbu        s7, -181(a6)
                  lb         s1, 76(a5)
                  la         t4, region_2+5884 #start load_store_instr_stream_0
                  lhu        t6, 217(a5)
                  sb         gp, 249(a6)
                  lbu        s0, 51(a5)
                  lb         t5, 12(t4)
                  sb         t1, -5(t4)
                  sb         ra, -44(a5)
                  lbu        a4, 37(t4)
                  sb         s5, -57(t4)
                  sb         t2, 57(t4)
                  lbu        s6, 31(a6)
                  sw         tp, -52(t4)
                  sb         t0, -214(a6)
                  sb         s9, -58(a6)
                  sb         t2, 18(a5)
                  lbu        s0, 131(a5)
                  sb         s6, 226(a5)
                  lh         a2, -56(t4)
                  lbu        zero, 182(a5)
                  lb         a2, -27(t4)
                  lbu        s3, 203(a5)
                  lb         zero, 192(a6) #end load_store_instr_stream_1
                  sb         t4, 190(a5) #end load_store_instr_stream_2
                  lw         a0, -12(t4) #end load_store_instr_stream_0
                  la         a5, region_3+95 #start load_store_instr_stream_2
                  la         t1, region_4+1587 #start load_store_instr_stream_1
                  lbu        s9, 86(t1)
                  lb         s6, -34(a5)
                  lh         zero, -1441(t1)
                  sh         s0, 3(a5)
                  la         tp, region_2+3646 #start load_store_instr_stream_0
                  lhu        s11, 51(a5)
                  sh         t5, 7(a5)
                  lb         a1, 762(tp)
                  lbu        ra, 1038(t1)
                  lhu        s2, 342(tp)
                  lb         s5, 1680(tp)
                  lw         s7, 509(t1)
                  sb         a0, -859(tp)
                  sb         s4, -6(a5)
                  lbu        a6, -610(t1)
                  lhu        s2, 695(t1)
                  lhu        s2, -19(a5)
                  lbu        a0, -33(a5)
                  lhu        a2, -1636(tp)
                  lh         t5, -41(t1)
                  lb         s10, 734(t1) #end load_store_instr_stream_1
                  sh         gp, -33(a5)
                  sb         s9, 34(a5) #end load_store_instr_stream_2
                  sb         a2, -1230(tp) #end load_store_instr_stream_0
                  la         t6, region_0+1365 #start load_store_instr_stream_2
                  la         s1, region_1+7529 #start load_store_instr_stream_0
                  lbu        a0, -1342(s1)
                  lb         t3, 1844(s1)
                  la         s8, region_3+400 #start load_store_instr_stream_1
                  sb         t4, -750(s1)
                  lb         a2, -174(s8)
                  lb         t5, -42(t6)
                  sb         a7, 1254(s1)
                  lbu        s3, -1342(s1)
                  lbu        s3, -1(t6)
                  lb         zero, -91(s8)
                  sb         t1, 85(s8)
                  lbu        zero, -23(t6)
                  lbu        a2, 9(s8)
                  lb         a5, -1892(s1)
                  lhu        a0, -38(s8)
                  lbu        tp, -30(t6)
                  lb         a0, 982(s1)
                  lbu        a6, -48(t6) #end load_store_instr_stream_2
                  lh         a3, -62(s8)
                  sh         tp, -166(s8)
                  lh         t4, 1615(s1)
                  lbu        s10, -98(s8) #end load_store_instr_stream_1
                  lb         s10, 1222(s1) #end load_store_instr_stream_0
sub_3_16:         jal        s11, 1f
0:                c.jal      3f
1:                jal        t5, 7f
2:                jal        ra, 8f
3:                c.jal      5f
4:                jal        t1, 0b
5:                c.jal      6f
6:                c.j        9f
7:                c.jal      2b
8:                c.jal      4b
9:                c.jal      10f
10:               c.andi     a5, 27
                  addi       s2, zero, 5 #init loop 1 counter
                  srli       a4, a0, 13
                  addi       a7, zero, 5 #init loop 1 limit
                  csrrs      s6, 0x340, sp
                  ori        s5, a0, -436
                  add        a6, sp, t0
                  c.nop
                  c.srli     a0, 6
sub_3_37_1_t:     rem        t3, s6, s2
                  c.andi     a3, -1
                  sra        s4, a5, a7
                  addi       s2, s2, -4 #update loop 1 counter
                  xor        t3, t4, s1
                  addi       a2, zero, 10 #init loop 0 counter
                  c.nop
                  addi       zero, zero, 0 #init loop 0 limit
sub_3_37_0_t:     sltiu      tp, t2, 463
                  add        a6, s11, t5
                  addi       a2, a2, -10 #update loop 0 counter
                  c.beqz     a2, sub_3_37_0_t #branch for loop 0
                  slt        a4, s9, t4
                  srl        t1, t1, tp
                  c.li       s10, -1
                  bgeu       s2, a7, sub_3_37_1_t #branch for loop 1
                  add        a0, t4, t4
                  la         s6, region_4+3617 #start load_store_instr_stream_1
                  la         s9, region_4+744 #start load_store_instr_stream_0
                  la         a6, region_4+2258 #start load_store_instr_stream_2
                  lhu        t5, -43(s6)
                  sw         s0, -53(s6)
                  lbu        a0, -7(a6)
                  sb         a5, 1700(s9)
                  sh         gp, 6(a6)
                  sb         s10, -7(a6)
                  sb         t1, -21(s6)
                  lbu        a0, 18(s9)
                  sb         a2, -30(s6)
                  sb         a7, -9(a6)
                  sb         a1, 45(s6)
                  lh         a0, 1126(s9)
                  lbu        ra, 20(s6)
                  lbu        a3, -24(s6)
                  sb         a5, -617(s9)
                  lb         s5, -11(a6)
                  lb         t3, 11(a6) #end load_store_instr_stream_2
                  lb         t4, -32(s6)
                  lbu        t4, -577(s9)
                  lbu        s4, 42(s6)
                  sb         zero, -18(s6) #end load_store_instr_stream_1
                  sb         s5, 1625(s9) #end load_store_instr_stream_0
                  la         a4, region_3+346 #start load_store_instr_stream_2
                  la         s8, region_1+8914 #start load_store_instr_stream_1
                  la         s1, region_0+2614 #start load_store_instr_stream_0
                  sb         a1, -38(s8)
                  lw         s3, -14(s1)
                  sb         s8, 43(s8)
                  sb         tp, -47(a4)
                  lb         s0, 6(s8)
                  lh         s4, 16(s1)
                  lbu        s11, 4(s1)
                  sb         a5, 55(s8)
                  sw         gp, 42(a4)
                  lh         a3, -8(s1)
                  lb         s5, 6(s1)
                  sh         a3, -60(a4)
                  lb         t6, -20(s8)
                  sb         t2, -8(s1)
                  lb         ra, -49(a4)
                  lw         zero, -14(a4)
                  lw         a1, 34(s8)
                  lh         s7, -30(s8)
                  lb         t4, 14(s1)
                  lbu        s3, 8(s1)
                  lb         s11, 11(a4) #end load_store_instr_stream_2
                  sb         s0, 45(s8) #end load_store_instr_stream_1
                  lhu        t5, 4(s1) #end load_store_instr_stream_0
                  la         a6, region_0+3957 #start riscv_hazard_instr_stream_1
                  c.li       t3, 26
                  slt        t5, t3, t5
                  lh         t3, -1691(a6)
                  c.slli     t5, 17
                  srai       a7, s10, 22
                  sb         zero, -686(a6)
                  lb         a7, -1512(a6)
                  csrrs      zero, 0x340, zero
                  lb         s10, -461(a6)
                  sh         t5, -1711(a6)
                  c.andi     s0, 8
                  lh         s10, -1745(a6)
                  sb         s10, 100(a6)
                  lb         s10, -1926(a6)
                  lb         s10, -146(a6)
                  lhu        t3, -687(a6)
                  sb         s10, -1546(a6)
                  sw         s10, -237(a6)
                  or         t5, s10, t3
                  sb         a7, -109(a6)
                  rem        a7, a7, t3
                  lb         a7, -1923(a6)
                  lh         zero, -67(a6)
                  c.addi     s0, 16
                  sb         t3, -850(a6)
                  lb         t3, -135(a6)
                  srl        s10, zero, t5
                  srai       t5, zero, 24
                  andi       t5, s10, -324
                  fence
                  c.and      s0, s0
                  sltiu      t5, s0, 809
                  sb         s0, -1576(a6) #end riscv_hazard_instr_stream_1
                  la         s9, region_3+163 #start load_store_instr_stream_1
                  la         ra, region_3+152 #start load_store_instr_stream_0
                  sw         t0, 0(ra)
                  la         s5, region_3+482 #start load_store_instr_stream_2
                  lbu        s8, 82(s9)
                  lh         t4, -174(s5)
                  lbu        a4, -203(s5)
                  lb         s1, -13(ra)
                  la         a1, region_3+47 #start load_store_instr_stream_3
                  lb         s3, 322(s9)
                  lbu        tp, -83(s5)
                  lbu        s11, 115(a1)
                  lb         s7, 188(a1)
                  sb         t6, 9(s5)
                  sw         s1, 17(a1)
                  sh         s11, -119(s9)
                  sb         t6, -9(ra)
                  lh         s10, 4(s5)
                  sh         gp, -4(ra)
                  lb         s0, 196(a1)
                  lbu        t5, 158(a1)
                  sb         a0, 1(ra)
                  lbu        s8, -16(a1)
                  lb         s2, -217(s5)
                  lbu        t4, 238(a1)
                  sb         tp, 225(s9)
                  lb         zero, 117(a1)
                  sb         a3, -125(s9) #end load_store_instr_stream_1
                  lbu        s1, 1(ra)
                  lb         a0, -87(s5)
                  sb         t2, 56(a1)
                  sh         t4, 11(a1) #end load_store_instr_stream_3
                  sb         ra, -126(s5)
                  lbu        s6, 5(ra)
                  lbu        s3, -15(s5) #end load_store_instr_stream_2
                  lh         s0, -10(ra) #end load_store_instr_stream_0
                  la         s1, region_1+3418 #start load_store_instr_stream_1
                  la         s8, region_1+2759 #start load_store_instr_stream_0
                  lbu        t1, -46(s1)
                  la         t0, region_1+11793 #start load_store_instr_stream_2
                  la         s10, region_1+3469 #start load_store_instr_stream_3
                  sb         t3, 96(t0)
                  lbu        a5, -1588(s8)
                  lbu        s0, 1(s10)
                  lb         a6, 1906(s8)
                  lb         tp, 27(s1)
                  lbu        tp, 793(t0)
                  lb         s5, -2(s10)
                  lb         s9, 1770(s8)
                  sb         sp, 37(s1)
                  lb         a0, 669(s8)
                  lb         a6, 1678(t0)
                  lb         s2, -83(t0)
                  lbu        s7, 33(s1)
                  sb         tp, 7(s10)
                  sb         a1, 51(s1)
                  lhu        a7, -1(s10)
                  lb         s11, 0(s10)
                  sh         s9, -52(s1)
                  sb         a5, 890(s8)
                  lhu        s5, 22(s1)
                  lb         t5, 1436(s8)
                  sw         s6, 54(s1)
                  lbu        s4, -3(s1)
                  sb         s10, 565(t0)
                  lbu        a0, 85(t0)
                  lbu        a4, 8(s10)
                  lh         s7, -1463(s8)
                  lb         a7, 49(s1) #end load_store_instr_stream_1
                  lb         t5, -12(s10) #end load_store_instr_stream_3
                  sw         s0, -553(t0) #end load_store_instr_stream_2
                  lb         zero, 1864(s8)
                  lb         s4, -2040(s8) #end load_store_instr_stream_0
                  la         s3, region_0+171 #start load_store_instr_stream_1
                  lbu        s11, -98(s3)
                  la         t4, region_0+1553 #start load_store_instr_stream_0
                  lb         a4, -108(s3)
                  sb         ra, 55(t4)
                  lbu        a1, -157(s3)
                  lb         s5, 45(t4)
                  lbu        a3, 18(s3)
                  lhu        t0, 57(s3)
                  sb         s8, -12(t4)
                  lh         s6, -13(s3)
                  sb         t1, 41(t4)
                  lb         s5, 64(s3)
                  lb         s11, -129(s3)
                  lbu        tp, 0(s3)
                  sb         s8, 26(s3) #end load_store_instr_stream_1
                  sb         t4, -63(t4)
                  sb         s6, -42(t4) #end load_store_instr_stream_0
                  addi       a0, zero, 10 #init loop 0 counter
                  c.add      s1, ra
                  sub        s11, a2, a6
                  addi       ra, a6, -293
                  mulh       a1, a1, s5
                  xori       s3, a6, 784
                  c.srli     a5, 17
                  c.andi     s1, 22
                  sub        s9, a2, s10
                  mulh       s4, a3, a6
                  srli       s9, s1, 6
                  and        a6, a0, s3
                  nop
                  divu       s4, t2, a7
                  csrrw      t5, 0x340, a4
                  addi       s6, sp, -910
                  csrrwi     s3, 0x340, 18
                  slti       s5, t6, 169
                  c.slli     t6, 27
                  rem        s8, t3, t1
                  rem        ra, t2, s10
                  c.or       s1, s0
                  addi       zero, zero, 0 #init loop 0 limit
                  rem        s11, s3, t1
                  sll        t6, a1, ra
                  sltiu      tp, a5, -199
sub_3_39_0_t:     c.nop
                  addi       a0, a0, -5 #update loop 0 counter
                  c.bnez     a0, sub_3_39_0_t #branch for loop 0
                  c.add      s4, s0
                  la         a3, region_1+12392 #start riscv_hazard_instr_stream_4
                  csrrwi     a6, 0x340, 5
                  c.nop
                  lb         s9, 9(a3)
                  sra        t6, a6, a6
                  nop
                  c.srli     a2, 6
                  lhu        s9, -10(a3)
                  c.andi     a2, -1
                  lb         a2, -1(a3)
                  lhu        a2, -6(a3)
                  lbu        a6, -15(a3)
                  sw         t6, 8(a3)
                  fence.i
                  csrrci     a6, 0x340, 3
                  c.add      s4, s8
                  mulh       a6, s9, a2
                  lbu        t6, -9(a3)
                  and        s4, t6, a6
                  lb         s8, -12(a3)
                  c.nop
                  sh         s4, 12(a3)
                  add        a6, s9, a2
                  c.andi     a2, -1
                  c.or       a2, a2
                  slli       s4, s9, 17
                  xor        a2, s9, a2
                  slli       t6, t6, 20
                  mul        a6, s9, s9
                  lb         s4, 5(a3)
                  c.li       s8, -1
                  c.or       a2, a2
                  c.nop
                  mulhsu     s9, a6, s4
                  sll        a6, s4, s4
                  lh         s9, 0(a3) #end riscv_hazard_instr_stream_4
                  la         a4, region_2+7903 #start riscv_load_store_rand_instr_stream_6
                  mulhsu     s8, a0, a1
                  remu       s6, tp, a0
                  lbu        t0, -206(a4)
                  add        t1, s1, s11
                  sra        t6, t0, t5
                  lw         a5, -219(a4)
                  c.sub      a3, a2
                  lb         s11, -26(a4)
                  remu       a5, t3, t2
                  sb         s5, 228(a4)
                  auipc      t6, 69244
                  lhu        ra, -211(a4)
                  sb         s0, 158(a4)
                  sb         s7, 183(a4)
                  sra        a6, s7, t6
                  and        a3, a4, s1
                  sb         t6, 16(a4)
                  csrrwi     t0, 0x340, 19
                  nop
                  andi       s6, s6, 54
                  slli       s9, gp, 14
                  csrrw      tp, 0x340, a0
                  mulhu      t5, gp, t0
                  csrrw      tp, 0x340, s7
                  sb         s2, 236(a4)
                  c.sub      a0, a2
                  lbu        s0, -234(a4)
                  lui        s4, 205909
                  c.and      a1, a5
                  sb         s6, -205(a4)
                  lbu        ra, 74(a4)
                  c.or       a0, a4
                  c.andi     a3, 25
                  sb         a7, 124(a4)
                  c.lui      tp, 7
                  sb         s10, -160(a4)
                  c.xor      s0, a5
                  sb         a6, -136(a4)
                  sll        a7, s4, a0
                  lbu        ra, -181(a4)
                  sb         s0, 241(a4)
                  lui        a6, 565059
                  lb         s9, -84(a4)
                  sb         s9, -64(a4)
                  lb         t6, 111(a4)
                  sb         t4, 120(a4) #end riscv_load_store_rand_instr_stream_6
sub_3_14:         jal        s11, 1f
0:                c.j        4f
1:                c.jal      13f
2:                c.jal      7f
3:                jal        t0, 6f
4:                jal        ra, 17f
5:                c.j        16f
6:                jal        s8, 24f
7:                jal        ra, 3b
8:                c.jal      5b
9:                c.jal      11f
10:               c.j        14f
11:               c.jal      19f
12:               jal        a7, 21f
13:               c.jal      23f
14:               c.j        25f
15:               c.j        18f
16:               c.jal      20f
17:               c.jal      8b
18:               jal        ra, 12b
19:               jal        tp, 2b
20:               c.j        10b
21:               jal        ra, 26f
22:               c.j        0b
23:               jal        ra, 22b
24:               jal        t1, 27f
25:               c.jal      15b
26:               jal        ra, 9b
27:               srli       s8, s7, 17
                  addi       a2, zero, 8 #init loop 1 counter
                  addi       s10, zero, 4 #init loop 1 limit
sub_3_41_1_t:     slti       a7, s1, -764
                  addi       a2, a2, -3 #update loop 1 counter
                  addi       s3, zero, 7 #init loop 0 counter
                  addi       t6, zero, 7 #init loop 0 limit
sub_3_41_0_t:     c.xor      s0, a5
                  addi       s3, s3, -3 #update loop 0 counter
                  bgeu       s3, t6, sub_3_41_0_t #branch for loop 0
                  bgeu       a2, s10, sub_3_41_1_t #branch for loop 1
                  fence
sub_3_13:         jal        s11, 11f
0:                c.jal      10f
1:                c.j        16f
2:                c.jal      4f
3:                jal        a6, 25f
4:                jal        t1, 9f
5:                c.j        6f
6:                c.jal      22f
7:                c.j        19f
8:                jal        ra, 24f
9:                jal        t5, 3b
10:               jal        ra, 2b
11:               c.j        5b
12:               c.j        15f
13:               jal        t1, 17f
14:               jal        t1, 7b
15:               c.j        13b
16:               c.jal      23f
17:               jal        ra, 18f
18:               c.jal      21f
19:               c.jal      8b
20:               c.jal      14b
21:               c.j        20b
22:               c.jal      1b
23:               c.jal      12b
24:               c.j        0b
25:               fence
                  la         a5, region_2+5374 #start riscv_hazard_instr_stream_2
                  lh         t6, 20(a5)
                  mulhsu     s2, s2, a1
                  lhu        a1, 18(a5)
                  xori       s2, s0, -218
                  lui        s0, 661593
                  addi       s0, a1, -282
                  ori        a6, t6, 694
                  c.addi     s0, -1
                  slt        a6, s0, s0
                  div        a6, s6, a1
                  xor        t6, a1, a1
                  lb         s2, -6(a5)
                  c.srli     s0, 27
                  csrrs      s0, 0x340, t6
                  sb         a6, -41(a5)
                  lb         a1, -64(a5)
                  c.lui      a1, 7
                  lb         a6, -34(a5)
                  sb         s6, -6(a5)
                  lbu        a1, -53(a5)
                  slt        s6, a6, s0
                  xor        s6, s2, s2
                  srl        a6, s0, a1
                  xor        a6, a1, s2
                  sh         a1, -22(a5)
                  csrrwi     t6, 0x340, 12
                  sb         s0, 57(a5) #end riscv_hazard_instr_stream_2
                  la         s7, region_1+691 #start riscv_load_store_rand_instr_stream_3
                  lb         a4, -184(s7)
                  lhu        s3, 129(s7)
                  lbu        t0, -32(s7)
                  sb         a7, 201(s7)
                  mulhu      s3, t3, s9
                  sra        a3, a6, s5
                  sb         a3, -158(s7)
                  fence
                  lbu        t3, 53(s7)
                  sh         t5, -65(s7)
                  sb         s11, -192(s7)
                  fence.i
                  c.andi     a2, -1
                  lh         a4, -195(s7)
                  sb         s11, 98(s7)
                  and        s2, tp, s10
                  andi       t3, a6, -875
                  lbu        zero, 228(s7)
                  sra        s1, a6, a1
                  c.srli     a4, 22
                  csrrs      t0, 0x340, t6
                  auipc      s0, 597920
                  srai       a0, s3, 23
                  lbu        ra, -2(s7)
                  srli       a2, a3, 5
                  c.addi     t3, -1
                  srl        a5, s6, t3
                  lb         t5, -75(s7) #end riscv_load_store_rand_instr_stream_3
                  la         s2, region_0+3987 #start load_store_instr_stream_1
                  sw         s11, -231(s2)
                  la         t1, region_0+2135 #start load_store_instr_stream_0
                  lb         a0, -106(s2)
                  sb         t5, 1244(t1)
                  lw         s6, -183(s2)
                  lbu        t0, 1157(t1)
                  lhu        a6, -197(s2)
                  lbu        a0, -59(s2)
                  lb         t4, -248(s2)
                  lb         tp, -195(s2)
                  lhu        s8, -1109(t1)
                  sb         s9, -35(s2)
                  lb         t6, -344(t1)
                  lbu        t3, 8(s2) #end load_store_instr_stream_1
                  lhu        s1, 1831(t1) #end load_store_instr_stream_0
                  addi       a0, zero, -8 #init loop 0 counter
                  slli       s0, t5, 28
                  auipc      tp, 960865
                  c.sub      a2, a3
                  addi       zero, zero, 0 #init loop 0 limit
                  c.andi     a3, 24
                  c.xor      a1, s0
                  c.mv       a1, s3
                  c.mv       s11, s6
                  c.li       a1, 17
                  csrrsi     s4, 0x340, 7
sub_3_42_0_t:     c.nop
                  srai       ra, a5, 18
                  remu       s0, sp, t0
                  c.add      a3, a0
                  addi       a0, a0, 8 #update loop 0 counter
                  mulhsu     tp, sp, s4
                  and        a7, s1, t6
                  and        s0, a5, a2
                  fence.i
                  c.and      a4, a3
                  slti       a2, t1, 211
                  c.bnez     a0, sub_3_42_0_t #branch for loop 0
                  c.andi     a1, 20
                  la         t3, region_0+3177 #start load_store_instr_stream_1
                  la         s11, region_3+147 #start load_store_instr_stream_0
                  lhu        s1, -77(t3)
                  lbu        s2, 221(t3)
                  la         s5, region_4+880 #start load_store_instr_stream_2
                  lb         ra, 80(t3)
                  lb         a3, -58(s11)
                  sw         a7, -208(s5)
                  lh         a0, 153(t3)
                  lh         s2, 910(s5)
                  lb         s2, 1207(s5)
                  sb         a0, -115(s11)
                  lbu        a7, -124(t3)
                  sb         a7, 448(s5)
                  lb         a6, -125(s11)
                  lbu        s1, 995(s5) #end load_store_instr_stream_2
                  lbu        t1, -142(s11)
                  lhu        tp, -155(t3) #end load_store_instr_stream_1
                  sb         gp, -6(s11) #end load_store_instr_stream_0
sub_3_10:         jal        s11, 11f
0:                c.j        5f
1:                c.jal      17f
2:                c.j        6f
3:                c.j        13f
4:                c.jal      14f
5:                c.jal      2b
6:                jal        t5, 9f
7:                c.j        0b
8:                c.j        15f
9:                c.jal      16f
10:               c.j        7b
11:               c.jal      10b
12:               c.j        18f
13:               c.jal      4b
14:               c.j        12b
15:               c.j        1b
16:               jal        ra, 8b
17:               c.jal      3b
18:               csrrs      a1, 0x340, gp
sub_3_17:         jal        s11, 8f
0:                c.j        9f
1:                c.jal      7f
2:                c.jal      11f
3:                jal        ra, 2b
4:                jal        s7, 0b
5:                jal        t1, 4b
6:                c.j        5b
7:                c.jal      3b
8:                jal        a0, 6b
9:                c.j        10f
10:               c.jal      1b
11:               srai       a1, a7, 1
                  la         s8, region_1+231 #start load_store_instr_stream_2
                  la         t3, region_1+10760 #start load_store_instr_stream_1
                  lhu        a4, 1289(s8)
                  la         s6, region_1+3289 #start load_store_instr_stream_0
                  sb         s3, 500(s8)
                  lbu        a1, 1574(t3)
                  lhu        a3, 1787(s8)
                  lh         a7, 63(s6)
                  sb         t5, -7(s8)
                  lbu        t1, 54(s6)
                  lbu        s2, 1412(s8)
                  lh         t0, -568(t3)
                  lw         a3, 11(s6)
                  sh         gp, 21(s6)
                  lb         s1, 22(s6)
                  sh         s10, 1621(s8)
                  lb         t1, 958(s8)
                  lbu        a3, 905(s8)
                  lb         s11, 1546(t3)
                  lb         a7, 942(t3)
                  lbu        s9, -73(t3)
                  lh         a7, 213(s8)
                  lbu        tp, 1633(t3)
                  lbu        s0, -37(s6)
                  lh         zero, 1314(t3)
                  sb         a5, 350(t3)
                  lh         s11, 1142(t3) #end load_store_instr_stream_1
                  lbu        t6, 2040(s8) #end load_store_instr_stream_2
                  sb         t3, 37(s6) #end load_store_instr_stream_0
sub_3_12:         jal        s11, 1f
0:                c.j        11f
1:                c.j        6f
2:                c.j        8f
3:                jal        s0, 4f
4:                jal        a2, 13f
5:                c.jal      0b
6:                c.jal      9f
7:                c.jal      10f
8:                jal        t1, 7b
9:                c.j        5b
10:               jal        ra, 12f
11:               c.jal      2b
12:               c.j        3b
13:               c.lui      s8, 12
                  addi       a3, zero, -10 #init loop 0 counter
                  c.or       s1, a4
                  c.and      a1, s0
                  srli       s9, s9, 31
                  addi       zero, zero, 0 #init loop 0 limit
                  remu       a7, s11, gp
                  c.nop
sub_3_38_0_t:     ori        t1, s0, -252
                  c.add      s7, t0
                  addi       a3, a3, 10 #update loop 0 counter
                  c.mv       s6, s5
                  andi       tp, s5, -757
                  fence.i
                  slli       a4, s3, 17
                  slti       tp, s11, -770
                  c.addi     a2, 20
                  c.li       s9, 27
                  c.mv       a5, a6
                  sltu       a2, s2, s5
                  and        ra, t6, t6
                  c.sub      a2, a5
                  c.srli     s0, 23
                  c.andi     a1, -1
                  c.srli     a5, 6
                  c.mv       t5, s10
                  c.bnez     a3, sub_3_38_0_t #branch for loop 0
                  mul        s0, s0, a1
sub_3_9:          jal        s11, 21f
0:                c.j        23f
1:                c.jal      2f
2:                c.jal      0b
3:                jal        t1, 22f
4:                jal        ra, 25f
5:                c.j        19f
6:                jal        a5, 15f
7:                c.j        13f
8:                c.jal      12f
9:                c.jal      14f
10:               c.j        24f
11:               c.jal      4b
12:               c.jal      3b
13:               c.jal      9b
14:               c.jal      11b
15:               c.j        1b
16:               c.j        6b
17:               c.jal      16b
18:               c.j        20f
19:               c.j        18b
20:               jal        ra, 7b
21:               c.j        8b
22:               c.j        10b
23:               c.jal      5b
24:               c.j        17b
25:               csrrw      a7, 0x340, a6
sub_3_15:         jal        s11, 12f
0:                jal        ra, 19f
1:                c.jal      11f
2:                jal        ra, 21f
3:                c.jal      15f
4:                c.jal      1b
5:                c.jal      2b
6:                jal        s4, 13f
7:                c.j        9f
8:                jal        t1, 16f
9:                c.jal      17f
10:               c.jal      22f
11:               c.j        0b
12:               jal        t0, 5b
13:               jal        ra, 23f
14:               c.j        18f
15:               jal        ra, 6b
16:               c.jal      7b
17:               c.j        4b
18:               c.j        20f
19:               c.j        14b
20:               c.jal      10b
21:               c.j        8b
22:               jal        ra, 3b
23:               c.and      a2, s0
                  slli       a0, s3, 2
                  c.andi     a3, -1
                  csrrc      t5, 0x340, sp
                  xori       t0, sp, 463
                  or         a7, t6, a2
                  bge        t2, a0, 18f
                  divu       tp, a6, sp
                  auipc      s1, 1008609
                  or         t5, a4, t1
                  andi       s7, s1, -625
                  csrrsi     s0, 0x340, 3
                  sub        t1, s4, s8
                  c.lui      t1, 21
                  div        s10, s0, t2
                  csrrci     s1, 0x340, 2
                  xor        t3, s10, s7
                  c.nop
                  addi       a0, sp, -1015
18:               fence
                  divu       t1, s11, s7
                  csrrwi     t4, 0x340, 12
                  c.nop
                  la         a4, region_0+142 #start load_store_instr_stream_1
                  la         s3, region_0+112 #start load_store_instr_stream_3
                  sb         s10, 10(a4)
                  la         tp, region_0+3512 #start load_store_instr_stream_4
                  la         t6, region_0+1284 #start load_store_instr_stream_2
                  lbu        s6, -13(a4)
                  sb         s0, -1225(t6)
                  lhu        t0, 448(t6)
                  sb         t0, 15(a4)
                  lb         s8, 1(tp)
                  sw         t6, -12(tp)
                  la         s10, region_0+1022 #start load_store_instr_stream_0
                  lb         s1, 3(tp)
                  lb         a6, -14(tp)
                  lh         zero, -80(s10)
                  lb         a2, -585(t6)
                  sb         s9, -16(a4)
                  lb         a0, 0(tp)
                  sh         t5, 188(t6)
                  lbu        t5, 5(s3)
                  lh         s9, 6(a4)
                  lh         s1, -250(s10)
                  lbu        s11, -2(s3)
                  sh         sp, -1214(t6)
                  lbu        zero, 13(a4)
                  lb         s11, 3(s3)
                  sb         t2, -199(s10)
                  lb         a3, -8(s3)
                  sb         t4, 0(tp)
                  sb         s9, 8(a4)
                  sw         a7, -2(a4)
                  lbu        ra, -89(s10)
                  sh         s11, 10(s3)
                  lb         a0, -849(t6) #end load_store_instr_stream_2
                  sb         a3, 8(a4)
                  sb         s7, 2(a4) #end load_store_instr_stream_1
                  lbu        a2, 1(tp) #end load_store_instr_stream_4
                  lb         s0, -15(s3)
                  sb         s3, -107(s10)
                  sb         a0, 13(s3) #end load_store_instr_stream_3
                  lbu        s8, 15(s10) #end load_store_instr_stream_0
                  slli       t1, a0, 19
                  c.and      s1, a3
                  and        s7, s9, a0
                  sub        a3, s2, a2
                  c.add      a4, s11
                  c.and      a5, a2
                  add        a3, a3, s11
                  csrrwi     a5, 0x340, 2
                  srai       s8, zero, 26
                  bge        s1, t2, 49f
                  c.andi     a4, -1
                  add        s7, s2, s9
                  slt        s6, t0, s9
                  c.li       a3, 10
                  bltu       a0, t3, 47f
                  mulhu      a7, a4, t4
                  mulhsu     s1, s4, a5
                  slti       s11, a4, -858
                  divu       a0, zero, sp
                  nop
                  and        a1, a2, t0
                  c.srli     a3, 16
                  c.beqz     s0, 51f
                  auipc      a1, 458867
                  or         s5, a2, tp
47:               bge        a7, s6, 66f
                  sub        s4, a4, t5
49:               rem        s9, zero, gp
                  mulh       t1, gp, sp
51:               div        tp, a3, s4
                  c.beqz     s0, 67f
                  csrrsi     a3, 0x340, 23
                  ori        a1, s1, 322
                  nop
                  slt        s5, s9, t3
                  beq        a1, a4, 77f
                  and        a6, s2, s0
                  c.addi     a5, 2
                  c.addi     a0, 25
                  rem        ra, s6, ra
                  fence.i
                  c.andi     a2, 9
                  xor        zero, a3, s2
                  or         t4, s8, a2
66:               c.add      t3, a4
67:               srli       s9, s5, 20
                  csrrwi     s9, 0x340, 1
                  sra        s8, t2, tp
                  sltiu      t1, s9, -215
                  auipc      a6, 355816
                  c.addi     a1, -1
                  mulhu      a4, s7, gp
                  bne        a2, t1, 79f
                  srli       s8, a0, 3
                  andi       s5, s5, -186
77:               fence.i
                  bgeu       a5, zero, 81f
79:               lui        s11, 674718
                  sltu       a6, s1, s2
81:               div        s1, a2, s5
                  csrrci     a7, 0x340, 9
                  bltu       a4, a1, 85f
                  bne        ra, s10, 91f
85:               xor        s1, a4, s6
                  mul        t3, t4, sp
                  bgeu       s1, t2, 101f
                  andi       a0, zero, -286
                  slt        t6, s10, a0
                  c.lui      t4, 17
91:               mulh       a6, a4, a6
                  csrrwi     ra, 0x340, 26
                  sub        a4, tp, a3
                  sltu       a2, gp, a1
                  sll        t5, a1, s1
                  xor        t4, s3, t6
                  lui        s7, 437697
                  c.slli     a1, 22
                  bgeu       s11, t3, 114f
                  bgeu       s5, zero, 117f
101:              div        s7, tp, s6
                  divu       s6, gp, s2
                  c.add      s3, s9
                  mulh       tp, s7, t0
                  add        s6, zero, t1
                  srli       t5, s5, 19
                  auipc      a1, 93044
                  add        a2, t2, gp
                  c.and      a5, s0
                  sltu       s8, t2, gp
                  add        a7, s9, a1
                  srl        ra, t1, s4
                  fence
114:              c.li       s2, -1
                  sltu       s4, s3, s7
                  xori       s5, s8, 373
117:              c.slli     s9, 25
                  sltiu      s0, a2, -516
                  fence.i
                  mulh       s4, a1, s11
                  bgeu       s0, t3, 138f
                  mul        s1, a7, gp
                  c.lui      a7, 31
                  c.srai     a2, 9
                  c.xor      a1, a2
                  xori       t3, t2, 462
                  c.beqz     a4, 143f
                  mulhsu     s7, s11, s6
                  c.sub      s1, s1
                  c.sub      a3, a5
                  xor        t3, a7, ra
                  mulhsu     t0, a0, a0
                  c.or       a0, a4
                  and        s9, s5, a2
                  add        t4, a5, t0
                  bgeu       t0, s8, 153f
                  c.srai     s0, 4
138:              add        s0, sp, s2
                  c.srai     s1, 26
                  mulhsu     s7, t2, a5
                  csrrw      t0, 0x340, gp
                  andi       s9, t6, -473
143:              and        t5, s11, t1
                  csrrci     t0, 0x340, 10
                  c.lui      tp, 24
                  c.xor      a2, a2
                  lui        s6, 435730
                  srli       t1, a7, 25
                  rem        a5, a3, t6
                  and        a5, ra, t0
                  and        ra, a5, zero
                  c.li       t4, 30
153:              add        s10, sp, a0
                  and        s6, s1, s3
                  sltu       t1, s8, a1
                  srli       s10, sp, 21
                  csrrsi     a2, 0x340, 30
                  fence.i
                  csrrwi     s2, 0x340, 23
                  c.nop
                  c.lui      t0, 31
                  nop
                  c.add      t0, s6
                  sll        t6, s5, s11
                  slt        s5, t3, s4
                  remu       s6, s2, gp
                  sltiu      a6, s7, -126
                  sra        s8, s4, s5
                  bne        a6, t4, 178f
                  c.bnez     a3, 173f
                  slti       s8, t1, -999
                  slli       s0, zero, 29
173:              c.nop
                  addi       s0, a5, -908
                  xor        a5, zero, t2
                  bne        ra, t3, 191f
                  bge        s7, t2, 196f
178:              rem        s2, s5, a0
                  add        a6, s1, t6
                  or         s3, t4, s7
                  sll        s6, a1, s10
                  fence
                  c.slli     a3, 17
                  and        t6, t2, s9
                  lui        s8, 475855
                  remu       a1, a7, t5
                  c.lui      tp, 10
                  csrrci     t1, 0x340, 1
                  slti       t0, s9, 892
                  c.and      a4, a4
191:              auipc      zero, 1016073
                  mulhsu     zero, a0, s5
                  or         a7, s3, s3
                  lui        a0, 443963
                  sltiu      t6, a0, 812
196:              xori       s10, a1, -994
                  blt        s3, s7, 211f
                  c.xor      a3, a0
                  fence
                  srai       a4, t5, 11
                  slti       t0, s0, -444
                  nop
                  or         s0, a5, s8
                  c.beqz     s1, 214f
                  mulh       ra, tp, s7
                  slt        a2, t3, t0
                  auipc      tp, 217360
                  c.li       s3, 15
                  c.lui      s1, 9
                  nop
211:              c.or       a4, a3
                  c.beqz     a4, 228f
                  blt        t4, a7, 219f
214:              bgeu       s10, s8, 221f
                  c.addi     a5, -1
                  slli       a6, t4, 21
                  csrrwi     t6, 0x340, 28
                  and        zero, s3, t6
219:              c.and      a1, a5
                  c.add      a3, a0
221:              srai       zero, a4, 10
                  nop
                  slti       a3, a5, 1020
                  csrrw      t1, 0x340, t1
                  c.nop
                  sltiu      t3, s3, 475
                  sub        s1, t6, t3
228:              c.bnez     a0, 244f
                  sra        s0, a4, s8
                  srl        tp, sp, s1
                  c.add      a7, t5
                  csrrs      tp, 0x340, ra
                  mulh       t1, tp, s6
                  c.or       a0, a5
                  addi       t5, s6, -82
                  slt        t0, s1, t5
                  csrrwi     t3, 0x340, 3
                  mulhsu     s6, s9, s3
                  or         s7, s7, a3
                  srai       s11, a3, 9
                  c.srli     a3, 25
                  c.lui      s7, 27
                  sll        a3, a6, t5
244:              c.andi     a2, -1
                  mulhu      t0, t6, s9
                  beq        a4, gp, 258f
                  ori        s2, t4, 32
                  bgeu       s2, sp, 264f
                  beq        t5, s2, 267f
                  bge        s3, s5, 265f
                  srai       t6, t1, 9
                  rem        s3, a3, a2
                  slti       s4, zero, -35
                  slti       s2, s11, 434
                  remu       a5, s11, t1
                  c.li       s8, -1
                  xor        s4, ra, ra
258:              remu       a6, t5, ra
                  c.lui      s7, 14
                  sll        s11, s0, t4
                  xori       s5, s11, -82
                  mulh       s8, t6, t5
                  csrrs      ra, 0x340, t5
264:              rem        s8, gp, a3
265:              fence
                  auipc      a3, 861884
267:              sltu       t1, t2, s10
                  csrrsi     s1, 0x340, 9
                  c.addi     s4, 7
                  blt        a7, s6, 289f
                  or         tp, a7, a1
                  mulhsu     t0, a0, s1
                  srl        s5, s0, a4
                  xor        s8, a3, t6
                  ori        t1, s10, -283
                  remu       a4, s11, t3
                  slt        t4, a4, t5
                  ori        ra, t0, 351
                  c.sub      a1, a1
                  addi       t3, t2, 900
                  div        s2, a2, a3
                  sltu       t6, a4, tp
                  c.addi     a4, 25
                  sltu       t4, a4, s11
                  blt        t5, s4, 301f
                  slli       s5, a4, 7
                  fence.i
                  csrrci     s0, 0x340, 1
289:              c.mv       a4, s0
                  c.beqz     s1, 308f
                  c.addi     a7, 16
                  c.mv       s6, t1
                  srl        t4, s5, s4
                  blt        t4, s10, 310f
                  srli       t3, s2, 21
                  csrrci     s2, 0x340, 7
                  sltiu      a4, s1, -944
                  c.lui      s2, 31
                  c.add      ra, s4
                  ori        s7, sp, -605
301:              blt        a0, s0, 318f
                  auipc      s2, 852020
                  lui        a1, 651603
                  fence
                  beq        s3, a6, 318f
                  csrrwi     s5, 0x340, 25
                  c.bnez     a4, 314f
308:              divu       t4, a3, a5
                  remu       s0, s1, s3
310:              csrrwi     t1, 0x340, 26
                  c.mv       tp, a6
                  bne        s4, a3, 314f
                  slli       s6, s7, 14
314:              c.sub      a0, a0
                  slli       zero, gp, 23
                  csrrwi     a2, 0x340, 9
                  auipc      t3, 881579
318:              auipc      s2, 422709
                  xor        a7, t6, s8
                  c.srai     a0, 11
                  fence
                  csrrsi     t0, 0x340, 12
                  mulhu      s10, a3, s5
                  bltu       s3, s9, 330f
                  c.or       a4, a4
                  c.slli     s9, 8
                  auipc      s3, 994176
                  srl        t4, s1, tp
                  bne        t2, a7, 349f
330:              auipc      zero, 210471
                  c.beqz     a4, 338f
                  srli       zero, s10, 3
                  fence
                  slt        s7, s2, s3
                  bltu       s1, sp, 352f
                  srai       s9, t3, 23
                  c.xor      a4, a5
338:              nop
                  andi       s4, a4, -646
                  andi       s3, t6, 341
                  sltu       t5, zero, a3
                  csrrsi     t4, 0x340, 10
                  fence
                  srl        t5, s4, s8
                  rem        a7, sp, s2
                  rem        s4, s6, s0
                  c.addi     t3, 16
                  csrrci     ra, 0x340, 3
349:              c.or       a2, a0
                  rem        zero, t1, t2
                  nop
352:              c.slli     s10, 26
                  sll        a1, s1, s6
                  c.nop
                  slti       s3, s8, -288
                  srl        s10, gp, s10
                  c.sub      s0, a1
                  c.sub      a5, a1
                  rem        a0, s11, a1
                  blt        s5, t5, 374f
                  mulhsu     ra, a6, t0
                  slt        tp, a3, s6
                  c.andi     a3, -1
                  bne        gp, t1, 383f
                  srai       a6, a7, 19
                  or         s0, t2, s5
                  csrrci     a2, 0x340, 8
                  beq        a7, s9, 378f
                  nop
                  divu       t1, a2, s11
                  fence.i
                  bltu       s1, s7, 386f
                  c.srai     a0, 26
374:              lui        a5, 99476
                  c.andi     a1, 8
                  slti       a2, t3, 323
                  c.sub      a0, a1
378:              bge        s7, zero, 393f
                  bltu       s6, s3, 382f
                  beq        zero, s0, 395f
                  c.slli     t3, 6
382:              bge        t2, sp, 389f
383:              c.sub      s0, a0
                  sltiu      t4, t5, 388
                  andi       s9, a0, 819
386:              srai       s5, s11, 17
                  csrrw      t4, 0x340, t3
                  fence.i
389:              c.li       t3, -1
                  slti       a0, tp, 260
                  c.xor      s1, s0
                  sltiu      a5, a0, 57
393:              rem        t5, t3, s8
                  csrrci     t6, 0x340, 16
395:              c.srli     a3, 31
                  mulh       a6, t2, zero
                  c.bnez     a3, 402f
                  csrrwi     t4, 0x340, 13
                  c.or       a2, s0
                  lui        s9, 876258
                  or         tp, s0, t2
402:              divu       s2, t5, ra
                  sll        t1, s11, a0
                  sltu       a2, s5, tp
                  srl        s3, a7, s11
                  c.beqz     a1, 424f
                  slti       ra, s9, 25
                  fence
                  c.addi     s2, 8
                  bge        s11, s8, 419f
                  csrrc      a2, 0x340, t2
                  c.srli     a5, 15
                  c.and      a0, s1
                  c.or       s0, a0
                  slli       t0, t4, 17
                  csrrci     a5, 0x340, 22
                  andi       tp, s9, 399
                  fence.i
419:              ori        a1, a2, -908
                  srl        a7, s2, s8
                  xor        tp, t3, t5
                  csrrs      s9, 0x340, s5
                  mulhu      t6, a1, t4
424:              c.sub      s1, a3
                  c.mv       s2, s9
                  mulh       t6, s8, s2
                  csrrsi     t0, 0x340, 26
                  blt        gp, s0, 445f
                  sra        s1, s9, t0
                  mulhsu     a7, s10, tp
                  mulh       a4, a3, t4
                  blt        t4, s3, 448f
                  slti       s7, t2, -426
                  csrrs      s6, 0x340, s6
                  c.mv       a3, t1
                  c.srli     a4, 19
                  fence
                  add        s4, a1, s1
                  c.xor      s0, a0
                  blt        a4, s2, 452f
                  divu       a3, t4, a2
                  c.or       a3, a3
                  nop
                  c.xor      a4, a2
445:              c.beqz     a0, 461f
                  c.and      a0, a1
                  bgeu       t1, s3, 450f
448:              csrrs      s3, 0x340, t3
                  bltu       s10, a1, 460f
450:              c.beqz     a3, 459f
                  mul        a7, t1, s4
452:              c.lui      a0, 2
                  remu       a0, a3, s6
                  c.or       a1, a4
                  c.mv       s11, t6
                  sltu       s9, s9, s4
                  fence
                  mulh       a3, t4, s4
459:              sra        t6, t2, a6
460:              csrrs      s8, 0x340, s1
461:              c.slli     s1, 6
                  csrrc      a6, 0x340, a6
                  divu       t3, a3, gp
                  sltu       a6, s4, s7
                  or         zero, t2, s10
                  srl        s2, gp, tp
                  fence
                  c.or       a0, a1
                  srai       t1, t6, 18
                  c.xor      a0, s1
                  div        s0, s10, a1
                  fence
                  mulhu      s4, s2, s7
                  sltiu      t5, tp, 635
                  xori       s2, s6, 459
                  sltiu      a0, a4, -722
                  beq        s1, s5, 497f
                  bltu       s0, s6, 494f
                  c.bnez     a3, 486f
                  sub        s8, t1, a2
                  c.lui      s11, 13
                  c.beqz     a3, 489f
                  sra        s7, a3, tp
                  sra        a6, t0, s3
                  lui        a7, 334112
486:              c.sub      a0, a1
                  bne        s6, s5, 497f
                  slli       s6, s5, 25
489:              srai       s7, s10, 3
                  c.or       s1, a5
                  nop
                  slli       a4, s2, 11
                  c.sub      s0, a2
494:              andi       s10, ra, -29
                  or         s1, a1, a4
                  bge        s9, s10, 512f
497:              or         a0, s0, s4
                  andi       zero, sp, 664
                  bltu       s4, s6, 514f
                  nop
                  andi       t4, s2, 375
                  fence.i
                  fence.i
                  c.bnez     s0, 521f
                  c.or       a5, a1
                  and        zero, s5, s11
                  c.srli     a0, 13
                  sltu       s0, t0, a7
                  div        t0, t6, t1
                  remu       s2, t0, a2
                  and        zero, a3, sp
512:              remu       s11, a3, t5
                  srli       t3, t2, 14
514:              remu       t4, gp, t1
                  srl        t5, tp, s4
                  srli       s10, s0, 24
                  rem        a7, a3, s4
                  slt        a5, a7, a6
                  c.srli     a1, 29
                  beq        s8, t2, 537f
521:              divu       s9, t4, t4
                  or         a4, ra, a7
                  csrrwi     s3, 0x340, 30
                  c.xor      a5, a3
                  xor        t4, a4, t4
                  rem        a3, a4, s6
                  slti       a4, a4, 600
                  beq        s9, t0, 543f
                  slli       s7, t6, 2
                  nop
                  lui        t6, 964442
                  remu       s1, a1, tp
                  addi       t4, s6, -770
                  rem        s3, t3, zero
                  div        a5, s10, t2
                  slt        t3, ra, s4
537:              andi       t1, t1, 659
                  c.and      s0, s1
                  c.andi     a0, -1
                  fence.i
                  bge        a7, s11, 553f
                  c.xor      a0, a5
543:              mulh       zero, zero, t1
                  c.srai     a3, 11
                  mulhsu     a1, ra, t4
                  csrrsi     s3, 0x340, 23
                  c.bnez     a0, 563f
                  srl        s6, a0, t6
                  c.andi     a4, 25
                  c.lui      s0, 3
                  c.srai     a4, 5
                  sll        a5, a7, s0
553:              sltu       a3, s3, s11
                  c.srli     a4, 1
                  blt        s11, s0, 558f
                  c.xor      a0, a5
                  addi       tp, t0, -935
558:              c.or       a4, a3
                  c.srli     a2, 14
                  divu       zero, s10, s10
                  fence.i
                  fence.i
563:              blt        tp, s0, 582f
                  bne        s2, s6, 571f
                  slt        s3, a6, a4
                  c.srli     a3, 29
                  slli       a3, a6, 1
                  c.bnez     a2, 571f
                  andi       ra, a5, 794
                  c.slli     s3, 4
571:              divu       zero, sp, s10
                  and        s2, a5, sp
                  blt        s8, t2, 591f
                  blt        t3, a1, 592f
                  fence.i
                  c.slli     t0, 2
                  bge        tp, zero, 591f
                  c.srai     a4, 11
                  divu       a5, a6, s4
                  mulhsu     s7, a4, t2
                  nop
582:              c.srai     a0, 20
                  c.li       a0, 25
                  c.nop
                  c.srai     a0, 10
                  csrrwi     s7, 0x340, 3
                  sub        ra, tp, t1
                  mulhsu     a7, s2, zero
                  c.bnez     s1, 600f
                  add        a6, a7, a2
591:              addi       t5, zero, 97
592:              c.sub      a5, a1
                  csrrs      s10, 0x340, gp
                  slt        s3, s9, s8
                  rem        s11, s7, a0
                  bgeu       t0, s9, 602f
                  and        s0, t4, t6
                  divu       s8, t1, sp
                  srl        t0, gp, s2
600:              srai       s1, t2, 23
                  csrrsi     ra, 0x340, 11
602:              c.srai     a4, 9
                  c.or       a4, a2
                  sltu       a3, zero, s5
                  sll        s3, t3, a3
                  bltu       s9, a4, 622f
                  lui        t5, 1016484
                  mulhu      t4, s4, zero
                  csrrc      s3, 0x340, a5
                  slt        a3, s1, s5
                  xor        t4, a7, a3
                  bltu       t3, s11, 631f
                  blt        s11, t6, 627f
                  andi       s9, t4, -694
                  c.sub      s0, a2
                  sll        s11, a4, s6
                  sltu       s0, a3, s1
                  nop
                  addi       s9, s11, 613
                  xori       tp, s8, 578
                  remu       a3, t0, s3
622:              fence
                  c.srai     a1, 18
                  c.li       a7, -1
                  ori        s4, s11, 291
                  csrrs      zero, 0x340, s8
627:              c.xor      s0, a2
                  c.mv       t3, tp
                  c.li       s6, 23
                  div        zero, s4, t0
631:              slt        s8, t0, t0
                  or         t4, s11, sp
                  bgeu       zero, t0, 646f
                  srli       a3, t0, 15
                  sll        s5, ra, s6
                  addi       s2, s0, 836
                  remu       s1, a3, a4
                  or         t3, a2, t6
                  blt        a1, s5, 644f
                  andi       a7, s9, 571
                  divu       a0, a7, t4
                  add        s3, gp, s10
                  csrrs      s6, 0x340, s1
644:              csrrci     s11, 0x340, 27
                  csrrw      zero, 0x340, a3
646:              rem        t6, s3, s5
                  add        s6, s6, a1
                  mulhsu     a1, s3, a4
                  c.slli     a5, 19
                  csrrci     a3, 0x340, 4
                  ori        s11, s7, 199
                  c.nop
                  c.lui      s6, 16
                  xori       a5, s11, 455
                  c.and      a5, s0
                  c.or       s0, s0
                  csrrsi     ra, 0x340, 27
                  sltu       t6, a7, t1
                  slti       ra, tp, 219
                  blt        s2, s3, 662f
                  bne        sp, a4, 678f
662:              c.li       a3, -1
                  mulh       a1, s1, s2
                  fence
                  mul        s5, s9, t3
                  c.slli     t1, 4
                  mulhsu     a4, s1, a5
                  c.slli     a5, 29
                  c.li       t3, 19
                  beq        s2, t0, 685f
                  srl        s7, a0, a4
                  mulhu      t1, s8, ra
                  sltu       t5, s8, s0
                  xori       zero, ra, 472
                  beq        a0, t2, 680f
                  addi       s4, s6, -609
                  c.nop
678:              auipc      a4, 823819
                  c.addi     a0, -1
680:              c.and      a2, s1
                  c.addi     t0, -1
                  sra        s10, tp, gp
                  c.or       a1, s1
                  sltiu      s5, s8, -53
685:              bne        s3, t4, 699f
                  xor        s0, a6, s0
                  c.slli     s0, 12
                  slti       t3, s6, -260
                  ori        a4, zero, -991
                  auipc      a6, 753829
                  csrrci     a2, 0x340, 10
                  sltu       a2, s11, a4
                  bge        s7, s11, 708f
                  c.sub      s0, a3
                  add        t5, sp, t2
                  xor        a1, a6, a2
                  sltiu      tp, zero, -934
                  c.nop
699:              c.add      a2, t3
                  srl        s7, s8, a5
                  srli       s10, t2, 19
                  srli       zero, a7, 5
                  lui        a0, 924633
                  bge        tp, s7, 711f
                  slti       ra, ra, -431
                  divu       s0, s9, ra
                  rem        t3, s1, s4
708:              c.addi     s6, 23
                  remu       t6, t0, s2
                  c.nop
711:              sltu       s8, t5, a0
                  sltiu      ra, s11, 374
                  sub        t5, s1, t4
                  sltu       s0, t4, gp
                  xori       a5, t1, -238
                  or         s7, ra, s7
                  c.or       a4, a3
                  and        ra, a5, s10
                  fence.i
                  c.beqz     s0, 738f
                  mulhu      s9, a2, a1
                  sll        s9, s1, a4
                  c.xor      s0, a0
                  sub        a7, s9, t5
                  rem        t3, s4, tp
                  c.sub      a5, a2
                  c.or       s1, a3
                  fence
                  c.nop
                  beq        a3, a1, 750f
                  sra        s7, s0, a2
                  fence
                  and        s9, a1, s2
                  and        t3, s5, a6
                  nop
                  csrrs      t6, 0x340, t2
                  csrrsi     t1, 0x340, 6
738:              srli       a3, s6, 15
                  c.add      t4, a1
                  c.li       a6, 20
                  csrrsi     s9, 0x340, 7
                  sltiu      s4, a5, 11
                  c.xor      s0, a0
                  ori        a7, s10, 492
                  slli       a1, s11, 30
                  c.addi     s1, 6
                  c.li       s5, -1
                  mulhsu     t1, t6, s4
                  srl        s2, t1, s7
750:              csrrsi     s2, 0x340, 11
                  rem        zero, zero, a0
                  xor        s8, a2, t5
                  mulhu      a1, t5, s4
                  sra        s2, a6, a0
                  fence.i
                  csrrci     t4, 0x340, 0
                  bgeu       s2, s0, 773f
                  c.srai     s1, 21
                  c.li       a5, 31
                  c.beqz     a2, 776f
                  sltiu      s10, s9, 320
                  csrrwi     s3, 0x340, 23
                  sll        s4, s0, a0
                  fence.i
                  addi       t5, s3, -36
                  or         t5, tp, s0
                  mul        a7, a7, t5
                  csrrc      t1, 0x340, s8
                  csrrci     t5, 0x340, 10
                  csrrsi     a7, 0x340, 12
                  c.sub      s1, a5
                  divu       s3, sp, t4
773:              slli       tp, s11, 0
                  sltiu      s5, t3, -442
                  c.bnez     s0, 794f
776:              bne        t3, t0, 791f
                  sltu       a3, t5, tp
                  csrrwi     a3, 0x340, 12
                  csrrwi     s6, 0x340, 28
                  csrrsi     s5, 0x340, 10
                  fence
                  addi       s6, s4, -387
                  nop
                  divu       t4, gp, s8
                  mulh       t6, t0, s3
                  ori        s6, a5, -514
                  auipc      a4, 161829
                  c.lui      a3, 15
                  mulhu      a6, t2, a1
                  c.or       s1, a4
791:              c.lui      a7, 24
                  sub        s2, a5, t1
                  auipc      s11, 379365
794:              csrrw      s9, 0x340, s10
                  c.andi     a4, 21
                  c.li       s1, -1
                  xor        a5, s9, s10
                  sra        s5, sp, t2
                  c.beqz     a0, 801f
                  remu       s6, s7, zero
801:              csrrs      a4, 0x340, sp
                  c.sub      a2, s0
                  c.mv       t3, s5
                  mulhu      s11, s1, ra
                  rem        s7, t1, s7
                  slli       s6, s0, 8
                  mul        s1, t0, ra
                  c.or       s1, a2
                  andi       s3, t0, 532
                  div        s4, t6, t6
                  c.beqz     s1, 826f
                  slt        t4, t5, s4
                  or         s10, s0, s10
                  slli       s2, s1, 12
                  xor        ra, t0, tp
                  c.xor      s0, a3
                  xor        t1, s0, a0
                  c.andi     a4, -1
                  mulh       s5, s1, s7
                  c.addi     a6, 15
                  divu       s6, a7, sp
                  rem        a4, t5, tp
                  slli       s6, t6, 23
                  remu       a4, s4, ra
                  sltiu      a0, t6, -523
826:              slli       a2, tp, 5
                  sltu       t1, t4, zero
                  auipc      s3, 1017070
                  c.beqz     a4, 839f
                  sltiu      s8, t6, -179
                  mul        a4, a3, gp
                  sltiu      s4, s10, 640
                  mulh       s4, a7, s11
                  sltiu      s0, a1, -192
                  sub        a1, s0, a5
                  rem        t4, zero, s7
                  blt        s1, s10, 843f
                  c.add      a3, a7
839:              c.or       s0, a0
                  rem        s10, s6, s5
                  c.lui      a1, 16
                  srai       tp, tp, 16
843:              c.beqz     a5, 852f
                  srl        s2, tp, a2
                  c.sub      a0, a1
                  xori       s4, a1, -321
                  auipc      a7, 776770
                  addi       tp, t0, 810
                  c.sub      a1, a3
                  remu       s8, t6, zero
                  and        ra, s0, s6
852:              c.add      a4, s6
                  sra        a6, a6, a4
                  mulh       tp, a2, ra
                  divu       s0, tp, s2
                  c.slli     ra, 15
                  divu       a2, t4, s4
                  ori        t3, s5, 593
                  csrrsi     t6, 0x340, 14
                  add        t0, tp, s10
                  c.and      a5, a2
                  srl        a2, sp, t0
                  remu       s9, s0, ra
                  mul        a1, t1, s6
                  rem        a6, s5, s0
                  c.li       s3, 10
                  csrrwi     s2, 0x340, 11
                  addi       s8, t2, -302
                  fence
                  bgeu       s0, a0, 887f
                  beq        s1, s10, 888f
                  csrrsi     a7, 0x340, 1
                  rem        a0, t4, s5
                  mulhu      a3, zero, s8
                  csrrwi     s10, 0x340, 19
                  sub        s0, t2, s11
                  bltu       t5, a7, 884f
                  c.andi     a5, 26
                  csrrc      a0, 0x340, a5
                  xor        s10, s1, zero
                  mulh       t4, s9, s2
                  c.srli     a2, 28
                  sra        a0, tp, s6
884:              c.andi     s1, 29
                  mul        a7, t2, sp
                  c.srli     s0, 3
887:              c.srai     a0, 13
888:              c.add      a0, ra
                  rem        s6, a0, s4
                  csrrsi     t0, 0x340, 13
                  c.mv       s11, s4
                  bltu       t3, t0, 903f
                  srai       tp, t1, 25
                  c.andi     a1, 22
                  csrrsi     s3, 0x340, 4
                  bltu       a6, s0, 910f
                  c.or       a0, s0
                  c.xor      a1, s0
                  slli       s11, s11, 23
                  sltu       tp, a0, s6
                  bgeu       a6, a3, 917f
                  csrrwi     a3, 0x340, 29
903:              srl        a4, a3, s9
                  c.nop
                  c.or       s1, a2
                  c.and      a1, a2
                  c.andi     a3, 9
                  rem        t1, t0, s1
                  and        s6, t0, s11
910:              remu       ra, a3, a5
                  c.slli     a0, 27
                  srai       s7, s10, 8
                  c.add      a6, a5
                  mulhsu     s10, a4, s6
                  c.xor      a0, s0
                  sub        t1, s9, t2
917:              fence
                  c.addi     s6, -1
                  ori        a3, t1, 433
                  mulhu      s8, s10, s11
                  xor        a6, s4, t0
                  addi       s10, t3, 103
                  divu       s11, t5, s8
                  blt        tp, a3, 936f
                  csrrsi     tp, 0x340, 10
                  fence
                  div        a3, t3, gp
                  c.beqz     a1, 935f
                  sub        t3, s6, a0
                  srai       t1, s5, 20
                  bge        a1, sp, 950f
                  xor        a4, t3, s6
                  or         t4, s4, gp
                  c.srli     a4, 7
935:              mul        s11, s10, s11
936:              c.srli     s0, 25
                  sltiu      a4, t4, -216
                  slt        t0, a4, a4
                  c.bnez     a0, 955f
                  csrrsi     a1, 0x340, 30
                  c.beqz     s0, 944f
                  sltu       a0, t1, a2
                  sra        s10, gp, s0
944:              c.addi     s3, -1
                  csrrw      t4, 0x340, s2
                  lui        s10, 523851
                  div        t3, a1, sp
                  la         a0, region_3+156 #start load_store_instr_stream_1
                  lbu        s7, 71(a0)
                  la         a5, region_1+11634 #start load_store_instr_stream_2
                  la         a1, region_4+3282 #start load_store_instr_stream_0
                  sb         t2, 169(a0)
                  sb         a7, -21(a5)
                  sb         t2, 5(a5)
                  lbu        a2, 101(a0)
                  lb         a2, 17(a5)
                  sb         a5, -63(a5)
                  sb         t3, 182(a1)
                  lbu        a4, 60(a1)
                  lh         zero, -144(a0)
                  lbu        zero, -65(a1)
                  sb         s5, -82(a0)
                  lbu        s7, 11(a5)
                  lhu        a3, 82(a0)
                  lh         s10, 0(a0)
                  lhu        s2, 24(a5)
                  lb         s8, 250(a1)
                  lbu        s5, 43(a5)
                  sw         s4, 184(a0) #end load_store_instr_stream_1
                  sb         s8, -23(a5) #end load_store_instr_stream_2
                  lb         s8, -233(a1) #end load_store_instr_stream_0
                  fence
                  nop
950:              c.li       t6, -1
                  div        t5, s7, s7
                  sub        a7, zero, a5
                  csrrwi     zero, 0x340, 18
                  mulh       s3, s10, t3
955:              div        a6, a6, s3
                  beq        t2, s1, 973f
                  xor        tp, t3, t3
                  c.addi     a4, 30
                  c.nop
                  c.srli     s0, 7
                  blt        a7, a7, 979f
                  auipc      a2, 30723
                  xor        a1, t4, a6
                  c.srli     a4, 21
                  c.sub      a3, s1
                  c.slli     ra, 16
                  div        s6, a5, s6
                  addi       a5, s10, 949
                  srli       a4, s2, 7
                  sub        s10, s10, t2
                  bge        t3, tp, 974f
                  c.mv       ra, s4
973:              divu       s5, a7, a6
974:              csrrwi     a3, 0x340, 31
                  c.lui      s8, 28
                  lui        a5, 477371
                  mulhu      tp, t1, s3
                  sltiu      t4, t4, -343
979:              lui        t1, 229964
                  c.bnez     s1, 993f
                  blt        s5, t6, 991f
                  nop
                  slti       t3, s8, 690
                  c.and      a5, a5
                  c.bnez     a1, 1003f
                  sltiu      zero, s2, 846
                  c.bnez     a0, 994f
                  csrrci     a5, 0x340, 19
                  xori       t5, a3, -578
                  bltu       ra, t6, 1008f
991:              or         a6, zero, a4
                  c.beqz     a3, 999f
993:              bne        a4, zero, 1000f
994:              sra        tp, s7, s0
                  beq        sp, t4, 1011f
                  csrrw      t6, 0x340, a5
                  csrrci     s5, 0x340, 16
                  csrrs      s5, 0x340, t3
999:              c.or       s0, a2
1000:             csrrw      s5, 0x340, a2
                  c.nop
                  csrrwi     s6, 0x340, 31
1003:             bgeu       s6, t2, 1014f
                  srai       zero, tp, 3
                  c.addi     t5, -1
                  bltu       a7, a1, 1018f
                  csrrc      a7, 0x340, a4
1008:             bne        t3, s0, 1011f
                  c.addi     t1, 16
                  c.or       a0, a1
1011:             srl        a2, t3, a3
                  addi       t0, t0, 341
                  mulhu      a0, t6, sp
1014:             mulhu      zero, a1, t0
                  c.srli     a0, 19
                  csrrci     s7, 0x340, 22
                  slli       zero, s5, 12
1018:             csrrc      a7, 0x340, a0
                  bltu       t1, t4, 1025f
                  slli       s3, zero, 5
                  slti       t5, a5, -532
                  div        s10, s10, gp
                  csrrw      t3, 0x340, t2
                  xor        a6, a3, zero
1025:             nop
                  bltu       s3, s5, 1035f
                  or         t3, a6, gp
                  xori       a1, t4, 32
                  c.addi     tp, 18
                  andi       a5, a0, -462
                  srai       s2, s11, 9
                  csrrwi     a3, 0x340, 26
                  and        a1, t2, s9
                  sll        ra, s3, s9
1035:             ori        s10, t2, -94
                  sra        a4, s6, a6
                  ori        a0, a4, 791
                  c.slli     s6, 30
                  c.li       t6, -1
                  sra        s1, t6, a5
                  sltiu      a3, s4, 507
                  fence
                  csrrc      t3, 0x340, a7
                  bgeu       t0, t0, 1060f
                  mulhsu     a5, t1, t1
                  sra        t0, t6, t6
                  slti       t6, a3, -314
                  srli       t3, s8, 18
                  mulhu      tp, s9, s2
                  c.li       s11, 6
                  sra        a3, t5, s7
                  nop
                  c.bnez     a5, 1067f
                  fence
                  c.beqz     s1, 1060f
                  c.li       ra, 26
                  mul        tp, a6, s5
                  c.slli     t1, 12
                  c.addi     a2, -1
1060:             c.bnez     s0, 1077f
                  c.add      ra, t1
                  csrrw      ra, 0x340, t1
                  c.srli     s1, 23
                  c.lui      a3, 30
                  csrrc      s6, 0x340, s0
                  c.add      s9, t4
1067:             div        tp, s3, tp
                  xor        a7, a0, s2
                  addi       t4, a2, 669
                  or         t1, t3, s10
                  mulh       s4, t1, a5
                  c.beqz     a0, 1085f
                  slt        s5, a6, t4
                  auipc      t3, 635509
                  mulhsu     zero, a5, s1
                  csrrc      t3, 0x340, t6
1077:             sltu       s1, s5, s5
                  bltu       s10, tp, 1095f
                  bltu       a5, s3, 1096f
                  csrrc      s1, 0x340, ra
                  andi       s8, a4, -757
                  srl        s8, s9, s3
                  csrrs      s6, 0x340, t3
                  slli       a4, s1, 15
1085:             c.beqz     a5, 1100f
                  slt        t6, s3, s1
                  sltiu      a3, s8, 121
                  c.andi     s1, -1
                  div        tp, t4, ra
                  csrrsi     t1, 0x340, 28
                  sll        t0, t2, a4
                  csrrc      s6, 0x340, s5
                  div        s3, s11, s2
                  csrrsi     a5, 0x340, 8
1095:             divu       s9, a3, t3
1096:             c.sub      a5, s1
                  csrrc      a0, 0x340, zero
                  sra        ra, s5, a7
                  ori        s7, t0, 739
1100:             mulhsu     s8, a6, s0
                  csrrs      s3, 0x340, s3
                  sltiu      t5, sp, 601
                  csrrci     a2, 0x340, 18
                  sub        a7, a6, s9
                  andi       t5, s2, 950
                  addi       a3, s2, -579
                  c.srli     s0, 27
                  c.srli     a3, 2
                  add        t0, s10, t3
                  csrrw      s0, 0x340, s3
                  csrrwi     s5, 0x340, 3
                  c.srai     a0, 22
                  c.li       t5, 10
                  srli       t1, t0, 29
                  beq        a2, s7, 1117f
                  c.andi     a1, 25
1117:             lui        a6, 407538
                  fence.i
                  slli       t3, a6, 20
                  c.and      a1, s1
                  ori        t0, t4, -302
                  and        s8, a3, t3
                  fence
                  c.lui      s1, 27
                  auipc      s8, 137651
                  c.xor      a0, a5
                  add        s6, s10, s6
                  blt        t6, a3, 1142f
                  csrrs      s11, 0x340, a7
                  srl        s9, a7, s6
                  c.add      a6, s0
                  bltu       s5, s11, 1148f
                  csrrc      ra, 0x340, t6
                  mulhsu     a4, tp, tp
                  csrrsi     t3, 0x340, 30
                  srai       s5, a7, 16
                  c.addi     a7, -1
                  csrrci     a6, 0x340, 17
                  bgeu       gp, zero, 1154f
                  srai       s9, t2, 12
                  csrrsi     t6, 0x340, 4
1142:             mulhu      a1, s11, s5
                  csrrc      t6, 0x340, a3
                  xor        s0, t4, s3
                  divu       t6, zero, s10
                  div        t4, t5, s11
                  andi       s10, zero, 1001
1148:             srli       zero, s8, 9
                  mulh       t4, a2, t2
                  beq        s1, s9, 1153f
                  csrrsi     s5, 0x340, 26
                  nop
1153:             remu       s1, sp, s10
1154:             sltu       t6, s2, ra
                  sub        t1, t3, s1
                  c.srai     s0, 5
                  c.and      s1, a0
                  nop
                  c.lui      s4, 19
                  c.srli     a5, 16
                  div        s3, s7, ra
                  csrrwi     a1, 0x340, 29
                  slti       s4, t3, 922
                  sltu       s7, tp, s11
                  and        a3, zero, t4
                  csrrs      a5, 0x340, a1
                  c.slli     s2, 5
                  slt        s11, s1, a3
                  mulhu      t5, sp, s9
                  sra        t5, zero, t1
                  csrrci     s2, 0x340, 20
                  beq        s4, s5, 1191f
                  mulhsu     ra, t3, s1
                  c.nop
                  fence
                  bge        a1, a6, 1192f
                  srai       t1, t3, 2
                  or         a5, a5, s2
                  c.and      a5, a0
                  c.slli     a6, 4
                  or         a7, a2, a4
                  c.mv       a1, s5
                  ori        t1, t4, 540
                  c.srai     a0, 22
                  c.nop
                  ori        s9, s9, 251
                  bltu       t2, s0, 1207f
                  csrrc      s8, 0x340, t4
                  mulhsu     tp, a0, ra
                  bne        t1, s6, 1209f
1191:             c.slli     t4, 18
1192:             beq        s10, s11, 1207f
                  sltiu      t4, t3, 607
                  bgeu       s8, tp, 1196f
                  remu       t3, s9, s9
1196:             csrrw      a0, 0x340, t6
                  sltu       s3, s6, t5
                  c.li       a1, -1
                  fence.i
                  csrrsi     t4, 0x340, 16
                  addi       t4, tp, 459
                  sltiu      s5, s1, 930
                  sltu       a4, a5, a0
                  csrrci     t5, 0x340, 9
                  c.li       s1, 4
                  sltiu      s11, s4, 860
1207:             c.xor      a5, s0
                  slli       s6, t1, 22
1209:             ori        t4, s5, 545
                  div        s9, a2, a1
                  sltiu      s7, s3, -319
                  nop
                  csrrsi     t6, 0x340, 18
                  nop
                  addi       s9, s7, 391
                  c.xor      a1, a4
                  c.sub      a1, a2
                  nop
                  remu       a6, sp, zero
                  or         s8, s3, sp
                  auipc      s5, 842014
                  c.xor      a5, a4
                  divu       ra, s4, s1
                  srli       t1, a2, 12
                  bgeu       s0, s11, 1241f
                  divu       t0, s7, t5
                  c.beqz     a1, 1244f
                  csrrci     s1, 0x340, 0
                  mulh       s4, t6, t4
                  beq        s9, s6, 1236f
                  csrrw      a0, 0x340, s11
                  c.and      a2, a4
                  divu       zero, a3, s11
                  remu       a7, s7, a3
                  slti       a2, a1, -412
1236:             auipc      s0, 262559
                  nop
                  nop
                  mulh       t1, s8, sp
                  c.slli     a1, 31
1241:             mulh       t4, t1, a4
                  div        zero, a3, a7
                  c.nop
1244:             addi       tp, s3, -31
                  fence
                  csrrwi     zero, 0x340, 23
                  xor        s8, s9, ra
                  mulhu      s7, a5, a0
                  fence
                  sltu       t3, a4, s0
                  remu       a2, t4, t5
                  c.and      a4, a0
                  fence
                  fence.i
                  slt        ra, a0, s6
                  addi       t1, t2, 740
                  div        a2, tp, s7
                  fence
                  slli       s5, a1, 28
                  lui        a0, 77107
                  c.andi     s1, 11
                  fence.i
                  slt        s7, s1, a5
                  nop
                  csrrsi     a7, 0x340, 26
                  xor        a1, a5, a3
                  sub        s7, s7, a5
                  lui        t0, 490330
                  bltu       s1, tp, 1279f
                  csrrw      t3, 0x340, t1
                  fence.i
                  auipc      s5, 984523
                  sra        t1, a3, s6
                  srli       tp, s1, 29
                  fence
                  srl        zero, t3, a7
                  c.sub      a4, a4
                  c.lui      t5, 20
1279:             divu       s0, t5, s3
                  csrrci     a5, 0x340, 21
                  bne        s6, a4, 1296f
                  ori        a0, a1, 94
                  c.srai     s0, 12
                  sltiu      t1, t5, -249
                  xori       tp, a1, 662
                  sll        s2, t4, t5
                  mulhsu     a7, gp, t6
                  bltu       s7, zero, 1302f
                  c.or       a0, a1
                  blt        a6, a7, 1302f
                  c.beqz     s1, 1308f
                  fence.i
                  xori       ra, a6, 385
                  bgeu       a1, s0, 1310f
                  auipc      s10, 335636
1296:             mulhsu     a1, s11, s3
                  c.xor      a0, s0
                  beq        a4, s7, 1313f
                  or         a4, a6, t0
                  c.xor      a1, s0
                  c.sub      a1, a0
1302:             c.li       s3, -1
                  remu       s1, zero, s9
                  sll        s6, a4, sp
                  sll        t0, s6, t0
                  c.beqz     s0, 1323f
                  remu       t1, s9, t1
1308:             and        a2, a5, a6
                  fence.i
1310:             div        s2, zero, a4
                  sltu       a6, s3, s9
                  xor        s11, a7, gp
1313:             csrrc      a2, 0x340, a5
                  c.or       a5, a4
                  csrrwi     s11, 0x340, 18
                  andi       s6, t0, -684
                  add        s1, tp, s2
                  c.slli     a1, 31
                  bne        zero, zero, 1337f
                  srai       s8, s3, 1
                  c.lui      s11, 6
                  xor        t1, a5, t0
                  la         t4, region_4+1474 #start riscv_load_store_rand_instr_stream_1
                  lb         s6, 1392(t4)
                  rem        tp, s6, a4
                  srli       s6, s9, 23
                  lh         s3, 48(t4)
                  sh         zero, 840(t4)
                  sb         s8, -900(t4)
                  c.nop
                  andi       s4, t4, 178
                  lb         s4, -927(t4)
                  lbu        a2, 347(t4)
                  slti       tp, sp, -81
                  c.addi     t5, -1
                  lb         s1, -1068(t4)
                  and        a3, s9, ra
                  lbu        a5, -1041(t4)
                  srl        ra, t1, a0
                  csrrs      s3, 0x340, t5
                  remu       a4, s2, a3
                  lbu        t0, 1283(t4)
                  sb         s9, 451(t4)
                  lb         a0, 1762(t4)
                  sb         t2, -534(t4)
                  lhu        t5, 1920(t4)
                  lb         s9, -759(t4)
                  c.lui      s6, 21
                  sb         s7, -479(t4)
                  andi       a5, t3, -430
                  lh         s9, 882(t4)
                  lb         s2, 1165(t4)
                  sb         zero, -1193(t4)
                  lbu        a1, 692(t4)
                  sb         a2, 160(t4)
                  lbu        s8, 379(t4) #end riscv_load_store_rand_instr_stream_1
1323:             mulh       s4, t1, a2
                  bgeu       s11, s2, 1331f
                  slti       a1, t2, -1009
                  c.add      t4, a2
                  mulhsu     s3, s5, t5
                  slti       a1, s8, -794
                  mulhu      s10, a7, t4
                  blt        s10, a0, 1343f
1331:             c.slli     a7, 22
                  div        s7, a5, s4
                  c.beqz     a2, 1347f
                  c.add      t1, t5
                  ori        s3, s7, -928
                  csrrci     s2, 0x340, 16
1337:             csrrci     a5, 0x340, 31
                  c.and      a5, a1
                  c.srai     a5, 30
                  c.mv       t0, s6
                  add        s6, s8, t3
                  csrrs      zero, 0x340, s9
1343:             ori        ra, s3, 637
                  c.li       a4, 5
                  auipc      s9, 89787
                  bne        a5, zero, 1362f
1347:             bge        s4, tp, 1352f
                  csrrci     s4, 0x340, 3
                  srl        t6, t0, gp
                  sll        s11, a4, a5
                  csrrw      s2, 0x340, tp
1352:             andi       ra, a0, -340
                  bgeu       t1, a1, 1373f
                  mulh       s0, s0, ra
                  bne        t3, s3, 1358f
                  c.andi     a2, 23
                  bne        a7, t6, 1375f
1358:             divu       s3, s7, a2
                  csrrw      s9, 0x340, t4
                  c.lui      a4, 12
                  csrrs      s10, 0x340, t2
1362:             c.nop
                  sub        a7, a7, a0
                  c.li       s2, 5
                  xor        s5, a4, sp
                  divu       a3, s9, s2
                  div        s10, s8, a7
                  or         tp, t1, a0
                  csrrc      s3, 0x340, s6
                  andi       t5, s3, 87
                  bne        a6, t5, 1387f
                  c.addi     t3, 15
1373:             srli       a1, s11, 28
                  c.li       s1, 8
1375:             c.andi     a1, -1
                  beq        a3, s9, 1391f
                  mulhsu     s4, s4, a6
                  xori       s9, gp, -50
                  mulhu      t5, a4, ra
                  c.mv       s0, sp
                  c.and      s0, a2
                  sub        t0, a2, s5
                  auipc      a0, 395150
                  sltiu      s1, a2, -354
                  sub        a5, s0, gp
                  addi       a6, t6, 807
1387:             c.mv       t1, a4
                  c.beqz     a4, 1399f
                  csrrci     s2, 0x340, 26
                  c.mv       s11, t0
1391:             div        a3, s8, s8
                  ori        a0, t3, 378
                  sltu       t0, t1, s0
                  c.bnez     a5, 1401f
                  mulhu      s11, a2, s7
                  or         s2, s3, a3
                  blt        s2, t2, 1406f
                  div        a6, s2, a5
1399:             c.mv       a4, s10
                  mulhu      s5, t2, t3
1401:             sltu       a3, a2, t3
                  sra        s11, s0, a7
                  mul        t4, t5, t3
                  slti       s2, t2, -592
                  divu       s7, t3, s5
1406:             addi       t1, t0, 1004
                  add        s10, s4, t1
                  csrrs      a0, 0x340, s0
                  c.add      a7, t4
                  c.li       a3, 26
                  c.lui      a1, 9
                  mulhu      a0, s9, s9
                  fence
                  mul        s6, a1, a4
                  c.srli     a5, 7
                  mul        s0, s1, s9
                  mulhsu     s0, a3, s5
                  lui        tp, 609424
                  sltiu      a2, a0, -450
                  c.nop
                  c.andi     a2, -1
                  c.srli     a4, 12
                  csrrs      a4, 0x340, t0
                  divu       tp, s2, t2
                  c.lui      a1, 17
                  sub        s8, sp, s4
                  c.xor      a4, a2
                  c.sub      a1, a2
                  add        t4, s8, s6
                  and        t5, a3, a7
                  sub        a5, t2, a7
                  c.or       a4, s1
                  lui        s11, 571514
                  c.andi     a0, 31
                  c.nop
                  c.lui      t1, 18
                  fence.i
                  c.mv       a4, s4
                  sra        t4, t4, a0
                  csrrci     a6, 0x340, 12
                  or         s9, a2, a1
                  andi       s1, t1, -530
                  mulhu      s10, a4, a3
                  mul        a1, s0, a4
                  fence.i
                  slt        a3, t3, t4
                  slt        s10, a1, a7
                  sltu       s8, ra, a2
                  mul        t5, ra, a2
                  rem        a2, t5, s11
                  or         t5, s0, a7
                  fence.i
                  srli       t3, s8, 10
                  andi       s4, s10, 435
                  c.andi     s0, 15
                  csrrwi     a2, 0x340, 2
                  bgeu       a7, t2, 1476f
                  nop
                  c.beqz     a4, 1462f
                  remu       a3, s10, zero
                  csrrsi     s11, 0x340, 0
1462:             c.srai     a4, 11
                  slti       s5, s11, 391
                  csrrw      t6, 0x340, s6
                  c.xor      a0, s0
                  csrrc      s1, 0x340, s7
                  c.and      s0, s0
                  sll        s4, sp, gp
                  rem        a1, s2, s9
                  xori       a5, t6, -363
                  and        tp, t1, s8
                  c.or       s0, s1
                  mulhu      a6, ra, zero
                  srli       s2, s5, 10
                  c.or       a5, s1
1476:             xor        s11, gp, a6
                  c.srai     a3, 10
                  c.sub      a2, a3
                  csrrs      t6, 0x340, s0
                  slli       s10, s6, 21
                  csrrsi     a0, 0x340, 17
                  c.andi     a0, -1
                  c.srli     a1, 19
                  nop
                  c.bnez     a2, 1492f
                  nop
                  c.lui      t6, 21
                  beq        t4, s1, 1507f
                  csrrwi     a5, 0x340, 31
                  mulh       tp, t3, s8
                  c.mv       s0, t1
1492:             c.bnez     a5, 1499f
                  c.srai     s0, 13
                  remu       a4, s4, tp
                  and        t3, a6, tp
                  c.add      s5, s3
                  c.nop
                  c.nop
1499:             c.addi     t0, -1
                  csrrw      a3, 0x340, s5
                  c.add      s5, a3
                  c.nop
                  slli       a6, s5, 29
                  srl        a5, a0, t4
                  c.lui      s2, 2
                  c.lui      s5, 2
1507:             csrrwi     s9, 0x340, 27
                  rem        a4, zero, s11
                  sra        s5, sp, a5
                  csrrsi     a2, 0x340, 16
                  add        t6, t2, a6
                  csrrci     s10, 0x340, 28
                  c.xor      a2, s1
                  sll        a3, t4, gp
                  auipc      a0, 340164
                  blt        s8, t1, 1523f
                  sltiu      t6, s2, 16
                  c.li       t1, -1
                  xor        t6, zero, a1
                  c.lui      a1, 9
                  lui        s7, 1019176
                  addi       s0, s0, 426
1523:             mul        t6, a0, s5
                  bltu       a0, tp, 1542f
                  csrrc      a2, 0x340, s9
                  fence
                  csrrc      s10, 0x340, s6
                  c.xor      a3, a4
                  xori       ra, zero, -121
                  c.addi     ra, 13
                  c.srai     s1, 1
                  csrrsi     a2, 0x340, 26
                  c.srli     a3, 6
                  nop
                  sub        zero, t0, t2
                  slli       a7, s8, 19
                  bgeu       gp, gp, 1554f
                  andi       s10, t5, -509
                  srai       a1, s8, 16
                  mulh       a3, s1, s2
                  divu       s2, a7, s9
1542:             csrrwi     s5, 0x340, 15
                  srl        a6, a2, s1
                  sra        s11, s9, a4
                  bge        tp, s2, 1559f
                  mul        s0, gp, s11
                  csrrsi     s3, 0x340, 14
                  bltu       t3, s2, 1554f
                  c.xor      a2, a5
                  mulhu      a3, t2, s6
                  slti       a0, a7, 202
                  mulhsu     a7, s8, a1
                  c.or       s1, a1
1554:             c.and      s1, s1
                  c.and      a2, s0
                  mulhu      t5, s8, t1
                  bne        a6, s5, 1568f
                  c.beqz     a5, 1565f
1559:             slti       s0, s3, -902
                  csrrci     zero, 0x340, 5
                  c.nop
                  csrrwi     a6, 0x340, 27
                  mul        a4, a7, s10
                  c.add      tp, s10
1565:             c.nop
                  sub        a7, s11, s11
                  csrrw      s7, 0x340, s8
1568:             sub        a5, s3, t2
                  fence.i
                  and        s10, a5, gp
                  beq        s4, t4, 1586f
                  c.mv       a4, tp
                  sltu       s0, a6, a3
                  c.srai     a5, 27
                  mulhu      a4, zero, s11
                  c.addi     a0, -1
                  divu       s8, s7, s8
                  srli       t4, s8, 21
                  andi       a1, a4, -862
                  slt        s0, a3, zero
                  sltu       a5, zero, s6
                  c.srli     a4, 22
                  nop
                  nop
                  csrrsi     a3, 0x340, 19
1586:             c.xor      s1, s1
                  sltiu      s11, s10, -445
                  bgeu       a1, a2, 1603f
                  la         t5, region_3+408 #start riscv_hazard_instr_stream_3
                  lb         a1, -31(t5)
                  csrrs      s2, 0x340, s11
                  csrrsi     s2, 0x340, 16
                  lhu        s11, -40(t5)
                  lbu        t0, 49(t5)
                  lhu        a1, 8(t5)
                  c.and      a1, a1
                  c.addi     a1, 27
                  and        a1, tp, s11
                  ori        tp, s2, -394
                  srli       tp, s10, 0
                  lb         a1, 25(t5)
                  sub        s2, tp, s11
                  mulhsu     s2, s10, s2
                  sb         s11, 5(t5)
                  lbu        s10, 41(t5)
                  c.li       s10, -1
                  auipc      s11, 200107
                  lbu        s2, 21(t5)
                  sb         s11, 5(t5)
                  c.srai     a1, 13
                  lh         s10, -38(t5)
                  lhu        s2, -2(t5)
                  lhu        tp, -18(t5)
                  nop
                  nop
                  lh         s10, 26(t5)
                  lh         a1, -4(t5)
                  lb         s10, 25(t5)
                  c.or       a1, a1
                  sb         s10, -21(t5)
                  sh         t0, 2(t5)
                  lbu        tp, 55(t5)
                  sb         t0, 2(t5)
                  sh         s10, 30(t5)
                  sb         s10, 46(t5)
                  sb         s11, -29(t5)
                  lb         tp, 22(t5)
                  xori       a1, s2, -480
                  c.li       s2, 2
                  div        s2, s2, tp
                  c.sub      a1, a1
                  or         t0, s10, a1
                  lb         t0, -16(t5)
                  sh         s2, -32(t5)
                  xori       s11, s10, -822
                  sb         t0, 20(t5)
                  csrrsi     s10, 0x340, 10
                  lb         a1, 40(t5)
                  lb         s2, -39(t5)
                  sh         s10, 22(t5)
                  lb         s10, -18(t5) #end riscv_hazard_instr_stream_3
                  csrrci     ra, 0x340, 22
                  c.mv       t6, tp
                  csrrsi     t5, 0x340, 18
                  auipc      tp, 31159
                  c.slli     t4, 3
                  bge        s7, a4, 1612f
                  bne        s6, t0, 1597f
                  divu       s1, a3, s0
1597:             or         s7, s10, s1
                  lui        s9, 323777
                  lui        s5, 533313
                  rem        a1, a7, t5
                  srl        s8, a2, t0
                  nop
1603:             c.or       a3, a4
                  or         t6, a0, s11
                  c.xor      a2, a5
                  and        a0, a6, gp
                  nop
                  csrrwi     ra, 0x340, 16
                  sra        a6, a3, ra
                  fence
                  csrrw      t6, 0x340, a4
1612:             rem        t0, s7, s5
                  lui        t4, 172803
                  c.li       a5, 11
                  addi       t1, a6, 34
                  c.lui      s4, 18
                  div        s8, a1, t1
                  slli       s0, s10, 17
                  add        s4, s7, s5
                  or         tp, a7, t1
                  slti       s3, s10, 428
                  c.add      a4, s5
                  mul        s3, s7, t2
                  srai       s3, s7, 11
                  and        ra, a5, s8
                  xori       t0, tp, 677
                  or         t5, t2, a5
                  c.or       a3, a0
                  beq        ra, zero, 1645f
                  div        s8, s6, s5
                  csrrci     s2, 0x340, 0
                  c.mv       s2, t1
                  csrrs      s4, 0x340, s3
                  c.mv       s9, s9
                  slli       s6, s1, 11
                  c.nop
                  add        t6, t1, s9
                  csrrc      a2, 0x340, t2
                  xori       s4, a7, -64
                  c.or       s1, s0
                  div        t5, s8, t5
                  mulhsu     a2, t2, a3
                  ori        t1, s8, -986
                  c.lui      a2, 21
1645:             ori        ra, t3, 560
                  auipc      s2, 238040
                  rem        a6, s7, tp
                  fence
                  auipc      a1, 168199
                  csrrci     t3, 0x340, 8
                  c.bnez     a4, 1670f
                  mul        s3, t0, s6
                  slt        a2, a5, s0
                  bge        t0, ra, 1663f
                  c.lui      a5, 23
                  c.bnez     a3, 1668f
                  c.nop
                  auipc      s9, 1004936
                  xor        t5, t1, t4
                  remu       tp, t2, a7
                  ori        s4, ra, -469
                  srl        s10, t4, sp
1663:             sll        a5, s0, a5
                  c.srli     a3, 10
                  mulh       s3, s6, s9
                  c.addi     t1, 25
                  c.or       a1, s1
1668:             fence.i
                  andi       a5, zero, -866
1670:             c.xor      a0, a0
                  rem        ra, a7, t2
                  sltiu      a0, a0, -84
                  bltu       a2, a4, 1693f
                  c.add      tp, sp
                  c.srai     a5, 22
                  or         s7, s9, gp
                  csrrci     s4, 0x340, 13
                  fence
                  slti       s0, s7, -3
                  c.li       s8, 0
                  mulhu      t3, a1, a5
                  c.lui      s3, 19
                  csrrci     s3, 0x340, 15
                  la         a3, sub_4
                  or         t6, s10, a7
                  addi       a3, a3, 60
                  mul        s0, a1, gp
j_sub_3_sub_4_6:  jalr       s11, a3, -60
                  addi       s1, t2, 356
                  nop
                  xori       s5, s5, 602
                  c.andi     a5, 1
                  auipc      t1, 253481
                  c.and      a5, s0
                  c.xor      a4, a5
                  csrrwi     a3, 0x340, 0
                  c.sub      a4, a1
                  c.beqz     a5, 1690f
                  sltu       s10, s3, s4
                  addi       a4, t6, 514
1690:             c.add      s9, a1
                  csrrci     tp, 0x340, 20
                  c.mv       s5, a1
1693:             csrrsi     s4, 0x340, 15
                  c.bnez     a3, 1697f
                  xor        a1, a6, a7
                  rem        a3, a3, t0
1697:             mul        s11, t4, s5
                  c.addi     t3, -1
                  c.xor      a4, a4
                  ori        t6, tp, 574
                  srli       s10, t0, 22
                  srai       a0, sp, 6
                  c.add      a2, a7
                  slli       t5, a6, 28
                  c.srli     s0, 4
                  slti       tp, zero, 876
                  c.or       a1, s1
                  slli       a4, a7, 6
                  bltu       a1, s4, 1726f
                  slli       s1, s3, 21
                  c.andi     a2, -1
                  auipc      s6, 481910
                  c.beqz     a0, 1729f
                  bne        s2, t1, 1728f
                  csrrsi     zero, 0x340, 9
                  bgeu       t0, s7, 1726f
                  addi       t5, s7, 702
                  c.li       t4, -1
                  csrrc      s4, 0x340, gp
                  bltu       a1, a2, 1733f
                  c.andi     a5, -1
                  csrrci     a6, 0x340, 24
                  c.srai     a5, 28
                  c.li       s7, 21
                  addi       s3, ra, -763
1726:             xor        s2, a5, zero
                  c.or       a1, a3
1728:             sltu       a7, a1, t6
1729:             andi       s0, s6, -483
                  mulhsu     t0, sp, s10
                  c.and      s1, a2
                  c.li       s6, 3
1733:             div        ra, gp, t0
                  sll        s6, t6, t0
                  c.beqz     a1, 1754f
                  csrrs      s5, 0x340, s5
                  srli       s2, t2, 12
                  bne        t1, gp, 1743f
                  or         t5, a1, t0
                  srli       s6, t0, 27
                  rem        a3, t5, s0
                  sltiu      s4, s3, 77
1743:             csrrc      t0, 0x340, t3
                  csrrsi     t3, 0x340, 19
                  auipc      s5, 661995
                  divu       s2, zero, a5
                  sll        a1, a1, s2
                  bge        s6, a0, 1765f
                  c.mv       t4, gp
                  fence.i
                  slti       a5, s4, 802
                  slli       s10, a6, 14
                  c.li       a4, -1
1754:             c.srai     a5, 24
                  c.mv       a1, a4
                  xor        tp, a2, s2
                  mulhsu     ra, s1, a0
                  slli       s9, s8, 15
                  csrrsi     a6, 0x340, 16
                  bgeu       a2, s11, 1776f
                  csrrw      s7, 0x340, s7
                  fence
                  sll        a3, tp, t5
                  beq        s7, t4, 1779f
1765:             srli       tp, a0, 4
                  sub        a5, a0, zero
                  sltu       s7, a2, tp
                  auipc      t6, 574652
                  bgeu       s6, t1, 1785f
                  bne        a6, s9, 1787f
                  c.or       s0, a4
                  slt        s3, t6, gp
                  beq        t4, s0, 1789f
                  sltu       t6, a3, t1
                  mulhu      s2, s6, s6
1776:             sltu       a3, s10, a1
                  add        s8, ra, t5
                  c.nop
1779:             add        ra, a0, s9
                  remu       t3, s0, a2
                  blt        t2, s10, 1798f
                  srai       zero, s0, 27
                  add        s6, a0, t0
                  sra        t4, a3, tp
1785:             srli       a7, s4, 11
                  c.srli     a3, 25
1787:             fence
                  divu       t5, a6, s6
1789:             csrrwi     a2, 0x340, 1
                  c.srai     s1, 30
                  csrrci     t4, 0x340, 7
                  bne        a4, a0, 1795f
                  c.andi     a1, -1
                  mul        a2, a6, tp
1795:             srai       t3, a6, 22
                  beq        s3, zero, 1816f
                  mulhu      t5, t2, a5
1798:             c.slli     s6, 7
                  srli       s2, a4, 4
                  csrrsi     t1, 0x340, 0
                  c.lui      a2, 16
                  csrrc      a1, 0x340, t2
                  csrrsi     s8, 0x340, 10
                  mulh       s4, s7, t0
                  srli       s1, s6, 28
                  csrrci     a2, 0x340, 2
                  csrrci     s0, 0x340, 12
                  blt        s3, s0, 1820f
                  csrrsi     s0, 0x340, 1
                  mul        s11, t0, t3
                  sll        a3, tp, t2
                  csrrw      a4, 0x340, gp
                  mulhsu     s7, s10, tp
                  andi       a4, s5, 767
                  csrrwi     s11, 0x340, 5
1816:             fence
                  csrrwi     s9, 0x340, 2
                  blt        s9, a2, 1824f
                  c.addi     ra, 25
1820:             bge        t3, t5, 1838f
                  c.and      s0, a2
                  sll        s0, s7, a6
                  csrrci     s4, 0x340, 3
1824:             c.or       s0, s1
                  c.sub      a0, a0
                  slt        t4, s2, t1
                  blt        s10, a4, 1841f
                  c.xor      a4, s1
                  c.mv       ra, t4
                  add        s11, s0, s4
                  nop
                  lui        t1, 277825
                  nop
                  and        s7, a2, s11
                  bge        a2, tp, 1844f
                  addi       ra, a5, 1017
                  csrrwi     s10, 0x340, 17
1838:             srai       t6, ra, 2
                  c.beqz     a2, 1858f
                  c.lui      s2, 17
1841:             nop
                  remu       s2, zero, s9
                  srli       s1, a1, 25
1844:             c.or       a1, a5
                  c.mv       s3, s2
                  c.or       s1, a5
                  c.or       a2, a1
                  mulhu      s6, a0, s7
                  c.mv       t6, t5
                  fence.i
                  addi       t6, a7, 388
                  fence.i
                  mulhsu     zero, s6, s4
                  add        a6, s3, a5
                  csrrs      t0, 0x340, ra
                  addi       s10, s0, -650
                  lui        s10, 373111
1858:             ori        a7, s1, 851
                  c.srli     a4, 2
                  auipc      a4, 192682
                  csrrc      s4, 0x340, t2
                  srli       s7, s10, 8
                  c.nop
                  div        t6, a5, s4
                  sltiu      s3, s8, 682
                  sra        s4, s9, a4
                  c.add      a5, s0
                  ori        a6, t6, 287
                  mulh       t6, a2, s4
                  rem        a7, a6, gp
                  ori        s11, a1, 720
                  srai       t3, ra, 15
                  sra        t1, s11, a6
                  sltu       s2, t2, sp
                  c.mv       a5, s2
                  c.add      tp, t6
                  div        s1, t5, t1
                  sltiu      t0, a1, -422
                  c.srli     a3, 16
                  csrrsi     t0, 0x340, 5
                  c.li       t6, -1
                  rem        s6, t4, s3
                  c.bnez     s1, 1898f
                  sltu       t1, ra, s9
                  beq        s3, s11, 1901f
                  c.lui      a2, 13
                  sll        a4, a4, sp
                  c.xor      a1, a2
                  sub        a3, s3, s3
                  csrrwi     t3, 0x340, 6
                  c.srai     s1, 1
                  mulhu      s7, ra, zero
                  sltu       s4, gp, a2
                  sra        a2, t6, a4
                  slti       s6, a3, 124
                  c.srli     s1, 27
                  beq        s10, t3, 1914f
1898:             slti       s10, s8, 461
                  la         ra, region_1+10902 #start riscv_hazard_instr_stream_7
                  c.srli     a2, 23
                  lhu        t3, 64(ra)
                  c.addi     a7, -1
                  sltiu      s2, s5, 512
                  lbu        s2, 8(ra)
                  srl        a7, a2, a1
                  fence.i
                  lui        a2, 284339
                  c.addi     s2, 7
                  andi       a2, a1, 839
                  mulh       a7, a7, a1
                  c.andi     a1, -1
                  rem        a2, t3, t3
                  c.srai     a1, 30
                  sb         s2, -51(ra)
                  c.srli     a1, 26
                  lbu        a7, 18(ra)
                  lh         a2, 60(ra)
                  csrrsi     a1, 0x340, 11
                  srl        a7, a2, a1
                  sll        a2, s2, t3
                  sb         a1, 34(ra)
                  c.add      a7, s5
                  divu       s2, s5, s2
                  lb         t3, -30(ra)
                  c.addi     a2, 17
                  sb         a1, -24(ra)
                  csrrsi     s2, 0x340, 25
                  lbu        s5, 18(ra)
                  csrrs      s5, 0x340, a7
                  csrrsi     a7, 0x340, 25
                  sb         s2, 30(ra)
                  csrrwi     t3, 0x340, 31
                  c.li       a7, -1
                  sb         a1, 36(ra)
                  lbu        s2, -7(ra) #end riscv_hazard_instr_stream_7
                  sra        zero, s7, s11
                  mulhu      s11, ra, s9
1901:             c.xor      a0, a1
                  bge        s4, t6, 1916f
                  c.add      tp, s11
                  c.beqz     a3, 1906f
                  sub        s3, s5, s4
1906:             bne        s0, sp, 1913f
                  c.andi     a2, 15
                  sra        s0, t6, a6
                  c.bnez     a3, 1924f
                  blt        a1, s11, 1923f
                  c.or       a5, a4
                  c.slli     t1, 17
1913:             fence
1914:             bgeu       s4, t0, 1925f
                  add        a1, a0, a0
1916:             auipc      s2, 776670
                  c.sub      a3, a0
                  bgeu       s4, a4, 1921f
                  srl        a1, a1, s6
                  slt        s5, a5, a5
1921:             c.bnez     a0, 1936f
                  bgeu       s4, zero, 1938f
1923:             csrrc      s9, 0x340, sp
1924:             mulhu      s7, s8, s2
1925:             c.beqz     a1, 1941f
                  c.addi     a5, -1
                  slti       s3, a5, -1003
                  xori       a2, gp, 859
                  mulhsu     s6, s8, t0
                  add        a5, a7, s10
                  c.srai     s1, 14
                  c.addi     t1, 8
                  mulh       a2, a0, a3
                  divu       t0, ra, ra
                  fence.i
1936:             xori       tp, t4, -255
                  bgeu       a5, s0, 1944f
1938:             c.sub      s0, s1
                  mulh       s6, s0, gp
                  csrrc      a7, 0x340, s4
1941:             beq        s7, t3, 1948f
                  bltu       a1, s1, 1961f
                  csrrc      tp, 0x340, s0
1944:             divu       t1, s3, gp
                  fence.i
                  xor        s3, t1, s4
                  c.li       t5, -1
1948:             sll        s8, sp, s1
                  mulhsu     a0, a3, s4
                  ori        s11, s7, 728
                  c.and      a1, a0
                  c.nop
                  csrrwi     a1, 0x340, 30
                  bltu       s11, t1, 1964f
                  ori        s6, t6, 810
                  csrrc      ra, 0x340, a7
                  auipc      s10, 135
                  sub        s3, ra, tp
                  beq        s11, t6, 1964f
                  sltiu      t5, s10, -19
1961:             divu       a5, sp, s10
                  or         s3, sp, a5
                  divu       s0, t4, s4
1964:             blt        t6, s7, 1982f
                  xor        t1, s7, s0
                  sltu       a5, s4, sp
                  or         t4, a6, t2
                  csrrci     t0, 0x340, 2
                  csrrs      t6, 0x340, s0
                  slli       t0, a5, 23
                  slli       a7, s11, 31
                  bltu       s2, zero, 1988f
                  c.srli     a2, 27
                  sltiu      zero, s5, 131
                  andi       s1, t1, -649
                  c.xor      s1, a3
                  fence.i
                  bltu       a4, ra, 1993f
                  and        s8, s11, a2
                  bne        a1, s0, 1994f
                  andi       s11, a4, -306
1982:             bge        zero, t6, 1999f
                  auipc      t3, 379011
                  fence
                  srli       s3, tp, 17
                  sub        s7, s6, a3
                  fence
1988:             ori        a3, s2, -467
                  c.or       a5, a0
                  sll        a5, s4, s3
                  mul        s8, gp, s5
                  slt        s1, a4, a5
1993:             nop
1994:             fence.i
                  remu       s1, s6, s0
                  slt        s4, t1, s9
                  divu       tp, t3, t5
                  slli       a0, a6, 25
1999:             c.lui      t5, 27
                  slti       t5, s11, -163
                  mul        a6, s9, t3
                  beq        s2, ra, 2021f
                  c.or       a4, s0
                  lui        tp, 35905
                  bltu       a3, a5, 2012f
                  add        t0, s3, a1
                  andi       s9, a3, 848
                  beq        a4, t2, 2019f
                  xori       s8, a3, 326
                  bge        s8, s7, 2019f
                  sra        s10, tp, t5
2012:             ori        a1, s4, -906
                  csrrw      zero, 0x340, s2
                  bltu       a4, ra, 2030f
                  nop
                  mulh       t0, s2, a0
                  ori        s2, a0, -361
                  slt        t0, gp, s9
2019:             c.srli     s1, 5
                  srli       a0, tp, 0
2021:             c.add      a2, s1
                  srl        a0, s10, t1
                  bne        t1, a1, 2040f
                  csrrw      a1, 0x340, zero
                  c.li       a2, -1
                  c.nop
                  c.and      a1, a3
                  c.nop
                  mulh       s6, t3, zero
2030:             c.or       a3, a4
                  sltiu      ra, a5, -783
                  csrrw      ra, 0x340, s1
                  c.mv       t6, a1
                  csrrsi     s7, 0x340, 8
                  sub        t4, s7, zero
                  c.lui      tp, 21
                  c.and      s0, s1
                  ori        t4, sp, 594
                  addi       a0, a6, 717
2040:             c.bnez     a2, 2055f
                  c.xor      a0, s1
                  srli       ra, t4, 14
                  csrrsi     a6, 0x340, 7
                  csrrsi     a0, 0x340, 0
                  c.slli     tp, 15
                  csrrwi     a1, 0x340, 20
                  srl        ra, a2, t0
                  c.or       s0, a2
                  c.or       a1, s1
                  c.mv       s9, ra
                  ori        t5, ra, -9
                  slt        s10, s3, a3
                  addi       s3, t2, 430
                  mulhu      s1, a0, a0
2055:             sra        t1, t3, a6
                  sltu       s10, s2, s7
                  sra        t5, t6, t4
                  srli       s4, zero, 23
                  bge        t4, ra, 2072f
                  c.slli     s6, 7
                  auipc      s5, 316876
                  sll        tp, s2, zero
                  div        t0, a2, gp
                  rem        s7, s4, tp
                  lui        s4, 707863
                  c.andi     a0, 6
                  fence.i
                  sub        t4, s2, a7
                  fence.i
                  mulhsu     s4, a6, s3
                  auipc      a7, 738256
2072:             lui        a7, 726001
                  mulhu      a3, t1, a5
                  csrrwi     tp, 0x340, 3
                  xor        a2, s10, t6
                  c.or       a1, s0
                  beq        s2, t5, 2079f
                  c.addi     t0, -1
2079:             c.sub      a1, a1
                  slti       ra, s9, -670
                  blt        t3, tp, 2096f
                  c.andi     a0, -1
                  rem        a4, t6, s2
                  csrrsi     a2, 0x340, 20
                  c.beqz     a1, 2097f
                  c.mv       s8, s1
                  andi       s5, s6, -561
                  remu       s10, s7, t0
                  c.srai     a1, 29
                  c.nop
                  add        s5, s0, s10
                  bge        s6, s3, 2110f
                  c.nop
                  csrrsi     t4, 0x340, 9
                  c.beqz     a2, 2101f
2096:             slti       s7, a5, 120
2097:             sll        s4, a1, ra
                  fence.i
                  mulhu      s0, s10, a4
                  mul        s2, s3, sp
2101:             srl        s6, t0, t0
                  slti       t1, a0, -819
                  srli       t6, s4, 10
                  remu       a4, a6, sp
                  add        a5, s2, gp
                  sub        t6, s5, s2
                  beq        s10, s5, 2117f
                  csrrs      s5, 0x340, s5
                  bltu       a7, s9, 2126f
2110:             andi       a4, t5, 1019
                  c.mv       s5, s1
                  c.srai     a3, 6
                  c.lui      a2, 24
                  c.lui      s2, 27
                  lui        a6, 819617
                  fence
2117:             csrrc      s1, 0x340, s7
                  c.bnez     a2, 2137f
                  csrrc      a6, 0x340, a3
                  csrrwi     t1, 0x340, 23
                  csrrwi     t0, 0x340, 21
                  mulhsu     t0, a2, s9
                  div        tp, a3, s11
                  lui        a2, 44152
                  mul        t5, s7, t0
2126:             c.or       s0, a2
                  c.mv       s3, s6
                  c.sub      a3, a1
                  c.nop
                  csrrw      s1, 0x340, s9
                  andi       t4, s2, 698
                  csrrci     a4, 0x340, 29
                  c.bnez     s1, 2151f
                  c.add      t0, a5
                  slti       tp, sp, 287
                  c.nop
2137:             bltu       tp, a5, 2151f
                  lui        s2, 179037
                  c.or       s0, a0
                  sll        s1, s10, t3
                  fence
                  sltiu      t5, a0, 413
                  bgeu       a0, a3, 2150f
                  and        t3, s8, s1
                  add        s3, t6, zero
                  c.beqz     s1, 2149f
                  c.li       s11, -1
                  c.add      s9, s10
2149:             bgeu       t5, gp, 2152f
2150:             mul        t0, s11, t1
2151:             remu       t1, s10, t3
2152:             srai       t4, gp, 11
                  and        s3, s4, sp
                  ori        a0, a2, 877
                  slti       s1, t4, 360
                  csrrci     zero, 0x340, 29
                  slti       s10, s8, -77
                  c.beqz     a0, 2174f
                  csrrwi     s8, 0x340, 12
                  la         ra, region_0+3360 #start load_store_instr_stream_1
                  la         s11, region_1+15138 #start load_store_instr_stream_3
                  la         s2, region_3+390 #start load_store_instr_stream_0
                  lb         a4, 219(ra)
                  lb         a4, 245(s11)
                  sb         tp, 65(s11)
                  sb         t1, 220(ra)
                  sb         t0, 133(s11)
                  la         t0, region_2+2111 #start load_store_instr_stream_2
                  sb         s3, -18(t0)
                  lb         s1, -98(ra)
                  sb         s11, 36(s2)
                  lb         t5, -46(s11)
                  lhu        zero, -236(ra)
                  lb         s6, 26(t0)
                  sb         s1, 13(s2)
                  la         a6, region_4+2870 #start load_store_instr_stream_4
                  lw         t1, -39(t0)
                  sb         s2, 113(s11)
                  sb         a7, 61(a6)
                  lbu        s0, 29(ra)
                  lbu        t6, 218(s11)
                  sh         s9, -153(t0)
                  sb         s9, -208(t0)
                  lbu        a1, 19(a6)
                  lbu        t1, -126(ra)
                  lb         s6, -75(t0)
                  lhu        s3, -20(s11)
                  lhu        s5, 38(s2)
                  lbu        t4, 29(ra)
                  lb         a5, -40(t0)
                  lw         s10, 30(s2)
                  lb         s0, -17(s2)
                  lhu        s5, 212(s11)
                  lhu        s7, -6(a6)
                  sb         t3, 5(ra)
                  sb         a2, 51(a6)
                  lb         a0, 64(t0)
                  lhu        a7, 22(a6)
                  lw         tp, 22(s2)
                  lbu        a3, -38(ra)
                  sb         s10, 107(ra) #end load_store_instr_stream_1
                  lbu        s9, 146(s11)
                  sh         s2, 44(s2)
                  lb         t6, 36(t0) #end load_store_instr_stream_2
                  sh         t5, 22(a6)
                  lb         a0, 13(a6) #end load_store_instr_stream_4
                  sb         s9, 47(s11) #end load_store_instr_stream_3
                  lbu        a0, -39(s2) #end load_store_instr_stream_0
                  div        a5, t2, s6
                  c.slli     s8, 21
                  nop
                  c.nop
                  c.and      a3, a5
                  c.slli     s9, 9
                  mulh       s1, gp, a6
                  c.srai     a4, 14
                  c.nop
                  csrrsi     s8, 0x340, 5
                  csrrsi     s6, 0x340, 12
                  sra        s3, s3, t4
                  c.srai     s1, 22
                  or         t0, t1, s9
2174:             bltu       a6, s6, 2194f
                  addi       t5, t1, 606
                  c.li       tp, -1
                  mulhu      tp, s6, s5
                  sltiu      ra, s3, 988
                  c.bnez     s1, 2195f
                  sll        s4, ra, a2
                  nop
                  c.srli     a3, 26
                  mul        s7, a3, sp
                  c.and      a3, a3
                  srli       s0, s7, 26
                  srli       s3, t5, 2
                  divu       s4, s0, t0
                  blt        t6, a1, 2193f
                  csrrsi     s7, 0x340, 24
                  ori        t4, s0, -422
                  sll        t1, s6, s1
                  sltu       t0, s6, zero
2193:             c.xor      a2, s1
2194:             addi       a7, s5, 188
2195:             srl        t5, t2, a6
                  div        a4, a1, s9
                  mulhsu     tp, s3, t6
                  srai       t3, s2, 8
                  c.xor      s0, a0
                  addi       s11, s4, 116
                  la         s2, region_1+1764 #start riscv_hazard_instr_stream_5
                  lb         s8, 1375(s2)
                  sltiu      a1, ra, 160
                  c.or       a1, a0
                  csrrw      t1, 0x340, t1
                  lbu        t1, -655(s2)
                  csrrsi     a0, 0x340, 31
                  lhu        t1, -730(s2)
                  c.addi     a1, -1
                  csrrw      a0, 0x340, s8
                  c.andi     a1, 6
                  auipc      s8, 292999
                  sub        a6, t1, s8
                  c.xor      a0, a0
                  lbu        a6, -493(s2)
                  or         t1, a6, s8
                  sb         a6, 1073(s2)
                  lhu        t1, -1576(s2)
                  lhu        ra, 1338(s2)
                  sh         s8, 490(s2)
                  lb         a1, -438(s2)
                  mulhu      ra, a0, s8
                  csrrs      s8, 0x340, s8
                  and        a0, s8, t1
                  lbu        s8, 519(s2)
                  srl        t1, a0, ra
                  and        a6, ra, a6
                  csrrc      a0, 0x340, a1
                  c.srai     a1, 8
                  sb         s8, 634(s2)
                  csrrw      ra, 0x340, s8
                  sh         a1, -1218(s2)
                  sb         a6, 1757(s2)
                  c.li       s8, 5
                  sll        a6, a1, a0
                  addi       ra, s8, -745
                  lbu        a1, 1547(s2) #end riscv_hazard_instr_stream_5
                  csrrw      s0, 0x340, a6
                  c.andi     a2, -1
                  fence
                  c.add      s9, s8
                  sra        ra, a7, s11
                  ori        t6, s8, -820
                  xor        s10, t5, ra
                  lui        t4, 23611
                  sltu       s11, s5, a0
                  blt        s7, a0, 2217f
                  bltu       s3, s7, 2214f
                  divu       s9, s2, t2
                  ori        s8, s8, -959
2214:             c.or       s1, a5
                  c.or       a3, a4
                  c.sub      a3, a5
2217:             divu       t6, t4, t0
                  auipc      a2, 591161
                  bne        s0, a5, 2234f
                  c.add      s7, a1
                  mulhu      a1, s11, s2
                  c.srai     a2, 11
                  slti       s9, a0, 825
                  sub        ra, zero, t1
                  c.li       t1, -1
                  csrrsi     s9, 0x340, 19
                  srl        a7, a5, s3
                  c.li       a3, -1
                  sll        a0, t0, s3
                  c.andi     s0, 26
                  divu       s2, t2, s11
                  c.li       s10, 10
                  csrrwi     s7, 0x340, 8
2234:             sltiu      s11, a0, -89
                  lui        zero, 706497
                  c.sub      a1, a2
                  c.or       a3, s0
                  c.li       s10, -1
                  xor        s8, s3, s11
                  srli       s9, t5, 2
                  bltu       sp, s6, 2248f
                  fence
                  nop
                  slli       s2, s1, 29
                  bltu       s3, s4, 2254f
                  and        t3, a7, a5
                  mulh       t4, gp, t0
2248:             mulh       t0, zero, t1
                  csrrw      t3, 0x340, s9
                  divu       s7, a7, tp
                  fence
                  c.nop
                  c.nop
2254:             mulh       t4, a3, a5
                  c.srai     a4, 16
                  sltiu      a0, s10, -174
                  or         t6, sp, a2
                  c.slli     a0, 14
                  blt        ra, tp, 2271f
                  bne        s6, a1, 2273f
                  add        a4, gp, a1
                  csrrci     a0, 0x340, 28
                  fence
                  nop
                  sll        zero, s5, a4
                  c.srai     a1, 21
                  c.lui      a7, 21
                  c.bnez     s0, 2285f
                  andi       s11, t0, -502
                  srl        s10, s4, s3
2271:             slt        s10, s7, t5
                  srli       s0, a6, 3
2273:             and        a0, gp, s3
                  sltu       a5, t4, a6
                  srli       ra, s7, 24
                  csrrsi     ra, 0x340, 26
                  or         a0, a5, a1
                  csrrci     s6, 0x340, 18
                  csrrsi     s2, 0x340, 3
                  slt        s5, s0, zero
                  c.mv       a3, gp
                  c.and      a5, a4
                  c.lui      s1, 6
                  csrrwi     s10, 0x340, 12
2285:             c.slli     s2, 4
                  mulh       s6, a2, sp
                  nop
                  fence.i
                  srl        s6, a1, t1
                  csrrw      t5, 0x340, a6
                  slt        s5, s0, a4
                  csrrc      a2, 0x340, s4
                  fence.i
                  c.xor      a0, a5
                  fence.i
                  sll        zero, s1, ra
                  fence.i
                  c.andi     a3, 4
                  slt        a5, t1, s11
                  c.li       a2, 29
                  c.andi     a3, 17
                  c.and      a4, a1
                  c.or       a2, a0
                  fence
                  c.xor      a3, a4
                  slt        a1, ra, tp
                  add        s2, s0, tp
                  c.lui      s3, 5
                  c.beqz     a0, 2326f
                  sra        a2, a3, sp
                  andi       t5, a5, -990
                  c.add      ra, s1
                  mul        a4, s3, t4
                  c.srai     a2, 22
                  c.beqz     a4, 2329f
                  xori       s1, a1, 591
                  bne        t4, a6, 2324f
                  c.and      a5, a4
                  beq        s9, a3, 2324f
                  c.mv       t6, sp
                  csrrw      a1, 0x340, gp
                  c.xor      s1, a3
                  remu       s11, s5, t1
2324:             csrrs      a1, 0x340, s1
                  xori       tp, s4, -607
2326:             ori        s1, s8, -12
                  auipc      t6, 323131
                  lui        a5, 744664
2329:             c.srai     s1, 27
                  c.and      a2, a0
                  c.mv       a5, t2
                  c.beqz     a3, 2348f
                  fence
                  bne        t1, s2, 2337f
                  c.slli     a4, 10
                  addi       t3, gp, 981
2337:             bne        s1, t2, 2339f
                  c.mv       s0, a0
2339:             c.bnez     a2, 2356f
                  c.nop
                  c.slli     s8, 10
                  sll        s4, s8, t0
                  addi       a2, s4, 393
                  mulhsu     t3, s7, t4
                  fence
                  c.addi     a3, 6
                  bne        t6, a4, 2365f
2348:             bltu       a0, s3, 2355f
                  andi       s10, t3, 407
                  and        a2, t4, a0
                  mulhsu     a2, s4, s6
                  mulhsu     t6, a7, a4
                  sub        a5, s3, a0
                  fence
2355:             c.and      a3, a4
2356:             slli       s7, a5, 21
                  ori        a0, sp, -457
                  c.mv       t1, s3
                  bltu       s0, zero, 2373f
                  c.nop
                  csrrwi     s0, 0x340, 1
                  csrrc      t3, 0x340, t4
                  addi       tp, a4, 739
                  sub        a1, sp, t6
2365:             c.xor      a5, a3
                  slti       s3, s6, -81
                  c.andi     s0, -1
                  auipc      t0, 360678
                  c.slli     a0, 5
                  div        a1, t4, t2
                  srli       a6, s4, 0
                  srai       t5, sp, 24
2373:             fence.i
                  c.sub      a4, s1
                  c.beqz     a1, 2394f
                  add        s2, s3, t4
                  and        a1, gp, a2
                  mulhsu     s0, ra, s3
                  csrrw      t6, 0x340, s6
                  csrrci     s2, 0x340, 21
                  c.add      a7, s1
                  c.srai     a4, 12
                  c.xor      a0, a0
                  blt        zero, a1, 2394f
                  csrrwi     a7, 0x340, 26
                  c.xor      a0, a4
                  fence
                  c.slli     ra, 1
                  srli       s6, t4, 28
                  mulhu      s10, a3, sp
                  bne        s9, s7, 2406f
                  mulhsu     s3, s5, a1
                  c.srli     a3, 21
2394:             slt        a1, s4, s8
                  mulh       s7, s0, s7
                  c.mv       a5, s11
                  c.srai     a2, 7
                  sll        a6, s8, t1
                  divu       t0, a1, s4
                  c.srli     a0, 7
                  srli       a1, t5, 31
                  c.srli     s1, 26
                  remu       s7, tp, t1
                  ori        s9, t2, 356
                  sltu       s9, s0, tp
2406:             nop
                  bne        s7, a6, 2425f
                  csrrci     s11, 0x340, 15
                  divu       s0, s7, tp
                  c.beqz     a2, 2426f
                  srai       s2, a2, 15
                  c.beqz     a5, 2423f
                  csrrw      a1, 0x340, a5
                  c.or       s1, a0
                  nop
                  divu       s0, t2, t0
                  nop
                  sltu       a5, s8, s2
                  csrrs      a1, 0x340, t6
                  srl        a2, sp, t1
                  sltiu      ra, ra, 701
                  c.nop
2423:             bne        s9, s6, 2442f
                  add        s1, a1, a3
2425:             csrrwi     s1, 0x340, 13
2426:             mulhsu     s10, t0, t1
                  c.srli     s1, 10
                  srli       t1, s11, 14
                  div        a0, a6, sp
                  remu       s4, s1, t5
                  sltiu      s1, t1, 66
                  c.srai     a5, 28
                  ori        t4, a6, -586
                  c.srli     a4, 10
                  bne        s5, a6, 2451f
                  c.sub      s0, a4
                  c.li       t5, 25
                  or         s5, a2, a1
                  srli       t1, s4, 20
                  sra        zero, t2, t0
                  bltu       t1, t0, 2457f
2442:             c.nop
                  c.lui      s6, 24
                  c.and      a3, a1
                  sra        a3, a5, s5
                  mul        s3, s4, a6
                  c.slli     s10, 30
                  auipc      t0, 681158
                  sub        s2, gp, a4
                  mulhsu     t0, t5, a0
2451:             mulhu      s5, s3, s9
                  fence.i
                  add        s7, s5, s8
                  c.slli     s8, 3
                  sll        s9, s3, t3
                  and        ra, t0, s0
2457:             bltu       s9, t4, 2472f
                  c.srli     a1, 8
                  slt        t6, t1, tp
                  auipc      s3, 109772
                  mul        a1, a6, a7
                  rem        t4, t1, s1
                  csrrsi     t3, 0x340, 17
                  srai       s1, a1, 27
                  or         ra, s6, t1
                  and        tp, t1, zero
                  auipc      s2, 740192
                  srli       t3, s8, 1
                  slt        s6, a2, tp
                  nop
                  fence.i
2472:             c.srai     a5, 5
                  c.lui      a3, 6
                  srli       a2, s3, 8
                  csrrw      s10, 0x340, s5
                  sub        tp, a4, a5
                  c.slli     s7, 21
                  lw         s11, 4(sp)
                  addi       sp, sp, 64
                  c.andi     s1, 19
                  sltu       t3, s3, ra
                  c.srai     s1, 6
                  rem        a1, zero, s5
                  auipc      a7, 388332
4097:             c.jr x27
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

init_machine_mode:
                  li x24, 0x1018ba
                  csrw 0x300, x24 # MSTATUS
                  li x24, 0xb0b
                  csrw 0x304, x24 # MIE
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
                  csrrw x2, 0x340, x2
                  add x2, x7, zero
                  1: addi x2, x2, -124
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x24, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x24, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x24, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x24, x21, ecall_handler
                  li x21, 0x1
                  beq x24, x21, instr_fault_handler
                  li x21, 0x5
                  beq x24, x21, load_fault_handler
                  li x21, 0x7
                  beq x24, x21, store_fault_handler
                  li x21, 0xc
                  beq x24, x21, pt_fault_handler
                  li x21, 0xd
                  beq x24, x21, pt_fault_handler
                  li x21, 0xf
                  beq x24, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: jal x1, test_done 

ebreak_handler:   
                  csrr  x24, mepc
                  addi  x24, x24, 4
                  csrw  mepc, x24
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 124
                  add x7, x2, zero
                  csrrw x2, 0x340, x2
                  mret

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  j write_tohost
illegal_instr_handler:
                  csrr  x24, mepc
                  addi  x24, x24, 4
                  csrw  mepc, x24
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 124
                  add x7, x2, zero
                  csrrw x2, 0x340, x2
                  mret

instr_fault_handler:
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 124
                  add x7, x2, zero
                  csrrw x2, 0x340, x2
                  mret

load_fault_handler:
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 124
                  add x7, x2, zero
                  csrrw x2, 0x340, x2
                  mret

store_fault_handler:
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 124
                  add x7, x2, zero
                  csrrw x2, 0x340, x2
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 124
                  add x7, x2, zero
                  csrrw x2, 0x340, x2
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
