.include "user_define.h"
.globl _start
.section .text
_start:
                  li x0, 0x0
                  li x1, 0xf7791871
                  li x2, 0x0
                  li x3, 0xcd073dc5
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x83097d52
                  li x7, 0xa
                  li x8, 0xf13ec1f8
                  li x9, 0xf744c533
                  li x10, 0xb
                  li x11, 0x80000000
                  li x12, 0x1
                  li x13, 0x35104666
                  li x14, 0xb
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x7
                  li x18, 0xfac2802f
                  li x19, 0x80000000
                  li x20, 0xfdfc356d
                  li x21, 0x0
                  li x22, 0x5
                  li x23, 0x5
                  li x24, 0x466a0ac2
                  li x25, 0xeb1704cc
                  li x26, 0xb
                  li x27, 0xf2e013f0
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0xf6bd362c
                  li x31, 0x80000000
                  li x5, 0x40001104
                  csrw misa, x5
kernel_sp:        
                  la x22, _kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, _init
                  csrw mepc, x5
                  j init_machine_mode

_init:            
                  la x2, _user_stack_end
_main:            jal        s8, 13f
0:                c.jal      4f
1:                jal        t3, 14f
2:                jal        s7, 18f
3:                c.j        8f
4:                jal        s0, 5f
5:                jal        t1, 17f
6:                c.j        15f
7:                c.jal      9f
                  .2byte 0x0302 # kHintInstr
8:                c.j        2b
9:                c.jal      1b
10:               c.j        7b
11:               c.j        16f
12:               c.jal      11b
13:               c.jal      0b
14:               c.jal      19f
15:               jal        s0, 10b
16:               c.jal      6b
17:               c.jal      3b
18:               c.jal      12b
19:               mulhsu     s8, s9, s1
                  la         t1, region_3+28 #start riscv_hazard_instr_stream_13
                  lb         s7, 9(t1)
                  c.lui      s7, 19
                  rem        t0, zero, t6
                  lb         t6, 20(t1)
                  sb         s7, 51(t1)
                  sh         t0, 42(t1)
                  csrrc      a4, 0x340, s7
                  sb         t6, 35(t1)
                  c.lui      a0, 18
                  srai       a4, a4, 25
                  addi       t0, zero, -126
                  lw         t0, 24(t1)
                  fence.i
                  mulhu      t6, a0, s7
                  lbu        s7, -11(t1)
                  sb         s7, 10(t1)
                  and        t0, a0, a0
                  nop
                  sw         s7, 40(t1)
                  lb         s7, 17(t1)
                  lbu        a0, 63(t1)
                  fence.i
                  lbu        a0, 32(t1)
                  sb         a4, 6(t1)
                  sb         t6, 41(t1)
                  srli       t0, s7, 24
                  lh         t6, -10(t1)
                  lh         a4, -16(t1)
                  sltiu      a4, s7, -889
                  sb         t0, -4(t1)
                  lb         t0, -15(t1)
                  and        t0, t6, t0
                  fence.i
                  sb         s7, 40(t1)
                  lui        zero, 706110
                  fence
                  mulhsu     a4, s7, t0
                  lb         zero, 5(t1)
                  c.li       t6, 19
                  c.xor      a4, a0
                  andi       s7, a4, -440
                  lbu        zero, -23(t1)
                  lbu        s7, -18(t1)
                  csrrsi     t6, 0x340, 18
                  lb         s7, 54(t1) #end riscv_hazard_instr_stream_13
                  addi       tp, zero, 7 #init loop 1 counter
                  addi       s7, zero, 5 #init loop 1 limit
                  csrrc      s0, 0x340, s1
main_70_1_t:      sltiu      t3, ra, 730
                  auipc      a1, 342259
                  addi       tp, tp, -7 #update loop 1 counter
                  srl        s5, s3, t4
                  addi       a3, zero, 10 #init loop 0 counter
                  c.xor      a0, a2
                  addi       zero, zero, 0 #init loop 0 limit
main_70_0_t:      mulhsu     s8, tp, s6
                  addi       a3, a3, -10 #update loop 0 counter
                  csrrc      t5, 0x340, t2
                  c.bnez     a3, main_70_0_t #branch for loop 0
                  sltiu      s3, t2, 898
                  bge        tp, s7, main_70_1_t #branch for loop 1
                  srli       gp, s3, 16
                  la         a4, region_4+440 #start riscv_hazard_instr_stream_2
                  .2byte 0x402d # kHintInstr
                  lhu        a7, 4(a4)
                  sh         a2, 2(a4)
                  xor        a2, a7, s5
                  fence.i
                  mulh       a2, t4, a0
                  c.andi     a0, -1
                  lbu        t3, 13(a4)
                  slli       a2, a0, 16
                  sh         a0, -2(a4)
                  sh         a0, 10(a4)
                  sh         a2, 2(a4)
                  sub        a2, s5, t3
                  lb         a2, 1(a4)
                  csrrsi     a2, 0x340, 23
                  lbu        t4, 3(a4)
                  lhu        t4, -10(a4)
                  lh         t3, -2(a4)
                  lw         a7, 16(a4)
                  c.mv       a2, a7
                  lb         s5, 13(a4)
                  and        a0, s5, t4
                  lbu        t3, -13(a4)
                  sra        a7, t3, s5
                  nop
                  sh         a2, 2(a4)
                  sb         s5, 1(a4) #end riscv_hazard_instr_stream_2
                  addi       a0, zero, -6 #init loop 1 counter
                  c.or       a2, s0
                  c.lui      a1, 27
                  add        s8, a2, ra
                  addi       s2, zero, -16 #init loop 1 limit
main_76_1_t:      c.or       s1, a4
                  addi       a0, a0, -10 #update loop 1 counter
                  addi       t6, zero, 6 #init loop 0 counter
                  mul        s10, zero, sp
                  addi       a6, zero, 4 #init loop 0 limit
main_76_0_t:      sltiu      ra, t0, 263
                  c.xor      a2, a1
                  addi       t6, t6, -1 #update loop 0 counter
                  c.andi     a3, -1
                  bgeu       t6, a6, main_76_0_t #branch for loop 0
                  bne        a0, s2, main_76_1_t #branch for loop 1
                  srai       a1, a6, 31
main_33:          jal        s8, 21f
0:                jal        ra, 15f
1:                c.j        14f
2:                c.j        7f
3:                jal        t4, 2b
4:                c.j        22f
5:                c.jal      11f
6:                c.j        18f
7:                c.j        0b
8:                jal        ra, 1b
9:                c.jal      3b
10:               c.j        25f
11:               c.jal      6b
12:               c.j        24f
13:               jal        t3, 19f
14:               c.j        23f
15:               jal        t1, 4b
16:               c.jal      20f
17:               c.jal      13b
18:               jal        s5, 16b
19:               c.j        8b
20:               c.j        17b
21:               c.j        5b
22:               c.jal      10b
23:               c.jal      12b
24:               c.j        9b
25:               c.li       t1, 8
                  la         a6, region_1+4262 #start riscv_hazard_instr_stream_7
                  lh         gp, 12(a6)
                  lb         a1, -5(a6)
                  c.li       a0, 19
                  lhu        s3, -12(a6)
                  lbu        s3, -16(a6)
                  lb         s11, -10(a6)
                  sb         a1, -1(a6)
                  csrrc      s0, 0x340, gp
                  sh         s0, -6(a6)
                  slti       a1, s11, 180
                  mulhsu     a1, s3, s3
                  lw         s11, -2(a6)
                  sb         s11, -1(a6)
                  lhu        s0, -6(a6)
                  sltu       a0, s0, s11
                  lbu        s11, 9(a6)
                  c.addi     s0, 24
                  sb         s3, 15(a6)
                  lb         s0, 3(a6)
                  lh         a0, -16(a6)
                  csrrw      s11, 0x340, a1
                  sb         gp, -5(a6)
                  lb         a0, 5(a6)
                  lb         a1, 12(a6)
                  fence.i
                  lb         s3, 15(a6)
                  add        s0, gp, a1
                  lb         gp, -11(a6)
                  c.or       a0, a1
                  or         gp, a1, s0
                  lb         a1, 3(a6)
                  sb         a1, -1(a6)
                  sh         a1, -16(a6)
                  csrrsi     gp, 0x340, 26
                  csrrc      gp, 0x340, s0
                  lb         gp, 1(a6) #end riscv_hazard_instr_stream_7
                  addi       s4, zero, -4 #init loop 0 counter
                  slti       s3, s3, -720
                  sll        t1, a5, s8
                  c.sub      a4, a0
                  sub        s9, s4, a5
                  c.andi     s0, 24
                  addi       s2, zero, 16 #init loop 0 limit
                  xor        s10, a7, s2
main_71_0_t:      c.li       tp, -1
                  c.sub      a5, a3
                  c.slli     a1, 28
                  or         s8, t0, ra
                  auipc      a3, 135558
                  andi       s3, s3, 177
                  c.or       a3, a4
                  addi       s4, s4, 9 #update loop 0 counter
                  fence.i
                  slti       t0, s9, -795
                  remu       t5, t4, t6
                  divu       a7, a5, sp
                  c.slli     s1, 6
                  c.nop
                  mulh       s11, s4, a5
                  bltu       s4, s2, main_71_0_t #branch for loop 0
                  csrrsi     s9, 0x340, 7
                  la         s7, region_3+314 #start load_store_instr_stream_0
                  la         s1, region_3+76 #start load_store_instr_stream_1
                  sb         t0, 176(s1)
                  sh         a5, -52(s7)
                  lh         a7, 112(s1)
                  sb         s10, -83(s7)
                  lhu        a6, 206(s1)
                  lh         a2, 166(s1)
                  lh         a2, -96(s7)
                  lbu        s0, 183(s1)
                  lh         a3, 76(s1)
                  lb         a0, -7(s7)
                  sb         a5, 119(s1) #end load_store_instr_stream_1
                  sb         tp, 74(s7)
                  lb         gp, -30(s7) #end load_store_instr_stream_0
                  la         ra, region_3+371 #start load_store_instr_stream_0
                  la         a6, region_0+1190 #start load_store_instr_stream_1
                  lhu        tp, -183(ra)
                  lbu        s1, 31(ra)
                  lbu        a4, 19(a6)
                  lbu        s4, -35(a6)
                  lbu        t5, 130(ra)
                  lbu        s10, 27(a6)
                  sb         s11, -22(a6)
                  sb         zero, -148(ra)
                  lb         s8, -4(a6)
                  lb         s5, 54(a6)
                  lhu        s2, 54(a6)
                  sb         a3, 21(a6)
                  lbu        s1, -28(ra)
                  lbu        s9, 60(a6) #end load_store_instr_stream_1
                  lw         s11, -275(ra)
                  lh         a3, -175(ra) #end load_store_instr_stream_0
                  la         s7, region_2+6300 #start riscv_hazard_instr_stream_12
                  c.and      s1, s1
                  c.srai     s1, 27
                  lbu        t6, 57(s7)
                  sb         s0, -62(s7)
                  sb         t6, 40(s7)
                  lb         s10, 45(s7)
                  lb         s10, 34(s7)
                  sb         ra, -56(s7)
                  c.add      s5, s5
                  c.add      s5, t6
                  c.lui      t6, 19
                  c.mv       s5, s1
                  lbu        s1, -23(s7)
                  lbu        ra, -26(s7)
                  lh         ra, -56(s7)
                  mulhu      s5, s0, s0
                  sw         s5, 0(s7)
                  sb         s5, 59(s7)
                  sb         t6, 40(s7)
                  sb         s1, -19(s7)
                  divu       s0, s1, s0
                  xori       s5, s10, 401
                  lb         s10, 56(s7)
                  sb         s0, -46(s7)
                  sw         ra, -32(s7)
                  fence.i
                  lbu        t6, 11(s7)
                  c.andi     s0, 9
                  lbu        s1, -32(s7)
                  lbu        ra, -7(s7)
                  sb         ra, -3(s7)
                  divu       s10, ra, s0
                  lb         ra, -4(s7)
                  sb         s0, 7(s7)
                  lbu        ra, 58(s7)
                  fence
                  lbu        t6, -43(s7)
                  lbu        t6, -31(s7)
                  c.li       ra, -1
                  c.lui      s0, 19
                  remu       s10, s10, s10
                  lbu        s10, 59(s7) #end riscv_hazard_instr_stream_12
                  la         a5, region_0+28 #start load_store_instr_stream_1
                  la         s10, region_0+2239 #start load_store_instr_stream_0
                  lh         s7, -16(a5)
                  sh         tp, 56(a5)
                  lbu        t1, -8(a5)
                  lbu        s2, 138(s10)
                  lh         s5, -59(s10)
                  sh         t5, -205(s10)
                  sb         s6, 42(a5)
                  lb         a3, 54(a5)
                  lb         t6, 9(a5)
                  lbu        gp, 234(s10)
                  lbu        t3, -150(s10)
                  sb         a1, 49(a5)
                  lbu        a3, 31(a5) #end load_store_instr_stream_1
                  lb         ra, 164(s10)
                  sh         t4, 131(s10) #end load_store_instr_stream_0
                  la         s5, region_1+8821 #start load_store_instr_stream_4
                  la         ra, region_1+2741 #start load_store_instr_stream_3
                  la         t3, region_1+1321 #start load_store_instr_stream_2
                  sh         s4, -45(t3)
                  la         gp, region_1+266 #start load_store_instr_stream_1
                  lhu        t6, -115(t3)
                  la         tp, region_1+13348 #start load_store_instr_stream_0
                  sb         t3, -5(t3)
                  lbu        s0, 62(gp)
                  lhu        a2, 27(ra)
                  lhu        a2, 52(gp)
                  lh         s11, -5(t3)
                  lb         t5, -138(s5)
                  lhu        s11, 58(tp)
                  lh         t5, 33(ra)
                  lb         zero, 102(t3)
                  lw         s10, 223(s5)
                  sb         a3, -29(gp)
                  lhu        s4, -191(t3)
                  sh         a7, -58(gp)
                  lhu        s7, -2(tp)
                  lb         a7, 36(ra)
                  lb         a7, 36(ra)
                  lbu        t4, -60(t3)
                  sw         s4, 11(ra)
                  sb         s4, -233(t3)
                  lb         a4, 33(tp)
                  sh         s11, -209(s5)
                  sb         a0, -39(gp)
                  lw         a1, 4(tp)
                  sb         a0, 196(s5)
                  sw         s2, 42(gp)
                  sb         gp, 55(s5) #end load_store_instr_stream_4
                  sb         s6, -23(gp) #end load_store_instr_stream_1
                  sb         t4, 53(t3) #end load_store_instr_stream_2
                  lb         s9, 5(ra) #end load_store_instr_stream_3
                  sw         t5, 0(tp) #end load_store_instr_stream_0
                  la         s4, region_1+10590 #start riscv_load_store_rand_instr_stream_7
                  lb         tp, 87(s4)
                  mulh       ra, s0, t0
                  srl        tp, s9, s9
                  sb         s5, 88(s4)
                  sb         a7, -49(s4)
                  lw         s9, -150(s4)
                  lbu        s5, 205(s4)
                  csrrci     s11, 0x340, 20
                  sub        t1, s11, t1
                  lb         a4, 209(s4)
                  lb         s8, -48(s4)
                  sll        s10, s3, s3
                  lbu        a6, 117(s4)
                  sb         gp, -245(s4)
                  sw         s5, -186(s4)
                  c.addi     a2, 13
                  sb         s10, -243(s4)
                  mulhu      s2, a5, s0
                  lh         gp, 240(s4)
                  sb         s6, 141(s4)
                  sb         s8, 147(s4)
                  lhu        s5, 136(s4)
                  lbu        s8, 100(s4)
                  div        t5, s4, s2
                  sra        s1, s6, s1
                  fence.i
                  sb         s5, -181(s4)
                  sll        gp, t0, tp
                  lhu        a0, 54(s4)
                  c.mv       s8, s7
                  lbu        s2, 233(s4)
                  lbu        t1, 151(s4)
                  lui        zero, 230334
                  lbu        a1, 153(s4)
                  sw         a3, 222(s4)
                  lh         t0, -114(s4)
                  lb         s1, -50(s4)
                  lh         a4, -96(s4)
                  sb         t1, -38(s4) #end riscv_load_store_rand_instr_stream_7
                  la         t4, region_1+16031 #start riscv_load_store_rand_instr_stream_6
                  sltu       s4, a2, s5
                  lbu        a7, 58(t4)
                  lbu        t1, 3(t4)
                  sb         tp, -56(t4)
                  sb         t6, -49(t4)
                  mulhu      t6, s9, s8
                  addi       t6, s4, 408
                  lbu        s0, 44(t4)
                  lh         s2, 47(t4)
                  csrrw      gp, 0x340, tp
                  div        zero, ra, a3
                  lbu        a0, 59(t4)
                  csrrwi     zero, 0x340, 31
                  srli       s1, a3, 20
                  lhu        a0, 23(t4)
                  sh         s5, 33(t4)
                  lh         s10, -25(t4)
                  and        s0, zero, s10
                  lhu        t3, 17(t4)
                  c.mv       a6, t6
                  lui        s1, 492457
                  lb         t0, 51(t4)
                  sub        s9, a5, t0
                  sll        a3, s3, s0
                  lb         a4, -52(t4)
                  sb         a4, -59(t4)
                  c.or       a4, a3
                  csrrw      s7, 0x340, s6
                  csrrsi     s2, 0x340, 0
                  add        t3, s10, a1
                  slt        t6, s2, a1
                  sub        s3, s7, s7
                  lbu        s7, -33(t4)
                  lbu        a3, 34(t4)
                  sb         a7, -33(t4)
                  sb         a1, 33(t4)
                  slli       t5, s3, 2
                  sltiu      s1, s4, -762
                  sb         a3, -43(t4) #end riscv_load_store_rand_instr_stream_6
                  la         t3, region_3+85 #start load_store_instr_stream_1
                  la         s11, region_3+378 #start load_store_instr_stream_3
                  la         ra, region_3+412 #start load_store_instr_stream_2
                  lbu        s1, 64(t3)
                  sh         gp, -8(ra)
                  la         t0, region_3+259 #start load_store_instr_stream_0
                  lbu        s4, 43(t3)
                  lbu        t6, -245(s11)
                  lbu        t4, 10(t0)
                  sb         t4, -4(ra)
                  lbu        tp, 13(t0)
                  lbu        s2, -76(t3)
                  sb         s4, -289(s11)
                  sb         zero, -14(t0)
                  lbu        a2, 4(t0)
                  lh         s8, 337(t3)
                  lhu        s5, -85(t3)
                  lbu        s8, -7(ra)
                  lbu        zero, -369(s11)
                  lb         s9, -128(s11)
                  sb         a4, 13(ra)
                  lb         a4, 75(s11)
                  sb         a6, 15(ra)
                  sh         a1, 397(t3)
                  lb         s1, 6(ra)
                  sb         s0, 3(t0)
                  lbu        a3, 314(t3)
                  sb         a6, 77(s11)
                  lbu        t1, -74(s11)
                  sh         s0, 325(t3)
                  lbu        zero, 374(t3) #end load_store_instr_stream_1
                  lb         s4, -330(s11)
                  sw         t6, -15(t0)
                  lbu        t4, 98(s11) #end load_store_instr_stream_3
                  lbu        a4, 6(ra) #end load_store_instr_stream_2
                  lbu        s2, 4(t0) #end load_store_instr_stream_0
main_21:          jal        s8, 7f
0:                c.j        10f
1:                jal        t1, 12f
2:                jal        ra, 4f
3:                c.jal      13f
4:                jal        s8, 3b
5:                jal        t1, 0b
6:                jal        t3, 9f
7:                jal        ra, 6b
8:                jal        ra, 5b
9:                c.jal      8b
10:               jal        t0, 11f
11:               c.jal      1b
12:               jal        ra, 2b
13:               mul        s11, t5, a4
                  addi       s8, zero, -10 #init loop 0 counter
                  c.xor      a4, s0
                  c.srli     a4, 28
                  and        t1, s9, s4
                  andi       s4, a7, -824
                  csrrs      ra, 0x340, t4
                  mul        s3, a1, s10
                  addi       t0, zero, 17 #init loop 0 limit
                  slli       s3, a6, 25
main_68_0_t:      addi       s3, a5, 11
                  sra        s2, ra, s8
                  addi       s8, s8, 9 #update loop 0 counter
                  c.xor      a2, s0
                  bne        s8, t0, main_68_0_t #branch for loop 0
                  sltu       s7, a6, a4
                  la         s1, region_3+393 #start load_store_instr_stream_1
                  la         s10, region_0+1202 #start load_store_instr_stream_2
                  la         s9, region_1+4809 #start load_store_instr_stream_3
                  lh         tp, 137(s9)
                  lbu        t5, 185(s9)
                  lbu        ra, -41(s10)
                  lbu        s7, 4(s1)
                  lbu        t0, -71(s9)
                  la         a1, region_4+3322 #start load_store_instr_stream_0
                  lbu        s8, 48(s1)
                  lbu        a7, 15(a1)
                  lhu        a0, -14(s10)
                  sb         s4, 21(s10)
                  lh         s5, 217(s9)
                  sh         s8, -83(s1)
                  lb         gp, -9(s10)
                  sh         a1, -67(s9)
                  lh         t4, -107(s1)
                  sb         s5, 27(s10)
                  sb         ra, 66(s1)
                  sb         s8, 42(a1)
                  sb         t0, -180(s9)
                  lbu        s4, -35(s10) #end load_store_instr_stream_2
                  .2byte 0x006a # kHintInstr
                  sb         s11, 182(s9)
                  lhu        t4, 25(s9)
                  lb         s7, -222(s1)
                  lbu        s5, -175(a1)
                  lb         s4, 182(s9)
                  sw         a0, -38(a1)
                  sb         s8, -172(s1) #end load_store_instr_stream_1
                  lbu        t1, -208(s9) #end load_store_instr_stream_3
                  sw         s8, 210(a1) #end load_store_instr_stream_0
                  la         s0, region_4+2623 #start riscv_load_store_rand_instr_stream_3
                  c.andi     a5, 5
                  c.add      a2, a2
                  csrrci     s4, 0x340, 28
                  lb         tp, 0(s0)
                  and        a6, s5, ra
                  sh         a0, 3(s0)
                  nop
                  lb         t1, 10(s0)
                  lb         a1, 4(s0)
                  remu       t0, s5, s6
                  sb         s2, -16(s0)
                  mulhsu     t5, s3, tp
                  lbu        a1, 8(s0)
                  lb         s5, 12(s0)
                  csrrw      a3, 0x340, ra
                  srai       s1, a1, 14
                  c.mv       s10, s9
                  lui        a3, 249038
                  lh         a0, -7(s0)
                  lhu        a7, 5(s0)
                  sltiu      t1, s2, 934
                  xori       t1, zero, -714
                  lh         a5, 3(s0)
                  lbu        s7, 10(s0)
                  sb         ra, 15(s0)
                  c.add      ra, tp
                  sb         s9, 6(s0)
                  lbu        tp, -2(s0)
                  lbu        a7, -2(s0)
                  lb         s5, 0(s0)
                  c.srli     a1, 9
                  lh         s7, 15(s0)
                  andi       t5, a1, -461
                  lb         ra, -6(s0)
                  ori        a6, a0, 606
                  c.nop
                  sub        a5, a6, t4
                  lbu        tp, -3(s0)
                  slt        a6, s2, s7
                  lb         s11, -8(s0)
                  xor        a3, t1, s4
                  or         a2, ra, s10
                  lb         s7, 16(s0)
                  mulhu      zero, a5, s4
                  c.xor      a0, a1
                  slli       a2, a7, 29
                  lb         s4, 12(s0)
                  lb         s3, -10(s0)
                  lb         s1, -11(s0)
                  mulhsu     s7, a6, s1
                  sh         s2, 9(s0)
                  lbu        tp, -6(s0)
                  lh         a2, -15(s0)
                  lh         s3, 13(s0) #end riscv_load_store_rand_instr_stream_3
                  addi       s11, zero, 7 #init loop 1 counter
                  csrrci     a4, 0x340, 8
                  addi       t0, zero, 11 #init loop 1 limit
main_69_1_t:      c.or       s1, s1
                  addi       s11, s11, 10 #update loop 1 counter
                  c.slli     t1, 9
                  addi       a0, zero, 10 #init loop 0 counter
                  csrrw      s0, 0x340, zero
                  addi       a3, zero, -11 #init loop 0 limit
main_69_0_t:      add        a6, gp, zero
                  slli       gp, a4, 13
                  addi       a0, a0, -3 #update loop 0 counter
                  bge        a0, a3, main_69_0_t #branch for loop 0
                  blt        s11, t0, main_69_1_t #branch for loop 1
                  c.add      s10, s7
main_27:          jal        s8, 2f
0:                c.j        3f
1:                c.j        8f
2:                c.j        12f
3:                jal        a2, 9f
4:                c.j        20f
5:                jal        t5, 6f
6:                jal        a3, 0b
7:                c.j        15f
8:                c.jal      18f
9:                c.jal      4b
10:               jal        ra, 5b
11:               c.j        19f
12:               jal        ra, 11b
13:               c.j        1b
14:               c.jal      10b
15:               c.j        17f
16:               c.jal      13b
17:               c.jal      16b
18:               c.j        14b
19:               jal        s4, 7b
20:               sltiu      s3, a3, 239
                  la         a0, region_2+5310 #start load_store_instr_stream_1
                  la         a2, region_0+173 #start load_store_instr_stream_4
                  la         s0, region_3+437 #start load_store_instr_stream_3
                  lhu        t6, 44(a0)
                  sh         s10, 48(a0)
                  la         t3, region_4+2872 #start load_store_instr_stream_2
                  lhu        a4, 21(a2)
                  la         s8, region_1+5202 #start load_store_instr_stream_0
                  lb         a5, -1(s0)
                  lb         a6, -9(t3)
                  sh         s1, -14(a0)
                  sb         a7, 8(a2)
                  lb         a5, 1291(s8)
                  lbu        s7, 8(s0)
                  lb         s7, 61(a0)
                  sh         s11, -1764(s8)
                  lbu        s4, -16(a0)
                  lb         tp, -2(s0)
                  sh         t6, 16(t3)
                  lhu        s4, 9(s0)
                  sb         tp, 43(a0)
                  sb         s8, 11(s0)
                  lbu        s11, -27(a0)
                  sb         a5, -13(t3)
                  lbu        t5, 53(a2)
                  lbu        a6, -441(s8)
                  lbu        t0, -13(t3)
                  lbu        a3, -7(t3)
                  sb         s5, 13(s0)
                  lb         t5, 25(a0)
                  lh         ra, -9(s0)
                  lh         a1, -1(s0)
                  lbu        gp, -36(a2)
                  lb         tp, -32(a0) #end load_store_instr_stream_1
                  sw         s10, -1562(s8)
                  lbu        s3, 11(t3)
                  sh         s0, -1056(s8)
                  lbu        s3, 6(s0) #end load_store_instr_stream_3
                  sb         a0, -11(t3) #end load_store_instr_stream_2
                  lb         s11, 43(a2) #end load_store_instr_stream_4
                  lb         a5, 1845(s8) #end load_store_instr_stream_0
                  la         gp, region_1+4955 #start load_store_instr_stream_0
                  lbu        ra, -1506(gp)
                  la         s7, region_4+2138 #start load_store_instr_stream_1
                  lb         zero, 7(s7)
                  lb         zero, 962(gp)
                  lb         s0, 790(gp)
                  lbu        s10, 1826(gp)
                  sb         a2, -15(s7)
                  lbu        t6, 3(s7)
                  sh         s6, -1283(gp)
                  lbu        s10, -144(gp)
                  lh         t0, 1033(gp)
                  lbu        t1, 992(gp)
                  lbu        s0, 3(s7)
                  sb         s5, -13(s7)
                  lh         ra, 1865(gp)
                  lbu        t5, -4(s7) #end load_store_instr_stream_1
                  lb         t5, -1504(gp) #end load_store_instr_stream_0
                  la         ra, region_0+1291 #start load_store_instr_stream_2
                  lb         tp, 1611(ra)
                  la         gp, region_3+110 #start load_store_instr_stream_1
                  lb         a5, 25(gp)
                  lhu        a7, -1261(ra)
                  la         s1, region_2+3855 #start load_store_instr_stream_0
                  sb         t1, 1795(ra)
                  sh         zero, -60(gp)
                  sb         s8, -1175(ra)
                  lhu        s4, -16(gp)
                  sb         t0, 1477(ra)
                  lbu        a4, 950(ra)
                  lb         s2, 18(gp)
                  lbu        a0, 1377(s1)
                  lbu        s0, 1448(s1)
                  lhu        s0, -1663(s1)
                  sh         s1, 1607(ra)
                  lb         a7, 3(gp)
                  lbu        s11, 460(ra)
                  lbu        s9, 53(gp)
                  sb         tp, -3(gp)
                  sb         t6, -1366(s1)
                  lh         s11, 52(gp)
                  lbu        a5, 22(gp)
                  lbu        tp, 1858(ra)
                  lbu        s11, 16(gp) #end load_store_instr_stream_1
                  sb         s4, -712(ra) #end load_store_instr_stream_2
                  lb         t1, 87(s1) #end load_store_instr_stream_0
                  la         s10, region_3+29 #start riscv_hazard_instr_stream_15
                  lhu        t1, -3(s10)
                  sb         a0, -14(s10)
                  lh         s1, 1(s10)
                  lb         t6, -11(s10)
                  lb         t1, -4(s10)
                  lb         a0, 6(s10)
                  c.or       s1, s1
                  lbu        a1, -8(s10)
                  lbu        zero, 8(s10)
                  lh         a1, -3(s10)
                  sb         zero, -8(s10)
                  lhu        zero, -15(s10)
                  slt        a1, a1, zero
                  sb         t1, 0(s10)
                  lb         a1, 0(s10)
                  mulhu      zero, a0, t6
                  div        zero, a1, s1
                  lb         s1, 16(s10)
                  sb         s1, 2(s10)
                  sb         a0, 9(s10)
                  lbu        a1, -6(s10)
                  c.addi     s1, 9
                  lb         a1, -4(s10)
                  mul        t6, a0, t6
                  lbu        zero, 1(s10)
                  lbu        a1, -12(s10)
                  sb         a0, 4(s10)
                  mulh       a0, a0, zero
                  sb         t6, 14(s10)
                  c.xor      a0, s1
                  sb         t1, -16(s10)
                  and        s1, t6, s1
                  sb         t1, -14(s10)
                  div        s1, t1, a1
                  lbu        a1, 16(s10)
                  sh         a1, 5(s10) #end riscv_hazard_instr_stream_15
main_29:          jal        s8, 9f
0:                c.j        12f
1:                c.j        6f
2:                c.jal      4f
3:                c.j        14f
4:                c.j        11f
5:                c.jal      10f
6:                c.j        15f
7:                c.j        1b
8:                jal        t1, 7b
9:                c.j        3b
10:               c.jal      0b
11:               jal        t1, 13f
12:               c.j        8b
13:               c.jal      16f
14:               jal        t1, 2b
15:               c.jal      17f
16:               jal        gp, 5b
17:               csrrci     s0, 0x340, 30
main_28:          jal        s8, 6f
0:                c.jal      2f
1:                c.jal      10f
2:                jal        a7, 7f
3:                jal        gp, 8f
4:                c.jal      9f
5:                c.j        3b
6:                c.j        11f
7:                c.jal      13f
8:                jal        t1, 14f
9:                c.j        0b
10:               jal        ra, 5b
11:               jal        gp, 4b
12:               jal        a1, 1b
13:               jal        ra, 12b
14:               rem        s4, t0, gp
                  addi       s5, zero, -9 #init loop 0 counter
                  and        s1, a3, t6
                  addi       s7, zero, -11 #init loop 0 limit
                  srai       t5, a3, 0
main_75_0_t:      mul        a0, gp, s2
                  lui        tp, 95706
                  auipc      t6, 447869
                  addi       s5, s5, -5 #update loop 0 counter
                  csrrs      s10, 0x340, s11
                  lui        s4, 235354
                  bge        s5, s7, main_75_0_t #branch for loop 0
                  xori       t4, t0, -220
                  la         a2, region_2+882 #start riscv_load_store_rand_instr_stream_16
                  andi       a1, s8, -825
                  lb         a1, -55(a2)
                  lb         a4, 28(a2)
                  ori        t1, s0, -638
                  lb         a6, -40(a2)
                  sb         zero, -18(a2)
                  lhu        a3, 50(a2)
                  c.nop
                  sb         t5, 17(a2)
                  sb         s3, -61(a2)
                  mulh       a0, t1, a4
                  xori       t1, sp, 91
                  sb         a4, -45(a2)
                  c.andi     s1, -1
                  lbu        t5, 0(a2)
                  c.srai     a0, 17
                  div        t4, s10, s9
                  sb         s1, 0(a2)
                  sb         s7, -14(a2)
                  sh         a5, 2(a2)
                  lbu        a7, 1(a2)
                  sb         a5, 13(a2)
                  lb         t0, -59(a2)
                  sh         s3, 38(a2)
                  lbu        s4, 11(a2)
                  sra        zero, a7, ra
                  csrrw      s0, 0x340, s7
                  c.srli     s1, 5
                  andi       t0, tp, -986
                  lbu        t6, -13(a2)
                  lbu        t4, -47(a2)
                  sb         t4, 55(a2)
                  lb         s9, 16(a2)
                  c.sub      a5, a4
                  and        s7, a0, s6
                  sb         a7, 17(a2)
                  csrrs      t4, 0x340, s0
                  c.srli     s0, 2
                  sb         a6, -21(a2)
                  sra        tp, s2, t3
                  lbu        gp, 37(a2)
                  lhu        s3, 60(a2)
                  lh         a6, -32(a2)
                  sh         s7, 44(a2)
                  add        t6, t5, t5
                  ori        t5, t6, -415
                  lbu        tp, 17(a2)
                  lh         ra, 42(a2)
                  sb         a3, 55(a2) #end riscv_load_store_rand_instr_stream_16
                  la         t5, region_4+3221 #start riscv_load_store_rand_instr_stream_9
                  lh         s7, -75(t5)
                  lh         a7, 1(t5)
                  sb         s9, -14(t5)
                  lbu        s5, -154(t5)
                  lbu        t0, 206(t5)
                  xori       a6, t3, 745
                  fence
                  c.srli     a4, 5
                  sw         t2, 187(t5)
                  sb         s0, -14(t5)
                  sb         a4, 228(t5)
                  sw         s6, -185(t5)
                  xor        s0, tp, s3
                  lbu        a7, 236(t5)
                  lw         s3, -221(t5)
                  lbu        a0, 216(t5)
                  auipc      s1, 769042
                  add        s2, t0, t1
                  lbu        gp, -84(t5)
                  sltiu      a0, s9, -202
                  lbu        a5, -130(t5)
                  c.andi     s0, -1
                  lb         t1, 226(t5)
                  add        s8, s4, t3
                  lh         s5, -133(t5)
                  addi       a7, s4, -51
                  xori       a3, s2, 724
                  sh         tp, 27(t5)
                  lui        gp, 698301
                  sb         t2, -91(t5)
                  lbu        a0, 137(t5)
                  sb         s9, -119(t5)
                  sb         s10, -238(t5)
                  lb         a6, -20(t5)
                  sw         t2, -1(t5)
                  lb         ra, 202(t5)
                  lbu        t3, 152(t5)
                  lb         t0, -250(t5)
                  remu       t4, s2, s3
                  rem        gp, a7, s8
                  lb         a7, -25(t5)
                  lb         t0, -210(t5) #end riscv_load_store_rand_instr_stream_9
                  la         s7, region_2+1480 #start riscv_load_store_rand_instr_stream_14
                  ori        s1, tp, -484
                  c.sub      a4, a1
                  slli       s11, gp, 21
                  fence.i
                  addi       a6, a5, -681
                  c.lui      a2, 13
                  xor        t6, s3, t1
                  csrrs      a4, 0x340, s9
                  sltu       a3, t1, gp
                  lb         s5, 34(s7)
                  auipc      s4, 454891
                  fence
                  sra        s11, a1, s9
                  lbu        a4, 50(s7)
                  csrrc      s8, 0x340, t3
                  sh         t4, -44(s7)
                  lui        zero, 156248
                  c.andi     a5, -1
                  csrrwi     s4, 0x340, 22
                  sb         zero, 21(s7)
                  sll        gp, t4, a6
                  c.andi     a2, -1
                  lbu        t1, -31(s7)
                  lbu        s9, 7(s7)
                  lw         a2, -16(s7)
                  xor        a4, gp, s8
                  sub        zero, sp, t4
                  sltiu      s5, s11, -892
                  lbu        s8, -53(s7)
                  c.srli     a0, 4
                  add        a7, s1, a3
                  c.nop
                  sb         s0, -27(s7)
                  sll        zero, a6, s7
                  sltiu      s4, s1, -817
                  xor        a5, s11, zero
                  c.andi     a4, -1
                  mulh       a5, s11, s2
                  lh         gp, 22(s7) #end riscv_load_store_rand_instr_stream_14
                  la         s2, region_4+2492 #start load_store_instr_stream_3
                  la         t5, region_3+105 #start load_store_instr_stream_1
                  lbu        ra, -13(s2)
                  lbu        s5, 386(t5)
                  la         s11, region_1+7805 #start load_store_instr_stream_2
                  lh         zero, -49(s11)
                  la         s1, region_0+473 #start load_store_instr_stream_0
                  lb         a0, 13(s1)
                  sb         a4, 52(s11)
                  lbu        t0, -52(s11)
                  lbu        t3, 41(s11)
                  lh         s0, 15(s1)
                  sb         sp, 40(s11)
                  lbu        s8, 16(s1)
                  sh         a2, 6(s2)
                  sb         ra, 251(t5)
                  lw         s8, -9(s1)
                  lhu        s7, -33(s11)
                  lbu        a3, -44(s11)
                  lbu        tp, 49(t5)
                  lbu        s4, 14(s1)
                  lhu        t0, -4(s2)
                  lbu        a1, -3(s2)
                  sh         sp, 11(s1)
                  sb         s2, 366(t5)
                  lb         a7, -7(s1)
                  lbu        a6, 20(t5)
                  sb         t2, 12(s11)
                  sb         sp, -5(s11)
                  lhu        tp, 1(s1)
                  sb         zero, -3(s2) #end load_store_instr_stream_3
                  sb         s2, -31(s11) #end load_store_instr_stream_2
                  sb         ra, 336(t5) #end load_store_instr_stream_1
                  lhu        s9, 11(s1) #end load_store_instr_stream_0
                  la         tp, region_0+2205 #start riscv_hazard_instr_stream_8
                  mulhsu     t3, s11, s8
                  lw         t3, -17(tp)
                  lbu        s8, 184(tp)
                  lhu        s8, 245(tp)
                  c.andi     s1, 15
                  sb         s1, 154(tp)
                  sb         s8, 204(tp)
                  sltiu      s8, s11, -854
                  lb         t3, 33(tp)
                  c.mv       s11, s2
                  srli       a1, s2, 17
                  c.nop
                  andi       s2, a1, 394
                  lh         s1, -213(tp)
                  lbu        s2, 11(tp)
                  .2byte 0x4061 # kHintInstr
                  remu       s8, t3, s1
                  nop
                  csrrw      s8, 0x340, t3
                  sb         t3, -146(tp)
                  csrrwi     s1, 0x340, 11
                  xor        s1, a1, t3
                  slt        s2, a1, s1
                  lb         s1, 201(tp) #end riscv_hazard_instr_stream_8
                  la         t3, region_0+2677 #start load_store_instr_stream_3
                  la         t1, region_2+1487 #start load_store_instr_stream_1
                  la         t4, region_3+324 #start load_store_instr_stream_2
                  lbu        s10, 11(t4)
                  la         gp, region_4+734 #start load_store_instr_stream_0
                  sb         t4, -78(t3)
                  lb         s8, 5(t4)
                  lb         a0, -38(t1)
                  lbu        s3, 45(gp)
                  lbu        tp, 122(t3)
                  lbu        s1, 190(t3)
                  sb         s3, 55(t1)
                  lb         zero, 182(t3)
                  lbu        s10, -56(t1)
                  sh         s10, -42(gp)
                  sh         gp, 245(t3)
                  lb         s5, 47(t1)
                  sh         s8, -1(t3)
                  lw         a7, -2(gp)
                  sh         s6, 54(gp)
                  lbu        a0, -10(t4)
                  lhu        a7, 4(gp)
                  lw         s8, 8(t4)
                  lbu        s1, 15(t4) #end load_store_instr_stream_2
                  sh         t5, 63(t1)
                  lbu        s1, -39(gp)
                  lbu        s1, -56(t3)
                  sb         t6, 18(t1)
                  lb         a2, 47(t1)
                  lw         s10, -133(t3) #end load_store_instr_stream_3
                  lb         a3, 24(t1) #end load_store_instr_stream_1
                  lb         a7, -8(gp) #end load_store_instr_stream_0
main_32:          jal        s8, 22f
0:                c.j        18f
1:                c.jal      10f
2:                jal        t1, 13f
3:                c.jal      11f
4:                c.jal      19f
5:                c.jal      7f
6:                c.jal      17f
7:                c.jal      26f
8:                jal        tp, 9f
9:                c.jal      21f
10:               c.jal      0b
11:               c.j        14f
12:               jal        ra, 1b
13:               c.jal      16f
14:               jal        ra, 15f
15:               jal        ra, 2b
16:               c.jal      25f
17:               jal        gp, 8b
18:               c.j        23f
19:               c.j        24f
20:               jal        ra, 4b
21:               jal        t3, 12b
22:               c.j        6b
23:               c.jal      3b
24:               c.jal      5b
25:               c.jal      20b
26:               c.and      a1, a0
main_22:          jal        s8, 5f
0:                c.j        10f
1:                jal        ra, 11f
2:                c.j        8f
3:                c.j        2b
4:                jal        ra, 6f
5:                jal        ra, 0b
6:                c.j        1b
7:                jal        ra, 3b
8:                jal        t1, 9f
9:                c.jal      4b
10:               c.jal      7b
11:               divu       tp, s4, a5
                  la         ra, region_1+8604 #start load_store_instr_stream_1
                  la         t4, region_1+14771 #start load_store_instr_stream_2
                  lb         t1, 56(ra)
                  la         s10, region_1+13795 #start load_store_instr_stream_3
                  la         s4, region_1+8066 #start load_store_instr_stream_0
                  sh         s6, -2(ra)
                  sh         a5, 44(s4)
                  lb         s9, -28(ra)
                  sb         s0, -59(s4)
                  lhu        s2, 1963(s10)
                  lb         t3, 51(ra)
                  sb         s7, 44(t4)
                  sw         gp, 57(t4)
                  la         t6, region_1+7259 #start load_store_instr_stream_4
                  lh         s7, -164(s4)
                  lb         a7, -212(t6)
                  sb         gp, -48(ra)
                  lb         tp, 62(t4)
                  sb         s4, 1728(s10)
                  lbu        a1, -110(t6)
                  lh         a4, 58(ra)
                  sb         a0, 95(s4)
                  lhu        s8, -58(ra)
                  lbu        a0, -1494(s10)
                  sb         s9, -131(s4)
                  sb         t3, -58(t4)
                  lb         a1, 177(t6)
                  lb         a7, 136(s10)
                  lb         a4, -54(t4)
                  lb         t0, 24(t4)
                  lhu        s8, -61(t6)
                  sb         s8, -43(ra)
                  sb         sp, -1436(s10)
                  lbu        s0, -63(t4)
                  sb         t6, -8(t4)
                  lbu        a7, -1384(s10)
                  lbu        s1, -71(s4)
                  lh         zero, -885(s10)
                  sb         s0, -38(ra) #end load_store_instr_stream_1
                  sw         t6, -167(t6) #end load_store_instr_stream_4
                  sb         s7, -58(t4) #end load_store_instr_stream_2
                  sh         s5, -1389(s10) #end load_store_instr_stream_3
                  lb         a2, 41(s4) #end load_store_instr_stream_0
                  la         a1, region_4+1432 #start load_store_instr_stream_0
                  sb         s0, 250(a1)
                  la         s8, region_2+874 #start load_store_instr_stream_1
                  la         t5, region_3+498 #start load_store_instr_stream_3
                  lbu        s0, -56(t5)
                  la         t4, region_1+35 #start load_store_instr_stream_2
                  lb         a5, -29(a1)
                  lb         a4, 60(t4)
                  lb         s11, -180(t5)
                  lw         t6, -232(a1)
                  lb         a2, 71(s8)
                  lb         s10, -177(a1)
                  sh         t1, 29(t4)
                  lbu        s5, -23(t5)
                  lb         t6, 139(s8)
                  lb         s1, -55(a1)
                  lhu        t6, -238(a1)
                  lbu        s2, 171(a1)
                  sh         t1, -448(t5)
                  lb         zero, 49(t4)
                  sh         s3, -44(a1)
                  lb         tp, 21(t4)
                  sb         s6, 37(s8)
                  lb         s9, 3(t4)
                  sb         s0, -30(t4)
                  lb         s0, -177(s8)
                  sh         s3, -86(t5)
                  lb         s2, 56(t4)
                  lbu        t0, 212(s8) #end load_store_instr_stream_1
                  lbu        s1, -350(t5)
                  sb         zero, 12(t4)
                  lh         s9, -202(t5) #end load_store_instr_stream_3
                  sh         sp, 136(a1)
                  lbu        a3, 17(t4) #end load_store_instr_stream_2
                  lb         s7, 83(a1) #end load_store_instr_stream_0
                  la         s0, region_2+3414 #start riscv_load_store_rand_instr_stream_8
                  csrrs      t5, 0x340, s9
                  lbu        ra, 1052(s0)
                  add        t0, a0, s0
                  addi       s5, a3, 229
                  c.add      a2, sp
                  sb         gp, -301(s0)
                  or         t4, a3, a2
                  c.add      s10, a2
                  sh         s2, -1920(s0)
                  sub        s8, s3, tp
                  sb         zero, -1331(s0)
                  fence
                  lbu        s2, 527(s0)
                  srl        gp, a6, t1
                  sb         s11, 212(s0)
                  lb         t0, -963(s0)
                  c.mv       a5, s1
                  c.srai     a1, 25
                  div        a7, a7, s6
                  fence
                  lb         s11, -1563(s0)
                  lw         s9, -1290(s0)
                  divu       a5, s0, s11
                  c.or       a2, a5
                  c.xor      a4, s1
                  xori       gp, tp, 404
                  div        s8, s4, a1
                  and        a6, s6, s1
                  sltiu      s5, s11, -306
                  c.sub      a0, a2
                  auipc      s9, 15217
                  c.andi     s1, -1
                  csrrs      a2, 0x340, s6
                  lbu        zero, -1721(s0)
                  fence.i
                  slt        t6, s0, t3
                  csrrwi     s10, 0x340, 29
                  sh         a1, -1360(s0)
                  sh         s7, -916(s0) #end riscv_load_store_rand_instr_stream_8
main_17:          jal        s8, 12f
0:                c.jal      7f
1:                c.j        20f
2:                c.jal      21f
3:                c.jal      10f
4:                c.jal      11f
5:                jal        t1, 18f
6:                c.j        23f
7:                jal        ra, 4b
8:                jal        s8, 16f
9:                c.j        25f
10:               c.j        0b
11:               jal        t1, 2b
12:               c.j        13f
13:               jal        a6, 24f
14:               c.j        9b
15:               c.j        17f
16:               c.jal      3b
17:               jal        ra, 5b
18:               c.j        8b
19:               jal        ra, 26f
20:               c.j        22f
21:               c.jal      1b
22:               jal        gp, 6b
23:               c.jal      14b
24:               c.j        15b
25:               jal        tp, 19b
26:               jal        s10, 27f
27:               auipc      a0, 356512
                  la         s11, region_4+2480 #start load_store_instr_stream_1
                  la         a6, region_0+3380 #start load_store_instr_stream_3
                  la         a3, region_2+7798 #start load_store_instr_stream_2
                  lh         t6, 1110(s11)
                  lbu        s0, 158(a6)
                  la         t1, region_1+14300 #start load_store_instr_stream_0
                  sh         t6, -224(s11)
                  sh         s2, -902(s11)
                  lh         a1, 4(t1)
                  lb         s10, 17(a3)
                  lhu        s2, -256(a6)
                  lbu        s10, -3(t1)
                  lh         s7, 1074(s11)
                  lb         a2, -60(a3)
                  lbu        t4, 8(t1)
                  lbu        t4, 255(a6)
                  lh         a0, 1394(s11)
                  lh         gp, -16(a3)
                  lb         tp, 86(a6)
                  sb         a6, -1(t1)
                  lbu        s0, 17(a3)
                  lbu        t3, 253(a6) #end load_store_instr_stream_3
                  lb         s0, -186(s11)
                  sh         s3, -16(t1)
                  lbu        s4, 1043(s11) #end load_store_instr_stream_1
                  sh         a3, -16(t1)
                  lb         t5, 21(a3) #end load_store_instr_stream_2
                  lh         s7, 14(t1) #end load_store_instr_stream_0
                  la         a1, region_0+2369 #start riscv_load_store_rand_instr_stream_0
                  lb         t0, 204(a1)
                  divu       t3, s11, t6
                  sh         s8, 103(a1)
                  lb         s4, -214(a1)
                  sh         t2, -125(a1)
                  sb         a3, -250(a1)
                  sb         gp, -5(a1)
                  mulhu      zero, s3, s6
                  nop
                  lb         s9, -248(a1)
                  slti       t1, s0, -658
                  c.or       a5, a0
                  sh         a2, -211(a1)
                  sll        a0, s2, tp
                  and        a0, t5, t5
                  sh         a1, -55(a1)
                  lb         s8, 133(a1)
                  lb         ra, 206(a1)
                  lb         a6, 38(a1)
                  lbu        s0, 225(a1)
                  lw         s5, 75(a1)
                  lb         s10, -153(a1)
                  lh         a7, -253(a1)
                  sb         s11, 232(a1)
                  csrrc      s2, 0x340, s9
                  c.li       t5, -1
                  add        a0, s6, ra
                  lbu        a2, 50(a1)
                  csrrw      a3, 0x340, s5
                  sh         t5, -137(a1)
                  c.mv       a6, sp
                  sh         s6, 195(a1)
                  lb         s7, -170(a1)
                  or         a3, gp, s8
                  xori       s7, sp, -323
                  or         s5, s4, ra
                  rem        s0, s11, s11
                  lb         gp, -250(a1)
                  sub        t4, t1, a5
                  lbu        t4, 219(a1)
                  lhu        a6, 207(a1)
                  lh         s0, -171(a1)
                  sb         s11, -64(a1)
                  lb         a6, -205(a1)
                  lb         s3, 191(a1)
                  and        t1, a2, a4
                  lbu        tp, -216(a1) #end riscv_load_store_rand_instr_stream_0
                  la         s2, region_3+292 #start riscv_load_store_rand_instr_stream_4
                  lbu        ra, -15(s2)
                  lbu        zero, 17(s2)
                  sh         t5, -34(s2)
                  lb         t5, 39(s2)
                  lhu        a7, 60(s2)
                  lb         a2, -7(s2)
                  xor        t4, zero, s0
                  mulhsu     a1, a4, zero
                  lb         t3, -1(s2)
                  lb         a5, 12(s2)
                  sh         a0, 4(s2)
                  lb         a0, -57(s2)
                  sb         tp, -16(s2)
                  c.li       s4, -1
                  lh         s3, 32(s2)
                  c.lui      a5, 9
                  c.srli     a1, 30
                  lb         s5, -1(s2)
                  lw         a3, -48(s2)
                  slli       gp, s1, 17
                  lb         t5, 51(s2)
                  addi       a3, gp, -393
                  c.srai     a5, 3
                  add        s1, s4, a1
                  lbu        t1, 19(s2)
                  sub        t4, zero, s3
                  lb         a6, 19(s2)
                  lhu        t1, -52(s2)
                  lb         s0, -19(s2)
                  mulhsu     s4, zero, s8
                  sb         s5, -49(s2)
                  sb         t3, 18(s2)
                  c.nop
                  lhu        t0, 2(s2)
                  sb         a2, -17(s2) #end riscv_load_store_rand_instr_stream_4
main_31:          jal        s8, 24f
0:                c.jal      10f
1:                c.jal      3f
2:                c.jal      27f
3:                c.jal      5f
4:                jal        ra, 17f
5:                jal        a2, 2b
6:                c.j        16f
7:                c.j        1b
8:                c.jal      21f
9:                c.jal      28f
10:               c.jal      6b
11:               jal        t0, 23f
12:               jal        t1, 15f
13:               jal        a4, 7b
14:               jal        ra, 11b
15:               c.jal      13b
16:               c.j        25f
17:               c.j        0b
18:               c.jal      14b
19:               jal        gp, 29f
20:               jal        s5, 18b
21:               c.j        12b
22:               jal        s9, 9b
23:               c.j        8b
24:               c.jal      19b
25:               c.j        22b
26:               c.j        30f
27:               c.j        26b
28:               c.j        20b
29:               c.j        4b
30:               c.lui      s10, 3
                  la         t5, region_3+233 #start load_store_instr_stream_2
                  la         gp, region_3+259 #start load_store_instr_stream_3
                  la         s11, region_3+291 #start load_store_instr_stream_1
                  lb         tp, -16(s11)
                  la         a7, region_3+310 #start load_store_instr_stream_0
                  lb         tp, 60(gp)
                  sh         t1, -225(gp)
                  lbu        s9, 12(s11)
                  sb         a1, -64(t5)
                  lb         s2, -8(s11)
                  lhu        a5, -47(t5)
                  lh         t0, -16(a7)
                  sb         s10, -36(t5)
                  sb         s8, 6(s11)
                  lbu        t0, 12(t5)
                  lb         s7, -9(a7)
                  sb         t4, 22(gp)
                  lbu        a2, -60(t5)
                  lbu        s8, 10(gp)
                  sb         s5, -7(a7)
                  sb         a1, -120(gp)
                  lb         a6, 16(a7)
                  lb         s10, -8(s11)
                  lb         tp, -22(t5)
                  sb         t1, 50(gp)
                  sh         a7, 31(t5)
                  sh         s3, -147(gp)
                  lb         ra, -3(s11)
                  lb         s1, 1(a7)
                  lbu        a4, 8(s11)
                  lb         s1, 14(s11)
                  sb         zero, -60(t5)
                  sb         gp, -154(gp) #end load_store_instr_stream_3
                  lhu        t0, 7(s11)
                  lhu        a0, -41(t5) #end load_store_instr_stream_2
                  sh         t3, 11(s11) #end load_store_instr_stream_1
                  lbu        a5, -15(a7) #end load_store_instr_stream_0
                  la         a2, region_3+394 #start load_store_instr_stream_1
                  la         s3, region_0+232 #start load_store_instr_stream_2
                  la         ra, region_2+609 #start load_store_instr_stream_0
                  sb         s3, -54(s3)
                  sh         s10, -12(s3)
                  lh         t0, 213(ra)
                  lw         s2, -36(s3)
                  lhu        s7, -14(a2)
                  sw         a0, 115(ra)
                  sb         s10, 47(s3)
                  lb         t1, -48(a2)
                  lbu        s9, 57(s3)
                  lbu        t4, -200(ra)
                  sb         a6, -15(ra)
                  lh         s4, -42(s3)
                  lh         a5, 30(a2)
                  sb         a3, 49(a2)
                  lw         s2, -221(ra)
                  lhu        s8, -28(a2)
                  sw         t1, -41(ra)
                  sw         s0, -54(a2)
                  lbu        t6, 200(ra)
                  sb         a3, 33(a2)
                  lb         a0, 40(s3)
                  lbu        t1, -128(ra)
                  lbu        s7, 33(s3)
                  lw         s0, 18(a2)
                  lw         s0, 40(s3) #end load_store_instr_stream_2
                  lhu        s4, 253(ra)
                  lbu        a5, -43(a2)
                  sb         a5, 55(a2) #end load_store_instr_stream_1
                  sb         a4, 108(ra) #end load_store_instr_stream_0
                  la         t5, region_0+3396 #start load_store_instr_stream_1
                  la         s7, region_2+8119 #start load_store_instr_stream_3
                  sb         s5, 71(s7)
                  lw         gp, -19(s7)
                  lb         a3, -55(t5)
                  lb         s1, 25(t5)
                  la         a1, region_1+7127 #start load_store_instr_stream_0
                  la         s11, region_3+101 #start load_store_instr_stream_2
                  lhu        s4, -29(s7)
                  sb         t4, -74(s7)
                  lh         s10, 12(t5)
                  lw         zero, -191(s7)
                  lb         a2, 37(t5)
                  lb         tp, -162(a1)
                  sb         t4, 19(s11)
                  sw         s6, 19(s11)
                  lhu        zero, -62(t5)
                  sb         s0, -195(s7)
                  lbu        tp, 30(s11)
                  lbu        a3, 18(s11)
                  lbu        s2, -202(s7)
                  sb         t6, -60(t5)
                  lb         s10, -222(s7)
                  lbu        a4, 10(a1)
                  lb         a2, -28(s11)
                  sb         sp, 31(t5)
                  sb         ra, 218(a1)
                  sb         t1, -160(s7)
                  lbu        t1, -7(s7) #end load_store_instr_stream_3
                  lb         zero, 60(s11)
                  lb         s3, 181(a1)
                  lbu        a7, -43(s11)
                  lb         t4, -13(s11) #end load_store_instr_stream_2
                  lb         t6, -52(t5) #end load_store_instr_stream_1
                  lbu        zero, 92(a1) #end load_store_instr_stream_0
                  la         a1, region_1+5616 #start riscv_load_store_rand_instr_stream_13
                  nop
                  c.and      s1, a2
                  sb         a5, -237(a1)
                  lb         s2, 143(a1)
                  lh         ra, 180(a1)
                  addi       s11, a3, 307
                  c.nop
                  divu       a4, s3, t3
                  sh         a4, 194(a1)
                  lbu        a5, 17(a1)
                  lb         s7, 225(a1)
                  c.slli     s10, 8
                  sb         ra, 177(a1)
                  c.lui      a5, 11
                  lb         t5, 59(a1)
                  sb         s1, 91(a1)
                  mulhu      s10, a6, s11
                  c.slli     a0, 26
                  remu       s2, s11, t5
                  sb         s8, 114(a1)
                  c.slli     t4, 12
                  lhu        a7, -54(a1)
                  sb         s7, -95(a1)
                  mulhsu     t3, a4, s0
                  srli       s7, s1, 12
                  mulhsu     s9, t5, t4
                  or         s0, s1, s9
                  srli       s7, gp, 12
                  csrrc      s4, 0x340, t2
                  c.nop
                  rem        a5, a6, s8
                  csrrsi     s10, 0x340, 3
                  csrrsi     s8, 0x340, 20
                  sb         t5, 235(a1)
                  srai       t3, s5, 31
                  lhu        a7, 70(a1)
                  sw         s5, -56(a1)
                  sb         s11, -165(a1)
                  lbu        t0, -27(a1)
                  andi       t1, s6, 202
                  lhu        a3, -104(a1) #end riscv_load_store_rand_instr_stream_13
                  la         t6, region_0+886 #start load_store_instr_stream_2
                  la         ra, region_0+1818 #start load_store_instr_stream_0
                  la         a1, region_0+3674 #start load_store_instr_stream_1
                  lb         t1, 40(t6)
                  lw         a6, 22(ra)
                  lbu        gp, -1010(a1)
                  lb         t5, 26(t6)
                  sh         t0, -1896(a1)
                  lb         s2, 25(t6)
                  lbu        s7, 57(ra)
                  lb         s8, 2(t6)
                  lbu        zero, -67(ra)
                  lh         tp, -1304(a1)
                  lb         a3, -15(t6)
                  lb         s4, -23(t6)
                  sh         t4, 72(ra)
                  lh         s10, 64(t6)
                  lhu        s11, -26(t6)
                  lb         s10, 271(a1)
                  sb         s4, 29(ra)
                  sh         t2, 32(ra)
                  lb         s3, -164(ra)
                  lb         s8, -17(t6)
                  lh         tp, -1182(a1)
                  lbu        a4, 63(t6) #end load_store_instr_stream_2
                  lb         a4, -995(a1) #end load_store_instr_stream_1
                  lhu        s3, -80(ra) #end load_store_instr_stream_0
main_19:          jal        s8, 9f
0:                jal        s4, 26f
1:                c.j        8f
2:                jal        ra, 1b
3:                c.jal      10f
4:                jal        t1, 11f
5:                c.j        23f
6:                c.jal      20f
7:                c.j        17f
8:                jal        t1, 22f
9:                c.jal      3b
10:               jal        t1, 14f
11:               c.jal      18f
12:               c.j        4b
13:               jal        gp, 0b
14:               jal        ra, 15f
15:               c.j        5b
16:               c.j        29f
17:               c.jal      28f
18:               jal        t0, 16b
19:               c.j        2b
20:               jal        ra, 19b
21:               c.jal      27f
22:               jal        ra, 30f
23:               c.jal      25f
24:               c.jal      21b
25:               c.j        13b
26:               c.jal      12b
27:               jal        t1, 7b
28:               jal        t1, 6b
29:               c.jal      24b
30:               c.nop
main_23:          jal        s8, 18f
0:                c.j        25f
1:                c.jal      12f
2:                c.jal      15f
3:                jal        ra, 0b
4:                c.jal      23f
5:                jal        ra, 17f
6:                jal        ra, 27f
7:                c.j        11f
8:                c.j        3b
9:                c.jal      7b
10:               c.j        21f
11:               c.jal      1b
12:               c.jal      20f
13:               jal        ra, 9b
14:               c.j        29f
15:               c.jal      8b
16:               jal        t1, 19f
17:               c.jal      2b
18:               c.j        22f
19:               c.j        5b
20:               c.jal      28f
21:               c.j        13b
22:               jal        t6, 6b
23:               jal        ra, 14b
24:               c.j        10b
25:               jal        ra, 26f
26:               jal        tp, 24b
27:               jal        ra, 16b
28:               c.jal      4b
29:               c.xor      s1, a4
                  la         s11, region_3+386 #start riscv_hazard_instr_stream_10
                  xori       zero, t5, 301
                  nop
                  lb         zero, 1(s11)
                  sb         s0, 7(s11)
                  c.mv       s0, s0
                  slli       a6, s0, 12
                  sh         s0, 12(s11)
                  lh         zero, 0(s11)
                  xor        zero, a3, tp
                  c.or       s0, s0
                  slli       t5, s0, 23
                  csrrsi     a6, 0x340, 5
                  slti       a6, zero, -582
                  div        tp, a6, zero
                  lw         zero, -2(s11)
                  lui        s0, 108401
                  lw         s0, -14(s11)
                  c.andi     a3, 29
                  lbu        tp, 3(s11)
                  lb         t5, 3(s11)
                  fence
                  lh         tp, -16(s11)
                  div        t5, tp, tp
                  ori        zero, tp, -629
                  lb         s0, -16(s11)
                  sltu       s0, a3, s0
                  slti       tp, a6, -448
                  lb         a6, -11(s11)
                  c.sub      a3, s0
                  and        a6, tp, t5
                  mul        t5, tp, a6
                  c.addi     s0, -1
                  fence
                  csrrci     a6, 0x340, 3
                  sb         zero, -1(s11)
                  sb         zero, -7(s11)
                  slti       s0, s0, -192
                  c.li       tp, 26
                  c.srli     s0, 7
                  div        t5, a3, a6
                  c.li       t5, 3
                  sltu       zero, tp, tp
                  ori        tp, t5, 128
                  sw         a3, -14(s11) #end riscv_hazard_instr_stream_10
                  la         s5, region_4+3855 #start load_store_instr_stream_1
                  la         s3, region_4+1237 #start load_store_instr_stream_0
                  la         t4, region_4+2302 #start load_store_instr_stream_3
                  lb         gp, 136(s5)
                  la         a2, region_4+2591 #start load_store_instr_stream_2
                  sh         ra, 649(s3)
                  lbu        s1, -131(t4)
                  sb         s6, 148(s5)
                  lbu        a1, 143(s5)
                  sw         a3, 29(s5)
                  lbu        s9, -133(a2)
                  sh         t2, 136(t4)
                  lh         s10, -221(s5)
                  lb         s2, 146(a2)
                  lb         s11, -112(s5)
                  lbu        a1, 2025(s3)
                  sb         a0, 30(s5)
                  lbu        zero, 196(t4)
                  lbu        tp, 111(t4)
                  sb         t2, -56(a2)
                  sb         zero, 287(s3)
                  sb         s9, -950(s3)
                  sb         a3, 249(a2)
                  lbu        t3, -168(s5)
                  lbu        t6, -167(s5)
                  sb         a3, 227(t4)
                  lb         s4, 1322(s3)
                  sh         t0, -46(t4)
                  sb         zero, -1226(s3)
                  sh         a7, 79(s5) #end load_store_instr_stream_1
                  sb         gp, 191(a2) #end load_store_instr_stream_2
                  lb         t5, -203(t4) #end load_store_instr_stream_3
                  lbu        a4, -160(s3) #end load_store_instr_stream_0
                  la         s7, region_0+4090 #start load_store_instr_stream_3
                  la         s1, region_0+3986 #start load_store_instr_stream_1
                  sh         s4, -4(s1)
                  la         s4, region_0+3651 #start load_store_instr_stream_2
                  la         a1, region_0+3430 #start load_store_instr_stream_4
                  la         gp, region_0+3971 #start load_store_instr_stream_0
                  lbu        s0, -521(s7)
                  lbu        a4, 5(s1)
                  lb         s10, -1260(s7)
                  lhu        a0, 59(s4)
                  lw         s8, -11(gp)
                  sb         tp, -1253(s7)
                  lb         t3, -31(s4)
                  sb         a1, -1050(s7)
                  lbu        a5, -1177(s4)
                  lb         t3, 0(s1)
                  lh         a5, 389(s4)
                  lb         zero, -925(s7)
                  sb         zero, 61(a1)
                  lh         t1, -15(gp)
                  sb         t5, -3(s1)
                  lbu        t6, -100(s4)
                  lb         s10, 11(s1)
                  sb         t3, -59(a1)
                  lb         t4, 16(gp)
                  lb         t6, -478(s7)
                  sh         s10, 146(a1)
                  lbu        s2, -74(a1)
                  lb         t5, -16(s1)
                  lb         zero, 157(a1) #end load_store_instr_stream_4
                  lbu        t0, 12(s4) #end load_store_instr_stream_2
                  lb         ra, -10(gp)
                  lbu        a5, -2037(s7) #end load_store_instr_stream_3
                  lb         zero, 8(s1)
                  lb         s5, -2(gp)
                  sh         s9, -14(s1) #end load_store_instr_stream_1
                  sb         a4, 8(gp) #end load_store_instr_stream_0
                  la         a4, region_3+153 #start load_store_instr_stream_1
                  la         s9, region_0+46 #start load_store_instr_stream_2
                  la         s2, region_4+2704 #start load_store_instr_stream_4
                  sb         s5, -105(s2)
                  la         t4, region_1+13581 #start load_store_instr_stream_3
                  sb         s1, -4(t4)
                  la         a7, region_2+6388 #start load_store_instr_stream_0
                  lb         a0, 164(a4)
                  lh         s7, 234(s2)
                  lb         a2, -154(s2)
                  lh         t5, 32(a7)
                  lb         zero, -115(s2)
                  lh         s0, -50(s2)
                  lb         t5, 125(a4)
                  lbu        s0, -130(a4)
                  sb         t6, 237(s2)
                  sb         s5, -15(t4)
                  lhu        s4, 237(a4)
                  sh         s9, 42(a7)
                  lhu        t6, 41(t4)
                  lh         s5, 57(t4)
                  lh         gp, 4(s9)
                  lw         gp, 47(a4)
                  lbu        s3, -15(s9)
                  lb         s1, 250(a4)
                  sb         t0, -39(a7)
                  lbu        s4, -19(a4)
                  sb         a0, -114(s2)
                  lbu        a2, -61(t4)
                  sb         a7, -7(s9)
                  lb         s11, -16(s2) #end load_store_instr_stream_4
                  lbu        s5, -12(s9)
                  lh         s5, 49(t4)
                  lbu        s10, -31(a7)
                  lbu        t6, 6(t4) #end load_store_instr_stream_3
                  lbu        ra, -49(a4)
                  lh         a0, -16(s9)
                  lbu        zero, 195(a4) #end load_store_instr_stream_1
                  lbu        a5, 5(s9) #end load_store_instr_stream_2
                  lbu        a0, 26(a7) #end load_store_instr_stream_0
                  la         a7, region_1+13754 #start riscv_hazard_instr_stream_3
                  lb         a0, 1961(a7)
                  sb         s11, 2017(a7)
                  srli       a0, t0, 9
                  csrrw      s9, 0x340, s11
                  lb         s11, -779(a7)
                  slli       t0, a0, 28
                  lbu        a0, -557(a7)
                  mul        s0, s11, s11
                  c.srli     s0, 29
                  lb         s0, 1876(a7)
                  sll        t0, s5, a0
                  sb         a0, -68(a7)
                  c.nop
                  c.slli     s5, 6
                  lui        s11, 474197
                  div        s0, a0, s9
                  lb         s11, 555(a7)
                  c.lui      s0, 17
                  lb         a0, 1309(a7)
                  sltiu      s11, a0, -472
                  c.mv       s0, s9
                  lb         a0, 1211(a7)
                  sw         s9, -182(a7)
                  div        a0, s11, a0
                  xori       s5, s11, -665
                  lbu        s9, -1909(a7)
                  lbu        a0, -1806(a7)
                  csrrsi     s0, 0x340, 31
                  mulhu      t0, t0, s0
                  mulhsu     s0, s0, t0
                  lb         s9, -1503(a7)
                  lb         s5, 1223(a7) #end riscv_hazard_instr_stream_3
                  la         t3, region_3+310 #start load_store_instr_stream_1
                  la         t6, region_1+10893 #start load_store_instr_stream_0
                  la         a0, region_2+2006 #start load_store_instr_stream_2
                  lbu        a3, 2(a0)
                  lb         ra, -3(t3)
                  lbu        a7, -14(t6)
                  lhu        s8, 4(a0)
                  lhu        a6, -9(t6)
                  lb         a7, 5(a0)
                  sh         t2, 11(t6)
                  sb         s3, 107(t3)
                  lb         t5, -10(t6)
                  lbu        s0, 5(t6)
                  lb         s0, -117(t3)
                  lw         a5, 14(a0)
                  lbu        a2, 90(t3)
                  lbu        a5, -8(t6)
                  lb         s9, -26(t3)
                  lh         gp, 3(t6)
                  lb         t1, -10(t6)
                  sb         a6, 15(a0)
                  sw         t1, -14(t3) #end load_store_instr_stream_1
                  lbu        s7, 5(a0)
                  sh         sp, -8(a0) #end load_store_instr_stream_2
                  lb         a1, -16(t6)
                  lbu        s4, -13(t6) #end load_store_instr_stream_0
                  la         t0, region_1+15056 #start load_store_instr_stream_2
                  la         t6, region_1+15847 #start load_store_instr_stream_0
                  la         s0, region_1+1934 #start load_store_instr_stream_1
                  sb         s8, 3(s0)
                  lhu        a4, 8(t0)
                  sb         t6, 53(t6)
                  lbu        s7, -15(s0)
                  sb         gp, 22(t6)
                  lbu        s8, 8(s0)
                  lb         a7, 12(s0)
                  lbu        t3, -12(s0)
                  lbu        a2, 2(t0)
                  lb         a6, 6(s0)
                  lb         s4, 36(t6)
                  lb         ra, -1(t0)
                  lbu        t4, 45(t6)
                  lbu        gp, -5(s0)
                  lhu        s1, 0(t0)
                  lbu        s3, -5(t0) #end load_store_instr_stream_2
                  sh         s3, 16(s0) #end load_store_instr_stream_1
                  lbu        a7, -62(t6)
                  lw         s3, 49(t6) #end load_store_instr_stream_0
                  la         t4, region_0+2815 #start load_store_instr_stream_0
                  la         a7, region_0+3531 #start load_store_instr_stream_1
                  lhu        a3, -2037(a7)
                  lhu        t1, 363(a7)
                  lb         s8, -145(t4)
                  .2byte 0x0801 # kHintInstr
                  lb         ra, -1865(a7)
                  lh         ra, -235(t4)
                  la         a4, region_0+3753 #start load_store_instr_stream_2
                  lbu        gp, -54(a4)
                  sb         a2, -1696(a7)
                  sb         s10, -62(a4)
                  lb         t0, 167(t4)
                  lhu        t1, -1829(a7)
                  lbu        t3, 186(t4)
                  lhu        s8, 183(t4)
                  lb         s9, 38(a4)
                  lb         s0, -2036(a7)
                  lb         s0, 184(t4)
                  lb         s8, -1038(a7)
                  lhu        t0, -59(a4)
                  lh         s11, 73(a7)
                  sb         t0, -1873(a7)
                  lbu        a1, -116(t4)
                  lbu        s8, 398(a7) #end load_store_instr_stream_1
                  sb         s10, -48(a4) #end load_store_instr_stream_2
                  lb         s10, -254(t4) #end load_store_instr_stream_0
                  la         a1, region_4+2025 #start load_store_instr_stream_3
                  la         a6, region_4+2322 #start load_store_instr_stream_4
                  la         gp, region_4+1230 #start load_store_instr_stream_1
                  lh         s5, 1129(a1)
                  lbu        t3, 1295(a1)
                  la         a7, region_4+1138 #start load_store_instr_stream_2
                  lh         t1, -424(a7)
                  lh         s4, -1333(a1)
                  lbu        s4, 212(gp)
                  lb         s2, -158(gp)
                  la         t4, region_4+2928 #start load_store_instr_stream_0
                  sb         s10, -59(t4)
                  lb         s10, -5(a6)
                  lbu        t0, 1994(a7)
                  lhu        s0, -1973(a1)
                  lb         t0, 99(gp)
                  lbu        s9, 1329(a1)
                  lb         a3, 190(a7)
                  sw         s7, 8(t4)
                  lbu        zero, 407(a1)
                  sh         a1, 1241(a1)
                  lbu        s11, -19(t4)
                  lbu        t3, 95(a7)
                  sb         ra, 5(a6)
                  sb         tp, -12(a6)
                  lbu        a5, 5(t4)
                  sb         a1, -609(a7)
                  sb         a4, 8(a6)
                  sh         t3, 896(a7)
                  sh         s1, 28(t4)
                  lb         s5, 13(a6)
                  lhu        tp, 1644(gp)
                  sh         zero, -12(a6) #end load_store_instr_stream_4
                  sb         tp, -388(a1)
                  sw         a2, 1794(a7)
                  lbu        s5, -818(a1)
                  lbu        a0, -289(a7)
                  lbu        t0, -45(a1) #end load_store_instr_stream_3
                  sb         s0, -621(a7)
                  lbu        t0, 37(t4)
                  lhu        zero, 286(a7) #end load_store_instr_stream_2
                  sb         t4, 2027(gp) #end load_store_instr_stream_1
                  lhu        s2, 26(t4) #end load_store_instr_stream_0
                  la         t0, region_3+218 #start riscv_hazard_instr_stream_14
                  sltiu      tp, s4, -529
                  mul        s3, s4, s1
                  divu       a5, s4, s3
                  csrrwi     s1, 0x340, 28
                  c.xor      s0, s0
                  sb         s0, -39(t0)
                  c.sub      a5, s1
                  sltu       tp, s0, tp
                  c.srli     s0, 17
                  srai       tp, tp, 27
                  sra        tp, s0, a5
                  c.add      s3, a5
                  srl        s3, s4, s0
                  slt        s0, s1, s3
                  lbu        s4, 25(t0)
                  sw         s4, -38(t0)
                  nop
                  lbu        s3, 55(t0)
                  sh         s4, -48(t0)
                  sb         a5, -4(t0)
                  lbu        s0, 47(t0)
                  sltu       s0, s4, s4
                  remu       s1, tp, s1
                  mulh       s0, a5, s1
                  sb         tp, -47(t0)
                  c.and      s0, s1
                  lb         s3, -21(t0)
                  lb         s4, 3(t0)
                  c.nop
                  c.srli     s0, 30
                  c.nop
                  lhu        tp, 42(t0) #end riscv_hazard_instr_stream_14
                  la         s1, region_3+241 #start riscv_load_store_rand_instr_stream_2
                  lb         t4, 13(s1)
                  lw         tp, -5(s1)
                  c.addi     tp, -1
                  lb         t5, 0(s1)
                  lbu        a5, -16(s1)
                  fence
                  lb         t6, -64(s1)
                  and        a5, t5, t1
                  lb         t4, -14(s1)
                  lbu        s0, 36(s1)
                  lh         t0, -1(s1)
                  csrrwi     s0, 0x340, 14
                  lbu        a3, -35(s1)
                  c.nop
                  sltu       gp, s2, s4
                  c.lui      s11, 11
                  srai       s7, gp, 11
                  sh         a2, -43(s1)
                  sb         s3, -4(s1)
                  c.mv       tp, t1
                  lui        a6, 415427
                  csrrs      t1, 0x340, tp
                  fence.i
                  auipc      s9, 838747
                  c.addi     a1, -1
                  and        a4, t1, t4
                  sh         s11, 43(s1)
                  sb         s7, -51(s1)
                  csrrwi     t5, 0x340, 8
                  remu       a3, s11, s10
                  srli       s10, s3, 13
                  div        s8, a3, s1
                  csrrs      s4, 0x340, s2
                  mulhsu     t1, s3, s0
                  lh         ra, -15(s1)
                  c.and      a3, a5
                  c.srai     s0, 27
                  sb         s0, 3(s1)
                  lhu        s5, 37(s1)
                  xor        s4, a7, s9
                  sw         s10, 19(s1)
                  lh         gp, 9(s1)
                  sb         s4, -24(s1)
                  sra        a4, s2, a1
                  xor        t5, s0, s7
                  c.mv       s10, a2
                  fence
                  sub        tp, a3, zero
                  andi       a5, s1, 706
                  sb         s1, -22(s1)
                  sw         sp, 27(s1) #end riscv_load_store_rand_instr_stream_2
                  addi       t0, zero, 6 #init loop 0 counter
                  c.or       a5, a2
                  addi       s3, zero, 6 #init loop 0 limit
main_74_0_t:      mul        a3, t2, s4
                  csrrs      ra, 0x340, t4
                  addi       t0, t0, -7 #update loop 0 counter
                  c.li       a5, -1
                  sltu       a4, t4, a6
                  bge        t0, s3, main_74_0_t #branch for loop 0
                  sll        a5, s4, s4
                  la         t0, region_4+1963 #start load_store_instr_stream_2
                  lbu        a0, -1582(t0)
                  la         s8, region_4+2976 #start load_store_instr_stream_3
                  la         s2, region_4+378 #start load_store_instr_stream_0
                  lbu        a2, -9(s8)
                  la         t6, region_4+94 #start load_store_instr_stream_1
                  lbu        zero, 116(s2)
                  lbu        s5, 716(t0)
                  lbu        ra, -64(s2)
                  lb         s1, 1408(t0)
                  sb         a3, 12(s2)
                  lh         s3, -4(s8)
                  lbu        a1, 197(t6)
                  lb         t3, 9(s2)
                  lhu        a4, 12(s8)
                  lb         t5, 1579(t0)
                  sw         s4, -16(s8)
                  lbu        a2, 103(s2)
                  lb         s10, 36(t6)
                  lbu        s3, 866(t0)
                  lbu        s11, 2045(t0)
                  lb         s5, -101(s2)
                  lbu        s10, 99(t6)
                  sb         sp, 1378(t0)
                  lw         a4, -30(t6)
                  sw         s10, -106(s2)
                  lbu        t1, 196(t6)
                  sb         a6, -120(s2)
                  lbu        a7, -84(t6) #end load_store_instr_stream_1
                  lb         s11, 504(t0)
                  sb         t5, 35(s8) #end load_store_instr_stream_3
                  sb         s6, 41(s2)
                  lb         s10, 310(t0) #end load_store_instr_stream_2
                  lb         a4, 216(s2) #end load_store_instr_stream_0
                  la         t3, region_1+1888 #start riscv_load_store_rand_instr_stream_15
                  lb         a0, -1737(t3)
                  sb         s1, 215(t3)
                  sb         s3, -107(t3)
                  sw         sp, 1320(t3)
                  lbu        t6, -1299(t3)
                  sb         s1, 1398(t3)
                  or         t6, s5, a4
                  c.and      a5, a2
                  slti       a5, a7, 531
                  lbu        s9, 1977(t3)
                  srli       s8, s0, 0
                  remu       s0, s0, s8
                  srai       a7, s10, 19
                  lbu        a0, -1557(t3)
                  csrrs      ra, 0x340, s3
                  remu       s7, a7, t1
                  xor        a5, s10, a6
                  sh         s10, -1172(t3)
                  c.sub      s0, s0
                  c.xor      a3, s0
                  sub        t4, t2, s5
                  mulhu      s2, t6, zero
                  mulhsu     a3, s9, s9
                  divu       t6, a7, s7
                  c.nop
                  lh         s5, 1000(t3)
                  lbu        t5, 1869(t3)
                  mul        ra, s5, s8
                  sltiu      a0, gp, 631
                  csrrw      a2, 0x340, a5
                  sub        a0, s3, a3
                  c.slli     a4, 5
                  lb         a7, -306(t3)
                  lui        s9, 953720
                  c.mv       a2, s1
                  lbu        s5, -1229(t3)
                  srl        s2, a1, tp
                  lb         gp, -473(t3)
                  csrrw      a5, 0x340, a7
                  c.addi     t0, 1
                  fence
                  srli       s2, t3, 15
                  sll        a4, s7, s3
                  lb         a7, -1553(t3) #end riscv_load_store_rand_instr_stream_15
main_25:          jal        s8, 16f
0:                c.j        11f
1:                jal        ra, 9f
2:                c.j        14f
3:                c.j        15f
4:                c.j        2b
5:                c.jal      6f
6:                c.jal      4b
7:                c.j        17f
8:                c.jal      7b
9:                c.j        5b
10:               c.j        13f
11:               c.j        10b
12:               c.jal      18f
13:               c.jal      3b
14:               c.jal      0b
15:               jal        tp, 8b
16:               c.jal      1b
17:               c.jal      12b
18:               csrrci     ra, 0x340, 25
                  la         s9, region_2+7124 #start riscv_hazard_instr_stream_11
                  lbu        s3, -10(s9)
                  c.sub      s0, a3
                  c.andi     s0, 2
                  sb         s5, 4(s9)
                  lbu        s3, -14(s9)
                  csrrwi     s3, 0x340, 17
                  lh         s5, 2(s9)
                  lh         s3, 6(s9)
                  sb         s5, -9(s9)
                  div        a7, s3, t0
                  lb         s3, 5(s9)
                  lbu        s0, -7(s9)
                  sb         a7, -1(s9)
                  c.addi     a3, 16
                  rem        a3, t0, s0
                  slti       a3, a3, 813
                  lh         s5, -4(s9)
                  lbu        a3, -5(s9)
                  lb         a7, -3(s9)
                  lh         s5, -14(s9)
                  csrrw      s3, 0x340, s5
                  csrrsi     s3, 0x340, 10
                  lbu        s3, -2(s9)
                  c.and      s0, s0
                  slt        a3, s0, s3
                  mulhu      s5, a7, s5
                  lbu        a3, 9(s9)
                  sh         s5, 16(s9)
                  sh         t0, -6(s9)
                  sw         s5, -4(s9)
                  sb         a7, 13(s9)
                  csrrs      t0, 0x340, s3
                  lh         s5, 4(s9)
                  lh         s3, -10(s9)
                  lb         a3, -3(s9)
                  sb         a3, -3(s9)
                  csrrc      s5, 0x340, s0
                  sw         s0, 12(s9)
                  lb         t0, -11(s9) #end riscv_hazard_instr_stream_11
                  la         t1, region_3+488 #start load_store_instr_stream_0
                  la         gp, region_1+4148 #start load_store_instr_stream_1
                  lbu        s8, 2(gp)
                  la         s7, region_2+7601 #start load_store_instr_stream_2
                  lbu        a7, -7(gp)
                  lbu        t3, -880(s7)
                  lbu        a4, -106(t1)
                  lw         tp, -12(gp)
                  lb         s3, -1536(s7)
                  sb         s7, -1(gp)
                  lh         t3, 153(s7)
                  sb         t0, -2(gp)
                  lh         a1, -4(gp)
                  lb         zero, -105(t1)
                  lb         ra, 15(gp)
                  sb         s2, -128(s7)
                  lbu        s3, -64(t1)
                  sb         a6, -118(t1)
                  lw         s2, -745(s7)
                  lbu        a7, 15(gp)
                  sb         s1, 6(gp) #end load_store_instr_stream_1
                  lb         s9, -141(t1)
                  lhu        s8, -487(s7) #end load_store_instr_stream_2
                  lhu        t6, -114(t1) #end load_store_instr_stream_0
                  la         a0, region_1+1473 #start load_store_instr_stream_0
                  la         s3, region_2+5978 #start load_store_instr_stream_1
                  sb         s0, 44(a0)
                  la         a6, region_0+560 #start load_store_instr_stream_2
                  la         a4, region_4+3819 #start load_store_instr_stream_3
                  sw         a1, -45(a0)
                  lb         s5, -62(a6)
                  la         s8, region_3+383 #start load_store_instr_stream_4
                  lbu        s5, -234(s8)
                  sb         a3, 10(s3)
                  lbu        s0, -371(s8)
                  lbu        t4, 209(a6)
                  lb         a3, -1(s3)
                  lbu        s1, 63(a6)
                  sb         s8, 2(a4)
                  lbu        a3, 30(a0)
                  lbu        t3, -3(s3)
                  lbu        s10, 8(a4)
                  sb         s7, 5(a0)
                  sb         t0, -11(s3)
                  sb         s8, -8(a4)
                  lb         s7, 105(s8)
                  lw         a1, 200(a6)
                  lb         t3, 7(s3)
                  lh         t0, -11(a0)
                  lbu        t4, -229(a6)
                  lb         s5, -15(a4)
                  lbu        ra, -12(s8)
                  sh         a7, 12(s3)
                  lh         a5, 42(a6)
                  lbu        s10, -256(s8) #end load_store_instr_stream_4
                  sb         a1, 10(s3)
                  sb         t4, 6(a4)
                  lb         s9, 0(a4) #end load_store_instr_stream_3
                  lh         t1, -2(s3)
                  sb         gp, -16(s3) #end load_store_instr_stream_1
                  lw         a2, 40(a6) #end load_store_instr_stream_2
                  sb         t0, -10(a0) #end load_store_instr_stream_0
                  addi       s9, zero, 8 #init loop 1 counter
                  fence.i
                  xori       a5, t0, 1012
                  addi       a7, zero, -10 #init loop 1 limit
main_72_1_t:      rem        t1, a7, s5
                  c.addi     t6, 14
                  xor        a4, t5, sp
                  c.andi     a3, 21
                  addi       s9, s9, -3 #update loop 1 counter
                  c.or       a2, a0
                  c.slli     a0, 14
                  addi       s1, zero, -6 #init loop 0 counter
                  lui        a2, 420739
                  addi       t3, zero, 10 #init loop 0 limit
                  auipc      s7, 316864
main_72_0_t:      div        t5, ra, a3
                  slt        s8, s0, a6
                  mulh       a5, s7, a5
                  sll        a2, s7, s4
                  div        s11, s0, s2
                  addi       s1, s1, 4 #update loop 0 counter
                  csrrc      zero, 0x340, s2
                  blt        s1, t3, main_72_0_t #branch for loop 0
                  nop
                  rem        s11, a2, zero
                  slt        zero, t5, s4
                  csrrs      t1, 0x340, s4
                  slli       t4, t4, 12
                  sltu       s2, s3, ra
                  sltiu      s2, zero, -636
                  c.nop
                  bne        s9, a7, main_72_1_t #branch for loop 1
                  c.xor      s0, a5
                  la         a4, region_1+9989 #start load_store_instr_stream_3
                  la         tp, region_1+11009 #start load_store_instr_stream_1
                  sb         sp, 252(a4)
                  la         s10, region_1+12084 #start load_store_instr_stream_2
                  sb         ra, 181(a4)
                  lbu        a7, -29(a4)
                  la         s8, region_1+6196 #start load_store_instr_stream_0
                  sb         gp, -38(tp)
                  lbu        s5, -52(a4)
                  lbu        t4, -1607(s10)
                  lbu        s1, -8(s8)
                  lbu        t5, 17(tp)
                  sb         a2, -1753(s10)
                  lb         s11, -50(tp)
                  lbu        s5, -36(tp)
                  sh         s2, 221(a4)
                  lbu        s5, -1342(s10)
                  sh         t0, 10(s8)
                  lb         a1, -15(s8)
                  sh         t2, 179(a4)
                  sb         s4, 743(s10)
                  sw         ra, -113(a4)
                  lbu        a0, 2(tp) #end load_store_instr_stream_1
                  lbu        s9, 774(s10)
                  sb         s4, 193(a4)
                  lb         s2, 913(s10)
                  sh         s8, 225(a4) #end load_store_instr_stream_3
                  lbu        a6, -9(s8)
                  lbu        zero, -250(s10) #end load_store_instr_stream_2
                  sw         a7, -8(s8) #end load_store_instr_stream_0
                  addi       a6, zero, 10 #init loop 0 counter
                  andi       a0, a5, -578
                  srl        t4, s2, a2
                  andi       a2, s6, -913
                  c.and      a3, s1
                  sltu       s7, a0, s6
                  srli       t6, t6, 8
                  sltu       s1, zero, a7
                  addi       a4, zero, 10 #init loop 0 limit
                  andi       a7, s9, -116
                  c.add      s10, t6
main_78_0_t:      slt        s0, a3, s8
                  csrrci     a3, 0x340, 4
                  addi       a6, a6, -5 #update loop 0 counter
                  sltiu      gp, a6, 485
                  c.and      a2, s0
                  lui        a7, 577906
                  c.add      s9, s6
                  srai       a3, s11, 10
                  fence.i
                  c.or       a1, a4
                  csrrc      s8, 0x340, s1
                  srl        t4, t5, zero
                  rem        s8, ra, t4
                  bge        a6, a4, main_78_0_t #branch for loop 0
                  nop
                  la         s0, region_1+10745 #start riscv_hazard_instr_stream_6
                  lb         s3, -1190(s0)
                  add        a7, s11, a7
                  xori       s4, a3, -775
                  lhu        a7, -43(s0)
                  lb         a7, 2034(s0)
                  c.srli     a3, 21
                  lb         s4, 1827(s0)
                  xor        a7, a3, s3
                  lhu        s8, 1867(s0)
                  lbu        s4, -1680(s0)
                  csrrc      s3, 0x340, s8
                  lb         s8, 1090(s0)
                  slti       a3, s3, 656
                  lb         s8, 596(s0)
                  lb         s3, -1482(s0)
                  sb         s4, -53(s0)
                  add        s3, s4, s8
                  sb         a3, 170(s0)
                  c.slli     s8, 7
                  lb         s11, -968(s0)
                  andi       s4, s8, 245
                  csrrsi     s11, 0x340, 24
                  lb         s4, -1784(s0)
                  lb         s3, 1583(s0)
                  or         a7, s8, a7
                  and        s3, s11, a3
                  .2byte 0x8042 # kHintInstr
                  fence.i
                  srai       s3, s11, 6
                  sb         s8, 442(s0)
                  lbu        s8, 686(s0)
                  lhu        s8, -855(s0)
                  lh         s4, -1351(s0)
                  lbu        s3, 916(s0)
                  slli       s8, s11, 4
                  c.or       a3, a3
                  lw         s8, -1985(s0) #end riscv_hazard_instr_stream_6
                  la         t3, region_2+239 #start riscv_load_store_rand_instr_stream_5
                  sh         t0, -225(t3)
                  sb         s4, 506(t3)
                  sb         a1, 174(t3)
                  lbu        t4, -134(t3)
                  sll        a4, s11, s0
                  csrrw      s9, 0x340, t6
                  lbu        gp, 1517(t3)
                  sb         t1, 342(t3)
                  c.srli     a0, 23
                  c.or       a3, a1
                  lh         s2, 1775(t3)
                  sb         a2, 1310(t3)
                  lui        s7, 608158
                  sb         t2, 1227(t3)
                  slt        ra, t4, gp
                  lb         s5, 1759(t3)
                  csrrci     a4, 0x340, 10
                  sra        s9, s9, a4
                  lb         a2, 504(t3)
                  c.sub      a5, s0
                  lbu        a5, 760(t3)
                  add        s8, a7, t5
                  lbu        a4, 254(t3)
                  c.slli     t1, 14
                  sb         zero, -14(t3)
                  lbu        t4, 1526(t3)
                  c.srli     a2, 16
                  divu       t1, t3, gp
                  sb         s5, 1870(t3)
                  c.slli     s10, 10
                  lbu        a2, 868(t3)
                  remu       s9, t2, a3
                  sb         a2, 240(t3)
                  div        s10, t5, a7
                  c.li       a2, -1
                  sb         s3, 260(t3)
                  or         a0, t4, a6
                  sh         s3, 1087(t3)
                  sb         s3, 1659(t3) #end riscv_load_store_rand_instr_stream_5
                  la         a6, region_2+1675 #start riscv_load_store_rand_instr_stream_10
                  sb         s0, -32(a6)
                  sub        gp, s7, t1
                  c.mv       a5, s6
                  sb         t2, -53(a6)
                  csrrwi     a7, 0x340, 22
                  csrrw      s0, 0x340, s3
                  addi       a5, s2, 575
                  lb         s9, -22(a6)
                  div        t3, a7, s5
                  sb         s10, -61(a6)
                  sb         t1, 58(a6)
                  lb         s1, -42(a6)
                  lw         s7, -51(a6)
                  div        s0, s10, s8
                  csrrwi     t1, 0x340, 31
                  c.add      a5, sp
                  sb         a7, 19(a6)
                  ori        a5, gp, -312
                  mulhu      ra, zero, s11
                  srl        t1, s6, ra
                  and        t5, t1, a5
                  csrrw      a2, 0x340, s5
                  lbu        a1, 44(a6)
                  c.andi     s1, 16
                  sltu       s2, t6, gp
                  slti       tp, s10, 934
                  c.li       gp, 19
                  andi       s5, t3, 679
                  lhu        t6, 1(a6)
                  srl        a0, s4, a7
                  lbu        t5, -10(a6)
                  csrrs      gp, 0x340, t2
                  lb         a4, -37(a6)
                  slli       a1, tp, 19
                  lbu        s2, 17(a6)
                  divu       ra, s5, s6
                  c.sub      a0, a4
                  lh         s8, -41(a6)
                  lbu        a2, 46(a6)
                  remu       s2, t5, s2
                  lbu        s4, 16(a6)
                  sh         s3, 21(a6)
                  lhu        s5, 11(a6) #end riscv_load_store_rand_instr_stream_10
main_30:          jal        s8, 12f
0:                c.jal      17f
1:                jal        t1, 19f
2:                c.jal      1b
3:                c.jal      24f
4:                c.j        27f
5:                c.j        13f
6:                jal        s8, 11f
7:                jal        ra, 2b
8:                c.j        10f
9:                c.j        4b
10:               c.jal      23f
11:               jal        t5, 5b
12:               c.jal      20f
13:               jal        ra, 21f
14:               jal        tp, 22f
15:               c.j        0b
16:               jal        ra, 25f
17:               c.jal      26f
18:               c.jal      9b
19:               jal        s1, 6b
20:               jal        tp, 7b
21:               jal        ra, 15b
22:               c.jal      3b
23:               c.j        18b
24:               c.j        8b
25:               c.jal      14b
26:               c.jal      16b
27:               ori        s10, s11, 467
                  la         a0, region_3+468 #start riscv_hazard_instr_stream_1
                  remu       t3, s3, a4
                  slti       a1, a6, -883
                  nop
                  mulhu      a1, a4, a3
                  c.li       a4, -1
                  sb         a3, 11(a0)
                  rem        t3, t3, a4
                  mulh       a3, t3, a4
                  lb         a6, 15(a0)
                  andi       a4, a4, 882
                  c.andi     a4, -1
                  mulhu      s3, a3, a3
                  c.and      a4, a1
                  c.sub      a4, a1
                  sub        a3, a1, a4
                  slti       t3, a1, 710
                  c.andi     a1, -1
                  sb         s3, 2(a0)
                  csrrwi     s3, 0x340, 24
                  sb         a4, -7(a0)
                  sra        a3, a6, a4
                  sb         t3, -12(a0)
                  lb         s3, 6(a0)
                  mulhu      t3, a1, a6
                  c.slli     a6, 21
                  c.lui      a3, 31
                  c.andi     a4, 3
                  c.srli     a4, 10
                  sb         a6, -3(a0)
                  lbu        a4, -14(a0)
                  xori       a6, a1, 629
                  xor        a1, a3, a3
                  fence.i
                  sh         t3, -14(a0)
                  srli       s3, a6, 28
                  ori        a4, a1, -820
                  srli       a3, a4, 23
                  slli       t3, a6, 14
                  lbu        a6, -15(a0)
                  csrrsi     a1, 0x340, 12
                  sb         a3, 12(a0) #end riscv_hazard_instr_stream_1
main_26:          jal        s8, 16f
0:                jal        ra, 17f
1:                c.jal      2f
2:                jal        a2, 11f
3:                c.jal      13f
4:                jal        s1, 6f
5:                c.j        9f
6:                c.j        8f
7:                c.j        1b
8:                c.j        0b
9:                jal        ra, 12f
10:               jal        t1, 3b
11:               c.j        10b
12:               c.jal      18f
13:               jal        t1, 14f
14:               c.j        5b
15:               c.j        7b
16:               c.j        4b
17:               jal        t1, 15b
18:               csrrw      tp, 0x340, zero
                  la         t4, region_0+3373 #start load_store_instr_stream_0
                  la         s1, region_0+635 #start load_store_instr_stream_3
                  lb         t6, 64(t4)
                  la         a5, region_0+2852 #start load_store_instr_stream_1
                  sh         a5, 7(s1)
                  sh         ra, -154(a5)
                  lb         s5, -6(s1)
                  lbu        t5, -9(s1)
                  sh         s7, 47(t4)
                  sb         s1, 58(t4)
                  la         gp, region_0+1602 #start load_store_instr_stream_2
                  lbu        a0, -8(s1)
                  sb         a6, -6(s1)
                  lbu        s8, -10(s1)
                  lb         t3, -14(t4)
                  lh         s3, 1(t4)
                  lbu        s9, -123(a5)
                  sb         a5, -16(s1)
                  lb         s2, 243(gp)
                  lbu        ra, 30(t4)
                  lh         a3, -68(gp)
                  lbu        s4, -203(a5)
                  lb         t5, 105(gp)
                  sb         t5, 16(s1)
                  sw         t5, -11(s1)
                  lhu        a6, 49(t4)
                  lbu        tp, -109(a5)
                  lb         s11, 20(gp)
                  sw         t6, 248(a5)
                  lhu        a3, 38(a5) #end load_store_instr_stream_1
                  sb         s2, -4(s1) #end load_store_instr_stream_3
                  sb         a2, -179(gp) #end load_store_instr_stream_2
                  lbu        tp, 55(t4) #end load_store_instr_stream_0
                  la         t0, region_0+640 #start load_store_instr_stream_0
                  la         tp, region_1+2503 #start load_store_instr_stream_3
                  la         s9, region_4+2619 #start load_store_instr_stream_2
                  lbu        ra, 510(t0)
                  lh         a2, -11(tp)
                  sb         s2, 1267(t0)
                  lb         a6, -244(s9)
                  lbu        s4, -14(tp)
                  lh         a0, 724(t0)
                  lb         zero, -36(tp)
                  sw         tp, -99(s9)
                  la         gp, region_3+303 #start load_store_instr_stream_1
                  lb         s10, -94(s9)
                  lhu        zero, -1(gp)
                  lb         a0, -220(s9)
                  lbu        a1, -2(gp)
                  sb         a0, -245(s9)
                  lb         s4, 12(gp)
                  sb         s7, 17(tp)
                  lb         s2, -17(t0)
                  lbu        a5, 15(gp)
                  sb         s2, 54(s9)
                  lhu        s3, -5(gp)
                  lbu        t6, -351(t0)
                  lhu        s7, -119(s9)
                  lbu        s0, 16(tp)
                  sb         t2, -2(gp)
                  sh         sp, 806(t0)
                  sb         t0, -16(gp)
                  lbu        a3, 22(t0)
                  sb         zero, 186(s9)
                  sb         zero, 39(tp)
                  lh         s1, 25(tp) #end load_store_instr_stream_3
                  lb         s8, 215(s9)
                  sb         t6, 0(gp) #end load_store_instr_stream_1
                  sb         a3, 192(s9) #end load_store_instr_stream_2
                  lhu        s8, -634(t0) #end load_store_instr_stream_0
main_18:          jal        s8, 15f
0:                c.jal      4f
1:                c.j        10f
2:                jal        ra, 7f
3:                c.j        1b
4:                c.jal      3b
5:                jal        s11, 11f
6:                c.jal      14f
7:                jal        ra, 12f
8:                c.j        0b
9:                jal        ra, 6b
10:               c.jal      17f
11:               jal        a1, 2b
12:               jal        a0, 13f
13:               c.jal      16f
14:               c.j        5b
15:               jal        ra, 9b
16:               c.jal      8b
17:               c.add      a6, s2
                  la         t3, region_1+15495 #start riscv_hazard_instr_stream_0
                  lh         a6, -657(t3)
                  sb         a0, -770(t3)
                  c.xor      a0, a0
                  mulhsu     a0, s7, s5
                  lbu        t1, 766(t3)
                  srl        t1, a0, a0
                  sb         s5, -1806(t3)
                  sb         s5, -1926(t3)
                  srai       t1, a0, 6
                  sb         a6, -1416(t3)
                  sltu       a6, t1, s5
                  lb         a0, -1439(t3)
                  csrrci     t1, 0x340, 4
                  sll        ra, a6, a6
                  sw         s7, -1331(t3)
                  srli       a6, s5, 13
                  lbu        ra, 577(t3)
                  c.andi     a0, -1
                  fence
                  c.add      s7, ra
                  c.andi     a0, -1
                  sll        s7, ra, t1
                  or         ra, ra, a6
                  c.add      t1, a0
                  lw         ra, 829(t3)
                  lbu        s7, -903(t3)
                  srl        s7, a0, t1
                  sh         a6, 465(t3)
                  addi       t1, s5, -449
                  fence.i
                  lb         s7, -126(t3)
                  lb         a6, 168(t3)
                  lb         t1, -750(t3)
                  slt        a6, s5, s7
                  sh         a6, 201(t3)
                  lh         s5, -443(t3)
                  lbu        ra, -1045(t3)
                  fence
                  lh         a0, 751(t3)
                  nop
                  fence
                  sb         s7, -800(t3)
                  lb         a0, 552(t3)
                  lb         a6, 681(t3)
                  lw         a0, -811(t3)
                  srl        a0, s7, a0
                  remu       s7, s5, s5
                  sh         s5, -799(t3)
                  lbu        a6, -488(t3)
                  sltu       a0, s7, a0
                  mul        a0, ra, a6
                  sb         a0, -1268(t3)
                  lbu        s7, -110(t3) #end riscv_hazard_instr_stream_0
                  la         s4, region_4+3690 #start load_store_instr_stream_3
                  la         a2, region_4+3674 #start load_store_instr_stream_2
                  la         t3, region_4+2746 #start load_store_instr_stream_4
                  la         s10, region_4+3228 #start load_store_instr_stream_1
                  lb         s3, -153(t3)
                  la         ra, region_4+2797 #start load_store_instr_stream_0
                  lbu        a6, -965(s10)
                  lb         t5, 32(ra)
                  sb         s4, -20(s4)
                  lbu        s3, -1986(s10)
                  lbu        a1, 39(a2)
                  sb         a6, -60(ra)
                  lbu        t4, 0(a2)
                  lb         a3, 107(t3)
                  sb         t6, -1534(s10)
                  lbu        zero, 15(t3)
                  lbu        s2, -3(a2)
                  lbu        s9, 53(a2)
                  sh         t6, 5(ra)
                  sb         s2, 453(s10)
                  lb         t6, 59(a2)
                  sb         t3, -250(s4)
                  lbu        zero, -24(a2)
                  lh         a7, -37(ra)
                  lb         s0, 673(s10)
                  lbu        s2, 45(a2)
                  lbu        t0, 181(s4)
                  sb         tp, 64(ra)
                  sb         t0, -28(t3)
                  lb         s11, -15(a2)
                  lbu        a6, 55(t3)
                  lb         a5, 7(s4)
                  sb         t5, 228(t3)
                  lh         s3, -1970(s10)
                  lb         t5, 223(s4) #end load_store_instr_stream_3
                  lhu        t6, 60(t3)
                  lb         t0, 103(t3)
                  lhu        s5, -60(a2)
                  lbu        s8, -47(a2) #end load_store_instr_stream_2
                  lbu        tp, -37(t3)
                  lhu        a5, -158(t3) #end load_store_instr_stream_4
                  lb         tp, -725(s10) #end load_store_instr_stream_1
                  lhu        a1, -7(ra) #end load_store_instr_stream_0
                  addi       a1, zero, -3 #init loop 1 counter
                  addi       a2, zero, -4 #init loop 1 limit
main_73_1_t:      rem        s2, tp, gp
                  addi       a1, a1, -4 #update loop 1 counter
                  addi       a4, zero, 10 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
                  xori       tp, t1, -307
main_73_0_t:      c.or       a3, a1
                  c.nop
                  addi       a4, a4, -1 #update loop 0 counter
                  c.bnez     a4, main_73_0_t #branch for loop 0
                  mulhsu     a5, t2, s4
                  rem        s9, sp, s9
                  bge        a1, a2, main_73_1_t #branch for loop 1
                  or         tp, s2, t5
                  addi       t3, zero, 0 #init loop 0 counter
                  sub        a7, a3, s4
                  nop
                  auipc      gp, 529122
                  srai       a7, sp, 6
                  nop
                  mulhsu     s0, s9, gp
                  lui        gp, 985588
                  addi       s8, zero, 19 #init loop 0 limit
main_77_0_t:      c.lui      a1, 13
                  addi       s10, a3, 260
                  addi       t3, t3, 2 #update loop 0 counter
                  xor        t6, a7, a3
                  c.sub      a3, a4
                  slt        s2, s3, a0
                  c.xor      a2, a5
                  xori       t6, a6, 773
                  sltu       s11, s5, ra
                  lui        s2, 933239
                  nop
                  bltu       t3, s8, main_77_0_t #branch for loop 0
                  div        s10, s8, a0
                  la         tp, region_2+5394 #start riscv_hazard_instr_stream_4
                  sw         s0, -34(tp)
                  lbu        a0, 7(tp)
                  slli       t1, s4, 28
                  c.andi     a0, -1
                  fence
                  lh         s8, 2(tp)
                  csrrwi     t1, 0x340, 10
                  sh         s0, -16(tp)
                  c.andi     a0, -1
                  lbu        s4, 53(tp)
                  c.mv       a0, s0
                  sltiu      a6, s4, 538
                  c.andi     s0, 20
                  lbu        a0, -56(tp)
                  lbu        s0, 17(tp)
                  xori       a0, t1, -137
                  sll        s0, s0, s0
                  lhu        s8, -64(tp)
                  lb         a6, 20(tp)
                  lb         s8, -34(tp)
                  lhu        s4, 20(tp)
                  lb         s0, -61(tp)
                  sb         s0, -43(tp)
                  sb         s4, -15(tp)
                  lhu        s8, 16(tp)
                  sb         s0, -40(tp)
                  sub        a0, t1, s8
                  mulhu      s4, t1, s8
                  remu       s0, a6, s0
                  sb         s8, -55(tp)
                  lw         t1, 62(tp) #end riscv_hazard_instr_stream_4
                  bge        s4, s3, 20f
                  auipc      s7, 114705
                  c.and      s0, a4
                  c.bnez     a3, 17f
                  c.bnez     a4, 5f
5:                c.slli     a7, 26
                  remu       t4, a1, a2
                  mul        t4, ra, sp
                  c.addi     s0, -1
                  mulhsu     t3, s3, a3
                  or         a2, a3, s3
                  blt        s9, a4, 24f
                  srl        s10, s0, tp
                  slt        s9, a4, s7
                  c.slli     s8, 27
                  c.beqz     s0, 27f
                  div        a4, s7, t2
17:               xori       s1, ra, 789
                  bne        tp, a0, 27f
                  c.andi     s0, 7
20:               sltiu      t1, t5, 391
                  mulhu      a7, t2, s10
                  lui        a4, 337608
                  bne        t6, a6, 36f
24:               auipc      a5, 700164
                  c.or       a2, a3
                  csrrsi     s3, 0x340, 15
27:               c.lui      s4, 3
                  c.bnez     s0, 36f
                  sra        s5, s1, s3
                  slt        s3, s0, a0
                  c.add      a0, s5
                  c.srai     s0, 6
                  xori       a1, t4, 785
                  c.bnez     s0, 45f
                  c.xor      a5, a1
36:               ori        s8, zero, -1011
                  c.mv       s2, s0
                  andi       a4, a1, -286
                  sltu       t5, s11, t3
                  csrrc      s7, 0x340, t1
                  csrrci     s11, 0x340, 8
                  nop
                  divu       s9, s1, t0
                  mulhsu     t5, a5, s6
45:               beq        ra, s10, 61f
                  csrrc      s1, 0x340, s10
                  bgeu       t3, gp, 55f
                  beq        a3, t3, 56f
                  slli       ra, a3, 22
                  blt        ra, a1, 59f
                  srai       s11, a2, 15
                  mul        a3, t5, s10
                  auipc      t5, 945345
                  bge        t6, t3, 68f
55:               csrrc      a3, 0x340, s2
56:               sltiu      a0, gp, 59
                  c.li       a0, 22
                  nop
59:               bltu       gp, sp, 62f
                  bltu       s0, tp, 73f
61:               c.addi     t3, -1
62:               bgeu       s9, a2, 69f
                  c.and      a0, a4
                  sra        t4, s6, s2
                  csrrci     t0, 0x340, 2
                  mulh       a0, t1, s3
                  div        a7, a7, s10
68:               beq        s5, t3, 71f
69:               mulhsu     tp, a4, a1
                  lui        s2, 612808
71:               c.srli     a1, 21
                  bne        t1, a3, 92f
73:               sltiu      s1, s1, 484
                  add        s5, sp, t0
                  csrrci     t0, 0x340, 17
                  rem        s3, s6, t4
                  csrrc      t5, 0x340, a7
                  c.sub      a1, a5
                  la         s8, region_4+3027 #start riscv_load_store_rand_instr_stream_11
                  lbu        a2, 13(s8)
                  srli       t1, zero, 19
                  mul        s9, s5, t4
                  sb         a2, -7(s8)
                  c.and      a3, a4
                  csrrci     a6, 0x340, 11
                  fence.i
                  lb         gp, -16(s8)
                  lb         s7, -4(s8)
                  andi       a4, s3, -173
                  lbu        s11, -8(s8)
                  sh         t5, 11(s8)
                  csrrci     a5, 0x340, 24
                  c.lui      t6, 21
                  sb         s1, -6(s8)
                  lhu        t5, -5(s8)
                  mul        s2, t3, a5
                  sb         t3, -6(s8)
                  sb         t5, -5(s8)
                  xori       t4, s4, -679
                  nop
                  sub        tp, s3, t3
                  lbu        s11, 4(s8)
                  slti       t1, t1, 887
                  divu       s3, zero, a3
                  srl        s3, gp, s5
                  slli       t5, s8, 22
                  sh         ra, -1(s8)
                  sll        s7, ra, sp
                  c.sub      s0, a4
                  slt        a4, t0, s9
                  remu       a5, t4, t4
                  lb         s10, 15(s8)
                  lb         a6, -4(s8)
                  lbu        s3, -12(s8)
                  slli       a0, s1, 6
                  lb         t4, 0(s8)
                  sb         s1, 6(s8)
                  lbu        t1, -12(s8)
                  lb         a4, 16(s8)
                  mulh       a4, a7, a5
                  sltiu      s3, a2, 859
                  sb         s9, 13(s8)
                  sh         s3, 15(s8)
                  lh         a4, -3(s8)
                  sh         s11, 13(s8)
                  sb         t5, 7(s8)
                  mul        s5, zero, t2
                  c.andi     a1, 26
                  sb         tp, 4(s8)
                  c.addi     tp, -1
                  fence
                  andi       s11, s4, 962
                  sll        t3, s2, s11
                  lb         t6, -2(s8) #end riscv_load_store_rand_instr_stream_11
                  andi       s3, s9, 88
                  c.and      s0, s0
                  c.sub      a5, a4
                  sltiu      a0, a0, -822
                  c.nop
                  lui        gp, 207350
                  c.add      s2, s11
                  bge        t5, a3, 103f
                  andi       s2, a3, 131
                  add        a2, s11, ra
                  srl        s8, t4, a3
                  csrrwi     s7, 0x340, 22
                  c.beqz     a5, 94f
92:               bltu       s11, t5, 97f
                  csrrc      a3, 0x340, zero
94:               srai       t1, gp, 20
                  mul        s8, t2, a2
                  fence.i
97:               bltu       t2, s7, 113f
                  divu       ra, a6, a1
                  sltu       s10, s0, s3
                  nop
                  mul        t5, s5, ra
                  c.add      a6, t2
103:              bge        s9, t0, 115f
                  c.add      s10, s9
                  c.sub      a4, a2
                  mulhsu     tp, s6, zero
                  c.add      ra, a6
                  mulh       s1, t5, t1
                  c.andi     a4, 16
                  slti       t1, a6, -216
                  addi       s3, t0, -653
                  xori       s1, zero, -1
113:              sll        ra, a6, a6
                  mulhsu     s11, tp, a5
115:              sub        a6, gp, t1
                  mul        s4, a1, a1
                  c.li       s7, 4
                  bltu       s7, t0, 121f
                  c.beqz     a2, 123f
                  srli       t0, sp, 5
121:              bltu       s5, s8, 134f
                  c.bnez     s0, 142f
123:              sub        gp, t0, t4
                  c.nop
                  c.mv       s4, s4
                  nop
                  c.beqz     s1, 129f
                  mulhsu     a1, t5, ra
129:              srl        a1, t1, t3
                  bne        zero, t6, 146f
                  srli       a4, tp, 25
                  c.slli     a5, 28
                  addi       ra, s10, -871
134:              c.beqz     a2, 143f
                  c.addi     a7, 16
                  add        gp, t2, s9
                  c.bnez     a2, 149f
                  csrrwi     s11, 0x340, 6
                  srl        a3, ra, a1
                  mulhsu     tp, s2, s11
                  srai       s2, s11, 24
142:              c.sub      a5, s1
143:              rem        zero, t6, a1
                  c.or       s1, a4
                  bge        gp, s10, 148f
146:              remu       s1, s10, t3
                  and        s5, a6, a6
148:              bge        tp, tp, 159f
149:              auipc      s5, 1010202
                  mulh       a5, t5, tp
                  csrrw      s7, 0x340, t6
                  blt        t0, s2, 168f
                  mulh       s4, gp, s3
                  c.xor      a3, a0
                  divu       t0, t1, t2
                  csrrsi     s10, 0x340, 18
                  bne        t2, s5, 158f
158:              add        tp, t4, a6
159:              c.add      tp, s3
                  csrrs      s8, 0x340, s3
                  beq        zero, s7, 174f
                  mul        s5, s5, a6
                  or         a0, zero, a5
                  and        s3, s1, ra
                  ori        s1, gp, -43
                  auipc      gp, 110626
                  addi       s4, s7, -784
168:              c.sub      a3, a3
                  sltu       t3, s0, t6
                  c.or       a0, a5
                  ori        a2, a3, 846
                  c.srli     a0, 26
                  blt        a3, s4, 187f
174:              c.add      t5, t5
                  csrrw      s4, 0x340, s6
                  c.beqz     a0, 196f
                  c.sub      a5, a2
                  mul        a5, t0, t6
                  nop
                  csrrc      ra, 0x340, tp
                  sltu       s2, a6, s4
                  c.xor      a5, a3
                  c.and      a1, a1
                  c.beqz     s1, 187f
                  divu       a2, a0, s4
                  csrrs      s0, 0x340, a0
187:              mulh       a1, s6, t1
                  c.srai     a5, 2
                  bltu       s3, a5, 192f
                  andi       a3, t2, -188
                  csrrs      ra, 0x340, s7
192:              srai       a4, s8, 5
                  c.and      s1, a1
                  csrrsi     a2, 0x340, 12
                  csrrc      s10, 0x340, tp
196:              csrrc      s2, 0x340, s8
                  and        s3, s4, s8
                  div        a1, s2, t5
                  sra        s4, s5, s9
                  divu       s10, zero, a6
                  add        ra, s11, s11
                  sltu       t3, t0, s9
                  sltu       s3, s7, s0
                  c.xor      a3, a2
                  mulh       tp, t5, sp
                  bgeu       t1, sp, 226f
                  srai       a7, t1, 14
                  srl        s3, s10, t0
                  addi       s9, s9, 820
                  c.li       t4, -1
                  c.slli     s7, 25
                  or         a4, a7, a4
                  rem        t4, a2, gp
                  fence.i
                  xori       a2, t2, 399
                  c.nop
                  mulh       a4, s5, t2
                  fence
                  mulh       s4, tp, t1
                  c.andi     a5, 4
                  c.li       gp, -1
                  slt        a6, s11, s7
                  ori        s7, s11, 371
                  rem        t1, s2, t5
                  sll        s10, a3, a5
226:              xori       a7, s11, 428
                  mulh       a3, t5, a7
                  lui        t0, 994393
                  c.srli     a0, 14
                  csrrci     a4, 0x340, 1
                  mulhu      t0, t1, tp
                  slli       gp, s11, 24
                  rem        t5, a4, s11
                  mul        a1, a0, s1
                  divu       t5, a0, t5
                  c.srli     a1, 19
                  blt        s9, t3, 245f
                  c.addi     t5, 21
                  csrrw      t6, 0x340, a0
                  srl        ra, a3, sp
                  ori        s4, t2, -424
                  csrrsi     s3, 0x340, 25
                  srl        ra, t5, t1
                  sub        ra, a3, ra
245:              c.sub      a1, a4
                  csrrc      a1, 0x340, a4
                  and        a7, t5, s2
                  xori       ra, tp, -824
                  auipc      a1, 498619
                  xori       a4, t1, 962
                  csrrci     s4, 0x340, 3
                  c.beqz     a3, 260f
                  sltiu      zero, tp, 858
                  bge        a0, s10, 268f
                  csrrwi     ra, 0x340, 28
                  c.add      s2, s10
                  remu       s5, t0, s8
                  csrrsi     s5, 0x340, 27
                  and        s2, a3, a4
260:              c.slli     s7, 13
                  c.xor      s0, a2
                  xori       s7, gp, 633
                  sra        a5, a1, s2
                  auipc      s5, 30171
                  c.srli     a0, 13
                  divu       t1, a6, s1
                  slt        s9, t6, t1
268:              c.addi     s10, -1
                  fence
                  csrrci     a0, 0x340, 23
                  mul        t0, s3, zero
                  c.xor      a1, a4
                  sltiu      a0, t6, -548
                  divu       s1, s9, a4
                  mulh       a5, s5, s10
                  or         a4, a1, t2
                  csrrci     s1, 0x340, 5
                  bltu       s3, s2, 287f
                  slti       s3, tp, 407
                  remu       t5, a4, t0
                  csrrci     a0, 0x340, 29
                  c.nop
                  mulhu      t0, s4, ra
                  slti       t4, t3, 62
                  mulhu      t5, a4, a0
                  c.srai     a0, 7
287:              c.srai     a1, 24
                  div        t0, tp, t1
                  nop
                  sll        s10, t5, s9
                  c.bnez     a5, 304f
                  mul        t4, s11, s5
                  addi       s4, s10, 812
                  blt        a4, t5, 306f
                  andi       t4, a5, 1020
                  and        a5, s3, a6
                  xori       t4, t0, -245
                  bge        a0, s0, 314f
                  srli       t0, t5, 21
                  nop
                  c.li       t6, 7
                  bltu       s10, a3, 309f
                  divu       tp, s1, a3
304:              csrrs      s1, 0x340, ra
                  csrrwi     a2, 0x340, 7
306:              slti       s9, a1, -235
                  c.nop
                  nop
309:              andi       s9, a0, -553
                  sll        ra, a5, t6
                  bge        a4, s2, 327f
                  fence.i
                  c.li       a4, -1
314:              srl        a3, a2, ra
                  srli       gp, s1, 3
                  srai       a7, gp, 3
                  csrrci     t6, 0x340, 5
                  lui        t5, 580136
                  auipc      s3, 616247
                  c.sub      s1, a2
                  c.nop
                  c.mv       a7, s2
                  bne        s11, s11, 331f
                  sra        s10, t5, sp
                  sub        t0, s11, tp
                  slt        t4, a3, a5
327:              bge        tp, s2, 332f
                  divu       t0, s6, a7
                  bne        s4, t1, 349f
                  bgeu       a5, a0, 332f
331:              csrrs      a5, 0x340, t5
332:              fence.i
                  mulhu      t3, s2, a6
                  csrrs      ra, 0x340, t6
                  xor        t4, s11, a2
                  c.li       s2, -1
                  csrrci     s5, 0x340, 6
                  fence
                  csrrwi     a4, 0x340, 13
                  mulh       zero, a1, a1
                  c.sub      a3, s1
                  or         t5, t4, tp
                  rem        a5, zero, ra
                  mulhu      t1, s7, a1
                  c.srli     a4, 14
                  andi       s10, gp, -258
                  c.slli     gp, 29
                  csrrc      a6, 0x340, sp
349:              c.srai     a2, 5
                  csrrw      s1, 0x340, gp
                  divu       a1, t0, s6
                  sltu       a2, s0, t6
                  csrrw      tp, 0x340, t1
                  bgeu       zero, s7, 357f
                  sltiu      s7, s4, 407
                  mulhsu     a0, s9, ra
357:              csrrw      s8, 0x340, s5
                  csrrci     s1, 0x340, 5
                  slt        s0, a5, s7
                  xor        s1, ra, sp
                  c.andi     s1, 12
                  c.beqz     a5, 366f
                  rem        s10, a5, gp
                  c.mv       a7, s7
                  auipc      ra, 549123
366:              xori       a5, s0, 919
                  rem        s8, zero, t0
                  c.and      a1, a4
                  csrrw      zero, 0x340, t5
                  fence.i
                  csrrc      s8, 0x340, s3
                  xori       a1, a5, 739
                  sub        s7, s8, t0
                  addi       s1, s6, 863
                  div        tp, a0, s8
                  c.or       a2, a4
                  divu       a5, sp, s9
                  csrrs      a0, 0x340, s4
                  c.beqz     a4, 396f
                  or         t0, t4, a1
                  c.nop
                  beq        t4, sp, 395f
                  slli       s1, gp, 15
                  c.sub      s1, a3
                  mulh       s0, s4, zero
                  or         t0, a0, a1
                  andi       s9, t4, -115
                  mulhsu     t0, sp, a5
                  rem        t0, gp, s4
                  mulhu      gp, s5, t0
                  c.slli     a3, 17
                  c.bnez     a2, 405f
                  c.or       a5, s0
                  or         s2, s11, t3
395:              c.nop
396:              c.srli     a0, 17
                  sltu       gp, a4, t6
                  c.beqz     a4, 400f
                  div        a2, a7, s4
                  la         s3, region_2+6199 #start riscv_hazard_instr_stream_5
                  divu       t0, t0, t0
                  csrrc      s7, 0x340, t0
                  sb         s1, 198(s3)
                  mul        a6, a7, s7
                  lb         s1, 212(s3)
                  lbu        s1, -223(s3)
                  sb         s7, -136(s3)
                  c.srli     s1, 25
                  c.mv       s7, t0
                  csrrs      t0, 0x340, a7
                  lhu        s7, 155(s3)
                  sb         s1, -166(s3)
                  lb         gp, -74(s3)
                  lhu        t0, 7(s3)
                  slli       a7, s1, 30
                  lbu        s7, 56(s3)
                  sb         a6, 120(s3)
                  sh         a6, 63(s3)
                  sltiu      s7, s7, -168
                  div        s1, s1, s7
                  lbu        a6, 230(s3)
                  sh         t0, -203(s3)
                  srli       s1, s7, 1
                  ori        s1, a6, 53
                  sb         s7, 172(s3)
                  lbu        s7, -146(s3)
                  remu       s1, s7, a7
                  lb         gp, 151(s3)
                  lw         s1, -219(s3)
                  lb         a6, 256(s3)
                  xor        t0, t0, s1
                  lb         a6, 218(s3)
                  or         a6, t0, s1
                  c.srai     s1, 11
                  fence.i
                  sb         a6, -106(s3)
                  nop
                  lbu        t0, -12(s3)
                  sb         a6, 200(s3)
                  sltu       a7, s7, s1
                  sb         a7, 142(s3)
                  lbu        a6, 191(s3)
                  srli       gp, a7, 3
                  slti       s1, gp, -12
                  c.or       s1, s1
                  csrrsi     a6, 0x340, 16
                  sw         gp, -91(s3)
                  lb         a7, 115(s3) #end riscv_hazard_instr_stream_5
400:              c.slli     s9, 4
                  c.and      a0, a5
                  slli       t1, t3, 28
                  bge        s3, sp, 416f
                  c.bnez     a1, 405f
405:              c.mv       a0, a5
                  sltu       t5, t1, t4
                  srl        t0, s11, t5
                  auipc      ra, 289526
                  c.srli     a5, 1
                  fence
                  bgeu       s4, a6, 423f
                  ori        a3, t6, -948
                  csrrc      s7, 0x340, t6
                  c.bnez     a0, 428f
                  c.or       a4, a5
416:              slt        s5, t4, sp
                  auipc      t4, 152027
                  c.bnez     a4, 425f
                  srli       tp, a6, 2
                  bne        a1, ra, 428f
                  fence.i
                  srai       s7, a6, 19
423:              rem        s8, t4, s6
                  csrrc      a6, 0x340, a0
425:              c.and      a4, a3
                  fence.i
                  nop
428:              c.sub      a3, a1
                  sltu       t5, t5, s8
                  or         s8, t3, t4
                  c.or       s1, a2
                  c.and      s0, a2
                  remu       s9, a3, zero
                  c.add      s0, t5
                  div        a0, s2, a4
                  rem        ra, a6, a5
                  remu       s2, a6, a3
                  c.srli     a4, 30
                  sltiu      s7, a1, -480
                  div        s8, a2, a6
                  csrrw      s8, 0x340, sp
                  c.sub      a2, a2
                  remu       a7, t5, a1
                  c.li       s1, -1
                  blt        tp, t0, 465f
                  slt        tp, s4, s1
                  blt        sp, a7, 455f
                  csrrc      t1, 0x340, t3
                  or         a3, t3, t4
                  mul        zero, a7, tp
                  xori       a4, t0, 305
                  sra        t4, s9, s10
                  c.srai     a5, 7
                  slli       a1, s6, 17
455:              csrrs      a6, 0x340, ra
                  mulh       a3, a7, s3
                  divu       gp, s10, a3
                  srl        gp, s9, sp
                  srai       s4, s4, 30
                  mulh       a4, s2, s8
                  auipc      t5, 948757
                  c.beqz     a0, 478f
                  blt        s10, s3, 477f
                  beq        t6, ra, 472f
465:              csrrwi     t6, 0x340, 29
                  bge        t4, a1, 475f
                  c.srai     a0, 8
                  c.sub      s0, s0
                  c.sub      a4, a3
                  c.li       a2, 3
                  addi       a3, zero, -3 #init loop 1 counter
                  c.andi     s1, 10
                  xor        t5, s2, s6
                  addi       zero, zero, 0 #init loop 1 limit
                  fence.i
                  slt        a0, t6, t3
                  addi       a7, s9, -192
                  csrrc      s2, 0x340, zero
main_79_1_t:      c.nop
                  addi       a3, a3, 3 #update loop 1 counter
                  sltiu      a0, gp, -1010
                  addi       t4, zero, 5 #init loop 0 counter
                  c.nop
                  csrrw      gp, 0x340, a6
                  csrrw      a7, 0x340, a5
                  fence.i
                  addi       t3, zero, -9 #init loop 0 limit
                  csrrwi     s9, 0x340, 8
main_79_0_t:      c.and      s0, a2
                  fence
                  mul        a1, t3, a1
                  addi       t4, t4, -2 #update loop 0 counter
                  c.mv       a0, t3
                  nop
                  xor        s8, s6, s3
                  bne        t4, t3, main_79_0_t #branch for loop 0
                  ori        t5, s9, 743
                  c.beqz     a3, main_79_1_t #branch for loop 1
                  c.srli     a5, 28
                  sra        gp, s4, sp
472:              c.sub      a3, a0
                  csrrci     a5, 0x340, 28
                  c.andi     s1, -1
475:              fence
                  divu       a0, a2, s11
477:              bge        gp, a0, 494f
478:              andi       t6, a6, -508
                  bge        a2, s10, 492f
                  c.slli     a3, 22
                  fence.i
                  c.sub      a4, s0
                  sltiu      s4, a6, 164
                  xor        s0, s5, gp
                  andi       a3, a1, 927
                  and        a6, ra, a7
                  fence.i
                  fence.i
                  andi       t4, s6, -951
                  andi       s9, s4, -670
                  c.srli     a3, 22
492:              bge        s8, s6, 495f
                  csrrsi     s1, 0x340, 11
494:              slt        zero, t1, s10
495:              sltu       zero, s5, s3
                  c.srai     a4, 21
                  c.lui      a7, 26
                  c.mv       tp, s6
                  csrrsi     s2, 0x340, 13
                  c.nop
                  c.addi     a0, -1
                  c.xor      a1, a2
                  addi       a2, a7, 539
                  remu       a5, s0, ra
                  slti       ra, t0, 11
                  c.bnez     s1, 509f
                  sltiu      a7, tp, -704
                  remu       a0, s11, s3
509:              c.slli     s4, 4
                  mulhsu     a0, tp, a5
                  fence.i
                  csrrc      t3, 0x340, t0
                  beq        t1, s8, 526f
                  c.slli     s2, 5
                  divu       a4, s3, gp
                  divu       s10, s9, s8
                  c.addi     t6, -1
                  nop
                  add        a4, a6, a5
                  c.slli     s5, 16
                  c.slli     s11, 2
                  ori        a4, s5, 544
                  srl        t0, gp, s9
                  c.srai     a5, 31
                  sub        t0, ra, s9
526:              xor        s0, s6, t6
                  sra        a1, s9, t5
                  auipc      t0, 27034
                  srai       a0, gp, 17
                  c.mv       s8, s2
                  bgeu       a2, s6, 535f
                  c.mv       t3, t3
                  csrrc      s8, 0x340, s8
                  csrrsi     s10, 0x340, 3
535:              csrrci     s8, 0x340, 0
                  c.and      a3, s1
                  slt        t1, a3, a6
                  c.sub      a4, a4
                  srai       s5, s2, 24
                  divu       s4, s7, a3
                  sll        a1, zero, t4
                  csrrw      t3, 0x340, s8
                  bltu       t1, a2, 552f
                  beq        a7, s4, 547f
                  fence
                  auipc      s9, 466234
547:              blt        zero, s2, 550f
                  c.lui      t3, 1
                  csrrwi     t4, 0x340, 18
550:              nop
                  bgeu       s8, t0, 571f
552:              c.mv       s5, sp
                  csrrw      a6, 0x340, a0
                  c.li       s3, -1
                  c.andi     a0, -1
                  div        s9, s11, s10
                  remu       a0, ra, a3
                  csrrwi     s9, 0x340, 11
                  c.add      ra, t2
                  c.andi     a1, 5
                  c.addi     s11, 29
                  csrrw      a0, 0x340, t4
                  xori       gp, gp, 977
                  mulhsu     s9, a6, a0
                  c.xor      s1, s1
                  fence.i
                  mulhu      a4, zero, gp
                  bgeu       a0, a6, 584f
                  sra        s11, s5, t6
                  bgeu       s11, t2, 582f
571:              fence.i
                  fence.i
                  ori        a1, t2, -431
                  sltu       a5, s3, s5
                  c.and      a4, a1
                  srli       a6, s2, 29
                  c.nop
                  remu       a5, s10, s9
                  fence.i
                  add        a7, t1, s0
                  mul        ra, t3, s9
582:              c.slli     s4, 3
                  c.xor      a5, a5
584:              sll        s10, t0, sp
                  slti       t3, t1, -337
                  c.and      a2, s0
                  addi       t1, t0, 336
                  div        t5, zero, s11
                  c.lui      t0, 24
                  nop
                  ori        s2, zero, -285
                  sltu       t0, s8, s9
                  csrrsi     t4, 0x340, 24
                  c.or       a1, s1
                  lui        t1, 97471
                  c.nop
                  c.and      s1, a3
                  srl        a4, s3, s0
                  mul        a4, s9, a2
                  ori        a0, s10, 638
                  and        s0, s4, tp
                  c.slli     s3, 4
                  mul        t3, s6, a3
                  c.or       a5, a2
                  c.nop
                  srl        s3, a1, s8
                  sra        gp, tp, a3
                  srli       t3, a3, 26
                  csrrc      s1, 0x340, s6
                  c.sub      s0, s0
                  c.beqz     a1, 624f
                  c.xor      s1, s0
                  beq        a7, s11, 633f
                  beq        s4, s11, 630f
                  c.or       a4, a2
                  c.slli     gp, 9
                  c.andi     a0, -1
                  slli       a0, s0, 29
                  addi       t6, gp, -535
                  csrrci     a4, 0x340, 9
                  c.xor      a0, a1
                  mulhsu     s7, a1, t0
                  rem        s5, s0, s10
624:              xor        tp, a6, t0
                  fence
                  csrrs      s2, 0x340, gp
                  csrrc      a2, 0x340, s0
                  xori       s3, a0, -740
                  or         a4, sp, gp
630:              c.li       s1, 19
                  divu       a5, gp, t1
                  bge        s3, gp, 643f
633:              bltu       s7, a0, 638f
                  csrrci     s0, 0x340, 15
                  slti       s11, s7, -207
                  c.addi     a5, -1
                  andi       a6, s1, -685
638:              csrrw      t1, 0x340, s7
                  sll        s0, a4, s8
                  c.xor      a4, a2
                  sltiu      s3, t6, 908
                  andi       t0, s11, 934
643:              csrrw      a2, 0x340, a5
                  srli       a0, t6, 21
                  csrrwi     a0, 0x340, 17
                  and        t3, sp, s4
                  c.or       a0, a5
                  sub        t0, s8, a2
                  auipc      s8, 964406
                  slli       a5, gp, 21
                  nop
                  c.andi     a0, -1
                  bltu       s0, a3, 661f
                  c.xor      a1, s1
                  addi       s4, gp, 354
                  c.lui      ra, 28
                  csrrc      t0, 0x340, a6
                  c.nop
                  and        a3, gp, s3
                  srli       s11, zero, 27
661:              sra        t5, t3, t6
                  c.nop
                  c.srai     s1, 13
                  csrrs      a1, 0x340, a5
                  csrrwi     ra, 0x340, 17
                  sub        zero, t1, s9
                  c.bnez     a5, 683f
                  remu       s8, s8, s11
                  csrrwi     a1, 0x340, 23
                  ori        a6, a7, -444
                  ori        t3, a0, -560
                  andi       tp, t3, 520
                  mulhu      a5, t5, a3
                  and        s8, s7, s11
                  c.xor      a3, a5
                  c.li       gp, -1
                  srai       s2, s11, 22
                  c.nop
                  c.beqz     a5, 680f
680:              csrrs      t3, 0x340, t1
                  div        s2, s5, a2
                  bne        s3, s11, 698f
683:              lui        s8, 59639
                  bgeu       a1, t0, 689f
                  lui        s3, 177068
                  csrrwi     a2, 0x340, 6
                  slli       t3, a2, 19
                  beq        ra, tp, 691f
689:              csrrw      tp, 0x340, tp
                  rem        a3, s5, s0
691:              sltiu      s8, t5, -140
                  csrrwi     s7, 0x340, 19
                  bltu       a0, s8, 705f
                  mulhsu     t0, t0, t3
                  bgeu       s6, s0, 712f
                  c.addi     s9, 3
                  beq        s4, tp, 711f
698:              c.lui      a7, 31
                  mulhsu     t3, t3, zero
                  add        tp, a5, s4
                  sra        tp, a2, s6
                  beq        s10, s2, 715f
                  fence
                  blt        a0, t6, 711f
705:              div        s5, s1, s6
                  srai       s7, s6, 26
                  c.sub      a4, a5
                  addi       a6, t2, -45
                  bgeu       s9, t5, 725f
                  sll        t1, a1, s8
711:              addi       a6, s8, -66
712:              csrrw      a6, 0x340, s10
                  addi       a3, s3, -890
                  c.srli     a5, 26
715:              bne        s3, a5, 718f
                  srl        gp, s6, a3
                  csrrci     t4, 0x340, 4
718:              c.or       a4, s1
                  c.addi     tp, -1
                  bltu       a7, s5, 733f
                  bltu       sp, t0, 741f
                  fence
                  div        ra, s1, s0
                  xori       t1, a7, -619
725:              lui        a2, 770472
                  bltu       t5, t4, 728f
                  c.and      a5, a4
728:              csrrw      ra, 0x340, gp
                  c.and      a2, a2
                  xor        s11, gp, gp
                  divu       s3, ra, t3
                  div        s11, a2, a5
733:              c.li       s3, 9
                  csrrw      s4, 0x340, zero
                  mulhu      t5, tp, t3
                  or         a6, a7, a3
                  bltu       a2, s8, 750f
                  c.mv       s4, t2
                  remu       s3, s3, a1
                  mulh       a4, t3, t6
741:              mulh       tp, a6, t6
                  lui        s2, 952614
                  blt        s2, t6, 751f
                  lui        s10, 900523
                  c.li       s0, -1
                  or         s5, a6, s1
                  c.beqz     a1, 755f
                  srl        s4, gp, s3
                  mulh       gp, t0, s11
750:              nop
751:              c.andi     a5, 29
                  csrrsi     a1, 0x340, 5
                  c.srai     a5, 4
                  ori        t4, t1, -273
755:              csrrw      s8, 0x340, zero
                  rem        a4, s5, s10
                  c.andi     s0, 19
                  slti       a0, ra, -991
                  slt        s0, s2, ra
                  fence
                  c.li       a7, -1
                  c.bnez     a2, 765f
                  c.nop
                  c.slli     a7, 26
765:              lui        gp, 732318
                  remu       s4, s8, s10
                  remu       a2, a0, a6
                  c.slli     s0, 4
                  c.and      a3, s1
                  mulh       a0, s11, a6
                  rem        a2, a6, t6
                  andi       t4, a2, 785
                  fence
                  c.beqz     a1, 777f
                  c.li       t0, -1
                  add        tp, t4, t1
777:              c.andi     a1, -1
                  nop
                  bne        a3, t6, 790f
                  csrrci     t3, 0x340, 20
                  or         a0, a0, t2
                  lui        t6, 68747
                  lui        s3, 381342
                  fence.i
                  lui        t0, 679437
                  csrrc      s5, 0x340, a7
                  c.slli     t6, 19
                  blt        s1, s7, 808f
                  c.lui      s0, 14
790:              sltu       a5, t6, s1
                  bltu       s2, sp, 795f
                  sltu       a5, s7, t2
                  csrrs      s3, 0x340, t4
                  auipc      a6, 217849
795:              c.bnez     a0, 807f
                  bltu       s7, s8, 805f
                  slt        t4, t2, t5
                  c.andi     s1, -1
                  c.li       a4, -1
                  auipc      s5, 154568
                  mul        s4, ra, a3
                  csrrs      s5, 0x340, a0
                  csrrc      s9, 0x340, s8
                  mulh       s9, t2, s6
805:              c.li       ra, -1
                  c.mv       s4, a6
807:              mulhu      s10, a0, ra
808:              mulhsu     ra, gp, t1
                  slt        s7, s10, t6
                  .2byte 0x803a # kHintInstr
                  bge        a3, a3, 824f
                  slti       s9, s2, -327
                  c.beqz     a4, 821f
                  xor        a2, t6, t0
                  c.bnez     a2, 827f
                  c.mv       s4, a2
                  csrrw      gp, 0x340, t4
                  sltiu      a6, a4, -977
                  c.mv       a2, s3
                  blt        t5, t2, 839f
                  c.addi     t5, -1
821:              srli       a6, a2, 3
                  csrrc      a2, 0x340, s8
                  sll        a1, s5, s10
824:              xori       s5, s8, 114
                  lui        a5, 638751
                  c.addi     s11, 22
827:              mulhu      a4, a7, t6
                  csrrsi     s11, 0x340, 22
                  c.and      a0, s1
                  srli       s4, ra, 26
                  xori       s7, a5, -523
                  ori        a5, s4, 435
                  sra        t1, t2, a2
                  div        a4, t2, s9
                  c.nop
                  c.or       a0, a4
                  csrrwi     a7, 0x340, 5
                  addi       ra, s0, 170
839:              c.andi     s0, -1
                  c.lui      gp, 12
                  c.sub      a1, a0
                  slli       t1, s10, 21
                  auipc      t4, 798512
                  remu       a3, a6, t2
                  bltu       a1, ra, 856f
                  add        t5, a7, gp
                  xori       s10, s8, 579
                  fence.i
                  mulhu      a3, t4, a5
                  xor        zero, t5, s1
                  csrrw      a5, 0x340, s5
                  divu       s5, tp, a5
                  c.and      a2, a4
                  mulhsu     s10, s4, gp
                  and        ra, a0, zero
856:              c.addi     s10, -1
                  slli       s10, t3, 31
                  srai       a5, gp, 23
                  and        a7, a3, a4
                  srai       s3, s2, 9
                  c.beqz     s0, 875f
                  c.bnez     s1, 879f
                  xori       s0, a0, -454
                  csrrsi     s5, 0x340, 26
                  c.beqz     a2, 885f
                  sra        t3, t2, s8
                  csrrsi     s11, 0x340, 0
                  sltiu      s8, t6, 299
                  beq        t5, t2, 871f
                  fence
871:              divu       s10, a4, s0
                  srl        t4, t3, t2
                  lui        a0, 705581
                  c.or       s0, s0
875:              slti       s9, s7, 662
                  beq        t0, s4, 885f
                  andi       s4, a3, 210
                  srli       s0, s5, 18
879:              bge        tp, s9, 887f
                  c.add      a2, s5
                  sltiu      t0, t1, -550
                  c.bnez     s1, 894f
                  csrrci     a0, 0x340, 3
                  c.or       a1, a1
885:              c.lui      ra, 27
                  sra        s11, sp, zero
887:              bltu       t0, tp, 900f
                  sltiu      s5, s11, 498
                  mulhu      s10, t6, a7
                  slt        a6, s11, ra
                  rem        s1, a7, s5
                  sub        s9, gp, a3
                  ori        s7, s10, 921
894:              and        t5, t2, s3
                  c.and      s0, s1
                  c.srai     a1, 3
                  csrrsi     a2, 0x340, 8
                  xori       s2, s11, 530
                  rem        s5, t2, t6
900:              mulhsu     tp, s0, tp
                  srli       a7, a5, 13
                  c.lui      s3, 30
                  sub        s9, t5, t1
                  c.add      t3, t1
                  or         zero, s7, t4
                  c.li       a4, -1
                  slli       s9, s8, 13
                  mul        s5, a1, s4
                  c.add      a3, s11
                  blt        tp, t1, 923f
                  c.slli     a0, 2
                  mulh       s0, s11, a4
                  mul        t3, sp, s11
                  rem        s1, s8, t6
                  and        s7, zero, sp
                  c.srai     a3, 8
                  bgeu       s0, t4, 933f
                  div        s8, t6, s0
                  c.mv       s10, t5
                  slli       t3, a5, 8
                  add        s8, a3, a6
                  srl        s5, t1, gp
923:              auipc      a7, 943552
                  sll        s11, a2, sp
                  c.beqz     a1, 928f
                  c.mv       s5, s6
                  sra        a1, a3, s4
928:              slti       t5, t2, -610
                  srai       a3, s8, 1
                  c.addi     s11, 15
                  c.and      a2, a3
                  and        gp, s6, a7
933:              slli       t5, a5, 25
                  mulh       t4, t3, t0
                  csrrsi     s9, 0x340, 8
                  or         s0, s9, s1
                  c.slli     s11, 3
                  csrrs      s8, 0x340, a4
                  and        a3, s0, zero
                  sub        s10, t2, t2
                  c.beqz     s0, 942f
942:              mul        a0, t0, zero
                  c.and      a2, a3
                  sltiu      a7, s8, 398
                  andi       t5, gp, 429
                  c.beqz     a1, 949f
                  c.add      t1, tp
                  ori        gp, a1, -550
949:              bgeu       t5, a3, 952f
                  c.srai     a3, 1
                  ori        a2, s0, 435
952:              srai       t1, a6, 13
                  blt        tp, tp, 961f
                  c.srai     a3, 16
                  ori        a3, ra, -506
                  ori        s0, t2, 488
                  ori        a0, s7, 106
                  csrrw      s8, 0x340, ra
                  lui        s9, 689579
                  sra        t4, zero, t6
961:              xori       a5, a2, 496
                  c.srai     a1, 21
                  sltiu      s10, s0, 457
                  bge        t0, a2, 969f
                  csrrs      s2, 0x340, tp
                  c.add      a3, a1
                  srl        a4, s2, s9
                  csrrw      s0, 0x340, s5
969:              mulhu      s11, a7, gp
                  bne        t3, t2, 982f
                  c.nop
                  csrrc      a2, 0x340, s6
                  c.lui      a0, 6
                  srli       t4, t5, 0
                  c.xor      a3, a1
                  c.lui      s4, 21
                  xori       s7, a4, 20
                  csrrwi     gp, 0x340, 7
                  bltu       a2, s11, 983f
                  sra        a6, a1, a6
                  c.beqz     a4, 984f
982:              slti       a0, a5, -29
983:              c.srli     a5, 24
984:              c.srai     a2, 23
                  sra        a4, ra, gp
                  andi       t4, s1, 633
                  nop
                  add        t0, ra, t1
                  sub        t6, s5, s11
                  c.srli     s1, 24
                  blt        a3, a4, 1011f
                  mulhu      a4, s8, s2
                  xor        t1, s9, t4
                  c.andi     s1, 4
                  nop
                  bgeu       zero, s6, 1012f
                  c.srai     a2, 13
                  srli       t3, s10, 16
                  and        t0, a3, t6
                  c.addi     s1, 18
                  sltu       zero, t5, sp
                  bge        a2, s7, 1010f
                  rem        s3, a1, s10
                  bge        s2, s1, 1013f
                  mulh       t4, s0, s7
                  beq        a6, t3, 1019f
                  c.and      a0, a3
                  csrrwi     a7, 0x340, 18
                  mulh       a5, a6, a4
1010:             bgeu       s6, t5, 1023f
1011:             fence
1012:             srl        t4, t1, s11
1013:             slt        s11, t5, t4
                  c.nop
                  divu       t0, a6, s3
                  fence
                  csrrc      a2, 0x340, t1
                  andi       s8, gp, -580
1019:             srai       s11, a3, 25
                  c.add      a7, a4
                  auipc      t4, 926001
                  divu       a3, s6, s4
1023:             or         s11, s11, s8
                  xor        s11, a0, a1
                  auipc      s5, 958965
                  div        s10, ra, s6
                  c.or       a2, a3
                  c.xor      a4, a2
                  c.nop
                  and        t5, a6, t1
                  c.xor      s0, a3
                  nop
                  mulh       ra, s8, t4
                  csrrwi     t6, 0x340, 23
                  mul        t5, s1, s4
                  divu       s3, a6, t6
                  csrrw      s3, 0x340, s9
                  c.li       s0, -1
                  srai       a7, t1, 3
                  mulhu      s7, t1, s4
                  and        t6, t4, a6
                  c.addi     t1, -1
                  csrrc      t5, 0x340, t1
                  slt        a5, s7, s11
                  slt        t0, a0, s9
                  rem        a3, s2, t5
                  slt        tp, s0, t3
                  sltu       s5, a1, t2
                  slti       s10, s10, 869
                  csrrc      t3, 0x340, a1
                  xori       s4, s9, -988
                  xori       tp, t5, 728
                  slti       t0, s2, 236
                  csrrw      s3, 0x340, s5
                  c.xor      a5, a1
                  nop
                  c.slli     a3, 4
                  mulh       a3, s4, s2
                  srai       s9, t6, 12
                  mulhu      zero, s3, s6
                  auipc      s5, 567573
                  c.nop
                  mul        s5, s11, a2
                  sltu       s7, s6, t5
                  divu       tp, a2, zero
                  c.bnez     a1, 1073f
                  nop
                  csrrsi     s1, 0x340, 17
                  c.or       a1, a2
                  sll        tp, a0, a5
                  sltiu      t0, gp, 281
                  mulh       s4, s10, s6
1073:             c.nop
                  sub        s2, a6, a7
                  andi       a3, sp, 690
                  c.srai     a5, 15
                  csrrc      t6, 0x340, a7
                  mulhu      t4, gp, t3
                  c.lui      ra, 27
                  c.srli     a2, 28
                  beq        a6, t0, 1095f
                  mulhu      t5, a2, a2
                  c.or       a1, a4
                  sra        a6, t0, t2
                  c.or       s0, a2
                  rem        s8, s7, s9
                  fence
                  addi       zero, a2, 144
                  remu       t4, s6, s5
                  c.slli     s10, 6
                  slt        a7, s0, ra
                  mulhsu     a2, a7, t5
                  xor        a5, t4, t2
                  lui        s3, 936227
1095:             c.beqz     a4, 1111f
                  blt        a0, tp, 1116f
                  srli       t6, a2, 18
                  auipc      a0, 221915
                  xor        gp, a1, t2
                  auipc      a5, 798037
                  slt        a5, t5, s6
                  slt        t6, a2, t3
                  sub        t1, t2, s8
                  sll        t0, s2, t4
                  srai       s1, a4, 4
                  c.and      a0, s1
                  c.nop
                  csrrc      a1, 0x340, s4
                  c.bnez     a4, 1112f
                  xor        a3, s9, s11
1111:             c.srli     a4, 7
1112:             bge        s9, t2, 1129f
                  or         t5, a5, t0
                  mulhsu     t4, t1, a1
                  c.and      a4, s1
1116:             xor        s10, s2, s6
                  csrrc      a7, 0x340, a3
                  bgeu       t3, t3, 1130f
                  divu       s7, s5, s7
                  sltiu      a0, s11, 841
                  beq        a7, t6, 1137f
                  bge        zero, t0, 1138f
                  csrrc      tp, 0x340, t5
                  csrrci     ra, 0x340, 28
                  bge        s2, s6, 1133f
                  srai       s10, ra, 17
                  sll        a1, s5, s2
                  csrrs      s3, 0x340, t3
1129:             c.addi     s4, -1
1130:             srl        s0, t1, ra
                  sltu       s8, s11, ra
                  c.lui      a1, 5
1133:             mulhu      s5, zero, a7
                  srl        s11, s8, s2
                  mul        t0, t6, a0
                  c.bnez     s0, 1147f
1137:             sub        a4, s3, ra
1138:             lui        a4, 1040941
                  mul        t1, t1, tp
                  mulhsu     s5, a6, s9
                  c.lui      t3, 7
                  c.or       a1, a0
                  bgeu       zero, s1, 1146f
                  sll        s4, ra, a4
                  blt        s2, s3, 1158f
1146:             blt        s3, t5, 1151f
1147:             bgeu       a0, t5, 1149f
                  c.beqz     a4, 1151f
1149:             xori       t3, a2, 353
                  div        t1, s1, s0
1151:             remu       t5, a1, a0
                  slti       zero, tp, 586
                  sll        a0, t2, t6
                  sll        zero, s4, a7
                  c.slli     s11, 30
                  c.and      a5, a0
                  andi       t5, t1, -1022
1158:             c.xor      a1, a0
                  c.beqz     a3, 1168f
                  bgeu       a0, t0, 1174f
                  bge        s11, t1, 1170f
                  slli       gp, t0, 11
                  csrrci     s8, 0x340, 28
                  slli       a6, a2, 23
                  c.srli     s0, 1
                  c.xor      a3, a0
                  c.sub      a3, s1
1168:             xor        t3, a6, s8
                  lui        a3, 934304
1170:             slti       a5, t5, -726
                  nop
                  mulh       t4, a1, s3
                  sltiu      tp, gp, -42
1174:             c.slli     a0, 22
                  auipc      a3, 67001
                  xor        s1, s3, s8
                  c.slli     a3, 25
                  rem        t5, a6, s11
                  remu       a0, a2, zero
                  mulhu      s3, s10, gp
                  bgeu       a7, a0, 1193f
                  c.xor      a4, a2
                  mulhu      a4, t3, a3
                  remu       s10, t2, s9
                  div        t4, sp, a2
                  auipc      a7, 441360
                  c.sub      a3, s0
                  c.or       a0, a5
                  slti       gp, s7, 911
                  beq        zero, s4, 1203f
                  c.srai     a1, 27
                  slli       t3, a6, 22
1193:             csrrwi     a6, 0x340, 16
                  xori       s4, s11, 498
                  nop
                  lui        s8, 532645
                  slli       s0, s3, 30
                  mulhu      a0, ra, s8
                  rem        s3, gp, a7
                  c.bnez     a2, 1208f
                  xor        zero, s9, s7
                  lui        zero, 966111
1203:             andi       a2, t4, -829
                  c.beqz     a3, 1218f
                  add        s7, s8, s7
                  xori       t3, a4, -539
                  remu       s10, s2, a6
1208:             rem        s8, a0, s9
                  nop
                  c.slli     s4, 19
                  slt        a7, s10, s6
                  fence
                  csrrs      s1, 0x340, s1
                  slli       s7, tp, 12
                  bge        s9, s9, 1223f
                  srli       s8, a0, 30
                  bge        s0, t5, 1221f
1218:             add        t0, s7, s8
                  xori       a5, s7, 568
                  csrrc      ra, 0x340, tp
1221:             csrrsi     s7, 0x340, 1
                  bge        a6, zero, 1242f
1223:             sub        s4, t0, s2
                  c.andi     a5, -1
                  csrrw      s7, 0x340, s1
                  div        t4, a6, t6
                  or         a6, a3, gp
                  slti       a5, s11, -360
                  fence
                  divu       t3, zero, s3
                  srli       a4, t5, 29
                  or         gp, a5, s9
                  andi       s5, a6, 698
                  c.slli     t4, 5
                  mul        t4, s10, s1
                  c.and      s1, a4
                  div        s10, a6, s0
                  mul        a0, t4, s9
                  mulhsu     ra, t1, s9
                  mulhsu     ra, t6, s8
                  la         a0, region_3+404 #start riscv_load_store_rand_instr_stream_12
                  lb         s0, -26(a0)
                  xori       s8, s8, 171
                  c.sw       a2, 64(a0)
                  lh         a1, -28(a0)
                  lbu        s1, -59(a0)
                  slti       s8, a7, -557
                  lbu        s11, 23(a0)
                  lhu        tp, -6(a0)
                  lhu        s11, -40(a0)
                  sb         a1, -54(a0)
                  and        t1, s11, a0
                  lh         tp, -28(a0)
                  sb         s8, 0(a0)
                  lbu        s3, -53(a0)
                  lbu        tp, 45(a0)
                  slli       s5, a1, 5
                  slt        t4, ra, t6
                  slti       s4, tp, 644
                  sub        t1, s5, a5
                  lh         ra, -14(a0)
                  sra        t4, a1, s4
                  mulh       s2, s3, a5
                  c.lui      s2, 8
                  sh         t3, -32(a0)
                  lh         s11, 26(a0)
                  lw         s3, 36(a0) #end riscv_load_store_rand_instr_stream_12
                  bge        s7, a2, 1242f
1242:             addi       s11, tp, 701
                  c.and      a2, a1
                  bgeu       s11, sp, 1257f
                  fence
                  c.and      a1, a5
                  .2byte 0x5019 # kHintInstr
                  and        t0, tp, t4
                  c.add      a1, s1
                  mulhu      ra, s7, a7
                  slli       tp, t3, 12
                  mulhsu     s1, sp, a4
                  addi       s5, s9, -95
                  bgeu       t4, s0, 1273f
                  fence.i
                  fence
                  c.or       a4, s0
1257:             c.andi     a5, -1
                  div        zero, t6, gp
                  bltu       tp, s11, 1272f
                  c.xor      a5, s0
                  mulhsu     t3, a7, t2
                  sra        zero, s2, s6
                  div        s9, t6, gp
                  sltiu      zero, t4, -992
                  xor        t3, s9, s3
                  auipc      t0, 220835
                  bne        t0, a1, 1270f
                  srl        a4, zero, t5
                  add        t3, s9, s8
1270:             c.sub      a5, s0
                  bne        a3, a0, 1278f
1272:             slt        s4, s7, a1
1273:             mulhu      zero, s10, s10
                  c.sub      s0, a1
                  srai       s7, a3, 14
                  c.lui      t6, 29
                  or         s10, s1, tp
1278:             mul        t0, ra, a4
                  xori       a4, s3, -860
                  srl        a5, a5, s3
                  c.mv       s4, a6
                  srai       gp, ra, 13
                  or         a7, t4, a4
                  c.xor      s1, a1
                  c.beqz     a5, 1301f
                  divu       t0, gp, s6
                  c.mv       a0, tp
                  sltu       a7, a5, s0
                  lui        a6, 316541
                  mulh       a0, a6, a6
                  srai       s8, s4, 20
                  andi       a0, s7, -140
                  c.nop
                  fence.i
                  bge        t1, a7, 1315f
                  slli       t1, s7, 18
                  xori       a0, s5, -867
                  ori        a4, s8, 727
                  c.srai     a5, 18
                  auipc      t6, 930233
1301:             c.xor      a0, a4
                  srai       ra, t6, 26
                  srli       s3, s11, 26
                  xori       ra, t4, -36
                  mulhsu     a2, a1, s8
                  csrrsi     t5, 0x340, 24
                  rem        a5, s5, t4
                  and        t0, t6, a5
                  bge        zero, t1, 1329f
                  sltiu      s0, t2, 111
                  c.slli     a7, 16
                  beq        t6, s0, 1326f
                  and        ra, s2, tp
                  srai       t0, t0, 17
1315:             c.lui      tp, 21
                  slti       s7, s2, 189
                  c.slli     tp, 12
                  divu       a2, s8, s0
                  srl        s4, t3, a5
                  csrrwi     s1, 0x340, 3
                  slli       s0, a3, 3
                  c.srai     a3, 22
                  srli       s0, s8, 23
                  nop
                  remu       ra, ra, s2
1326:             beq        t2, t1, 1327f
1327:             csrrci     s3, 0x340, 31
                  c.beqz     a2, 1331f
1329:             c.lui      t5, 4
                  nop
1331:             c.andi     a0, -1
                  bge        a5, ra, 1345f
                  fence
                  lui        a1, 337112
                  c.li       s10, -1
                  c.and      a4, a3
                  c.srli     a0, 11
                  csrrw      s7, 0x340, s9
                  andi       tp, t1, -873
                  sub        s4, s4, a1
                  c.slli     t4, 30
                  blt        s5, s7, 1362f
                  csrrsi     s7, 0x340, 14
                  add        t1, s3, s0
1345:             addi       s2, s1, -296
                  sra        t5, a2, a6
                  c.srli     a1, 5
                  beq        t2, t1, 1360f
                  mul        gp, t6, t3
                  sltiu      a6, a2, 273
                  slli       s7, s6, 31
                  or         t6, a2, t1
                  andi       t5, sp, -753
                  c.andi     a5, 19
                  div        a1, s11, a5
                  divu       a0, a3, s8
                  nop
                  div        s9, s11, s3
                  or         a0, ra, t5
1360:             c.and      a4, a3
                  c.xor      s0, a4
1362:             auipc      t1, 837964
                  c.or       a0, s0
                  bltu       s8, zero, 1366f
                  csrrwi     t0, 0x340, 13
1366:             c.slli     t6, 19
                  divu       gp, t6, sp
                  csrrsi     gp, 0x340, 19
                  csrrci     s4, 0x340, 11
                  c.mv       s2, a7
                  c.beqz     a1, 1384f
                  csrrs      s10, 0x340, t0
                  csrrci     t3, 0x340, 3
                  sll        zero, gp, s1
                  blt        a7, a4, 1384f
                  c.or       s0, a3
                  mulhu      ra, ra, s9
                  fence.i
                  bge        s10, s11, 1395f
                  slli       s0, a0, 12
                  c.add      s11, t1
                  slli       s1, a6, 26
                  bge        t5, a1, 1386f
1384:             and        t3, a2, s11
                  bltu       s0, a6, 1402f
1386:             sltu       t3, s3, a0
                  sltu       a0, s8, t1
                  c.li       t5, -1
                  div        a2, s8, s4
                  mulhsu     s11, a7, t0
                  c.beqz     a5, 1398f
                  blt        tp, s7, 1400f
                  srl        a2, t4, s5
                  c.beqz     a4, 1414f
1395:             blt        sp, s6, 1408f
                  auipc      t5, 16362
                  add        s0, a2, s3
1398:             c.addi     a6, 3
                  csrrci     zero, 0x340, 10
1400:             csrrci     s8, 0x340, 18
                  c.srai     a4, 10
1402:             mulhsu     s10, s11, t0
                  sra        a6, a1, a6
                  srli       s11, a3, 14
                  slli       a6, s3, 6
                  sltu       s7, t0, t0
                  blt        t4, s2, 1423f
1408:             div        s1, a1, a6
                  or         zero, s9, tp
                  c.nop
                  div        s0, tp, a1
                  c.addi     s8, 10
                  bgeu       tp, a1, 1427f
1414:             nop
                  sub        tp, s1, t5
                  fence
                  csrrs      a6, 0x340, ra
                  rem        ra, s2, s10
                  and        s1, sp, a5
                  and        t5, s0, s4
                  slli       s0, t3, 12
                  c.srai     a0, 3
1423:             c.andi     a3, -1
                  ori        s0, s2, -174
                  rem        t5, t3, t5
                  c.addi     a6, -1
1427:             fence
                  csrrci     s1, 0x340, 27
                  slli       s10, t5, 23
                  add        t3, a1, tp
                  slti       a0, a7, 718
                  c.bnez     s1, 1440f
                  sll        a3, s3, s5
                  auipc      s11, 978366
                  mul        a1, a3, s4
                  c.mv       s10, t0
                  c.srli     a5, 3
                  c.srli     a1, 27
                  c.addi     a1, 2
1440:             blt        a1, s10, 1453f
                  nop
                  addi       t6, a6, 617
                  c.or       a1, s1
                  sub        s2, a5, s1
                  slli       a2, s10, 24
                  slti       t6, s10, -317
                  csrrc      s1, 0x340, a7
                  c.xor      a2, s1
                  csrrc      s1, 0x340, t2
                  remu       t0, s10, t5
                  nop
                  mulh       s10, t1, s10
1453:             sra        a1, a3, s0
                  ori        a3, s1, -903
                  sltu       t1, ra, t3
                  srai       t5, t3, 0
                  slt        gp, a7, s1
                  xori       s0, a4, -847
                  bge        zero, zero, 1462f
                  csrrw      t4, 0x340, s6
                  c.or       s0, s1
1462:             c.nop
                  addi       a7, s7, 55
                  rem        a0, t2, a0
                  bgeu       a1, s3, 1470f
                  csrrw      t6, 0x340, t0
                  slli       t4, a6, 6
                  beq        t3, s1, 1471f
                  srl        t6, a2, s3
1470:             andi       s11, t4, -775
1471:             ori        t6, s9, -759
                  bne        s10, t0, 1480f
                  sltu       a4, t2, s0
                  sltu       t3, t1, a6
                  mulhsu     t1, a3, t5
                  srai       s2, a6, 3
                  c.srli     a0, 22
                  divu       zero, s10, a5
                  bne        zero, gp, 1495f
1480:             sltu       t0, t2, s8
                  mulh       a6, t5, s9
                  slli       s7, sp, 18
                  c.slli     a5, 3
                  slti       s4, s8, 720
                  c.addi     gp, 24
                  beq        a3, a1, 1495f
                  add        a7, t2, a4
                  ori        a5, a4, 114
                  srl        ra, a2, t6
                  mul        t1, t1, zero
                  c.nop
                  sltiu      a5, s9, -890
                  bgeu       s4, t3, 1505f
                  sltiu      s7, s9, 508
1495:             xor        gp, a1, a7
                  mulh       a3, a3, s9
                  divu       t4, a5, s3
                  srl        a7, a3, s4
                  bltu       a1, t5, 1510f
                  c.slli     s0, 5
                  csrrc      a4, 0x340, a6
                  div        t5, s0, t5
                  sltiu      a2, a3, -604
                  or         t0, a2, a6
1505:             sll        s10, tp, s8
                  or         s10, s4, s5
                  c.or       s0, s1
                  c.sub      s1, a2
                  c.beqz     a5, 1513f
1510:             bge        t3, s8, 1524f
                  c.mv       t3, a4
                  rem        s11, a5, s10
1513:             csrrc      t5, 0x340, t5
                  slti       s3, s2, 266
                  andi       zero, s3, -91
                  sll        t0, t1, t2
                  c.li       t0, 1
                  slti       a7, s2, -479
                  remu       s10, gp, s9
                  slt        tp, a3, s7
                  csrrw      s5, 0x340, a7
                  srli       s5, s3, 31
                  bltu       gp, s8, 1531f
1524:             xor        s0, s9, s11
                  bgeu       s4, gp, 1534f
                  mulhsu     t4, s11, s8
                  srl        zero, s8, s2
                  mul        a0, zero, gp
                  c.addi     t3, 23
                  csrrci     gp, 0x340, 25
1531:             csrrs      s8, 0x340, t6
                  addi       s11, a3, 809
                  csrrw      ra, 0x340, t4
1534:             sll        s0, s5, a7
                  sltiu      a4, a5, 625
                  csrrc      t5, 0x340, sp
                  c.andi     a2, -1
                  c.nop
                  addi       t5, s4, -82
                  mulhsu     a5, s1, t6
                  ori        a5, tp, -162
                  lui        ra, 572858
                  divu       a1, s10, a0
                  beq        sp, t0, 1553f
                  mul        tp, t1, sp
                  add        s3, zero, s8
                  c.addi     s0, -1
                  c.beqz     a3, 1556f
                  c.slli     s8, 18
                  beq        s6, a0, 1553f
                  slli       t1, s7, 15
                  sub        a7, s6, s2
1553:             nop
                  rem        t6, t6, a4
                  mul        s5, s10, a6
1556:             sltu       t3, s4, s2
                  add        a6, t2, a3
                  mul        t0, s7, s9
                  bne        s9, a7, 1575f
                  mul        s10, a6, gp
                  c.mv       s5, gp
                  c.srli     s0, 22
                  sub        s3, t4, s11
                  sub        s4, gp, zero
                  rem        s10, s2, s11
                  auipc      a3, 854674
                  mul        s3, a3, s0
                  c.srli     s1, 4
                  c.srai     s1, 14
                  c.lui      a5, 31
                  div        a1, t0, s0
                  xori       a1, a4, -178
                  c.slli     t5, 27
                  slt        a3, a0, s10
1575:             bge        s9, a2, 1595f
                  srli       s8, s3, 24
                  c.srli     a4, 15
                  xori       t5, s1, 287
                  c.nop
                  divu       t5, a1, s1
                  div        s1, a4, s1
                  remu       t1, s1, s7
                  slli       t3, a1, 23
                  andi       s4, t5, -624
                  sll        s4, a0, s7
                  and        a5, s1, tp
                  c.srai     a4, 14
                  sub        t4, ra, t1
                  c.nop
                  sltu       s4, ra, t0
                  c.srli     a4, 14
                  add        t0, s1, s1
                  c.li       s10, 6
                  c.addi     a3, 2
1595:             auipc      a2, 855531
                  c.xor      a2, a0
                  c.bnez     a5, 1617f
                  c.xor      s1, a2
                  c.addi     a3, 20
                  c.addi     a5, 7
                  slti       tp, s6, 825
                  srli       s1, a2, 18
                  and        s5, s8, t6
                  c.add      s3, s0
                  add        a5, s9, ra
                  bne        s8, a2, 1622f
                  bne        a4, t3, 1608f
1608:             beq        a4, s10, 1615f
                  or         t5, s10, sp
                  c.addi     a1, 8
                  fence.i
                  or         t0, s10, s9
                  c.andi     s0, 6
                  auipc      s9, 977051
1615:             xori       a1, t2, -777
                  csrrsi     s5, 0x340, 17
1617:             c.slli     a7, 2
                  mulhu      ra, t0, t1
                  bgeu       s4, s8, 1636f
                  remu       s9, t2, a6
                  c.srai     a4, 19
1622:             bne        s3, a1, 1642f
                  c.mv       a4, a3
                  csrrc      tp, 0x340, a3
                  c.bnez     a1, 1637f
                  c.xor      a1, a5
                  fence
                  bge        t2, s11, 1631f
                  csrrs      t6, 0x340, s11
                  csrrs      t6, 0x340, zero
1631:             auipc      t0, 249323
                  bltu       s9, s9, 1645f
                  csrrci     a4, 0x340, 26
                  csrrw      a2, 0x340, t6
                  rem        s0, a0, a7
1636:             c.add      a3, t2
1637:             sub        zero, t4, a5
                  add        a0, s10, a4
                  fence
                  slli       t3, a0, 24
                  fence
1642:             sltu       t3, s9, gp
                  remu       s0, t2, a0
                  bge        a4, tp, 1649f
1645:             nop
                  bltu       a7, tp, 1662f
                  fence.i
                  and        a6, a2, t4
1649:             c.bnez     a4, 1663f
                  remu       s4, s10, t2
                  mulhsu     t5, a1, a0
                  bltu       a5, s8, 1655f
                  csrrsi     s10, 0x340, 23
                  lui        s11, 135170
1655:             auipc      ra, 243518
                  bgeu       s9, zero, 1658f
                  c.slli     s2, 3
1658:             c.lui      s10, 24
                  fence.i
                  csrrs      a5, 0x340, a5
                  sltu       t6, s11, gp
1662:             mulh       a7, zero, s11
1663:             auipc      t0, 394843
                  c.bnez     s1, 1677f
                  sltiu      s0, s2, -418
                  c.mv       t4, a1
                  csrrwi     s8, 0x340, 23
                  blt        s7, s7, 1672f
                  mulhsu     a4, tp, gp
                  c.li       t4, -1
                  csrrci     tp, 0x340, 16
1672:             csrrci     tp, 0x340, 1
                  slli       s5, a1, 21
                  csrrwi     s4, 0x340, 4
                  mulhsu     s11, t4, t4
                  divu       t1, t4, a6
1677:             bge        s11, a3, 1685f
                  divu       t0, s11, a7
                  bgeu       s1, gp, 1690f
                  slli       a1, gp, 21
                  csrrc      s1, 0x340, t2
                  lui        s0, 868195
                  c.lui      a1, 8
                  c.srai     s1, 12
1685:             bge        tp, t0, 1688f
                  csrrc      t3, 0x340, s7
                  c.srli     a0, 1
1688:             blt        s1, gp, 1700f
                  bgeu       s1, t6, 1702f
1690:             slli       zero, t6, 18
                  slti       a0, s2, -347
                  mulh       s2, a3, s1
                  bgeu       a7, a2, 1706f
                  sltiu      s2, tp, -301
                  c.addi     t6, -1
                  slti       a0, gp, 610
                  beq        s4, s4, 1705f
                  csrrwi     s5, 0x340, 0
                  mulh       s5, s10, t0
1700:             slt        a3, s5, gp
                  slti       s11, a3, 658
1702:             c.srai     a5, 27
                  fence
                  bge        zero, s8, 1724f
1705:             mulh       a5, s2, t5
1706:             c.beqz     a0, 1718f
                  andi       t0, a3, 108
                  xori       s11, s1, -183
                  bltu       s4, a4, 1712f
                  csrrwi     a3, 0x340, 16
                  c.sub      a5, a0
1712:             fence
                  andi       a2, a5, -111
                  nop
                  csrrsi     s10, 0x340, 19
                  srli       s2, t0, 17
                  bge        t5, t3, 1730f
1718:             andi       a2, a3, 1003
                  slti       t6, s0, 449
                  add        s2, s11, s0
                  c.sub      a1, a4
                  nop
                  lui        a0, 141499
1724:             csrrs      s9, 0x340, t5
                  bltu       t4, s0, 1728f
                  blt        ra, a0, 1734f
                  divu       s1, gp, s6
1728:             c.li       a2, 8
                  lui        s4, 585056
1730:             blt        t6, sp, 1744f
                  .2byte 0x8032 # kHintInstr
                  csrrwi     a4, 0x340, 17
                  slti       t1, s9, 220
                  bgeu       t5, t6, 1753f
1734:             c.mv       a6, s8
                  csrrwi     t1, 0x340, 1
                  xori       ra, t0, -284
                  andi       ra, s11, -995
                  slt        s7, a5, s0
                  c.addi     a5, -1
                  csrrsi     t4, 0x340, 3
                  csrrw      t6, 0x340, t5
                  srai       s2, a3, 25
                  mulh       s4, s5, a2
1744:             sltiu      tp, zero, 791
                  sub        s3, a5, a3
                  sra        t5, s6, t5
                  c.beqz     a3, 1760f
                  c.lui      a6, 2
                  xori       zero, a2, -74
                  c.xor      a3, a5
                  ori        a4, t1, 483
                  bne        a0, s1, 1765f
1753:             ori        s0, a1, 205
                  remu       a7, s2, s3
                  c.li       t4, -1
                  divu       s7, s1, s1
                  srli       t0, a1, 6
                  addi       t0, gp, -73
                  xori       a4, s11, -1009
1760:             sll        zero, s2, s10
                  c.andi     a5, 28
                  c.sub      a3, a1
                  sub        t1, a5, gp
                  c.slli     t0, 28
1765:             slt        a4, a3, a0
                  csrrw      s11, 0x340, a2
                  fence
                  c.addi     s10, 18
                  div        zero, a3, ra
                  c.add      tp, gp
                  fence.i
                  slli       t4, t6, 13
                  c.andi     a3, -1
                  ori        s8, s7, 1004
                  sra        s4, t2, s9
                  nop
                  divu       s3, t1, s9
                  csrrc      s7, 0x340, s1
                  mulhu      s8, t4, t4
                  c.mv       a0, s3
                  remu       a3, s4, a2
                  c.lui      s1, 21
                  c.andi     a1, 5
                  beq        a4, t5, 1804f
                  srl        a2, a3, a6
                  bge        t5, s10, 1789f
                  bltu       s5, s0, 1798f
                  c.mv       t6, t0
1789:             c.bnez     a5, 1797f
                  srl        t0, s4, s0
                  xori       s2, gp, -672
                  c.mv       s2, a0
                  sll        a5, s7, a0
                  bltu       s3, ra, 1803f
                  c.lui      s1, 19
                  auipc      t6, 674462
1797:             srli       t0, a7, 23
1798:             bltu       ra, tp, 1801f
                  c.slli     a1, 16
                  c.or       a3, a4
1801:             divu       s9, s11, s4
                  srai       a4, sp, 3
1803:             c.xor      a4, a5
1804:             mul        s7, t0, s7
                  xori       a0, t6, -797
                  sltiu      t6, t6, 159
                  csrrwi     a0, 0x340, 11
                  c.sub      a4, a4
                  slt        s1, a2, a6
                  srai       t6, s6, 7
                  beq        tp, s9, 1812f
1812:             csrrw      s7, 0x340, a3
                  fence.i
                  slti       s9, t5, -459
                  rem        a4, a2, t5
                  and        zero, a6, a1
                  sltu       s7, a4, s0
                  slt        s10, t1, s0
                  fence
                  divu       zero, s1, s4
                  ori        s9, a0, -608
                  slli       s0, s1, 21
                  srai       s0, zero, 13
                  c.or       a0, a4
                  c.addi     s7, -1
                  c.xor      s0, s0
                  beq        s6, gp, 1843f
                  c.bnez     a0, 1842f
                  csrrsi     a3, 0x340, 10
                  sra        ra, s1, s1
                  c.sub      a1, a1
                  c.or       a3, s1
                  blt        gp, s2, 1850f
                  sll        t4, s5, a3
                  mulh       a1, t5, s2
                  csrrs      a5, 0x340, a3
                  addi       a0, a5, -918
                  c.andi     a2, -1
                  csrrs      s5, 0x340, s3
                  c.sub      a0, a4
                  c.mv       s7, s3
1842:             c.lui      a2, 21
1843:             ori        t6, a3, -885
                  auipc      s8, 732674
                  add        s8, t2, s4
                  sltu       a4, s6, a2
                  sub        a1, a0, t4
                  divu       s2, s11, a5
                  div        a5, s3, t6
1850:             sll        s0, s8, s9
                  sra        a1, tp, a7
                  c.nop
                  c.li       s0, 29
                  c.addi     s7, -1
                  mulhu      a4, s2, s5
                  nop
                  bge        s8, s5, 1870f
                  c.addi     a4, -1
                  c.andi     a5, -1
                  csrrc      s3, 0x340, a5
                  c.mv       s8, s0
                  remu       t1, zero, t2
                  sll        s0, s9, s2
                  fence
                  nop
                  sll        t5, a1, zero
                  fence
                  c.mv       a1, s0
                  bne        s11, a3, 1871f
1870:             mul        t3, s5, s11
1871:             xori       t6, a4, 167
                  fence
                  c.sub      a3, a5
                  c.li       a3, -1
                  add        t1, a7, a6
                  c.lui      t0, 3
                  lui        a3, 1043598
                  nop
                  and        t0, s0, s0
                  bne        a1, s4, 1885f
                  c.sub      s1, a0
                  c.xor      a0, a2
                  auipc      s2, 707167
                  c.addi     a7, -1
1885:             and        s7, s5, s7
                  c.xor      s1, s1
                  c.mv       a2, s2
                  bltu       gp, a3, 1904f
                  or         t3, s11, s2
                  slli       a4, a2, 28
                  c.slli     gp, 27
                  c.andi     a5, 31
                  mulh       t6, a1, t2
                  sll        s4, s9, a5
                  c.li       t5, 23
                  c.srli     s0, 25
                  slli       a4, s11, 4
                  bge        s6, s3, 1902f
                  auipc      a4, 437339
                  c.or       a3, a1
                  slli       t0, a2, 12
1902:             andi       t1, s4, -367
                  c.srai     a0, 26
1904:             c.nop
                  slt        t6, t4, s2
                  c.add      t4, s11
                  slli       s10, a2, 14
                  addi       s2, s8, -448
                  csrrw      s10, 0x340, s10
                  sltu       t0, gp, s3
                  csrrw      gp, 0x340, s10
                  slt        a7, t0, sp
                  slli       t5, a7, 19
                  csrrs      a3, 0x340, t6
                  xor        a0, a7, s11
                  c.xor      a4, a3
                  c.and      s1, a2
                  c.addi     a0, 7
                  or         s5, a0, s6
                  csrrsi     s9, 0x340, 15
                  beq        s8, sp, 1930f
                  mulhsu     s10, tp, a0
                  sub        t0, a3, a7
                  mulh       s3, a5, zero
                  nop
                  auipc      a3, 144036
                  blt        s8, tp, 1939f
                  or         s1, s7, s2
                  srli       s8, s4, 8
1930:             c.lui      s1, 6
                  c.and      a3, a2
                  ori        a2, a1, 157
                  blt        t2, sp, 1949f
                  srl        s1, s2, s2
                  or         a3, s5, t2
                  lui        s5, 68389
                  mul        a0, a3, gp
                  c.add      tp, a2
1939:             xori       zero, tp, -991
                  c.beqz     s0, 1947f
                  addi       zero, t3, 933
                  c.and      a5, a0
                  csrrwi     ra, 0x340, 15
                  ori        s1, t0, -145
                  mulhsu     a3, a5, t3
                  fence
1947:             c.bnez     a2, 1959f
                  c.and      a0, a3
1949:             add        s4, a6, t3
                  csrrci     a3, 0x340, 31
                  mul        gp, s11, s3
                  mulhsu     a1, s3, t5
                  or         zero, a7, s6
                  slli       s8, a1, 0
                  c.add      s9, s5
                  bne        a1, s0, 1964f
                  c.beqz     a0, 1969f
                  csrrw      t1, 0x340, t4
1959:             rem        a7, t4, sp
                  sll        s0, tp, s3
                  xori       gp, t2, -502
                  nop
                  sltiu      a6, s4, 177
1964:             div        a1, s6, s6
                  c.add      a3, a1
                  csrrs      s7, 0x340, a6
                  divu       zero, s0, ra
                  csrrwi     s11, 0x340, 1
1969:             mulhu      s11, a2, t6
                  slt        a2, s5, t0
                  c.lui      t1, 10
                  sltu       a5, s4, s3
                  mulh       a3, gp, t5
                  c.beqz     a5, 1982f
                  csrrsi     t3, 0x340, 24
                  c.sub      a5, a1
                  c.andi     a1, -1
                  mulh       a2, a5, s0
                  div        tp, s1, s7
                  csrrs      t3, 0x340, t5
                  srl        s8, ra, a5
1982:             c.srli     a3, 26
                  sub        s7, sp, s1
                  c.andi     a3, 26
                  bltu       t0, t1, 2001f
                  bge        a3, t1, 2006f
                  c.bnez     a4, 1988f
1988:             c.srli     a1, 6
                  sub        s1, tp, sp
                  csrrc      ra, 0x340, s1
                  c.li       a4, 26
                  c.lui      s3, 23
                  xor        a0, a6, zero
                  c.or       a2, s0
                  slt        t1, gp, s4
                  divu       a1, a2, s7
                  csrrs      s2, 0x340, a3
                  divu       t4, s5, s11
                  slli       t3, t5, 28
                  sub        s3, s6, s8
2001:             c.lui      s1, 15
                  c.nop
                  sra        s2, a0, t5
                  rem        s5, s8, t4
                  c.and      a2, a0
2006:             c.li       t0, -1
                  and        gp, tp, a3
                  mulh       s0, t4, zero
                  xori       s0, ra, 190
                  sltu       gp, a0, sp
                  fence
                  sltu       a4, s4, a4
                  mul        s11, a0, sp
                  bgeu       s8, s2, 2018f
                  sra        ra, s10, s6
                  bltu       tp, t1, 2036f
                  c.addi     s10, 9
2018:             c.li       a5, -1
                  rem        s8, a3, a6
                  csrrci     tp, 0x340, 13
                  c.srli     a0, 26
                  sub        s5, s5, s4
                  add        a6, t5, t2
                  .2byte 0x003e # kHintInstr
                  c.and      a3, s1
                  mulh       a4, s5, s9
                  c.beqz     a5, 2040f
                  slti       a0, t5, 628
                  c.andi     a5, -1
                  csrrwi     s2, 0x340, 18
                  slli       a0, s6, 7
                  fence.i
                  c.li       a4, -1
                  sub        s3, a5, s5
                  c.li       s11, -1
                  sub        s2, t4, a4
2036:             csrrc      a1, 0x340, a6
                  csrrwi     gp, 0x340, 9
                  xori       a1, s3, -941
                  remu       a6, s5, tp
2040:             bne        a5, s0, 2043f
                  fence
                  c.add      s5, a6
2043:             sll        s10, s6, a5
                  lui        a0, 658794
                  mulh       s9, s0, s1
                  mulhu      s5, s7, s6
                  sltu       s7, zero, s5
                  c.slli     a0, 29
                  c.lui      s11, 21
                  mul        t0, s10, a2
                  ori        a2, s0, -137
                  c.andi     a0, 0
                  mulhu      t1, tp, t5
                  sub        s10, a3, s1
                  sll        s1, t0, tp
                  sra        s7, ra, a4
                  mulh       s0, a3, t4
                  c.add      t0, ra
                  lui        ra, 314257
                  csrrci     t4, 0x340, 7
                  c.mv       t6, s10
                  csrrc      a1, 0x340, a0
                  c.nop
                  c.srai     a4, 15
                  bge        t1, zero, 2068f
                  xori       t0, t3, 631
                  xor        s10, t5, a2
2068:             c.sub      a0, a0
                  csrrw      s1, 0x340, s0
                  ori        a7, s0, 565
                  fence.i
                  rem        gp, t0, s11
                  bne        t1, a7, 2081f
                  sra        s1, s11, t6
                  c.sub      a5, a2
                  divu       tp, t1, t4
                  c.add      t5, a5
                  beq        s11, s9, 2091f
                  sra        s2, s7, s6
                  sll        a5, t6, gp
2081:             ori        s10, s6, 137
                  and        a0, a3, s0
                  mulh       a0, t0, s7
                  bne        t2, zero, 2100f
                  remu       t3, t1, s11
                  csrrw      s11, 0x340, tp
                  c.mv       a7, t0
                  bgeu       s6, a3, 2099f
                  slt        s8, t3, s1
                  csrrs      s8, 0x340, a7
2091:             c.nop
                  add        t5, t4, s1
                  nop
                  .2byte 0x805a # kHintInstr
                  csrrc      a2, 0x340, a4
                  sra        s10, s10, s3
                  c.li       t4, -1
                  rem        t3, a2, a1
                  c.sub      s0, a5
2099:             c.srai     s1, 5
2100:             beq        a6, t2, 2103f
                  xor        t0, s11, s8
                  sltu       a1, s10, s9
2103:             csrrci     s10, 0x340, 13
                  mulh       a2, t4, t2
                  nop
                  c.li       gp, 29
                  rem        a0, s0, s10
                  sltu       t4, gp, a1
                  ori        t5, a5, 980
                  add        ra, s3, a2
                  bltu       a5, s1, 2124f
                  slli       s10, a4, 4
                  bge        s1, a6, 2122f
                  mul        a5, a1, sp
                  mulhsu     a6, a2, s9
                  xori       a5, a2, -848
                  c.add      s8, s6
                  csrrwi     s9, 0x340, 22
                  andi       a4, a4, -58
                  c.add      s7, s5
                  addi       s3, a3, 504
2122:             c.add      s8, sp
                  fence.i
2124:             sll        s5, t2, s2
                  csrrc      t1, 0x340, zero
                  slt        s8, s6, s10
                  sra        s9, t5, gp
                  csrrsi     s0, 0x340, 3
                  add        s10, s10, s3
                  slt        gp, s1, s9
                  bge        tp, t5, 2148f
                  c.andi     a5, -1
                  sltu       a1, ra, s7
                  divu       gp, s7, a3
                  csrrs      zero, 0x340, t2
                  csrrc      t6, 0x340, tp
                  c.addi     s5, -1
                  csrrc      a0, 0x340, gp
                  lui        s5, 491914
                  csrrc      a5, 0x340, s1
                  c.slli     gp, 20
                  csrrci     a6, 0x340, 24
                  fence
                  slti       a7, a1, 489
                  c.srai     a0, 8
                  c.srai     s0, 4
                  fence.i
2148:             csrrsi     t6, 0x340, 12
                  csrrs      s9, 0x340, t0
                  c.or       a4, s0
                  c.srai     a1, 11
                  c.addi     s1, 16
                  lui        a4, 183694
                  la         t1, region_3+293 #start riscv_hazard_instr_stream_16
                  sw         t3, 23(t1)
                  sb         a0, -128(t1)
                  lhu        a0, -27(t1)
                  mulhu      a3, a3, a0
                  c.slli     t3, 20
                  csrrci     s9, 0x340, 4
                  c.srli     a0, 8
                  lbu        a0, -168(t1)
                  sb         s9, -69(t1)
                  lbu        t4, 188(t1)
                  nop
                  sb         a0, -249(t1)
                  slti       t4, a0, -622
                  xor        s0, a3, t4
                  csrrwi     a0, 0x340, 20
                  c.add      t4, a3
                  ori        s0, s0, -497
                  sh         s0, -87(t1)
                  c.lui      a0, 5
                  or         a3, s9, t3
                  andi       a3, s9, -249
                  mulhu      t3, t3, s0
                  sh         t3, -85(t1)
                  lhu        a3, 163(t1)
                  remu       t3, s0, s0
                  sh         a0, 83(t1)
                  auipc      t4, 550558
                  div        t3, a0, t4
                  lbu        t3, -151(t1)
                  nop
                  srl        t3, t3, a3
                  lb         a0, 104(t1)
                  rem        a3, s9, s0
                  c.mv       a0, s9
                  sll        t4, s0, s0
                  c.srli     s0, 3
                  lb         s0, -56(t1) #end riscv_hazard_instr_stream_16
                  c.mv       a1, a1
                  mul        s2, t4, s10
                  c.beqz     a0, 2170f
                  fence.i
                  c.sub      a3, a3
                  mulhsu     a7, t1, tp
                  slti       a5, s6, -490
                  bltu       s9, t3, 2168f
                  c.and      a3, a2
                  c.sub      a5, a4
                  sub        s3, tp, s8
                  sra        s7, a7, s10
                  mulh       s11, a3, s9
                  and        s3, t4, t4
2168:             slli       s1, t4, 24
                  or         tp, t1, a7
2170:             sra        a0, t3, s2
                  mul        a7, s4, a2
                  csrrsi     s9, 0x340, 13
                  csrrci     s0, 0x340, 13
                  csrrwi     s3, 0x340, 24
                  fence
                  c.addi     s7, 17
                  xori       s4, s6, -756
                  sub        zero, t3, a7
                  sll        a2, s6, s8
                  divu       s4, t6, s5
                  remu       s4, t6, t3
                  c.and      s1, a3
                  srli       a0, s5, 18
                  csrrc      s10, 0x340, a2
                  sltiu      t6, t6, 78
                  c.li       t4, 9
                  c.lui      s10, 31
                  mul        t5, s1, t2
                  nop
                  csrrc      s0, 0x340, t0
                  slt        a4, sp, t5
                  c.sub      s0, a2
                  c.sub      a5, s1
                  or         a0, s10, a4
                  csrrs      tp, 0x340, t2
                  csrrwi     a2, 0x340, 3
                  csrrs      zero, 0x340, t2
                  c.bnez     a2, 2214f
                  bgeu       s7, t4, 2219f
                  mul        a6, s9, t6
                  mul        s3, t4, s0
                  csrrwi     a0, 0x340, 16
                  c.or       s0, a0
                  bne        s3, sp, 2217f
                  c.srai     a5, 24
                  andi       a6, t4, 262
                  csrrs      s2, 0x340, s0
                  bgeu       s2, s6, 2221f
                  blt        sp, gp, 2211f
                  bge        s3, s5, 2213f
2211:             ori        t1, gp, -612
                  mulh       s11, t2, s4
2213:             sra        a3, t1, t4
2214:             beq        s3, sp, 2223f
                  beq        s10, a2, 2220f
                  .2byte 0x8012 # kHintInstr
                  c.srai     a4, 19
2217:             blt        s8, t6, 2220f
                  bne        t4, tp, 2219f
2219:             mulhu      s2, t4, s7
2220:             csrrs      t6, 0x340, a2
2221:             csrrwi     zero, 0x340, 25
                  csrrsi     s5, 0x340, 30
2223:             remu       a0, s2, s6
                  csrrwi     t6, 0x340, 19
                  c.and      a2, a4
                  srl        s5, t1, a3
                  sra        s4, s2, s4
                  c.beqz     a1, 2244f
                  blt        t3, s10, 2237f
                  c.or       s1, a2
                  nop
                  mulh       a2, tp, t0
                  addi       gp, a0, -9
                  c.xor      a3, a1
                  sub        t3, zero, s6
                  slli       a4, s11, 13
2237:             andi       s1, sp, 289
                  mulhu      ra, t1, s2
                  srli       ra, s8, 10
                  slli       a6, a7, 5
                  slli       a7, a5, 11
                  add        s5, s0, sp
                  c.bnez     s1, 2263f
2244:             mulh       a7, s11, zero
                  mulh       gp, s9, a2
                  blt        t5, s3, 2259f
                  c.mv       s5, a6
                  blt        t2, s8, 2250f
                  c.and      a5, s0
2250:             c.mv       s0, t0
                  c.li       s4, 14
                  .2byte 0x9012 # kHintInstr
                  sub        a5, a0, a0
                  c.sub      s1, a1
                  csrrs      t3, 0x340, t5
                  c.nop
                  c.bnez     a0, 2263f
                  c.bnez     a1, 2271f
                  slti       s9, s4, 678
2259:             c.slli     a7, 24
                  c.sub      a1, s0
                  mulhsu     s4, t3, s8
                  c.addi     s2, -1
2263:             srl        t0, t1, s2
                  c.xor      a4, s1
                  addi       s2, s11, -55
                  slli       s9, t6, 9
                  c.xor      a1, a4
                  or         a4, a6, ra
                  sll        s3, gp, t6
                  fence.i
2271:             c.addi     a0, -1
                  c.and      a0, s0
                  c.or       a5, s0
                  csrrc      t5, 0x340, s5
                  csrrc      s3, 0x340, zero
                  srai       t3, gp, 19
                  c.bnez     a1, 2280f
                  sub        s3, zero, s0
                  bltu       sp, s1, 2296f
2280:             c.andi     s1, -1
                  bltu       s10, s4, 2301f
                  nop
                  slti       a6, a7, 375
                  sra        t1, s2, t2
                  c.andi     a2, -1
                  addi       s3, t0, -207
                  andi       s2, s9, 624
                  la         t6, region_0+4034 #start load_store_instr_stream_3
                  la         t4, region_0+1919 #start load_store_instr_stream_2
                  la         t5, region_0+257 #start load_store_instr_stream_4
                  la         t0, region_0+4074 #start load_store_instr_stream_0
                  lh         s3, -5(t4)
                  lw         s11, -958(t6)
                  lbu        a0, 0(t4)
                  la         gp, region_0+1143 #start load_store_instr_stream_1
                  lbu        s11, -1067(t6)
                  lw         s11, 7(t5)
                  sh         t5, 6(t0)
                  sb         sp, 9(t5)
                  lhu        s0, 10(t0)
                  sb         s0, -3(t0)
                  lb         s8, -12(t5)
                  sw         a1, 5(gp)
                  lb         s10, -14(gp)
                  lb         s2, -14(t0)
                  sh         s1, 15(gp)
                  sb         s3, 12(gp)
                  sb         s0, -4(t0)
                  sb         s3, -10(gp)
                  lb         s7, -8(t5)
                  sw         s1, -15(t4)
                  lbu        ra, -1494(t6)
                  lw         s10, -15(gp)
                  lb         a3, 12(t5)
                  sb         s2, -8(t4)
                  lbu        a5, 6(t0)
                  lh         a6, -1424(t6)
                  lb         s8, 8(t4)
                  lb         s3, 8(gp)
                  lb         a4, -12(t4)
                  sb         gp, -277(t6) #end load_store_instr_stream_3
                  lhu        s3, -16(t0)
                  sb         s11, -8(t5)
                  lb         a2, 0(gp)
                  sh         s9, -9(t4)
                  sw         s4, -15(gp)
                  sb         s1, 0(t5)
                  lhu        s1, -11(t4)
                  lb         a6, 11(t5)
                  sb         zero, -3(t0)
                  lbu        zero, -5(t5) #end load_store_instr_stream_4
                  lhu        s10, -3(gp) #end load_store_instr_stream_1
                  sb         t3, -16(t4) #end load_store_instr_stream_2
                  sw         s11, 10(t0) #end load_store_instr_stream_0
                  mulh       s3, gp, t5
                  c.beqz     s0, 2309f
                  c.mv       t0, s6
                  srli       tp, a6, 12
                  slti       a3, a3, 550
                  c.and      a3, a5
                  or         t1, a1, s10
                  c.bnez     a2, 2308f
2296:             slt        s3, s8, s10
                  mulh       t1, zero, a6
                  div        t5, a0, a6
                  srai       s1, a0, 16
                  sra        tp, t5, a2
2301:             beq        s0, t6, 2313f
                  nop
                  divu       a5, a2, t2
                  lui        zero, 673372
                  bge        s2, s4, 2314f
                  csrrw      gp, 0x340, s2
                  mulhsu     ra, s4, s0
2308:             c.lui      a5, 28
2309:             mul        a1, a0, s8
                  c.and      a2, s1
                  sltiu      a0, s0, 871
                  nop
2313:             sltiu      ra, sp, -75
2314:             c.or       a2, a1
                  c.addi     s3, -1
                  nop
                  c.sub      a5, a5
                  ori        a3, s8, 75
                  c.add      s2, s10
                  mulhu      s11, t2, s9
                  sltu       s3, a0, a3
                  c.sub      a4, a3
                  bltu       s7, t1, 2331f
                  c.srli     a2, 30
                  c.srli     a0, 16
                  c.lui      gp, 31
                  slli       s11, zero, 21
                  c.lui      t0, 5
                  c.andi     a5, 17
                  csrrsi     a7, 0x340, 30
2331:             csrrs      zero, 0x340, s2
                  slt        a2, s5, t2
                  csrrc      s4, 0x340, t5
                  remu       a1, s4, a7
                  srai       ra, a7, 31
                  bge        t1, s1, 2348f
                  srli       t1, s6, 9
                  bltu       s6, a0, 2346f
                  nop
                  auipc      s3, 224859
                  ori        zero, s2, -453
                  csrrwi     t5, 0x340, 7
                  mulhsu     s11, t6, sp
                  or         a4, s7, a0
                  mulh       a0, s0, s3
2346:             c.or       a3, a0
                  divu       t4, s0, zero
2348:             rem        s1, sp, s8
                  csrrsi     a4, 0x340, 28
                  addi       t4, t3, 124
                  rem        s9, t5, a2
                  c.li       a4, -1
                  auipc      ra, 428911
                  csrrw      a6, 0x340, a0
                  mulh       zero, a4, a4
                  add        t6, t1, a7
                  c.beqz     a3, 2361f
                  rem        s10, zero, t4
                  c.li       t3, 31
                  addi       zero, a7, 208
2361:             c.beqz     a5, 2364f
                  lui        t5, 665584
                  csrrs      s9, 0x340, s0
2364:             mulh       s11, a2, t6
                  sltu       s9, ra, t0
                  add        s7, s11, t0
                  csrrc      s9, 0x340, a0
                  sltiu      t1, s6, -196
                  bltu       a7, tp, 2382f
                  c.add      s7, t5
                  lui        s10, 240824
                  bne        s0, s10, 2377f
                  div        tp, gp, a6
                  bgeu       a1, a4, 2377f
                  sltiu      zero, sp, -878
                  c.add      tp, s8
2377:             c.add      s0, s0
                  c.bnez     a3, 2391f
                  csrrs      t1, 0x340, s11
                  c.srli     a1, 13
                  auipc      t3, 709442
2382:             xor        s4, s0, sp
                  sub        s7, t1, tp
                  srai       t1, s10, 2
                  nop
                  bge        a5, s8, 2395f
                  srai       a7, s8, 13
                  lui        t1, 911542
                  sltiu      s2, sp, -169
                  sll        t3, s2, a6
2391:             nop
                  srai       t5, sp, 28
                  fence
                  csrrw      a7, 0x340, a7
2395:             bgeu       s0, s6, 2406f
                  beq        s7, s2, 2410f
                  slli       t1, s11, 2
                  csrrwi     s11, 0x340, 18
                  xori       a7, s0, 752
                  c.bnez     a2, 2416f
                  mul        t5, a5, a2
                  beq        a2, s0, 2418f
                  bne        a3, a7, 2416f
                  c.addi     s5, 26
                  c.lui      s10, 3
2406:             slt        a7, t6, t0
                  c.xor      a2, a4
                  c.or       a2, a5
                  mulhu      s5, a6, s6
2410:             csrrsi     a1, 0x340, 31
                  xori       t0, t2, 118
                  c.xor      a0, s1
                  xori       ra, s1, -387
                  and        s10, t6, gp
                  andi       t1, s8, -619
2416:             sra        a6, a6, zero
                  bgeu       s2, ra, 2425f
2418:             mulhsu     t5, gp, a6
                  addi       s1, sp, 566
                  srli       a1, t1, 23
                  beq        t4, gp, 2424f
                  addi       a2, t5, -853
                  csrrci     gp, 0x340, 22
2424:             csrrc      a3, 0x340, ra
2425:             c.addi     s8, -1
                  sltu       s10, a6, a0
                  auipc      s9, 508160
                  c.srli     s0, 5
                  c.or       a5, s0
                  add        a3, t0, t3
                  bne        a0, a2, 2444f
                  csrrsi     s1, 0x340, 0
                  csrrwi     tp, 0x340, 19
                  c.add      t4, a2
                  beq        tp, sp, 2444f
                  c.slli     t0, 3
                  fence.i
                  remu       a7, s3, a1
                  c.srai     a2, 27
                  csrrwi     ra, 0x340, 1
                  c.addi     t3, 1
                  c.or       a3, s1
                  c.srai     s0, 31
2444:             andi       a2, a6, 252
                  slt        s5, ra, t2
                  mulhsu     t3, s8, t3
                  srai       t6, t0, 17
                  rem        t1, t1, s10
                  add        s10, a5, tp
                  sra        s3, t1, sp
                  mulhsu     t3, s6, s7
                  csrrci     s3, 0x340, 18
                  rem        t6, t2, a1
                  csrrs      tp, 0x340, s7
                  c.mv       s10, t3
                  divu       ra, s10, s7
                  c.or       a3, s0
                  beq        zero, t4, 2474f
                  c.nop
                  xor        ra, t3, t3
                  slli       a7, a2, 23
                  slt        s7, a2, s2
                  c.srai     s1, 29
                  andi       gp, t1, 991
                  sltiu      s1, s6, -597
                  add        a1, s3, t2
                  c.andi     a2, 22
                  c.andi     a4, -1
                  mulhu      s3, zero, s4
                  c.srai     s1, 30
                  remu       t6, s8, zero
                  blt        s0, t5, 2473f
2473:             c.or       s1, s0
2474:             c.andi     s0, 28
                  bltu       s8, a5, 2486f
                  slli       s0, s7, 11
                  auipc      s0, 805298
                  bgeu       sp, t4, 2485f
                  csrrc      s5, 0x340, s4
                  lui        t4, 983490
                  xor        zero, s2, tp
                  auipc      a2, 199550
                  csrrwi     s8, 0x340, 31
                  divu       t4, a0, a3
2485:             csrrwi     a0, 0x340, 15
2486:             rem        s0, t3, a3
                  sltu       t5, ra, a5
                  csrrs      s8, 0x340, t3
                  c.andi     a4, 19
                  c.srai     s1, 21
                  srli       s8, zero, 25
                  c.or       a4, a4
                  csrrs      a1, 0x340, s2
                  mulhsu     ra, a4, s9
                  ori        s3, s7, -102
                  sll        s5, tp, a7
                  csrrc      s4, 0x340, t0
                  bge        tp, s0, 2511f
                  fence
                  c.andi     a3, 10
                  and        t0, a4, t5
                  mul        a3, s7, a6
                  csrrs      t1, 0x340, t1
                  bgeu       t4, s9, 2508f
                  bge        s7, s2, 2508f
                  mul        a3, t3, s2
                  mulhsu     s7, zero, t1
2508:             csrrsi     s9, 0x340, 1
                  slti       t4, s4, -352
                  c.sub      a5, a2
2511:             fence
                  c.beqz     s0, 2532f
                  c.li       ra, 22
                  c.srli     a0, 10
                  srai       s2, t0, 25
                  remu       gp, s9, t4
                  srl        t5, a1, s9
                  sra        a2, s5, t4
                  divu       t1, t5, t0
                  csrrs      t6, 0x340, s8
                  c.and      a5, a4
                  csrrc      t6, 0x340, s1
                  bge        sp, s3, 2540f
                  blt        a6, a2, 2527f
                  lui        s4, 352834
                  mul        t0, s7, s1
2527:             srai       a1, s6, 30
                  sltu       a3, t6, s10
                  auipc      s11, 490191
                  c.srli     a2, 29
                  csrrs      a3, 0x340, ra
2532:             bge        s0, t1, 2540f
                  div        s8, s3, s4
                  c.and      a4, a4
                  sub        a4, t2, a3
                  c.srai     a2, 12
                  lui        s10, 953599
                  fence
                  sll        t1, t0, t3
2540:             c.slli     t3, 4
                  c.add      s4, a2
                  csrrw      t4, 0x340, s5
                  sltu       a4, t2, ra
                  csrrsi     tp, 0x340, 23
                  sll        t3, s7, s11
                  bne        a5, a1, 2555f
                  c.slli     gp, 29
                  c.srli     a2, 7
                  csrrci     s4, 0x340, 22
                  slti       t5, a5, -167
                  c.and      a3, a3
                  sll        ra, t1, s0
                  c.and      a1, s1
                  csrrw      t0, 0x340, s10
2555:             c.xor      a5, a4
                  c.andi     a1, -1
                  fence.i
                  lui        s3, 439259
                  bge        s5, t0, 2575f
                  srai       ra, tp, 21
                  div        t5, s10, a2
                  srl        s3, ra, s7
                  srl        a4, t2, a1
                  or         t3, t6, s4
                  csrrs      s4, 0x340, a2
                  fence.i
                  c.addi     s3, -1
                  ori        t0, s1, 534
                  bge        s3, s5, 2577f
                  csrrci     t1, 0x340, 11
                  xori       s8, s0, -597
                  c.beqz     s0, 2592f
                  c.beqz     a0, 2586f
                  csrrs      a0, 0x340, s4
2575:             ori        tp, sp, 894
                  bltu       a6, gp, 2578f
2577:             xor        a3, s3, s2
2578:             csrrci     a7, 0x340, 7
                  bne        a2, sp, 2593f
                  lui        t6, 214279
                  c.slli     a6, 19
                  c.srai     a0, 31
                  xori       a6, a7, -652
                  addi       s8, s9, 166
                  c.bnez     a3, 2590f
2586:             rem        s11, s8, t3
                  c.andi     a1, 17
                  c.and      s1, s1
                  c.sub      a1, a1
2590:             sll        t5, gp, t1
                  sltu       a4, t5, s6
2592:             c.andi     s1, 7
2593:             c.nop
                  c.nop
                  beq        sp, ra, 2615f
                  nop
                  andi       tp, s6, -138
                  c.or       s1, s1
                  c.add      s7, gp
                  ori        s9, t3, 337
                  srl        s9, t2, t1
                  c.add      a4, t6
                  sltu       s2, a0, t4
                  c.beqz     a1, 2616f
                  csrrs      s5, 0x340, s9
                  bgeu       ra, t5, 2609f
                  lui        a7, 528816
                  add        t3, t1, a4
2609:             bgeu       s0, s10, 2623f
                  c.srli     a0, 15
                  addi       s0, t0, -136
                  csrrwi     t3, 0x340, 9
                  auipc      ra, 545200
                  srli       a7, s1, 12
2615:             mulhu      a0, zero, s1
2616:             nop
                  c.and      a3, a5
                  blt        a1, t1, 2634f
                  c.addi     t5, 14
                  c.bnez     a5, 2632f
                  c.mv       a5, a5
                  and        t1, gp, ra
2623:             c.lui      s9, 13
                  sra        s1, tp, s7
                  lui        gp, 482238
                  xor        a7, t4, s8
                  bge        s6, s2, 2634f
                  c.nop
                  csrrw      zero, 0x340, t1
                  nop
                  c.li       t6, 26
2632:             srli       a0, s2, 26
                  lui        a2, 362069
2634:             c.andi     a5, -1
                  auipc      tp, 162192
                  add        a0, s1, a4
                  c.or       a0, a5
                  or         t3, s1, s3
                  beq        a0, t2, 2653f
                  c.xor      a2, s1
                  fence
                  andi       a3, s2, -119
                  sra        t1, a7, s1
                  csrrsi     t5, 0x340, 31
                  c.lui      s3, 21
                  ori        a4, t1, 632
                  csrrwi     t5, 0x340, 23
                  xor        t6, t5, sp
                  sltu       s11, zero, t0
                  c.andi     s0, -1
                  srli       s10, s8, 1
                  sub        tp, s10, s7
2653:             csrrwi     s1, 0x340, 15
                  c.li       a4, -1
                  bne        gp, s10, 2658f
                  c.li       t4, -1
                  c.bnez     a2, 2670f
2658:             nop
                  andi       s1, a3, 368
                  sub        t4, a0, t1
                  xori       s10, s2, 853
                  fence.i
                  addi       a1, a2, 464
                  auipc      zero, 537102
                  mul        tp, a6, s8
                  sltu       a5, t3, a7
                  div        s1, a5, a7
                  mul        a0, s10, t5
                  ori        tp, a4, -959
2670:             mul        s3, s10, tp
                  divu       s2, sp, s0
                  csrrsi     s3, 0x340, 1
                  csrrwi     t6, 0x340, 12
                  c.beqz     a0, 2687f
                  div        t4, sp, s2
                  c.srli     a4, 5
                  sll        t1, a4, zero
                  bgeu       gp, s9, 2686f
                  c.beqz     a3, 2695f
                  bltu       a1, s11, 2697f
                  slti       s2, t0, 182
                  beq        s4, a4, 2690f
                  csrrs      zero, 0x340, s5
                  sltiu      s5, s6, -805
                  lui        a0, 946481
2686:             xori       t3, a6, 402
2687:             and        t6, s7, s2
                  bne        s1, a6, 2690f
                  c.beqz     a1, 2700f
2690:             slti       s10, a4, 213
                  c.srai     a4, 19
                  xori       a2, t5, -2
                  c.lui      s2, 17
                  bgeu       gp, t6, 2707f
2695:             sltiu      s3, t6, -330
                  c.mv       s4, a5
2697:             c.or       a5, a4
                  nop
                  srl        t5, s6, s10
2700:             c.xor      s1, a1
                  slti       s2, s6, 602
                  c.li       a4, 12
                  fence.i
                  csrrsi     a3, 0x340, 28
                  srai       gp, s7, 16
                  fence
2707:             c.mv       s0, sp
                  sub        t4, s1, s0
                  nop
                  c.bnez     a5, 2719f
                  div        s10, s10, s11
                  ori        ra, s7, -465
                  bltu       zero, a1, 2725f
                  c.beqz     a2, 2717f
                  c.srli     a0, 26
                  beq        s6, a1, 2732f
2717:             auipc      s11, 742423
                  csrrwi     s9, 0x340, 27
2719:             csrrc      t5, 0x340, a1
                  c.beqz     s1, 2732f
                  sub        a3, t4, a6
                  csrrsi     ra, 0x340, 20
                  xor        s10, t3, s3
                  bltu       s4, a4, 2733f
2725:             sub        tp, s8, t6
                  fence.i
                  sub        tp, a5, a1
                  c.beqz     s0, 2744f
                  lui        a5, 555511
                  fence
                  .2byte 0x0b02 # kHintInstr
                  mul        tp, s7, zero
2732:             mulhsu     s0, a1, s3
2733:             andi       s11, t4, 238
                  slti       s11, s3, 44
                  div        a1, zero, t0
                  c.sub      a3, a4
                  c.srli     a5, 18
                  c.andi     s0, -1
                  blt        t5, t5, 2747f
                  sra        s2, a3, s0
                  div        s3, s4, t4
                  c.and      a2, a3
                  c.or       a1, s0
2744:             c.and      a5, s0
                  c.lui      t1, 21
                  add        s0, t5, s6
2747:             bgeu       a7, t6, 2751f
                  c.and      s1, a0
                  fence.i
                  slt        s9, zero, t3
2751:             mulhu      a7, a7, s10
                  c.xor      a3, a0
                  xori       s3, s2, -203
                  c.add      s5, t3
                  or         s8, t3, gp
                  csrrs      s5, 0x340, s11
                  sltiu      a3, a0, 156
                  fence.i
                  xori       s4, s9, -280
                  bne        a7, s11, 2763f
                  csrrc      tp, 0x340, a2
                  blt        t5, t3, 2782f
2763:             mul        s7, a7, tp
                  csrrwi     a1, 0x340, 4
                  bgeu       t5, a5, 2766f
2766:             srai       s5, sp, 26
                  nop
                  c.slli     s7, 19
                  c.mv       a3, s10
                  c.li       s2, -1
                  c.nop
                  csrrci     s1, 0x340, 19
                  c.add      t1, t6
                  sll        s0, a2, tp
                  csrrwi     t0, 0x340, 3
                  add        a0, gp, s11
                  c.xor      s0, s1
                  divu       s5, tp, a3
                  c.or       a2, s1
                  c.beqz     s1, 2783f
                  mulhu      ra, a7, a4
2782:             c.nop
2783:             c.and      a0, a5
                  c.nop
                  addi       s2, s1, 859
                  xori       s0, a6, -254
                  bltu       s9, t5, 2807f
                  srli       zero, s7, 10
                  nop
                  slti       a7, gp, -984
                  mulhu      s7, t3, s11
                  sltiu      s1, a3, 74
                  add        s2, t1, a7
                  srai       a6, t1, 21
                  mulhsu     t3, gp, t4
                  c.lui      a6, 8
                  c.bnez     a2, 2810f
                  lui        s5, 371865
                  c.li       s2, 28
                  c.nop
                  c.addi     a7, -1
                  .2byte 0x0202 # kHintInstr
                  ori        s4, s7, 3
                  c.mv       a0, t3
                  c.andi     a2, 17
                  rem        t4, t5, gp
                  c.slli     s10, 18
2807:             c.addi     a2, 20
                  srl        s2, a3, t5
                  c.addi     t3, 27
2810:             csrrc      t1, 0x340, t5
                  divu       t6, s3, t0
                  andi       t6, s3, 323
                  fence
                  div        tp, s0, t0
                  ori        s4, tp, 122
                  la         s2, region_4+2189 #start load_store_instr_stream_1
                  la         s10, region_3+399 #start load_store_instr_stream_2
                  lh         a7, 117(s2)
                  lbu        s7, 6(s10)
                  la         s11, region_0+3427 #start load_store_instr_stream_0
                  sb         a5, 5(s10)
                  lh         a1, -197(s2)
                  lw         tp, -15(s10)
                  sh         t3, -1595(s11)
                  lb         t3, -248(s11)
                  lb         a0, -86(s2)
                  sb         t2, -223(s2)
                  lbu        a7, -947(s11)
                  lh         a4, 171(s2)
                  lb         a4, 11(s10)
                  lhu        t1, -1989(s11)
                  sb         a5, 6(s10)
                  lbu        gp, 180(s11)
                  lb         t4, 42(s2)
                  lb         t4, 9(s10)
                  lh         a5, 23(s2)
                  sb         tp, 489(s11)
                  sb         a2, -6(s10)
                  lw         s4, 187(s2)
                  lbu        a3, 10(s10)
                  lb         a6, -1790(s11)
                  sb         s9, 3(s10)
                  sh         s0, 127(s2)
                  lbu        s7, 206(s2) #end load_store_instr_stream_1
                  sb         t4, 10(s10) #end load_store_instr_stream_2
                  lb         t5, -736(s11) #end load_store_instr_stream_0
                  sltiu      a2, t4, -849
                  bgeu       a0, t0, 2837f
                  c.addi     s0, 16
                  and        t5, tp, s7
                  c.li       gp, -1
                  sltiu      t4, a0, -351
                  mul        s9, s6, t6
                  csrrc      zero, 0x340, s10
                  srl        t6, t4, t2
                  csrrwi     t5, 0x340, 17
                  slti       ra, zero, 45
                  ori        s9, s6, -740
                  lui        a3, 566882
                  c.slli     ra, 20
                  c.or       s1, a5
                  mulhsu     s8, s2, a7
                  mulhu      gp, t6, ra
                  csrrs      a1, 0x340, t2
                  addi       s3, s8, 558
                  csrrwi     t3, 0x340, 22
                  sub        t5, a0, zero
2837:             c.andi     a0, 6
                  bltu       t2, s7, 2852f
                  c.nop
                  or         a5, a6, a1
                  c.srli     a0, 2
                  sltu       s0, s7, zero
                  sll        s2, s9, tp
                  srai       t6, s10, 25
                  add        a4, t4, zero
                  c.nop
                  nop
                  sra        a4, ra, t1
                  c.andi     a4, 19
                  sub        zero, s7, s4
                  mulh       s2, gp, s8
2852:             csrrs      t6, 0x340, s11
                  csrrw      gp, 0x340, t6
                  srai       a4, t6, 21
                  add        gp, sp, s5
                  csrrci     a7, 0x340, 8
                  csrrci     s10, 0x340, 3
                  sltiu      ra, a5, 626
                  c.and      a4, a4
                  beq        s6, t1, 2865f
                  mulhu      s4, t3, ra
                  bgeu       t6, sp, 2865f
                  mulhsu     s9, s10, t6
                  lui        a2, 531297
2865:             or         s10, s10, a3
                  slt        s11, s4, t2
                  srai       a6, t2, 30
                  c.slli     gp, 22
                  fence.i
                  mulhu      gp, s5, tp
                  mulhu      s10, t1, a3
                  c.add      s3, a4
                  fence
                  sltiu      a7, t1, 929
                  srli       s7, a0, 12
                  csrrw      t1, 0x340, zero
                  c.addi     t1, 28
                  sltu       s7, a7, t0
                  rem        a7, s11, s3
                  .2byte 0x906a # kHintInstr
                  c.li       t6, -1
                  xor        a1, ra, gp
                  slli       a2, s8, 30
                  bgeu       a2, t3, 2894f
                  c.bnez     a4, 2900f
                  c.nop
                  mulh       a1, t6, s5
                  mulhsu     s7, sp, t1
                  c.lui      t5, 4
                  c.addi     a7, -1
                  c.or       a1, s1
                  xori       s10, s10, -710
                  csrrwi     s3, 0x340, 29
                  slti       s4, s6, -542
2894:             add        a6, a6, s0
                  sltiu      a6, sp, 308
                  blt        a1, s10, 2909f
                  srli       a6, a2, 31
                  sltu       a2, a7, a2
                  addi       s8, sp, 897
2900:             c.beqz     s0, 2905f
                  srl        s11, s11, t0
                  mul        t1, tp, zero
                  c.andi     a3, 20
                  divu       t0, s0, gp
2905:             ori        a0, t0, -65
                  c.andi     a1, 19
                  c.beqz     s0, 2915f
                  slti       t4, sp, 267
2909:             csrrsi     a6, 0x340, 3
                  mulh       s5, t1, ra
                  fence.i
                  bltu       a4, zero, 2928f
                  mul        t1, sp, s9
                  sra        a3, s1, s4
2915:             c.addi     s10, -1
                  xori       s0, a0, 26
                  bgeu       s0, s2, 2931f
                  c.mv       s1, s10
                  or         tp, t2, s6
                  mulh       a2, s10, s8
                  rem        a1, a3, s2
                  rem        s4, t4, t0
                  xori       a5, t1, -223
                  c.slli     s11, 5
                  rem        a7, s10, t0
                  bltu       s10, s0, 2935f
                  div        a5, a6, t4
2928:             slli       s8, a1, 11
                  lui        s5, 322614
                  c.srli     s1, 13
2931:             mulhu      t5, gp, s6
                  csrrc      a6, 0x340, t6
                  c.andi     a2, -1
                  and        s3, a7, s9
2935:             csrrci     t6, 0x340, 12
                  divu       a4, s5, a1
                  c.nop
                  fence.i
                  mulh       a3, t0, s9
                  rem        tp, s1, s7
                  bne        ra, s0, 2954f
                  c.nop
                  c.srai     a5, 2
                  ori        s8, t5, -123
                  bgeu       s4, t1, 2953f
                  mul        s11, s7, a5
                  c.mv       gp, s1
                  bne        t5, s8, 2961f
                  c.slli     t5, 18
                  xori       s11, ra, -826
                  remu       s1, t6, zero
                  xor        gp, s10, t4
2953:             csrrs      a4, 0x340, s1
2954:             c.add      a5, a4
                  nop
                  fence.i
                  sltiu      s11, t3, -85
                  rem        s4, t6, t0
                  c.xor      a4, a2
                  andi       s5, ra, -228
2961:             bltu       t3, a5, 2962f
2962:             blt        t0, s7, 2974f
                  c.or       s1, a1
                  beq        ra, s0, 2967f
                  c.add      a3, s8
                  sltu       s7, t2, s1
2967:             auipc      a2, 313438
                  csrrci     a7, 0x340, 27
                  c.slli     s2, 4
                  rem        a4, ra, s9
                  slti       gp, s5, -53
                  or         a1, s2, t3
                  remu       s8, zero, s10
2974:             c.slli     s9, 9
                  srai       t4, s4, 9
                  slt        a2, s9, s3
                  bltu       gp, a4, 2991f
                  div        t5, sp, a5
                  c.li       s0, 7
                  div        s11, a3, s10
                  xor        a5, a4, s5
                  bgeu       a6, s11, 2989f
                  csrrw      t0, 0x340, gp
                  c.srai     a3, 12
                  bne        s1, s1, 2987f
                  div        tp, t3, zero
2987:             mulhsu     s3, t5, zero
                  divu       gp, s7, a1
2989:             csrrci     a5, 0x340, 0
                  or         s0, gp, s6
2991:             slli       a4, t5, 24
                  c.sub      a0, a4
                  c.and      s0, a1
                  sltiu      a0, a1, -1010
                  c.slli     gp, 22
                  slt        a5, s10, s8
                  xor        s11, s0, s5
                  srai       t4, s9, 17
                  fence
                  slli       a3, a6, 21
                  c.xor      a0, a5
                  c.lui      a0, 8
                  nop
                  csrrwi     s4, 0x340, 31
                  addi       s10, t0, -296
                  xori       a2, tp, 788
                  c.slli     t4, 31
                  c.srli     a3, 2
                  c.nop
                  sra        t1, s5, s0
                  c.slli     a5, 31
                  c.beqz     a0, 3025f
                  c.and      a0, a5
                  divu       s9, a0, s7
                  c.srai     s0, 22
                  slt        ra, s0, a1
                  fence
                  mulh       s11, s2, s2
                  c.addi     s5, -1
                  csrrw      a6, 0x340, s0
                  rem        ra, s6, s0
                  mul        t3, s6, s1
                  divu       a1, sp, gp
                  rem        a3, t1, s2
3025:             srl        a5, t0, s7
                  csrrs      s8, 0x340, t4
                  c.slli     s2, 29
                  c.addi     gp, -1
                  sra        s0, a1, s9
                  c.beqz     a2, 3047f
                  c.and      a2, a4
                  ori        t0, t1, -859
                  c.nop
                  c.andi     a2, -1
                  xor        s1, s3, s9
                  c.xor      a5, a4
                  srli       s5, s6, 6
                  remu       t3, a7, s8
                  div        a5, sp, s7
                  csrrci     s10, 0x340, 20
                  andi       a6, t3, -532
                  mulhsu     s0, s3, a6
                  divu       a0, t4, a5
                  c.add      a3, sp
                  bge        a4, s2, 3065f
                  auipc      gp, 208848
3047:             ori        t6, s7, -118
                  c.beqz     a3, 3051f
                  c.and      a4, a4
                  c.srli     a0, 22
3051:             bne        t4, t0, 3063f
                  .2byte 0x0501 # kHintInstr
                  mulhsu     s11, s3, s5
                  csrrw      s8, 0x340, t1
                  divu       s5, gp, a4
                  srai       t0, a5, 25
                  c.addi     ra, 31
                  csrrwi     t1, 0x340, 8
                  csrrc      t3, 0x340, sp
                  c.nop
                  bge        t5, a3, 3080f
                  div        s7, a7, s4
                  c.mv       a0, s7
3063:             sub        a3, s3, a4
                  c.xor      a1, a0
3065:             slti       a7, t5, -452
                  csrrwi     s9, 0x340, 1
                  auipc      t3, 442407
                  add        t4, s3, gp
                  c.or       s0, a5
                  c.or       s0, s1
                  csrrw      a0, 0x340, a4
                  srli       a0, a2, 0
                  c.srli     a0, 10
                  or         s10, t5, s5
                  csrrs      s9, 0x340, s7
                  sll        ra, s0, t5
                  xor        zero, tp, a5
                  fence.i
                  lui        tp, 307361
3080:             div        a6, t2, s3
                  rem        s5, s0, s11
                  c.andi     a2, 12
                  c.bnez     a0, 3087f
                  c.slli     gp, 28
                  fence
                  rem        t3, s4, a4
3087:             csrrw      tp, 0x340, s6
                  csrrw      a1, 0x340, a7
                  bge        zero, s8, 3105f
                  c.xor      a1, a3
                  addi       s2, t6, 927
                  c.addi     s11, -1
                  mulh       a2, s4, a0
                  add        a2, s10, s2
                  bge        a5, s5, 3104f
                  rem        t3, a5, s10
                  xori       s0, s5, -624
                  addi       a6, s10, -971
                  rem        a5, sp, s10
                  xori       a1, s5, 938
                  c.andi     s1, -1
                  csrrc      a6, 0x340, ra
                  c.lui      s8, 12
3104:             bgeu       s10, s4, 3112f
3105:             remu       ra, a5, s5
                  c.xor      s1, a1
                  fence.i
                  slt        ra, a7, a2
                  c.and      a1, a2
                  sll        s3, a7, a6
                  add        a0, s4, a7
3112:             bne        s0, a0, 3132f
                  mulhsu     s2, s5, s7
                  srli       t0, a4, 6
                  c.sub      a4, a0
                  fence.i
                  csrrs      t0, 0x340, s3
                  c.bnez     a0, 3121f
                  c.and      a1, a0
                  beq        a2, s7, 3121f
3121:             csrrci     t4, 0x340, 11
                  c.addi     s1, 4
                  csrrs      s0, 0x340, s2
                  and        s2, s10, a4
                  csrrci     tp, 0x340, 10
                  mul        s1, t0, s0
                  csrrsi     s7, 0x340, 3
                  c.lui      s0, 30
                  c.nop
                  sll        s10, s9, s3
                  bltu       s7, a6, 3138f
3132:             xor        t4, a4, a5
                  rem        ra, t2, a6
                  c.or       s1, s0
                  c.sub      a0, a5
                  bltu       t4, a1, 3152f
                  c.sub      a4, a2
3138:             sltu       s0, gp, s7
                  mulhsu     t5, a1, s3
                  mul        s8, a1, a6
                  div        s4, t2, tp
                  c.or       s0, a1
                  beq        gp, s1, 3146f
                  srai       s2, t0, 18
                  or         t3, s0, s6
3146:             bne        t0, a5, 3160f
                  bge        a0, sp, 3151f
                  bltu       s9, a0, 3151f
                  c.xor      a2, a4
                  slti       s8, gp, 374
3151:             c.beqz     s1, 3171f
3152:             c.addi     a3, -1
                  c.sub      a5, s0
                  c.srli     a0, 27
                  srli       tp, s5, 10
                  xor        ra, a7, s8
                  srli       a2, s5, 16
                  bne        a2, s8, 3171f
                  auipc      a5, 142545
3160:             remu       a1, a1, t6
                  c.srai     s0, 28
                  ori        a5, sp, 232
                  c.sub      a2, a2
                  andi       s2, t6, 50
                  csrrc      s0, 0x340, t3
                  bne        t6, s8, 3182f
                  c.addi     t6, 13
                  bge        a0, s4, 3176f
                  mulhsu     s4, a5, s4
                  mulhsu     s7, tp, a7
3171:             bne        t5, s3, 3179f
                  andi       a0, s4, 771
                  csrrw      s5, 0x340, gp
                  sub        a1, a3, t4
                  mulhu      t3, s5, s5
3176:             lui        a0, 389904
                  xori       t5, t1, -985
                  c.slli     s7, 6
3179:             blt        s0, s4, 3188f
                  bgeu       a0, a6, 3193f
                  c.add      s4, a5
3182:             c.slli     t3, 8
                  sra        a7, t1, zero
                  and        a3, s3, t0
                  add        a5, s9, t6
                  c.or       a0, s1
                  div        s2, a7, s4
3188:             srli       s8, t5, 24
                  c.srai     s0, 9
                  remu       a1, a6, a1
                  c.li       t4, 9
                  divu       s3, a6, a7
3193:             add        tp, s8, t1
                  c.srli     a4, 25
                  sra        zero, a6, t6
                  srli       zero, a1, 21
                  csrrwi     t1, 0x340, 30
                  divu       tp, gp, s4
                  c.mv       t0, gp
                  add        s5, s0, s10
                  sltu       t1, s3, s8
                  andi       s5, a4, 171
                  slt        a7, t0, tp
                  c.nop
                  xor        a0, s9, a7
                  c.slli     s0, 25
                  and        a3, s5, s1
                  srli       a1, a4, 4
                  srli       s7, a0, 16
                  xori       s1, s6, -951
                  blt        s1, t3, 3222f
                  csrrwi     a5, 0x340, 11
                  c.sub      s0, s1
                  divu       gp, s9, s9
                  c.slli     t0, 2
                  slt        s0, tp, a6
                  fence.i
                  andi       t5, a4, 123
                  and        t0, t2, s11
                  auipc      s7, 910691
                  sltu       a4, a5, s4
3222:             c.add      a0, s1
                  c.sub      a1, a5
                  divu       a0, a4, s4
                  mulhsu     s7, a7, a7
                  beq        a7, s5, 3242f
                  mul        s1, t0, t6
                  addi       s10, s7, 105
                  c.or       a4, a1
                  addi       a7, t6, -301
                  slti       a3, s6, 806
                  slli       s1, zero, 30
                  bne        s10, a2, 3241f
                  addi       s1, t4, 271
                  bge        t1, s8, 3249f
                  xori       a7, t3, 1017
                  remu       s0, t6, a1
                  csrrsi     ra, 0x340, 18
                  csrrs      zero, 0x340, a2
                  c.sub      s1, a1
3241:             bge        s8, t1, 3258f
3242:             bne        t6, a5, 3255f
                  lui        t4, 352809
                  sub        s0, s7, s1
                  slli       s5, ra, 0
                  c.slli     s0, 24
                  mul        s2, a4, a2
                  lui        zero, 470097
3249:             csrrc      tp, 0x340, s9
                  mul        gp, tp, s7
                  c.or       a0, s1
                  c.xor      a4, a4
                  c.beqz     a2, 3256f
                  csrrc      s3, 0x340, a7
3255:             rem        t6, s6, sp
3256:             mulhu      s7, s9, t2
                  c.mv       ra, sp
3258:             c.beqz     a0, 3270f
                  xori       t5, t0, 692
                  slt        s8, ra, t1
                  c.sub      a0, a5
                  slti       a3, s4, 542
                  c.beqz     a4, 3268f
                  sltu       s7, ra, a7
                  lui        a2, 268247
                  c.li       a2, 18
                  sltiu      s7, gp, -397
3268:             c.mv       s1, t0
                  csrrs      t5, 0x340, t5
3270:             c.andi     a0, -1
                  csrrc      s3, 0x340, a0
                  csrrw      t5, 0x340, t3
                  xori       s7, a5, 1007
                  ori        s1, a5, -420
                  mulhsu     a1, t6, s6
                  sll        a3, s2, s4
                  csrrs      s7, 0x340, t1
                  srl        ra, ra, a7
                  mulhsu     t4, s11, s4
                  c.slli     s4, 31
                  c.xor      s1, a4
                  beq        s0, t0, 3302f
                  csrrwi     a1, 0x340, 19
                  sra        a2, t2, a5
                  mulhsu     t5, a1, a0
                  lui        s0, 236049
                  srai       a2, s1, 0
                  srli       a0, s5, 0
                  c.srli     a3, 9
                  bltu       s0, a4, 3310f
                  rem        a3, a4, s3
                  and        s11, s6, a4
                  c.mv       a2, t2
                  c.add      gp, t0
                  xori       tp, t6, -363
                  fence
                  addi       a0, s7, 62
                  sra        s10, sp, a4
                  bltu       a6, s2, 3311f
                  c.lui      t5, 23
                  c.nop
3302:             divu       t1, s4, s4
                  sltu       gp, a6, a5
                  c.li       s7, 23
                  nop
                  mulhu      tp, a6, s3
                  c.andi     a5, 27
                  auipc      tp, 125779
                  remu       s2, s2, s4
3310:             slli       s7, s1, 5
3311:             or         t1, t5, a7
                  csrrci     s2, 0x340, 31
                  sub        s9, s4, s11
                  rem        s1, zero, a7
                  slli       s3, a6, 21
                  bltu       s10, a3, 3329f
                  srai       a1, s5, 10
                  bgeu       a4, a7, 3327f
                  sub        s4, a2, s11
                  or         s5, s6, a3
                  remu       s5, t3, s4
                  fence
                  div        s9, sp, s10
                  sra        s5, gp, a5
                  csrrw      gp, 0x340, a2
                  c.and      a1, a1
3327:             fence
                  fence.i
3329:             c.srli     a1, 2
                  c.addi     a0, -1
                  c.xor      s1, s1
                  fence.i
                  slli       a4, tp, 16
                  c.beqz     a0, 3337f
                  c.beqz     a2, 3337f
                  xori       gp, s10, -994
3337:             csrrw      a5, 0x340, t3
                  rem        zero, a3, a7
                  bge        zero, s0, 3343f
                  blt        a7, s0, 3351f
                  slti       s5, a3, 440
                  c.and      a3, a0
3343:             andi       a5, s8, 1002
                  or         s0, a2, s1
                  mulhu      s11, a2, zero
                  csrrci     s7, 0x340, 11
                  sltiu      s1, a4, 607
                  sltiu      t5, ra, -739
                  srl        s5, tp, zero
                  c.nop
3351:             nop
                  mulh       s5, t3, t0
                  auipc      s1, 904337
                  sra        s4, sp, t3
                  c.beqz     a5, 3375f
                  slti       s7, s4, -134
                  sltiu      s7, t5, -49
                  c.or       a0, a5
                  sltiu      a3, s1, 110
                  or         ra, s11, a0
                  c.bnez     s1, 3374f
                  c.and      a0, s1
                  csrrw      s7, 0x340, tp
                  c.and      s0, a5
                  auipc      s10, 834558
                  c.andi     a1, -1
                  slt        s4, t6, a2
                  csrrwi     s10, 0x340, 22
                  lui        gp, 93031
                  beq        ra, ra, 3386f
                  sltu       a1, s7, a7
                  bltu       a6, t0, 3392f
                  sra        s2, s3, s0
3374:             rem        a0, a4, gp
3375:             and        s5, a4, a5
                  or         s11, zero, a7
                  beq        a0, a6, 3390f
                  c.sub      a3, a4
                  bne        gp, s4, 3395f
                  c.addi     tp, -1
                  add        s7, t2, t2
                  divu       tp, gp, s0
                  c.add      a4, a0
                  c.srai     a3, 3
                  c.beqz     s1, 3397f
3386:             c.mv       a7, t5
                  sll        a0, s1, tp
                  sll        s11, t0, s1
                  c.andi     s1, 22
3390:             slti       s3, t3, -917
                  c.or       a5, a3
3392:             c.srai     a2, 4
                  sll        s9, s4, a7
                  mul        t6, s3, s1
3395:             or         s5, s2, t6
                  bne        t3, a6, 3398f
3397:             fence.i
3398:             bne        tp, t4, 3406f
                  xori       t3, s0, 195
                  c.addi     a6, -1
                  csrrci     zero, 0x340, 11
                  csrrw      s9, 0x340, ra
                  or         s1, ra, t3
                  bgeu       s5, t0, 3417f
                  auipc      s4, 700433
3406:             c.srai     a2, 13
                  csrrwi     s1, 0x340, 10
                  c.xor      a0, a1
                  or         s9, t1, s0
                  c.andi     a3, -1
                  srai       a6, s4, 1
                  bne        s9, s5, 3417f
                  csrrwi     s2, 0x340, 7
                  rem        tp, a7, gp
                  nop
                  mulhu      s9, t0, s11
3417:             fence.i
                  ori        a5, a7, -792
                  div        s7, t2, s7
                  mulhsu     ra, zero, s4
                  csrrs      a5, 0x340, ra
                  auipc      s8, 254771
                  srli       t4, gp, 23
                  sltiu      a6, s6, 999
                  bltu       s11, s8, 3433f
                  remu       a7, sp, a7
                  add        a0, a6, s8
                  mul        t6, ra, t3
                  div        a6, tp, s3
                  c.nop
                  c.beqz     a4, 3444f
                  bltu       a1, t1, 3435f
3433:             and        s10, a0, t0
                  mulh       s5, a1, sp
3435:             c.li       s1, 12
                  c.lui      ra, 13
                  blt        t1, s2, 3440f
                  srl        s9, s5, s10
                  xor        t0, t6, a0
3440:             bge        t3, s4, 3441f
3441:             c.andi     a0, 22
                  c.sub      a0, a3
                  slti       s7, t3, -889
3444:             bge        zero, a7, 3458f
                  blt        s6, s6, 3452f
                  c.lui      s10, 21
                  lui        a1, 501792
                  c.sub      a2, a1
                  srli       t0, t0, 20
                  c.nop
                  slti       a3, a0, -495
3452:             bne        s7, s0, 3472f
                  c.li       s11, -1
                  c.mv       a4, t5
                  div        s8, sp, t2
                  xori       ra, t0, -457
                  rem        gp, s5, a3
3458:             addi       t4, s6, 775
                  xor        zero, s6, t0
                  c.srli     a0, 28
                  csrrsi     a5, 0x340, 24
                  remu       zero, a4, s7
                  mulhu      a4, ra, t2
                  c.beqz     a3, 3473f
                  srl        s7, s1, a7
                  c.bnez     a1, 3475f
                  sltiu      t5, s2, -429
                  slti       s3, t6, 873
                  csrrci     s1, 0x340, 11
                  csrrwi     ra, 0x340, 11
                  lui        a2, 654268
3472:             sltu       a0, s10, s0
3473:             or         gp, a7, s3
                  lui        ra, 233382
3475:             fence.i
                  c.lui      tp, 20
                  xor        t4, a6, s0
                  mulh       a7, s9, t5
                  c.li       s4, -1
                  c.beqz     a4, 3488f
                  and        ra, s7, a6
                  c.nop
                  c.li       a6, 2
                  rem        a3, a7, s8
                  csrrwi     t4, 0x340, 4
                  c.nop
                  csrrci     s7, 0x340, 11
3488:             slti       tp, t5, 856
                  fence.i
                  c.mv       s7, t4
                  xor        a7, t2, s6
                  c.srli     a3, 11
                  sll        s4, a1, s0
                  and        s7, a5, a2
                  csrrc      zero, 0x340, s2
                  add        gp, t5, t1
                  remu       s4, s4, a2
                  bltu       a2, s6, 3512f
                  ori        s11, a0, 313
                  xor        t4, t1, s7
                  c.beqz     a4, 3517f
                  add        t4, s1, t4
                  xori       t4, s0, 728
                  bne        a0, s11, 3507f
                  c.lui      s3, 8
                  bltu       s4, s4, 3518f
3507:             mulhsu     gp, a4, s5
                  csrrw      s4, 0x340, t1
                  auipc      zero, 841260
                  csrrc      a2, 0x340, zero
                  c.nop
3512:             bltu       a3, t5, 3529f
                  c.addi     s0, 31
                  csrrwi     t1, 0x340, 24
                  csrrs      t5, 0x340, ra
                  c.slli     t3, 31
3517:             bne        s0, s10, 3520f
3518:             divu       tp, t2, s6
                  div        a6, a2, t4
3520:             c.add      t6, a4
                  bgeu       a0, a3, 3534f
                  or         a3, s5, s3
                  c.andi     a0, -1
                  c.li       t6, -1
                  c.li       s0, -1
                  remu       ra, s4, a5
                  addi       a2, t4, -954
                  add        tp, zero, s1
3529:             slli       a5, s9, 1
                  and        s2, t4, s6
                  c.lui      a6, 27
                  divu       s0, a4, a1
                  add        t1, s1, a5
3534:             c.lui      a2, 4
                  csrrc      s0, 0x340, t1
                  c.srli     a4, 7
                  mul        zero, a2, s5
                  sll        a1, t6, a4
                  c.bnez     s1, 3542f
                  c.add      a6, gp
                  xori       s5, a2, 461
3542:             c.mv       a5, s7
                  fence.i
                  csrrwi     tp, 0x340, 8
                  csrrwi     t5, 0x340, 23
                  lui        s10, 981744
                  c.nop
                  csrrsi     s2, 0x340, 9
                  fence
                  slli       s10, s3, 24
                  divu       s10, s7, a5
                  c.and      a4, a1
                  srli       a2, s6, 30
                  bltu       a6, s11, 3556f
                  sub        s3, ra, s11
3556:             slti       a0, s2, -459
                  c.beqz     a3, 3577f
                  fence.i
                  mulhsu     a2, zero, s2
                  c.slli     gp, 24
                  nop
                  c.bnez     a3, 3579f
                  ori        zero, s5, 411
                  csrrw      t6, 0x340, tp
                  ori        a2, t6, -665
                  c.or       s1, a3
                  srli       t0, zero, 24
                  sub        s11, tp, t2
                  xor        s7, ra, t2
                  c.bnez     s1, 3586f
                  c.sub      a3, a4
                  slti       a0, s3, 907
                  c.lui      a7, 25
                  sltiu      tp, ra, -109
                  csrrci     t5, 0x340, 16
                  lui        tp, 887153
3577:             lui        s7, 479110
                  mulh       a0, s0, s5
3579:             csrrci     a5, 0x340, 26
                  and        s11, s11, t5
                  csrrsi     s5, 0x340, 20
                  c.li       s9, -1
                  c.li       a1, -1
                  c.add      gp, s4
                  srai       a6, t4, 23
3586:             or         s0, zero, zero
                  csrrs      s0, 0x340, s3
                  slti       a7, s7, -59
                  add        s11, t6, ra
                  csrrc      a0, 0x340, t0
                  divu       a3, t1, s10
                  c.nop
                  c.srai     a5, 12
                  ori        a4, s11, -61
                  sltu       t4, gp, a3
                  csrrwi     s2, 0x340, 2
                  slt        a1, t5, a6
                  c.xor      a1, a3
                  csrrw      s4, 0x340, a4
                  rem        zero, tp, gp
                  bgeu       s11, a3, 3609f
                  srl        a4, s6, gp
                  lui        t0, 679596
                  div        a6, zero, s4
                  csrrci     s10, 0x340, 6
                  mulhsu     s9, sp, t4
                  csrrc      s10, 0x340, s3
                  sltu       a0, zero, s11
3609:             xori       a0, t2, -155
                  auipc      a3, 268051
                  mul        a6, gp, a6
                  c.slli     t4, 30
                  addi       s8, t6, 718
                  csrrw      t6, 0x340, t5
                  xor        s4, s5, s8
                  mulhsu     a4, s7, ra
                  csrrci     a6, 0x340, 3
                  c.and      a4, a5
                  bne        t3, a7, 3633f
                  c.slli     a6, 2
                  sltiu      s7, s6, 632
                  csrrwi     a3, 0x340, 31
                  c.mv       a0, t2
                  beq        gp, s5, 3627f
                  beq        a6, s5, 3641f
                  c.lui      a3, 29
3627:             csrrci     tp, 0x340, 19
                  xori       zero, a3, 106
                  remu       t1, a5, a5
                  c.nop
                  sra        s4, ra, zero
                  c.srli     a3, 6
3633:             bltu       t4, s3, 3637f
                  c.beqz     a5, 3645f
                  mulhu      t1, ra, t4
                  c.lui      t3, 20
3637:             bltu       t0, ra, 3646f
                  auipc      s9, 222436
                  mulhu      s1, s6, a0
                  csrrw      s5, 0x340, sp
3641:             c.nop
                  slt        a2, a0, s10
                  auipc      t4, 800749
                  bne        t0, t6, 3652f
3645:             bgeu       a7, t1, 3657f
3646:             ori        s5, a5, -1020
                  csrrci     s2, 0x340, 8
                  bltu       s3, a2, 3649f
3649:             c.xor      a3, a0
                  csrrsi     s8, 0x340, 1
                  fence
3652:             sub        a1, t3, ra
                  lui        a3, 929308
                  c.beqz     a1, 3657f
                  div        a4, tp, s6
                  nop
3657:             c.and      a4, a1
                  mulhu      s8, s8, ra
                  fence.i
                  c.nop
                  nop
                  c.addi     s10, -1
                  blt        s4, s2, 3676f
                  c.beqz     a2, 3672f
                  addi       t6, t4, 361
                  lui        a5, 588109
                  c.and      s1, s1
                  auipc      s5, 38861
                  mulhu      a5, s6, t5
                  blt        t6, a3, 3690f
                  srai       t4, sp, 20
3672:             csrrw      t3, 0x340, zero
                  addi       s8, zero, 149
                  andi       t5, ra, 652
                  divu       a0, s4, t0
3676:             andi       ra, s6, -999
                  c.addi     s11, -1
                  c.or       a1, a2
                  slli       a3, s8, 31
                  andi       gp, a2, -989
                  .2byte 0x904a # kHintInstr
                  c.or       s0, a4
                  divu       a3, s0, t1
                  slti       tp, a4, -435
                  add        a6, a5, tp
                  c.nop
                  beq        s7, zero, 3691f
                  bge        s6, s6, 3696f
                  mulh       s9, zero, a5
                  slti       s4, s0, 659
3690:             remu       t1, a4, sp
3691:             div        t4, s5, s4
                  beq        a6, a5, 3695f
                  slti       a6, s0, 917
                  ori        s5, s10, -33
3695:             beq        s7, t2, 3707f
3696:             c.mv       t6, s10
                  slti       t4, zero, 162
                  sll        s7, t6, s10
                  rem        t1, a6, s4
                  addi       zero, zero, 122
                  sltu       s4, a1, a3
                  csrrc      a7, 0x340, sp
                  xori       s0, t5, 837
                  c.mv       s1, s1
                  csrrc      a4, 0x340, t2
                  c.and      s0, s1
3707:             c.slli     s11, 27
                  blt        s7, ra, 3721f
                  nop
                  mul        t3, t4, t0
                  c.andi     s0, 15
                  fence
                  csrrwi     s8, 0x340, 20
                  mulh       a7, t1, s9
                  xor        a7, t5, s7
                  mulh       s0, t5, t4
                  c.li       s8, -1
                  c.and      s0, a1
                  c.and      s1, s0
                  c.andi     a2, -1
3721:             sll        s9, s5, s0
                  c.xor      s1, a3
                  mulhu      s8, s5, a6
                  slt        a5, a4, t2
                  c.and      a4, s1
                  csrrc      s2, 0x340, zero
                  csrrsi     zero, 0x340, 28
                  slti       a1, a5, -693
                  bgeu       t0, s8, 3742f
                  rem        t1, t6, t6
                  c.mv       a5, a3
                  c.srli     s0, 7
                  c.srai     s0, 5
                  csrrs      a0, 0x340, a0
                  c.or       a2, a2
                  c.li       a4, 29
                  and        a4, tp, s8
                  srli       a0, tp, 4
                  c.and      a1, a4
                  c.beqz     a4, 3760f
                  csrrwi     gp, 0x340, 26
3742:             ori        s4, a7, -373
                  mulhu      s8, a2, t2
                  c.mv       a5, a4
                  sltu       zero, t6, s0
                  c.lui      a0, 12
                  slti       t6, a1, 813
                  or         s5, s9, s9
                  mulh       t6, s4, s9
                  c.xor      a2, a2
                  c.srli     s0, 11
                  c.beqz     s1, 3759f
                  slti       zero, s11, 879
                  csrrw      a2, 0x340, t1
                  and        a1, s0, s3
                  fence
                  xori       s0, a6, 82
                  andi       s9, t6, -126
3759:             csrrs      t3, 0x340, s0
3760:             sltiu      a3, t5, 710
                  c.nop
                  sltu       t1, t6, s10
                  c.xor      a2, a3
                  blt        t0, t0, 3778f
                  c.srli     s0, 5
                  c.slli     s11, 2
                  srai       s2, t2, 16
                  csrrc      a2, 0x340, t4
                  c.and      a5, a5
                  rem        t0, zero, s2
                  c.xor      a3, a5
                  c.bnez     a1, 3788f
                  slti       t3, s11, 881
                  mulhsu     zero, s8, t3
                  c.or       a5, a3
                  c.or       a4, a5
                  mulhsu     t5, s11, s4
3778:             add        a0, t3, s0
                  slti       zero, s8, -658
                  remu       a5, zero, sp
                  slli       s11, s8, 2
                  sltiu      s11, s6, 892
                  fence.i
                  bge        s0, s4, 3801f
                  mulhsu     s2, t3, sp
                  c.srai     a3, 27
                  nop
3788:             slti       s5, t2, -110
                  slti       a7, gp, -539
                  c.lui      s0, 8
                  bgeu       a6, s8, 3804f
                  c.srli     a5, 29
                  slt        t1, zero, t4
main_20:          jal        s8, 15f
0:                c.j        6f
1:                jal        ra, 3f
2:                c.j        1b
3:                c.jal      18f
4:                jal        ra, 17f
5:                jal        t1, 0b
6:                c.j        16f
7:                c.jal      20f
8:                jal        ra, 13f
9:                c.j        5b
10:               jal        ra, 7b
11:               jal        ra, 9b
12:               c.jal      11b
13:               jal        tp, 14f
14:               c.jal      22f
15:               c.jal      19f
16:               jal        ra, 21f
17:               jal        ra, 23f
18:               c.jal      4b
19:               jal        ra, 10b
20:               c.jal      12b
21:               c.jal      8b
22:               jal        a5, 2b
23:               csrrwi     s1, 0x340, 22
                  addi       s0, s11, -306
                  c.slli     a0, 7
                  rem        a2, t3, s1
                  mulhu      a0, gp, s5
                  blt        t2, t3, 3799f
3799:             csrrc      s4, 0x340, a0
                  c.addi     t4, 23
3801:             srl        t1, ra, s8
                  sra        s9, s0, s2
                  bge        a3, t6, 3808f
3804:             c.slli     a2, 11
                  csrrsi     s9, 0x340, 30
                  or         a1, t5, sp
                  c.sub      a3, s0
3808:             div        t0, s2, s5
                  blt        a5, s11, 3813f
                  c.nop
                  andi       s7, s3, 648
                  srai       s1, s9, 16
3813:             csrrs      a0, 0x340, s9
                  div        a5, zero, a5
                  bge        s8, t2, 3823f
                  rem        a0, zero, a1
                  c.lui      s5, 18
                  c.andi     s1, -1
                  slli       a6, tp, 24
                  csrrci     a5, 0x340, 31
                  remu       a0, a7, t2
                  auipc      zero, 679962
3823:             c.sub      a4, a0
                  csrrs      a3, 0x340, tp
                  fence
                  c.li       a3, 27
                  or         gp, s1, ra
                  remu       t0, tp, a7
                  sra        t6, gp, ra
                  mulh       gp, t5, s9
                  mulhsu     t3, a1, t6
                  lui        s9, 51665
                  fence
                  slt        a2, t2, s9
                  lui        zero, 987008
                  srl        ra, s6, gp
                  c.srai     s0, 4
                  beq        a7, t6, 3851f
                  and        a2, s2, s8
                  c.srli     s1, 24
                  bgeu       gp, t2, 3844f
                  slti       gp, a4, 987
                  c.or       a3, a1
3844:             csrrs      a4, 0x340, a1
                  divu       a6, s9, s11
                  slti       a1, a4, -207
                  c.bnez     a0, 3850f
                  c.bnez     s1, 3856f
                  c.mv       s7, t5
3850:             c.sub      s1, a2
3851:             mul        a3, t0, s1
                  sltu       t0, a6, a4
                  lui        t6, 228960
                  csrrw      t0, 0x340, a7
                  c.or       a3, a4
                  la         s9, region_1+10133 #start riscv_hazard_instr_stream_9
                  c.srli     a3, 1
                  xor        a4, a1, gp
                  csrrwi     a4, 0x340, 26
                  fence
                  mulhu      gp, a4, s8
                  lhu        a3, -11(s9)
                  divu       a3, a4, a1
                  slti       a1, a4, -775
                  auipc      gp, 1001674
                  c.li       a1, 16
                  c.add      t4, gp
                  lb         gp, 9(s9)
                  sb         a3, -3(s9)
                  sb         a4, 14(s9)
                  c.li       t4, -1
                  sb         a3, -4(s9)
                  sh         a1, -5(s9)
                  sb         s8, -10(s9)
                  lbu        gp, 4(s9)
                  fence.i
                  lui        a3, 7926
                  xori       gp, t4, -534
                  and        a4, gp, a3
                  addi       t4, a4, -433
                  lh         a4, 1(s9)
                  nop
                  lw         t4, 11(s9)
                  sh         a3, 7(s9)
                  divu       gp, gp, a1
                  lbu        s8, -7(s9)
                  c.nop
                  sw         a4, -1(s9)
                  sb         s8, 1(s9)
                  c.sub      a1, a3
                  xori       s8, s8, -91
                  c.andi     a3, -1
                  srli       s8, a4, 1
                  rem        gp, a4, a4
                  sltu       s8, a3, a1
                  srl        s8, gp, t4
                  sh         a4, 13(s9)
                  lbu        a4, -3(s9)
                  lbu        a4, -16(s9)
                  sb         gp, 0(s9)
                  rem        a4, a3, a3
                  sll        a4, a4, s8
                  lb         a3, -15(s9)
                  sb         t4, -16(s9)
                  c.srai     a1, 2
                  lb         a4, 9(s9) #end riscv_hazard_instr_stream_9
3856:             c.mv       t3, a0
                  rem        a4, s2, a0
                  bltu       t3, a4, 3870f
                  mulhsu     t0, a6, s2
                  blt        s6, a3, 3880f
                  mulhsu     s11, a0, s9
                  addi       a5, gp, -255
                  mulh       s4, t3, a2
                  fence
                  xor        s10, gp, s3
                  xori       a3, a5, 887
                  csrrci     zero, 0x340, 5
                  c.nop
                  srli       t5, s10, 14
3870:             slt        t3, s10, a0
                  sltu       a1, zero, t3
                  c.beqz     a2, 3883f
                  or         t4, s3, a6
                  csrrwi     s10, 0x340, 8
                  c.andi     a4, 20
                  mulhu      a6, a2, a7
                  xori       a2, zero, -504
                  xori       t1, t0, -202
                  c.nop
3880:             sra        s5, a5, sp
                  beq        sp, a3, 3901f
                  c.srai     a3, 24
3883:             c.srli     a0, 12
                  fence
                  sra        t5, s2, s9
                  lui        s7, 688505
                  bltu       a7, a2, 3900f
                  mulhsu     s5, s2, zero
                  csrrc      gp, 0x340, a2
                  add        a6, ra, s0
                  c.andi     a0, 11
                  c.li       s5, 3
                  c.add      t1, a5
                  slt        s2, s10, s1
                  fence.i
                  fence.i
                  c.bnez     a5, 3904f
                  bne        s9, s6, 3912f
                  srl        s3, t1, t2
3900:             srl        s4, s4, ra
3901:             c.srli     a4, 9
                  c.add      s7, s11
                  c.addi     a5, -1
3904:             c.addi     s8, 15
                  srli       zero, s11, 23
                  c.slli     a3, 8
                  slti       ra, a7, 324
                  nop
                  auipc      s8, 591358
                  c.srli     s0, 30
                  sra        a2, t2, sp
3912:             andi       ra, a7, -137
                  c.srli     a4, 5
                  csrrs      a6, 0x340, a7
                  bltu       zero, s11, 3928f
                  c.xor      a5, a2
                  rem        a7, a1, zero
                  c.and      a1, a5
                  or         a1, s2, s0
                  c.mv       a3, a6
                  srli       t4, s2, 5
                  c.beqz     s1, 3938f
                  sll        s10, s1, t1
                  mul        s0, s4, s7
                  addi       t5, s8, -702
                  bne        s0, tp, 3942f
                  or         a4, zero, ra
3928:             sltiu      s1, s4, 722
                  beq        t4, s4, 3932f
                  srl        a5, a4, s9
                  bge        s11, t4, 3940f
3932:             add        a0, t3, s8
                  c.mv       tp, s6
                  mulhsu     a5, s2, a4
                  andi       s10, t6, 716
                  csrrsi     t1, 0x340, 16
                  c.or       s0, a3
3938:             fence.i
                  sll        t3, a4, s1
3940:             and        t5, s5, s11
                  c.or       a4, s0
3942:             csrrci     a3, 0x340, 21
                  fence.i
                  fence
                  addi       gp, t4, -172
                  csrrwi     s3, 0x340, 25
                  sra        a3, a1, zero
                  sll        s4, t0, t1
                  srl        t5, s8, s10
                  remu       a0, t1, a7
                  c.xor      s1, a3
                  c.mv       ra, s8
                  bge        a1, s10, 3961f
                  slli       a1, a1, 29
                  c.srai     s0, 7
                  c.li       t4, -1
                  c.sub      a5, a1
                  slli       a5, t0, 20
                  divu       s10, gp, a1
                  c.mv       a2, t3
3961:             fence
                  c.beqz     a0, 3974f
                  fence
                  csrrw      t5, 0x340, t3
                  nop
                  c.bnez     a2, 3968f
                  c.andi     a5, 3
3968:             srli       ra, t1, 16
                  andi       s0, s10, 593
                  c.srai     a1, 2
                  rem        tp, s1, ra
                  c.andi     a2, 0
                  c.or       s1, a1
3974:             c.and      s1, s1
                  xori       s1, s7, -572
                  c.srai     s0, 22
                  c.xor      a3, a1
                  c.addi     s0, -1
                  csrrci     s11, 0x340, 9
                  lui        t6, 836173
                  mulhu      s10, s4, a4
                  mulhsu     a5, t1, t6
                  bgeu       s7, t2, 3999f
                  slli       a3, t2, 30
                  bge        s0, sp, 4005f
                  mulhsu     s4, t0, gp
                  mulhu      a0, t0, tp
                  sltiu      t1, a4, -124
                  xor        t0, tp, s10
                  c.addi     s11, -1
                  ori        s10, t2, 891
                  mul        a5, s0, s11
                  beq        a5, s9, 4002f
                  csrrwi     s0, 0x340, 15
                  c.sub      a2, a4
                  slt        t0, t2, s11
                  or         s10, s8, tp
                  c.and      a3, s0
3999:             mulhsu     t0, s4, gp
                  mulhu      s3, t1, t0
                  blt        s6, a3, 4004f
4002:             add        s3, s3, s0
                  bgeu       s10, s0, 4017f
4004:             csrrwi     s8, 0x340, 3
4005:             beq        a2, s6, 4012f
                  mulhu      tp, s0, s0
                  mul        s0, s5, gp
                  csrrwi     zero, 0x340, 23
                  fence.i
                  fence.i
                  blt        s5, t5, 4014f
4012:             bgeu       s4, s10, 4015f
                  rem        s3, t0, zero
4014:             sltiu      t1, t3, -41
4015:             fence
                  slt        a0, a4, t0
4017:             c.nop
                  remu       s3, s8, a4
                  c.srai     a3, 11
                  rem        s1, t6, sp
                  slt        s1, s5, t4
                  c.bnez     s1, 4033f
                  sltu       a6, a5, t6
                  rem        a1, s1, s5
                  mul        s4, a3, s2
                  ori        s9, a7, 60
                  srli       a0, t2, 6
                  c.addi     s7, -1
                  c.andi     a3, -1
                  bne        s1, s7, 4043f
                  c.addi     a3, 14
                  bne        s11, s10, 4040f
4033:             c.xor      a1, a3
                  fence
                  slt        s1, gp, tp
                  c.xor      a3, a1
                  fence
                  sra        s3, gp, s9
                  or         a6, s7, a4
4040:             sltiu      s10, s4, -624
                  divu       a3, t6, s6
                  srl        s7, s8, s9
4043:             c.mv       a4, s9
                  c.sub      s1, a0
                  sltu       a2, t3, a3
                  auipc      a2, 512426
                  bgeu       a0, zero, 4052f
                  csrrc      s3, 0x340, s7
                  remu       s8, s4, t1
                  remu       t1, t6, t2
                  bltu       s7, a0, 4055f
4052:             csrrw      a2, 0x340, s7
                  c.mv       t0, s6
                  c.slli     a3, 11
4055:             div        gp, zero, ra
                  div        s9, s7, s11
                  csrrc      a3, 0x340, t5
                  csrrci     t5, 0x340, 14
                  mulhu      a6, s11, a2
                  bne        a2, t2, 4069f
                  srl        gp, zero, t6
                  c.lui      s10, 4
                  c.bnez     s0, 4083f
                  divu       zero, s11, sp
                  auipc      s10, 365057
                  c.bnez     a3, 4074f
                  c.sub      a1, s0
                  sltiu      t1, s10, -1016
4069:             addi       a5, t0, -131
                  csrrci     t1, 0x340, 13
                  and        s7, a1, s10
                  slt        zero, sp, s7
                  xor        a0, ra, ra
4074:             c.srli     a1, 1
                  c.srai     s1, 16
                  c.mv       gp, a0
                  c.slli     a2, 4
                  c.or       s0, a0
                  and        t1, zero, zero
                  slti       ra, a3, 987
                  blt        t1, t1, 4089f
                  c.xor      a5, a4
4083:             csrrwi     s2, 0x340, 7
                  sub        s7, a6, t0
                  c.srai     a4, 10
                  csrrc      s9, 0x340, t5
                  srl        t5, a1, s1
                  la         a1, sub_1
                  addi       a1, a1, 503
                  sra        t5, a5, s4
                  sub        s4, zero, t5
                  csrrc      a7, 0x340, s1
                  mulhu      zero, a0, s2
j__main_sub_1_1:  jalr       s8, a1, -503
                  sra        a6, s2, a6
                  slt        gp, a0, a1
                  slti       t5, a0, -277
                  sltiu      a6, gp, -839
                  or         a4, a0, a5
4089:             bltu       t6, a6, 4109f
                  csrrci     s11, 0x340, 23
                  div        s11, t5, t2
                  c.and      s1, a2
                  or         t0, s8, a7
                  andi       s3, sp, 387
                  sltiu      t6, a4, -574
                  c.srai     s1, 3
                  c.sub      s0, a2
                  srli       gp, t6, 12
                  lui        s4, 424312
                  csrrwi     s2, 0x340, 23
                  .2byte 0x4061 # kHintInstr
                  c.addi     a7, 27
                  beq        a2, tp, 4104f
                  bgeu       a0, s8, 4119f
4104:             or         a7, t4, t6
                  remu       gp, tp, t1
                  mulh       t0, s1, t2
                  c.slli     s5, 14
                  div        a1, t3, ra
4109:             csrrs      s1, 0x340, s7
                  csrrs      t1, 0x340, s5
                  c.sub      a3, s1
                  divu       s4, s11, s8
                  and        t5, t2, s5
                  or         a4, s9, a2
                  or         a5, s3, sp
                  bgeu       s10, t5, 4129f
                  c.slli     s8, 3
                  csrrc      a1, 0x340, tp
4119:             csrrw      s5, 0x340, gp
                  c.nop
                  c.add      s8, s0
                  sub        t4, t5, t1
                  c.lui      s2, 29
                  ori        a3, t0, 734
                  c.andi     a3, 22
                  bge        zero, a2, 4139f
                  sub        gp, tp, s3
                  c.bnez     a5, 4142f
4129:             sub        a6, s5, s9
                  nop
                  sub        zero, t5, a1
                  srl        a0, t2, s7
                  slt        t5, t0, t6
                  c.beqz     a4, 4146f
                  .2byte 0x5061 # kHintInstr
                  csrrc      ra, 0x340, zero
                  csrrwi     t3, 0x340, 10
                  csrrsi     a3, 0x340, 16
                  slti       ra, a3, -381
4139:             c.add      s0, s3
                  sub        tp, t3, s0
                  c.sub      a0, s1
4142:             c.srli     s0, 27
                  srl        t1, s10, s10
                  blt        a5, a6, 4153f
                  mulh       t0, a4, t2
4146:             slli       s4, s5, 22
                  mulhsu     s8, gp, t3
                  sra        t5, s11, s10
                  bgeu       a6, t1, 4150f
4150:             slli       s0, s3, 7
                  csrrc      a3, 0x340, s9
                  c.li       gp, 11
4153:             csrrci     tp, 0x340, 10
                  mulhu      s5, a7, a5
                  divu       a4, a4, ra
                  c.xor      s1, a3
                  fence.i
                  c.nop
                  fence
                  srli       a5, s1, 19
                  xor        a5, a3, a0
                  la         s9, region_0+3041 #start riscv_load_store_rand_instr_stream_1
                  lb         s2, 38(s9)
                  srai       a2, s1, 6
                  lhu        a0, 39(s9)
                  sb         s0, 36(s9)
                  lhu        s2, -7(s9)
                  lbu        s8, 3(s9)
                  sb         a4, -32(s9)
                  c.nop
                  lb         s1, -29(s9)
                  mulhu      a2, s4, s3
                  lbu        t4, 23(s9)
                  lbu        a7, 23(s9)
                  lb         a4, -14(s9)
                  rem        s7, a2, a3
                  sb         gp, -11(s9)
                  lb         a0, -20(s9)
                  sltu       t0, a2, s6
                  lb         t6, -24(s9)
                  lb         s0, 9(s9)
                  sb         t5, 8(s9)
                  auipc      a4, 151300
                  csrrwi     s5, 0x340, 29
                  lw         a0, -53(s9)
                  mulh       a3, s7, a4
                  lbu        s4, -49(s9)
                  c.sub      s0, a5
                  lb         s4, -41(s9)
                  slti       a0, a5, -561
                  sb         t3, -48(s9)
                  lbu        a2, 39(s9)
                  lb         t3, 14(s9)
                  c.li       s1, -1
                  sh         tp, -35(s9)
                  sll        a6, s2, a4
                  lb         s10, -3(s9)
                  lh         a7, 47(s9)
                  lbu        s5, 16(s9)
                  lhu        a4, 11(s9)
                  sw         t0, 43(s9) #end riscv_load_store_rand_instr_stream_1
                  xor        s1, s2, s10
                  c.and      a1, a3
                  c.bnez     s0, 4178f
                  add        a7, t5, a1
                  c.mv       t5, a3
                  srai       s3, s6, 10
                  div        gp, a1, s3
                  sra        s10, a6, a1
                  slt        s4, s2, s4
                  c.srli     a0, 11
                  csrrci     t6, 0x340, 25
                  c.andi     a3, 26
                  or         s4, s0, s6
                  mulh       a5, s1, s5
                  c.srli     a5, 17
                  c.srai     a5, 12
4178:             csrrs      a0, 0x340, s1
                  mulhsu     t6, a1, a7
                  c.add      a2, a3
                  lui        s9, 46283
                  csrrsi     t3, 0x340, 16
                  c.mv       ra, s9
                  slt        t0, tp, a3
                  bgeu       s0, a5, 4201f
                  bgeu       s6, s0, 4189f
                  c.nop
                  slli       a5, s3, 22
4189:             c.add      s10, t0
                  mulh       t6, s5, s11
                  mul        t6, t6, s0
                  bltu       sp, a3, 4212f
                  mul        s11, t6, t4
                  c.slli     s7, 16
                  lui        gp, 273778
                  add        a5, t1, s1
                  fence.i
                  c.or       a2, a0
                  slti       ra, s9, -343
                  andi       a2, a6, -146
4201:             andi       s10, t1, -321
                  remu       s7, t3, a7
                  csrrci     t5, 0x340, 13
                  slti       s10, s9, -818
                  mulhsu     t1, s9, s4
                  auipc      s1, 722423
                  c.nop
                  csrrci     s8, 0x340, 31
                  mulhsu     t0, ra, s11
                  remu       s10, a6, s3
                  sll        zero, s7, s10
4212:             lui        s3, 128742
                  slli       ra, sp, 17
                  div        s5, s9, a6
                  c.or       a5, a3
                  ori        ra, s5, -964
                  sub        ra, t1, s11
                  slti       tp, zero, 524
                  sub        t3, s2, a5
                  c.bnez     s1, 4232f
                  nop
                  or         s7, t0, s8
                  xori       a1, s5, -493
                  csrrc      a2, 0x340, s8
                  c.xor      s1, a1
                  c.mv       s0, s9
                  sltu       t1, s1, a6
                  mulh       a5, zero, sp
                  lui        s4, 485264
                  fence.i
                  remu       s11, t4, t3
4232:             csrrci     s4, 0x340, 29
                  nop
                  sra        a6, s2, a1
                  blt        a0, a3, 4238f
                  divu       a7, s0, sp
                  sll        s9, s7, t0
4238:             sltu       s4, ra, s10
                  slli       s11, s0, 5
                  csrrci     a5, 0x340, 26
                  c.xor      a5, a3
                  and        s7, t2, s10
                  ori        s7, a6, 711
                  csrrc      a4, 0x340, a7
                  mulhu      s1, s1, gp
                  c.srai     a4, 31
                  slti       a3, a3, -833
                  sra        t3, a5, a6
                  c.li       a3, 2
                  sll        a0, zero, t6
                  mulhsu     a1, s2, s6
                  c.slli     a5, 24
                  remu       s9, a6, t5
                  mulh       s8, gp, a4
                  c.bnez     s0, 4268f
                  add        a4, s6, a6
                  c.addi     s1, 31
                  mulhu      a0, s7, s10
                  add        t3, s1, zero
                  ori        gp, s2, 980
                  slli       a2, t6, 9
                  fence.i
                  c.srai     a4, 12
                  csrrw      a5, 0x340, gp
                  c.srai     a1, 28
                  csrrs      s10, 0x340, s7
                  sltu       s4, gp, s10
4268:             rem        a0, sp, s4
                  sltiu      s9, s5, 521
                  csrrwi     a1, 0x340, 19
                  mulhsu     zero, t3, s8
                  c.srli     a1, 30
                  nop
                  slti       a1, s7, -660
                  c.xor      a0, a2
                  xor        s8, t1, t5
                  bgeu       tp, a5, 4293f
                  c.srli     a2, 18
                  bge        ra, tp, 4296f
                  blt        s7, s2, 4291f
                  auipc      s10, 108622
                  divu       s5, t4, a5
                  sltu       a3, s4, s5
                  sltiu      gp, a2, 1020
                  beq        s11, zero, 4290f
                  c.addi     s7, 8
                  c.andi     a1, -1
                  c.lui      s8, 16
                  c.lui      s11, 15
4290:             and        a7, t3, s2
4291:             c.lui      s11, 16
                  c.sub      s0, a5
4293:             slli       a3, s5, 7
                  .2byte 0x603d # kHintInstr
                  divu       t0, s4, s1
                  bge        s9, t4, 4301f
4296:             bltu       t4, s7, 4301f
                  c.and      a3, a5
                  c.or       a2, a0
                  and        t3, ra, t6
                  csrrci     t3, 0x340, 19
4301:             c.nop
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi       sp, sp, -8
                  c.addi     a1, -1
                  c.srli     a0, 22
                  sw         s8, 4(sp)
                  csrrci     a3, 0x340, 21
                  sll        a4, s4, a0
                  la         tp, region_4+3275 #start load_store_instr_stream_2
                  la         a2, region_4+1030 #start load_store_instr_stream_1
                  la         t1, region_4+913 #start load_store_instr_stream_3
                  sb         s1, -22(tp)
                  la         s10, region_4+3350 #start load_store_instr_stream_0
                  lb         a1, 136(s10)
                  lb         s11, -62(tp)
                  sb         s2, 179(t1)
                  lh         t3, -159(t1)
                  lb         gp, 117(a2)
                  lbu        t3, 1439(a2)
                  sb         t4, -205(t1)
                  lb         t5, 462(a2)
                  lbu        t3, -812(tp)
                  lbu        s4, 41(t1)
                  lb         a1, -1968(s10)
                  sb         a7, 1871(a2)
                  lb         s8, -885(s10)
                  lb         t4, 616(a2)
                  lbu        s1, -131(s10)
                  lhu        s1, -912(a2)
                  lbu        a3, -1450(tp)
                  lbu        gp, 255(s10)
                  lh         a0, 227(t1)
                  lb         t0, -245(tp)
                  sh         a7, -726(a2)
                  sb         s9, -1769(s10)
                  lbu        s8, -1537(tp)
                  lbu        s9, -103(t1)
                  lb         s5, -1388(tp)
                  lb         t0, -97(t1)
                  lbu        t6, -1435(s10)
                  sb         s10, -1654(tp)
                  lbu        gp, -104(t1)
                  lb         ra, -1021(s10)
                  lbu        t5, 1111(a2)
                  lb         s8, 73(s10)
                  lbu        gp, 207(a2) #end load_store_instr_stream_1
                  lhu        t4, -1187(tp) #end load_store_instr_stream_2
                  lb         t3, -163(t1) #end load_store_instr_stream_3
                  sb         s0, -1159(s10) #end load_store_instr_stream_0
                  la         t5, region_3+136 #start riscv_hazard_instr_stream_0
                  sb         t0, 92(t5)
                  lb         s7, -124(t5)
                  sub        s7, t0, t0
                  nop
                  c.or       a5, a4
                  lh         t0, 186(t5)
                  lb         a5, 161(t5)
                  csrrs      a7, 0x340, t0
                  c.add      ra, a4
                  addi       ra, s7, -963
                  divu       a5, a5, s7
                  slli       a7, a5, 8
                  sb         a4, 25(t5)
                  xor        a7, s7, ra
                  lb         a4, -45(t5)
                  lh         a7, 176(t5)
                  lbu        a4, 19(t5)
                  lb         ra, -39(t5)
                  divu       a4, a4, ra
                  lbu        s7, -62(t5)
                  lbu        s7, -94(t5)
                  csrrc      a5, 0x340, a7
                  lbu        s7, 147(t5) #end riscv_hazard_instr_stream_0
                  la         t0, region_2+2879 #start load_store_instr_stream_1
                  lb         s2, 335(t0)
                  la         a0, region_0+3070 #start load_store_instr_stream_0
                  lbu        t5, 7(a0)
                  lh         s0, 12(a0)
                  la         s4, region_3+22 #start load_store_instr_stream_2
                  .2byte 0x8781 # kHintInstr
                  sb         t3, 896(t0)
                  lbu        a7, 12(a0)
                  lhu        s7, -4(s4)
                  lb         s0, -1468(t0)
                  sb         a0, 16(s4)
                  lbu        t3, -1(a0)
                  sh         s0, -883(t0)
                  lb         s0, 9(a0)
                  lbu        gp, 13(a0)
                  sb         a0, 16(s4)
                  sb         s3, 11(s4)
                  lb         t3, 970(t0)
                  lbu        tp, 15(s4)
                  lb         a4, -6(s4)
                  sb         t1, -664(t0)
                  lb         t4, -2(a0)
                  lbu        s0, -4(s4)
                  lb         tp, -1440(t0)
                  lb         gp, -1268(t0)
                  lbu        ra, 15(a0)
                  lbu        t5, 364(t0)
                  lhu        s0, 16(s4)
                  sh         t5, 16(s4)
                  lbu        s2, 7(a0)
                  sb         t3, 5(s4) #end load_store_instr_stream_2
                  lbu        a2, 322(t0) #end load_store_instr_stream_1
                  lw         a2, 6(a0) #end load_store_instr_stream_0
                  la         a3, region_3+185 #start riscv_load_store_rand_instr_stream_0
                  nop
                  c.xor      a0, a3
                  ori        s5, a6, 716
                  divu       a5, t2, s9
                  lb         s2, -44(a3)
                  sra        s10, a6, a0
                  c.or       a4, s1
                  lhu        t4, -21(a3)
                  lbu        t1, 61(a3)
                  lhu        a0, 33(a3)
                  srl        t3, s2, s0
                  div        t4, a5, a3
                  srli       a5, s0, 13
                  sb         a6, -44(a3)
                  addi       t6, t0, -461
                  srl        gp, a1, s6
                  sb         s6, -52(a3)
                  sb         a2, 34(a3)
                  sb         s3, -37(a3)
                  lh         s4, 29(a3)
                  lb         s10, -18(a3)
                  c.andi     s0, 7
                  lb         s0, 53(a3)
                  csrrs      s11, 0x340, gp
                  lbu        s0, 60(a3)
                  lb         a7, 9(a3)
                  lb         a6, -39(a3)
                  lui        a4, 881963
                  csrrs      s5, 0x340, a7
                  sb         s10, -29(a3)
                  lbu        s0, 63(a3)
                  remu       s8, s3, t1
                  lbu        s10, -22(a3)
                  fence
                  csrrc      t6, 0x340, a4
                  lb         a4, 34(a3)
                  sub        s2, ra, s7
                  lb         gp, -19(a3)
                  lbu        t5, 0(a3)
                  auipc      tp, 196716
                  csrrwi     s2, 0x340, 28
                  lh         s4, 33(a3)
                  mulh       a1, gp, t3
                  srai       s1, ra, 25
                  lb         s8, -8(a3)
                  sra        a6, a2, a1
                  lbu        zero, -2(a3)
                  slt        t1, s2, s3
                  c.xor      a4, a4
                  sb         a0, -33(a3) #end riscv_load_store_rand_instr_stream_0
                  csrrw      a0, 0x340, s11
                  srli       s8, tp, 7
                  mulhsu     a5, t3, t4
                  divu       t6, s7, zero
                  sltu       a3, tp, s3
                  sra        gp, s1, a5
                  mulh       s9, s10, t2
                  c.mv       s3, t3
                  sub        a1, a3, tp
                  c.bnez     s1, 20f
                  ori        s7, t0, 571
                  mulhsu     s7, s3, s7
                  bltu       t0, t2, 22f
                  c.sub      s0, a2
                  csrrc      s2, 0x340, s9
                  nop
                  sltiu      s3, t4, -925
                  c.sub      s1, a1
                  c.addi     a6, -1
                  csrrs      t1, 0x340, a5
20:               csrrs      zero, 0x340, tp
                  or         s2, a0, t3
22:               addi       t3, a4, -96
                  c.bnez     s1, 34f
                  and        t5, a7, t6
                  csrrwi     a5, 0x340, 10
                  bge        a4, a7, 41f
                  lui        s2, 521514
                  c.add      a2, a5
                  xor        s1, s1, s2
                  bge        a5, s3, 35f
                  mulh       a5, t6, t0
                  lui        s0, 52739
                  nop
34:               c.beqz     a3, 35f
35:               bge        s9, a7, 42f
                  mul        a6, s0, s2
                  sll        a7, s8, a1
                  c.andi     a4, 9
                  csrrsi     a5, 0x340, 16
                  or         tp, sp, tp
41:               nop
42:               remu       s5, s10, a1
                  srai       gp, a7, 13
                  ori        a5, s1, 633
                  sra        a3, s6, s7
                  sll        a1, a3, s3
                  c.sub      a5, s1
                  add        t3, s6, s7
                  div        a3, t1, s2
                  c.slli     s3, 21
                  sltiu      s7, s9, 493
                  add        t6, s8, a4
                  blt        a2, gp, 72f
                  bltu       s4, t1, 74f
                  blt        t5, sp, 70f
                  xori       gp, s6, 113
                  mulhu      a3, t6, t5
                  bgeu       a0, s10, 60f
                  c.srai     a3, 1
60:               xor        s0, t2, a6
                  slt        a7, t1, t3
                  c.and      a4, a1
                  srl        a0, a1, a0
                  c.addi     a6, -1
                  c.nop
                  c.bnez     s0, 81f
                  c.slli     s7, 15
                  blt        s7, s0, 74f
                  c.nop
70:               or         a1, s3, sp
                  c.li       a0, -1
72:               sra        s2, t6, s2
                  remu       tp, s0, a1
74:               c.srai     a0, 5
                  c.mv       s5, s10
                  xori       tp, s1, 895
                  mulhu      t1, t6, t3
                  fence
                  c.srli     s1, 24
                  mulh       t6, t3, s10
81:               csrrci     s3, 0x340, 18
                  fence.i
                  and        a3, s4, t6
                  csrrsi     s7, 0x340, 10
                  fence.i
                  c.mv       a7, a1
                  c.xor      s0, s1
                  slti       s7, a0, -522
                  nop
                  sltu       a3, gp, s7
                  csrrci     a1, 0x340, 26
                  c.bnez     s1, 111f
                  srai       a1, tp, 7
                  slli       a1, s7, 22
                  mul        s3, s6, t6
                  xor        a3, a4, s6
                  c.add      s1, ra
                  srl        gp, t5, t5
                  c.beqz     a2, 101f
                  srli       a3, a2, 15
101:              srli       t1, a4, 11
                  c.add      a0, s2
                  srli       a0, a1, 17
                  nop
                  mulhu      a2, s11, a0
                  srl        a6, t3, s4
                  bge        t5, t1, 116f
                  sltu       s9, s6, a4
                  sra        zero, t1, a5
                  rem        s10, a7, t1
111:              beq        s1, t3, 112f
112:              c.xor      a1, a3
                  csrrw      tp, 0x340, s10
                  slli       a1, t1, 0
                  c.beqz     a0, 134f
116:              sltiu      s3, t5, -999
                  c.sub      a1, s1
                  csrrci     a7, 0x340, 14
                  mulhsu     a7, s4, s0
                  c.bnez     s0, 123f
                  c.nop
                  remu       s0, t3, a6
123:              ori        t6, s6, 234
                  slt        a5, s0, t0
                  c.nop
                  mulhsu     s2, t0, t3
                  srai       a3, a5, 4
                  beq        t2, zero, 146f
                  beq        t5, s3, 147f
                  c.li       a5, -1
                  c.srai     a5, 24
                  slt        tp, s10, t1
                  c.andi     s1, 0
134:              xor        s4, t0, a5
                  rem        t3, s1, t5
                  bltu       t6, a6, 139f
                  add        gp, t5, s7
                  divu       t3, gp, s2
139:              c.slli     t0, 29
                  and        s8, s6, s5
                  sra        t4, t1, t3
                  slt        a2, t3, t1
                  c.and      a2, s1
                  div        t4, t3, s11
                  mulhu      t3, s4, s4
146:              addi       s0, s8, 447
147:              lui        s2, 188666
                  sltu       s9, zero, a4
                  mulh       a3, ra, gp
                  c.sub      a1, a1
                  or         a4, ra, zero
                  c.li       a5, 24
                  slti       s4, s2, -528
                  srai       a1, zero, 14
                  mulhsu     a1, t4, s8
                  or         t5, gp, s8
                  c.slli     a6, 20
                  andi       a6, s3, 893
                  bne        a6, s11, 163f
                  nop
                  div        s7, t2, a6
                  andi       a3, s6, -947
163:              and        s4, t0, s11
                  xori       t5, t2, -371
                  csrrc      t1, 0x340, tp
                  c.xor      a4, a5
                  addi       t1, a7, 50
                  mulhu      s11, a3, a1
                  bltu       a7, a5, 189f
                  sub        gp, a7, sp
                  slt        gp, s7, a3
                  c.slli     s11, 6
                  c.slli     s9, 14
                  bgeu       s10, s0, 182f
                  c.srai     a3, 25
                  xor        s9, s8, s11
                  srai       tp, ra, 2
                  nop
                  csrrw      s7, 0x340, s8
                  slti       a6, a5, 533
                  and        s0, zero, s1
182:              xor        a1, t6, s9
                  c.addi     a1, -1
                  c.add      a7, a7
                  c.slli     a4, 13
                  csrrc      a7, 0x340, t4
                  c.beqz     a3, 190f
                  csrrci     a3, 0x340, 30
189:              c.add      a5, a5
190:              c.srai     a5, 3
                  srai       t5, t1, 26
                  div        s5, s3, t6
                  lui        a1, 593272
                  csrrs      t1, 0x340, t6
                  c.or       a5, a1
                  c.or       a0, a3
                  c.srai     a1, 8
                  csrrwi     t0, 0x340, 13
                  c.add      s4, gp
                  slti       a4, a0, 26
                  csrrsi     s0, 0x340, 0
                  c.sub      s1, s1
                  c.li       s9, -1
                  sra        s0, s9, s9
                  ori        s7, s9, -294
                  c.sub      s0, a5
                  divu       t5, a2, t3
                  mul        a3, s6, a1
                  mulhsu     a4, s0, ra
                  csrrc      s8, 0x340, t4
                  nop
                  c.nop
                  c.slli     t0, 7
                  c.slli     t6, 29
                  sra        t1, s4, s5
                  ori        gp, gp, -271
                  fence.i
                  fence
                  nop
                  csrrci     a4, 0x340, 8
                  c.srai     a0, 22
                  sltu       t3, sp, t1
                  auipc      a5, 37457
                  xor        t5, a2, t2
                  bgeu       s2, t4, 241f
                  c.beqz     a1, 244f
                  srli       t1, s4, 10
                  slti       tp, t6, -1018
                  remu       s8, s4, s3
                  and        a4, a0, s5
                  remu       s4, s6, s5
                  c.xor      s1, a4
                  sra        s7, zero, s11
                  c.nop
                  c.andi     a4, -1
                  nop
                  divu       s4, sp, a7
                  mulhsu     a6, ra, a5
                  andi       s1, s8, 236
                  csrrs      s0, 0x340, s10
241:              ori        a5, zero, 663
                  fence.i
                  sltiu      t5, t6, -672
244:              c.and      a2, a1
                  c.srai     a3, 9
                  slli       a0, s5, 19
                  sltu       a4, gp, t2
                  or         s1, s2, s2
                  c.andi     a0, -1
                  lui        a5, 54016
                  andi       a4, t1, 288
                  c.slli     s7, 10
                  csrrw      a5, 0x340, t4
                  c.andi     s1, 22
                  c.lui      s10, 7
sub_5_1:          jal        s8, 7f
0:                c.j        16f
1:                c.jal      8f
2:                c.j        13f
3:                c.jal      21f
4:                jal        s8, 18f
5:                jal        ra, 15f
6:                jal        s1, 0b
7:                c.jal      22f
8:                c.j        26f
9:                c.j        27f
10:               c.j        11f
11:               c.j        20f
12:               c.jal      25f
13:               c.jal      12b
14:               jal        ra, 23f
15:               jal        ra, 1b
16:               c.j        19f
17:               c.jal      10b
18:               c.jal      17b
19:               c.j        14b
20:               c.jal      2b
21:               jal        ra, 6b
22:               c.j        9b
23:               jal        t1, 4b
24:               c.jal      28f
25:               jal        ra, 5b
26:               jal        t1, 24b
27:               c.j        3b
28:               c.srai     a3, 9
                  slti       t6, a1, 241
                  nop
                  sltiu      t5, t5, 426
                  c.nop
                  srl        s8, zero, s4
                  sra        a7, s11, a7
                  csrrsi     t5, 0x340, 29
                  beq        s7, t5, 274f
                  sll        s5, zero, sp
                  add        t4, t1, t0
                  c.add      gp, s7
                  ori        t1, a7, -635
                  and        s3, tp, t5
                  xori       a4, ra, 962
                  sltiu      s10, s1, -828
                  sll        a5, s4, s10
                  sub        gp, t2, s1
                  csrrc      a4, 0x340, a3
274:              auipc      a1, 770982
                  mulhsu     a1, a7, t0
                  auipc      zero, 169688
                  sltu       s10, t4, t4
                  rem        s5, a5, s9
                  sra        t3, t5, t5
                  c.nop
                  srai       s0, s2, 2
                  sra        s5, ra, t0
                  csrrw      t5, 0x340, a2
                  lw         s8, 4(sp)
                  fence
                  addi       sp, sp, 8
                  lui        a3, 628998
                  or         a3, sp, s4
474:              c.jr x24
sub_3:            andi       s5, gp, 872
                  addi       sp, sp, -40
                  remu       a3, s1, t1
                  c.srli     a2, 4
                  c.slli     s0, 6
                  c.nop
                  addi       a4, a6, 47
                  and        a1, s0, a6
                  sw         s8, 4(sp)
                  slt        ra, t0, t5
                  .2byte 0x8012 # kHintInstr
                  c.srai     s1, 13
                  c.andi     a0, -1
                  la         t1, region_1+15631 #start load_store_instr_stream_1
                  la         t4, region_0+2501 #start load_store_instr_stream_0
                  lb         s5, 38(t1)
                  lb         s5, -52(t1)
                  lbu        s4, 49(t1)
                  lbu        t0, -5(t4)
                  lw         a3, -63(t1)
                  lb         t6, -10(t4)
                  lbu        a7, -40(t1)
                  lbu        a6, -66(t4)
                  lh         a1, -49(t1)
                  lhu        s0, -221(t4)
                  sb         a3, -47(t1)
                  lh         a1, 9(t1)
                  lb         a5, 54(t1) #end load_store_instr_stream_1
                  sb         a4, 199(t4) #end load_store_instr_stream_0
sub_3_7:          jal        s8, 5f
0:                c.j        13f
1:                jal        t1, 2f
2:                c.jal      0b
3:                c.jal      11f
4:                jal        t0, 19f
5:                c.jal      3b
6:                jal        ra, 14f
7:                c.jal      20f
8:                c.j        23f
9:                jal        t1, 6b
10:               jal        gp, 17f
11:               c.j        21f
12:               c.jal      1b
                  .2byte 0x0042 # kHintInstr
13:               c.jal      15f
14:               c.j        4b
15:               c.j        16f
16:               c.j        22f
17:               c.jal      8b
18:               jal        ra, 9b
19:               c.j        10b
20:               jal        ra, 18b
21:               c.j        12b
22:               c.jal      7b
23:               sll        s4, a6, t1
sub_3_8:          jal        s8, 14f
0:                jal        t1, 24f
1:                c.j        25f
2:                jal        t1, 19f
3:                c.j        9f
4:                jal        s1, 17f
5:                jal        t1, 28f
6:                c.jal      2b
7:                jal        ra, 22f
8:                c.jal      10f
9:                c.jal      12f
10:               c.j        6b
11:               c.jal      20f
12:               c.jal      26f
13:               c.jal      1b
14:               jal        ra, 0b
15:               c.j        21f
16:               c.jal      4b
17:               jal        ra, 18f
18:               jal        ra, 13b
19:               c.jal      23f
20:               c.jal      27f
21:               c.jal      29f
22:               jal        ra, 16b
23:               jal        ra, 3b
24:               c.j        11b
25:               jal        ra, 5b
26:               jal        ra, 7b
27:               c.j        8b
28:               c.jal      15b
29:               mulhsu     a7, t0, t0
                  la         a0, region_0+104 #start riscv_load_store_rand_instr_stream_5
                  lbu        a6, -64(a0)
                  csrrs      s4, 0x340, s7
                  csrrs      a7, 0x340, s5
                  lb         t1, 48(a0)
                  sb         a7, -53(a0)
                  mulh       tp, s0, s9
                  sll        s11, s4, s8
                  mulhsu     s1, t4, s6
                  addi       gp, ra, -568
                  lhu        t6, -54(a0)
                  c.and      a4, a2
                  lbu        ra, 187(a0)
                  lbu        a3, -47(a0)
                  sltu       ra, s9, s7
                  slli       a7, sp, 8
                  c.slli     s4, 5
                  add        a6, s5, s8
                  c.or       a1, a1
                  andi       s7, s5, -636
                  c.xor      a3, s1
                  lb         s1, -65(a0)
                  lb         zero, 78(a0)
                  lbu        s3, 76(a0)
                  lh         a4, 110(a0)
                  c.lui      t3, 18
                  xor        s7, t5, a1
                  c.srai     s0, 29
                  sw         s4, 184(a0)
                  lhu        s7, 162(a0)
                  lbu        s1, 239(a0)
                  lh         zero, -64(a0)
                  fence
                  csrrc      a6, 0x340, t0
                  sh         t3, -98(a0)
                  sw         s0, 200(a0)
                  lh         a7, -38(a0)
                  lw         tp, 152(a0)
                  lbu        a6, 83(a0)
                  lhu        s7, 188(a0)
                  nop
                  sb         a0, 41(a0)
                  lw         s8, 64(a0)
                  sltiu      a6, s10, 246
                  lhu        s3, 92(a0)
                  and        zero, t0, a1
                  c.or       a2, a5
                  c.slli     s11, 30
                  c.or       a3, s0
                  lh         a4, 34(a0)
                  andi       s0, ra, -879
                  sb         tp, -55(a0)
                  sh         s3, -54(a0)
                  lb         a5, -3(a0)
                  lb         s7, -13(a0)
                  lb         s2, 204(a0) #end riscv_load_store_rand_instr_stream_5
                  la         s8, region_0+2097 #start riscv_load_store_rand_instr_stream_1
                  divu       s4, s10, a2
                  div        s1, zero, t1
                  c.slli     gp, 26
                  lbu        a1, -12(s8)
                  c.mv       a0, a2
                  srai       a7, s3, 28
                  sb         s0, -10(s8)
                  add        gp, t3, s1
                  lh         a1, -7(s8)
                  csrrs      a7, 0x340, s1
                  slli       zero, s11, 18
                  or         s7, a7, t1
                  xori       s5, zero, -817
                  c.and      s1, a2
                  remu       s9, s0, s9
                  c.slli     s3, 8
                  lhu        s10, 5(s8)
                  lh         zero, 7(s8)
                  auipc      ra, 239819
                  xor        s11, a4, s10
                  xor        s5, s3, s4
                  sb         a3, -16(s8)
                  lbu        tp, 8(s8)
                  c.srli     a0, 21
                  c.srai     a4, 16
                  lbu        a5, -9(s8)
                  mulhu      t5, s5, s10
                  slli       ra, a6, 20
                  c.slli     t1, 29
                  nop
                  divu       s7, a2, tp
                  mul        a3, t5, t6
                  lb         s11, -10(s8)
                  sb         zero, 4(s8)
                  lbu        s0, 10(s8)
                  sub        a6, a2, t0
                  xor        t1, t4, s1
                  xor        t6, a1, s9
                  c.lui      t1, 14
                  nop
                  lb         a3, 10(s8) #end riscv_load_store_rand_instr_stream_1
                  la         t4, region_2+7093 #start riscv_load_store_rand_instr_stream_2
                  lw         a1, 47(t4)
                  srai       a4, s9, 8
                  sb         s6, -1(t4)
                  sra        t5, t6, gp
                  csrrs      a4, 0x340, s8
                  nop
                  lbu        a0, 25(t4)
                  lb         t6, -42(t4)
                  lbu        s4, 16(t4)
                  lb         t3, -2(t4)
                  lw         t6, -21(t4)
                  lbu        a3, -24(t4)
                  sb         a1, 2(t4)
                  fence
                  lbu        a3, 34(t4)
                  lbu        s2, -64(t4)
                  c.li       ra, -1
                  remu       gp, s2, tp
                  andi       s1, s3, -649
                  addi       a7, s7, 670
                  lbu        ra, -9(t4)
                  lw         tp, 43(t4)
                  c.lui      a4, 15
                  lb         a0, 64(t4)
                  lbu        s11, -64(t4)
                  lb         s4, -52(t4)
                  lb         a1, 36(t4)
                  srl        a5, gp, s1
                  c.nop
                  lh         t5, -27(t4)
                  c.li       s5, 21
                  sb         s4, -46(t4)
                  lb         s1, 50(t4)
                  lb         s0, 26(t4)
                  sb         gp, 46(t4)
                  xor        zero, t1, a4
                  sb         s6, -3(t4)
                  lb         a7, -10(t4)
                  lbu        tp, 24(t4)
                  csrrs      zero, 0x340, a6
                  lb         s5, 22(t4)
                  lb         s11, 37(t4)
                  lbu        s0, 34(t4) #end riscv_load_store_rand_instr_stream_2
                  la         t1, region_2+810 #start riscv_load_store_rand_instr_stream_3
                  srli       s4, s2, 5
                  csrrsi     s10, 0x340, 17
                  sb         s8, 6(t1)
                  sh         t4, 2(t1)
                  lb         s0, 3(t1)
                  and        t5, s2, s4
                  c.add      a5, a3
                  csrrsi     t0, 0x340, 1
                  remu       a4, a0, s1
                  xori       s0, s10, -863
                  lbu        s9, 9(t1)
                  sb         s4, 11(t1)
                  c.xor      s1, a3
                  mul        t5, s11, s11
                  sb         a1, 11(t1)
                  c.sub      a3, a1
                  c.andi     s1, -1
                  andi       s5, s6, -482
                  xori       a1, t3, -323
                  sh         a5, -14(t1)
                  c.li       t5, 14
                  csrrw      s7, 0x340, a0
                  lbu        s0, 5(t1)
                  lbu        gp, -9(t1)
                  sb         a3, -8(t1)
                  lh         gp, -6(t1)
                  c.slli     gp, 22
                  lh         s2, 12(t1) #end riscv_load_store_rand_instr_stream_3
                  la         t5, region_4+3422 #start riscv_load_store_rand_instr_stream_4
                  add        t1, s0, zero
                  lb         zero, 16(t5)
                  div        a4, a1, s0
                  sltu       t0, s9, a1
                  sw         s5, 10(t5)
                  sh         s6, 10(t5)
                  sh         s11, 8(t5)
                  lb         zero, -13(t5)
                  slt        s1, s2, t3
                  lhu        t4, 8(t5)
                  sltu       s3, sp, t6
                  mul        a2, s3, a6
                  lbu        a0, 6(t5)
                  addi       s9, t0, 723
                  lbu        s2, 5(t5)
                  c.sub      a0, a0
                  lb         s7, 1(t5)
                  div        zero, s3, t6
                  lh         a1, 12(t5)
                  lbu        ra, 1(t5)
                  csrrs      s11, 0x340, a4
                  lhu        s11, 16(t5)
                  sb         t0, -9(t5)
                  mul        a4, a3, s5
                  slti       a6, t2, 850
                  sb         s8, 9(t5)
                  lh         t3, -4(t5)
                  div        a7, a3, a3
                  sb         tp, -6(t5)
                  c.slli     a4, 15
                  mulhu      s8, sp, t1
                  and        s3, t0, a3
                  lbu        zero, 14(t5)
                  c.mv       s0, s6
                  nop
                  sb         s2, -5(t5)
                  c.add      s3, a1
                  sh         zero, 8(t5)
                  sb         a6, -1(t5)
                  c.addi     s8, -1
                  sb         tp, 13(t5)
                  or         s10, a7, t6
                  mulhsu     t3, t2, a7
                  lb         zero, 1(t5)
                  c.andi     a3, -1
                  sb         a5, -2(t5) #end riscv_load_store_rand_instr_stream_4
                  la         s10, region_2+4814 #start riscv_hazard_instr_stream_1
                  lbu        t3, -347(s10)
                  sb         s1, -201(s10)
                  csrrw      s11, 0x340, s11
                  sb         s11, 1143(s10)
                  andi       tp, a3, 106
                  divu       a3, tp, tp
                  lb         tp, -191(s10)
                  c.nop
                  lb         tp, 155(s10)
                  lhu        s1, 1986(s10)
                  lbu        a3, -2009(s10)
                  lbu        t3, -734(s10)
                  sw         s11, 1590(s10)
                  lb         s1, 1372(s10)
                  lbu        s1, -1775(s10)
                  lb         a3, 688(s10)
                  c.slli     a6, 3
                  sub        s11, s1, t3
                  slt        s11, s1, t3
                  slli       s11, tp, 21
                  slli       s1, t3, 3
                  srai       s1, s1, 5
                  sb         t3, 1067(s10)
                  lbu        t3, -795(s10)
                  srli       a6, tp, 26
                  lb         s1, 1237(s10)
                  c.srai     s1, 7
                  lb         a6, -1253(s10)
                  c.li       s11, -1
                  sb         s1, 705(s10)
                  lbu        tp, 1653(s10)
                  lb         t3, 1081(s10)
                  addi       a3, t3, -692
                  fence
                  lh         s1, 246(s10)
                  remu       tp, tp, s1
                  lh         a3, -1384(s10)
                  addi       tp, s11, -883
                  sh         a6, -816(s10)
                  sh         s1, -1690(s10)
                  sh         t3, -402(s10)
                  srli       a3, s1, 17
                  sb         a6, -1332(s10) #end riscv_hazard_instr_stream_1
                  la         t4, region_0+777 #start riscv_hazard_instr_stream_5
                  lbu        a1, -2(t4)
                  lbu        a1, 47(t4)
                  sb         a0, -106(t4)
                  lb         a0, -60(t4)
                  sb         a5, -157(t4)
                  lbu        a1, -206(t4)
                  lbu        a0, 19(t4)
                  lb         s11, 80(t4)
                  sb         a0, 172(t4)
                  lbu        s7, -4(t4)
                  sb         a5, 168(t4)
                  lh         a5, -81(t4)
                  lb         a2, -130(t4)
                  sb         s7, 12(t4)
                  lbu        s7, 88(t4)
                  sb         s7, -203(t4)
                  lbu        a5, -56(t4)
                  lbu        a5, -170(t4)
                  srli       s11, a0, 13
                  csrrsi     a2, 0x340, 30
                  sw         a5, 147(t4)
                  c.li       a1, 31
                  lh         a5, -231(t4)
                  rem        a1, a2, s11
                  lui        a1, 35181
                  sb         s7, 120(t4)
                  lh         a0, 65(t4)
                  addi       s11, a0, 968
                  lbu        s11, -34(t4)
                  lbu        a2, 118(t4)
                  c.slli     a1, 10
                  lbu        s11, 242(t4)
                  lhu        s7, -79(t4)
                  c.sub      a2, a1
                  sltu       a2, a2, a5
                  mul        s11, a2, a5
                  lbu        a1, -139(t4) #end riscv_hazard_instr_stream_5
                  la         t1, region_3+141 #start load_store_instr_stream_1
                  lb         s11, -124(t1)
                  la         s2, region_4+3733 #start load_store_instr_stream_0
                  lb         s0, 20(t1)
                  la         a1, region_0+1416 #start load_store_instr_stream_2
                  lbu        s0, -9(s2)
                  sb         a4, 10(s2)
                  sw         a2, 912(a1)
                  lbu        s3, -773(a1)
                  lbu        s7, -10(s2)
                  sb         s3, -26(a1)
                  lbu        a7, 1714(a1)
                  lbu        a4, -1157(a1)
                  sb         a1, 11(s2)
                  lhu        t6, 590(a1)
                  lbu        s7, 14(s2)
                  lhu        s10, 1714(a1) #end load_store_instr_stream_2
                  lw         s11, 355(t1)
                  lbu        s7, -12(s2)
                  lb         s10, 3(s2)
                  sb         t2, 195(t1)
                  sb         zero, -64(t1)
                  lb         s4, 5(s2)
                  lb         t5, 314(t1)
                  lb         s5, 181(t1) #end load_store_instr_stream_1
                  lb         tp, 9(s2) #end load_store_instr_stream_0
                  la         s11, region_0+2402 #start riscv_hazard_instr_stream_0
                  lbu        a7, -1(s11)
                  csrrc      t1, 0x340, a6
                  nop
                  xor        a6, a6, a7
                  sh         s1, -14(s11)
                  c.slli     s1, 29
                  c.sub      a1, s1
                  lb         s1, 6(s11)
                  sra        a6, s3, s3
                  div        s1, t1, s1
                  xor        a1, a1, s1
                  sh         a6, -14(s11)
                  lhu        a1, -16(s11)
                  sub        a6, t1, s3
                  lbu        a7, -13(s11)
                  c.xor      s1, a1
                  fence.i
                  sub        s3, t1, a6
                  sh         a1, -2(s11)
                  nop
                  sb         s3, 11(s11)
                  lbu        a1, -11(s11)
                  lbu        a6, -4(s11)
                  c.lui      a6, 17
                  sb         s3, -3(s11)
                  sb         a6, 7(s11)
                  csrrc      s1, 0x340, a1
                  sb         t1, 15(s11)
                  c.add      a6, s3
                  c.add      a7, s1
                  lh         a1, -10(s11)
                  c.li       t1, 1
                  sltu       t1, s1, a6
                  fence
                  c.li       t1, 21
                  lb         a1, -3(s11)
                  nop
                  sh         a6, 14(s11)
                  sltiu      s1, s3, 90
                  sb         a1, -7(s11)
                  sltu       a6, a1, t1
                  lb         a6, -15(s11)
                  add        t1, a1, s1
                  lbu        s1, 4(s11)
                  div        s1, a7, t1
                  lb         s3, 3(s11)
                  sll        a1, a6, a7
                  c.mv       t1, t1
                  divu       a1, a6, a6
                  lbu        a1, -16(s11)
                  lbu        a6, 11(s11)
                  sb         s1, -2(s11)
                  mul        a1, a7, a6
                  lbu        a1, -13(s11)
                  lbu        t1, 7(s11) #end riscv_hazard_instr_stream_0
                  la         t5, region_4+2269 #start load_store_instr_stream_0
                  la         t0, region_4+77 #start load_store_instr_stream_1
                  lb         gp, 438(t5)
                  lb         a7, 172(t0)
                  sh         a7, -27(t0)
                  lb         a6, -968(t5)
                  sb         s3, -492(t5)
                  lbu        a0, 39(t0)
                  lb         a1, 69(t0)
                  lhu        s1, -655(t5)
                  lb         t1, 240(t0)
                  lh         a6, 93(t0)
                  sb         s6, -399(t5)
                  lw         a1, -941(t5)
                  lb         a0, 18(t0)
                  lb         gp, 913(t5)
                  lb         gp, 125(t0)
                  sw         s1, 155(t0) #end load_store_instr_stream_1
                  lh         a7, -7(t5) #end load_store_instr_stream_0
                  la         a4, region_4+1890 #start load_store_instr_stream_2
                  sb         tp, -117(a4)
                  la         a1, region_4+688 #start load_store_instr_stream_0
                  lb         t1, -51(a1)
                  la         a6, region_4+2956 #start load_store_instr_stream_1
                  sb         a0, -172(a4)
                  la         t5, region_4+1518 #start load_store_instr_stream_3
                  lb         a0, 30(a1)
                  lh         s2, -40(a4)
                  lw         zero, -138(a4)
                  lhu        t0, -38(t5)
                  sh         s1, 998(a6)
                  lhu        s2, 162(a4)
                  lb         a2, 29(t5)
                  sb         a7, -1069(a6)
                  sh         t3, -44(t5)
                  lhu        s2, 72(a4)
                  lb         tp, -41(a1)
                  lb         gp, 171(a4)
                  lhu        s7, -44(t5)
                  lbu        ra, -1546(a6)
                  lb         s1, -15(a1)
                  lbu        s5, -1305(a6)
                  sb         s1, -1390(a6)
                  lbu        zero, -20(a1)
                  sw         s2, 30(t5)
                  lb         t0, 27(a1)
                  lb         t6, -29(a1)
                  sb         sp, -33(a4)
                  lhu        s11, -44(t5)
                  lw         s1, 504(a6) #end load_store_instr_stream_1
                  sw         a3, -28(a1)
                  sh         a1, 28(t5) #end load_store_instr_stream_3
                  sh         s10, 224(a4) #end load_store_instr_stream_2
                  sh         s2, -30(a1)
                  sb         t4, -14(a1) #end load_store_instr_stream_0
sub_3_10:         jal        s8, 10f
0:                c.j        6f
1:                c.j        19f
2:                jal        t1, 4f
3:                c.j        15f
4:                c.j        16f
5:                c.j        0b
6:                jal        s10, 1b
7:                c.jal      9f
8:                c.jal      14f
9:                jal        t1, 12f
10:               c.j        3b
11:               jal        s0, 20f
12:               c.jal      11b
13:               c.j        18f
14:               c.jal      2b
15:               jal        ra, 17f
16:               jal        ra, 7b
17:               c.j        13b
18:               c.jal      5b
19:               c.jal      8b
20:               nop
                  la         s7, region_4+219 #start load_store_instr_stream_0
                  sw         zero, 1673(s7)
                  la         t6, region_4+1486 #start load_store_instr_stream_1
                  lb         s1, 1037(s7)
                  sb         s2, 1403(t6)
                  sb         s8, 1766(s7)
                  sb         s11, 1641(t6)
                  lb         s8, 26(s7)
                  sb         zero, -860(t6)
                  lbu        gp, 990(s7)
                  lb         a7, -1231(t6)
                  lb         a5, 1214(s7)
                  lh         a3, -104(t6) #end load_store_instr_stream_1
                  lb         s2, 1472(s7)
                  lbu        tp, 1447(s7)
                  sb         s7, 1975(s7) #end load_store_instr_stream_0
                  la         s9, region_0+1998 #start riscv_hazard_instr_stream_2
                  c.sub      a2, s1
                  lbu        a1, 1787(s9)
                  lbu        s8, -117(s9)
                  lhu        a6, 1832(s9)
                  andi       zero, s1, 567
                  c.li       a1, -1
                  sra        s8, zero, a2
                  lb         a1, -799(s9)
                  sh         s8, 1342(s9)
                  lb         s1, -1139(s9)
                  div        s8, zero, zero
                  sh         s8, -860(s9)
                  c.srai     s1, 8
                  lbu        a6, 1597(s9)
                  lhu        s1, 974(s9)
                  sll        zero, s8, a6
                  lbu        a2, 463(s9)
                  sb         a1, 39(s9)
                  lbu        s8, -1314(s9)
                  sw         zero, 134(s9)
                  srai       a6, zero, 15
                  lb         a6, -1623(s9)
                  c.srai     a2, 8
                  sub        s8, s8, s1
                  lb         a1, 731(s9)
                  lbu        a6, -365(s9)
                  c.srli     a1, 5
                  slt        s1, zero, a1
                  c.srai     s1, 26
                  c.slli     a1, 21
                  srl        a2, s1, s1
                  mulhsu     a2, a2, a2
                  lw         s8, 282(s9)
                  andi       s8, a2, -911
                  sb         s8, 875(s9)
                  sb         s8, 879(s9)
                  sh         s8, -1926(s9)
                  lbu        a2, -1459(s9)
                  c.and      a1, a1
                  c.slli     a6, 30
                  lbu        a6, 1255(s9)
                  sb         a1, -645(s9) #end riscv_hazard_instr_stream_2
                  addi       s1, zero, 5 #init loop 0 counter
                  slti       a1, t2, -994
                  srai       a1, s11, 2
                  srl        s9, s9, t5
                  c.add      ra, s3
                  addi       zero, zero, 0 #init loop 0 limit
                  srl        s0, t1, s3
                  fence
                  csrrwi     s2, 0x340, 13
                  sll        a7, t5, a3
                  fence
                  remu       s0, a2, t2
                  c.addi     a2, -1
                  c.addi     s9, -1
sub_3_26_0_t:     mulh       s8, tp, s2
                  c.nop
                  mulh       s8, a7, a0
                  mulh       a2, t6, a0
                  sll        t0, a7, s7
                  slt        a4, s3, gp
                  sll        s8, s5, s8
                  addi       s1, s1, -5 #update loop 0 counter
                  sra        a1, a0, t5
                  xor        t5, s6, s7
                  auipc      a7, 220236
                  c.add      a4, a5
                  sll        s7, t5, t4
                  or         s8, s11, s11
                  c.bnez     s1, sub_3_26_0_t #branch for loop 0
                  mulhu      tp, sp, s3
                  la         gp, region_1+3970 #start load_store_instr_stream_1
                  lb         tp, 44(gp)
                  la         s5, region_0+2101 #start load_store_instr_stream_0
                  lb         zero, -7(gp)
                  sb         s5, -1660(s5)
                  lb         t6, -43(gp)
                  lb         s3, 120(s5)
                  lh         a2, 411(s5)
                  lbu        s4, 1119(s5)
                  lb         t1, -41(gp)
                  lb         t0, 21(gp)
                  lbu        s4, -14(gp) #end load_store_instr_stream_1
                  lb         t6, -1062(s5)
                  sb         t2, -814(s5) #end load_store_instr_stream_0
                  la         s7, region_4+561 #start riscv_hazard_instr_stream_3
                  c.sub      a5, a5
                  lhu        t0, -55(s7)
                  c.srli     a5, 22
                  lh         a5, 45(s7)
                  lh         s4, -59(s7)
                  lbu        a3, 21(s7)
                  nop
                  sltu       s4, s4, s11
                  sw         s11, 35(s7)
                  lbu        s11, 12(s7)
                  lw         s4, -45(s7)
                  andi       s4, a3, 195
                  lb         s4, 63(s7)
                  lbu        s4, -4(s7)
                  lbu        a3, 32(s7)
                  c.addi     t0, -1
                  lb         a5, -50(s7)
                  sb         s11, 64(s7)
                  lb         s11, 10(s7)
                  lbu        s8, 52(s7)
                  csrrc      a3, 0x340, s8
                  lbu        t0, -44(s7)
                  lb         a3, -50(s7)
                  sb         a5, 19(s7)
                  sb         a5, -60(s7)
                  csrrw      s11, 0x340, s8
                  sb         s4, 58(s7)
                  sb         t0, -49(s7)
                  sh         s8, 39(s7)
                  c.add      a5, s8
                  lbu        s11, -40(s7)
                  sb         s4, 17(s7)
                  c.nop
                  sb         s4, -22(s7)
                  sb         t0, 36(s7)
                  lhu        a5, -39(s7)
                  xor        a5, a5, s8
                  lb         s8, -4(s7)
                  lbu        s8, -16(s7) #end riscv_hazard_instr_stream_3
                  la         a3, region_0+3688 #start load_store_instr_stream_3
                  la         t1, region_0+122 #start load_store_instr_stream_4
                  la         a2, region_0+341 #start load_store_instr_stream_2
                  la         s0, region_0+2088 #start load_store_instr_stream_0
                  la         t4, region_0+475 #start load_store_instr_stream_1
                  lbu        s1, -191(a3)
                  lb         gp, -7(a2)
                  sb         s2, -241(s0)
                  sb         zero, 13(a3)
                  lbu        a4, -7(t1)
                  lb         t5, -187(t4)
                  sb         tp, 116(a3)
                  lb         t0, -2(a2)
                  sb         a0, -4(a2)
                  lbu        s3, 188(t1)
                  lbu        a6, 159(s0)
                  sb         a2, -3(a2)
                  lhu        zero, 166(s0)
                  lb         s1, -34(t4)
                  lb         gp, 223(a3)
                  lbu        t0, 137(a3)
                  sw         a3, -50(t1)
                  sb         s4, -42(t4)
                  .2byte 0x9022 # kHintInstr
                  lh         a5, -112(t1)
                  sb         a6, 15(t1)
                  lh         a5, 200(a3)
                  lbu        s1, -12(t1)
                  lbu        a5, -247(t4)
                  lbu        s7, 2(a2) #end load_store_instr_stream_2
                  lb         a0, -111(t1)
                  sb         s3, 126(s0)
                  sh         t1, -54(a3)
                  lb         zero, 12(t4)
                  sb         a6, -9(a3)
                  sb         t2, 205(t1) #end load_store_instr_stream_4
                  sb         s6, 158(s0)
                  lhu        a0, 162(a3)
                  lb         t0, 67(a3) #end load_store_instr_stream_3
                  sb         s4, 240(t4) #end load_store_instr_stream_1
                  lbu        s8, 197(s0) #end load_store_instr_stream_0
sub_3_6:          jal        s8, 8f
0:                c.jal      9f
1:                c.jal      2f
2:                jal        ra, 15f
                  .2byte 0x4049 # kHintInstr
3:                jal        ra, 13f
4:                c.j        16f
5:                c.j        7f
6:                c.jal      5b
7:                c.j        1b
8:                c.j        3b
9:                c.jal      12f
10:               c.j        11f
11:               jal        t1, 14f
12:               c.j        17f
13:               c.jal      0b
14:               jal        ra, 6b
15:               c.j        4b
16:               c.j        18f
17:               c.jal      10b
18:               csrrw      tp, 0x340, t5
                  la         s1, region_4+1776 #start load_store_instr_stream_1
                  la         t0, region_4+3276 #start load_store_instr_stream_2
                  la         s2, region_4+2150 #start load_store_instr_stream_0
                  sb         s10, 98(s1)
                  lhu        ra, -132(t0)
                  lb         zero, -448(s2)
                  lbu        s9, -185(s1)
                  lhu        a6, 74(s1)
                  sb         s1, 19(t0)
                  lbu        s4, 253(s1)
                  lbu        zero, -167(t0)
                  lbu        t1, -17(t0)
                  lh         a2, -956(s2)
                  lb         s4, -89(t0)
                  lb         a6, 239(s1)
                  sb         a2, 173(s1)
                  lbu        t4, 1607(s2)
                  lb         t5, -77(t0)
                  lbu        t6, 195(s1)
                  lh         a0, 1232(s2)
                  lbu        t6, 15(s1)
                  lb         s3, -122(t0) #end load_store_instr_stream_2
                  sb         a4, -113(s1)
                  lbu        a0, -125(s1) #end load_store_instr_stream_1
                  lw         t1, 106(s2) #end load_store_instr_stream_0
sub_3_9:          jal        s8, 6f
0:                jal        ra, 7f
1:                c.j        8f
2:                jal        ra, 9f
3:                jal        ra, 12f
4:                jal        t1, 10f
5:                jal        tp, 1b
6:                c.j        0b
7:                c.jal      11f
8:                c.jal      4b
9:                c.j        5b
10:               c.j        3b
11:               c.j        2b
12:               auipc      s1, 427928
                  la         t1, region_2+1944 #start load_store_instr_stream_0
                  lbu        t5, -570(t1)
                  lbu        s2, 241(t1)
                  la         t4, region_3+460 #start load_store_instr_stream_2
                  sb         a4, -170(t4)
                  la         a0, region_0+3406 #start load_store_instr_stream_1
                  lbu        gp, -320(t4)
                  lhu        a5, -1716(t1)
                  lb         a4, -251(a0)
                  lh         t3, -1210(t1)
                  sb         s3, -327(t4)
                  lbu        t0, -75(t1)
                  lhu        s4, -132(a0)
                  lb         t0, -1109(t1)
                  sb         s8, -231(t4)
                  sb         a3, -27(t1)
                  sb         s8, -80(t4)
                  sh         s4, 124(a0)
                  lb         t6, 1975(t1)
                  lbu        zero, 209(a0)
                  lb         s11, -851(t1)
                  sb         s3, 27(t4) #end load_store_instr_stream_2
                  lbu        s10, 21(a0) #end load_store_instr_stream_1
                  sb         tp, 190(t1) #end load_store_instr_stream_0
                  addi       t5, zero, -3 #init loop 0 counter
                  slt        s11, a6, s11
                  c.li       s11, 30
                  and        t6, s0, s0
                  addi       a4, zero, 12 #init loop 0 limit
                  xor        s8, a4, t4
                  andi       a1, s0, -356
                  c.addi     a1, 6
                  divu       s9, s2, t0
                  fence.i
                  xori       s2, a0, 838
                  xor        a1, ra, s4
                  c.addi     a6, -1
sub_3_25_0_t:     andi       a5, s3, 728
                  andi       gp, s1, 210
                  c.srli     a2, 16
                  addi       t5, t5, 5 #update loop 0 counter
                  divu       a5, a7, s3
                  or         s10, a3, a3
                  c.slli     s5, 30
                  and        s1, t5, s8
                  sra        a5, s3, t5
                  c.slli     a7, 3
                  c.sub      s1, s0
                  beq        t5, a4, sub_3_25_0_t #branch for loop 0
                  or         s5, a0, s5
                  la         tp, region_0+3539 #start riscv_load_store_rand_instr_stream_0
                  c.lui      gp, 18
                  sb         sp, -148(tp)
                  sb         t0, -86(tp)
                  ori        t4, t2, -705
                  or         t1, t2, a0
                  div        a5, s7, a0
                  lb         a1, 101(tp)
                  remu       t3, s3, s2
                  csrrci     s1, 0x340, 5
                  c.lui      t6, 13
                  sll        t1, sp, a6
                  mulhu      a7, s4, t4
                  lhu        s0, 61(tp)
                  lb         a0, 107(tp)
                  sra        a3, s3, s2
                  andi       s3, a7, -1006
                  sltiu      t3, a5, 302
                  divu       a7, s10, a4
                  c.xor      a0, a1
                  c.addi     a1, 21
                  sb         a5, -130(tp)
                  sb         t3, 105(tp)
                  lbu        t0, 6(tp)
                  lh         s0, -237(tp)
                  lbu        s11, -246(tp)
                  lbu        s2, 241(tp)
                  c.lui      a1, 1
                  lw         s2, 189(tp)
                  csrrc      s1, 0x340, s8
                  lb         t6, 219(tp)
                  c.nop
                  remu       s1, s2, s7
                  sb         s7, 30(tp)
                  lbu        s4, -210(tp)
                  sltu       s7, a4, a3
                  lh         s1, -77(tp)
                  csrrsi     s4, 0x340, 14
                  c.xor      a5, a4
                  csrrc      t5, 0x340, gp
                  lbu        a7, 98(tp)
                  andi       a5, a6, -389
                  mulh       t5, a5, a1
                  sltiu      a3, a5, 870
                  sltiu      s7, s9, -279
                  lb         t1, 112(tp)
                  srli       a0, s10, 26
                  lhu        t5, 161(tp)
                  lbu        s4, -109(tp)
                  sb         s4, 199(tp) #end riscv_load_store_rand_instr_stream_0
                  la         s5, region_3+160 #start riscv_hazard_instr_stream_4
                  lbu        ra, -91(s5)
                  csrrw      t6, 0x340, ra
                  sb         ra, 107(s5)
                  srai       gp, t5, 0
                  lh         t5, -34(s5)
                  lbu        a0, 351(s5)
                  and        gp, gp, t6
                  sb         a0, 303(s5)
                  lb         ra, 259(s5)
                  csrrw      ra, 0x340, t6
                  lbu        a0, -133(s5)
                  sub        a0, a0, a0
                  lbu        a0, 228(s5)
                  c.add      t5, t5
                  c.slli     gp, 15
                  lhu        a0, 180(s5)
                  fence
                  lbu        t6, -111(s5)
                  srai       t5, a5, 24
                  lui        a0, 81968
                  lbu        gp, 332(s5)
                  sb         a5, -113(s5) #end riscv_hazard_instr_stream_4
                  addi       a1, zero, 10 #init loop 0 counter
                  div        s1, a4, t3
                  srli       s4, s4, 12
                  csrrwi     s7, 0x340, 13
                  andi       a4, sp, 474
                  addi       zero, zero, 0 #init loop 0 limit
                  srli       s9, s10, 11
                  sltu       tp, a6, a7
                  remu       s4, t1, zero
                  c.sub      a4, a0
                  sll        s10, zero, s7
sub_3_24_0_t:     ori        a3, a1, -251
                  addi       a1, a1, -10 #update loop 0 counter
                  remu       s9, s7, gp
                  sltu       t5, a0, gp
                  c.bnez     a1, sub_3_24_0_t #branch for loop 0
                  slti       t4, s5, -983
                  or         a3, t0, s5
                  remu       ra, a5, t4
                  sra        s5, s0, a3
                  remu       t0, t6, t4
                  addi       a7, t4, 467
                  srl        gp, s6, a3
                  mulhu      s0, s0, t6
                  nop
                  c.mv       s2, a4
                  c.sub      a2, a4
sub_3_11:         jal        s8, 4f
0:                c.jal      8f
1:                c.j        0b
2:                jal        t1, 13f
3:                c.j        2b
4:                c.j        5f
5:                jal        ra, 11f
6:                c.j        9f
7:                c.jal      3b
8:                c.j        10f
9:                c.j        14f
10:               c.j        7b
11:               jal        ra, 12f
12:               c.j        1b
13:               jal        ra, 6b
14:               mulh       a6, t1, a2
                  c.and      s0, a0
                  blt        s7, gp, 30f
                  mul        t6, t6, s6
                  c.xor      a0, a1
                  slt        a4, s9, tp
                  mul        s3, s6, gp
                  remu       s5, a3, s3
                  auipc      a1, 192222
                  blt        s7, s5, 22f
                  c.beqz     a1, 22f
                  c.xor      s0, a1
                  csrrc      s9, 0x340, s1
22:               slti       s1, a7, 838
                  blt        s9, s5, 38f
                  c.bnez     a2, 38f
                  csrrsi     t3, 0x340, 25
                  and        s8, a2, s8
                  nop
                  bge        sp, gp, 31f
                  fence.i
30:               div        a1, s7, a2
31:               or         t0, t6, t4
                  div        s0, a3, a5
                  c.mv       s7, gp
                  c.beqz     s0, 41f
                  sra        s3, t5, s2
                  csrrsi     t3, 0x340, 11
                  c.or       a0, a0
38:               c.bnez     s0, 58f
                  mulhu      ra, s8, t0
                  slt        s11, a6, a1
41:               srl        a7, s0, tp
                  c.add      t6, t4
                  srai       s10, t6, 12
                  c.li       gp, 6
                  csrrci     a3, 0x340, 31
                  .2byte 0x0902 # kHintInstr
                  blt        gp, a1, 63f
                  xori       a2, s3, 496
                  c.srli     a0, 21
                  nop
                  fence.i
                  csrrs      ra, 0x340, s8
                  fence.i
                  mulhu      s1, zero, a7
                  addi       s4, s5, 41
                  csrrwi     a7, 0x340, 20
                  lui        s3, 222337
                  divu       s4, t5, ra
58:               csrrc      t1, 0x340, a7
                  add        s8, t5, s6
                  bgeu       a5, s2, 78f
                  xor        s5, s5, a1
                  xor        a2, s2, s2
63:               bge        a6, a7, 68f
                  auipc      a5, 844009
                  c.mv       s4, tp
                  bgeu       a3, t0, 69f
                  csrrc      gp, 0x340, gp
68:               c.lui      t3, 29
69:               csrrc      s5, 0x340, s8
                  ori        ra, ra, 322
                  sll        a5, s10, s1
                  c.andi     a5, -1
                  xori       s0, s11, 719
                  sub        s0, s1, t1
                  c.sub      s1, s0
                  csrrs      s7, 0x340, t6
                  and        a2, zero, a0
78:               fence
                  csrrwi     a5, 0x340, 23
                  c.srli     s1, 19
                  and        tp, a6, zero
                  nop
                  mul        a1, t4, a1
                  c.sub      a3, a1
                  div        t1, s4, s3
                  divu       t1, ra, t5
                  sra        a3, s3, s9
                  xor        t3, t6, s2
                  c.lui      s3, 23
                  sub        a3, t3, s4
                  c.andi     a5, -1
                  remu       s3, gp, a3
                  bltu       gp, s1, 95f
                  mulh       t0, a3, a4
95:               c.srli     a2, 23
                  c.bnez     a3, 113f
                  csrrw      t3, 0x340, s2
                  mulhsu     ra, t5, a0
                  sltiu      t5, sp, 554
                  add        s8, t2, s10
                  c.add      t6, s5
                  beq        s1, ra, 106f
                  c.or       a2, s0
                  bltu       a2, s6, 114f
                  and        s0, a2, s10
106:              rem        tp, s11, tp
                  beq        s3, a2, 126f
                  slt        a3, s7, s0
                  slt        s3, t1, a4
                  csrrw      t0, 0x340, t3
                  c.sub      a4, a0
                  c.mv       s8, a1
113:              sll        s10, a4, a3
114:              fence.i
                  c.bnez     a4, 132f
                  andi       s2, a3, -142
                  andi       s3, a1, 867
                  lui        s5, 821296
                  c.li       s5, -1
                  c.and      a5, a4
                  csrrs      ra, 0x340, s11
                  sub        a4, a1, s1
                  c.addi     t6, 30
                  xori       a4, s9, -417
                  mulhu      a2, s1, t0
126:              blt        s6, t5, 143f
                  srli       t5, s8, 24
                  c.li       t1, 11
                  or         s1, s6, s9
                  csrrci     s10, 0x340, 19
                  ori        zero, t0, 697
132:              sll        s0, s0, s9
                  c.bnez     a5, 143f
                  addi       a2, a0, 739
                  c.and      a4, a5
                  csrrwi     a4, 0x340, 26
                  sltiu      t1, s11, -6
                  c.or       a1, s1
                  and        a7, s8, a4
                  rem        a2, t6, s7
                  bne        ra, s7, 159f
                  c.li       s11, -1
143:              c.slli     s10, 30
                  bge        a0, ra, 148f
                  auipc      ra, 119794
                  srl        a5, ra, s8
                  bge        a7, s11, 159f
148:              bltu       s6, s3, 162f
                  andi       s3, a3, -280
                  c.xor      a0, s0
                  sltiu      tp, ra, -571
                  or         t4, a6, s4
                  bltu       a4, s7, 164f
                  srai       a5, a3, 27
                  csrrci     a5, 0x340, 30
                  mul        s8, s2, zero
                  mulhu      a0, a2, s8
                  mulhsu     s10, a6, s0
159:              c.add      a2, s8
                  c.and      a0, s1
                  div        t5, s3, a2
162:              csrrc      s2, 0x340, s10
                  divu       s0, s9, s4
164:              sltiu      s3, t3, -555
                  div        gp, t5, t1
                  csrrci     t6, 0x340, 12
                  bne        a1, s7, 184f
                  srai       s5, t5, 19
                  sll        t1, t1, a5
                  slt        a3, t5, t6
                  c.beqz     a0, 177f
                  c.li       t4, 15
                  csrrc      a5, 0x340, ra
                  c.mv       s7, t6
                  auipc      zero, 8586
                  remu       t4, tp, s3
                  .2byte 0x7045 # kHintInstr
177:              srli       s3, a7, 25
                  csrrw      t1, 0x340, s4
                  c.lui      tp, 23
                  bne        s2, s8, 186f
                  xor        s2, s6, a5
                  fence
                  xori       s1, t2, -204
184:              srli       t5, a0, 23
                  and        a1, t3, sp
186:              div        s5, t6, s0
                  ori        a6, s10, -181
                  c.bnez     a4, 197f
                  rem        s10, zero, t6
                  fence
                  c.sub      s1, a4
                  c.or       a5, a1
                  c.li       t5, 12
                  xori       a4, s3, 159
                  or         t6, sp, a6
                  sra        ra, tp, t3
197:              and        s9, a6, a6
                  c.beqz     a5, 211f
                  csrrs      s9, 0x340, zero
                  addi       t5, s8, 405
                  sra        t4, t3, t6
                  c.and      a5, a4
                  divu       s3, a1, t1
                  c.mv       s7, s11
                  lui        s11, 910323
                  ori        t4, a0, 648
                  c.add      t1, s1
                  bgeu       s9, a6, 210f
                  sltu       a1, a0, t3
210:              c.beqz     s1, 227f
211:              beq        t0, t2, 222f
                  c.slli     t0, 4
                  c.srai     s1, 17
                  csrrsi     a4, 0x340, 9
                  c.addi     s9, -1
                  c.add      s10, s11
                  c.mv       a6, s6
                  mulh       a6, s6, s2
                  csrrsi     t3, 0x340, 4
                  la         ra, region_3+34 #start load_store_instr_stream_1
                  lh         t3, 64(ra)
                  la         s10, region_4+3794 #start load_store_instr_stream_0
                  lb         a0, 61(ra)
                  la         a4, region_1+1893 #start load_store_instr_stream_2
                  lbu        s2, 218(s10)
                  la         s4, region_0+308 #start load_store_instr_stream_3
                  lb         s1, 9(ra)
                  lb         a6, 85(s10)
                  lb         zero, 76(s10)
                  sb         s9, 961(s4)
                  lw         s5, 35(a4)
                  sh         s4, -18(ra)
                  lb         t5, 1160(s4)
                  sb         s2, -18(a4)
                  lb         a2, 163(s10)
                  lb         a3, -54(s4)
                  lbu        s9, 15(a4)
                  sw         t2, 50(ra)
                  sh         s10, 15(a4)
                  lb         t5, 1(a4)
                  sb         a2, 1870(s4)
                  lb         zero, 7(ra)
                  lh         zero, 954(s4)
                  lb         a3, -22(a4)
                  sh         s11, 1632(s4) #end load_store_instr_stream_3
                  lb         t0, -64(s10)
                  lw         t3, 10(ra) #end load_store_instr_stream_1
                  sb         t5, -15(a4) #end load_store_instr_stream_2
                  lb         s11, 91(s10) #end load_store_instr_stream_0
                  srai       t0, s4, 10
                  c.addi     a7, 24
222:              c.li       s9, 27
                  add        t6, a6, t5
                  beq        t0, a3, 241f
                  c.sub      a0, a4
                  srai       t4, gp, 26
227:              rem        t1, a7, s9
                  blt        zero, t0, 242f
                  c.add      t1, tp
                  lui        t5, 438423
                  divu       a5, a0, s9
                  rem        a1, s2, a6
                  remu       s8, s0, s5
                  csrrs      s2, 0x340, tp
                  xori       a2, t1, -904
                  mulh       zero, a5, s7
                  c.add      t5, s6
                  slti       t5, t1, 470
                  blt        a7, a0, 243f
                  c.beqz     a2, 257f
241:              blt        s6, s2, 251f
242:              c.or       a0, a3
243:              and        s5, a6, ra
                  rem        s7, a2, s5
                  csrrwi     s1, 0x340, 13
                  bne        tp, s10, 265f
                  remu       a0, t4, t6
                  slli       s4, t1, 17
                  lui        s9, 621808
                  csrrci     t4, 0x340, 2
251:              csrrwi     s9, 0x340, 3
                  csrrsi     a3, 0x340, 2
                  c.nop
                  bltu       gp, t3, 258f
                  c.li       s5, -1
                  c.beqz     a5, 274f
257:              c.or       a5, a0
258:              slti       a7, a6, -130
                  c.lui      s10, 26
                  csrrci     t5, 0x340, 25
                  c.bnez     a0, 267f
                  bltu       s3, s0, 267f
                  beq        s7, s1, 270f
                  csrrci     s5, 0x340, 7
265:              srl        zero, s9, a5
                  blt        s11, a5, 281f
267:              srli       t0, t6, 6
                  xor        s7, s2, a6
                  sll        a2, gp, zero
270:              csrrsi     a7, 0x340, 7
                  srai       gp, t3, 25
                  c.and      s1, s0
                  fence.i
274:              blt        a3, sp, 286f
                  auipc      t5, 651252
                  c.xor      a4, a1
                  c.mv       a7, a6
                  auipc      t3, 253677
                  xor        s5, s9, a6
                  andi       t0, t5, 51
281:              lui        a7, 324445
                  bne        a7, s7, 301f
                  c.li       a0, -1
                  c.sub      a1, a0
                  sltu       a6, a7, tp
286:              c.add      tp, s7
                  csrrwi     a6, 0x340, 26
                  srli       t6, a4, 14
                  c.addi     s9, 19
                  add        a7, s4, t2
                  mulhu      s5, t5, a2
                  fence
                  mulh       s5, gp, sp
                  xor        s9, t0, s5
                  div        t4, s10, a6
                  sra        s10, a7, a6
                  c.andi     a1, -1
                  div        s3, s2, t1
                  bgeu       s7, s10, 308f
                  bne        a2, s3, 317f
301:              remu       t6, zero, a7
                  c.andi     s1, 15
                  c.xor      a3, a1
                  c.beqz     a4, 314f
                  c.or       s1, s0
                  c.nop
                  c.and      a2, a5
308:              addi       t6, gp, -649
                  remu       s7, s3, s7
                  nop
                  mulhu      s11, s6, t2
                  srai       a5, t6, 7
                  auipc      a7, 79491
314:              csrrw      s8, 0x340, a2
                  csrrc      t0, 0x340, s7
                  bgeu       t0, t3, 329f
317:              c.bnez     a2, 320f
                  sltiu      s8, s9, -349
                  c.and      a2, s1
320:              sll        t3, a5, s2
                  bne        sp, s2, 335f
                  bgeu       a3, a7, 342f
                  lui        a1, 436118
                  srl        s4, ra, a5
                  bgeu       sp, ra, 328f
                  sub        gp, gp, t3
                  csrrs      s2, 0x340, s10
328:              csrrw      t6, 0x340, s4
329:              c.slli     gp, 8
                  bgeu       s4, sp, 347f
                  c.addi     t3, -1
                  sll        tp, a7, ra
                  c.slli     s1, 7
                  c.add      t1, t1
335:              c.bnez     s1, 339f
                  c.xor      s1, a3
                  c.sub      a5, a4
                  c.nop
339:              c.addi     gp, -1
                  csrrc      s4, 0x340, s1
                  c.lui      t4, 6
342:              add        a3, t6, s6
                  fence
                  c.nop
                  c.slli     a3, 14
                  c.beqz     s0, 364f
347:              fence
                  mulhu      s4, s6, t1
                  xor        s5, tp, s6
                  c.sub      s1, a5
                  sub        t6, a6, zero
                  c.slli     s1, 9
                  bgeu       s5, s10, 359f
                  c.addi     t0, 11
                  csrrwi     ra, 0x340, 12
                  c.sub      a0, s1
                  c.and      s0, a4
                  sra        s2, s3, s2
359:              add        a2, a6, t3
                  slti       a4, s9, -647
                  andi       t1, a7, 65
                  slt        s11, t0, t4
                  bltu       a4, gp, 366f
364:              mulhu      a3, s2, t1
                  c.nop
366:              csrrc      t1, 0x340, s11
                  srl        a7, s8, a0
                  c.xor      a1, a1
                  c.addi     s11, 2
                  csrrsi     zero, 0x340, 5
                  mulh       s10, t5, gp
                  csrrwi     t6, 0x340, 3
                  csrrci     a1, 0x340, 28
                  add        s4, s0, s7
                  bltu       a0, s10, 392f
                  ori        t3, zero, 105
                  c.addi     s4, 14
                  ori        t5, s3, -587
                  c.nop
                  mulhsu     s7, a1, s2
                  sll        a2, a6, s4
                  lui        a3, 699788
                  c.nop
                  bltu       a6, ra, 394f
                  rem        a1, a3, s10
                  beq        a2, t5, 403f
                  ori        s2, tp, -5
                  csrrwi     s10, 0x340, 3
                  mul        t1, a5, s6
                  slli       t1, a3, 2
                  c.slli     t5, 5
                  blt        s10, s7, j_sub_3_sub_5_5 #branch to jump instr
                  csrrs      s11, 0x340, a5
j_sub_3_sub_5_5:  jal        s8, sub_5
                  addi       zero, s6, 1004
                  c.and      a3, s1
                  mul        gp, a1, s4
                  csrrsi     a0, 0x340, 27
392:              and        t4, s9, t5
                  mulhsu     s2, t3, s4
394:              sltiu      zero, a7, -139
                  sll        s9, a0, t0
                  rem        s3, a2, a1
                  sra        a1, s2, t1
                  sll        s10, a1, a6
                  nop
                  sltu       s10, s10, s3
                  srli       s9, sp, 9
                  slt        a5, a5, sp
403:              remu       a3, a2, s1
                  blt        t1, a4, 421f
                  c.andi     a0, 21
                  andi       s3, s11, 800
                  beq        s11, t3, 425f
                  and        tp, a7, s6
                  srl        s5, a1, s1
                  c.bnez     a0, 415f
                  sltiu      s4, gp, -174
                  c.addi     t4, 24
                  ori        s10, t6, -249
                  sltu       s5, s5, zero
415:              c.srai     a0, 23
                  c.beqz     a1, 420f
                  srai       a3, s6, 6
                  c.add      a1, a4
                  slti       a4, t0, -608
420:              c.andi     s1, -1
421:              srl        tp, a2, s5
                  fence
                  ori        s1, t5, 852
                  slti       t0, a5, -35
425:              bltu       t1, t1, 437f
                  sll        a1, s7, t4
                  mul        t3, zero, s9
                  beq        a0, s9, 438f
                  c.sub      a4, a1
                  blt        sp, t4, 448f
                  c.mv       tp, a7
                  c.nop
                  xor        t4, t4, s3
                  c.and      a0, s1
                  csrrc      a3, 0x340, gp
                  c.nop
437:              c.bnez     s0, 451f
438:              c.and      a2, a1
                  c.and      a2, a4
                  csrrwi     t6, 0x340, 26
                  mul        s4, t6, s2
                  c.andi     a5, 12
                  sltiu      t3, t1, -529
                  sra        tp, a4, gp
                  c.nop
                  c.sub      a4, a3
                  c.sub      s0, a3
448:              srli       s7, s0, 5
                  c.beqz     a3, 453f
                  xori       t3, s9, 192
451:              sub        a6, gp, a4
                  srai       a1, s1, 3
453:              or         s8, a6, s11
                  c.mv       t0, t1
                  csrrsi     zero, 0x340, 14
                  div        s2, a3, s4
                  c.srli     a0, 6
                  ori        a7, a2, -547
                  nop
                  slt        s8, t0, t5
                  blt        t0, s6, 474f
                  bltu       a0, a6, 479f
                  csrrs      s1, 0x340, t6
                  c.sub      s1, s1
                  csrrc      s0, 0x340, s0
                  srl        a3, s9, s7
                  lui        ra, 673128
                  sll        t0, s6, a4
                  slli       t0, a0, 5
                  csrrw      gp, 0x340, a0
                  ori        s5, a4, 963
                  c.lui      a5, 3
                  c.andi     a5, 1
474:              bgeu       s5, t1, 493f
                  or         zero, a7, s9
                  rem        s8, t6, a5
                  nop
                  or         s10, a3, a3
                  c.li       s4, 4
                  fence.i
                  slt        s11, t6, s4
                  csrrs      s5, 0x340, sp
                  fence.i
                  c.lui      s9, 30
j_sub_3_sub_5_7:  jal        s8, sub_5
                  sltiu      s8, s1, -979
                  nop
                  sra        s8, t4, a0
479:              srli       t1, s0, 4
                  sub        t3, tp, s9
                  add        s11, t3, s8
                  csrrs      s0, 0x340, s1
                  mulhsu     a5, s10, gp
                  c.or       a5, a1
                  xor        s5, s3, ra
                  csrrs      s5, 0x340, zero
                  bgeu       s2, t3, 490f
                  andi       t1, s11, -391
                  slli       a6, s7, 31
490:              bgeu       a5, s4, 494f
                  csrrwi     t1, 0x340, 20
                  andi       s3, a1, 463
493:              srai       t4, a3, 28
494:              fence.i
                  bltu       a1, a4, 501f
                  bgeu       a4, a0, 499f
                  and        zero, t5, s6
                  c.xor      a4, s1
499:              c.addi     a6, 1
                  c.or       a0, a4
501:              c.srli     a0, 31
                  xori       a0, a3, 864
                  c.sub      a4, a5
                  mulhu      t3, s1, zero
                  sub        s10, s0, t6
                  bgeu       s4, a3, 513f
                  bge        a2, a0, 516f
                  c.srli     a3, 17
                  andi       a6, s6, -919
                  bltu       gp, s6, 521f
                  beq        t1, zero, 513f
                  div        a2, a4, s7
513:              csrrs      s0, 0x340, gp
                  auipc      s9, 98139
                  csrrw      s1, 0x340, s0
516:              srli       gp, t5, 15
                  beq        t3, s0, 532f
                  ori        s7, a3, 425
                  csrrw      s4, 0x340, a4
                  fence.i
521:              c.lui      t3, 27
                  xor        s8, s10, a0
                  c.andi     a5, -1
                  sll        s1, s6, a5
                  sll        s7, gp, t6
                  or         s11, s5, t1
                  c.andi     a4, 28
                  fence
                  remu       a2, a1, t6
                  blt        s3, s6, 536f
                  sltu       t4, s4, a0
532:              sltu       s8, ra, s11
                  c.mv       s9, a1
                  sltiu      s1, a6, -651
                  fence
536:              andi       a5, t0, -14
                  csrrc      t6, 0x340, zero
                  c.li       a3, 30
                  sll        a5, ra, a2
                  c.srai     a3, 22
                  sltu       s11, a0, s0
                  c.and      a4, s0
                  bgeu       s8, a3, 562f
                  csrrs      t1, 0x340, t0
                  c.li       tp, 28
                  c.slli     a3, 4
                  c.add      gp, s7
                  bne        s8, s1, 565f
                  slti       s4, a0, -410
                  c.nop
                  addi       s0, t2, -672
                  rem        t0, s9, t3
                  c.addi     t3, -1
                  c.xor      a4, a0
                  andi       a0, a3, -525
                  fence.i
                  sll        a6, s0, s4
                  c.and      a0, a1
                  sub        s4, a6, ra
                  c.xor      a5, a3
                  mulhsu     t0, t4, t0
562:              c.li       s1, -1
                  slt        t3, t2, s3
                  c.beqz     s0, 578f
565:              xori       s10, t2, -70
                  fence.i
                  csrrwi     gp, 0x340, 1
                  bne        t6, sp, 571f
                  csrrsi     ra, 0x340, 19
                  c.lui      s10, 23
571:              mul        s10, sp, a1
                  csrrwi     s2, 0x340, 30
                  csrrsi     s10, 0x340, 26
                  or         ra, t1, a6
                  bgeu       t1, zero, 595f
                  mulh       s2, sp, s6
                  c.mv       t6, s0
578:              c.sub      a4, s1
                  sll        t4, gp, a4
                  srli       s0, a4, 25
                  bgeu       gp, t0, 600f
                  sltu       gp, a7, s9
                  c.and      s0, a4
                  addi       s10, ra, 986
                  mul        ra, t6, gp
                  c.addi     t3, -1
                  c.addi     a6, -1
                  csrrw      s4, 0x340, a6
                  la         a1, region_3+162 #start load_store_instr_stream_0
                  la         t3, region_2+8137 #start load_store_instr_stream_1
                  lh         a4, -74(a1)
                  la         tp, region_1+12759 #start load_store_instr_stream_2
                  lbu        s5, -6(t3)
                  la         t0, region_0+114 #start load_store_instr_stream_4
                  sh         s6, -36(a1)
                  la         t4, region_4+3938 #start load_store_instr_stream_3
                  sb         s2, -661(tp)
                  sb         s6, 0(t3)
                  lb         a4, -3(t0)
                  lb         ra, -8(t4)
                  sb         s0, 1548(tp)
                  lbu        s7, 103(a1)
                  sh         a0, 8(t4)
                  lhu        s1, 3(t3)
                  lbu        s9, 1080(tp)
                  lh         a5, -3(t3)
                  lw         a0, 14(t4)
                  sh         s9, 172(a1)
                  sb         s3, 13(t0)
                  lb         s1, 165(a1)
                  lb         s10, -1891(tp)
                  lb         s4, -12(t0)
                  sb         a6, 2(t3)
                  lbu        ra, 187(a1)
                  lbu        ra, 9(t0)
                  lbu        s9, -7(t4)
                  lbu        ra, -1459(tp)
                  lb         s7, 1649(tp) #end load_store_instr_stream_2
                  sb         t1, -1(t4)
                  sb         a4, -1(t0) #end load_store_instr_stream_4
                  sb         t3, 14(t3)
                  sb         t5, 242(a1)
                  sb         t1, 14(t4) #end load_store_instr_stream_3
                  lb         t5, 8(t3) #end load_store_instr_stream_1
                  sh         s8, -134(a1) #end load_store_instr_stream_0
                  c.bnez     a5, 595f
                  c.and      a4, a1
                  div        s8, s7, a6
                  bge        s3, s2, 601f
                  srli       t5, t0, 15
                  ori        a2, a0, 796
595:              c.lui      gp, 19
                  xor        s9, t1, gp
                  and        a2, a7, s11
                  srl        s7, s9, t1
                  c.srai     a3, 15
600:              xor        a6, a3, a0
601:              slti       a1, a2, -708
                  slli       a4, t0, 27
                  csrrwi     a1, 0x340, 4
                  c.srli     a0, 20
                  sub        s10, s11, s1
                  bne        a2, t1, 616f
                  csrrsi     s5, 0x340, 0
                  nop
                  remu       t5, t1, s5
                  sltiu      a4, t4, -808
                  c.add      a7, t1
                  c.add      a3, t1
                  slli       s9, t1, 7
                  csrrwi     t4, 0x340, 10
                  mulh       a4, s3, tp
616:              csrrwi     s5, 0x340, 30
                  srli       a3, s1, 21
                  rem        t4, s4, t6
                  c.addi     gp, 1
                  c.and      a1, a0
                  remu       t1, s7, a4
                  c.nop
                  blt        s9, a3, 627f
                  c.li       a2, 15
                  slti       gp, s9, -883
                  sll        s7, a1, t1
627:              xori       a4, a0, 801
                  ori        a5, s6, -323
                  slti       tp, a5, -10
                  c.andi     a5, -1
                  sra        a4, s6, gp
                  auipc      s4, 661572
                  csrrsi     s1, 0x340, 8
                  srai       a4, t1, 26
                  c.lui      s4, 1
                  ori        s0, s0, -747
                  mulhu      s8, ra, s9
                  c.and      a5, s1
                  c.sub      a0, a5
                  addi       s4, zero, -9 #init loop 1 counter
                  c.xor      a3, a0
                  slt        t5, s10, a7
                  srl        t0, s7, a2
                  srl        a1, tp, zero
                  sra        a1, s9, t1
                  xori       t0, t1, 920
                  csrrs      t0, 0x340, a7
                  addi       gp, zero, -4 #init loop 1 limit
                  c.andi     a1, 19
                  addi       ra, s3, 586
                  sub        s8, ra, a3
sub_3_27_1_t:     or         tp, s6, s5
                  csrrwi     s7, 0x340, 13
                  sll        s0, s6, sp
                  addi       s4, s4, 9 #update loop 1 counter
                  slli       s1, t4, 9
                  addi       a6, zero, 6 #init loop 0 counter
                  c.li       a0, 2
                  addi       s2, zero, 18 #init loop 0 limit
                  c.nop
                  c.and      s0, a5
                  andi       a4, a5, -328
sub_3_27_0_t:     c.addi     a1, 20
                  addi       a6, a6, 8 #update loop 0 counter
                  xor        a7, s3, t0
                  sltu       t5, s4, s11
                  blt        a6, s2, sub_3_27_0_t #branch for loop 0
                  andi       t4, a1, 543
                  c.srli     a5, 23
                  blt        s4, gp, sub_3_27_1_t #branch for loop 1
                  mulhsu     a2, s8, s7
                  c.mv       ra, s11
                  add        t4, a5, s3
                  remu       ra, a7, s5
                  bgeu       a1, a7, 656f
                  sra        tp, t3, s9
                  fence.i
                  c.li       s1, -1
                  and        s3, s7, a1
                  sub        t5, t1, t0
                  slt        s9, s4, s0
                  addi       a3, s9, -50
                  rem        a3, s0, a4
                  c.srai     s0, 3
                  sra        s1, a5, s6
                  fence
                  c.and      s0, a3
656:              nop
                  bne        a3, s11, 672f
                  or         t6, s0, a7
                  c.nop
                  c.or       s0, a3
                  c.addi     s7, -1
                  bltu       t2, t1, 674f
                  remu       ra, a3, s6
                  addi       s0, a6, 172
                  mulhsu     gp, s5, a5
                  c.add      t6, t0
                  c.beqz     a1, 686f
                  fence
                  c.add      a1, s7
                  bge        a2, s11, 688f
                  csrrs      tp, 0x340, s7
672:              csrrwi     t3, 0x340, 20
                  sll        s7, t4, s1
674:              sltiu      a7, a4, 552
                  rem        a5, a0, a7
                  sub        t3, ra, s5
                  and        s1, sp, tp
                  bgeu       a4, ra, 692f
                  auipc      a5, 418532
                  blt        s11, ra, 682f
                  csrrci     s11, 0x340, 4
                  la         t3, region_2+5550 #start load_store_instr_stream_1
                  lbu        a3, -1965(t3)
                  la         a7, region_2+4198 #start load_store_instr_stream_0
                  lb         s3, -35(a7)
                  lb         gp, 1127(t3)
                  lbu        a3, -57(a7)
                  lbu        a5, 901(t3)
                  lw         s2, 18(a7)
                  sb         t5, 40(a7)
                  lb         s4, 23(t3)
                  lb         s5, -21(a7)
                  lbu        s8, -249(t3)
                  sb         t4, -5(a7)
                  lbu        s11, -69(t3) #end load_store_instr_stream_1
                  lh         a5, 20(a7) #end load_store_instr_stream_0
682:              bne        s7, a4, 699f
                  bne        zero, a2, 686f
                  c.bnez     a1, 688f
                  srai       s1, tp, 27
686:              c.beqz     s1, 689f
                  rem        a1, t0, s6
688:              c.xor      a3, s0
689:              csrrc      s9, 0x340, t3
                  c.li       gp, 9
                  sltu       t3, s8, s10
692:              csrrw      a0, 0x340, a4
                  slli       s5, s0, 2
                  xori       s10, s9, -982
                  mulhsu     t1, s9, a7
                  bgeu       s0, s3, 714f
                  slt        zero, t0, a2
                  csrrs      gp, 0x340, a6
699:              slli       t5, s6, 19
                  xor        a6, ra, sp
                  mulhsu     gp, a2, t3
                  c.add      t6, a6
                  sltiu      s7, t3, 429
                  remu       a1, sp, s9
                  bne        s9, s10, 725f
                  lui        a7, 774400
                  c.srai     a2, 7
                  bgeu       s10, sp, 713f
                  c.nop
                  c.lui      a2, 5
                  csrrwi     t3, 0x340, 6
                  srai       t6, t6, 18
713:              lui        s9, 1045571
714:              bgeu       a4, t0, 724f
                  c.li       s7, -1
                  add        gp, s6, s9
                  blt        s11, gp, 734f
                  csrrc      t5, 0x340, ra
                  slli       t0, t5, 5
                  and        s4, t4, s3
                  mulh       a1, zero, t4
                  divu       s9, sp, t4
                  beq        t5, t1, 734f
724:              sltiu      zero, s6, 567
725:              auipc      s2, 411146
                  bne        s2, a0, 729f
                  c.sub      a3, s0
                  or         a4, sp, s8
729:              c.slli     s11, 11
                  c.and      a4, a5
                  div        a2, t5, s7
                  c.sub      a1, a3
                  nop
734:              slli       s9, t3, 28
                  c.srai     a4, 22
                  ori        t0, t5, -180
                  csrrci     s3, 0x340, 27
                  mul        s4, a0, a3
                  c.beqz     s1, 756f
                  sltu       s2, a0, s8
                  addi       s4, s6, 87
                  fence
                  c.add      a4, t5
                  slli       s8, a0, 5
                  csrrc      a1, 0x340, s7
                  c.bnez     a3, 763f
                  remu       s9, t1, s3
                  c.and      a1, a1
                  csrrw      s1, 0x340, s7
                  blt        s9, t6, 754f
                  addi       a3, s6, 882
                  sub        t6, zero, t1
                  c.li       s2, 16
754:              bgeu       t6, gp, 771f
                  fence.i
756:              c.add      s10, s10
                  srai       s9, tp, 31
                  srl        s1, a7, a3
                  c.add      s10, t1
                  lui        s11, 218813
                  csrrw      t6, 0x340, s8
                  rem        a2, s3, a3
763:              c.lui      a0, 17
                  srli       s1, s5, 29
                  rem        s11, s6, a7
                  fence
                  mulhu      s9, t5, a2
                  bge        s7, s4, 782f
                  c.srai     a3, 9
                  srli       a7, a7, 0
771:              sltu       t4, a5, t3
                  csrrw      s11, 0x340, ra
                  srl        a1, a0, a4
                  xor        t6, t2, a1
                  add        t1, a3, gp
                  xor        s5, t3, t2
                  csrrw      a6, 0x340, s11
                  c.srai     a3, 14
                  sltu       s8, a5, s6
                  add        a0, t1, s9
                  c.addi     a6, -1
782:              csrrs      tp, 0x340, t0
                  c.sub      a2, a2
                  auipc      ra, 269593
                  addi       gp, s0, 15
                  c.or       s1, a3
                  div        s0, a5, t3
                  c.lui      s7, 22
                  xori       s10, t2, -220
                  srli       a7, s5, 2
                  srli       s2, a5, 10
                  c.lui      gp, 2
                  c.li       s4, 7
                  bgeu       t2, s8, 801f
                  or         s7, s11, s10
                  csrrsi     s0, 0x340, 9
                  ori        s8, s4, -825
                  auipc      a4, 194775
                  addi       gp, gp, 273
                  c.slli     a2, 28
801:              rem        a4, a7, ra
                  c.xor      a3, s1
                  bltu       t2, a2, 809f
                  c.sub      a2, s0
                  c.xor      s0, a5
                  csrrsi     a2, 0x340, 14
                  sltiu      s7, sp, 665
                  sltiu      a7, s10, 591
809:              addi       t5, a2, 81
                  c.andi     a5, 30
                  bgeu       a6, s1, 825f
                  csrrsi     t1, 0x340, 1
                  bltu       a2, a6, 817f
                  c.bnez     s0, 817f
                  slti       s11, t1, -882
                  srai       t0, a4, 30
817:              add        t0, zero, s6
                  mulhsu     s1, zero, t3
                  c.add      s1, t5
                  andi       s2, t4, -776
                  c.add      s3, t1
                  srl        ra, a5, t4
                  bne        s8, s4, 827f
                  c.slli     t0, 1
825:              bge        s3, t4, 842f
                  ori        s5, s1, -421
827:              divu       s0, t4, t4
                  c.beqz     a4, 835f
                  andi       tp, s9, 634
                  c.bnez     a2, 840f
                  xori       tp, s2, 10
                  csrrci     s11, 0x340, 5
                  slt        s3, s1, a7
                  bge        t2, a7, 851f
835:              slli       a2, t3, 27
                  srl        s4, s1, s0
                  c.add      ra, sp
                  csrrw      s9, 0x340, s5
                  mulh       t6, sp, a7
840:              c.beqz     a2, 846f
                  fence
842:              mul        s8, s2, zero
                  mulhsu     s8, t3, t1
                  c.bnez     a2, 853f
                  c.li       t6, -1
846:              sra        s5, a3, s1
                  lui        s7, 841724
                  srli       tp, s10, 0
                  ori        ra, ra, 576
                  sltu       a0, s7, s0
851:              csrrw      s2, 0x340, a2
                  srli       gp, t4, 19
853:              rem        s7, s9, s10
                  beq        tp, s0, 856f
                  addi       tp, sp, -753
856:              csrrw      s8, 0x340, t4
                  csrrc      s4, 0x340, a0
                  sub        a5, t6, zero
                  slli       s8, a0, 18
                  c.xor      a1, a0
                  c.srai     s1, 27
                  bgeu       tp, a1, 881f
                  slli       s9, t1, 8
                  sub        a0, a3, s9
                  c.li       t6, 11
                  mulh       t3, a2, t2
                  or         s11, a6, a5
                  add        s10, t5, s4
j_sub_3_sub_4_6:  jal        s8, sub_4
                  sub        s7, s3, t4
                  csrrs      a7, 0x340, zero
                  bltu       t1, gp, 869f
                  c.xor      s0, s1
                  and        gp, s11, tp
                  sra        s0, sp, s2
869:              addi       a0, gp, -390
                  c.andi     a4, -1
                  xor        s11, t1, t3
                  mul        t5, t3, s8
                  c.and      s0, a4
                  mulhu      s3, sp, s2
                  sltu       tp, gp, s8
                  fence
                  srl        t5, s7, gp
                  c.or       a4, a3
                  c.nop
                  divu       tp, s7, a6
881:              bge        s8, tp, 887f
                  slt        zero, zero, s0
                  fence.i
                  xor        t5, a0, s0
                  fence.i
                  div        t5, s2, t0
887:              or         s0, zero, t0
                  c.or       a5, s1
                  mul        s9, t0, tp
                  csrrsi     s4, 0x340, 21
                  c.lui      s1, 4
                  addi       tp, tp, 580
                  mul        s7, s9, a6
                  slli       s3, a0, 9
                  c.add      a4, s4
                  c.and      a4, a0
                  add        a4, s4, a4
                  fence.i
                  c.andi     a1, -1
                  csrrsi     t3, 0x340, 21
                  c.bnez     s1, 920f
                  fence.i
                  csrrwi     a6, 0x340, 20
                  xori       s11, a6, -487
                  div        t4, a5, s8
                  csrrw      a4, 0x340, s5
                  mulh       s8, s4, t0
                  div        s1, s1, tp
                  c.and      a2, a0
                  c.xor      a2, a0
                  rem        t1, t2, s11
                  xor        t0, a1, a1
                  and        zero, s5, s7
                  c.slli     a6, 19
                  csrrci     s10, 0x340, 29
                  lui        a1, 196856
                  add        a1, zero, gp
                  c.mv       s7, a0
                  srai       a2, s5, 0
920:              add        a6, s3, tp
                  csrrci     a2, 0x340, 11
                  c.and      a5, s1
                  c.and      a2, a2
                  mulh       a4, ra, s2
                  c.bnez     s1, 930f
                  c.sub      s1, a1
                  xori       s8, a1, -801
                  lui        t4, 261082
                  c.addi     s10, 27
930:              c.srai     a2, 10
                  beq        s4, s10, 949f
                  c.lui      s11, 5
                  bltu       sp, t6, 953f
                  c.and      s0, a4
                  sltiu      t3, t4, -814
                  add        s10, a0, t1
                  csrrc      t0, 0x340, a4
                  remu       ra, zero, s8
                  c.addi     s3, 14
                  fence
                  sra        zero, a7, t5
                  c.or       a2, s1
                  mul        s11, s7, t5
                  ori        a0, t5, 342
                  c.lui      s8, 4
                  c.xor      s0, a4
                  bltu       s9, s7, 950f
                  bltu       a3, t6, 961f
949:              ori        s11, a4, 214
950:              c.lui      s4, 27
                  c.andi     a2, 10
                  c.xor      s0, a2
953:              c.srli     a4, 30
                  xori       s0, s6, -951
                  or         ra, s5, t0
                  c.srai     a1, 17
                  c.srai     s0, 29
                  sltu       s9, a3, s6
                  c.srli     a1, 22
                  mulhsu     t4, tp, s3
961:              auipc      t6, 273238
                  divu       a3, t0, a5
                  csrrwi     gp, 0x340, 3
                  bltu       t5, t1, 981f
                  c.li       s10, 3
                  c.andi     a5, -1
                  blt        s3, s6, 981f
                  nop
                  div        s7, a5, t4
                  mul        s10, s0, t1
                  c.bnez     a3, 983f
                  slli       t0, zero, 26
                  c.andi     a2, 30
                  c.andi     a5, -1
                  c.li       a3, 14
                  add        a4, t0, s7
                  xor        s3, t4, a0
                  and        t6, s1, s7
                  c.slli     t6, 25
                  c.srli     s1, 20
981:              sltiu      t0, a0, 401
                  andi       s2, t1, -369
983:              srai       a4, s11, 28
                  add        s11, t4, a6
                  c.nop
                  csrrs      a5, 0x340, zero
                  srli       a4, gp, 23
                  ori        s11, a7, 634
                  c.or       a4, a4
                  c.addi     a7, -1
                  sll        t0, a7, a3
                  slti       s4, t4, 372
                  c.bnez     a5, 1008f
                  c.slli     s3, 13
                  xori       a5, s3, -414
                  c.lui      gp, 17
                  c.beqz     a3, 1015f
                  mulhsu     s9, s11, a1
                  fence.i
                  c.slli     a2, 31
                  csrrwi     t1, 0x340, 2
                  c.beqz     s0, 1012f
                  bltu       zero, t2, 1020f
                  c.add      tp, a4
                  c.mv       a0, s5
                  c.nop
                  beq        s4, tp, 1010f
1008:             addi       t4, s6, 749
                  c.beqz     a0, 1026f
1010:             addi       t3, sp, 181
                  blt        a0, s7, 1022f
1012:             c.bnez     a2, 1032f
                  andi       s10, tp, -132
                  and        s5, a5, s2
1015:             bge        s0, s9, 1032f
                  csrrwi     s10, 0x340, 28
                  csrrs      t3, 0x340, s7
                  or         s9, s1, t2
                  csrrs      a1, 0x340, s0
1020:             c.srli     s0, 13
                  bgeu       a5, s8, 1039f
1022:             nop
                  add        s2, t0, s11
                  csrrc      s10, 0x340, t6
                  mulhsu     a0, s5, s5
1026:             bge        t0, s4, 1037f
                  c.beqz     a2, 1032f
                  c.addi     s8, 18
                  csrrw      a7, 0x340, a0
                  mulh       a4, gp, s5
                  c.bnez     a1, 1037f
1032:             div        a1, t6, s0
                  c.xor      a5, s0
                  c.mv       s10, s5
                  c.slli     s1, 17
                  ori        s5, t4, -75
1037:             and        a7, s10, t6
                  c.mv       s5, s3
1039:             fence
                  c.andi     a3, -1
                  c.add      a6, a4
                  c.and      s0, a5
                  xor        t3, t4, t6
                  c.add      t3, tp
                  c.slli     t5, 23
                  c.bnez     a1, 1063f
                  c.or       s1, a2
                  c.li       s9, -1
                  c.sub      a4, a4
                  c.srai     a1, 10
                  srai       a7, a4, 21
                  c.add      s9, t5
                  csrrs      a3, 0x340, zero
                  slti       s4, a7, 574
                  c.srai     a0, 21
                  sltiu      a7, s0, 144
                  csrrc      a5, 0x340, a1
                  bge        a0, s1, 1077f
                  c.srli     a3, 6
                  slt        a2, t2, tp
                  c.bnez     a5, 1073f
                  or         t6, s7, tp
1063:             mulhsu     s7, s6, gp
                  sra        t0, a4, t6
                  xori       a3, sp, 326
                  fence
                  rem        t4, s10, ra
                  ori        s10, a1, 975
                  c.add      a0, s7
                  rem        t0, t6, s4
                  csrrs      a3, 0x340, s8
                  mul        ra, a6, s10
1073:             c.xor      s1, a4
                  c.mv       s11, a3
                  and        t1, zero, ra
                  xori       a4, t6, -704
1077:             add        a3, sp, gp
                  c.or       a0, s1
                  rem        s8, a2, s6
                  csrrsi     a4, 0x340, 23
                  c.slli     t4, 2
                  bge        s11, s6, 1088f
                  nop
                  bgeu       ra, sp, 1094f
                  ori        t1, a1, 194
                  c.lui      t6, 4
                  csrrci     zero, 0x340, 27
1088:             csrrsi     t3, 0x340, 4
                  csrrc      s8, 0x340, a0
                  slli       s11, t4, 12
                  xori       a6, s4, -594
                  sub        s0, s3, a4
                  bgeu       a4, s4, 1111f
1094:             bge        zero, s2, 1097f
                  c.beqz     a4, 1109f
                  csrrc      s2, 0x340, s7
1097:             mulhsu     gp, t2, a2
                  slt        s0, a2, s9
                  c.add      s1, s11
                  ori        a3, s4, -649
                  csrrs      s3, 0x340, a2
                  bltu       sp, ra, 1112f
                  csrrci     s1, 0x340, 27
                  bne        s3, a7, 1117f
                  sra        s1, a2, a1
                  and        t0, s5, s2
                  c.andi     a5, 7
                  mul        s11, gp, s5
1109:             csrrsi     t4, 0x340, 24
                  fence
1111:             fence
1112:             xori       s11, ra, -857
                  bne        s11, s8, 1120f
                  srl        a6, t0, s5
                  addi       tp, s2, -486
                  sll        a4, t3, t2
1117:             c.nop
                  auipc      tp, 815981
                  csrrw      tp, 0x340, t0
1120:             mul        s11, s8, a4
                  csrrwi     t4, 0x340, 10
                  blt        s4, sp, 1137f
                  bgeu       zero, a4, 1137f
                  remu       tp, a6, t3
                  ori        a7, sp, 860
                  sltiu      s2, sp, -120
                  slli       s2, t3, 9
                  c.sub      a3, a3
                  lui        s8, 726195
                  c.srai     a3, 17
                  sltiu      zero, s6, 301
                  fence.i
                  bge        s10, t2, 1136f
                  c.and      a5, a0
                  c.beqz     s1, 1137f
1136:             srl        s4, zero, t2
1137:             andi       zero, s1, -232
                  mulhsu     a5, tp, a6
                  mulh       a3, s0, a0
                  c.srli     a5, 11
                  csrrci     a5, 0x340, 21
                  csrrs      s10, 0x340, s4
                  slt        s1, tp, t6
                  mulhu      s10, a2, a3
                  c.addi     t5, -1
                  xor        s10, t5, a1
                  beq        t3, s1, 1156f
                  mul        t4, a3, s6
                  divu       s4, t6, s0
                  c.srai     a1, 12
                  c.addi     a3, 13
                  c.sub      s0, a5
                  c.srli     s1, 9
                  csrrwi     s10, 0x340, 8
                  c.bnez     a3, 1172f
1156:             c.or       a3, a0
                  mulh       s8, s7, tp
                  c.or       a5, a5
                  sltu       a3, t3, s3
                  c.lui      t4, 14
                  addi       a2, ra, 723
                  andi       s1, t6, 473
                  c.nop
                  srai       a6, a0, 29
                  c.andi     s1, 3
                  mulh       t3, t3, t6
                  nop
                  xori       t5, zero, 523
                  sll        t5, s1, t5
                  mulhu      a5, s3, zero
                  blt        a4, t1, 1188f
1172:             slt        t3, s11, t1
                  csrrwi     t4, 0x340, 4
                  sra        s7, t2, s4
                  blt        sp, t5, 1194f
                  mulh       s8, a7, s0
                  mulhu      t1, s9, a3
                  c.andi     a1, -1
                  c.lui      a1, 4
                  rem        a1, t1, a6
                  c.and      a4, a2
                  slti       a3, s3, 889
                  rem        gp, zero, s1
                  fence.i
                  c.andi     a0, 30
                  c.andi     a1, -1
                  xor        t0, s4, s11
1188:             c.mv       s11, a2
                  sra        a2, tp, gp
                  and        ra, s6, s3
                  and        s3, tp, s11
                  c.andi     a2, 27
                  beq        a4, a1, 1197f
1194:             srli       s10, s7, 16
                  or         t5, s5, t6
                  c.srai     a1, 6
1197:             csrrs      ra, 0x340, gp
                  rem        t0, t4, ra
                  c.srli     s1, 13
                  c.bnez     s0, 1217f
                  c.slli     s4, 9
                  add        s2, s6, a0
                  csrrwi     a0, 0x340, 4
                  xori       a0, s4, -1018
                  c.beqz     s1, 1209f
                  c.lui      t3, 3
                  beq        s4, a4, 1210f
                  c.sub      s0, a1
1209:             slli       s5, t6, 28
1210:             c.bnez     a0, 1214f
                  mulh       a4, zero, t2
                  c.beqz     a1, 1230f
                  c.beqz     s1, 1231f
1214:             ori        s7, gp, -196
                  c.xor      a0, a3
                  csrrw      zero, 0x340, t5
1217:             sll        s9, s1, a1
                  c.li       a4, 18
                  csrrc      s8, 0x340, t3
                  srli       s10, sp, 27
                  div        s1, s10, t2
                  csrrci     t5, 0x340, 21
                  slt        a2, a0, s1
                  bge        t6, ra, 1241f
                  c.srli     a5, 30
                  div        a7, s0, s9
                  csrrsi     a6, 0x340, 6
                  and        a3, s6, ra
                  slli       ra, s11, 27
1230:             c.andi     s1, -1
1231:             mul        s0, a5, t3
                  c.or       a4, s0
                  c.slli     s8, 1
                  c.or       a1, a1
                  mul        s1, a3, s11
                  andi       a2, s11, -959
                  csrrwi     t0, 0x340, 21
                  c.and      a3, s1
                  auipc      t4, 235016
                  beq        t4, s4, 1257f
1241:             c.srli     s1, 18
                  csrrwi     zero, 0x340, 11
                  c.andi     s0, -1
                  blt        s5, t1, 1258f
                  bgeu       a4, a0, 1251f
                  blt        t4, a3, 1266f
                  c.lui      a7, 14
                  csrrw      t3, 0x340, s4
                  sltiu      tp, a2, -909
                  c.srai     s0, 29
1251:             sub        gp, s6, s9
                  c.li       s0, 20
                  c.xor      a0, a3
                  andi       ra, t0, -132
                  nop
                  sll        t6, s8, t1
1257:             blt        t1, ra, 1271f
1258:             c.andi     s0, -1
                  bge        zero, sp, 1265f
                  sll        a6, t1, s0
                  .2byte 0x8501 # kHintInstr
                  c.li       t6, 7
                  c.add      gp, gp
                  c.nop
                  c.and      s0, a5
1265:             bne        tp, s3, 1282f
1266:             c.and      s1, a0
                  bne        zero, a5, 1274f
                  xori       s2, t0, -901
                  bge        s8, s1, 1288f
                  addi       s9, a4, -675
1271:             sra        t3, a6, s2
                  bltu       t5, s0, 1276f
                  beq        s10, t4, 1292f
1274:             sra        s3, s9, gp
                  auipc      s3, 1000388
1276:             mulhu      s11, a7, gp
                  c.slli     tp, 7
                  beq        s11, a2, 1288f
                  sub        ra, s7, s10
                  bltu       s0, t4, 1283f
                  c.add      a6, s3
1282:             c.mv       s3, a5
1283:             c.beqz     a3, 1294f
                  srai       t5, tp, 15
                  slti       s2, t1, 801
                  andi       s2, a3, 79
                  blt        s9, s7, 1291f
1288:             csrrs      gp, 0x340, t2
                  xori       a5, sp, -298
                  c.sub      s0, a4
1291:             sra        a2, a4, a3
1292:             c.sub      a5, a3
                  c.slli     s8, 30
1294:             and        s1, tp, zero
                  sltu       s2, s1, a5
                  or         ra, t4, s7
                  xori       t6, s5, 353
                  fence
                  csrrc      a5, 0x340, s7
                  add        s10, t4, s11
                  csrrwi     s8, 0x340, 13
                  csrrs      t5, 0x340, s5
                  csrrc      ra, 0x340, t3
                  slt        s8, t0, a1
                  c.li       gp, -1
                  csrrwi     ra, 0x340, 23
                  c.srli     a4, 25
                  csrrci     a3, 0x340, 15
                  c.srli     a2, 12
                  beq        a7, s11, 1313f
                  divu       s4, s7, a2
                  sub        a2, s3, t4
1313:             div        t1, tp, s9
                  srl        a7, a1, s8
                  xori       a2, a2, 667
                  srai       a7, t0, 9
                  csrrc      s10, 0x340, s5
                  csrrw      tp, 0x340, t3
                  c.li       s8, -1
                  div        t4, t5, s4
                  beq        s6, s6, 1324f
                  csrrs      a5, 0x340, zero
                  xori       s5, a1, 565
1324:             addi       s3, s6, 955
                  slti       t5, a3, -692
                  sltu       a7, a4, s11
                  sltu       t3, s11, s5
                  sll        t6, s0, s8
                  srai       a0, t0, 27
                  c.sub      s0, s0
                  c.srai     s1, 30
                  mulhu      a1, zero, s2
                  srl        t5, gp, t1
                  blt        t0, a0, 1351f
                  csrrci     a4, 0x340, 27
                  xor        a0, a0, a2
                  c.xor      s1, a0
                  remu       s5, t5, t3
                  lui        ra, 522530
                  csrrw      a3, 0x340, t2
                  c.andi     a4, -1
                  ori        s9, sp, 794
                  c.sub      a5, a5
                  slti       t6, s0, 199
                  slt        zero, ra, a2
                  csrrc      s0, 0x340, sp
                  slti       a6, zero, 22
                  slt        s8, a3, t0
                  c.lui      a6, 24
                  sll        s4, s7, a4
1351:             andi       s0, s4, 312
                  c.or       s0, s1
                  sltiu      s11, a2, 975
                  c.srli     a3, 20
                  andi       s10, s2, 750
                  c.srli     a1, 25
                  auipc      s8, 344384
                  csrrs      a7, 0x340, t5
                  xor        s9, a5, s4
                  nop
                  csrrc      gp, 0x340, t1
                  srl        s11, s9, t2
                  beq        a3, s3, 1368f
                  c.bnez     a5, 1373f
                  srl        a2, s6, t5
                  srli       tp, s6, 13
                  blt        s0, s2, 1369f
1368:             andi       s9, a2, 267
1369:             xor        s8, a1, s6
                  bgeu       a2, t4, 1387f
                  andi       s0, gp, -145
                  srai       s2, s5, 27
1373:             bltu       sp, sp, 1385f
                  srl        t4, a3, s2
                  andi       zero, t2, -371
                  csrrwi     s0, 0x340, 30
                  csrrsi     s8, 0x340, 19
                  c.nop
                  divu       t1, a6, a5
                  c.lui      s11, 12
                  add        a6, a6, a2
                  fence
                  auipc      s2, 258037
                  mulh       a0, a0, s2
1385:             blt        t3, s5, 1398f
                  and        t1, gp, t0
1387:             sltu       s3, s1, s7
                  add        s4, a6, tp
                  c.li       t1, -1
                  c.add      a6, a2
                  bgeu       sp, t6, 1395f
                  c.or       a1, a1
                  bne        ra, s7, 1408f
                  c.beqz     s1, 1404f
1395:             csrrsi     a3, 0x340, 5
                  csrrwi     t3, 0x340, 23
                  bgeu       s10, t3, 1401f
1398:             andi       gp, a4, 568
                  c.srai     a5, 11
                  divu       s5, t1, t6
1401:             fence
                  lui        zero, 807897
                  ori        a4, zero, 776
1404:             csrrs      a0, 0x340, s10
                  nop
                  c.andi     a5, -1
                  mulhu      a5, a1, s3
1408:             mul        s10, t2, s9
                  sltiu      zero, a7, -12
                  addi       t1, t5, -188
                  add        s5, a3, a6
                  c.slli     gp, 1
                  div        a5, s10, s1
                  sub        t4, gp, a0
                  srl        a0, ra, a4
                  rem        t1, a5, a1
                  lui        t6, 292623
                  c.bnez     s1, 1423f
                  c.or       a2, a5
                  bne        t2, a6, 1435f
                  srli       t3, s6, 11
                  srli       t5, s5, 16
1423:             csrrs      t6, 0x340, a6
                  c.addi     a5, -1
                  csrrs      s8, 0x340, tp
                  ori        a0, t1, -530
                  sub        s4, tp, a7
                  mulhsu     a6, sp, sp
                  fence
                  c.srli     a3, 14
                  srli       gp, ra, 21
                  xori       tp, a2, -456
                  c.xor      a4, s0
                  add        s0, s9, s5
1435:             c.sub      a1, a5
                  c.and      a5, a4
                  c.add      t3, a2
                  c.and      a3, a2
                  ori        a5, s6, -20
                  sltu       s3, sp, t3
                  divu       a0, a5, s10
                  srai       a7, s9, 9
                  sltiu      t5, s3, -324
                  rem        a3, s11, sp
                  c.beqz     a1, 1459f
                  andi       tp, s10, -822
                  bne        t2, sp, 1464f
                  and        t4, a7, s0
                  bge        a1, tp, 1456f
                  c.lui      s11, 12
                  sltiu      t3, t2, 171
                  slt        t6, s3, t5
                  fence
                  fence.i
                  bgeu       t2, s1, 1461f
1456:             nop
                  c.sub      a4, s0
                  c.xor      a3, a1
1459:             remu       s8, t1, ra
                  sltu       a6, s3, s4
1461:             div        s7, a5, tp
                  sub        s7, a0, s10
                  c.sub      a0, a0
1464:             xor        t6, s4, a7
                  c.bnez     a2, 1478f
                  addi       t1, s1, -912
                  and        s3, s6, t1
                  c.slli     a7, 14
                  c.or       s0, s0
                  srai       s9, a0, 27
                  mulhu      gp, s0, t1
                  xori       s9, s2, -948
                  sra        t3, s5, t3
                  c.slli     t3, 23
                  sub        a2, s11, s3
                  sll        t6, s1, gp
                  c.xor      a2, a1
1478:             rem        a1, a3, t0
                  fence.i
                  nop
                  sub        s2, a0, s0
                  c.lui      t5, 15
                  bge        t5, a3, 1493f
                  divu       s2, a3, s1
                  c.beqz     a3, 1499f
                  divu       gp, a5, gp
                  srai       t1, s9, 19
                  c.add      t4, t6
                  sltu       s0, sp, a0
                  sltiu      s4, a4, -232
                  c.or       a2, a4
                  xori       a5, a3, 989
1493:             rem        gp, s0, a5
                  srai       zero, a6, 28
                  bge        s7, t5, 1512f
                  c.andi     a0, 15
                  c.srli     a2, 20
                  c.bnez     a2, 1517f
1499:             slli       ra, s9, 28
                  mul        s0, a7, s7
                  bltu       gp, s10, 1521f
                  divu       t1, s10, sp
                  sltu       ra, tp, s0
                  blt        s3, a2, 1522f
                  lui        a4, 560808
                  slt        a1, tp, gp
                  sltiu      a4, s3, 625
                  bgeu       a4, s0, 1527f
                  beq        s3, s3, 1511f
                  c.srai     s0, 5
1511:             mulhsu     zero, s0, t2
1512:             bne        s0, s1, 1529f
                  c.and      a0, a5
                  rem        a0, a3, sp
                  auipc      a5, 453301
                  fence.i
1517:             csrrsi     gp, 0x340, 14
                  .2byte 0x800e # kHintInstr
                  c.xor      a2, a5
                  bgeu       sp, t0, 1530f
                  srli       gp, s1, 25
1521:             mulhsu     gp, a0, a4
1522:             mul        a6, a7, a4
                  c.or       a1, a1
                  c.andi     a1, 15
                  c.addi     s10, -1
                  c.li       a6, 31
1527:             addi       t6, s11, 482
                  c.lui      a5, 31
1529:             xor        gp, a0, a1
1530:             bne        a1, s6, 1547f
                  ori        a4, a5, -243
                  addi       t1, t1, -1021
                  c.addi     a1, -1
                  slli       t1, s6, 11
                  add        t6, s5, s6
                  csrrw      s7, 0x340, s9
                  c.nop
                  c.lui      s7, 20
                  sltu       a5, s7, s7
                  c.mv       s2, t0
                  remu       a6, s6, a3
                  divu       a1, ra, a0
                  csrrwi     t5, 0x340, 9
                  bltu       s6, a0, 1547f
                  c.li       a5, -1
                  mulh       a0, t2, s4
1547:             csrrw      t0, 0x340, s10
                  c.srai     a3, 27
                  srli       a2, t0, 8
                  xor        s0, sp, a2
                  bge        s1, a0, 1560f
                  c.beqz     a3, 1569f
                  rem        ra, s3, t3
                  csrrwi     t3, 0x340, 21
                  andi       t5, t0, 825
                  bge        s9, zero, 1568f
                  csrrs      t3, 0x340, tp
                  addi       t1, a7, 666
                  c.addi     a0, 27
1560:             c.nop
                  slti       tp, s4, -9
                  sub        a1, s0, a1
                  c.andi     a2, -1
                  mulhsu     s7, t1, s4
                  csrrwi     t6, 0x340, 30
                  c.li       t4, -1
                  csrrci     t5, 0x340, 24
1568:             andi       a5, s1, 946
1569:             mulhsu     a7, gp, t0
                  srl        t0, t4, s11
                  csrrw      t1, 0x340, t0
                  andi       s1, t6, -778
                  rem        s4, s7, a5
                  addi       tp, s6, -357
                  csrrsi     s9, 0x340, 1
                  lui        zero, 961251
                  div        t5, t2, zero
                  bgeu       a6, s1, 1596f
                  bne        a6, t3, 1583f
                  c.srli     s0, 27
                  srai       s8, a6, 31
                  srai       s3, s5, 11
1583:             andi       a3, s8, -341
                  c.srai     a1, 19
                  xori       s1, a0, 849
                  nop
                  add        zero, a0, a5
                  sra        s11, s2, a4
                  addi       s8, s2, -655
                  c.and      a0, a1
                  c.and      a4, s1
                  srli       s0, tp, 5
                  srai       zero, a4, 2
                  c.bnez     a4, 1598f
                  c.nop
1596:             or         s9, zero, s8
                  sub        a1, ra, t3
1598:             c.lui      a6, 11
                  bltu       s9, t6, 1602f
                  fence.i
                  slti       a3, s9, 522
1602:             c.bnez     s1, 1608f
                  divu       a2, s4, s11
                  srli       s8, t3, 16
                  sra        gp, s1, a7
                  add        s11, s2, s3
                  andi       s10, s11, -528
1608:             csrrc      t0, 0x340, s4
                  lw         s8, 4(sp)
                  c.srai     a0, 3
                  addi       sp, sp, 40
                  sub        a4, gp, t3
                  c.slli     a4, 22
                  fence.i
                  lui        gp, 672707
                  slt        tp, a0, t2
                  nop
2697:             c.jr x24
sub_4:            or         t6, tp, a1
                  slt        a4, s8, a1
                  srl        s2, s4, t2
                  addi       sp, sp, -12
                  or         s4, t2, a7
                  divu       a7, sp, t5
                  sw         s8, 4(sp)
                  csrrwi     s2, 0x340, 8
                  c.or       a3, a2
                  c.addi     a4, -1
                  mulhsu     a1, zero, a5
                  c.srli     a4, 27
sub_4_7:          jal        s8, 11f
0:                jal        ra, 3f
1:                c.jal      9f
2:                jal        ra, 12f
3:                jal        ra, 7f
4:                c.jal      10f
5:                jal        ra, 4b
6:                c.jal      0b
7:                c.j        8f
8:                jal        ra, 1b
9:                jal        ra, 5b
10:               jal        ra, 2b
11:               c.jal      6b
12:               mulh       ra, a6, a3
                  la         a1, region_0+3052 #start load_store_instr_stream_2
                  lbu        zero, -649(a1)
                  la         ra, region_0+3460 #start load_store_instr_stream_1
                  la         t3, region_0+2674 #start load_store_instr_stream_0
                  sb         t5, 204(ra)
                  lbu        t0, 23(t3)
                  sb         ra, 96(ra)
                  lbu        a2, -25(t3)
                  lbu        s1, -905(a1)
                  lb         s8, 42(t3)
                  lbu        t5, -253(ra)
                  sh         ra, 8(t3)
                  lbu        s1, -203(ra)
                  lb         t0, -1103(a1)
                  sh         s5, -16(ra)
                  sw         t2, -62(t3)
                  sw         a3, -1216(a1)
                  sh         gp, 30(t3)
                  sb         s11, -99(ra)
                  lbu        t4, -60(ra)
                  lb         s2, 31(a1)
                  lhu        a6, 42(t3)
                  sb         s2, 349(a1)
                  lbu        s5, -102(a1)
                  sb         a3, -1261(a1)
                  sb         s4, 41(t3)
                  lb         a7, 45(t3)
                  lh         a7, -1092(a1) #end load_store_instr_stream_2
                  lbu        s9, 38(ra) #end load_store_instr_stream_1
                  lb         t1, -36(t3) #end load_store_instr_stream_0
                  la         s7, region_4+3993 #start riscv_load_store_rand_instr_stream_1
                  lh         a1, 9(s7)
                  sb         ra, 14(s7)
                  lh         s8, 5(s7)
                  slti       t5, tp, 291
                  lhu        s4, -1(s7)
                  lb         s3, 8(s7)
                  csrrwi     s4, 0x340, 8
                  and        t6, a3, s9
                  c.li       t3, -1
                  lw         s11, 11(s7)
                  lbu        zero, 9(s7)
                  fence
                  csrrs      s10, 0x340, zero
                  c.sub      a2, a3
                  lb         zero, -16(s7)
                  lb         a4, 4(s7)
                  c.sub      a4, a1
                  lb         a2, 16(s7)
                  lh         t3, 11(s7)
                  sb         s1, -3(s7)
                  sb         a5, 14(s7)
                  sb         s3, -6(s7)
                  sltiu      a2, a4, 98
                  mulhu      s8, zero, t2
                  lbu        s4, 16(s7)
                  mulhu      s1, s0, zero
                  fence
                  sh         a5, 7(s7)
                  c.slli     s4, 13
                  xor        s4, t2, s9
                  lbu        s0, 11(s7)
                  sb         s6, 5(s7)
                  lb         t5, -8(s7)
                  sb         s1, -11(s7)
                  csrrw      t3, 0x340, s9
                  slti       s10, sp, 278
                  c.nop
                  lb         s3, -15(s7)
                  sh         a0, -3(s7)
                  lhu        tp, 9(s7) #end riscv_load_store_rand_instr_stream_1
                  addi       a1, zero, 6 #init loop 0 counter
                  c.xor      a5, a4
                  .2byte 0x8701 # kHintInstr
                  xor        a7, t6, a1
                  sltiu      s8, a7, 264
                  c.srli     a2, 13
                  addi       zero, zero, 0 #init loop 0 limit
                  sub        s9, sp, tp
                  c.xor      a4, a3
                  c.or       a4, a0
                  csrrwi     s7, 0x340, 31
                  sltu       a3, t5, t1
                  c.addi     t0, 7
                  auipc      t4, 922494
                  c.nop
sub_4_26_0_t:     add        t4, s8, gp
                  addi       a1, a1, -6 #update loop 0 counter
                  xori       s4, t4, 777
                  divu       s9, s4, a7
                  csrrsi     tp, 0x340, 25
                  fence.i
                  c.lui      s5, 9
                  c.srai     s0, 6
                  c.sub      s1, a2
                  auipc      a6, 844588
                  c.beqz     a1, sub_4_26_0_t #branch for loop 0
                  c.add      tp, a3
                  la         a0, region_0+2733 #start riscv_hazard_instr_stream_0
                  lhu        s7, 3(a0)
                  csrrc      ra, 0x340, a2
                  lb         a6, 12(a0)
                  lbu        ra, -8(a0)
                  c.xor      a2, a2
                  lb         a2, -12(a0)
                  sw         s10, 11(a0)
                  lh         a6, -9(a0)
                  sb         a7, 13(a0)
                  slt        a6, a6, ra
                  sltu       s7, ra, s7
                  lbu        s10, 6(a0)
                  lb         a6, 16(a0)
                  sb         s10, -15(a0)
                  sb         a6, 1(a0)
                  sb         s10, 7(a0)
                  lbu        ra, -1(a0)
                  lh         ra, -15(a0)
                  lbu        a7, 4(a0)
                  sb         a2, 8(a0)
                  andi       a2, a2, 957
                  sra        a7, s10, a2
                  c.addi     s10, 13
                  lb         s7, -8(a0)
                  sb         ra, 2(a0)
                  sh         a6, -7(a0)
                  lw         a2, -13(a0)
                  and        s10, a2, a7
                  lui        a6, 372494
                  lbu        s7, 2(a0)
                  sb         s10, -5(a0)
                  divu       s7, s7, s10
                  sb         s10, -15(a0)
                  lbu        a2, -14(a0) #end riscv_hazard_instr_stream_0
                  la         t4, region_1+8603 #start load_store_instr_stream_4
                  la         t0, region_1+6365 #start load_store_instr_stream_3
                  la         a1, region_1+356 #start load_store_instr_stream_1
                  lb         s3, 1192(t0)
                  lh         s9, 1441(t0)
                  la         a6, region_1+5320 #start load_store_instr_stream_2
                  sb         t4, 5(a1)
                  lh         t6, 414(a6)
                  lb         a5, -13(t4)
                  la         t3, region_1+13474 #start load_store_instr_stream_0
                  sh         a2, 11(t4)
                  sb         s11, -37(a1)
                  lhu        a3, 1636(a6)
                  lb         s4, -16(t4)
                  lh         tp, -42(a1)
                  sb         t0, 765(t0)
                  sb         s7, -25(a1)
                  lbu        a4, 1937(a6)
                  lh         a2, 86(a6)
                  sw         a3, -56(a1)
                  sb         t3, -283(t3)
                  lb         s5, 4(t4)
                  sb         a2, -927(t0)
                  sh         t4, 1(t4) #end load_store_instr_stream_4
                  lb         tp, 761(a6)
                  sh         t5, -58(a1)
                  lbu        a3, -40(t0)
                  lb         s0, 1293(a6)
                  sh         s4, -69(t0)
                  lbu        s11, -463(t3)
                  lhu        s2, -36(a1)
                  sb         a6, -967(a6)
                  lb         s4, 1395(t3)
                  lw         s0, 56(a1)
                  sb         t3, -341(t3)
                  lb         s3, -58(a1) #end load_store_instr_stream_1
                  sb         s0, -1370(t0) #end load_store_instr_stream_3
                  lbu        t6, 1077(a6) #end load_store_instr_stream_2
                  lb         s8, 27(t3)
                  sb         s8, 1210(t3) #end load_store_instr_stream_0
                  addi       t4, zero, 4 #init loop 1 counter
                  and        t6, a4, s5
                  addi       s7, zero, -16 #init loop 1 limit
                  add        s5, s1, a7
sub_4_24_1_t:     auipc      t5, 798658
                  addi       t4, t4, -4 #update loop 1 counter
                  c.lui      t3, 31
                  slti       s2, t1, -497
                  andi       s8, ra, 435
                  c.xor      s1, a2
                  addi       a2, zero, -2 #init loop 0 counter
                  or         s10, gp, zero
                  sll        s4, t5, a2
                  addi       tp, zero, 16 #init loop 0 limit
                  rem        a6, ra, s7
sub_4_24_0_t:     slt        t5, t0, s1
                  .2byte 0x0201 # kHintInstr
                  c.li       t1, 2
                  rem        a4, t1, gp
                  div        a3, a3, s5
                  addi       a2, a2, 7 #update loop 0 counter
                  sra        t3, a5, t3
                  blt        a2, tp, sub_4_24_0_t #branch for loop 0
                  sltiu      s2, s2, -385
                  bge        t4, s7, sub_4_24_1_t #branch for loop 1
                  slli       a5, s6, 5
                  la         a3, region_4+2741 #start load_store_instr_stream_0
                  la         gp, region_1+8550 #start load_store_instr_stream_2
                  sb         a7, 10(a3)
                  la         tp, region_2+3167 #start load_store_instr_stream_1
                  sb         s1, 5(gp)
                  lbu        a7, 16(gp)
                  lbu        s11, -7(a3)
                  sb         a0, 5(gp)
                  lhu        s8, 10(gp)
                  lw         t6, -1015(tp)
                  lw         t0, -9(a3)
                  lbu        s9, -2(gp)
                  lbu        s0, 12(a3)
                  lbu        t1, -1388(tp)
                  lbu        ra, -7(gp)
                  sb         s9, -12(a3)
                  lbu        s2, -756(tp)
                  sb         s8, -1(gp)
                  lb         t4, 13(a3)
                  lh         a1, 4(gp)
                  lb         s4, 683(tp)
                  lbu        a6, -9(gp)
                  lw         s1, -5(a3)
                  sb         t2, 567(tp)
                  sb         a1, -5(a3)
                  sw         t3, 6(gp) #end load_store_instr_stream_2
                  lbu        a6, 550(tp) #end load_store_instr_stream_1
                  lhu        a0, -13(a3) #end load_store_instr_stream_0
                  la         ra, region_3+183 #start riscv_load_store_rand_instr_stream_3
                  sltiu      s9, s3, -661
                  c.slli     a2, 17
                  sb         sp, -38(ra)
                  sb         t2, -2(ra)
                  c.nop
                  sw         a3, -7(ra)
                  c.or       a2, a0
                  sb         s1, -22(ra)
                  sub        s1, gp, s5
                  lb         t3, 5(ra)
                  lhu        tp, -63(ra)
                  sb         a6, -26(ra)
                  ori        s7, t3, -484
                  sh         zero, 19(ra)
                  sb         t2, 30(ra)
                  slti       s8, s1, -145
                  rem        t3, a5, s9
                  lbu        a7, -45(ra)
                  lbu        zero, 25(ra)
                  sltiu      s0, a4, 881
                  srl        a1, s10, t5
                  sub        s3, s9, gp
                  csrrci     s5, 0x340, 29
                  lbu        gp, 24(ra)
                  sb         s0, 14(ra)
                  csrrsi     s4, 0x340, 8
                  c.slli     a2, 27
                  xor        t5, s3, s5
                  lbu        s1, 20(ra)
                  srai       t3, s0, 27
                  mul        zero, tp, t3
                  sll        a7, ra, a0
                  lbu        s5, -58(ra)
                  lb         s7, -10(ra)
                  c.addi     a0, -1
                  lbu        s11, 62(ra)
                  csrrw      t5, 0x340, t1
                  sb         a1, -1(ra)
                  sb         t1, 2(ra)
                  divu       s11, s6, s10
                  sb         t6, -16(ra)
                  add        a2, t3, a3
                  csrrs      a1, 0x340, t1
                  nop
                  lh         a2, 41(ra)
                  or         s4, a7, a3
                  lbu        s5, 58(ra)
                  srl        s4, t2, s0
                  and        t1, ra, t5
                  csrrw      s8, 0x340, a4
                  mulhsu     s5, ra, s3
                  lb         s5, 21(ra) #end riscv_load_store_rand_instr_stream_3
                  la         s10, region_0+1703 #start load_store_instr_stream_3
                  la         s1, region_0+759 #start load_store_instr_stream_1
                  la         a0, region_0+1987 #start load_store_instr_stream_2
                  la         a4, region_0+568 #start load_store_instr_stream_0
                  lb         gp, 310(a4)
                  lbu        s2, 9(a0)
                  sh         tp, 470(a4)
                  lbu        s7, -10(s10)
                  lb         s11, 2002(s1)
                  lw         t3, -3(a0)
                  lbu        t4, 1801(a4)
                  la         tp, region_0+3815 #start load_store_instr_stream_4
                  lbu        a3, 14(a0)
                  sh         t3, 9(s10)
                  sb         sp, -36(tp)
                  lhu        a6, 15(a0)
                  sb         zero, 2(tp)
                  lb         s2, 14(s10)
                  lb         s3, 1415(s1)
                  sb         t2, 1990(s1)
                  sb         a7, -435(a4)
                  lhu        a7, 11(a0)
                  lb         zero, -267(s1)
                  lb         a5, -12(s10)
                  sw         s6, -15(a0)
                  sb         a5, -10(s10)
                  lbu        t1, -26(tp)
                  sb         sp, 508(a4)
                  lb         s8, -10(s10)
                  lh         s0, -5(tp)
                  sh         s11, 13(a0)
                  sw         s8, -3(s10) #end load_store_instr_stream_3
                  lbu        s9, 62(tp)
                  lb         t3, -262(s1)
                  lb         s9, 52(s1) #end load_store_instr_stream_1
                  sb         s3, -1(a0)
                  lhu        s3, -33(tp)
                  sh         s5, 20(a4)
                  lbu        a7, 1349(a4)
                  lbu        zero, 4(a0) #end load_store_instr_stream_2
                  lb         t4, -53(tp) #end load_store_instr_stream_4
                  sh         t1, -106(a4) #end load_store_instr_stream_0
                  la         a7, region_2+6233 #start load_store_instr_stream_1
                  la         t3, region_3+26 #start load_store_instr_stream_0
                  sb         a5, 14(a7)
                  lb         ra, -5(a7)
                  sh         a5, -24(t3)
                  lbu        t4, -12(a7)
                  lw         t6, 170(t3)
                  lbu        a3, 224(t3)
                  sb         s8, -7(a7)
                  sb         s2, 334(t3)
                  lh         s8, 454(t3)
                  lh         s4, -7(a7)
                  lb         s5, 9(a7) #end load_store_instr_stream_1
                  lbu        a4, 268(t3)
                  lb         a5, 418(t3) #end load_store_instr_stream_0
sub_4_10:         jal        s8, 0f
0:                jal        gp, 7f
1:                c.jal      6f
2:                c.j        10f
3:                c.jal      12f
4:                jal        ra, 5f
5:                c.jal      1b
6:                jal        t1, 8f
7:                c.jal      9f
8:                jal        t1, 3b
9:                jal        gp, 2b
10:               jal        s3, 11f
11:               c.jal      4b
12:               c.nop
sub_4_11:         jal        s8, 2f
0:                c.j        17f
1:                c.j        22f
2:                c.jal      12f
3:                c.j        23f
4:                jal        t4, 1b
5:                c.jal      7f
6:                jal        ra, 25f
7:                c.j        18f
8:                c.j        24f
9:                c.jal      3b
10:               jal        a5, 8b
11:               c.jal      13f
12:               c.j        14f
13:               jal        ra, 15f
14:               c.j        21f
15:               c.jal      6b
16:               c.j        26f
17:               c.j        10b
18:               c.jal      0b
19:               jal        gp, 9b
20:               c.j        11b
21:               c.jal      19b
22:               c.j        16b
23:               c.jal      5b
24:               c.jal      20b
25:               jal        a0, 4b
26:               andi       s2, t2, -103
                  .2byte 0x9032 # kHintInstr
                  la         s3, region_1+1402 #start riscv_load_store_rand_instr_stream_2
                  lhu        s4, 152(s3)
                  lbu        s9, 99(s3)
                  lhu        tp, -12(s3)
                  lb         tp, -231(s3)
                  sb         a3, -91(s3)
                  c.li       s4, -1
                  lbu        s2, -99(s3)
                  lbu        gp, -135(s3)
                  lb         s10, 88(s3)
                  c.add      s7, s6
                  sra        a6, s2, t0
                  fence.i
                  fence
                  andi       s9, t5, 85
                  lb         tp, 43(s3)
                  c.xor      a1, a3
                  mulh       a5, s9, a6
                  sh         s6, 234(s3)
                  sb         t3, -135(s3)
                  addi       t1, t4, 968
                  sb         s1, -147(s3)
                  lh         s11, -200(s3)
                  csrrsi     s10, 0x340, 1
                  c.xor      a0, a4
                  csrrs      a4, 0x340, s2
                  sb         s9, -56(s3)
                  sb         sp, 209(s3)
                  or         gp, s10, s1
                  lbu        s1, 7(s3)
                  csrrc      a0, 0x340, t0
                  c.addi     s11, -1
                  lhu        a3, -72(s3)
                  lb         t1, -35(s3)
                  sra        t5, a4, t2
                  sw         ra, -114(s3)
                  slli       gp, t1, 6
                  slli       a0, s4, 24
                  sub        t5, s7, s1
                  lbu        a7, -187(s3)
                  slli       s5, a0, 9
                  sh         a7, -144(s3)
                  sb         t4, -1(s3)
                  srai       zero, a7, 25
                  lb         t1, 116(s3)
                  sb         t3, 117(s3)
                  fence
                  sb         a0, 48(s3)
                  lb         s10, -217(s3)
                  c.xor      a5, s1
                  lb         t5, 54(s3)
                  mulhsu     tp, s4, s5
                  lbu        t0, 243(s3)
                  sb         a0, -10(s3) #end riscv_load_store_rand_instr_stream_2
                  la         s8, region_1+5470 #start riscv_hazard_instr_stream_3
                  lbu        a1, -339(s8)
                  remu       a6, tp, a6
                  lbu        s3, 920(s8)
                  sra        tp, a1, tp
                  add        gp, a1, gp
                  lbu        s3, -125(s8)
                  srl        tp, s2, a1
                  sb         s2, -1577(s8)
                  c.sub      a1, a1
                  lb         gp, 14(s8)
                  sh         s2, -900(s8)
                  lbu        a1, 1247(s8)
                  lh         a1, -420(s8)
                  sb         gp, -99(s8)
                  lh         a6, 808(s8)
                  sb         a6, 215(s8)
                  lw         a1, -1718(s8)
                  fence.i
                  remu       s3, a1, a1
                  sb         a6, 215(s8)
                  lb         a6, -867(s8)
                  lb         tp, -1369(s8)
                  lb         gp, 1821(s8)
                  addi       s3, gp, -575
                  sb         s3, -1666(s8)
                  lb         tp, 1501(s8)
                  c.srai     a1, 27
                  sb         a1, 955(s8)
                  lb         s2, 1576(s8)
                  csrrw      s2, 0x340, a1
                  mul        a6, tp, a6
                  sb         s3, -1650(s8)
                  srl        s3, gp, gp
                  sb         tp, 360(s8) #end riscv_hazard_instr_stream_3
sub_4_6:          jal        s8, 14f
0:                c.j        16f
1:                c.jal      10f
2:                c.j        13f
3:                jal        ra, 22f
4:                jal        s0, 1b
5:                c.jal      18f
6:                jal        ra, 20f
7:                jal        t1, 17f
8:                jal        t0, 11f
9:                c.jal      19f
10:               jal        ra, 6b
11:               jal        ra, 5b
12:               c.jal      15f
13:               jal        ra, 9b
14:               c.jal      4b
15:               jal        t1, 0b
16:               c.jal      21f
17:               c.jal      3b
18:               jal        ra, 12b
19:               jal        t4, 7b
20:               jal        ra, 8b
21:               jal        ra, 2b
22:               c.srai     a5, 18
                  la         s8, region_3+422 #start load_store_instr_stream_1
                  lbu        s2, -59(s8)
                  la         s0, region_0+492 #start load_store_instr_stream_0
                  lbu        t3, 9(s8)
                  sh         t2, -2(s0)
                  sh         ra, 36(s8)
                  lb         t0, -15(s8)
                  lb         a1, -7(s0)
                  lb         s9, 55(s8)
                  sb         s8, 51(s8)
                  lw         t3, -12(s0)
                  lb         a0, 14(s8)
                  lbu        s9, 17(s8)
                  lb         tp, 1(s8)
                  lb         ra, -12(s0)
                  lh         s1, -24(s8) #end load_store_instr_stream_1
                  lb         a2, -1(s0) #end load_store_instr_stream_0
                  la         a6, region_1+8301 #start load_store_instr_stream_2
                  la         s9, region_3+443 #start load_store_instr_stream_1
                  lw         a1, -139(s9)
                  sh         sp, -9(a6)
                  sb         a5, 8(s9)
                  la         s10, region_4+1858 #start load_store_instr_stream_0
                  lw         s11, -79(s9)
                  la         a3, region_0+3423 #start load_store_instr_stream_3
                  sw         a3, -2(s10)
                  lh         s11, 49(a6)
                  sb         ra, -44(s9)
                  lbu        s2, 52(a6)
                  sb         s11, 18(s9)
                  sb         s9, 103(a3)
                  lb         zero, -6(a6)
                  lbu        zero, -11(s10)
                  lb         a2, -136(a3)
                  lbu        ra, 14(s10)
                  lb         s2, -56(s9)
                  sb         a5, 46(a3)
                  lb         t6, -146(a3)
                  lh         a7, -16(s10)
                  lbu        t0, -47(a3) #end load_store_instr_stream_3
                  sw         s3, 25(s9)
                  lb         t3, -217(s9) #end load_store_instr_stream_1
                  lbu        s7, -15(a6)
                  lbu        a1, 18(a6) #end load_store_instr_stream_2
                  sb         a5, 3(s10) #end load_store_instr_stream_0
sub_4_8:          jal        s8, 4f
0:                c.jal      11f
1:                c.jal      3f
2:                c.j        8f
3:                jal        ra, 16f
4:                jal        ra, 6f
5:                c.j        7f
6:                c.j        12f
7:                c.jal      1b
8:                jal        tp, 5b
9:                c.j        14f
10:               c.jal      13f
11:               jal        gp, 2b
12:               jal        t1, 15f
13:               jal        ra, 0b
14:               c.j        10b
15:               c.jal      9b
16:               sltu       ra, t0, a6
                  la         t4, region_1+15941 #start riscv_hazard_instr_stream_2
                  fence.i
                  lbu        a5, 10(t4)
                  slti       s7, a5, 137
                  srai       t6, a3, 26
                  sb         a1, 7(t4)
                  sltiu      a1, a1, -960
                  c.addi     a1, 24
                  fence
                  c.andi     a1, -1
                  sb         a1, -7(t4)
                  csrrci     a7, 0x340, 23
                  sra        s7, s7, t6
                  csrrwi     a7, 0x340, 11
                  mulh       a7, s7, t6
                  sh         a7, 37(t4)
                  mul        a1, a1, s7
                  lb         a3, 0(t4)
                  lbu        a7, 57(t4)
                  lb         a1, 48(t4)
                  lhu        a1, 49(t4)
                  sb         a7, -61(t4)
                  fence
                  ori        a5, a1, 426
                  fence.i
                  sh         a5, -23(t4)
                  lh         t6, 37(t4)
                  fence.i
                  c.nop
                  sra        t6, a5, a3
                  lbu        a7, 36(t4)
                  nop
                  lb         s7, -24(t4)
                  lb         a7, -21(t4)
                  lh         a7, -19(t4)
                  lbu        a3, -53(t4) #end riscv_hazard_instr_stream_2
                  la         ra, region_4+3548 #start load_store_instr_stream_2
                  lhu        t5, -10(ra)
                  la         s3, region_2+4208 #start load_store_instr_stream_1
                  lbu        s2, -48(s3)
                  la         t3, region_0+392 #start load_store_instr_stream_0
                  sb         s3, -211(t3)
                  lbu        s9, 41(s3)
                  lb         t4, -231(t3)
                  sb         a3, -1809(ra)
                  lh         gp, -12(s3)
                  lhu        gp, 170(t3)
                  lh         s1, -1114(ra)
                  lb         tp, -43(s3)
                  lb         s2, -1402(ra)
                  lb         s0, -1849(ra)
                  lw         s1, 32(ra)
                  lbu        a5, 61(s3)
                  sb         tp, -1915(ra)
                  lb         s2, 5(s3)
                  sw         zero, -1524(ra) #end load_store_instr_stream_2
                  sb         a3, -139(t3)
                  lb         a7, 14(s3) #end load_store_instr_stream_1
                  sh         s6, -186(t3) #end load_store_instr_stream_0
                  la         a2, region_2+51 #start load_store_instr_stream_0
                  la         s4, region_2+4328 #start load_store_instr_stream_2
                  la         t6, region_2+1285 #start load_store_instr_stream_3
                  la         a7, region_2+533 #start load_store_instr_stream_1
                  lbu        a6, 62(t6)
                  lbu        a6, 12(a7)
                  lb         t3, -32(t6)
                  sb         s2, -1320(s4)
                  lh         a3, -17(a7)
                  lb         a4, -62(s4)
                  lb         s1, 151(a2)
                  lhu        s2, 5(t6)
                  lbu        s11, 168(a2)
                  sh         s7, -582(s4)
                  sw         t0, 207(a7)
                  lb         s2, -7(t6)
                  lbu        s0, 226(a2)
                  lb         a0, 110(a7)
                  sb         s10, 36(t6)
                  lh         s5, -223(a7)
                  sb         a7, 14(a2)
                  sb         a6, -419(s4)
                  lbu        a4, 204(a2)
                  lhu        a5, -73(a7)
                  lb         s7, 962(s4)
                  lbu        t3, -228(a7)
                  lb         a3, -1664(s4)
                  lbu        a6, 64(a2)
                  lb         s0, -52(t6)
                  lbu        gp, 1641(s4)
                  lb         ra, 146(a7)
                  lbu        t3, -1615(s4)
                  lb         t0, -169(s4)
                  lbu        t3, 52(t6) #end load_store_instr_stream_3
                  sb         ra, -179(a7) #end load_store_instr_stream_1
                  lhu        s9, -470(s4) #end load_store_instr_stream_2
                  sb         a2, -24(a2) #end load_store_instr_stream_0
                  addi       s8, zero, -4 #init loop 0 counter
                  rem        zero, t4, s5
                  c.and      a3, s0
                  addi       s2, t4, -826
                  csrrs      a5, 0x340, s0
                  csrrc      s3, 0x340, a2
                  xori       ra, a4, 723
                  xori       s4, a5, -652
                  c.srli     s1, 7
                  sltiu      zero, t5, -930
                  mulh       a7, ra, s3
                  addi       t1, zero, 17 #init loop 0 limit
                  c.mv       tp, s1
sub_4_27_0_t:     and        gp, t0, sp
                  lui        s1, 482565
                  mulhsu     s2, s4, t6
                  c.addi     tp, -1
                  c.or       a2, a2
                  addi       s8, s8, 1 #update loop 0 counter
                  mul        t4, a4, a5
                  sub        s2, t1, t0
                  csrrci     s3, 0x340, 7
                  srai       t3, sp, 3
                  slt        a6, s11, a1
                  blt        s8, t1, sub_4_27_0_t #branch for loop 0
                  fence.i
                  la         t4, region_3+503 #start riscv_hazard_instr_stream_1
                  and        t3, t0, s9
                  sb         s9, -44(t4)
                  fence.i
                  sb         t3, -288(t4)
                  sb         a2, -110(t4)
                  mulhu      a2, t0, s9
                  csrrwi     s1, 0x340, 15
                  sub        a6, a2, a2
                  lbu        s9, -283(t4)
                  div        a6, a2, a6
                  sh         a2, -175(t4)
                  c.andi     a2, -1
                  sw         s1, -131(t4)
                  csrrwi     a2, 0x340, 22
                  lw         s1, 1(t4)
                  csrrwi     t3, 0x340, 27
                  lh         s1, -473(t4)
                  c.addi     s9, 5
                  addi       a6, s1, -642
                  c.lui      s1, 31
                  slt        a6, t0, t0
                  lb         a2, -262(t4)
                  lb         t0, -380(t4)
                  fence
                  sb         s1, -365(t4)
                  c.nop
                  c.slli     s1, 3
                  lb         s1, -116(t4) #end riscv_hazard_instr_stream_1
                  la         s2, region_0+19 #start riscv_hazard_instr_stream_4
                  c.slli     tp, 6
                  sb         a3, 1(s2)
                  csrrc      a3, 0x340, tp
                  ori        a2, s1, -88
                  sw         a3, 5(s2)
                  sb         a0, 4(s2)
                  lbu        s1, 7(s2)
                  xori       a0, tp, -921
                  fence.i
                  sltu       tp, ra, a3
                  sb         a2, -6(s2)
                  lbu        a3, -12(s2)
                  csrrwi     tp, 0x340, 12
                  rem        a0, a0, a3
                  sb         a3, 12(s2)
                  sb         s1, -6(s2)
                  lhu        ra, 15(s2)
                  sb         tp, 10(s2)
                  sb         ra, 11(s2)
                  or         tp, a3, a3
                  fence.i
                  c.or       a2, s1
                  remu       a2, a2, tp
                  lbu        tp, -12(s2)
                  nop
                  sll        ra, tp, a3
                  c.or       s1, s1
                  slti       a0, a3, -687
                  sb         tp, 4(s2)
                  sb         ra, -4(s2)
                  ori        a0, tp, 377
                  sw         tp, -11(s2)
                  c.li       ra, -1
                  andi       ra, s1, 808
                  c.xor      a2, a2
                  sb         a0, 14(s2) #end riscv_hazard_instr_stream_4
sub_4_9:          jal        s8, 4f
0:                jal        ra, 5f
1:                jal        ra, 0b
2:                c.j        9f
3:                c.jal      7f
4:                c.jal      3b
5:                c.jal      6f
6:                c.j        10f
7:                c.jal      8f
8:                c.jal      1b
9:                c.j        11f
10:               c.jal      2b
11:               c.srai     a1, 19
                  la         a0, region_0+2978 #start load_store_instr_stream_2
                  sb         s1, -35(a0)
                  la         a1, region_0+4066 #start load_store_instr_stream_3
                  la         t5, region_0+635 #start load_store_instr_stream_1
                  lb         a7, -59(a0)
                  la         t4, region_0+2906 #start load_store_instr_stream_0
                  la         t0, region_0+3896 #start load_store_instr_stream_4
                  sb         gp, -146(t0)
                  lbu        s7, -3(a1)
                  sb         s1, -212(t0)
                  lbu        tp, 1884(t5)
                  sb         t0, -195(t0)
                  sb         t5, -53(a0)
                  sb         t3, -36(t4)
                  sb         gp, 1(a1)
                  sb         t4, 104(t5)
                  lbu        ra, 1386(t5)
                  lb         zero, 151(t0)
                  sb         s2, -7(t4)
                  sb         t6, 16(a0)
                  sb         s2, 5(a0)
                  lb         a4, 14(t4)
                  lbu        s7, -167(t0)
                  sb         s3, 3(a1)
                  lbu        zero, 5(a1)
                  sb         s8, -187(t0)
                  lbu        s2, 23(a0)
                  sb         tp, -11(t4)
                  lbu        s7, 48(t0)
                  lb         t6, -26(t4)
                  lh         s4, -40(t4)
                  sb         a6, -32(t4)
                  sb         s6, -14(t0)
                  sb         s5, -389(t5)
                  lbu        a7, -9(t4)
                  lb         t3, -198(t0) #end load_store_instr_stream_4
                  sb         a4, -16(a0)
                  sb         s9, -14(a1)
                  lb         s1, -49(a0)
                  lh         s4, 8(a1)
                  lbu        tp, -61(a0)
                  lbu        s8, 13(a1) #end load_store_instr_stream_3
                  lbu        s8, 664(t5) #end load_store_instr_stream_1
                  sb         a1, -11(a0) #end load_store_instr_stream_2
                  lbu        a2, -51(t4) #end load_store_instr_stream_0
                  la         s5, region_3+365 #start load_store_instr_stream_1
                  sb         s3, -12(s5)
                  la         a6, region_4+235 #start load_store_instr_stream_0
                  sb         a1, 16(s5)
                  la         a0, region_0+110 #start load_store_instr_stream_2
                  sb         sp, 10(s5)
                  sh         t3, 1(s5)
                  sh         gp, 370(a0)
                  lb         a2, 1856(a0)
                  lh         a7, -3(a6)
                  sb         tp, 179(a0)
                  lb         s8, 1527(a0)
                  sb         a7, 3(s5)
                  sw         t2, -3(a6)
                  sb         t1, 848(a0)
                  sb         a4, 1572(a0)
                  lbu        a3, 7(s5)
                  lbu        s8, 1951(a0)
                  sb         s6, -10(s5)
                  sb         a1, 0(a6)
                  lhu        a1, -13(s5)
                  lb         s9, 604(a0)
                  lb         s7, -13(a6)
                  lhu        s9, 432(a0)
                  lbu        s11, 576(a0) #end load_store_instr_stream_2
                  lbu        s9, -8(s5)
                  lb         s3, -14(s5) #end load_store_instr_stream_1
                  lbu        s7, 4(a6) #end load_store_instr_stream_0
                  la         a2, region_3+403 #start riscv_load_store_rand_instr_stream_4
                  lb         a3, -175(a2)
                  lb         gp, -193(a2)
                  lbu        t0, -336(a2)
                  mulh       s11, a0, t1
                  sh         s1, -317(a2)
                  mulhsu     a1, zero, a6
                  sra        a0, s7, s11
                  sb         a5, -2(a2)
                  auipc      t1, 639181
                  sb         zero, -392(a2)
                  lbu        t3, 68(a2)
                  lb         ra, 31(a2)
                  csrrsi     s5, 0x340, 20
                  mulh       a5, a3, s4
                  andi       s2, t0, -581
                  rem        a6, t0, ra
                  lb         s1, -172(a2)
                  csrrw      t3, 0x340, s7
                  lb         a3, 85(a2)
                  sb         a0, -60(a2)
                  lb         zero, -394(a2)
                  sb         sp, -250(a2)
                  lb         t5, -314(a2)
                  lb         s8, -286(a2)
                  lb         a3, -268(a2)
                  mul        s10, s0, t6
                  c.add      s4, a7
                  lw         s8, -51(a2)
                  slli       t4, s0, 5
                  lb         t1, -7(a2)
                  rem        tp, t6, t1
                  csrrs      ra, 0x340, t5
                  auipc      zero, 385087
                  lbu        t1, 63(a2)
                  lb         a5, -66(a2)
                  lbu        s4, -46(a2)
                  lh         a7, -273(a2)
                  nop
                  remu       t4, s5, s7
                  srli       s7, s9, 3
                  lbu        t5, -50(a2)
                  lbu        t0, -58(a2)
                  c.and      a5, a2
                  slli       s9, t2, 22
                  sh         t0, -323(a2)
                  c.xor      a5, a0
                  lh         s5, 105(a2)
                  mulhsu     a0, s6, t1
                  lbu        s11, -40(a2)
                  mulhu      a6, s9, t0
                  nop
                  mulhsu     t3, s3, s10
                  c.xor      a0, a1
                  add        a6, t4, a4
                  lbu        t4, -155(a2)
                  remu       s3, s0, gp
                  sb         s10, -27(a2)
                  lb         s2, -357(a2) #end riscv_load_store_rand_instr_stream_4
                  la         t5, region_4+68 #start load_store_instr_stream_0
                  la         s10, region_4+2305 #start load_store_instr_stream_2
                  la         s3, region_4+3995 #start load_store_instr_stream_1
                  lbu        a3, -2(s3)
                  lh         a6, -13(s10)
                  lbu        t3, 14(s3)
                  lh         a6, -40(t5)
                  sb         sp, -16(s10)
                  sb         gp, -10(s3)
                  lb         s4, 2(s3)
                  sb         s11, 5(s10)
                  lb         gp, -63(t5)
                  sb         t0, -2(s10)
                  lw         a7, 5(s3)
                  lbu        s8, 236(t5)
                  lbu        s1, -14(s3)
                  lh         t0, 102(t5)
                  sh         t3, -3(s3)
                  sh         s5, -40(t5)
                  lb         s0, 139(t5)
                  lb         s4, 4(s10)
                  lb         s8, 0(s3)
                  lbu        s5, 3(s3) #end load_store_instr_stream_1
                  lb         t3, 8(s10) #end load_store_instr_stream_2
                  sb         t2, 113(t5) #end load_store_instr_stream_0
                  c.add      a4, a1
                  c.slli     a5, 22
                  sll        s4, s7, t0
                  c.add      t6, a6
                  csrrwi     s4, 0x340, 21
                  c.sub      a2, s0
                  c.or       s0, s0
                  remu       tp, s2, tp
                  c.sub      a2, a3
                  mul        s11, a4, t3
                  divu       t6, t3, a5
                  csrrc      a4, 0x340, s7
                  and        t5, a6, zero
                  c.beqz     a0, 24f
                  csrrs      a3, 0x340, s4
                  divu       a1, zero, a4
                  or         s2, s4, zero
                  sltu       a2, s7, s8
                  csrrs      t3, 0x340, s7
                  div        a2, s9, a4
                  beq        a7, t6, 33f
                  div        s9, sp, a1
                  c.addi     s10, -1
                  csrrs      t3, 0x340, t0
24:               fence.i
                  bne        t0, s1, 45f
                  c.bnez     s0, 34f
                  beq        s1, a0, 47f
                  sub        s0, s2, s9
                  c.add      s2, a2
                  ori        t0, t2, -202
                  sub        a1, t5, a1
                  addi       t6, t1, 806
33:               lui        t4, 815188
34:               c.beqz     a1, 47f
                  mulh       a2, zero, s11
                  c.li       s7, 15
                  add        a3, s1, gp
                  csrrw      s5, 0x340, a0
                  slti       t5, t2, -911
                  srl        ra, s6, s11
                  fence.i
                  nop
                  andi       tp, sp, -782
                  c.mv       s10, s1
45:               c.bnez     a4, 54f
                  addi       tp, s5, -418
47:               c.lui      t1, 25
                  c.slli     t0, 14
                  c.and      a4, s1
                  or         t3, a5, ra
                  c.sub      a0, a3
                  c.slli     t6, 21
                  c.xor      s0, a5
54:               c.add      s11, s3
                  bltu       a3, t5, 63f
                  c.add      a7, a1
                  addi       a0, a3, 423
                  mulh       t0, s8, a5
                  nop
                  csrrw      s4, 0x340, gp
                  slt        s10, gp, zero
                  mulhu      s7, t2, a4
63:               ori        zero, a0, 947
                  divu       gp, s2, a0
                  andi       s1, t6, -532
                  andi       a0, s11, 93
                  fence.i
                  div        t6, t4, s10
                  blt        s0, s8, 85f
                  bge        a1, sp, 88f
                  bltu       t2, s9, 77f
                  csrrc      a7, 0x340, s7
                  c.mv       a4, tp
                  auipc      tp, 888337
                  c.mv       t5, t5
                  sll        s7, s8, s4
77:               bge        s3, s1, 82f
                  c.slli     a4, 27
                  c.beqz     a1, 84f
                  nop
                  lui        tp, 547735
82:               sltiu      a0, a5, -893
                  sll        ra, a5, s3
84:               csrrw      t5, 0x340, s7
85:               div        zero, s5, s3
                  mulhu      a7, s3, zero
                  c.srai     a1, 18
88:               addi       t1, s5, -471
                  c.or       a0, a0
                  sub        zero, t3, s8
                  andi       t3, s11, -409
                  csrrs      s3, 0x340, s8
                  c.addi     s4, 26
                  csrrsi     t5, 0x340, 1
                  srai       s1, gp, 26
                  add        a2, t3, tp
                  divu       s4, t5, s6
                  c.add      s8, s10
                  c.add      t5, s7
                  srli       s4, ra, 10
                  addi       gp, s10, -136
                  auipc      t6, 518237
                  srli       s8, a5, 16
                  mulhu      gp, t0, t0
                  c.bnez     s0, 114f
                  c.slli     t0, 3
                  c.beqz     a1, 125f
                  csrrsi     a4, 0x340, 26
                  lui        s3, 53805
                  blt        a6, sp, 128f
                  rem        s10, s7, t5
                  fence.i
                  c.nop
114:              bgeu       a5, t4, 131f
                  addi       s9, s6, 231
                  csrrci     a7, 0x340, 20
                  fence
                  c.add      t1, sp
                  auipc      a5, 321327
                  c.lui      s2, 6
                  mul        a4, t6, zero
                  mulhu      s3, s7, gp
                  c.andi     a4, 16
                  sub        t1, a0, tp
125:              sub        t3, a4, s5
                  blt        s4, a6, 134f
                  c.addi     s5, 27
128:              c.addi     s3, 7
                  c.li       s0, 0
                  c.srai     s0, 22
131:              fence.i
                  sub        ra, s2, s9
                  csrrci     gp, 0x340, 23
134:              c.add      t1, s1
                  c.slli     s9, 18
                  c.or       a0, a4
                  xori       s1, s1, -619
                  c.li       a3, 20
                  c.add      a3, sp
                  bge        s6, t2, 149f
                  sltiu      s3, s4, -480
                  slti       s3, t5, -109
                  c.bnez     a2, 147f
                  sub        s0, t6, a1
                  c.srai     a3, 9
                  slli       s5, a7, 4
147:              csrrci     t5, 0x340, 6
                  mulh       a6, ra, a6
149:              mul        t0, s2, a3
                  c.srli     a5, 12
                  bltu       t6, gp, 161f
                  .2byte 0x4015 # kHintInstr
                  bge        s6, a1, 159f
                  c.or       a0, s1
                  c.or       s1, a3
                  c.bnez     a3, 172f
                  c.add      a5, ra
                  slli       t0, a3, 13
                  c.and      a0, s1
159:              auipc      t6, 4845
                  sll        s9, t6, t5
161:              auipc      t3, 482848
                  c.beqz     a4, 170f
                  csrrci     s11, 0x340, 27
                  divu       a3, a4, a2
                  srli       s11, t2, 23
                  c.xor      a5, s1
                  mulh       s0, s2, s0
                  mulhsu     a6, t2, t1
                  srl        s5, s2, s11
170:              srai       a6, a1, 5
                  auipc      a4, 210888
172:              add        t3, t5, gp
                  and        a5, t2, a2
                  sltiu      t1, s0, -725
                  csrrc      s10, 0x340, s1
                  c.and      a2, a2
                  c.lui      a0, 27
                  bgeu       s6, a1, 192f
                  csrrc      s11, 0x340, t2
                  beq        s1, s1, 195f
                  srl        a5, t6, a5
                  srai       s2, a3, 11
                  auipc      t0, 719327
                  srli       s5, t0, 20
                  mulhu      s1, a5, a4
                  blt        tp, a7, 203f
                  srl        s9, a1, a2
                  rem        s1, t0, s0
                  csrrc      t1, 0x340, a4
                  bne        s6, t6, 197f
                  or         s0, a3, s5
192:              auipc      s11, 834493
                  sltu       a6, a0, s4
                  blt        s9, t5, 203f
195:              mulh       s4, a5, t0
                  beq        sp, t3, 210f
197:              nop
                  beq        a2, s2, 207f
                  sub        gp, a5, s3
                  c.srli     a0, 5
                  .2byte 0x904a # kHintInstr
                  beq        ra, t0, 218f
                  c.srai     s1, 23
203:              sll        s2, a5, ra
                  beq        a5, s6, 218f
                  mulh       a7, s9, s10
                  c.bnez     a4, 213f
207:              srli       t4, a4, 0
                  c.srai     s1, 22
                  nop
210:              c.addi     s8, 23
                  blt        gp, t6, 221f
                  bge        s9, s8, 220f
213:              c.nop
                  c.mv       s1, s6
                  c.lui      ra, 16
                  c.mv       s11, s9
                  c.srli     a3, 24
218:              and        t4, t4, s10
                  mulh       s10, s2, t1
220:              beq        a2, s3, 229f
221:              c.li       s4, 14
                  c.li       s9, -1
                  div        t5, s5, t1
                  csrrc      a1, 0x340, t1
                  c.beqz     a4, 233f
                  c.srai     s0, 1
                  c.srli     a0, 8
                  divu       s2, tp, t1
229:              c.xor      a3, a3
                  c.mv       a4, s10
                  c.srli     a0, 24
                  sra        s1, s9, gp
233:              sra        zero, a4, t1
                  addi       a3, a0, 887
                  csrrs      a3, 0x340, t0
                  or         a5, s10, t2
                  fence.i
                  or         a7, s9, a2
                  bgeu       a1, t2, 246f
                  xori       s9, ra, 899
                  sltu       s8, t2, s4
                  c.and      a3, s1
                  nop
                  beq        a5, a0, 262f
                  csrrci     s8, 0x340, 14
246:              add        t0, s3, s7
                  c.srli     a1, 3
                  lui        s0, 84105
                  c.slli     a6, 20
                  divu       s3, a2, gp
                  ori        t4, t6, -623
                  c.sub      s0, a0
                  csrrwi     s0, 0x340, 26
                  slti       a1, s7, 859
                  c.sub      a3, s0
                  csrrc      t5, 0x340, a6
                  c.nop
                  c.srai     a4, 6
                  c.sub      s1, a1
                  c.li       s4, -1
                  c.mv       a3, s5
262:              csrrw      s5, 0x340, s2
                  mul        s8, tp, s1
                  c.xor      a1, a1
                  srl        a1, s7, t6
                  csrrsi     s4, 0x340, 25
                  fence
                  lui        s5, 54559
                  csrrw      s9, 0x340, t2
                  sltiu      s0, a0, -604
                  csrrw      t1, 0x340, a3
                  c.and      a5, a4
                  c.or       a2, s1
                  srli       ra, a4, 10
                  c.sub      a3, a5
                  c.beqz     a0, 281f
                  ori        t0, a3, -332
                  bgeu       s1, zero, 287f
                  mulhu      tp, gp, t4
                  c.mv       s2, s1
281:              c.add      s11, s10
                  csrrci     a3, 0x340, 8
                  bge        t5, a1, 289f
                  sra        t0, s0, s11
                  mulhu      t0, ra, t0
                  slt        ra, s7, s3
287:              c.andi     a1, -1
                  slti       t4, s1, -746
289:              csrrs      a1, 0x340, s3
                  c.nop
                  mulh       s5, a4, ra
                  c.andi     s0, -1
                  c.and      a4, a3
                  c.addi     a6, -1
                  rem        s4, s2, t4
                  c.andi     s0, -1
                  sll        t3, sp, t1
                  addi       s8, a0, -561
                  csrrs      gp, 0x340, a4
                  c.lui      a7, 29
                  c.li       s0, -1
                  mulhsu     s11, a7, tp
                  c.nop
                  mulhsu     a5, s8, ra
                  bgeu       a2, s9, 325f
                  xori       a4, t4, 825
                  c.and      a2, a1
                  csrrwi     t1, 0x340, 16
                  c.nop
                  mulh       a3, tp, a7
                  mulh       tp, s7, s1
                  sltu       s11, s11, a2
                  c.nop
                  slt        t3, t1, s2
                  add        t3, s9, a2
                  c.mv       s1, s1
                  srl        s5, s8, sp
                  addi       gp, t2, 547
                  mulhsu     s9, s11, a7
                  srl        a4, t0, s1
                  ori        t0, zero, 841
                  auipc      s1, 385076
                  c.and      a1, a0
                  sub        s2, t5, a6
325:              c.beqz     a2, 338f
                  auipc      s0, 368579
                  csrrci     a2, 0x340, 16
                  c.srli     a5, 25
                  c.srli     a5, 18
                  ori        ra, a5, -583
                  add        t6, sp, t4
                  c.add      s11, s3
                  c.beqz     a2, 351f
                  nop
                  slli       s8, s8, 24
                  bne        t2, gp, 354f
                  or         a6, s7, s6
338:              c.beqz     s0, 353f
                  mul        a3, s4, s7
                  div        s8, a3, ra
                  bge        s7, t0, 349f
                  sra        t4, s1, a0
                  csrrwi     s2, 0x340, 15
                  slt        t5, t4, t0
                  c.beqz     a0, 353f
                  lui        a7, 368872
                  or         a4, s10, a3
                  addi       t3, t1, 228
349:              andi       s9, t4, -785
                  mul        s3, a2, zero
351:              c.sub      a0, s0
                  lui        a4, 233454
353:              sltu       t5, a7, a6
354:              c.slli     t5, 14
                  sltiu      gp, t2, 218
                  bne        s4, sp, 361f
                  auipc      t3, 501533
                  srl        t6, gp, t4
                  c.xor      a5, a2
                  sll        s11, ra, a4
361:              c.bnez     a1, 378f
                  csrrc      ra, 0x340, ra
                  srl        a1, s5, t0
                  ori        ra, t3, 964
                  c.sub      s1, s1
                  c.sub      a2, a0
                  c.li       t4, -1
                  srl        a5, a0, a5
                  c.and      a3, a1
                  divu       a3, t1, tp
                  nop
                  c.srli     s0, 8
                  c.add      s9, ra
                  c.li       a1, 15
                  mulhsu     s0, a1, a2
                  fence
                  divu       t3, t0, a4
378:              c.sub      a5, a5
                  c.andi     a0, -1
                  lui        s10, 547446
                  beq        a2, t4, 392f
                  and        s1, t4, tp
                  srl        s5, s10, s6
                  csrrs      s5, 0x340, a6
                  c.bnez     a0, 405f
                  csrrci     s1, 0x340, 21
                  nop
                  c.li       a1, -1
                  srai       s1, zero, 20
                  bne        s8, s8, 406f
                  and        s8, a3, t2
392:              c.sub      a0, s0
                  div        s7, t5, s0
                  mul        t6, a6, a5
                  c.li       a6, -1
                  addi       a3, ra, 103
                  slti       s2, tp, -665
                  c.add      s9, s3
                  mulh       s5, ra, s7
                  ori        s4, tp, 383
                  nop
                  mul        a6, a0, s8
                  csrrw      a3, 0x340, a1
                  bge        t5, zero, 421f
405:              bge        a5, s0, 418f
406:              c.or       s1, a5
                  blt        t1, s1, 421f
                  c.sub      s1, a4
                  c.srai     s0, 16
                  c.srai     a1, 25
                  bge        zero, t0, 420f
                  c.or       a5, a5
                  and        a4, a7, t4
                  srai       a4, t6, 13
                  c.andi     a1, 31
                  slli       s8, s8, 9
                  c.srai     a0, 6
418:              addi       s5, t3, -498
                  slt        gp, a5, s9
420:              csrrwi     t0, 0x340, 16
421:              sltiu      s3, s8, 280
                  c.bnez     s1, 426f
                  mulh       s3, a1, a6
                  mul        s3, a6, a3
                  srl        a2, gp, s8
426:              c.xor      a3, a3
                  c.bnez     a1, 436f
                  mul        tp, t0, t6
                  rem        s4, s4, t0
                  blt        t6, a1, 443f
                  addi       gp, s2, 323
                  div        a6, a4, t4
                  mulhu      s7, s5, ra
                  mul        a4, t0, t2
                  c.slli     s4, 26
436:              add        zero, t4, s9
                  and        a3, t2, a4
                  addi       a5, s6, 336
                  beq        a1, s9, 446f
                  and        s1, t5, s6
                  csrrc      s10, 0x340, s1
                  csrrwi     s7, 0x340, 8
443:              andi       s5, s1, -699
                  csrrsi     s11, 0x340, 23
                  fence.i
446:              c.lui      s10, 10
                  bltu       t6, t1, 452f
                  c.beqz     s0, 456f
                  c.xor      a3, a2
                  sra        a1, t4, sp
                  nop
452:              srai       s0, tp, 5
                  c.or       a0, a5
                  sll        s5, t4, s9
                  c.and      a0, a5
456:              c.and      s1, a5
                  csrrsi     a3, 0x340, 24
                  andi       s7, s7, 508
                  mulh       gp, s9, a2
                  c.li       s1, -1
                  sltu       t4, s9, s9
                  slt        s2, a1, tp
                  csrrci     s3, 0x340, 11
                  or         s11, sp, s2
                  csrrc      t1, 0x340, gp
                  mul        a0, a5, a0
                  or         a0, a7, s1
                  csrrsi     s5, 0x340, 25
                  c.mv       tp, ra
                  srl        s4, t1, t1
                  c.srai     a1, 29
                  csrrci     t0, 0x340, 30
                  c.beqz     a4, 481f
                  c.srai     s1, 7
                  add        s0, a7, s8
                  srl        t3, s6, s6
                  c.xor      s1, a5
                  c.and      a1, a1
                  divu       t5, s0, a3
                  auipc      s0, 191339
481:              bne        t3, s4, 496f
                  nop
                  c.or       a3, a2
                  csrrwi     zero, 0x340, 21
                  addi       s8, a5, 345
                  srli       s8, s1, 26
                  ori        a4, a5, -703
                  c.xor      a1, a4
                  nop
                  c.and      a3, s1
                  mulh       a5, a1, t0
                  remu       s2, a7, t4
                  srai       t4, s3, 24
                  srl        zero, s2, s9
                  and        a7, s6, a1
496:              div        t1, t0, t5
                  beq        t5, t3, 506f
                  slt        a2, a3, a7
                  sra        t6, gp, tp
                  bltu       a0, tp, 514f
                  c.add      s5, a1
                  sll        s9, s5, a5
                  auipc      s7, 207164
                  csrrsi     s7, 0x340, 29
                  sra        s10, s5, s8
506:              and        s2, gp, t2
                  csrrs      s1, 0x340, s1
                  csrrc      t4, 0x340, s11
                  mulhu      t6, t0, t3
                  csrrs      zero, 0x340, t5
                  c.addi     a1, -1
                  sll        s8, s8, t1
                  divu       s9, t0, sp
514:              slt        a0, t2, s3
                  c.slli     a6, 6
                  auipc      s1, 177912
                  fence.i
                  c.add      a7, t1
                  blt        t6, t5, 537f
                  and        s5, a4, a2
                  add        a0, s5, t1
                  blt        s5, a1, 540f
                  sub        t4, a0, s3
                  c.mv       t3, s2
                  c.and      a0, a3
                  sll        t6, tp, t0
                  c.srai     a1, 4
                  sra        t1, s2, zero
                  c.lui      a2, 27
                  div        t0, t6, a0
                  csrrc      s5, 0x340, a2
                  c.addi     gp, 28
                  auipc      s9, 861813
                  divu       s7, s1, a5
                  c.andi     a5, -1
                  srai       s2, ra, 13
537:              c.andi     s1, 13
                  sltu       t5, s9, t4
                  bgeu       s4, a2, 548f
540:              bgeu       a4, zero, 548f
                  csrrwi     s3, 0x340, 31
                  csrrsi     a0, 0x340, 10
                  mulh       gp, s10, ra
                  srl        s1, tp, s8
                  csrrci     s10, 0x340, 7
                  c.mv       s4, s4
                  csrrwi     t4, 0x340, 27
548:              csrrwi     s3, 0x340, 21
                  csrrc      s9, 0x340, a5
                  xori       a4, s4, -790
                  c.beqz     a5, 559f
                  c.li       s2, 1
                  srai       s4, s10, 20
                  fence
                  srai       zero, s6, 14
                  ori        tp, a7, -249
                  bne        s5, s4, 570f
                  auipc      s9, 232096
559:              remu       ra, s9, t1
                  addi       a7, t6, -404
                  c.bnez     a5, 575f
                  c.bnez     a5, 568f
                  mulh       s8, zero, s5
                  c.srai     a1, 2
                  c.bnez     a1, 575f
                  c.mv       s9, t2
                  srl        s7, a0, sp
568:              c.xor      s1, a3
                  c.lui      a4, 13
570:              c.or       a5, a3
                  csrrw      s1, 0x340, t6
                  blt        t2, s3, 583f
                  c.beqz     s1, 580f
                  sll        s5, a7, a6
575:              slli       s1, a3, 21
                  c.and      a2, a1
                  remu       s0, s2, a7
                  slti       ra, tp, 801
                  c.or       s0, s1
580:              mulh       s11, a1, t0
                  remu       a2, t4, sp
                  slt        a7, t2, tp
583:              csrrs      s4, 0x340, s10
                  or         s0, t1, a7
                  c.beqz     s1, 602f
                  lui        t0, 573779
                  c.slli     s9, 8
                  div        s1, t2, tp
                  c.slli     a7, 22
                  fence.i
                  bge        a1, a4, 609f
                  csrrc      zero, 0x340, t0
                  slli       a6, t4, 30
                  c.andi     a5, -1
                  addi       t5, s0, -499
                  srl        zero, zero, sp
                  bge        s8, ra, 614f
                  bltu       s8, s4, 607f
                  mulhu      s9, s9, s9
                  bltu       s2, a5, 604f
                  sub        a0, sp, s11
602:              sra        a6, s5, t1
                  csrrwi     s11, 0x340, 0
604:              bge        s6, s7, 624f
                  slt        tp, s9, a5
                  fence.i
607:              addi       a0, t1, -306
                  csrrwi     s1, 0x340, 24
609:              c.sub      a2, s1
                  bgeu       a5, s1, 630f
                  c.srai     a5, 2
                  nop
                  add        s3, s2, t0
614:              nop
                  c.srai     a1, 6
                  csrrs      s10, 0x340, t3
                  beq        s0, t2, 622f
                  sra        s7, s2, s7
                  addi       s0, a2, 555
                  srli       s11, s1, 30
                  c.bnez     s0, 637f
622:              bne        sp, t4, 639f
                  or         a0, s2, s8
624:              blt        t3, s10, 640f
                  rem        s1, t3, a7
                  c.srli     s0, 16
                  or         t1, s9, t5
                  csrrsi     s0, 0x340, 26
                  c.addi     s7, -1
630:              bne        s10, s2, 640f
                  c.slli     s0, 4
                  c.lui      a0, 1
                  bltu       gp, s5, 638f
                  csrrw      s3, 0x340, a3
                  c.slli     a6, 31
                  nop
637:              xor        t5, s10, s7
638:              c.add      tp, s2
639:              bne        a5, t1, 647f
640:              csrrc      t6, 0x340, sp
                  c.lui      t5, 22
                  blt        a1, a7, 659f
                  c.and      s0, a4
                  c.nop
                  sub        t1, a1, zero
                  and        s10, zero, s9
647:              c.or       a5, s1
                  sll        t5, a1, zero
                  c.andi     a2, -1
                  xor        s4, a1, s4
                  c.slli     s8, 1
                  nop
                  sra        s9, s3, s1
                  mulh       gp, tp, s2
                  srai       s2, a4, 17
                  c.lui      a0, 27
                  bgeu       s9, s8, 665f
                  csrrs      s1, 0x340, ra
659:              add        s4, s7, t2
                  c.lui      t5, 5
                  slti       s1, a6, 579
                  c.nop
                  fence
                  c.add      s5, a1
665:              bgeu       a0, t2, 673f
                  sub        s7, s3, a0
                  csrrs      s0, 0x340, t4
                  mul        t0, a5, zero
                  xor        gp, a7, s6
                  slt        gp, s2, zero
                  c.slli     s9, 21
                  div        t1, s6, t6
673:              andi       a1, a4, -417
                  and        s11, t1, s8
                  csrrci     t5, 0x340, 23
                  c.bnez     a3, 691f
                  sll        s3, s6, tp
                  fence
                  ori        a0, t4, 472
                  mulhu      s1, s2, s2
                  c.or       a4, a0
                  c.and      a0, a0
                  c.bnez     a3, 703f
                  csrrwi     t3, 0x340, 23
                  bgeu       s2, s2, 690f
                  remu       s2, t5, s3
                  csrrs      s3, 0x340, sp
                  sll        a6, s10, sp
                  nop
690:              c.and      a4, a2
691:              c.add      a7, s0
                  csrrw      s7, 0x340, s4
                  lui        t6, 174860
                  slli       gp, gp, 3
                  csrrc      s5, 0x340, ra
                  mulhu      s2, a6, s8
                  bltu       t4, t0, 710f
                  slti       s5, tp, 355
                  csrrs      a3, 0x340, a0
                  sltiu      s0, a7, 522
                  add        s4, tp, s10
                  xor        s5, a0, s5
703:              lui        tp, 175522
                  c.bnez     a3, 724f
                  csrrw      t1, 0x340, tp
                  csrrw      a6, 0x340, a0
                  c.bnez     s1, 721f
                  c.srai     a0, 15
                  c.xor      a4, a3
710:              c.addi     s4, 24
                  c.srai     a2, 11
                  remu       s9, zero, t2
                  auipc      s4, 882677
                  c.andi     a5, 15
                  fence
                  srli       tp, s9, 15
                  c.li       s11, -1
                  c.srli     a5, 17
                  slt        s10, a5, s1
                  auipc      s3, 347702
721:              c.bnez     s1, 739f
                  slli       a7, gp, 21
                  c.or       a1, a3
724:              sltiu      s9, s1, -821
                  srl        s9, s0, s1
                  bltu       s9, a5, 734f
                  or         s10, a3, t6
                  srli       a1, a6, 27
                  slt        a1, s9, t5
                  c.andi     a3, -1
                  remu       s8, ra, tp
                  fence
                  c.xor      a5, a3
734:              slt        s11, t3, a2
                  auipc      t3, 975341
                  c.lui      t0, 12
                  c.mv       s11, s8
                  mul        t3, t6, s5
739:              sra        a4, s10, s4
                  ori        ra, zero, -850
                  sll        s10, a0, t2
                  csrrsi     s3, 0x340, 29
                  fence.i
                  slt        t5, t1, a2
                  c.bnez     a0, 754f
                  mulhsu     s0, s8, t4
                  csrrwi     t3, 0x340, 19
                  c.lui      t6, 14
                  andi       a3, a4, 59
                  sltiu      s10, tp, -564
                  bltu       s10, sp, 768f
                  c.mv       a1, ra
                  c.and      a3, a4
754:              c.srli     a2, 16
                  c.li       s10, 26
                  c.or       a3, s1
                  bgeu       zero, tp, 774f
                  csrrs      s0, 0x340, s4
                  sll        t0, tp, a1
                  c.srli     s1, 22
                  csrrwi     s0, 0x340, 23
                  xori       t6, s6, -373
                  mulh       a6, tp, t4
                  auipc      t4, 394546
                  lui        s10, 985324
                  sra        s5, s10, t1
                  bge        a3, s4, 773f
768:              c.or       a3, a2
                  bltu       t0, a5, 773f
                  c.xor      a3, a5
                  c.beqz     a3, 782f
                  bgeu       tp, a5, 785f
773:              csrrsi     s11, 0x340, 17
774:              c.or       a2, s0
                  c.mv       s2, t1
                  ori        s1, a4, -90
                  bge        sp, a7, 795f
                  srai       a7, a6, 27
                  mul        s5, t3, tp
                  c.sub      a5, a0
                  bgeu       t1, a4, 790f
782:              xori       a0, s4, 735
                  bne        tp, tp, 801f
                  c.slli     s0, 30
785:              c.sub      a0, a5
                  sltu       s1, ra, t6
                  c.lui      a4, 11
                  andi       t4, a3, -122
                  c.and      a5, a0
790:              fence.i
                  mulh       t0, s11, sp
                  srl        t5, a4, s7
                  csrrw      a5, 0x340, tp
                  c.beqz     s1, 801f
795:              and        a6, s9, a0
                  srli       s7, gp, 20
                  csrrc      a4, 0x340, a5
                  bne        s10, s10, 807f
                  and        t1, a1, a0
                  c.nop
801:              csrrs      t0, 0x340, s4
                  slli       t3, a4, 14
                  slt        t3, s1, a0
                  c.xor      a3, s0
                  sltu       s2, a3, s5
                  c.add      s11, a1
807:              c.srai     s0, 5
                  sltiu      s4, a1, 18
                  sub        s0, s5, tp
                  csrrci     t1, 0x340, 0
                  and        a3, a3, s2
                  sub        t5, t0, s0
                  rem        s8, t3, s5
                  remu       a4, ra, a5
                  c.slli     t5, 26
                  ori        s2, s9, 28
                  fence
                  c.or       s1, a4
                  c.or       s0, a4
                  csrrs      s8, 0x340, s0
                  sltiu      s7, a4, -981
                  c.beqz     a3, 831f
                  c.andi     s0, 26
                  mulh       t5, a6, a2
                  slt        t4, tp, a3
                  c.bnez     s1, 833f
                  srl        s2, t3, sp
                  and        s3, t0, t0
                  srl        s11, t0, s10
                  sltiu      s0, a4, 640
831:              mul        ra, s1, t4
                  c.bnez     a0, 846f
833:              add        a7, zero, s3
                  remu       a2, s0, s3
                  csrrci     s7, 0x340, 18
                  sll        a3, a0, s6
                  c.slli     s10, 14
                  xori       t0, a0, 1019
                  csrrc      t3, 0x340, a3
                  srl        s0, ra, a1
                  c.xor      a0, s0
                  bgeu       t6, ra, 855f
                  la         s11, region_3+235 #start riscv_load_store_rand_instr_stream_0
                  and        a0, s6, s6
                  sb         s10, -11(s11)
                  xori       gp, t0, -311
                  c.srli     a5, 1
                  srai       a4, s9, 23
                  sh         t5, -11(s11)
                  csrrs      a4, 0x340, t6
                  lbu        a5, -14(s11)
                  mul        gp, a6, s8
                  fence.i
                  csrrc      s7, 0x340, a5
                  c.and      a3, a5
                  lw         s5, -15(s11)
                  divu       tp, a2, gp
                  sh         s6, 1(s11)
                  sh         s3, 13(s11)
                  csrrwi     s10, 0x340, 5
                  mulhsu     s10, s3, a1
                  xor        s4, a2, t5
                  lui        s10, 332241
                  lbu        t6, -15(s11)
                  sltiu      t4, t4, 118
                  c.sub      s1, a5
                  lbu        t0, -14(s11)
                  lhu        s2, 11(s11)
                  c.lui      s4, 11
                  c.srli     a0, 4
                  sltiu      s3, t3, -662
                  mulhsu     tp, t5, s7
                  sh         s0, 5(s11)
                  lb         s1, 13(s11)
                  sh         s9, 7(s11)
                  fence.i
                  srl        t5, s2, t6
                  lb         t1, 11(s11)
                  srl        a7, t4, s1
                  lbu        t1, 15(s11)
                  lui        s2, 598171
                  c.slli     s1, 18
                  lhu        a1, 9(s11) #end riscv_load_store_rand_instr_stream_0
                  csrrci     zero, 0x340, 9
                  remu       s7, s1, a1
                  c.srli     a2, 9
846:              nop
                  c.slli     a7, 7
                  c.or       a4, a2
                  csrrc      s1, 0x340, a4
                  bgeu       tp, s7, 859f
                  srli       gp, s1, 4
                  bgeu       a0, s4, 857f
                  rem        ra, t1, a6
                  c.sub      a2, a0
855:              bltu       t5, a0, 859f
                  c.srai     a0, 18
857:              bge        s8, s5, 868f
                  nop
859:              c.sub      s0, s0
                  sub        s11, s10, a0
                  c.lui      s8, 15
                  srai       s4, t5, 28
                  c.srli     a5, 6
                  blt        tp, s11, 873f
                  sltu       a6, s5, sp
                  csrrc      t0, 0x340, a5
                  rem        gp, tp, a4
868:              slli       s2, t4, 25
                  csrrsi     a1, 0x340, 18
                  mulhsu     a7, s5, s1
                  c.mv       s8, a0
                  c.srli     s0, 1
873:              csrrs      a1, 0x340, s2
                  add        s4, t0, tp
                  c.beqz     s0, 895f
                  fence
                  lui        s9, 104452
                  mulhsu     s11, s7, zero
                  c.slli     s5, 18
                  xor        a2, s5, s1
                  mulhu      a1, t5, s10
                  c.add      s3, s9
                  csrrc      a0, 0x340, s7
                  csrrwi     gp, 0x340, 29
                  addi       a5, zero, -10 #init loop 1 counter
                  addi       s0, a0, -995
                  auipc      a4, 869346
                  addi       zero, zero, 0 #init loop 1 limit
sub_4_25_1_t:     c.li       s9, 11
                  c.slli     t3, 24
                  c.lui      s5, 15
                  xori       t4, a3, 27
                  addi       a5, a5, 10 #update loop 1 counter
                  addi       tp, zero, -4 #init loop 0 counter
                  mul        t3, gp, t4
                  addi       a1, zero, 17 #init loop 0 limit
                  lui        t1, 780367
sub_4_25_0_t:     c.xor      a2, s0
                  nop
                  addi       tp, tp, 8 #update loop 0 counter
                  bltu       tp, a1, sub_4_25_0_t #branch for loop 0
                  mulhsu     s0, tp, a3
                  c.srai     a4, 12
                  c.lui      s9, 14
                  slti       gp, a0, -567
                  c.beqz     a5, sub_4_25_1_t #branch for loop 1
                  mulh       a0, s5, s5
                  sltiu      a0, a6, 738
                  auipc      s9, 260503
                  c.addi     s0, -1
                  csrrw      s8, 0x340, s7
                  csrrci     a2, 0x340, 22
                  mulhsu     a7, s6, s9
                  c.addi     s3, -1
                  bne        gp, a3, 906f
                  sll        s4, s11, t0
                  slti       t5, a2, -277
895:              bge        a1, s3, 904f
                  blt        a2, s4, 906f
                  c.mv       s5, s9
                  mulhsu     s2, t4, a6
                  rem        s9, s5, a5
                  sub        tp, t4, s3
                  c.srli     a1, 29
                  c.srai     a4, 22
                  c.li       s1, 16
904:              c.srli     a0, 21
                  c.nop
906:              c.nop
                  csrrci     a7, 0x340, 10
                  and        tp, s5, s4
                  sra        a1, s7, t2
                  srli       a2, s0, 3
                  c.or       s1, a1
                  csrrs      s2, 0x340, s7
                  c.li       s1, 29
                  srai       a6, t6, 10
                  beq        t3, s7, 928f
                  sltiu      s11, s0, 96
                  csrrs      tp, 0x340, zero
                  slt        gp, a5, s7
                  csrrwi     zero, 0x340, 5
                  c.slli     s10, 24
                  csrrwi     s2, 0x340, 17
                  blt        t2, s9, 929f
                  rem        a3, s8, a0
                  c.srli     a2, 9
                  sltiu      a3, a5, -61
                  mulhu      s5, a3, s9
                  bgeu       a2, s2, 947f
928:              c.addi     s8, 11
929:              sltiu      a0, s5, -649
                  xor        s2, s2, s9
                  mulhsu     t0, tp, s11
                  c.srai     a2, 7
                  addi       t6, a5, 386
                  blt        s5, s3, 942f
                  c.sub      a4, a5
                  blt        s5, a5, 950f
                  srli       t0, ra, 20
                  slti       t5, a1, -963
                  c.slli     s7, 24
                  c.mv       a2, gp
                  ori        a7, t2, 1011
942:              andi       t0, s11, 739
                  c.and      a2, a2
                  c.slli     s1, 1
                  blt        ra, a5, 963f
                  bge        a2, tp, 954f
947:              mulh       a2, t4, t2
                  andi       s0, a5, -861
                  csrrw      s0, 0x340, a2
950:              divu       a6, a4, t4
                  andi       a6, t6, 564
                  csrrs      s8, 0x340, a6
                  mulhsu     gp, ra, s7
954:              ori        s0, s10, 609
                  csrrw      t4, 0x340, s1
                  csrrc      t0, 0x340, t3
                  csrrs      s5, 0x340, a4
                  sub        a5, sp, s3
                  bltu       gp, s1, 965f
                  slt        s1, s8, s0
                  csrrci     ra, 0x340, 8
                  c.xor      a3, a5
963:              blt        s11, s2, 980f
                  auipc      a3, 302878
965:              c.mv       t4, a4
                  addi       s2, a4, -504
                  c.addi     s1, -1
                  slli       a6, s2, 27
                  c.lui      s7, 28
                  c.addi     t5, 31
                  c.srli     a5, 14
                  addi       zero, s3, 853
                  beq        a6, sp, 980f
                  bge        a0, a7, 989f
                  sub        s4, s3, s8
                  c.sub      a3, a3
                  c.lui      a2, 1
                  bltu       t5, a3, 994f
                  c.and      a5, a4
980:              slt        s3, s0, s11
                  divu       a2, t5, a7
                  c.slli     a7, 9
                  and        t0, ra, ra
                  c.bnez     s0, 1002f
                  csrrwi     t0, 0x340, 10
                  or         s3, s9, a7
                  c.srai     a1, 4
                  bgeu       gp, s0, 1005f
989:              and        s9, a7, a1
                  add        s7, s9, a2
                  slt        s4, s3, a0
                  csrrsi     gp, 0x340, 2
                  la         a5, region_0+1832 #start riscv_load_store_rand_instr_stream_5
                  csrrc      tp, 0x340, t6
                  lb         t0, 627(a5)
                  lb         t3, 1341(a5)
                  fence.i
                  auipc      a3, 533928
                  lb         s5, -1567(a5)
                  c.mv       t5, ra
                  c.slli     a7, 19
                  and        t4, a4, s5
                  ori        gp, a5, 910
                  sltiu      s2, a1, 679
                  c.slli     s2, 4
                  fence.i
                  c.slli     s9, 24
                  c.li       s9, 28
                  ori        t6, s4, 59
                  xori       t5, s1, 217
                  lb         a2, 288(a5)
                  lbu        a0, -1089(a5)
                  c.or       a3, a1
                  sh         a4, 1770(a5)
                  auipc      s3, 688931
                  ori        a0, s9, 179
                  fence
                  remu       s1, s2, s7
                  srl        gp, t0, s9
                  lb         s0, 315(a5)
                  xori       a0, sp, 285
                  divu       t1, s6, t2
                  srl        s4, s8, s9
                  c.nop
                  divu       s8, a6, tp
                  sll        s9, s7, a4
                  lh         t3, 54(a5)
                  lbu        a2, 1708(a5)
                  csrrs      s8, 0x340, a0
                  c.or       a3, a5
                  c.li       s8, -1
                  sb         s3, 1963(a5)
                  sb         gp, 1408(a5) #end riscv_load_store_rand_instr_stream_5
                  c.mv       a1, a4
994:              rem        s2, s11, t4
                  and        a1, s4, t2
                  bgeu       s8, s3, 1013f
                  c.or       a4, a4
                  addi       a3, gp, 746
                  xori       s1, s11, -419
                  slti       s4, s9, -408
                  mulhu      s0, s11, zero
1002:             mul        a4, s0, s4
                  c.bnez     a2, 1021f
                  bgeu       a0, s6, 1012f
1005:             c.beqz     a4, 1013f
                  nop
                  div        t3, a6, t4
                  div        s11, s2, s4
                  nop
                  rem        t5, s6, tp
                  addi       s2, t1, -1012
1012:             slt        a5, a4, s11
1013:             c.slli     a5, 2
                  c.or       s0, s0
                  srai       s7, a3, 29
                  mulhu      t4, s8, s9
                  sltiu      s10, s3, 305
                  nop
                  mulhsu     gp, s6, s10
                  c.lui      s7, 12
1021:             add        s8, t3, a5
                  auipc      s10, 282768
                  c.bnez     a1, 1028f
                  sra        s5, t6, s1
                  srl        a2, s3, t5
                  c.sub      a2, s0
                  add        s2, a3, s4
1028:             andi       tp, a6, -582
                  slli       s2, s10, 8
                  xor        tp, a3, t1
                  c.or       a5, a1
                  .2byte 0x8022 # kHintInstr
                  c.slli     s3, 11
                  bne        s4, s11, 1042f
                  c.mv       a2, a3
                  sll        s11, a2, tp
                  sub        tp, tp, s2
                  c.and      s0, a5
                  c.and      a0, s1
                  divu       a2, s8, a4
                  bge        a2, sp, 1049f
                  auipc      s11, 903902
1042:             sltiu      a2, s9, 1000
                  csrrw      t6, 0x340, s0
                  remu       t5, s11, tp
                  c.slli     gp, 5
                  bgeu       s3, t3, 1063f
                  xori       t6, s7, 258
                  add        tp, a0, s0
1049:             mulhu      t4, s10, s4
                  blt        t2, a4, 1058f
                  mul        s7, s2, a3
                  csrrw      s0, 0x340, a1
                  bge        t5, s7, 1057f
                  csrrsi     t4, 0x340, 0
                  csrrwi     s7, 0x340, 21
                  c.slli     s8, 27
1057:             c.srli     s1, 16
1058:             csrrs      tp, 0x340, t3
                  sltu       a5, t0, gp
                  mulhsu     t6, sp, s1
                  blt        zero, tp, 1068f
                  csrrsi     t1, 0x340, 5
1063:             c.addi     t0, -1
                  divu       t6, s10, s5
                  srl        ra, t3, s2
                  c.andi     s0, 9
                  lui        t4, 719339
1068:             c.slli     t5, 1
                  slti       a6, t3, -351
                  sub        a4, a5, zero
                  addi       a4, t0, -780
                  fence
                  andi       s7, s5, -349
                  c.slli     ra, 13
                  fence.i
                  c.nop
                  csrrci     t4, 0x340, 29
                  c.and      a1, a5
                  sltiu      a1, gp, -74
                  addi       s1, s10, 616
                  add        s9, s1, t5
                  add        t6, zero, gp
                  c.beqz     a4, 1088f
                  sltiu      s7, gp, 649
                  mul        s4, s8, s0
                  srai       t6, s1, 22
                  bltu       a6, s10, 1095f
1088:             csrrc      s7, 0x340, tp
                  csrrwi     s7, 0x340, 6
                  mulhsu     ra, t0, t2
                  beq        s3, a0, 1108f
                  div        gp, t5, tp
                  csrrwi     a2, 0x340, 26
                  sll        s4, gp, s8
1095:             xori       t0, s6, 736
                  slli       a7, t2, 4
                  slli       s10, ra, 8
                  csrrs      s7, 0x340, a4
                  c.li       s4, -1
                  add        s0, t1, t6
                  c.beqz     a3, 1114f
                  fence
                  csrrsi     zero, 0x340, 18
                  mul        a7, tp, tp
                  xor        s10, s7, a1
                  c.beqz     a1, 1114f
                  fence
1108:             nop
                  csrrsi     s9, 0x340, 20
                  c.slli     s5, 15
                  sra        a7, t2, t1
                  c.or       a0, s1
                  c.andi     a2, -1
1114:             xor        s8, s3, a3
                  .2byte 0x906a # kHintInstr
                  blt        s10, s8, 1133f
                  csrrwi     a7, 0x340, 23
                  add        a2, a3, ra
                  divu       s11, s9, gp
                  la         s3, region_1+12965 #start riscv_hazard_instr_stream_5
                  slli       t0, a4, 20
                  c.addi     t0, -1
                  lbu        t0, 4(s3)
                  slt        s8, a4, a4
                  c.xor      a0, a0
                  sb         s8, 14(s3)
                  lhu        t1, 13(s3)
                  lhu        t1, 11(s3)
                  srl        a0, s8, s8
                  c.srai     a0, 10
                  lbu        s8, 12(s3)
                  lb         a7, 11(s3)
                  sb         a4, 12(s3)
                  xor        a7, a4, s8
                  lb         a0, -2(s3)
                  lw         a4, 15(s3)
                  lb         a7, 9(s3)
                  lhu        a4, 1(s3)
                  rem        t0, a4, a4
                  srl        t1, t0, a4
                  or         a4, a7, t1
                  csrrc      a4, 0x340, s8
                  sb         a0, -10(s3)
                  or         t0, s8, a0
                  lui        a4, 573236
                  sw         t1, 3(s3)
                  sb         a4, -4(s3)
                  sh         a4, -11(s3)
                  sb         t1, -1(s3)
                  sh         a4, 13(s3)
                  lbu        t1, -6(s3)
                  c.sub      a4, a0
                  sra        t0, t0, a0
                  sb         a4, -3(s3)
                  lh         t0, 9(s3)
                  lh         s8, 13(s3)
                  sb         a4, -10(s3)
                  sh         t0, -3(s3) #end riscv_hazard_instr_stream_5
                  bltu       t1, t1, 1125f
                  c.srai     a0, 12
                  div        s10, s9, s1
                  slt        ra, t5, a5
                  sltiu      gp, t5, 686
                  c.sub      a1, s0
1125:             sltu       zero, s5, a6
                  sub        s9, a7, ra
                  bgeu       t1, s1, 1135f
                  xori       s4, t6, 907
                  slti       t3, tp, -279
                  slli       a7, t4, 8
                  c.sub      a1, a1
                  c.addi     s3, 17
1133:             csrrs      a3, 0x340, s0
                  mulhu      s3, ra, t0
1135:             bge        s6, s7, 1144f
                  srl        t4, sp, s5
                  sub        t1, s11, s10
                  c.andi     a4, 5
                  mul        t5, s8, zero
                  sub        s8, t5, zero
                  c.xor      a2, a1
                  divu       s9, zero, a3
                  c.addi     s7, -1
1144:             ori        a3, a5, -313
                  csrrw      s10, 0x340, s6
                  srai       t0, ra, 2
                  srai       s1, s8, 28
                  fence
                  bgeu       a7, zero, 1167f
                  sub        s4, t5, s4
                  c.li       t4, 20
                  c.beqz     a0, 1165f
                  csrrwi     zero, 0x340, 28
                  xor        t5, gp, s5
                  c.bnez     a3, 1172f
                  c.nop
                  remu       t6, t6, s6
                  srl        zero, s0, sp
                  slti       a5, s6, -675
                  sub        s2, sp, s3
                  csrrw      a4, 0x340, s1
                  fence
                  mulh       gp, sp, s7
                  c.add      t3, s9
1165:             srl        s9, s11, t4
                  csrrwi     s11, 0x340, 3
1167:             divu       s2, s6, a7
                  lui        t3, 173742
                  andi       s4, t3, -834
                  c.xor      a0, a2
                  c.and      a4, a1
1172:             c.sub      s1, a3
                  csrrs      s2, 0x340, t5
                  or         t4, s2, s9
                  beq        s1, sp, 1191f
                  ori        a1, s7, 645
                  slt        s0, s1, a1
                  srli       t3, t0, 28
                  srl        s0, s5, tp
                  sltu       s7, sp, a6
                  beq        t4, t6, 1195f
                  slti       s8, a1, 331
                  blt        s3, s7, 1203f
                  csrrsi     a1, 0x340, 19
                  srai       a1, a7, 23
                  c.xor      a3, a4
                  slt        s9, t0, t2
                  csrrwi     a7, 0x340, 17
                  blt        s1, t4, 1196f
                  sra        a4, gp, a1
1191:             div        t6, a5, t1
                  csrrs      gp, 0x340, t1
                  c.srli     a2, 21
                  sltu       a7, a1, s9
1195:             c.mv       a2, a7
1196:             andi       ra, tp, 692
                  csrrs      a7, 0x340, a6
                  csrrw      s4, 0x340, t2
                  c.srai     a1, 20
                  c.li       ra, -1
                  bge        s10, s7, 1219f
                  slli       gp, a2, 24
1203:             xor        s11, sp, gp
                  bge        t6, s5, 1214f
                  blt        s10, t0, 1225f
                  srai       ra, t1, 27
                  mulhsu     a5, sp, a6
                  csrrci     s0, 0x340, 26
                  bge        t5, sp, 1220f
                  auipc      s11, 755457
                  c.srai     a1, 27
                  addi       a0, a7, 720
                  c.sub      s0, a2
1214:             c.srli     s0, 5
                  add        a6, t2, s3
                  c.mv       t6, s8
                  slli       s11, a3, 5
                  csrrci     s10, 0x340, 6
1219:             sltu       zero, s0, t4
1220:             xori       s10, gp, -26
                  div        s10, a5, s10
                  andi       s4, s4, -169
                  blt        s9, a0, 1238f
                  mulhsu     zero, gp, s11
1225:             c.li       a5, -1
                  c.xor      s0, a5
                  and        gp, a1, a3
                  slti       a6, t2, 436
                  nop
                  csrrci     t5, 0x340, 28
                  c.li       a6, -1
                  slli       s10, s10, 30
                  c.srai     s1, 26
                  c.slli     s1, 25
                  fence
                  and        s1, s5, s6
                  bge        t6, t4, 1246f
1238:             and        s7, t0, s11
                  csrrw      t1, 0x340, t0
                  rem        t5, t4, s7
                  mulhu      zero, ra, s4
                  div        a6, t1, zero
                  c.add      ra, s1
                  xori       a4, a6, -961
                  sltiu      s4, a5, 689
1246:             c.sub      a3, a5
                  csrrw      s9, 0x340, s9
                  csrrci     s7, 0x340, 27
                  nop
                  csrrci     s7, 0x340, 14
                  c.xor      a0, s0
                  auipc      t3, 452830
                  mulh       a7, a1, t4
                  andi       s3, a2, -366
                  srli       s9, a0, 21
                  or         t6, s6, s5
                  rem        s7, t0, a0
                  c.xor      a5, a0
                  slti       t1, a7, 121
                  mul        s11, t1, s1
                  mulhu      t1, s2, tp
                  andi       s2, tp, -145
                  c.add      s1, t2
                  c.andi     a2, -1
                  c.addi     s8, 4
                  c.xor      a4, a3
                  fence
                  and        s4, s6, gp
                  sltu       a3, s8, sp
                  c.nop
                  c.xor      a1, a3
                  or         s8, t5, s4
                  bge        s7, a1, 1287f
                  sub        a1, a3, s9
                  csrrc      t3, 0x340, zero
                  sra        t0, s1, s1
                  c.sub      s0, a3
                  c.beqz     a4, 1283f
                  mulhsu     s2, s9, s5
                  srl        gp, a1, s11
                  andi       a1, a5, -505
                  lui        a7, 579973
1283:             csrrc      tp, 0x340, zero
                  csrrwi     ra, 0x340, 28
                  srl        s10, t1, a6
                  blt        t5, t4, 1295f
1287:             ori        a5, t5, 306
                  or         a0, s7, s6
                  xor        s1, t0, s0
                  slti       s2, a2, -564
                  fence
                  bgeu       a7, s0, 1305f
                  c.mv       a5, s5
                  divu       t1, a6, s0
1295:             sltu       a2, s3, s3
                  sub        s4, s10, gp
                  c.beqz     s0, 1302f
                  mul        ra, s2, a7
                  xori       a2, t4, -306
                  remu       s0, a5, s2
                  c.nop
1302:             bgeu       s2, s4, 1313f
                  bne        t3, s6, 1320f
                  csrrs      t6, 0x340, a0
1305:             c.xor      a5, a3
                  csrrwi     s11, 0x340, 29
                  sltu       t0, s3, s1
                  c.and      a2, s1
                  lui        a5, 777246
                  fence.i
                  bltu       t0, s2, 1331f
                  sltu       a7, s3, a7
1313:             mulhu      tp, a1, t0
                  c.beqz     a5, 1323f
                  lui        a3, 178407
                  c.srli     a4, 27
                  c.srai     a1, 23
                  srai       s7, t3, 1
                  c.and      a2, s0
1320:             c.li       s10, -1
                  div        s0, s7, s6
                  c.addi     a7, 12
1323:             c.slli     s0, 29
                  xor        t3, s10, s6
                  mulhu      a0, s4, t5
                  c.mv       s10, a7
                  div        a4, t0, t1
                  add        s9, a4, tp
                  c.sub      a2, a0
                  xor        ra, a3, sp
1331:             mulhsu     t5, t4, a1
                  c.add      s1, a4
                  c.add      s4, t5
                  c.sub      a1, a5
                  sub        t1, t1, a7
                  c.xor      a1, a3
                  c.or       a3, a2
                  sll        s2, t1, s8
                  c.sub      s0, a0
                  sub        t6, t4, a4
                  c.xor      a0, s1
                  mulhsu     t6, t1, s5
                  remu       s3, s4, s6
                  beq        sp, t5, 1362f
                  c.slli     ra, 15
                  csrrwi     a3, 0x340, 10
                  fence.i
                  mulh       a3, a3, zero
                  blt        a1, a1, 1363f
                  srli       a0, tp, 28
                  c.srai     a3, 15
                  lui        a4, 469918
                  mulh       t3, s5, t2
                  c.nop
                  bltu       a7, a3, 1362f
                  add        s7, a7, s10
                  c.beqz     a0, 1363f
                  bge        s2, zero, 1367f
                  and        gp, a0, a3
                  c.addi     a5, -1
                  c.add      a3, s0
1362:             bge        s8, s7, 1377f
1363:             nop
                  csrrs      t4, 0x340, a3
                  c.bnez     s1, 1382f
                  xor        t4, s7, s8
1367:             mulh       t3, s7, a3
                  c.slli     s0, 30
                  c.or       s1, s1
                  c.li       a0, -1
                  add        a5, a1, ra
                  slt        a2, tp, s9
                  c.srai     a3, 9
                  xori       ra, s0, 560
                  sltiu      a2, t3, 271
                  div        s10, t6, t2
1377:             lui        a1, 455368
                  mul        t6, a4, a0
                  mulhsu     s8, s10, s11
                  c.andi     a4, 16
                  lui        s5, 355143
1382:             ori        a5, gp, 812
                  mul        a7, a5, a5
                  and        s3, s0, a1
                  c.add      s3, a7
                  csrrc      t6, 0x340, s11
                  andi       a7, sp, 544
                  sra        s9, s10, s2
                  sra        a6, t5, a2
                  auipc      s4, 505221
                  srli       a7, gp, 5
                  sra        t5, a4, ra
                  mulhu      s0, a6, ra
                  c.lui      s2, 4
                  mul        a5, s6, s4
                  c.nop
                  mul        a7, t6, tp
                  c.slli     t5, 8
                  srli       a4, s7, 7
                  bgeu       t6, s6, 1409f
                  mulhu      a4, t0, zero
                  srl        t6, a3, a0
                  slli       s7, a3, 0
                  c.sub      a1, a3
                  or         a7, a1, s5
                  c.lui      a3, 13
                  and        a3, tp, s10
                  ori        s5, zero, 935
1409:             sltiu      t1, s3, -654
                  beq        a4, gp, 1418f
                  sra        ra, gp, t2
                  addi       s5, s11, -389
                  c.nop
                  xor        a1, a1, s11
                  slti       s11, a6, -402
                  bgeu       s4, s5, 1436f
                  c.xor      a1, s1
1418:             slti       t3, a1, 306
                  bltu       s2, tp, 1426f
                  c.bnez     s0, 1425f
                  c.lui      s10, 12
                  c.andi     a3, -1
                  sub        s3, s7, s4
                  mulhsu     s8, s11, s4
1425:             c.bnez     s0, 1433f
1426:             andi       s7, s5, -720
                  rem        t4, a0, t0
                  beq        a1, s0, 1446f
                  sltu       t6, t1, t3
                  div        a0, a2, t6
                  c.andi     s0, 5
                  c.lui      s0, 27
1433:             c.bnez     a5, 1447f
                  fence
                  andi       a7, s8, -921
1436:             add        s0, t3, a1
                  add        a4, s1, s6
                  remu       s7, s0, t4
                  c.andi     s1, 4
                  c.mv       s11, a7
                  csrrwi     a4, 0x340, 3
                  csrrsi     s3, 0x340, 28
                  sub        a6, t6, s4
                  bne        t6, t1, 1453f
                  csrrci     s9, 0x340, 30
1446:             xor        a5, t5, a5
1447:             c.nop
                  andi       a0, t3, 1020
                  divu       gp, a7, zero
                  srai       s11, a2, 2
                  slti       s10, s7, -144
                  lui        s10, 477233
1453:             csrrc      t3, 0x340, t3
                  c.nop
                  rem        s0, s5, t1
                  sltu       a7, s5, s1
                  bge        t5, a7, 1474f
                  xori       s0, zero, -104
                  ori        tp, zero, 700
                  auipc      t4, 884751
                  c.slli     s1, 8
                  c.xor      a4, s0
                  sub        s5, s8, s2
                  add        s9, s11, a4
                  c.sub      a5, a5
                  c.sub      a3, a0
                  bge        s5, tp, 1483f
                  bge        tp, a0, 1478f
                  c.srai     a5, 31
                  div        t4, a6, sp
                  add        s3, s4, s4
                  csrrwi     s8, 0x340, 28
                  csrrci     s11, 0x340, 17
1474:             and        a4, s0, a0
                  remu       s11, s1, ra
                  c.mv       s7, a3
                  sra        a7, s4, a5
1478:             add        zero, zero, zero
                  sll        s0, a6, tp
                  srl        a4, ra, zero
                  addi       a4, a2, -320
                  div        tp, a2, a0
1483:             csrrc      s5, 0x340, t1
                  c.slli     s8, 22
                  c.slli     s10, 11
                  addi       s10, s10, 857
                  c.or       a1, a1
                  xori       a3, ra, 270
                  c.mv       s3, t6
                  sltu       a2, a4, t3
                  sll        t5, ra, t5
                  lui        tp, 365543
                  ori        s8, a7, -518
                  mulh       s11, a1, a6
                  div        gp, s4, a7
                  slli       zero, t0, 1
                  div        t3, a5, zero
                  and        s11, s5, a4
                  srl        s5, sp, a7
                  rem        zero, s5, t3
                  c.srli     s1, 21
                  remu       s3, t0, t1
                  slli       a6, s0, 9
                  sra        s10, s2, a0
                  auipc      s9, 571982
                  add        t0, t5, ra
                  c.sub      a1, a3
                  divu       tp, a6, s3
                  or         s2, t3, tp
                  csrrsi     a3, 0x340, 18
                  c.mv       a4, s1
                  fence.i
                  c.li       t5, 1
                  lui        a2, 287084
                  sub        s4, s5, a4
                  c.lui      s7, 23
                  xor        a4, s7, tp
                  add        a6, t3, a6
                  sltiu      s4, t4, 125
                  c.or       s0, a0
                  c.or       a5, a1
                  c.lui      a6, 29
                  and        s8, t3, s8
                  c.sub      a5, a0
                  nop
                  c.and      s1, a2
                  c.mv       a6, a1
                  c.beqz     a0, 1541f
                  c.lui      t3, 11
                  sub        t3, ra, t2
                  mulh       s4, t0, s6
                  add        a5, s7, s4
                  xor        a6, s0, a3
                  divu       ra, s7, a1
                  and        a5, t0, s9
                  and        t5, zero, a0
                  c.li       t0, -1
                  c.srli     a5, 8
                  remu       a5, a1, a6
                  sra        s4, s3, s1
1541:             c.srai     s0, 6
                  c.bnez     a5, 1546f
                  slli       s0, a7, 16
                  mulhu      s4, sp, ra
                  mul        s11, a5, gp
1546:             csrrci     ra, 0x340, 6
                  srai       s7, a6, 10
                  andi       a7, s4, -216
                  csrrc      t4, 0x340, s8
                  xori       zero, a5, 525
                  c.sub      a0, s0
                  csrrsi     tp, 0x340, 20
                  c.beqz     a1, 1571f
                  fence
                  and        s9, tp, t4
                  csrrci     a5, 0x340, 11
                  mul        t1, s3, a2
                  c.add      ra, s4
                  and        tp, t5, s1
                  c.addi     ra, -1
                  c.addi     s8, 25
                  addi       t1, zero, -84
                  srli       t1, a3, 19
                  bne        t6, s9, 1572f
                  fence.i
                  sll        s1, t5, ra
                  c.addi     a2, 6
                  c.lui      s3, 25
                  nop
                  c.xor      s1, s1
1571:             c.slli     s5, 18
1572:             c.slli     s11, 23
                  andi       a1, zero, -352
                  ori        tp, s7, 352
                  c.bnez     a5, 1583f
                  fence.i
                  c.mv       t5, s7
                  bltu       a5, a0, 1582f
                  c.xor      s1, a1
                  blt        a4, a3, 1591f
                  csrrc      s3, 0x340, a6
1582:             sra        a5, a0, t2
1583:             fence.i
                  srli       s0, s7, 7
                  sltu       a2, sp, s3
                  sltiu      s1, a4, 922
                  bge        a2, s6, 1591f
                  ori        a4, t6, 622
                  c.nop
                  beq        ra, s7, 1591f
1591:             slti       a7, s5, -351
                  c.andi     a3, -1
                  lw         s8, 4(sp)
                  srli       t0, a5, 26
                  and        t1, a1, a5
                  sra        t1, ra, t4
                  add        s3, t0, a5
                  addi       sp, sp, 12
                  add        s4, t0, s7
                  sub        s5, s6, ra
2682:             c.jr x24
sub_1:            bne        s2, t3, sub_1_stack_p
                  srl        t0, t1, tp
                  xor        a2, s6, a5
sub_1_stack_p:    addi       sp, sp, -44
                  add        a7, a2, s8
                  sw         s8, 4(sp)
                  mulhsu     t6, t5, t0
                  addi       s10, zero, 5 #init loop 0 counter
                  and        a4, s10, tp
                  addi       s7, zero, -11 #init loop 0 limit
                  c.or       s0, a0
sub_1_12_0_t:     sub        a2, t2, s8
                  addi       s10, s10, -8 #update loop 0 counter
                  c.addi     a0, -1
                  srl        a4, a0, t1
                  bne        s10, s7, sub_1_12_0_t #branch for loop 0
                  csrrci     zero, 0x340, 18
                  la         s7, region_0+2443 #start riscv_load_store_rand_instr_stream_1
                  lb         t6, -54(s7)
                  sb         s10, 150(s7)
                  lb         s11, -78(s7)
                  lbu        s8, -26(s7)
                  sub        t6, a4, t5
                  c.srai     a5, 9
                  sw         s9, 93(s7)
                  lb         a7, 66(s7)
                  c.nop
                  sw         s8, 141(s7)
                  lb         s11, 251(s7)
                  rem        t3, t0, a3
                  mulhsu     t3, t3, s0
                  sb         t5, -101(s7)
                  or         a4, s11, a6
                  sb         a4, -42(s7)
                  fence
                  lb         ra, 222(s7)
                  and        t6, t3, s5
                  sb         s11, -42(s7)
                  lhu        s11, -85(s7)
                  lbu        a7, 201(s7)
                  c.andi     a2, 11
                  sh         sp, -119(s7)
                  andi       a5, s0, 440
                  sh         s1, -47(s7)
                  sb         a1, -174(s7)
                  lw         t6, -87(s7)
                  sb         t4, -154(s7)
                  slti       a2, s7, -121
                  lhu        t4, -153(s7)
                  csrrsi     t3, 0x340, 21
                  srl        gp, gp, s0
                  sub        t5, t3, s11
                  sb         a6, -247(s7)
                  lb         a3, -226(s7) #end riscv_load_store_rand_instr_stream_1
                  la         s1, region_0+546 #start riscv_hazard_instr_stream_1
                  xori       a7, t6, -335
                  xori       t5, a0, -621
                  slt        a5, t5, t6
                  c.srai     a5, 28
                  csrrw      s4, 0x340, t6
                  lb         t6, 48(s1)
                  lbu        s4, 40(s1)
                  sra        a5, a0, t6
                  sh         a0, 14(s1)
                  rem        t5, a0, a7
                  lb         t5, 63(s1)
                  fence
                  lh         a0, -40(s1)
                  mul        t6, a7, t6
                  c.li       s4, 0
                  sub        t6, t6, a5
                  sh         a0, -4(s1)
                  lbu        t6, 17(s1)
                  lbu        a5, -47(s1)
                  lb         s4, 36(s1)
                  lbu        a5, -48(s1) #end riscv_hazard_instr_stream_1
sub_1_5:          jal        s8, 11f
0:                jal        t0, 5f
1:                c.jal      4f
2:                c.j        7f
3:                c.j        2b
4:                c.jal      3b
5:                jal        ra, 9f
6:                c.jal      12f
7:                c.j        0b
8:                c.jal      10f
9:                jal        ra, 8b
10:               jal        s4, 6b
11:               jal        ra, 1b
12:               csrrci     t4, 0x340, 19
                  la         t1, region_2+2539 #start load_store_instr_stream_0
                  la         a3, region_2+3319 #start load_store_instr_stream_1
                  lbu        a0, -179(a3)
                  la         t4, region_2+3079 #start load_store_instr_stream_2
                  la         s9, region_2+7170 #start load_store_instr_stream_3
                  lhu        s8, -212(s9)
                  sb         a0, 171(s9)
                  lbu        a7, 55(a3)
                  lbu        s4, 219(t1)
                  sb         s3, 39(s9)
                  lbu        t0, 68(s9)
                  lb         s1, -256(a3)
                  lbu        a0, 42(a3)
                  lbu        tp, -72(s9)
                  lhu        ra, 180(s9)
                  lbu        s2, 255(a3)
                  lbu        s10, -189(t1)
                  lhu        a1, 541(t4)
                  lb         s7, 225(s9)
                  lbu        s4, -102(a3)
                  sb         s11, -176(a3)
                  lw         t3, -18(s9)
                  lw         s2, 465(t4)
                  sb         s9, -224(a3) #end load_store_instr_stream_1
                  lb         s2, -429(t4)
                  sh         a5, -104(s9) #end load_store_instr_stream_3
                  lh         s7, 1137(t4)
                  lb         a7, 341(t4)
                  sb         a2, 215(t1)
                  lh         a2, 81(t1)
                  lbu        s3, 30(t4) #end load_store_instr_stream_2
                  lbu        s7, 190(t1) #end load_store_instr_stream_0
                  la         t1, region_3+172 #start load_store_instr_stream_1
                  la         s1, region_0+577 #start load_store_instr_stream_0
                  lb         s8, 160(s1)
                  la         t4, region_1+11894 #start load_store_instr_stream_3
                  la         t6, region_4+2587 #start load_store_instr_stream_2
                  sb         a7, -12(t6)
                  sb         a5, 110(t1)
                  lh         a2, -281(s1)
                  lbu        s0, -55(t1)
                  sb         a5, 161(t6)
                  lb         ra, 16(t4)
                  sb         s10, 116(t6)
                  sb         s10, 79(t6)
                  lbu        gp, 8(t4)
                  lb         s7, -210(s1)
                  lb         s3, 358(s1)
                  sb         s7, 1621(s1)
                  lh         a3, 154(t1)
                  sb         a1, -226(t6)
                  lbu        a3, 882(s1)
                  lbu        s4, 149(t6)
                  sb         t3, 1556(s1)
                  lb         s2, 1578(s1)
                  sw         s6, 6(t4)
                  lbu        t3, -49(t1)
                  lb         a6, -202(t6)
                  lb         t5, 13(t4)
                  lb         a7, -268(s1)
                  lh         s8, -71(t6)
                  sh         t3, 12(t4)
                  lh         a5, -102(t1) #end load_store_instr_stream_1
                  lb         s8, -1(t4) #end load_store_instr_stream_3
                  lhu        zero, 195(t6) #end load_store_instr_stream_2
                  lw         s5, 1267(s1) #end load_store_instr_stream_0
                  la         s4, region_1+9095 #start load_store_instr_stream_1
                  la         s1, region_4+2416 #start load_store_instr_stream_0
                  la         s11, region_0+932 #start load_store_instr_stream_2
                  lb         a2, -238(s4)
                  sh         a3, 428(s11)
                  sb         sp, 1828(s4)
                  la         t0, region_2+2062 #start load_store_instr_stream_3
                  lbu        t6, -1218(s4)
                  sh         a3, 124(s1)
                  la         a5, region_3+151 #start load_store_instr_stream_4
                  sh         s1, -42(s11)
                  lbu        t5, -1587(s4)
                  sb         s10, 1168(s11)
                  lh         s7, -16(t0)
                  sh         ra, 586(s11)
                  lh         a4, -102(s1)
                  lb         gp, 137(a5)
                  sb         s1, -131(s4)
                  sb         s3, 7(t0)
                  sb         t3, 154(a5)
                  sh         t4, 971(s4)
                  sw         a2, 136(s1)
                  lbu        s3, -6(t0)
                  lh         t1, 764(s11)
                  sb         a0, 77(s11)
                  sb         t3, 2(t0)
                  sh         t4, -1403(s4)
                  lb         a7, 90(a5)
                  lbu        t6, -1(t0)
                  lhu        t4, 82(s1)
                  lbu        s9, -273(s11)
                  lbu        s10, 13(t0)
                  sb         sp, -11(t0)
                  lhu        zero, 918(s11)
                  lb         t3, 50(a5)
                  lhu        gp, 0(t0)
                  lbu        a2, -23(s1)
                  lb         t5, 11(t0)
                  sb         ra, -249(s1)
                  lhu        a2, -8(t0) #end load_store_instr_stream_3
                  lbu        t3, -146(a5) #end load_store_instr_stream_4
                  lbu        t1, 686(s11) #end load_store_instr_stream_2
                  lbu        t3, 1258(s4) #end load_store_instr_stream_1
                  lh         t1, 98(s1) #end load_store_instr_stream_0
sub_1_3:          jal        s8, 13f
0:                c.j        15f
1:                jal        t1, 11f
2:                c.jal      8f
3:                jal        ra, 12f
4:                c.jal      2b
5:                jal        s5, 6f
6:                c.jal      16f
7:                c.jal      5b
8:                c.jal      0b
9:                c.jal      14f
10:               c.jal      4b
11:               c.j        9b
12:               c.j        10b
13:               c.j        1b
14:               jal        ra, 3b
15:               jal        ra, 7b
16:               nop
sub_1_4:          jal        s8, 17f
0:                c.j        7f
1:                jal        t1, 9f
2:                jal        t1, 0b
3:                c.j        13f
4:                c.j        5f
5:                jal        ra, 18f
6:                c.jal      8f
7:                c.jal      11f
8:                jal        a1, 10f
9:                jal        ra, 4b
10:               c.j        12f
11:               jal        ra, 15f
12:               jal        ra, 16f
13:               jal        ra, 6b
14:               c.j        1b
15:               c.j        14b
16:               jal        a3, 2b
17:               jal        t0, 3b
18:               c.or       a5, a3
                  la         s7, region_1+12898 #start load_store_instr_stream_1
                  la         s9, region_3+318 #start load_store_instr_stream_0
                  lb         t6, -307(s9)
                  lb         zero, 71(s7)
                  lbu        a0, 149(s9)
                  lb         s1, -173(s7)
                  lb         tp, 47(s7)
                  sb         a1, 41(s9)
                  sb         a4, -83(s9)
                  lbu        ra, 19(s7)
                  lb         ra, -94(s9)
                  sb         s7, 90(s9)
                  lhu        tp, 24(s9)
                  lh         s0, 124(s7)
                  lw         s2, 114(s9)
                  lb         a6, 122(s7) #end load_store_instr_stream_1
                  lb         gp, -315(s9) #end load_store_instr_stream_0
                  addi       t1, zero, -8 #init loop 1 counter
                  addi       t4, zero, 10 #init loop 1 limit
                  c.li       a3, 13
sub_1_13_1_t:     ori        a3, a2, -373
                  auipc      s2, 512701
                  addi       t1, t1, 9 #update loop 1 counter
                  c.xor      a5, a2
                  addi       a6, zero, 2 #init loop 0 counter
                  rem        t6, ra, t0
                  div        gp, sp, s6
                  addi       ra, zero, 15 #init loop 0 limit
                  c.sub      a3, a5
sub_1_13_0_t:     c.add      s10, s2
                  addi       a6, a6, 1 #update loop 0 counter
                  slli       s2, a6, 9
                  bltu       a6, ra, sub_1_13_0_t #branch for loop 0
                  bne        t1, t4, sub_1_13_1_t #branch for loop 1
                  sll        a1, sp, t5
                  la         s0, region_3+116 #start riscv_load_store_rand_instr_stream_2
                  sra        gp, a6, s2
                  c.sw       a4, 4(s0)
                  lbu        s5, -7(s0)
                  lbu        t0, 9(s0)
                  c.andi     a5, 5
                  lbu        a7, -9(s0)
                  csrrci     a4, 0x340, 29
                  lh         s11, 2(s0)
                  mulh       a1, t5, sp
                  lh         t3, 0(s0)
                  lui        s1, 132186
                  lbu        t6, -2(s0)
                  lh         s1, 16(s0)
                  and        t4, a2, t2
                  lui        a5, 781481
                  c.addi     ra, -1
                  c.sw       a1, 8(s0)
                  lbu        s2, 13(s0)
                  csrrci     a4, 0x340, 2
                  add        s7, t1, t5
                  c.sw       a5, 12(s0)
                  lb         a1, -14(s0)
                  lw         a4, 12(s0) #end riscv_load_store_rand_instr_stream_2
                  la         a5, region_2+4866 #start load_store_instr_stream_3
                  lh         a0, 14(a5)
                  la         t1, region_2+1177 #start load_store_instr_stream_1
                  la         s2, region_2+4565 #start load_store_instr_stream_0
                  lb         s0, 9(s2)
                  sw         t2, 2(a5)
                  sw         zero, 19(t1)
                  lbu        s5, 38(t1)
                  la         a2, region_2+2140 #start load_store_instr_stream_4
                  sb         s3, 6(s2)
                  sb         tp, 20(t1)
                  sh         sp, 8(a5)
                  sb         ra, 1153(a2)
                  sh         a2, 3(s2)
                  lh         ra, 5(t1)
                  sb         s6, -9(a5)
                  sb         s9, 11(a5)
                  lbu        a6, -15(a5)
                  la         s10, region_2+914 #start load_store_instr_stream_2
                  sh         s11, -31(t1)
                  lh         a4, 1188(a2)
                  lbu        s0, -7(t1)
                  lb         a4, 8(s2)
                  sh         s11, -252(a2)
                  lb         a3, -15(a5)
                  sb         s11, -303(s10)
                  lbu        a7, -1363(a2)
                  lhu        s7, -1756(a2)
                  lb         s4, 14(s2)
                  sh         s5, 1734(s10)
                  sw         sp, -438(s10)
                  lb         a3, -833(a2)
                  sb         s0, -840(s10)
                  lhu        s5, 802(a2)
                  lbu        a6, -7(a5)
                  lb         t3, 15(t1)
                  sb         a4, -1063(a2)
                  lb         a3, 5(a5)
                  sb         s7, 5(s2)
                  lbu        gp, -816(s10) #end load_store_instr_stream_2
                  lb         s4, -1415(a2)
                  sb         a5, -9(a5) #end load_store_instr_stream_3
                  sh         s6, 1(t1) #end load_store_instr_stream_1
                  sh         a0, 694(a2) #end load_store_instr_stream_4
                  sb         a7, 16(s2) #end load_store_instr_stream_0
                  la         a4, region_1+2875 #start riscv_hazard_instr_stream_0
                  slli       t5, t5, 13
                  lb         s7, 74(a4)
                  lb         s7, -103(a4)
                  sb         a1, -21(a4)
                  lbu        tp, -248(a4)
                  rem        s9, a1, tp
                  c.addi     tp, 18
                  lb         a5, 26(a4)
                  c.andi     a1, 4
                  sb         tp, -178(a4)
                  mulh       s7, tp, a1
                  lb         t5, -212(a4)
                  sb         a1, 235(a4)
                  lb         s7, -39(a4)
                  lb         a5, 132(a4)
                  sh         t5, -159(a4)
                  lbu        t5, 130(a4)
                  lbu        a5, 53(a4)
                  rem        tp, tp, s7
                  lbu        tp, -2(a4)
                  csrrsi     tp, 0x340, 10
                  lbu        a1, 255(a4)
                  mulhu      s7, tp, tp
                  fence
                  lbu        tp, 38(a4)
                  sb         s9, 38(a4)
                  c.add      s7, s7
                  c.add      t5, a5
                  lb         tp, -178(a4)
                  sb         a5, 136(a4)
                  ori        s7, s7, -792
                  lbu        tp, -205(a4)
                  lhu        t5, -225(a4)
                  lhu        s7, 27(a4)
                  sb         s7, -128(a4)
                  lb         tp, -19(a4)
                  lb         s7, -149(a4)
                  mul        s9, a5, tp
                  c.srli     a1, 26
                  lbu        t5, 203(a4) #end riscv_hazard_instr_stream_0
                  la         s4, region_1+13984 #start riscv_load_store_rand_instr_stream_0
                  sb         a4, 9(s4)
                  lbu        s1, 3(s4)
                  slti       t5, t0, 20
                  csrrw      s1, 0x340, t1
                  slt        ra, s9, t2
                  sltu       tp, t4, t6
                  sb         t0, 11(s4)
                  srli       s9, t0, 15
                  lbu        t6, 1(s4)
                  csrrsi     s9, 0x340, 23
                  lb         s3, -3(s4)
                  or         s8, zero, t2
                  sh         a0, -2(s4)
                  and        t0, a2, t2
                  sb         s3, -11(s4)
                  lw         t1, 4(s4)
                  andi       a2, a0, -83
                  mul        s10, t2, s1
                  srl        s10, a4, a1
                  c.addi     a2, -1
                  lb         tp, 11(s4)
                  srl        s2, s3, s9
                  lbu        a0, 13(s4)
                  sh         s7, -2(s4)
                  mulhsu     s9, a5, a1
                  lb         a6, -8(s4)
                  sb         s11, 16(s4)
                  csrrw      a4, 0x340, s4
                  lb         t3, 3(s4)
                  mulh       zero, t4, a0
                  lbu        s1, -11(s4)
                  sb         a7, -1(s4)
                  lbu        zero, 7(s4)
                  sb         tp, 5(s4)
                  lhu        t5, -4(s4) #end riscv_load_store_rand_instr_stream_0
                  la         t0, region_3+497 #start riscv_hazard_instr_stream_2
                  csrrci     a4, 0x340, 0
                  srai       s9, s10, 4
                  lb         ra, -42(t0)
                  sb         s7, -34(t0)
                  sb         s9, 3(t0)
                  sb         a5, -20(t0)
                  c.xor      a5, a4
                  xori       a4, a4, 41
                  lh         a4, -49(t0)
                  c.andi     a5, -1
                  c.nop
                  lbu        s7, -34(t0)
                  sh         a5, -7(t0)
                  csrrs      a5, 0x340, s7
                  mul        ra, s7, s9
                  rem        a4, a5, s7
                  c.addi     s10, 20
                  sb         a5, 1(t0)
                  sb         ra, -46(t0)
                  c.andi     a5, -1
                  srl        a4, ra, s10
                  fence
                  sb         a4, -38(t0)
                  lbu        ra, -12(t0)
                  c.xor      a4, a4
                  c.li       s10, 13
                  lh         ra, -57(t0)
                  lbu        a5, -54(t0)
                  addi       s9, s10, -137
                  lb         ra, -29(t0)
                  or         s9, a4, ra
                  sll        ra, a5, s10
                  lbu        a4, -44(t0)
                  sltu       ra, ra, ra
                  c.srli     a5, 27
                  lb         a5, -48(t0)
                  sb         a5, -56(t0) #end riscv_hazard_instr_stream_2
                  bge        t6, s0, 10f
                  c.mv       t0, sp
                  bgeu       gp, gp, 18f
                  c.and      a0, a4
                  fence
                  ori        t0, s2, 395
                  bne        a2, a4, 12f
                  sltu       a3, sp, a1
                  slti       s0, a3, 712
                  c.add      s5, a4
10:               ori        s11, t1, 245
                  c.li       t1, -1
12:               c.srai     s0, 1
                  c.beqz     a2, 18f
                  c.lui      s7, 16
                  c.andi     a1, -1
                  xor        a7, a2, gp
                  and        zero, zero, a0
18:               c.and      a2, s0
                  c.lui      t0, 14
                  xor        tp, t3, s9
                  mulh       t3, s10, s6
                  nop
                  ori        a1, s9, -484
                  mulhu      a2, a6, a3
                  mulhsu     a1, s11, a1
                  c.mv       t6, s5
                  csrrci     s2, 0x340, 4
                  c.bnez     s0, 45f
                  bltu       t1, s1, 34f
                  nop
                  beq        s2, t5, 36f
                  c.li       gp, -1
                  addi       gp, s5, 38
34:               c.lui      a0, 8
                  andi       s7, s9, -945
36:               xor        tp, t5, s11
                  xori       s9, s7, 508
                  mulhu      ra, t6, t4
                  mulh       s7, zero, t2
                  c.srai     s0, 26
                  lui        s2, 844282
                  divu       s10, s10, s10
                  c.add      s7, a5
                  mulhsu     s7, a2, t4
45:               c.nop
                  srai       a7, zero, 10
                  c.srli     a5, 3
                  c.addi     t5, 5
                  bltu       s8, s8, 57f
                  sra        t5, t3, zero
                  csrrs      t4, 0x340, a5
                  csrrw      zero, 0x340, s2
                  mul        zero, tp, t6
                  slli       s2, a6, 20
                  div        s5, s10, s3
                  csrrwi     t6, 0x340, 10
57:               xori       s3, s7, -684
                  xori       s9, t3, -938
                  divu       s7, t6, s7
                  c.li       a7, 20
                  sltiu      s11, a5, 955
                  sltiu      s8, a6, 721
                  xor        s7, t1, gp
                  divu       s5, a0, s6
                  srai       s9, t0, 20
                  csrrc      s11, 0x340, s7
                  c.slli     a1, 18
                  mul        a3, t4, a5
                  csrrsi     s2, 0x340, 28
                  c.or       s0, a3
                  c.bnez     s1, 90f
                  sub        t4, s8, t0
                  c.srai     s0, 23
                  andi       a6, s2, -403
                  csrrw      a7, 0x340, s5
                  xor        s5, a0, t1
                  c.slli     t5, 3
                  srai       a5, a6, 9
                  sltu       s3, t0, s10
                  srl        s7, t5, t2
                  remu       s10, t6, s8
                  slli       t5, s6, 18
                  sltiu      a6, s1, 847
                  and        tp, t4, a2
                  c.addi     s2, -1
                  c.lui      s7, 24
                  c.lui      s10, 19
                  andi       s8, s7, -793
                  c.andi     a1, 7
90:               c.xor      a5, a2
                  bge        s5, zero, 93f
                  beq        s11, s6, 96f
93:               c.slli     t5, 8
                  fence
                  or         a6, a6, tp
96:               c.srai     s0, 26
                  and        zero, a0, a2
                  bne        a7, t5, 102f
                  c.xor      s1, a1
                  xori       t0, t1, -564
                  sll        s4, s7, t5
102:              div        a0, s3, t0
                  c.srli     a4, 20
                  or         a3, t4, s4
                  c.nop
                  slti       a7, a7, -408
                  mul        s7, a2, gp
                  slli       a6, a1, 19
                  sra        t3, s6, sp
                  sll        s4, a5, a4
                  auipc      a3, 673397
                  nop
                  c.andi     a3, 31
                  csrrc      ra, 0x340, t4
                  srli       t5, s11, 23
                  bgeu       a1, s9, 126f
                  c.nop
                  c.li       a0, 15
                  csrrci     t0, 0x340, 12
                  slt        s9, tp, t3
                  c.sub      a2, a5
                  addi       a1, gp, 389
                  c.srli     a1, 21
                  c.slli     t6, 13
                  sltu       ra, s3, t3
126:              slti       t1, s5, -664
                  sra        s1, t1, a2
                  c.nop
                  div        s7, s6, t6
                  mulhu      tp, ra, ra
                  and        a0, a0, t0
                  csrrw      a0, 0x340, t0
                  bltu       a2, s4, 138f
                  c.lui      tp, 18
                  c.slli     s11, 16
                  c.nop
                  divu       s10, a3, t1
138:              slli       a6, t1, 23
                  lui        a7, 365389
                  lui        s1, 527819
                  fence
                  addi       t4, tp, 508
                  rem        a5, sp, a7
                  mul        ra, t1, s3
                  xori       a3, a4, 303
                  fence.i
                  c.srli     a4, 29
                  blt        t3, t0, 150f
                  blt        a3, s11, 167f
150:              c.nop
                  remu       s11, t4, t0
                  mul        s10, a6, s0
                  c.andi     a3, 11
                  and        t0, s4, a5
                  c.addi     s1, 13
                  sll        t6, zero, gp
                  rem        t1, tp, tp
                  c.srli     a5, 24
                  c.xor      a1, s0
                  bne        a1, s8, 179f
                  mulh       a0, tp, ra
                  sll        a0, s9, s3
                  slli       a7, s4, 0
                  bne        t4, t3, 169f
                  c.sub      a2, a1
                  addi       a1, a3, 217
167:              andi       s9, gp, -276
                  c.or       s0, a0
169:              sub        t4, t0, t5
                  c.srli     s1, 2
                  bltu       t6, t4, 177f
                  remu       s9, sp, t6
                  remu       s1, s4, a5
                  c.bnez     a3, 182f
                  csrrs      a4, 0x340, s8
                  c.beqz     a0, 196f
177:              c.beqz     s1, 194f
                  divu       s10, t5, s7
179:              csrrw      tp, 0x340, s2
                  srl        s7, s3, t6
                  rem        zero, t2, a3
182:              c.and      a5, a2
                  addi       t3, s3, 375
                  remu       a3, s5, ra
                  srl        s11, sp, t6
                  c.or       a3, a4
                  c.lui      s2, 23
                  c.addi     a0, -1
                  srl        a3, s10, a4
                  xori       t5, s5, -479
                  mul        s8, s0, sp
                  divu       t4, a0, s7
                  xori       gp, tp, -593
194:              mul        s8, t5, t4
                  slt        gp, a6, s3
196:              srai       s1, a2, 8
                  blt        t4, a0, 211f
                  srl        a0, s10, t2
                  c.bnez     a1, 214f
                  csrrs      a6, 0x340, ra
                  c.mv       ra, a6
                  slt        t0, a3, t3
                  c.addi     t1, 23
                  c.and      a5, a0
                  c.bnez     a0, 221f
                  csrrw      s2, 0x340, a6
                  c.li       s5, -1
                  csrrs      t4, 0x340, s10
                  sra        a1, ra, s1
                  c.lui      t0, 18
211:              mul        zero, sp, a2
                  bne        t1, sp, 228f
                  auipc      ra, 850094
214:              mulhu      t5, t1, s11
                  srli       a5, ra, 1
                  c.srai     a2, 16
                  c.li       t4, 8
                  lui        t5, 983879
                  csrrsi     a4, 0x340, 2
                  slli       t1, s9, 12
221:              srai       s11, a4, 31
                  mulhsu     s11, t6, t1
                  divu       a6, a3, t5
                  c.xor      a4, a2
                  slli       a3, s10, 28
                  add        s8, a6, a6
                  addi       s2, s0, 255
228:              blt        t2, a6, 234f
                  sub        t1, s6, s1
                  c.and      s0, a1
                  c.xor      s0, a4
                  c.bnez     a1, 250f
                  c.slli     a4, 22
234:              mulhsu     a3, a1, s8
                  csrrw      zero, 0x340, a3
                  beq        s11, a6, 254f
                  and        s11, tp, a6
                  c.add      a3, s6
                  lui        t5, 926894
                  fence.i
                  xori       t3, a3, 619
                  ori        s1, ra, 974
                  add        t3, s4, s1
                  fence.i
                  c.or       s1, a3
                  csrrw      t1, 0x340, s1
                  c.li       s11, -1
                  c.andi     a4, 25
                  c.bnez     a4, 260f
250:              and        tp, s6, sp
                  lui        s3, 869697
                  addi       s9, s7, -222
                  slti       s5, s2, -983
                  .2byte 0x502d # kHintInstr
254:              c.sub      a5, a3
                  beq        t1, s4, 260f
                  c.add      t0, a0
                  slti       s5, s7, -822
                  csrrsi     t3, 0x340, 1
                  slli       s11, a5, 31
260:              lui        t3, 5722
                  .2byte 0x0002 # kHintInstr
                  or         a1, t3, a2
                  slti       s3, s5, -430
                  c.xor      a1, s1
                  csrrwi     a3, 0x340, 18
                  bge        t6, s10, 273f
                  sltiu      t4, a5, -920
                  add        tp, t2, sp
                  nop
                  mul        tp, t6, t6
                  bne        a1, s10, 275f
                  beq        s1, t2, 279f
                  mulhsu     s5, t1, s1
273:              divu       s0, sp, s10
                  c.nop
275:              bltu       s9, a3, 285f
                  c.srli     a5, 4
                  csrrci     a7, 0x340, 20
                  xori       a4, tp, -876
279:              srai       t6, sp, 13
                  c.mv       t0, t2
                  blt        t2, s7, 297f
                  auipc      t0, 808937
                  and        t3, a2, a0
                  fence
285:              fence.i
                  c.srai     a0, 13
                  sltiu      s0, t2, 245
                  c.sub      s0, a2
                  mulhu      s11, t5, s8
                  divu       s4, a4, s7
                  sra        s7, a2, s3
                  la         t1, region_1+2514 #start load_store_instr_stream_0
                  lb         s1, 1771(t1)
                  la         a2, region_1+15652 #start load_store_instr_stream_2
                  lb         ra, -233(a2)
                  lhu        a5, 378(t1)
                  lb         a1, 35(a2)
                  lb         a1, -21(a2)
                  lb         s11, -133(a2)
                  la         a6, region_1+14296 #start load_store_instr_stream_1
                  lb         a7, 1333(a6)
                  lbu        a5, -176(a2)
                  lbu        s11, 693(a6)
                  sb         tp, -1591(t1)
                  lbu        a1, -195(a2)
                  lbu        s9, -1739(a6)
                  lbu        s2, -1905(a6)
                  lbu        s1, 1677(t1)
                  sb         s4, 1997(t1)
                  sh         tp, -530(a6)
                  sb         s3, 109(a2)
                  sb         s6, 1499(a6)
                  sw         s5, -116(a2)
                  sb         s7, -862(t1)
                  lbu        s0, -87(a2) #end load_store_instr_stream_2
                  sw         s8, 1024(a6) #end load_store_instr_stream_1
                  lbu        t3, -1395(t1) #end load_store_instr_stream_0
                  c.andi     a5, 2
                  addi       zero, t2, 827
                  blt        s11, s4, 296f
                  c.sub      a1, s1
296:              xori       s7, s9, 44
297:              c.li       t4, 5
                  add        s7, a6, a7
                  sltiu      t4, s9, -896
                  c.nop
                  bne        s7, ra, 319f
                  slti       s8, t2, -294
                  divu       a3, t6, s6
                  c.and      s1, a0
                  bgeu       s5, s7, 322f
                  slli       a3, t6, 17
                  add        t6, a6, t1
                  lui        s11, 691067
                  c.li       ra, -1
                  la         a4, sub_2
                  srli       t3, t2, 17
                  remu       a0, s3, t5
                  lui        a7, 323194
                  addi       a4, a4, 64
                  xor        zero, t6, s0
j_sub_1_sub_2_2:  jalr       s8, a4, -64
                  .2byte 0x0002 # kHintInstr
                  mulhu      a2, s11, a1
                  c.add      s1, t4
                  c.li       ra, -1
                  rem        a3, sp, zero
                  slt        s11, a2, s6
                  mulhu      s8, s10, gp
                  andi       s11, t1, -828
                  nop
                  csrrsi     gp, 0x340, 27
                  fence.i
                  sub        s10, s7, s1
                  bge        s9, s7, 335f
319:              sltiu      a0, s11, -738
                  c.srli     a0, 2
                  c.slli     s0, 13
322:              div        a1, s4, t4
                  csrrwi     zero, 0x340, 19
                  or         a6, s9, t6
                  csrrc      a5, 0x340, a1
                  bge        a3, s1, 346f
                  c.andi     a3, 21
                  c.or       a4, s1
                  srli       a2, t4, 14
                  csrrsi     a3, 0x340, 21
                  csrrsi     s11, 0x340, 26
                  mulhu      s5, ra, a3
                  c.slli     a7, 12
                  slt        s1, sp, t0
335:              c.slli     a1, 17
                  xori       gp, t3, -100
                  c.li       s8, 1
                  bgeu       s0, t3, 357f
                  or         tp, t4, s10
                  div        a4, gp, a6
                  c.lui      s3, 25
                  c.bnez     a5, 353f
                  sll        s4, t0, s2
                  sra        s0, s6, t0
                  c.and      s0, a0
346:              mulh       a4, a5, a6
                  addi       a5, s11, 369
                  mulhu      t5, s8, s1
                  csrrci     s8, 0x340, 26
                  divu       t6, a3, s3
                  xori       t5, t0, -535
                  bne        ra, s5, 357f
353:              slt        a4, t3, s7
                  div        t5, t2, gp
                  sll        s8, s6, t2
                  sltu       a7, t4, s5
357:              rem        s10, a7, t2
                  c.srli     s0, 8
                  mul        a2, a3, tp
                  fence
                  c.li       s2, -1
                  csrrw      t1, 0x340, sp
                  bgeu       s3, s1, 365f
                  c.add      s7, sp
365:              nop
                  c.addi     s7, 23
                  addi       t6, t3, 814
                  csrrw      s7, 0x340, ra
                  csrrwi     a6, 0x340, 24
                  mulhu      t5, a3, s8
                  c.srai     s1, 31
                  slli       s3, s1, 7
                  sll        t1, a6, s3
                  srl        t3, s2, ra
                  sub        t1, s0, t1
                  slti       tp, s11, 335
                  mulhsu     s4, s8, gp
                  add        a2, s4, s4
                  mulhu      s11, s7, a7
                  c.addi     gp, 3
                  remu       gp, s3, a0
                  slli       ra, a3, 9
                  or         a1, a0, a6
                  slli       s3, a2, 8
                  csrrsi     s5, 0x340, 26
                  c.andi     a4, 7
                  divu       a3, a1, a2
                  srli       t4, s8, 6
                  csrrs      s11, 0x340, t1
                  csrrsi     ra, 0x340, 8
                  c.andi     a3, -1
                  fence.i
                  bne        ra, tp, 398f
                  csrrs      a2, 0x340, t2
                  sll        s8, s1, s6
                  fence.i
                  c.nop
398:              c.nop
                  bgeu       gp, a7, 403f
                  c.nop
                  sll        a3, s3, s7
                  c.beqz     a2, 408f
403:              beq        ra, a7, 409f
                  c.li       s10, 27
                  c.srli     a0, 30
                  csrrc      a2, 0x340, s2
                  fence.i
408:              c.sub      a5, s0
409:              c.bnez     a1, 428f
                  rem        s4, a0, t6
                  srl        s0, a1, a4
                  nop
                  c.mv       s11, s2
                  add        t0, s8, s1
                  remu       s2, s4, a5
                  c.add      s3, s9
                  andi       s3, sp, 32
                  mulh       s3, t6, s7
                  bge        a0, a2, 425f
                  sra        s2, t6, s0
                  bne        a5, s11, 425f
                  blt        s1, s5, 427f
                  sll        a4, a1, s5
                  mul        s8, s6, ra
425:              csrrci     t6, 0x340, 7
                  bne        s0, sp, 444f
427:              slt        tp, zero, tp
428:              c.and      a2, a1
                  auipc      t0, 192728
                  c.srli     a1, 22
                  sltu       s2, s3, ra
                  c.slli     s1, 16
                  srli       s8, s10, 25
                  c.slli     s4, 27
                  c.and      a2, a3
                  mulhu      t5, a5, s6
                  sll        t6, a3, s9
                  bne        s6, s0, 448f
                  csrrwi     ra, 0x340, 2
                  csrrs      t3, 0x340, t1
                  xori       gp, a5, 377
                  c.addi     t6, -1
                  or         a1, a5, tp
444:              or         ra, t2, s0
                  mulh       s9, s0, a6
                  fence
                  mulhsu     s11, a0, s8
448:              c.addi     a2, -1
                  c.xor      s1, a5
                  c.li       s8, -1
                  bltu       t2, s7, 466f
                  sra        a1, t2, s7
                  c.sub      a1, s1
                  lui        s9, 268445
                  rem        gp, sp, s11
                  c.bnez     s0, 472f
                  bge        t6, t5, 471f
                  srai       a4, a0, 14
                  c.mv       t0, s10
                  c.sub      a4, a2
                  xor        a7, sp, t4
                  add        a4, t6, t1
                  or         s7, gp, s10
                  csrrwi     a4, 0x340, 17
                  c.bnez     a3, 481f
466:              xori       gp, s6, -85
                  rem        s10, t6, a6
                  c.bnez     a1, 486f
                  sll        t0, t0, s7
                  c.andi     a3, -1
471:              ori        s9, t0, 752
472:              remu       a1, a0, s6
                  c.srai     s0, 30
                  c.beqz     s0, 484f
                  srli       gp, s11, 9
                  c.xor      s1, a4
                  c.srai     a0, 10
                  mulhsu     ra, a0, t6
                  sltiu      tp, a7, -46
                  or         a6, t5, gp
481:              divu       t4, tp, s10
                  mulhu      ra, t0, s0
                  srl        t4, s4, a3
484:              xor        a5, s0, a1
                  rem        t1, gp, s7
486:              xori       t3, a4, -54
                  divu       s5, a0, t5
                  divu       tp, a0, sp
                  xor        ra, a7, t0
                  sll        a4, t2, a0
                  auipc      t6, 367150
                  beq        s11, s1, 509f
                  fence.i
                  ori        t0, t0, -823
                  c.srai     a4, 2
                  c.srli     s0, 1
                  c.addi     s8, -1
                  mulhu      a6, t5, gp
                  rem        a1, s2, a7
                  rem        s1, a7, a1
                  c.addi     t6, 8
                  c.li       ra, 2
                  srli       s1, a7, 19
                  sub        s10, a4, a6
                  beq        ra, s4, 510f
                  lui        a4, 511897
                  bge        gp, zero, 512f
                  sll        t5, a5, t0
509:              lui        s0, 995459
510:              rem        gp, t3, gp
                  sltu       t3, s8, a0
512:              bge        t2, gp, 517f
                  rem        t3, tp, s8
                  sll        a3, a4, t2
                  mulhu      a3, s9, s11
                  srli       zero, s7, 13
517:              and        s8, t2, a0
                  add        zero, a1, t0
                  div        s3, a6, s8
                  csrrw      s4, 0x340, a7
                  div        a0, s11, gp
                  slli       zero, a5, 12
                  blt        t4, s0, 529f
                  c.or       a2, a0
                  ori        s7, t3, -323
                  mul        a3, a4, s10
                  sltu       t5, s10, zero
                  c.srai     a5, 1
529:              c.li       a5, -1
                  c.beqz     a5, 534f
                  slti       s2, a2, 769
                  blt        a3, t3, 543f
                  c.srai     a1, 19
534:              mulh       s9, t4, t4
                  slli       t4, t4, 0
                  sra        s7, s7, s1
                  c.srli     a2, 8
                  lui        s7, 211483
                  beq        s4, a1, 555f
                  nop
                  csrrc      tp, 0x340, t2
                  div        t1, a3, t4
543:              mulh       t0, a5, t6
                  sub        s4, s7, s9
                  mulhu      s7, a0, s0
                  bgeu       s3, a2, 566f
                  remu       s10, a7, s11
                  c.beqz     s0, 554f
                  xor        s10, a0, a4
                  c.lui      s9, 6
                  c.add      s7, t5
                  sltu       s11, t5, s7
                  srai       t5, t2, 4
554:              c.lui      tp, 13
555:              c.li       t3, -1
                  and        t1, t1, sp
                  lui        s5, 784796
                  srl        a3, tp, a6
                  andi       tp, s9, -791
                  sltiu      s0, a7, -724
                  bne        a3, t6, 566f
                  fence
                  sra        ra, a0, t6
                  csrrs      a3, 0x340, sp
                  beq        s7, s10, 583f
566:              mulhu      s5, s11, zero
                  bne        s3, a5, 575f
                  c.andi     s1, 23
                  c.mv       a4, gp
                  sltiu      s10, t6, 637
                  bge        t3, a4, 576f
                  c.beqz     s1, 588f
                  bgeu       t0, gp, 591f
                  bne        t6, s6, 592f
575:              fence.i
576:              csrrw      a2, 0x340, s5
                  fence
                  c.beqz     a4, 597f
                  csrrwi     s10, 0x340, 25
                  nop
                  auipc      s4, 474911
                  c.or       s0, a2
583:              sra        s10, sp, s7
                  bgeu       t1, t1, 599f
                  c.nop
                  lui        t0, 837827
                  c.li       tp, -1
588:              slti       t0, s9, -71
                  mul        t5, a5, a0
                  slti       s1, a3, -31
591:              blt        s7, a3, 595f
592:              csrrs      t6, 0x340, s9
                  c.and      s0, a3
                  c.slli     ra, 21
595:              mul        s7, gp, a1
                  csrrs      zero, 0x340, a6
597:              mulhu      t0, zero, a3
                  c.bnez     a5, 617f
599:              fence.i
                  sub        a4, s3, zero
                  slt        a7, s2, s4
                  csrrs      ra, 0x340, s9
                  c.xor      a1, a3
                  srai       a4, a2, 4
                  mul        t4, s11, t6
                  slt        t5, s4, zero
                  c.mv       s1, s10
                  c.slli     s8, 11
                  srl        t3, s9, s5
                  add        s5, s5, s0
                  fence
                  c.or       a4, a5
                  sll        a3, a5, s5
                  remu       s5, t0, zero
                  auipc      t4, 296013
                  c.and      a1, s0
617:              addi       tp, t0, -192
                  c.li       t1, -1
                  c.or       a2, s0
                  fence.i
                  c.nop
                  c.mv       a2, ra
                  xor        t6, t2, s0
                  nop
                  or         s10, a0, s9
                  sltiu      s10, t2, -570
                  csrrci     s11, 0x340, 16
                  blt        t5, gp, 636f
                  c.beqz     a1, 639f
                  csrrc      t3, 0x340, tp
                  sltiu      t3, t0, -995
                  add        a0, a6, a3
                  c.nop
                  csrrwi     s1, 0x340, 4
                  div        a4, a3, s4
636:              xor        t5, s2, t3
                  c.xor      s1, a2
                  c.or       a2, a0
639:              c.nop
                  xori       s8, t4, -486
                  c.srai     a2, 5
                  mulhu      a7, s9, s3
                  c.and      s0, a0
                  blt        t5, s2, 646f
                  c.or       a2, s0
646:              c.beqz     a4, 662f
                  sltiu      t6, gp, 393
                  auipc      t4, 660185
                  c.srai     a0, 13
                  beq        a0, a0, 664f
                  mulhu      t6, zero, s11
                  lui        s5, 193655
                  lui        s10, 946883
                  c.xor      a4, a5
                  mul        a6, a1, s10
                  bgeu       t2, a4, 662f
                  c.srai     a1, 7
                  csrrci     a2, 0x340, 31
                  divu       a0, t0, a6
                  divu       s1, s9, a1
                  mulh       a2, s1, a2
662:              c.xor      a0, a0
                  c.li       t0, -1
664:              bgeu       a6, s2, 681f
                  c.mv       gp, t1
                  c.beqz     a2, 668f
                  c.bnez     a0, 671f
668:              srl        s8, tp, s9
                  sub        s7, ra, s3
                  csrrs      zero, 0x340, s5
671:              c.sub      a5, a4
                  c.li       s10, 11
                  auipc      s8, 644130
                  ori        a1, t5, -43
                  bge        a3, s10, 680f
                  c.beqz     s1, 692f
                  xor        tp, tp, s3
                  mul        a7, gp, t1
                  c.xor      a4, a3
680:              csrrw      a1, 0x340, gp
681:              blt        s10, s5, 701f
                  xori       s0, a6, 294
                  mul        a3, s11, t4
                  bltu       a5, s11, 686f
                  ori        a3, s0, 438
686:              csrrci     s4, 0x340, 7
                  c.sub      a0, a3
                  c.mv       s4, sp
                  bltu       s3, s10, 699f
                  csrrci     s5, 0x340, 11
                  add        s4, s11, s6
692:              c.sub      s1, a2
                  c.andi     s1, -1
                  and        gp, tp, zero
                  divu       s2, gp, s3
                  xori       a2, a0, -1014
                  c.mv       a2, a7
                  rem        a6, s0, zero
699:              csrrsi     ra, 0x340, 7
                  c.addi     t5, -1
701:              sltiu      t0, a5, 50
                  c.lui      gp, 18
                  csrrwi     s0, 0x340, 4
                  c.bnez     s1, 720f
                  c.bnez     s1, 711f
                  srl        t3, t5, a3
                  fence
                  c.srai     a5, 3
                  lui        tp, 111983
                  bge        s11, s0, 724f
711:              add        s9, tp, t2
                  c.and      a1, a1
                  addi       t6, a7, 188
                  c.mv       s1, s5
                  addi       t4, a6, 29
                  blt        a7, t2, 734f
                  beq        t2, s6, 732f
                  csrrc      a5, 0x340, t2
                  srl        s9, a7, s8
720:              sll        s10, sp, s7
                  csrrwi     a5, 0x340, 15
                  csrrc      s8, 0x340, t5
                  sltiu      t4, sp, -323
724:              c.addi     t5, -1
                  remu       a6, s3, sp
                  divu       s11, t5, s11
                  c.addi     s3, -1
                  remu       ra, s0, t6
                  mulhsu     s9, zero, a6
                  beq        s8, s3, 749f
                  add        s7, zero, s10
732:              or         t4, tp, a0
                  csrrc      a2, 0x340, s6
734:              sra        s5, a7, zero
                  sub        s3, s6, s11
                  sll        s8, s9, a3
                  c.srli     a5, 4
                  csrrw      s5, 0x340, s8
                  srl        t5, t5, s7
                  xor        a7, gp, a3
                  bgeu       a5, s6, 746f
                  c.srai     a5, 1
                  auipc      a4, 251256
                  sltiu      a6, s0, 553
                  c.andi     a2, -1
746:              c.xor      a1, a2
                  slti       t1, sp, 344
                  sltu       s0, s8, s8
749:              c.sub      a2, a1
                  sltiu      s5, t6, 639
                  csrrwi     s11, 0x340, 10
                  blt        t6, t6, 754f
                  xor        a2, s8, s9
754:              fence.i
                  fence.i
                  fence.i
                  lui        gp, 1040732
                  xori       a5, s3, 825
                  fence
                  slli       s2, t3, 27
                  lw         s8, 4(sp)
                  srl        t1, a2, ra
                  addi       sp, sp, 44
                  c.add      t6, a1
                  ori        a6, s1, 1019
                  mul        s10, s6, tp
1260:             c.jr x24
sub_2:            mulhu      t0, s4, s11
                  slti       s2, ra, 252
                  lui        s2, 777859
                  addi       sp, sp, -48
                  c.xor      a5, a1
                  c.or       a1, a4
                  c.srli     a5, 8
                  mulh       s10, s0, t1
                  csrrs      s0, 0x340, t2
                  sw         s8, 4(sp)
                  csrrci     a1, 0x340, 16
                  la         s10, region_1+15884 #start riscv_load_store_rand_instr_stream_1
                  sb         t1, -17(s10)
                  mulh       s11, sp, sp
                  sb         s8, 26(s10)
                  lb         a2, 30(s10)
                  sub        a7, t0, s5
                  c.andi     s1, 3
                  csrrwi     a2, 0x340, 8
                  mulhu      s0, tp, a3
                  srai       t6, s8, 3
                  auipc      a2, 1045748
                  lb         a3, -54(s10)
                  lhu        gp, 32(s10)
                  csrrwi     s0, 0x340, 0
                  nop
                  fence
                  c.add      gp, t5
                  csrrwi     s7, 0x340, 31
                  lb         s2, 45(s10)
                  slti       s5, t4, 43
                  lbu        s9, -57(s10)
                  sb         a7, 5(s10)
                  rem        a0, a0, s5
                  mulhsu     t1, t2, s6
                  sll        a1, gp, a4
                  sltu       t3, s7, sp
                  and        s0, s6, ra
                  slti       s4, s9, -528
                  c.srli     a3, 12
                  sb         s0, 29(s10)
                  lb         t6, -53(s10)
                  srl        a1, a4, t6
                  c.andi     a2, -1
                  c.srli     s1, 14
                  lb         a4, -34(s10)
                  xori       t0, a2, 422
                  sb         t6, -10(s10)
                  lb         s1, -35(s10)
                  sh         s9, -24(s10)
                  lbu        s0, 12(s10)
                  sb         s0, -51(s10)
                  srli       a3, a5, 28
                  slt        t0, a4, a0
                  lhu        t5, 10(s10)
                  srli       s11, ra, 27
                  lb         s4, 3(s10)
                  lw         s7, 28(s10)
                  c.or       a2, s1
                  sh         t0, -18(s10)
                  lbu        a1, 26(s10) #end riscv_load_store_rand_instr_stream_1
                  la         t0, region_3+41 #start riscv_load_store_rand_instr_stream_3
                  sh         s11, 133(t0)
                  sltiu      ra, sp, 287
                  srai       s11, s1, 15
                  c.add      s1, s2
                  and        a5, t4, s2
                  fence.i
                  c.andi     a2, 23
                  xor        a4, t5, s3
                  rem        zero, t1, a5
                  lbu        s9, 212(t0)
                  lw         t3, 191(t0)
                  lhu        t3, 163(t0)
                  c.nop
                  mulhu      t5, a2, s11
                  csrrwi     s10, 0x340, 13
                  lui        a3, 749492
                  ori        s7, a0, 262
                  c.li       t6, -1
                  c.or       a3, s1
                  lb         t4, 346(t0)
                  lhu        tp, 15(t0)
                  sll        a0, ra, ra
                  sub        s11, s3, s0
                  lbu        s9, 322(t0)
                  lw         s0, 331(t0)
                  c.srai     a0, 13
                  slli       ra, sp, 10
                  c.srai     a4, 18
                  divu       s3, s3, a0
                  lb         a2, -27(t0)
                  lb         s8, -24(t0)
                  sb         a0, 250(t0)
                  lb         t5, 352(t0)
                  c.srai     s0, 21
                  lhu        t1, 287(t0) #end riscv_load_store_rand_instr_stream_3
                  la         a7, region_0+2333 #start riscv_hazard_instr_stream_3
                  csrrsi     t1, 0x340, 19
                  .2byte 0x0f82 # kHintInstr
                  sra        zero, a5, s11
                  andi       s11, zero, 861
                  remu       a5, s11, a5
                  sh         zero, -775(a7)
                  auipc      t5, 69599
                  c.xor      a5, a5
                  addi       s11, s8, -28
                  c.srai     a5, 1
                  remu       t1, t5, s8
                  sll        a5, a5, t5
                  sb         t1, 1185(a7)
                  sw         s11, 847(a7)
                  xor        s11, t5, s8
                  lb         t1, 52(a7)
                  auipc      s8, 163849
                  addi       a5, a5, 914
                  c.addi     s8, 24
                  slti       s11, zero, -666
                  sb         t1, -358(a7)
                  c.add      t5, t5
                  sw         t1, -953(a7)
                  sh         zero, 515(a7)
                  c.addi     s11, -1
                  lbu        s11, -290(a7)
                  c.and      a5, a5
                  c.lui      s11, 26
                  c.and      a5, a5
                  c.lui      a5, 31
                  lbu        t1, 962(a7)
                  slti       zero, t1, 830
                  rem        a5, a5, a5
                  slti       t5, t1, 939
                  sub        zero, s8, t5
                  divu       t5, zero, t1
                  sb         t5, 1549(a7) #end riscv_hazard_instr_stream_3
                  la         t4, region_4+1755 #start load_store_instr_stream_2
                  lhu        a0, -15(t4)
                  la         s9, region_0+1911 #start load_store_instr_stream_0
                  sb         s4, -9(t4)
                  sh         a3, -5(s9)
                  la         gp, region_2+2354 #start load_store_instr_stream_1
                  lb         zero, 28(s9)
                  lbu        s10, 14(t4)
                  lb         a4, 119(gp)
                  lbu        s7, -35(gp)
                  lbu        s1, -8(t4)
                  lbu        a2, -71(gp)
                  lw         tp, -30(gp)
                  lbu        a3, 0(t4)
                  lh         a3, 51(s9)
                  sh         s2, 7(t4)
                  lb         a5, -2(t4)
                  lb         s10, 235(gp)
                  sw         s2, 70(gp)
                  sb         s10, 34(s9)
                  lb         tp, 8(t4)
                  lbu        t5, -213(gp) #end load_store_instr_stream_1
                  lhu        s11, -59(s9)
                  lbu        a6, 16(t4) #end load_store_instr_stream_2
                  lbu        s2, 28(s9) #end load_store_instr_stream_0
                  la         a3, region_4+345 #start load_store_instr_stream_4
                  la         s4, region_2+1818 #start load_store_instr_stream_3
                  lw         s9, 127(a3)
                  la         tp, region_3+414 #start load_store_instr_stream_0
                  lb         a1, 9(s4)
                  la         a0, region_1+3901 #start load_store_instr_stream_1
                  lbu        s3, 206(a3)
                  sb         zero, 156(a3)
                  la         ra, region_0+2537 #start load_store_instr_stream_2
                  sb         s8, -3(s4)
                  lb         a5, -246(tp)
                  lhu        t6, 8(s4)
                  lbu        zero, 16(s4)
                  lbu        s9, -88(a0)
                  lb         s2, -404(tp)
                  lbu        t0, 57(ra)
                  sb         s8, -39(ra)
                  sb         s10, 34(a0)
                  lh         a2, 251(a3)
                  lb         s7, -10(ra)
                  sh         a1, 111(a0)
                  lh         s3, 5(ra)
                  sh         s0, -228(tp)
                  lbu        a5, 97(a3)
                  sb         a6, 188(a0)
                  lbu        t3, 27(tp)
                  lb         t0, 29(a0)
                  lw         s9, -117(a3)
                  sw         t1, 82(tp)
                  lhu        s9, -59(a0)
                  sh         s2, -47(ra)
                  lbu        gp, -12(s4)
                  lbu        s5, 248(a0) #end load_store_instr_stream_1
                  lb         s8, -232(a3)
                  sb         s1, -9(s4) #end load_store_instr_stream_3
                  sb         s4, 2(ra)
                  lhu        s2, 49(ra)
                  sb         zero, 35(a3) #end load_store_instr_stream_4
                  lhu        s3, -13(ra) #end load_store_instr_stream_2
                  lb         t3, -11(tp) #end load_store_instr_stream_0
sub_2_7:          jal        s8, 15f
0:                jal        ra, 14f
1:                c.j        10f
2:                c.jal      18f
3:                c.jal      9f
4:                jal        a1, 3b
5:                c.jal      17f
6:                c.jal      27f
7:                jal        t1, 11f
8:                c.jal      26f
9:                c.jal      22f
10:               c.jal      2b
11:               c.j        16f
12:               jal        ra, 7b
13:               c.j        4b
14:               c.jal      6b
15:               c.jal      13b
16:               c.j        24f
17:               c.jal      12b
18:               jal        a1, 5b
19:               jal        t0, 25f
20:               c.j        0b
21:               c.jal      20b
22:               jal        ra, 23f
23:               c.j        19b
24:               c.jal      21b
25:               c.jal      8b
26:               jal        t1, 1b
27:               sub        zero, s7, s0
                  la         t1, region_2+5391 #start riscv_load_store_rand_instr_stream_0
                  srl        a1, s8, s6
                  slti       ra, tp, 631
                  lbu        s11, -775(t1)
                  lbu        s11, 1302(t1)
                  lbu        t6, -132(t1)
                  sb         a5, -4(t1)
                  sb         s5, -171(t1)
                  lhu        t6, -1017(t1)
                  lbu        a0, -1734(t1)
                  and        s9, tp, gp
                  sh         s11, -507(t1)
                  lbu        a3, 193(t1)
                  lb         a6, 1582(t1)
                  lhu        a1, 1431(t1)
                  fence.i
                  c.mv       s3, s6
                  lbu        a5, -958(t1)
                  nop
                  lb         s10, -1214(t1)
                  sb         sp, 778(t1)
                  csrrs      a5, 0x340, t2
                  lh         s7, -2015(t1)
                  sb         s2, 1316(t1)
                  addi       zero, a5, -450
                  mul        gp, a7, s7
                  divu       a7, t2, zero
                  c.or       a3, a1
                  auipc      s5, 707693
                  sh         a2, -1813(t1)
                  c.srai     s0, 13
                  mulhsu     zero, s5, a1
                  lhu        s11, -179(t1) #end riscv_load_store_rand_instr_stream_0
                  la         t5, region_3+308 #start riscv_hazard_instr_stream_0
                  c.slli     a6, 24
                  or         a6, a5, s2
                  lw         s2, 160(t5)
                  sw         t1, -44(t5)
                  slli       t1, t1, 17
                  c.nop
                  sb         a6, -45(t5)
                  c.mv       a5, a6
                  lb         a5, -25(t5)
                  sb         a6, -306(t5)
                  srli       a3, a5, 31
                  lb         s2, -231(t5)
                  lb         a7, 35(t5)
                  mul        t1, a7, a3
                  csrrc      t1, 0x340, a7
                  and        a5, a7, t1
                  csrrc      a5, 0x340, t1
                  csrrsi     a6, 0x340, 26
                  sll        a5, s2, a7
                  sb         a6, -283(t5)
                  lh         a6, -194(t5)
                  sh         t1, 12(t5)
                  addi       a5, t1, -535
                  slti       s2, a6, 18
                  sll        a3, a5, a3
                  mulhsu     s2, a6, a3
                  sll        a3, a7, a3
                  xori       t1, t1, -334
                  div        a3, a7, t1
                  csrrc      a5, 0x340, t1
                  lbu        a7, 184(t5)
                  lb         a3, -255(t5)
                  lh         a5, 142(t5)
                  sh         a7, -114(t5)
                  sb         t1, 78(t5)
                  lbu        a3, -161(t5)
                  csrrwi     a3, 0x340, 26
                  sb         a7, -295(t5)
                  sb         a6, 106(t5)
                  lbu        s2, 41(t5)
                  csrrwi     a6, 0x340, 5
                  sb         a6, 159(t5)
                  lw         s2, -24(t5)
                  or         s2, a6, a6
                  sh         a5, -272(t5)
                  lb         a3, 88(t5)
                  ori        a6, a7, 939
                  c.add      a7, s2
                  mul        t1, a7, a3
                  c.xor      a3, a5
                  sb         a3, -227(t5)
                  sltiu      a7, a5, -876
                  sb         a5, -278(t5) #end riscv_hazard_instr_stream_0
                  la         a7, region_1+13095 #start load_store_instr_stream_1
                  la         s2, region_1+12292 #start load_store_instr_stream_0
                  sh         s6, 65(a7)
                  lh         s4, 43(a7)
                  lbu        s7, -250(a7)
                  lb         s3, -9(s2)
                  la         gp, region_1+16362 #start load_store_instr_stream_2
                  lbu        s10, 138(a7)
                  lbu        t5, 106(a7)
                  sb         a2, -11(s2)
                  lb         a6, 11(gp)
                  sb         s2, -5(s2)
                  lbu        tp, -12(gp)
                  lw         zero, 97(a7)
                  sb         s5, -10(gp)
                  sb         a6, 16(s2)
                  sh         s1, -10(gp)
                  lhu        t3, 215(a7)
                  sb         s1, 216(a7)
                  lb         t1, 0(gp)
                  lw         s3, -12(s2)
                  lb         t1, 14(gp) #end load_store_instr_stream_2
                  sh         s0, -1(a7)
                  sh         s9, -87(a7) #end load_store_instr_stream_1
                  sh         s10, 10(s2) #end load_store_instr_stream_0
                  la         t3, region_4+1355 #start riscv_load_store_rand_instr_stream_4
                  lb         a6, -6(t3)
                  xor        s10, t6, a7
                  mulh       s11, ra, s5
                  lb         a7, 6(t3)
                  slt        zero, ra, s5
                  rem        tp, s7, ra
                  lb         s10, 8(t3)
                  sh         t5, 5(t3)
                  lw         t6, 5(t3)
                  sb         sp, 14(t3)
                  sra        a7, s10, t1
                  sb         s8, -14(t3)
                  c.or       a0, a2
                  mulh       t4, s4, s8
                  lb         a7, 5(t3)
                  lb         t6, 13(t3)
                  sb         t6, -16(t3)
                  mulhsu     s10, t2, s5
                  lbu        t4, 3(t3)
                  c.and      s0, a1
                  lbu        a2, 2(t3)
                  andi       zero, a5, 432
                  lb         ra, 8(t3)
                  c.xor      a3, s0
                  sh         ra, -11(t3)
                  lbu        a7, -8(t3)
                  c.lui      s0, 4
                  lb         s2, 9(t3)
                  sb         s2, 5(t3)
                  sh         t3, -13(t3)
                  lbu        gp, -3(t3) #end riscv_load_store_rand_instr_stream_4
sub_2_6:          jal        s8, 12f
0:                c.jal      15f
1:                jal        ra, 11f
2:                c.jal      18f
3:                c.j        16f
4:                c.j        10f
5:                jal        gp, 2b
6:                c.jal      21f
7:                c.jal      4b
8:                c.j        1b
9:                jal        ra, 20f
10:               c.j        24f
11:               jal        t4, 13f
12:               jal        ra, 14f
13:               c.j        19f
14:               jal        ra, 5b
15:               c.j        7b
16:               c.jal      8b
17:               c.j        22f
18:               jal        ra, 17b
19:               c.jal      9b
20:               c.j        23f
21:               jal        ra, 3b
22:               c.j        6b
23:               c.j        0b
24:               c.lui      t5, 10
                  la         s9, region_3+359 #start load_store_instr_stream_0
                  la         s1, region_0+782 #start load_store_instr_stream_1
                  sb         s2, 1853(s1)
                  sh         s6, -51(s9)
                  lbu        s7, 6(s9)
                  lb         a2, 1664(s1)
                  lh         s7, 802(s1)
                  sb         s0, -2(s9)
                  lh         a2, 798(s1)
                  lbu        s2, -18(s9)
                  lb         a4, 169(s1)
                  lhu        s11, -5(s9)
                  lhu        a2, -448(s1)
                  lbu        s10, -45(s9)
                  sb         s0, 1517(s1) #end load_store_instr_stream_1
                  sh         a4, 31(s9) #end load_store_instr_stream_0
                  addi       t3, zero, 9 #init loop 0 counter
                  c.and      a2, a2
                  addi       s10, zero, 6 #init loop 0 limit
sub_2_23_0_t:     c.or       s1, s1
                  lui        ra, 343954
                  addi       t3, t3, -1 #update loop 0 counter
                  srli       a1, a0, 11
                  bgeu       t3, s10, sub_2_23_0_t #branch for loop 0
                  srl        t1, t0, a5
                  la         tp, region_0+2867 #start riscv_load_store_rand_instr_stream_2
                  csrrc      a2, 0x340, s3
                  fence.i
                  srl        t3, t5, a5
                  lbu        a2, 154(tp)
                  mul        t0, s9, a6
                  c.srli     s0, 8
                  csrrci     a5, 0x340, 14
                  lhu        zero, -53(tp)
                  lbu        a3, -85(tp)
                  mulh       a1, a6, s10
                  lbu        a2, 211(tp)
                  c.addi     a4, 18
                  lbu        s2, 104(tp)
                  sh         a2, 199(tp)
                  sb         s0, -185(tp)
                  c.li       s8, 27
                  lb         a0, -221(tp)
                  c.slli     s8, 22
                  lb         a4, 17(tp)
                  mulh       s3, a6, s7
                  sltiu      a3, s6, -561
                  sb         s3, -245(tp)
                  c.li       t0, -1
                  lb         s0, 121(tp)
                  .2byte 0x505d # kHintInstr
                  fence
                  lh         ra, 225(tp) #end riscv_load_store_rand_instr_stream_2
sub_2_8:          jal        s8, 16f
0:                c.j        9f
1:                c.jal      2f
2:                c.jal      4f
3:                jal        t1, 7f
4:                jal        ra, 10f
5:                jal        a6, 13f
6:                c.jal      8f
7:                c.j        20f
8:                c.jal      12f
9:                c.j        19f
10:               c.jal      11f
11:               c.jal      6b
12:               c.jal      3b
13:               jal        ra, 17f
14:               c.j        1b
15:               c.j        0b
16:               jal        ra, 5b
17:               jal        t1, 15b
18:               c.j        14b
19:               c.jal      18b
20:               jal        t1, 21f
21:               csrrw      a7, 0x340, s11
                  la         s5, region_1+9464 #start riscv_hazard_instr_stream_4
                  lbu        a2, 3(s5)
                  lbu        a0, 235(s5)
                  mul        a3, s2, s2
                  c.or       a3, a2
                  sw         a2, 68(s5)
                  lw         gp, -36(s5)
                  lb         a2, -215(s5)
                  sb         a3, -157(s5)
                  andi       gp, a0, 440
                  sh         a1, 110(s5)
                  rem        gp, a3, a1
                  sw         a3, 104(s5)
                  lhu        gp, -192(s5)
                  lb         gp, 239(s5)
                  c.xor      a0, a1
                  mulhsu     s2, a3, s2
                  add        a0, gp, s2
                  c.lui      a0, 8
                  lui        a2, 362621
                  srli       a1, gp, 17
                  lb         s2, -237(s5)
                  c.lui      gp, 25
                  lb         a2, 59(s5)
                  lb         a2, 73(s5) #end riscv_hazard_instr_stream_4
                  addi       t3, zero, -7 #init loop 1 counter
                  c.andi     a2, -1
                  xor        t0, a5, s1
                  csrrw      t4, 0x340, t5
                  addi       s5, zero, -20 #init loop 1 limit
                  slli       s1, s8, 6
sub_2_20_1_t:     nop
                  csrrsi     s8, 0x340, 7
                  addi       t3, t3, -4 #update loop 1 counter
                  divu       t5, ra, s10
                  addi       s0, zero, -10 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
sub_2_20_0_t:     mulhsu     a2, s3, s9
                  mulhu      s1, s7, a6
                  addi       s0, s0, 2 #update loop 0 counter
                  nop
                  c.beqz     s0, sub_2_20_0_t #branch for loop 0
                  fence.i
                  c.li       t5, -1
                  csrrsi     s1, 0x340, 28
                  c.andi     a2, -1
                  bge        t3, s5, sub_2_20_1_t #branch for loop 1
                  csrrci     t4, 0x340, 23
                  la         t3, region_0+2781 #start load_store_instr_stream_1
                  la         tp, region_0+1478 #start load_store_instr_stream_2
                  la         ra, region_0+2441 #start load_store_instr_stream_0
                  lb         s5, 169(tp)
                  lb         a3, -56(ra)
                  .2byte 0x0202 # kHintInstr
                  sb         s9, -173(t3)
                  sb         t5, 54(ra)
                  lb         t6, -101(tp)
                  sb         a2, 134(t3)
                  sb         t5, 4(ra)
                  sh         s3, -251(t3)
                  lb         s0, -22(ra)
                  sb         a1, -53(ra)
                  lbu        s4, -58(ra)
                  sh         t1, 14(tp)
                  sb         s7, -42(ra)
                  sb         s5, -65(tp)
                  lb         a2, -149(tp) #end load_store_instr_stream_2
                  lbu        zero, -94(t3)
                  lb         s7, 10(ra)
                  sb         s3, -198(t3) #end load_store_instr_stream_1
                  lb         s9, 34(ra) #end load_store_instr_stream_0
                  la         t5, region_0+475 #start load_store_instr_stream_2
                  la         tp, region_0+1195 #start load_store_instr_stream_3
                  la         a5, region_0+1532 #start load_store_instr_stream_1
                  lh         t1, -13(t5)
                  sb         a4, 194(tp)
                  lbu        a1, 5(a5)
                  lhu        ra, 63(tp)
                  lbu        s2, -31(tp)
                  lbu        a2, -14(t5)
                  sh         sp, 3(t5)
                  lbu        s10, -14(tp)
                  la         t6, region_0+2394 #start load_store_instr_stream_0
                  sb         sp, -106(tp)
                  lbu        s5, -10(t5)
                  lh         a1, -12(a5)
                  lbu        s5, 190(tp)
                  sh         a6, 67(tp)
                  lw         ra, 986(t6)
                  lb         s2, -3(t5)
                  lbu        s0, 11(a5)
                  lb         ra, -14(a5)
                  sb         s10, -9(a5)
                  sh         s0, 125(tp)
                  lbu        s4, 12(t5)
                  lbu        gp, -2(t5)
                  lbu        a0, 46(t6)
                  sb         sp, 100(tp) #end load_store_instr_stream_3
                  lbu        t3, -1052(t6)
                  lb         t4, -16(t5)
                  lbu        s3, 16(a5)
                  lb         s3, 153(t6)
                  lb         t0, 6(a5)
                  sb         t2, 540(t6)
                  lb         ra, -7(a5) #end load_store_instr_stream_1
                  lb         a2, 6(t5) #end load_store_instr_stream_2
                  lbu        s4, 1472(t6) #end load_store_instr_stream_0
                  la         s9, region_2+4823 #start load_store_instr_stream_1
                  la         s5, region_2+1929 #start load_store_instr_stream_0
                  lhu        a3, 223(s9)
                  lb         t3, -1650(s9)
                  sb         s8, 184(s9)
                  lbu        a5, 4(s5)
                  lh         a1, 2031(s9)
                  sb         s5, 14(s5)
                  lb         gp, -134(s9)
                  lhu        a6, -13(s5)
                  sb         a2, 655(s9)
                  lb         s2, 585(s9)
                  sw         s0, -9(s5)
                  lhu        t4, -5(s5)
                  lb         t6, 15(s5)
                  lbu        s4, 1966(s9) #end load_store_instr_stream_1
                  sh         s11, -11(s5) #end load_store_instr_stream_0
                  la         a1, region_1+15976 #start load_store_instr_stream_1
                  sb         sp, -273(a1)
                  lb         a7, -1821(a1)
                  lb         s5, -999(a1)
                  la         t3, region_1+2172 #start load_store_instr_stream_0
                  lbu        t5, -1045(a1)
                  lbu        a6, -877(t3)
                  lbu        a7, 1153(t3)
                  lb         t5, -1592(a1)
                  lb         a2, -1260(t3)
                  lb         gp, -1862(a1)
                  lb         a7, 1951(t3)
                  sb         t3, -1076(t3)
                  lbu        a0, -473(a1)
                  lh         a6, -482(a1)
                  sh         s0, -1752(a1) #end load_store_instr_stream_1
                  lb         a3, -1975(t3) #end load_store_instr_stream_0
                  la         t5, region_4+992 #start load_store_instr_stream_1
                  la         a3, region_1+13736 #start load_store_instr_stream_3
                  lb         s7, -14(t5)
                  sb         s3, -10(t5)
                  lb         s8, -104(a3)
                  la         a7, region_2+4548 #start load_store_instr_stream_2
                  lh         a2, 14(t5)
                  la         s1, region_0+3909 #start load_store_instr_stream_0
                  lb         s5, 187(a3)
                  lbu        a0, 15(t5)
                  lhu        tp, -164(a7)
                  sb         sp, 3(a3)
                  lhu        a0, 86(a3)
                  lbu        s9, -138(s1)
                  lb         s3, -107(a3) #end load_store_instr_stream_3
                  sb         a5, 1591(a7)
                  lhu        t3, 1890(a7)
                  lb         s10, -1398(a7)
                  sb         s9, -9(t5)
                  lh         s3, -360(a7)
                  lb         a4, -178(s1)
                  lhu        a2, -5(s1)
                  sb         s3, -343(a7) #end load_store_instr_stream_2
                  lbu        s8, 16(t5)
                  sb         a6, 32(s1)
                  sw         a7, 4(t5)
                  lb         a5, -7(t5) #end load_store_instr_stream_1
                  lh         a5, 175(s1)
                  lb         ra, 46(s1) #end load_store_instr_stream_0
                  la         s9, region_3+247 #start load_store_instr_stream_0
                  la         s0, region_1+11240 #start load_store_instr_stream_1
                  sb         t2, 6(s9)
                  sh         tp, 6(s0)
                  lh         a4, 12(s0)
                  lhu        s2, -2(s0)
                  lb         t6, -16(s0)
                  lhu        s4, 27(s9)
                  lw         a2, -19(s9)
                  sb         s3, -5(s0)
                  lb         a1, 26(s9)
                  sb         a5, 38(s9)
                  lbu        s4, -56(s9)
                  lh         ra, -10(s0)
                  sh         ra, -31(s9)
                  sh         zero, -14(s0) #end load_store_instr_stream_1
                  lbu        a2, 14(s9) #end load_store_instr_stream_0
sub_2_9:          jal        s8, 4f
0:                c.jal      2f
1:                c.j        8f
2:                jal        tp, 28f
3:                c.j        9f
4:                c.jal      19f
5:                jal        ra, 11f
6:                jal        ra, 7f
7:                c.jal      29f
8:                jal        ra, 26f
9:                c.jal      12f
10:               c.jal      16f
11:               c.jal      3b
12:               jal        t0, 20f
13:               c.jal      25f
14:               jal        t1, 10b
15:               c.jal      22f
16:               c.j        6b
17:               jal        t5, 23f
18:               c.jal      15b
19:               c.j        18b
20:               jal        t5, 21f
21:               jal        ra, 27f
22:               c.j        24f
23:               c.jal      0b
24:               c.jal      17b
25:               c.j        5b
26:               c.jal      13b
27:               c.jal      14b
28:               jal        s3, 1b
29:               addi       t1, gp, -464
                  la         tp, region_3+363 #start riscv_hazard_instr_stream_1
                  sh         s0, -99(tp)
                  c.srai     s0, 11
                  slli       a4, t6, 18
                  csrrc      t1, 0x340, s0
                  lb         a4, -174(tp)
                  sb         a7, 72(tp)
                  c.and      a4, s0
                  lh         s0, 79(tp)
                  lbu        s0, 108(tp)
                  lb         s0, -80(tp)
                  csrrc      t6, 0x340, t6
                  xor        t6, t6, t6
                  sw         zero, -211(tp)
                  slt        s0, t6, a4
                  sw         t6, -19(tp)
                  c.or       s0, s0
                  lh         a4, -169(tp)
                  lb         a7, -51(tp)
                  lb         t6, 96(tp)
                  lbu        t6, 54(tp)
                  lb         a7, 68(tp)
                  lhu        t1, -75(tp)
                  sb         a4, -29(tp)
                  lbu        s0, -26(tp)
                  lb         a7, -128(tp)
                  lb         s0, -204(tp)
                  lbu        t6, -102(tp)
                  lbu        a7, -199(tp)
                  c.li       s0, 24
                  sra        t1, zero, a4
                  lbu        a7, -14(tp) #end riscv_hazard_instr_stream_1
                  addi       s9, zero, 9 #init loop 0 counter
                  sll        t4, s9, s3
                  addi       gp, zero, 9 #init loop 0 limit
                  sra        s10, ra, t2
sub_2_21_0_t:     and        a3, s4, a4
                  addi       s9, s9, -8 #update loop 0 counter
                  bgeu       s9, gp, sub_2_21_0_t #branch for loop 0
                  csrrwi     a3, 0x340, 21
                  nop
                  bne        s7, a3, 10f
                  rem        a3, s0, zero
                  slt        zero, t6, s8
                  srai       t4, zero, 7
                  xori       a0, s9, -537
                  sub        s7, s8, t2
                  c.beqz     s0, 27f
                  srai       s5, s0, 17
                  blt        t2, sp, 11f
10:               csrrsi     a3, 0x340, 15
11:               csrrsi     a6, 0x340, 22
                  blt        t1, t5, 26f
                  csrrsi     s11, 0x340, 31
                  lui        s4, 464380
                  c.slli     t6, 28
                  bltu       s7, a4, 21f
                  mulhu      a4, s9, s4
                  mulhsu     s9, zero, s10
                  bge        s8, a1, 31f
                  csrrsi     s9, 0x340, 24
21:               mul        t5, s2, s0
                  auipc      a0, 320984
                  mulhsu     ra, s4, a3
                  auipc      a2, 665933
                  c.mv       a6, s2
26:               divu       a1, t1, a3
27:               c.add      a3, gp
                  bge        s4, t2, 34f
                  mul        gp, s1, t1
                  andi       t1, t3, 422
31:               csrrsi     a6, 0x340, 11
                  csrrwi     t0, 0x340, 5
                  c.xor      a2, a4
34:               nop
                  remu       s5, s2, s8
                  lui        s1, 686601
                  addi       a1, a3, 339
                  csrrci     s11, 0x340, 25
                  c.slli     s0, 8
                  bgeu       s0, zero, 55f
                  c.nop
                  slli       tp, ra, 28
                  blt        t1, zero, 46f
                  csrrs      zero, 0x340, sp
                  sltu       s2, sp, s4
46:               c.mv       t5, a7
                  ori        tp, a3, -346
                  and        gp, t3, s4
                  bgeu       s5, a7, 67f
                  c.addi     a7, -1
                  mulhu      s2, a4, a1
                  bltu       s5, sp, 65f
                  c.nop
                  bge        a1, a7, 62f
55:               bgeu       a0, s6, 70f
                  fence.i
                  ori        t1, a5, -134
                  auipc      s0, 283793
                  c.andi     a4, 1
                  nop
                  sra        s2, t5, t0
62:               csrrsi     a5, 0x340, 19
                  slli       tp, s5, 20
                  xori       ra, a2, -814
65:               csrrwi     a4, 0x340, 14
                  c.beqz     a0, 74f
67:               c.beqz     a2, 69f
                  c.xor      a0, a0
69:               csrrsi     a2, 0x340, 17
70:               c.andi     a5, -1
                  div        a5, s9, s1
                  addi       a3, s5, -692
                  bge        a2, s2, 93f
74:               c.add      gp, s0
                  c.lui      a2, 18
                  bne        a2, t0, 78f
                  c.srai     a4, 28
78:               srai       a5, a7, 22
                  c.and      a5, a0
                  c.mv       s10, s10
                  rem        t1, t2, s3
                  c.or       a4, a5
                  c.sub      s1, a4
                  c.and      a2, a3
                  or         s7, t5, a4
                  csrrs      t3, 0x340, t3
                  srai       t1, tp, 7
                  mul        tp, s7, a7
                  lui        s4, 537368
                  c.mv       a3, t2
                  c.and      a3, s1
                  bgeu       t5, a1, 108f
93:               c.srli     a1, 15
                  fence
                  c.lui      t4, 9
                  fence
                  nop
                  csrrs      a5, 0x340, t0
                  rem        a1, s11, t4
                  or         s5, s11, t5
                  c.slli     s4, 29
                  c.mv       s8, a0
                  xori       a6, s11, 61
                  lui        a4, 165307
                  csrrsi     zero, 0x340, 17
                  c.sub      a1, a4
                  c.xor      a5, a0
108:              and        s1, s2, ra
                  mul        gp, a5, t3
                  nop
                  sltu       t0, a4, t4
                  c.beqz     a1, 125f
                  bne        a3, a1, 120f
                  add        t5, t3, s0
                  csrrsi     a5, 0x340, 24
                  bge        t5, gp, 127f
                  mul        a6, a7, s0
                  c.mv       s4, s7
                  srai       s5, s6, 1
120:              slt        s5, s6, s10
                  addi       t0, zero, 5 #init loop 1 counter
                  mulhsu     s5, s9, a0
                  c.lui      s7, 4
                  add        t6, s2, s8
                  c.slli     s2, 22
                  addi       t1, zero, 5 #init loop 1 limit
                  div        s8, s0, s7
                  c.nop
sub_2_22_1_t:     c.nop
                  c.addi     s8, 5
                  srl        s8, a6, a4
                  addi       t0, t0, -4 #update loop 1 counter
                  addi       t3, zero, 4 #init loop 0 counter
                  mul        s10, s8, t2
                  srl        a0, s8, tp
                  addi       s11, zero, 7 #init loop 0 limit
                  slt        t5, gp, t3
sub_2_22_0_t:     c.mv       a3, a5
                  add        zero, a3, a5
                  addi       t3, t3, 7 #update loop 0 counter
                  c.sub      s1, a2
                  divu       s7, sp, ra
                  blt        t3, s11, sub_2_22_0_t #branch for loop 0
                  .2byte 0x7045 # kHintInstr
                  rem        s9, s4, a1
                  addi       gp, a3, -132
                  fence
                  c.xor      a0, s0
                  mulh       a4, s1, s4
                  bgeu       t0, t1, sub_2_22_1_t #branch for loop 1
                  csrrci     s0, 0x340, 7
                  addi       a6, a0, 979
                  divu       a5, sp, t1
                  beq        s0, a7, 143f
                  c.and      s1, a4
125:              sra        a1, s3, t1
                  c.nop
127:              csrrc      t5, 0x340, t5
                  bne        s6, ra, 137f
                  and        t6, s4, s1
                  beq        a7, a7, 141f
                  c.lui      s11, 6
                  xori       t1, a2, 170
                  c.srli     a2, 10
                  fence.i
                  c.and      a3, s1
                  c.xor      a5, a4
137:              sra        a6, a4, t5
                  slt        s10, tp, s3
                  c.or       a3, a3
                  auipc      a1, 157509
141:              slti       a6, t3, -94
                  c.sub      a3, s1
sub_2_5:          jal        s8, 8f
0:                c.j        3f
1:                jal        ra, 9f
2:                c.jal      16f
3:                jal        tp, 12f
4:                jal        s1, 10f
5:                c.jal      15f
6:                jal        ra, 7f
7:                jal        ra, 2b
8:                c.j        14f
9:                c.jal      4b
10:               c.jal      13f
11:               jal        ra, 0b
12:               c.j        5b
13:               c.jal      6b
14:               jal        a1, 11b
15:               jal        ra, 1b
16:               c.srli     a3, 3
143:              c.lui      tp, 10
                  ori        s7, t4, -633
                  c.mv       s5, t0
                  srli       t5, gp, 7
                  sra        zero, gp, s3
                  or         s1, t1, t6
                  csrrwi     s10, 0x340, 16
                  c.nop
                  csrrs      s8, 0x340, a1
                  mulh       s8, ra, ra
                  sltu       a5, t4, t5
                  mulhu      tp, s2, s1
                  rem        tp, t6, a0
                  mulhu      a0, s8, a4
                  c.add      gp, s9
                  c.sub      a2, a4
                  mulhu      a2, t0, a1
                  sub        a5, t1, s11
                  bne        a3, a5, 178f
                  c.mv       t4, t3
                  srli       s10, s9, 25
                  c.or       a5, a0
                  csrrw      a4, 0x340, s10
                  sltiu      t3, t0, -710
                  slti       a1, a4, 698
                  sra        s2, a1, t3
                  bge        s11, s11, 173f
                  c.srai     a1, 4
                  c.xor      s1, a1
                  c.bnez     a4, 179f
173:              c.li       s10, 9
                  fence.i
                  c.sub      a4, a1
                  c.bnez     s1, 185f
                  slti       a7, a3, 1020
178:              sltiu      a5, sp, 574
179:              fence
                  c.xor      a3, a3
                  sltiu      s11, s7, 891
                  c.beqz     a4, 197f
                  add        ra, s6, s9
                  c.srli     s1, 15
185:              c.bnez     s0, 194f
                  slli       s3, t0, 29
                  srai       t0, t5, 3
                  csrrs      a3, 0x340, a0
                  ori        a3, s0, 760
                  mul        s11, s7, zero
                  addi       s9, zero, 952
                  blt        s6, t0, 194f
                  fence
194:              c.srai     a5, 3
                  c.mv       s0, ra
                  c.mv       s9, a2
197:              bgeu       ra, zero, 217f
                  c.mv       s10, s11
                  sll        t1, s4, a1
                  auipc      s4, 303071
                  or         a1, t5, a5
                  csrrw      a0, 0x340, a6
                  mulhu      t0, t5, s7
                  c.slli     t1, 4
                  srai       a6, s11, 16
                  srai       t6, ra, 28
                  blt        a1, gp, 227f
                  beq        s1, t3, 217f
                  slti       s4, a2, 243
                  srai       t6, s0, 23
                  c.xor      a3, s0
                  mulh       gp, t2, t3
                  lui        t6, 859063
                  slli       a7, t5, 28
                  sub        s5, t4, t2
                  c.sub      a2, s0
217:              c.xor      s0, a1
                  srai       s8, s4, 14
                  mulhu      t6, t6, t1
                  c.and      a2, a3
                  rem        a5, gp, a5
                  c.srli     a2, 11
                  sltu       t0, zero, zero
                  or         a6, t6, s10
                  c.and      a2, s1
                  mul        t4, sp, s1
227:              remu       s1, a3, a1
                  c.srai     a1, 1
                  c.or       a0, a3
                  csrrs      s2, 0x340, t4
                  lui        s4, 594706
                  bgeu       s4, a2, 234f
                  bne        a6, t0, 248f
234:              divu       t5, s5, ra
                  blt        a3, t5, 238f
                  auipc      a3, 735841
                  c.slli     s11, 28
238:              csrrci     t4, 0x340, 20
                  c.slli     s7, 7
                  sra        s4, s2, ra
                  sll        a1, sp, s6
                  div        s1, a2, s0
                  csrrci     a0, 0x340, 23
                  csrrs      a4, 0x340, s1
                  c.sub      s0, a1
                  bne        s6, s3, 250f
                  c.andi     a5, 28
248:              sra        s0, s6, a4
                  c.li       s4, -1
250:              c.and      a4, s0
                  c.or       a1, a1
                  rem        s1, t3, gp
                  sltiu      t3, s7, -13
                  sll        t3, a4, s7
                  mul        s8, a2, t5
                  srli       zero, s2, 1
                  blt        gp, s5, 277f
                  bge        a3, s11, 271f
                  csrrwi     s2, 0x340, 24
                  slli       t0, s1, 30
                  fence.i
                  slti       t4, s0, 466
                  bne        a2, s10, 279f
                  andi       t4, t4, -340
                  c.sub      s0, a2
                  xor        s9, s9, s2
                  xori       t6, a0, 448
                  srli       t0, a7, 19
                  c.and      a3, s1
                  csrrci     s3, 0x340, 18
271:              c.slli     s9, 24
                  csrrci     s8, 0x340, 1
                  sra        t5, t4, a1
                  c.lui      s10, 18
                  bne        s9, t2, 282f
                  ori        s0, s0, -218
277:              sltiu      s10, t5, -445
                  c.li       a0, -1
279:              divu       s2, t2, s10
                  ori        a3, a3, 875
                  csrrci     s4, 0x340, 7
282:              andi       s2, ra, -749
                  nop
                  c.srli     a4, 13
                  remu       s3, s9, t3
                  c.addi     a6, 19
                  lui        s0, 205015
                  divu       a6, a0, a7
                  slti       tp, s7, 312
                  and        a5, s7, s7
                  xori       s0, s10, 409
                  bge        t4, a4, 307f
                  xor        a3, t2, a6
                  csrrs      t0, 0x340, s9
                  rem        a6, sp, tp
                  c.lui      s9, 23
                  c.and      s1, a1
                  c.sub      a5, s1
                  sll        s1, a6, zero
                  srl        s3, s6, tp
                  mulh       s3, t3, sp
                  beq        s6, a2, 311f
                  rem        gp, s7, a2
                  andi       s5, s10, 278
                  beq        s3, a3, 307f
                  c.add      s9, s1
307:              beq        zero, s5, 319f
                  csrrc      a6, 0x340, s9
                  rem        s2, s4, sp
                  beq        a6, a4, 324f
311:              csrrc      zero, 0x340, a7
                  ori        s4, a6, -666
                  divu       s7, s7, t1
                  mul        t3, a7, a6
                  csrrw      s11, 0x340, a0
                  csrrw      s1, 0x340, tp
                  mul        s4, t5, t1
                  sltu       a5, zero, zero
319:              fence.i
                  c.srli     a3, 20
                  remu       a7, gp, s1
                  blt        a5, a4, 329f
                  slt        s5, s2, s3
324:              sra        s7, t4, t1
                  mul        t5, s10, t1
                  c.li       s11, 16
                  csrrs      s8, 0x340, t5
                  mulh       gp, a4, s11
329:              srli       s1, s5, 30
                  slt        t6, s10, s11
                  slli       s1, s7, 1
                  srai       gp, ra, 22
                  rem        a0, t6, t2
                  csrrs      t3, 0x340, a7
                  addi       s1, a0, 924
                  xori       s8, sp, -892
                  c.bnez     a0, 355f
                  bgeu       t2, a7, 347f
                  mulhu      t5, s3, s6
                  bge        a4, sp, 351f
                  mulh       s5, s8, t6
                  auipc      s4, 799972
                  csrrc      s7, 0x340, s3
                  slt        zero, s5, s8
                  c.addi     tp, 20
                  c.nop
347:              slt        s9, ra, s4
                  c.mv       a3, a1
                  div        t0, t1, s8
                  add        t3, a4, a6
351:              csrrc      ra, 0x340, s5
                  sltiu      a7, a5, 913
                  sra        s11, s4, a6
                  c.slli     s10, 11
355:              lui        s8, 492462
                  lui        a6, 870405
                  c.sub      a0, a1
                  bgeu       s6, sp, 375f
                  or         a7, s10, a6
                  csrrwi     s3, 0x340, 14
                  bgeu       ra, sp, 369f
                  remu       s5, sp, t2
                  csrrci     s4, 0x340, 11
                  c.add      a3, t5
                  c.and      a4, a0
                  xor        s5, s1, a2
                  ori        t1, s6, 1007
                  div        a0, t5, s2
369:              divu       tp, t3, a1
                  auipc      ra, 679359
                  ori        t4, a6, 604
                  or         tp, t0, a4
                  c.lui      ra, 23
                  csrrwi     a6, 0x340, 26
375:              bgeu       s2, s9, 383f
                  sltu       a7, a7, t3
                  mulhu      t5, a1, t4
                  bge        ra, s0, 389f
                  sra        tp, t1, a5
                  c.nop
                  slt        a1, t2, s3
                  c.or       s0, s1
383:              c.add      s10, s1
                  bltu       a2, s8, 397f
                  xori       gp, s9, -899
                  nop
                  mulhu      s10, a6, a6
                  .2byte 0x0b82 # kHintInstr
                  remu       t3, t5, a2
389:              sll        t0, t0, s1
                  c.mv       s7, a3
                  rem        s10, t0, a2
                  sll        a7, a3, t2
                  c.beqz     a4, 402f
                  sra        tp, zero, gp
                  c.nop
                  sltu       s1, s1, t6
                  c.and      a5, s1
                  c.srli     a2, 22
                  srai       tp, t6, 6
                  c.lui      s8, 1
                  beq        t5, t4, j_sub_2_sub_3_3 #branch to jump instr
                  add        s4, s7, a7
                  c.slli     s5, 24
                  slli       s8, a6, 11
                  c.li       t1, -1
                  slti       s5, s7, 679
j_sub_2_sub_3_3:  jal        s8, sub_3
397:              bge        s10, a3, 412f
                  bgeu       a5, gp, 404f
                  slli       a2, s10, 26
                  csrrw      a7, 0x340, a7
                  divu       t6, a5, s10
402:              ori        s7, ra, 100
                  csrrwi     s4, 0x340, 26
404:              beq        a5, ra, 409f
                  c.beqz     a2, 407f
                  csrrsi     t1, 0x340, 31
407:              srl        a7, s8, s10
                  csrrw      a5, 0x340, t4
409:              mulhu      s10, a5, a7
                  auipc      s8, 623554
                  bge        t5, s9, 422f
412:              sll        t4, s9, zero
                  bge        t6, t0, 415f
                  bge        gp, a5, 434f
415:              csrrci     zero, 0x340, 7
                  slti       a1, s0, 754
                  remu       a0, sp, s1
                  c.bnez     s1, 423f
                  c.beqz     a2, 427f
                  ori        t5, s3, -890
                  srl        s8, sp, s0
422:              c.or       a4, a0
423:              bge        tp, a6, 432f
                  mulhu      t3, s8, s3
                  csrrsi     s5, 0x340, 14
                  rem        a5, a4, s9
427:              csrrsi     a6, 0x340, 22
                  csrrci     t3, 0x340, 7
                  mulhsu     zero, s10, a5
                  bge        zero, a7, 443f
                  c.li       t3, -1
432:              ori        s9, s11, -902
                  and        s9, t6, a6
434:              c.or       a2, a3
                  blt        a6, a2, 438f
                  sub        a5, s3, a7
                  srli       t3, tp, 16
438:              slli       t5, s6, 0
                  srl        t3, t3, a4
                  beq        t1, s6, 442f
                  xor        s1, s3, t0
442:              c.and      a3, s0
443:              ori        s3, a6, 867
                  addi       a5, a3, -704
                  bgeu       t1, t3, 453f
                  c.beqz     a0, 461f
                  c.and      a2, s0
                  c.beqz     a2, 457f
                  c.sub      s1, s1
                  slt        a0, s3, s3
                  xori       a5, t0, -506
                  c.addi     t3, 24
453:              slli       gp, a1, 20
                  csrrsi     s9, 0x340, 10
                  sll        t6, gp, sp
                  csrrsi     s11, 0x340, 5
457:              c.add      s5, a6
                  c.mv       a2, a5
                  blt        a2, s0, 466f
                  sltu       s9, ra, s3
461:              csrrwi     t6, 0x340, 13
                  lui        s10, 618831
                  blt        tp, a7, 474f
                  c.bnez     s1, 477f
                  add        zero, s6, t6
466:              sltu       a3, a7, t3
                  c.xor      a5, a0
                  c.addi     a1, 4
                  c.add      s3, s9
                  sltiu      t5, s1, 252
                  slti       t4, s8, 816
                  c.li       t3, 12
                  sltu       t5, t0, sp
474:              mulhsu     t5, s4, t6
                  c.mv       t4, t6
                  csrrw      s2, 0x340, a1
477:              fence
                  csrrsi     zero, 0x340, 18
                  add        a6, s5, a4
                  c.sub      a5, s0
                  bge        zero, a1, 501f
                  c.bnez     a0, 486f
                  mulh       s4, s1, t0
                  bne        s5, t4, 502f
                  fence
486:              c.beqz     a1, 495f
                  xor        a1, s7, s4
                  c.andi     a1, 24
                  c.lui      s9, 20
                  csrrci     a6, 0x340, 10
                  csrrs      s3, 0x340, a5
                  ori        s7, a1, 390
                  divu       s3, s2, a5
                  rem        a5, a5, t0
495:              csrrci     a4, 0x340, 31
                  srl        t1, a4, a6
                  c.slli     a6, 26
                  xor        s1, t0, s1
                  xori       s7, s3, 339
                  bltu       t1, s4, 507f
501:              rem        t3, ra, a6
502:              c.nop
                  c.add      a0, sp
                  xor        a5, s10, t2
                  sltu       t3, zero, t5
                  srl        t6, a0, t3
507:              c.or       a2, a0
                  andi       t0, t4, 469
                  andi       s4, t4, 984
                  blt        a4, a6, 530f
                  mulhsu     s7, s1, t6
                  sra        a7, t5, t0
                  andi       s11, gp, -423
                  csrrwi     s7, 0x340, 16
                  c.sub      a3, s1
                  c.nop
                  c.srai     a5, 17
                  c.andi     s1, 27
                  csrrs      s11, 0x340, s7
                  csrrw      a0, 0x340, zero
                  xori       t6, t5, -380
                  c.li       gp, 29
                  c.nop
                  c.srai     a0, 11
                  beq        ra, a0, 542f
                  c.add      t1, s2
                  srli       s2, t1, 25
                  sra        a0, t0, t2
                  andi       a0, s7, -421
530:              bge        s10, a6, 542f
                  and        s4, a0, s8
                  xor        s8, s2, s5
                  auipc      t5, 53450
                  slti       gp, t6, -915
                  srl        a3, s1, s1
                  bltu       zero, t5, 551f
                  remu       s2, a5, t4
                  bgeu       s7, tp, 552f
                  divu       a6, t2, t3
                  csrrs      a7, 0x340, ra
                  fence
542:              sll        s2, ra, s2
                  c.beqz     s1, 559f
                  add        s0, s6, sp
                  srli       s4, gp, 21
                  bgeu       zero, a2, 552f
                  xor        s11, a0, a7
                  blt        s0, tp, 563f
                  c.srli     s0, 20
                  c.nop
551:              mulhsu     s11, a5, a3
552:              c.add      s4, a2
                  divu       t5, t5, s7
                  sub        t0, a3, t4
                  andi       s10, a1, -292
                  mulh       t1, a6, gp
                  sub        t0, s11, gp
                  csrrs      t1, 0x340, s0
559:              mulhsu     s2, s6, s5
                  c.li       s3, -1
                  sll        gp, t0, zero
                  lui        s2, 681388
563:              mulh       s11, t1, zero
                  slli       a4, s8, 12
                  bgeu       s11, t2, 574f
                  add        s7, a4, a3
                  fence.i
                  mulhsu     zero, a3, s6
                  slt        s2, t4, s7
                  auipc      a3, 269822
                  c.or       a0, a1
                  bne        s10, a3, 586f
                  addi       tp, s9, 759
574:              auipc      t1, 485727
                  slti       s8, t6, 938
                  andi       s3, s4, -249
                  sltiu      t0, s3, 967
                  c.srai     a2, 10
                  nop
                  csrrsi     s10, 0x340, 20
                  slt        t6, t3, a3
                  mulh       s10, t0, a4
                  fence
                  xor        a3, a4, t4
                  c.add      ra, t2
586:              slt        s1, ra, gp
                  divu       s11, t5, a7
                  srli       t6, s9, 20
                  remu       tp, a6, t0
                  c.xor      a0, a4
                  csrrw      a4, 0x340, sp
                  c.addi     a7, 27
                  xori       t1, t6, 997
                  c.bnez     a1, 603f
                  slli       a0, a1, 0
                  srai       a4, s4, 26
                  csrrwi     a2, 0x340, 5
                  sra        a1, s8, a3
                  sltu       a1, s8, t4
                  c.beqz     a2, 607f
                  andi       s7, t3, 646
                  c.nop
603:              c.beqz     a1, 618f
                  c.srli     a1, 1
                  slt        ra, s1, t4
                  slli       s9, s5, 4
607:              csrrw      s3, 0x340, tp
                  bltu       s2, s5, 625f
                  ori        t1, s6, -954
                  c.srai     a4, 27
                  div        ra, a2, t4
                  bgeu       s6, tp, 632f
                  mul        s5, a6, s3
                  xori       a3, s5, 889
                  c.addi     s4, -1
                  sltu       s1, sp, s4
                  srai       s1, a4, 24
618:              ori        s7, zero, 728
                  rem        s4, t5, t0
                  sltu       a4, s5, s9
                  sltiu      s10, ra, -349
                  csrrwi     ra, 0x340, 22
                  blt        s5, s1, 630f
                  c.bnez     a3, 633f
625:              nop
                  rem        s9, tp, s4
                  mul        ra, s2, tp
                  remu       s5, sp, a1
                  add        s4, t2, s3
630:              sltu       s10, tp, t4
                  mulh       a2, s8, a2
632:              csrrs      ra, 0x340, t3
633:              csrrw      a3, 0x340, s9
                  auipc      s3, 811780
                  blt        a3, s5, 643f
                  mulh       t4, s5, s5
                  fence.i
                  mulh       a5, tp, a3
                  bltu       s11, t4, 659f
                  remu       a7, t2, a5
                  c.lui      a6, 9
                  bltu       s5, s4, 651f
643:              c.lui      s9, 25
                  remu       a4, zero, t1
                  add        t1, ra, a1
                  c.srai     a2, 19
                  c.or       a0, s0
                  sltiu      s10, t5, 423
                  bltu       sp, a4, 657f
                  c.addi     t4, -1
651:              sll        s1, a7, s0
                  slti       a6, t1, -832
                  csrrc      s10, 0x340, a3
                  lui        s3, 166151
                  c.bnez     a1, 659f
                  c.srli     a4, 10
657:              slli       t5, t1, 5
                  andi       s4, zero, -877
659:              srli       s7, a4, 11
                  div        t5, a1, a5
                  ori        s9, s7, 667
                  sll        t1, a0, a5
                  csrrci     ra, 0x340, 14
                  slli       a4, a5, 5
                  csrrw      ra, 0x340, s10
                  c.li       s10, 29
                  addi       s9, a6, 448
                  andi       s1, a3, 936
                  bltu       t3, s9, 682f
                  c.slli     tp, 16
                  sub        s3, t6, t6
                  andi       s7, s4, -828
                  beq        s1, s1, 684f
                  beq        t2, a2, 689f
                  mulhu      s2, s0, t1
                  div        a3, t1, a5
                  blt        a4, s10, 682f
                  csrrc      t5, 0x340, gp
                  .2byte 0x8046 # kHintInstr
                  c.or       a3, a0
                  c.andi     a1, 5
                  div        ra, s2, s3
682:              fence
                  auipc      t4, 1004836
684:              c.andi     s0, -1
                  c.xor      s0, s0
                  fence
                  beq        s4, ra, 690f
                  ori        zero, s5, -468
689:              bge        a4, a1, 709f
690:              beq        sp, t5, 692f
                  fence
692:              c.add      s8, a1
                  sltu       a6, s1, ra
                  c.add      a1, tp
                  divu       s4, s1, s6
                  bltu       s11, s11, 698f
                  slli       s4, tp, 18
698:              andi       gp, t6, -636
                  c.srli     a5, 16
                  c.xor      a2, s0
                  bge        s4, a0, 717f
                  blt        s11, s7, 704f
                  c.bnez     a5, 721f
704:              c.bnez     a1, 719f
                  slti       tp, tp, -110
                  c.add      s1, a7
                  slti       s2, s7, 288
                  mulh       a7, zero, s9
709:              csrrsi     s1, 0x340, 12
                  sltiu      a0, t3, 30
                  mul        tp, gp, a5
                  c.or       a3, a0
                  c.sub      a2, a3
                  xor        zero, s6, s8
                  csrrsi     s2, 0x340, 28
                  add        s10, a3, ra
717:              srl        a2, zero, gp
                  bgeu       gp, s0, 727f
719:              fence.i
                  blt        t5, a0, 726f
721:              nop
                  c.slli     t5, 30
                  auipc      a7, 268821
                  bne        s1, gp, 735f
                  nop
726:              csrrw      a7, 0x340, s1
727:              csrrs      s3, 0x340, a6
                  rem        t4, s11, s7
                  c.srai     s0, 13
                  mul        s4, s3, a4
                  andi       a2, t6, -918
                  c.add      ra, s11
                  c.slli     ra, 24
                  div        t5, tp, a7
735:              csrrs      s8, 0x340, s1
                  c.sub      s0, a1
                  xor        s11, tp, t5
                  sltu       a2, tp, sp
                  srai       s3, sp, 30
                  srl        t1, s4, ra
                  mulh       a5, a4, t2
                  srli       s11, ra, 23
                  mulh       a2, t2, a7
                  sra        a0, s10, s8
                  andi       a7, s0, 441
                  c.srai     s0, 5
                  rem        a7, a3, s2
                  c.srai     a5, 10
                  bgeu       s7, sp, 761f
                  csrrsi     a6, 0x340, 28
                  bge        t1, a2, 764f
                  div        tp, t5, a7
                  csrrci     s8, 0x340, 13
                  ori        gp, tp, -934
                  c.li       t1, 5
                  sll        t4, s9, t0
                  srl        a2, s8, t2
                  sub        s10, a7, gp
                  andi       gp, a5, 292
                  c.slli     t3, 15
761:              mulhu      t4, t5, sp
                  csrrw      a0, 0x340, t6
                  c.srai     s1, 3
764:              c.sub      a2, a4
                  srl        s0, gp, a0
                  beq        t4, s6, 780f
                  sll        s2, s5, s8
                  csrrc      a7, 0x340, s6
                  beq        s1, a0, 778f
                  c.and      s1, a0
                  c.beqz     a2, 791f
                  c.sub      a1, a5
                  ori        a7, s10, 6
                  mulhu      t0, a2, t3
                  mulhsu     t4, a1, s0
                  mul        s3, s0, a6
                  c.add      a6, tp
778:              andi       s10, s0, 276
                  c.or       a3, a2
780:              sub        s4, t2, s9
                  c.xor      s0, s1
                  nop
                  bne        s3, s10, 798f
                  nop
                  div        s7, s7, t4
                  ori        t0, s3, -284
                  c.sub      a0, a4
                  csrrsi     tp, 0x340, 11
                  fence.i
                  lui        t1, 797794
791:              bltu       s8, s5, 800f
                  c.bnez     a4, 794f
                  c.and      a4, a4
794:              c.mv       t3, s6
                  bge        gp, ra, 797f
                  sub        tp, t3, s10
797:              c.and      a3, a1
798:              slti       t5, t3, -171
                  divu       s2, s11, t6
800:              c.or       s1, a0
                  slti       s0, s9, -852
                  and        s8, t2, t4
                  ori        s8, gp, -802
                  sltiu      s8, t3, -934
                  csrrci     s10, 0x340, 5
                  csrrw      s10, 0x340, t4
                  c.sub      a2, a3
                  csrrc      a4, 0x340, a4
                  srl        a7, s2, t4
                  c.srli     a2, 27
                  c.andi     a5, 3
                  slti       s7, gp, 540
                  sub        t1, a4, zero
                  rem        ra, a2, s3
                  c.bnez     s1, 824f
                  c.nop
                  beq        ra, a1, 825f
                  remu       t6, s4, t2
                  bltu       a1, sp, 832f
                  c.beqz     s0, 827f
                  mulhsu     gp, ra, t6
                  c.andi     s1, 23
                  addi       s11, s2, -192
824:              andi       zero, t2, 660
825:              c.add      a3, a1
                  c.bnez     s0, 838f
827:              c.beqz     a4, 836f
                  xor        a4, t3, s2
                  addi       gp, zero, -408
                  csrrw      t4, 0x340, ra
                  addi       t5, t3, -232
832:              bltu       s4, zero, 850f
                  and        s11, s8, s0
                  mulhsu     zero, zero, s0
                  c.lui      t5, 5
836:              c.lui      gp, 13
                  addi       s2, tp, -125
838:              xor        s1, t5, zero
                  c.srai     s1, 6
                  c.or       a2, a2
                  c.xor      s1, a1
                  andi       s5, zero, 908
                  srl        a3, t2, t2
                  c.mv       s5, t4
                  c.add      a0, s6
                  csrrc      s2, 0x340, s4
                  slt        s4, s4, ra
                  c.lui      gp, 21
                  c.mv       t4, s6
850:              sll        a2, t6, s8
                  csrrci     t0, 0x340, 8
                  nop
                  ori        s4, s8, 576
                  c.xor      a2, a2
                  andi       s11, t0, 431
                  csrrs      a7, 0x340, s8
                  c.or       a2, a0
                  divu       zero, s4, tp
                  c.add      ra, a2
                  c.srli     a0, 22
                  c.lui      s3, 21
                  srli       s4, sp, 16
                  and        s1, t2, a7
                  csrrci     s7, 0x340, 10
                  mulh       s0, s6, zero
                  bne        a3, t5, 872f
                  blt        s1, s5, 880f
                  srli       s1, s4, 25
                  c.or       a3, a0
                  rem        zero, a5, tp
                  c.or       a0, a4
872:              bne        t5, sp, 883f
                  addi       a0, t6, -799
                  lui        t3, 598603
                  or         s1, s1, t2
                  nop
                  rem        s10, s10, t5
                  bge        a6, gp, 880f
                  slt        s3, ra, s8
880:              bge        sp, a6, 900f
                  bgeu       a5, a4, 896f
                  div        a1, ra, a0
883:              rem        tp, s7, s3
                  c.addi     s9, 8
                  or         t1, s2, sp
                  slli       s3, t1, 4
                  mulhu      s4, a2, s11
                  xori       s8, a7, -633
                  srai       a0, a5, 2
                  c.addi     s7, -1
                  sltiu      t0, t1, -426
                  rem        s0, a2, t5
                  beq        s2, a1, 897f
                  ori        zero, zero, -408
                  beq        t5, a0, 911f
896:              slt        s5, s4, a0
897:              c.andi     a1, -1
                  div        s2, s10, a2
                  bgeu       a7, s0, 916f
900:              srli       a4, ra, 4
                  fence.i
                  xori       s7, zero, -457
                  c.lui      tp, 17
                  c.slli     gp, 18
                  c.add      s2, a5
                  srai       s7, t5, 18
                  c.add      t4, a1
                  c.lui      s7, 24
                  sub        s11, s7, t6
                  rem        t0, t1, sp
911:              c.bnez     s0, 919f
                  and        a0, a2, t6
                  andi       tp, s8, 663
                  c.slli     a3, 7
                  c.andi     s1, 23
916:              c.srai     a1, 25
                  nop
                  slt        s11, s9, a1
919:              c.beqz     a4, 930f
                  c.add      ra, a4
                  csrrc      s3, 0x340, t4
                  bne        tp, s11, 925f
                  fence
                  c.add      s2, a7
925:              srai       a2, s11, 20
                  auipc      s1, 678789
                  bge        t5, s2, 947f
                  and        t4, t6, s11
                  ori        s10, a7, -536
930:              c.nop
                  slt        a1, a0, t1
                  xori       t0, sp, -893
                  c.andi     s0, -1
                  c.sub      a3, a5
                  mul        s11, t3, t5
                  c.or       a3, a3
                  blt        s0, zero, 942f
                  csrrs      a5, 0x340, s9
                  .2byte 0x405d # kHintInstr
                  sltu       a3, a0, t0
                  rem        s0, t4, a6
                  csrrci     a4, 0x340, 25
942:              mulh       a6, t5, a1
                  blt        a4, zero, 950f
                  c.li       a1, 12
                  add        t0, a2, s2
                  c.bnez     a3, 961f
947:              slti       s11, t1, 668
                  beq        s4, sp, 963f
                  divu       t3, t0, t6
950:              c.bnez     a4, 955f
                  nop
                  c.andi     a4, 15
                  blt        a5, ra, 964f
                  addi       gp, a1, -399
955:              c.bnez     a3, 970f
                  c.srai     s1, 19
                  slti       zero, t0, -234
                  sub        t4, a5, s11
                  csrrci     a2, 0x340, 24
                  bne        a6, a2, 963f
961:              mulhsu     s3, t5, s5
                  srli       t4, t1, 25
963:              or         t5, a2, zero
964:              bgeu       a7, t3, 980f
                  c.srai     a4, 9
                  xori       s3, a6, -929
                  c.andi     a3, -1
                  srl        s11, t5, s6
                  sltu       s4, a6, s11
970:              srli       t0, s11, 19
                  c.srli     a0, 25
                  csrrci     s2, 0x340, 3
                  c.and      a0, a1
                  xori       t0, s9, 41
                  srai       s8, a4, 8
                  mulhsu     s9, gp, t6
                  rem        a7, s6, s5
                  rem        s3, t6, t3
                  c.add      a4, s8
980:              or         a4, s7, a3
                  slti       t4, ra, 514
                  mulhsu     zero, s11, a7
                  c.or       a4, a0
                  mulhsu     a2, s0, a5
                  beq        s4, a2, 1002f
                  or         s0, s4, a1
                  sra        t4, sp, sp
                  srai       t1, t3, 8
                  lui        ra, 480317
                  or         s10, s5, a2
                  c.lui      s7, 15
                  divu       s1, ra, t3
                  srli       a5, s3, 2
                  bltu       a1, a1, 1000f
                  fence
                  mulhsu     s0, t4, tp
                  lui        s3, 654607
                  c.and      a4, s1
                  c.xor      s0, s0
1000:             csrrs      s2, 0x340, s0
                  c.and      a2, a3
1002:             remu       s5, t3, t1
                  auipc      a1, 701972
                  sra        s3, t1, t3
                  auipc      s10, 890202
                  add        a5, s1, s4
                  lui        gp, 15942
                  nop
                  xor        s1, s6, gp
                  beq        a0, a2, 1030f
                  c.or       s0, a1
                  c.srli     a5, 26
                  sub        s11, s0, a5
                  bge        s7, ra, 1016f
                  srli       zero, s8, 14
1016:             fence
                  srl        s8, t6, t0
                  mulh       a2, zero, s0
                  xori       ra, a5, 609
                  c.beqz     a1, 1022f
                  xori       t1, s9, -561
1022:             xori       t4, s7, -584
                  nop
                  csrrci     tp, 0x340, 0
                  xori       s1, ra, -558
                  divu       t4, s3, a7
                  sll        s0, s8, a3
                  srl        s4, t0, s3
                  slli       s11, a7, 30
1030:             lui        t6, 704114
                  c.li       t0, -1
                  andi       gp, sp, -508
                  bgeu       s9, sp, 1042f
                  andi       s5, s8, -138
                  csrrsi     t4, 0x340, 14
                  and        ra, s2, a3
                  c.or       a5, a3
                  slti       s4, a6, 676
                  ori        t1, t6, -54
                  andi       a1, s2, 924
                  rem        s8, s8, s8
1042:             c.xor      a1, a1
                  blt        t5, a0, 1045f
                  c.addi     a4, -1
1045:             sub        s9, t6, a3
                  c.addi     tp, 10
                  csrrsi     zero, 0x340, 13
                  c.or       a3, a2
                  mul        a4, ra, s1
                  csrrwi     s1, 0x340, 11
                  c.sub      s0, a5
                  fence.i
                  bne        s10, s6, 1067f
                  divu       a6, s7, a4
                  lui        s4, 632661
                  c.add      gp, t4
                  mulhsu     s11, gp, ra
                  bltu       a3, s8, 1078f
                  xor        t1, s0, a6
                  c.bnez     s0, 1069f
                  mulh       a3, t3, s6
                  srli       t0, s6, 0
                  remu       a1, tp, t3
                  slli       s4, s6, 21
                  andi       a0, s1, -932
                  remu       a2, s8, s9
1067:             bltu       t5, a4, 1080f
                  auipc      s11, 572090
1069:             remu       t0, t3, a7
                  auipc      a0, 53937
                  rem        a1, sp, s5
                  addi       a0, a0, -261
                  beq        a5, t0, 1091f
                  c.add      s0, t0
                  xor        s2, s1, s8
                  mul        s11, t6, t2
                  c.or       s1, a5
1078:             xori       s5, s3, 808
                  slt        a0, s7, sp
1080:             csrrsi     a4, 0x340, 12
                  or         s10, t2, a2
                  slt        t6, t6, sp
                  ori        ra, s7, 529
                  c.mv       a2, a3
                  c.bnez     s0, 1092f
                  slli       s7, t6, 29
                  csrrsi     t0, 0x340, 30
                  c.add      ra, s8
                  slti       a6, t1, -219
                  bne        a7, s8, 1094f
1091:             slli       s9, a7, 4
1092:             slt        t4, s11, s3
                  bne        a6, t1, 1102f
1094:             c.slli     s0, 9
                  srai       s10, s3, 22
                  div        t0, s1, a0
                  blt        a4, t2, 1105f
                  slli       t4, s0, 17
                  and        s10, tp, t5
                  rem        a3, t3, s9
                  c.xor      a5, a3
1102:             remu       s11, s3, t2
                  c.or       a1, s1
                  slli       s9, a2, 24
1105:             divu       t6, s9, t5
                  c.li       t1, 5
                  ori        s5, ra, -221
                  c.andi     a1, 27
                  fence.i
                  c.lui      s4, 23
                  srli       a0, s4, 23
                  c.bnez     a0, 1127f
                  or         s8, t3, s7
                  xor        t3, a0, t2
                  csrrs      t3, 0x340, a7
                  sub        a4, a0, a6
                  srl        s11, a1, s0
                  c.lui      a7, 20
                  slt        s11, a1, a2
                  bltu       t5, a0, 1140f
                  sltu       s5, s10, gp
                  csrrw      tp, 0x340, s0
                  csrrci     t1, 0x340, 22
                  xori       a7, sp, 821
                  div        s7, a5, t6
                  sltiu      t6, t1, -963
1127:             bgeu       s4, tp, 1139f
                  rem        s9, t2, s2
                  bge        t5, ra, 1140f
                  add        a5, a2, t4
                  c.and      s0, a0
                  sub        s2, s5, a0
                  slli       s4, sp, 20
                  c.or       a4, a2
                  xori       a3, a5, 850
                  divu       a7, s8, t6
                  csrrci     s5, 0x340, 12
                  xor        a4, a3, t0
1139:             csrrci     s7, 0x340, 31
1140:             add        a3, a2, s11
                  xor        s2, a4, t4
                  bge        s6, t5, 1149f
                  c.and      s0, s1
                  or         zero, t5, a6
                  sra        s3, s10, t6
                  auipc      a0, 255581
                  mul        a1, s5, a1
                  slti       a1, t6, -498
1149:             c.nop
                  srai       s8, t4, 0
                  bge        a2, ra, 1160f
                  csrrc      s3, 0x340, s11
                  addi       t1, a3, -216
                  blt        gp, a6, 1162f
                  c.bnez     s0, 1168f
                  c.lui      t0, 13
                  c.srai     s0, 18
                  nop
                  c.bnez     a0, 1173f
1160:             c.andi     s0, 5
                  c.srai     a4, 29
1162:             c.nop
                  c.addi     a7, -1
                  bgeu       t5, s5, 1168f
                  c.beqz     a0, 1177f
                  sra        s5, a7, s9
                  bge        t4, zero, 1176f
1168:             slti       t0, s2, -693
                  xor        a7, t3, t2
                  c.mv       a3, s5
                  c.li       a3, 1
                  csrrsi     s0, 0x340, 21
1173:             sub        a4, a7, tp
                  xor        a6, s6, a3
                  sub        a3, s11, a1
1176:             blt        s5, a2, 1191f
1177:             divu       a3, gp, a1
                  csrrc      s7, 0x340, a7
                  c.srai     a0, 11
                  bltu       tp, t6, 1189f
                  slti       s10, a0, 608
                  fence.i
                  c.nop
                  csrrwi     t6, 0x340, 10
                  bge        a5, a4, 1203f
                  or         s0, t2, a5
                  c.nop
                  c.nop
1189:             xori       a4, gp, 942
                  csrrwi     s9, 0x340, 17
1191:             slti       s2, t0, 130
                  sltiu      gp, t6, -998
                  auipc      a5, 675426
                  c.lui      t1, 31
                  c.srli     a4, 22
                  srl        a7, t1, t3
                  c.bnez     a1, 1206f
                  divu       s3, s10, t2
                  srli       s7, zero, 27
                  bgeu       a3, a2, 1215f
                  srli       s2, s7, 10
                  c.add      s10, s3
1203:             bgeu       s10, s3, 1208f
                  bne        s10, t4, 1224f
                  c.srai     a0, 15
1206:             bne        a4, s8, 1208f
                  c.li       s7, 23
1208:             c.or       a2, a2
                  c.add      s0, a7
                  sra        a5, s2, a6
                  c.and      a2, a4
                  bge        s3, a4, 1223f
                  mulhsu     t5, t6, a4
                  srl        a6, s9, s1
1215:             divu       a0, tp, t6
                  csrrwi     s4, 0x340, 22
                  or         t4, gp, tp
                  mulh       a1, sp, gp
                  c.li       gp, 7
                  c.bnez     a4, 1222f
                  and        t5, a3, a2
1222:             csrrsi     a6, 0x340, 27
1223:             slt        a3, s4, ra
1224:             c.and      a0, s1
                  c.and      a5, a0
                  nop
                  lui        t6, 625385
                  ori        a2, ra, -305
                  fence
                  xor        a1, t6, a4
                  lui        s8, 989653
                  srli       t1, s7, 5
                  csrrsi     a5, 0x340, 12
                  and        a7, zero, s6
                  blt        s1, t0, 1255f
                  csrrsi     a2, 0x340, 26
                  c.srai     a4, 1
                  add        s7, s5, s4
                  fence
                  nop
                  nop
                  remu       t6, t5, s10
                  remu       gp, s7, s7
                  auipc      s1, 386122
                  rem        t0, ra, s7
                  c.mv       s0, a1
                  bgeu       a4, s11, 1249f
                  addi       tp, s8, -210
1249:             div        t5, a5, a3
                  c.nop
                  bne        zero, t5, 1271f
                  rem        t6, a4, s4
                  ori        a6, sp, 314
                  nop
1255:             c.xor      s0, a5
                  csrrc      a6, 0x340, a5
                  csrrwi     s5, 0x340, 24
                  c.bnez     s0, 1271f
                  bgeu       zero, s5, 1262f
                  c.bnez     a1, 1267f
                  sll        a5, t1, tp
1262:             remu       a2, a1, s9
                  addi       s0, zero, -144
                  sll        s2, a7, s2
                  c.add      s3, s4
                  sltu       s5, a4, a3
1267:             bge        a2, tp, 1275f
                  beq        t1, s7, 1276f
                  mul        s8, t1, s3
                  and        a0, t0, a4
1271:             c.addi     a2, -1
                  c.add      t5, gp
                  csrrwi     t6, 0x340, 1
                  mulhu      gp, s4, t6
1275:             mulh       t0, s1, a2
1276:             c.addi     a2, -1
                  slt        a2, s0, t2
                  divu       s11, s1, gp
                  csrrci     t1, 0x340, 10
                  c.bnez     s1, 1286f
                  c.mv       t1, a1
                  auipc      t0, 121951
                  c.bnez     a5, 1298f
                  csrrs      s0, 0x340, t1
                  fence.i
1286:             c.andi     s0, 13
                  bltu       t2, t3, 1296f
                  mul        a7, a0, s6
                  mul        t3, a5, s1
                  c.beqz     a0, 1306f
                  srai       s4, s5, 12
                  csrrw      a0, 0x340, s6
                  la         s7, sub_3
                  mul        t5, a5, a5
                  mulhu      s4, a3, t5
                  c.slli     a1, 16
                  addi       s7, s7, 517
                  c.sub      a5, a1
                  addi       s10, s1, -817
                  bgeu       t1, zero, j_sub_2_sub_3_4 #branch to jump instr
                  mulhu      t1, a7, s4
                  c.srli     a4, 16
j_sub_2_sub_3_4:  jalr       s8, s7, -517
                  c.nop
                  c.srai     s1, 28
                  sltu       s2, a3, t5
1296:             or         s11, s6, t3
                  c.lui      s4, 4
1298:             c.li       s7, 20
                  nop
                  div        t6, sp, ra
                  sltiu      tp, t4, -9
                  lui        s2, 707416
                  div        t0, s9, s6
                  csrrc      s5, 0x340, a2
                  mul        t1, a4, s4
1306:             bgeu       a0, a1, 1319f
                  csrrs      s11, 0x340, a0
                  sub        a5, t0, s2
                  nop
                  xori       s5, s5, -99
                  mulhsu     a5, s6, s2
                  sltu       a3, a7, gp
                  csrrw      s11, 0x340, gp
                  bgeu       s5, a1, 1325f
                  fence
                  c.lui      t1, 9
                  c.bnez     a3, 1324f
                  sltu       a4, tp, s10
1319:             addi       s4, s1, -825
                  sltiu      a4, sp, -447
                  c.slli     t1, 7
                  bge        a7, s3, 1339f
                  csrrsi     a3, 0x340, 29
1324:             c.li       t0, 2
1325:             fence.i
                  slli       s5, zero, 14
                  blt        t0, a7, 1333f
                  slt        s0, s8, gp
                  c.add      a3, s7
                  slli       tp, ra, 6
                  c.srai     a1, 11
                  c.lui      s0, 2
1333:             c.srai     a4, 2
                  lui        ra, 1015773
                  csrrci     s3, 0x340, 3
                  sltu       t6, s6, s10
                  divu       t1, s4, a5
                  bltu       s0, s9, 1347f
1339:             addi       s3, a3, 609
                  mulhu      t3, a2, s4
                  and        ra, sp, s11
                  csrrci     t3, 0x340, 2
                  remu       a1, s4, a3
                  c.xor      a0, s1
                  mul        t1, s9, t5
                  slt        t6, s7, s1
1347:             mulhu      s0, a3, a5
                  fence
                  mulh       gp, tp, s8
                  c.addi     a5, -1
                  xor        t3, a4, a2
                  c.slli     s1, 26
                  bgeu       sp, a5, 1368f
                  slti       t0, t2, 655
                  c.addi     t3, 25
                  csrrwi     s5, 0x340, 0
                  bne        t1, s2, 1370f
                  add        ra, t1, a4
                  c.andi     a1, -1
                  divu       s1, t3, t5
                  mulh       s7, t5, a3
                  andi       s5, s4, -831
                  csrrc      tp, 0x340, a1
                  fence.i
                  sltu       ra, a4, a1
                  fence
                  add        s4, a0, a1
1368:             csrrsi     s5, 0x340, 3
                  c.sub      a2, a5
1370:             sltiu      tp, t1, -117
                  slti       s5, s7, -114
                  slti       ra, a4, -251
                  csrrs      t3, 0x340, gp
                  or         s7, s9, s7
                  c.xor      a3, a0
                  or         t3, s3, s11
                  csrrw      s5, 0x340, a2
                  csrrc      a2, 0x340, a5
                  csrrc      t0, 0x340, s9
                  csrrwi     t3, 0x340, 0
                  srai       a3, s6, 24
                  csrrsi     s9, 0x340, 17
                  rem        gp, a6, a1
                  ori        ra, a6, 150
                  srli       a4, ra, 26
                  c.srli     s0, 21
                  or         s2, gp, a7
                  nop
                  blt        a2, a5, 1393f
                  c.beqz     a4, 1393f
                  div        s8, s9, a1
                  c.or       a3, a0
1393:             csrrwi     a7, 0x340, 28
                  c.addi     t6, -1
                  c.xor      s1, a5
                  fence.i
                  c.xor      a0, a5
                  ori        tp, s0, -367
                  c.srli     s1, 4
                  slt        s4, t3, ra
                  c.xor      a2, a2
                  bltu       t5, s6, 1422f
                  andi       tp, s4, -84
                  slli       s0, s3, 14
                  bltu       s0, a6, 1414f
                  blt        s2, t0, 1414f
                  bge        t3, t1, 1415f
                  c.srli     a2, 4
                  bge        s5, gp, 1416f
                  c.bnez     s1, 1430f
                  c.bnez     a5, 1427f
                  beq        s5, s10, 1414f
                  csrrci     s10, 0x340, 13
1414:             and        a4, s10, s10
1415:             csrrs      t6, 0x340, s3
1416:             mul        gp, a1, zero
                  sub        t5, s0, a1
                  la         a7, region_0+393 #start riscv_hazard_instr_stream_2
                  lbu        a2, 458(a7)
                  lui        s3, 512728
                  lb         a2, 2036(a7)
                  mul        t5, s5, s3
                  slli       s5, t5, 28
                  addi       s3, s5, -626
                  lb         a2, 1332(a7)
                  sh         s4, -49(a7)
                  lh         a2, -107(a7)
                  lb         a2, 1194(a7)
                  lhu        s4, 861(a7)
                  sltu       s5, t5, gp
                  lhu        s4, -237(a7)
                  or         s5, s4, s5
                  lh         s5, 1585(a7)
                  sra        gp, gp, t5
                  c.xor      a2, a2
                  remu       a2, s5, t5
                  csrrs      a2, 0x340, s3
                  srl        s4, a2, s3
                  lh         s4, 1343(a7)
                  lb         t5, 900(a7)
                  c.mv       gp, t5
                  mulhu      gp, gp, gp
                  srai       s5, s5, 4
                  lhu        s3, 79(a7)
                  sb         t5, 2010(a7)
                  csrrw      t5, 0x340, s3
                  sub        s5, a2, a2
                  sh         s5, 1433(a7)
                  auipc      s5, 474630
                  lh         t5, 1025(a7)
                  lhu        s5, 1595(a7)
                  lbu        t5, -172(a7)
                  lb         a2, -385(a7)
                  lb         s5, 457(a7)
                  xor        s4, t5, gp
                  lb         s5, 892(a7)
                  lbu        t5, 565(a7)
                  lb         s5, 1200(a7)
                  lbu        gp, 1306(a7)
                  andi       a2, t5, 384
                  lbu        s4, 1956(a7)
                  sb         s3, 1638(a7)
                  csrrw      a2, 0x340, t5
                  lbu        s5, 275(a7) #end riscv_hazard_instr_stream_2
                  srli       s5, a3, 5
                  xor        s9, s4, s7
                  csrrwi     s2, 0x340, 20
                  bne        a2, s5, 1441f
1422:             c.sub      s1, a4
                  c.andi     a1, 10
                  bgeu       a1, s7, 1441f
                  fence
                  slli       a2, s3, 23
1427:             xor        s0, s6, s11
                  csrrw      tp, 0x340, s4
                  slti       s3, s1, 855
1430:             srai       s2, tp, 13
                  mul        s0, tp, t5
                  slli       s7, sp, 10
                  beq        a1, a7, 1447f
                  beq        t5, s5, 1445f
                  c.and      a0, a5
                  sltiu      a7, s9, -502
                  srli       s3, a2, 22
                  mulhsu     s10, a0, t0
                  c.beqz     a5, 1444f
                  mulhu      s11, t0, a5
1441:             remu       s0, a4, s7
                  mulhu      a5, s3, t3
                  or         a1, s5, a1
1444:             c.add      a3, s2
1445:             lui        t3, 835604
                  srai       a5, s10, 8
1447:             mulh       a3, s7, s9
                  c.or       a3, a1
                  csrrs      a7, 0x340, s8
                  c.srli     a1, 13
                  mulhu      zero, a7, t4
                  andi       t0, t0, -54
                  srl        a6, ra, ra
                  lw         s8, 4(sp)
                  and        s2, s11, t2
                  addi       sp, sp, 48
                  c.sub      s1, a0
                  c.mv       a4, t0
                  div        a3, s2, zero
2307:             c.jr x24
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

init_machine_mode:
                  li x5, 0xc1800
                  csrw 0x300, x5 # MSTATUS
                  li x5, 0x0
                  csrw 0x304, x5 # MIE
                  mret
.data
.pushsection .tohost,"aw",@progbits;
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.popsection;
.pushsection .region_0,"aw",@progbits;
region_0:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.popsection;
.pushsection .region_1,"aw",@progbits;
region_1:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.popsection;
.pushsection .region_2,"aw",@progbits;
region_2:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.popsection;
.pushsection .region_3,"aw",@progbits;
region_3:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.popsection;
.pushsection .region_4,"aw",@progbits;
region_4:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
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
mmode_intr_vector_1:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_2:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_3:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_4:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_5:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_6:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_7:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_8:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_9:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_10:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_11:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_12:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_13:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_14:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_15:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: j test_done

.align 12
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15
                  .option rvc;

mmode_exception_handler:
                  csrrw x2, 0x340, x2
                  add x2, x22, zero
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
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x5, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x5, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x5, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x5, x27, ecall_handler
                  li x27, 0x1
                  beq x5, x27, instr_fault_handler
                  li x27, 0x5
                  beq x5, x27, load_fault_handler
                  li x27, 0x7
                  beq x5, x27, store_fault_handler
                  li x27, 0xc
                  beq x5, x27, pt_fault_handler
                  li x27, 0xd
                  beq x5, x27, pt_fault_handler
                  li x27, 0xf
                  beq x5, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: jal x1, test_done 

ebreak_handler:   
                  csrr  x5, mepc
                  addi  x5, x5, 4
                  csrw  mepc, x5
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
                  add x22, x2, zero
                  csrrw x2, 0x340, x2
                  mret

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  j write_tohost
illegal_instr_handler:
                  csrr  x5, mepc
                  addi  x5, x5, 4
                  csrw  mepc, x5
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
                  add x22, x2, zero
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
                  add x22, x2, zero
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
                  add x22, x2, zero
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
                  add x22, x2, zero
                  csrrw x2, 0x340, x2
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
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
                  add x22, x2, zero
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
