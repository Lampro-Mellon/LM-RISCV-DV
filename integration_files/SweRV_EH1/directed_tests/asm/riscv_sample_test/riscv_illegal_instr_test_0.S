.include "user_define.h"
.globl _start
.section .text
_start:
                  li x0, 0x0
                  li x1, 0xa
                  li x2, 0xf76655f1
                  li x3, 0xa5356fc
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0x2
                  li x8, 0xfd822817
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0xf39d722c
                  li x13, 0xe
                  li x14, 0xfec71679
                  li x15, 0xa
                  li x16, 0x0
                  li x17, 0xf777eec0
                  li x18, 0xf29146cb
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0xf8279043
                  li x22, 0x80000000
                  li x23, 0xfa167b1d
                  li x24, 0x80000000
                  li x25, 0xd
                  li x26, 0x4
                  li x27, 0xbaca09b2
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0x96cf4024
                  li x31, 0x80000000
                  li x14, 0x40001104
                  csrw misa, x14
kernel_sp:        
                  la x23, _kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, _init
                  csrw mepc, x14
                  j init_machine_mode

_init:            
                  la x2, _user_stack_end
_main:            la         t1, region_3+260 #start load_store_instr_stream_0
                  la         t2, region_0+1583 #start load_store_instr_stream_1
                  lbu        s6, -108(t2)
                  sb         s7, 238(t1)
                  sh         a6, -125(t2)
                  lb         s5, 18(t2)
                  lbu        s11, -152(t2)
                  lh         s3, -64(t1)
                  lb         s3, 202(t2)
                  lbu        t3, -30(t2)
                  lbu        s1, 173(t1)
                  lb         t0, -125(t2) #end load_store_instr_stream_1
                  lb         t0, 79(t1)
                  sb         zero, -73(t1)
                  lb         s11, -61(t1)
                  lw         s2, -212(t1)
                  lb         t0, 0(t1) #end load_store_instr_stream_0
                  la         a5, region_4+3942 #start riscv_load_store_rand_instr_stream_16
                  lhu        s6, 58(a5)
                  lb         a2, -3(a5)
                  lbu        a3, 25(a5)
                  csrrs      s11, 0x340, t4
                  sw         s8, 30(a5)
                  sb         tp, -41(a5)
                  sb         s1, 5(a5)
                  sh         zero, 4(a5)
                  lbu        t2, -13(a5)
                  sb         s4, 13(a5)
                  lb         s10, 61(a5)
                  sll        t5, zero, a2
                  sh         a4, 30(a5)
                  lh         t0, -16(a5)
                  sh         s1, 54(a5)
                  lh         gp, -44(a5)
                  addi       t4, a4, 417
                  addi       a6, t5, -376
                  and        s3, s5, s9
                  c.lui      t5, 25
                  lbu        ra, -8(a5)
                  lb         s3, 36(a5)
                  c.slli     t3, 6
                  div        s5, a7, a1
                  lbu        a1, -19(a5)
                  lbu        s0, -49(a5)
                  .4byte 0x000c # kReservedCompressedInstr
                  addi       t0, a6, 255
                  lb         s5, -48(a5)
                  lh         t3, -44(a5)
                  sll        s1, gp, ra
                  csrrs      s10, 0x340, a2
                  lb         a6, 63(a5)
                  sb         s11, -31(a5)
                  sb         gp, -11(a5)
                  sb         sp, -4(a5)
                  c.and      a2, a1
                  c.and      a1, a0
                  lb         a1, 11(a5)
                  c.add      s9, t1
                  fence.i
                  csrrwi     s8, 0x340, 29
                  ori        s6, t1, 458
                  .4byte 0x706e # kReservedCompressedInstr
                  lbu        s2, -7(a5)
                  xor        ra, s11, s9
                  c.srai     a3, 27
                  srli       tp, s3, 16
                  sh         zero, 62(a5)
                  xori       t1, t4, -179
                  lb         a7, 8(a5) #end riscv_load_store_rand_instr_stream_16
                  addi       s6, zero, -5 #init loop 0 counter
                  csrrsi     a6, 0x340, 2
                  and        t4, s8, t5
                  c.mv       s2, a1
                  auipc      s9, 190117
                  addi       t5, zero, -8 #init loop 0 limit
                  sltiu      s10, a7, 901
                  c.srli     a5, 8
main_95_0_t:      auipc      a0, 995834
                  c.slli     t3, 25
                  c.slli     a2, 9
                  c.andi     a0, 6
                  addi       s6, s6, -4 #update loop 0 counter
                  srai       a7, zero, 17
                  rem        t1, s3, a4
                  c.xor      a0, a3
                  c.add      tp, s3
                  slti       s2, s9, 852
                  slti       a5, s10, -800
                  csrrc      a3, 0x340, a3
                  c.or       a4, a3
                  c.lui      s1, 17
                  xori       t0, s10, -1020
                  bge        s6, t5, main_95_0_t #branch for loop 0
                  divu       zero, a0, tp
                  la         a2, region_4+2654 #start load_store_instr_stream_2
                  la         t0, region_3+291 #start load_store_instr_stream_1
                  la         a1, region_2+2051 #start load_store_instr_stream_0
                  sb         a0, -1(t0)
                  lh         s10, 62(a2)
                  sh         t1, 56(a2)
                  sw         s6, -123(a1)
                  sb         a0, 0(t0)
                  lb         s8, 73(a1)
                  lbu        a5, 33(a2)
                  sw         s3, 9(t0)
                  sh         s11, 1(t0)
                  lhu        zero, 6(a2)
                  sb         t1, 5(t0)
                  lb         a7, 3(a2)
                  lbu        zero, 92(a1)
                  lh         s2, 15(t0) #end load_store_instr_stream_1
                  sb         s0, -50(a1)
                  lb         zero, -47(a2) #end load_store_instr_stream_2
                  sw         s10, 197(a1) #end load_store_instr_stream_0
                  la         a5, region_1+12080 #start load_store_instr_stream_0
                  la         s9, region_1+11410 #start load_store_instr_stream_2
                  la         a1, region_1+8688 #start load_store_instr_stream_1
                  lbu        s8, -913(a1)
                  lbu        s8, -567(s9)
                  lhu        t6, 794(a5)
                  sb         s5, 63(a5)
                  sh         sp, -854(a1)
                  sb         s9, 1377(s9)
                  lb         a7, 1895(a5)
                  la         s2, region_1+2422 #start load_store_instr_stream_3
                  sb         zero, -1138(a1)
                  lh         a2, -1352(a5)
                  sb         a5, -545(a1)
                  lb         a0, -19(s2)
                  sh         t6, 942(a5)
                  sh         a4, -16(s2)
                  sb         a4, 25(s9)
                  sb         a5, 1485(s9)
                  lbu        a7, 53(s2)
                  lbu        tp, 36(s2)
                  lbu        t1, 487(a1)
                  sb         t4, -264(a1)
                  sb         t6, -31(s2)
                  sb         s9, 1756(s9)
                  sb         a0, -1665(a5)
                  lhu        a2, -2004(a1)
                  lbu        t3, -1872(s9)
                  lh         a2, 184(a1)
                  sb         sp, -823(a1) #end load_store_instr_stream_1
                  sb         t3, 21(s2) #end load_store_instr_stream_3
                  sb         a1, 1647(s9) #end load_store_instr_stream_2
                  lb         s10, -1197(a5) #end load_store_instr_stream_0
                  la         a3, region_2+5380 #start riscv_load_store_rand_instr_stream_6
                  lb         a0, -163(a3)
                  lbu        a2, 167(a3)
                  div        t2, a4, zero
                  mulhu      a5, s3, a4
                  sh         a5, 106(a3)
                  c.nop
                  sb         t0, -27(a3)
                  lb         a2, 236(a3)
                  lbu        a0, -215(a3)
                  sb         a6, -127(a3)
                  remu       ra, s8, t6
                  slti       s1, a1, -215
                  lbu        tp, -157(a3)
                  sb         a3, -39(a3)
                  lbu        s6, 213(a3)
                  auipc      t0, 643440
                  and        s3, s10, s7
                  lbu        t3, 150(a3)
                  sb         tp, 202(a3)
                  csrrwi     a7, 0x340, 25
                  sb         s1, 18(a3)
                  csrrwi     t1, 0x340, 28
                  c.or       s1, a2
                  lbu        t4, 141(a3)
                  lhu        t5, 156(a3)
                  sb         a5, -107(a3)
                  and        a0, t6, t6
                  and        a4, s4, s6
                  lbu        gp, -204(a3)
                  auipc      t5, 409946
                  sb         t2, 18(a3)
                  sh         t3, -244(a3)
                  auipc      tp, 234056
                  lbu        s9, 34(a3)
                  lbu        a0, 217(a3)
                  sh         t6, 82(a3)
                  lhu        a5, 208(a3)
                  lw         s10, -88(a3)
                  addi       t6, s2, 908
                  lb         s9, 49(a3)
                  sb         a2, -130(a3)
                  ori        a7, t4, 670
                  xori       gp, a5, -447
                  lb         s10, -133(a3)
                  and        t5, s7, a0
                  c.andi     a5, 9
                  lb         s8, 194(a3) #end riscv_load_store_rand_instr_stream_6
                  addi       tp, zero, 5 #init loop 0 counter
                  c.or       a5, a1
                  addi       a0, zero, -13 #init loop 0 limit
                  fence
main_102_0_t:     slti       t4, s8, 195
                  c.addi     s8, -1
                  csrrw      a1, 0x340, a1
                  addi       tp, tp, -7 #update loop 0 counter
                  c.li       a5, -1
                  bge        tp, a0, main_102_0_t #branch for loop 0
                  csrrs      t0, 0x340, tp
                  la         a3, region_3+176 #start load_store_instr_stream_4
                  sh         a4, -102(a3)
                  la         t6, region_1+13249 #start load_store_instr_stream_1
                  lb         s9, 284(a3)
                  la         t3, region_0+790 #start load_store_instr_stream_2
                  sh         t3, -241(t6)
                  la         a0, region_4+2287 #start load_store_instr_stream_3
                  la         t2, region_2+6736 #start load_store_instr_stream_0
                  lhu        zero, -102(t3)
                  lhu        a6, 47(a0)
                  lhu        s0, -1023(t6)
                  lb         gp, 291(a3)
                  lb         a2, 156(t3)
                  lb         a2, 2(t2)
                  lbu        t5, -109(a3)
                  sh         a3, 248(t3)
                  lb         s10, -14(a0)
                  sb         a6, -143(a3)
                  lhu        a6, 1747(t6)
                  lb         s0, 1188(t6)
                  sh         ra, 16(t3)
                  lbu        ra, 760(t6)
                  lhu        s10, -53(a0)
                  sw         a2, 323(t6)
                  lb         s3, 130(t3)
                  lb         s9, 1117(t6)
                  lb         a5, 6(a3)
                  lb         ra, 9(a3)
                  sb         t4, 15(t2)
                  sh         a1, -383(t6)
                  lb         t5, 159(a3)
                  lb         s2, 167(a3) #end load_store_instr_stream_4
                  sb         s0, -84(t3)
                  sb         ra, -42(a0)
                  sh         s4, -116(t3)
                  lb         s11, 3(a0)
                  sb         zero, -8(t2)
                  sh         s5, -9(a0)
                  lh         s11, 883(t6)
                  lb         s10, 253(t3) #end load_store_instr_stream_2
                  lbu        a1, 11(t2)
                  lb         t1, 20(a0)
                  lb         s10, 6(a0)
                  sb         t6, 2(a0) #end load_store_instr_stream_3
                  lbu        s8, -882(t6) #end load_store_instr_stream_1
                  lb         s3, -9(t2) #end load_store_instr_stream_0
                  la         t1, region_4+1231 #start riscv_load_store_rand_instr_stream_22
                  lbu        s2, -250(t1)
                  lb         s3, -98(t1)
                  sh         a5, 151(t1)
                  c.nop
                  xor        t5, s5, t1
                  addi       a1, s10, -586
                  lb         s11, -33(t1)
                  lb         t2, 204(t1)
                  mulh       ra, zero, s8
                  lb         t3, -122(t1)
                  lbu        s9, -206(t1)
                  c.srai     a3, 4
                  lw         zero, 241(t1)
                  lbu        a5, 20(t1)
                  lhu        s8, 15(t1)
                  lb         gp, 125(t1)
                  lbu        s6, 83(t1)
                  lw         t5, 57(t1)
                  lh         s0, -205(t1)
                  lhu        tp, 221(t1)
                  sb         t4, 95(t1)
                  c.or       a0, a5
                  lhu        a4, -39(t1)
                  lb         a1, -178(t1)
                  lbu        tp, 134(t1)
                  lbu        s11, 253(t1)
                  sb         a2, -96(t1)
                  lb         a4, 87(t1)
                  rem        a2, s6, zero
                  div        t3, s8, gp
                  fence.i
                  lbu        tp, -238(t1)
                  ori        s5, s4, -90
                  lb         t0, -182(t1)
                  div        s11, t6, ra
                  lb         tp, 69(t1)
                  lb         t6, 98(t1)
                  lb         s9, 18(t1)
                  lbu        t5, -13(t1)
                  c.and      a5, s0
                  lbu        a6, 256(t1)
                  add        a1, a0, a5
                  mulhsu     gp, t5, s5
                  lh         s5, -145(t1) #end riscv_load_store_rand_instr_stream_22
                  la         s8, region_4+131 #start riscv_load_store_rand_instr_stream_3
                  csrrs      t4, 0x340, s7
                  div        t4, t2, a7
                  csrrs      s11, 0x340, s2
                  c.add      s9, a4
                  sb         a7, -40(s8)
                  lw         t3, -3(s8)
                  lh         s11, 27(s8)
                  lhu        s6, -5(s8)
                  sub        s5, s1, s4
                  lb         a6, 12(s8)
                  lhu        tp, 33(s8)
                  sb         s7, -28(s8)
                  lhu        a3, 41(s8)
                  lw         s1, -43(s8)
                  sb         zero, 28(s8)
                  sh         a1, 51(s8)
                  add        t2, gp, a1
                  sb         a4, 33(s8)
                  sh         zero, -61(s8)
                  sb         t4, -29(s8)
                  lbu        s5, -64(s8)
                  lbu        s1, -9(s8)
                  lbu        a0, 50(s8)
                  csrrw      s0, 0x340, t5
                  andi       t1, tp, 655
                  lb         a0, -34(s8)
                  lh         gp, -47(s8)
                  slti       t0, a7, 559
                  sb         s5, -34(s8)
                  lb         a3, 17(s8)
                  c.lui      t2, 4
                  div        a0, a7, s1
                  sra        s1, a5, t1
                  lb         ra, 4(s8)
                  lb         a6, 20(s8)
                  mulhu      a7, t6, t5
                  addi       a4, t6, -418
                  csrrs      a2, 0x340, zero
                  csrrsi     a1, 0x340, 21
                  csrrwi     t6, 0x340, 31
                  lb         ra, 12(s8)
                  lhu        s6, -39(s8)
                  sh         ra, 29(s8)
                  lb         t6, 13(s8)
                  c.addi     a3, -1
                  fence.i
                  lhu        a5, -33(s8)
                  lbu        a7, -24(s8)
                  srli       t0, s8, 4
                  sb         zero, 44(s8) #end riscv_load_store_rand_instr_stream_3
                  la         t4, region_4+1467 #start riscv_load_store_rand_instr_stream_14
                  lw         s11, -175(t4)
                  csrrsi     s11, 0x340, 22
                  sh         s9, 2001(t4)
                  srai       a6, a0, 26
                  c.lui      a6, 8
                  c.add      a6, s9
                  mul        s5, a7, a1
                  slli       s5, s10, 9
                  sltiu      t2, a4, 376
                  lb         s6, -258(t4)
                  c.srli     a4, 11
                  lbu        a1, 1025(t4)
                  lb         s6, 1228(t4)
                  lw         a1, 1485(t4)
                  lb         a5, -1434(t4)
                  c.or       s1, s1
                  lbu        a7, 462(t4)
                  lbu        t0, -581(t4)
                  lhu        s2, -115(t4)
                  lbu        s9, 268(t4)
                  sh         t0, -51(t4)
                  xori       a3, t1, -425
                  csrrc      ra, 0x340, s0
                  lbu        t5, -1060(t4)
                  c.lui      gp, 28
                  sb         a6, -987(t4)
                  lb         s2, -688(t4)
                  sw         s0, -635(t4)
                  sub        t1, a6, a2
                  csrrc      t1, 0x340, ra
                  lb         t3, -404(t4)
                  csrrsi     t0, 0x340, 4
                  sb         s9, 1196(t4)
                  srli       t0, s3, 7
                  lb         s8, 1959(t4)
                  sb         a6, -539(t4)
                  lb         a0, 160(t4)
                  mulh       a5, s3, zero
                  c.srli     a1, 14
                  mul        a2, s10, a4
                  sw         sp, 1573(t4)
                  c.srai     a5, 10
                  sh         s11, 1683(t4)
                  lb         ra, -1394(t4)
                  lh         tp, 583(t4)
                  sb         a3, -1081(t4)
                  c.add      a3, tp
                  c.addi     s3, 15
                  remu       s5, s5, ra
                  c.slli     t2, 15
                  c.nop
                  lbu        s5, 36(t4) #end riscv_load_store_rand_instr_stream_14
                  la         a2, region_4+1480 #start riscv_hazard_instr_stream_21
                  lb         a4, 4(a2)
                  sh         a4, -8(a2)
                  divu       a5, a5, a4
                  xor        s3, a5, tp
                  sb         s2, -2(a2)
                  lbu        a4, 2(a2)
                  c.nop
                  csrrs      tp, 0x340, a0
                  sra        a0, tp, s3
                  lhu        a4, 14(a2)
                  lb         a4, 7(a2)
                  lb         a4, 6(a2)
                  sb         s2, 10(a2)
                  fence
                  lhu        tp, 6(a2)
                  lb         a0, -14(a2)
                  divu       tp, tp, s2
                  sra        tp, a0, s2
                  csrrwi     s2, 0x340, 23
                  sh         a5, -4(a2)
                  c.addi     a5, -1
                  sub        tp, a4, s3
                  lb         s2, 9(a2)
                  fence
                  lb         s2, 1(a2)
                  sb         a4, -16(a2)
                  csrrw      s3, 0x340, s3
                  c.addi     a0, -1
                  c.srai     a0, 22
                  sb         tp, -2(a2)
                  lbu        a0, 8(a2)
                  lbu        tp, -3(a2)
                  lbu        tp, 7(a2)
                  sw         tp, 12(a2)
                  lb         s2, 2(a2)
                  lhu        a4, 4(a2)
                  sb         tp, 7(a2)
                  add        a0, tp, a5
                  lh         s2, 14(a2)
                  sb         a0, -8(a2)
                  sb         a0, -7(a2)
                  sb         s3, -13(a2)
                  srai       a5, a5, 22
                  csrrw      s3, 0x340, s3
                  lb         a0, -5(a2)
                  c.sw       a4, 4(a2)
                  andi       a4, a4, -297
                  c.lw       a5, 12(a2) #end riscv_hazard_instr_stream_21
                  la         a7, region_3+447 #start riscv_hazard_instr_stream_9
                  add        zero, a5, a5
                  sb         t1, -8(a7)
                  lbu        zero, 16(a7)
                  mulhu      a5, a1, t4
                  fence
                  srli       t4, s2, 11
                  lbu        t1, -13(a7)
                  div        s2, s2, s2
                  c.mv       t4, t1
                  c.sub      a1, a5
                  ori        t1, t4, 368
                  sb         s2, -6(a7)
                  c.nop
                  lb         a1, 16(a7)
                  lhu        t1, -13(a7)
                  c.or       a5, a5
                  nop
                  c.and      a1, a1
                  srli       t1, zero, 28
                  c.slli     a1, 7
                  lhu        t1, -11(a7)
                  lb         t1, -15(a7)
                  xor        t1, zero, a5
                  sra        a1, zero, a1
                  xori       s2, a5, -993
                  lb         zero, -12(a7)
                  lbu        s2, 8(a7)
                  c.mv       t4, t4
                  lbu        zero, 3(a7)
                  sb         a1, -5(a7)
                  lhu        zero, 3(a7)
                  remu       a5, a5, t4
                  or         s2, a1, a5
                  sw         t4, 9(a7)
                  c.and      a1, a5
                  lui        a5, 865391
                  andi       a1, t4, 924
                  csrrwi     t1, 0x340, 28
                  lb         zero, 5(a7)
                  lb         zero, -4(a7)
                  slli       t4, a5, 4
                  andi       s2, t4, 61
                  c.xor      a1, a5
                  lb         a1, 15(a7)
                  sw         t1, -11(a7)
                  sb         a5, 4(a7)
                  sb         t4, -13(a7) #end riscv_hazard_instr_stream_9
                  la         ra, region_4+2934 #start riscv_hazard_instr_stream_18
                  mul        a1, t1, t1
                  c.slli     t1, 1
                  csrrwi     a2, 0x340, 10
                  lb         t6, -49(ra)
                  sb         t6, 41(ra)
                  lw         a2, 34(ra)
                  andi       t6, a1, 137
                  srai       a1, t6, 1
                  c.mv       t0, t0
                  remu       t0, t0, t6
                  lhu        a1, 48(ra)
                  c.mv       a1, a2
                  sb         a1, 46(ra)
                  srli       a2, t6, 18
                  sb         a1, 6(ra)
                  slti       a6, a2, 112
                  lbu        a2, -48(ra)
                  xor        a2, t6, t0
                  srli       a2, t6, 27
                  csrrc      t1, 0x340, t6
                  slti       a2, t6, 774
                  lb         t0, 5(ra)
                  csrrci     a6, 0x340, 2
                  c.sub      a1, a2
                  sb         t0, -35(ra)
                  lb         a2, -21(ra)
                  sb         t6, -15(ra)
                  div        t0, t1, a6
                  div        a2, a1, t1
                  lbu        a1, -23(ra)
                  lb         a6, -48(ra)
                  c.srli     a1, 8
                  lb         a2, -19(ra)
                  mul        t1, a6, t6
                  c.lui      a2, 3
                  csrrc      t0, 0x340, t6
                  lb         a6, -8(ra)
                  c.andi     a1, 26
                  lbu        t6, 11(ra)
                  csrrci     t1, 0x340, 22
                  c.srai     a1, 10
                  sw         t6, 22(ra)
                  sh         a6, 54(ra)
                  sb         a2, -59(ra)
                  lbu        t0, 36(ra)
                  add        a6, a1, t1
                  sb         a1, 12(ra)
                  sb         t1, 55(ra)
                  sw         a1, 18(ra)
                  rem        t1, a6, a6
                  lb         a6, 5(ra)
                  div        t6, t6, t1
                  srli       a1, t1, 7
                  lbu        t1, -62(ra)
                  sh         a2, -40(ra) #end riscv_hazard_instr_stream_18
                  addi       a0, zero, -5 #init loop 0 counter
                  slt        s2, sp, t5
                  xori       s3, s4, 185
                  c.or       s1, a5
                  csrrs      a7, 0x340, s11
                  slt        s10, a3, a3
                  addi       a5, zero, -7 #init loop 0 limit
                  csrrc      gp, 0x340, ra
                  c.and      a2, a2
                  c.andi     a3, 4
                  srai       s8, t0, 30
main_108_0_t:     addi       t2, s10, 208
                  addi       a0, a0, -6 #update loop 0 counter
                  ori        t1, t4, 155
                  c.add      s5, s4
                  sra        s11, s3, a2
                  c.srli     s0, 28
                  bge        a0, a5, main_108_0_t #branch for loop 0
                  andi       gp, s10, -783
                  la         t2, region_1+5795 #start riscv_hazard_instr_stream_11
                  sw         a4, -175(t2)
                  lb         a0, 68(t2)
                  xor        s1, a4, gp
                  nop
                  mulh       a1, s1, s1
                  c.and      a0, a1
                  sh         a6, 133(t2)
                  csrrc      a6, 0x340, a0
                  auipc      gp, 40539
                  sb         a0, -136(t2)
                  lhu        a1, 125(t2)
                  srli       a6, s1, 20
                  lb         a0, 34(t2)
                  c.xor      s1, a0
                  ori        a6, gp, -139
                  csrrwi     a6, 0x340, 23
                  csrrw      a6, 0x340, a4
                  sb         a1, 100(t2)
                  ori        a4, a0, -383
                  c.nop
                  c.slli     gp, 5
                  srai       a1, a0, 12
                  csrrci     a4, 0x340, 9
                  div        a6, a0, s1
                  lbu        a4, -119(t2)
                  c.andi     a0, 6
                  add        a1, a4, a6
                  lb         a1, 108(t2)
                  c.mv       a4, a6
                  sb         a0, 199(t2)
                  lh         a4, 31(t2)
                  sb         a4, -94(t2)
                  srai       a4, a0, 9
                  auipc      a1, 979432
                  nop
                  sb         a1, -130(t2)
                  csrrw      a0, 0x340, a0
                  csrrsi     a4, 0x340, 1
                  mulh       a6, a0, a0
                  rem        a4, s1, a4
                  lb         a6, 167(t2)
                  slt        a0, a6, a6
                  fence.i
                  lb         gp, 90(t2) #end riscv_hazard_instr_stream_11
main_44:          jal        t4, 4f
0:                c.j        3f
1:                c.j        7f
2:                c.j        9f
3:                jal        ra, 6f
4:                jal        ra, 5f
5:                c.jal      8f
6:                c.jal      1b
7:                jal        t0, 2b
8:                jal        t1, 10f
9:                c.jal      11f
10:               c.j        0b
11:               divu       t4, s0, zero
                  la         a0, region_0+3820 #start load_store_instr_stream_1
                  sb         t1, -8(a0)
                  la         a6, region_0+616 #start load_store_instr_stream_0
                  sb         s0, 15(a0)
                  sb         a6, 5(a6)
                  sw         s5, -16(a6)
                  c.sw       s0, 4(a0)
                  sb         a1, -13(a6)
                  sw         tp, 12(a0)
                  lbu        zero, -15(a6)
                  lh         s1, -10(a0)
                  lhu        s10, -2(a6)
                  lhu        t0, -16(a0)
                  lbu        a7, -1(a6)
                  sb         s4, 9(a0)
                  c.lw       a5, 8(a0) #end load_store_instr_stream_1
                  lb         s5, 7(a6) #end load_store_instr_stream_0
                  la         s9, region_0+2120 #start load_store_instr_stream_1
                  lbu        ra, 1207(s9)
                  la         gp, region_0+1275 #start load_store_instr_stream_0
                  lb         t1, -170(gp)
                  lbu        a4, 141(gp)
                  lb         a0, 944(s9)
                  lhu        a0, 1888(s9)
                  sb         a1, 641(s9)
                  lh         a4, 161(gp)
                  sb         a0, -164(gp)
                  sb         s8, -1961(s9)
                  lb         s1, -73(s9)
                  sb         s0, -1256(s9)
                  lbu        a7, -202(gp)
                  lb         s11, -1669(s9)
                  lbu        s6, 218(gp)
                  lbu        ra, -975(s9)
                  sb         a5, 13(s9) #end load_store_instr_stream_1
                  sb         a7, -110(gp) #end load_store_instr_stream_0
                  la         t0, region_4+3278 #start load_store_instr_stream_2
                  la         s11, region_3+256 #start load_store_instr_stream_0
                  lw         a0, 626(t0)
                  sb         s5, -1507(t0)
                  lbu        gp, 7(s11)
                  sb         a0, -451(t0)
                  la         s6, region_1+4212 #start load_store_instr_stream_1
                  lbu        a7, 16(s11)
                  lhu        t4, 26(t0)
                  lh         zero, -250(t0)
                  lh         t3, 206(s6)
                  lh         ra, 460(t0)
                  lhu        a3, 336(t0)
                  sb         a5, -187(s6)
                  sb         t1, 4(s6)
                  lbu        s9, 38(s11)
                  sb         s7, -35(s11)
                  sh         t4, 112(s6)
                  lhu        gp, -1798(t0)
                  sb         a7, 36(s11)
                  lb         t1, 32(s6)
                  lw         zero, 482(t0)
                  lhu        a3, -158(s6)
                  lbu        s1, -189(t0) #end load_store_instr_stream_2
                  lh         t2, -26(s11)
                  sb         t6, -75(s6) #end load_store_instr_stream_1
                  lbu        s0, 43(s11) #end load_store_instr_stream_0
main_41:          jal        t4, 3f
0:                c.j        7f
1:                c.j        0b
2:                jal        t1, 9f
3:                c.j        5f
4:                c.jal      8f
5:                c.j        11f
6:                c.jal      1b
7:                c.jal      2b
8:                c.jal      6b
9:                c.jal      12f
10:               jal        ra, 4b
11:               jal        ra, 10b
12:               srai       a2, s10, 10
                  la         a4, region_1+11455 #start riscv_hazard_instr_stream_19
                  lb         t4, 882(a4)
                  sw         a6, -215(a4)
                  c.addi     t3, -1
                  sltu       a6, t4, s1
                  sb         s1, 20(a4)
                  and        s1, t3, a3
                  lbu        s11, 501(a4)
                  sb         a6, -151(a4)
                  slt        t3, a6, a3
                  lb         s11, -468(a4)
                  sb         t4, -426(a4)
                  csrrc      t3, 0x340, a6
                  lh         t4, -873(a4)
                  lb         a3, 1228(a4)
                  remu       a6, s1, a6
                  c.srai     s1, 6
                  sltu       a6, a3, s1
                  lb         s11, -212(a4)
                  lhu        s11, -1873(a4)
                  mul        s11, t3, t3
                  lbu        t3, 384(a4)
                  c.add      s1, a3
                  divu       s11, t4, t4
                  c.and      s1, s1
                  csrrs      a6, 0x340, s11
                  lbu        s1, -1645(a4)
                  sb         s1, 1305(a4)
                  fence.i
                  lbu        t3, -223(a4)
                  lbu        t4, -508(a4)
                  lb         t3, -1184(a4)
                  lb         s1, 543(a4) #end riscv_hazard_instr_stream_19
main_28:          jal        t4, 3f
0:                c.j        7f
1:                c.j        12f
2:                jal        t1, 9f
3:                c.jal      1b
4:                c.j        8f
5:                jal        ra, 2b
6:                c.jal      14f
7:                c.jal      6b
8:                c.j        10f
9:                c.jal      4b
10:               c.jal      11f
11:               c.j        0b
12:               jal        ra, 5b
13:               c.jal      15f
14:               c.jal      13b
15:               fence.i
                  la         s0, region_3+97 #start load_store_instr_stream_1
                  la         a6, region_4+675 #start load_store_instr_stream_0
                  lb         a0, 92(s0)
                  la         t6, region_1+7618 #start load_store_instr_stream_2
                  lbu        s6, -19(t6)
                  lw         s11, 34(t6)
                  sb         ra, 196(s0)
                  lb         t5, 54(t6)
                  lhu        gp, 31(a6)
                  sw         s6, -30(t6)
                  sb         s7, -71(a6)
                  lbu        gp, 188(s0)
                  lb         a0, 11(t6)
                  lb         t4, -21(t6)
                  lbu        tp, -80(a6)
                  lbu        t3, 9(t6)
                  lb         t5, -66(s0)
                  lh         a4, 30(t6)
                  lb         t0, 8(s0)
                  lh         ra, -1(a6)
                  sb         s2, -3(t6) #end load_store_instr_stream_2
                  sb         a5, 188(s0) #end load_store_instr_stream_1
                  lb         tp, -46(a6) #end load_store_instr_stream_0
main_25:          jal        t4, 14f
0:                c.j        7f
1:                c.jal      2f
2:                c.j        17f
3:                jal        ra, 8f
4:                c.jal      6f
5:                jal        gp, 19f
6:                jal        ra, 13f
7:                jal        ra, 9f
8:                c.jal      21f
9:                c.j        16f
10:               c.j        23f
11:               jal        ra, 18f
12:               c.j        15f
13:               c.jal      1b
14:               jal        t1, 22f
15:               c.j        5b
16:               c.jal      10b
17:               c.jal      11b
18:               c.j        20f
19:               jal        s3, 4b
20:               c.j        0b
21:               c.j        12b
22:               jal        a0, 3b
23:               mul        s9, t3, a7
                  la         s2, region_3+477 #start load_store_instr_stream_0
                  la         t4, region_3+444 #start load_store_instr_stream_1
                  lhu        zero, 6(t4)
                  lb         t3, -3(t4)
                  lb         zero, -394(s2)
                  lbu        tp, 8(t4)
                  lbu        a3, -324(s2)
                  lhu        s1, 0(t4)
                  sb         a6, -11(t4)
                  sw         s11, -37(s2)
                  lh         s9, 12(t4)
                  lbu        a5, -6(t4)
                  sh         s6, -443(s2)
                  sb         a4, -7(t4)
                  lbu        t2, -2(t4) #end load_store_instr_stream_1
                  sb         t1, -67(s2) #end load_store_instr_stream_0
                  la         s2, region_3+115 #start riscv_hazard_instr_stream_0
                  slli       s1, a2, 20
                  sb         ra, -20(s2)
                  lbu        a2, -68(s2)
                  sh         zero, -21(s2)
                  sra        a2, t0, zero
                  sb         t0, -112(s2)
                  lb         s1, 234(s2)
                  lb         s1, 136(s2)
                  lb         s1, 54(s2)
                  lw         s1, -55(s2)
                  lhu        ra, 25(s2)
                  auipc      t0, 556038
                  lbu        s1, -38(s2)
                  sltu       a2, t0, ra
                  csrrci     t0, 0x340, 1
                  csrrs      a2, 0x340, s0
                  csrrw      s0, 0x340, zero
                  c.andi     a2, 10
                  csrrwi     s0, 0x340, 31
                  lbu        zero, 58(s2)
                  remu       s0, s1, t0
                  sb         ra, -38(s2)
                  lui        ra, 627813
                  c.add      a2, s1
                  lb         zero, 179(s2)
                  xor        t0, s0, s0
                  sb         s0, 182(s2)
                  sll        s0, t0, s0
                  c.sub      s1, s1
                  csrrsi     a2, 0x340, 30
                  c.srli     s0, 20
                  c.srai     s1, 24
                  lb         t0, -84(s2)
                  csrrw      t0, 0x340, t0
                  srl        s1, s0, s1
                  c.srai     s1, 8
                  remu       s1, s1, a2
                  lbu        t0, 102(s2)
                  sb         s0, 128(s2)
                  auipc      a2, 1040601
                  c.srai     a2, 3
                  lb         s1, 22(s2)
                  lb         t0, -96(s2)
                  lbu        s1, 92(s2)
                  sll        t0, s1, a2
                  lbu        ra, 64(s2)
                  lbu        s1, 100(s2)
                  lb         t0, 222(s2)
                  sh         zero, 115(s2)
                  lh         s0, -23(s2)
                  auipc      a2, 938280
                  lw         s1, 197(s2)
                  lhu        ra, -111(s2)
                  lb         ra, 126(s2)
                  sb         s0, 146(s2)
                  c.mv       s1, s1
                  lbu        s0, 204(s2) #end riscv_hazard_instr_stream_0
                  la         a7, region_0+753 #start load_store_instr_stream_1
                  lhu        t3, 81(a7)
                  la         s0, region_0+1262 #start load_store_instr_stream_0
                  la         s6, region_0+2769 #start load_store_instr_stream_2
                  lbu        t2, -136(a7)
                  sb         s11, 10(s6)
                  lb         a1, 12(s6)
                  sw         a0, -2(s0)
                  sh         a7, -174(s0)
                  lb         s1, -105(s0)
                  lb         s10, -16(s6)
                  sh         a0, 77(a7)
                  lb         s1, -3(s0)
                  lb         a2, 6(s6)
                  lb         t1, -186(a7)
                  lbu        tp, -111(a7)
                  lh         tp, -93(a7)
                  lbu        t2, 12(s6)
                  lb         ra, -95(s0)
                  sb         tp, -68(a7)
                  lb         a5, 134(a7)
                  lb         t4, 5(s6)
                  lbu        zero, 109(s0)
                  sb         s7, 12(s6) #end load_store_instr_stream_2
                  sb         s2, -24(a7) #end load_store_instr_stream_1
                  lb         a6, 208(s0)
                  lhu        t2, 242(s0)
                  lbu        a1, -77(s0) #end load_store_instr_stream_0
                  la         a7, region_0+1824 #start load_store_instr_stream_1
                  la         a6, region_4+3769 #start load_store_instr_stream_0
                  la         s11, region_2+2299 #start load_store_instr_stream_2
                  .4byte 0x93e8 # kReservedCompressedInstr
                  lb         a4, 52(a6)
                  sb         a3, 2(s11)
                  sh         s5, 33(a6)
                  lb         s6, 3(a6)
                  la         ra, region_1+12166 #start load_store_instr_stream_3
                  lhu        t5, 36(ra)
                  lb         s6, -44(a6)
                  lb         zero, 0(s11)
                  lw         t2, 40(a7)
                  lbu        s8, 12(a6)
                  lb         t4, 59(a7)
                  lb         a5, -25(a6)
                  lb         a5, 31(a7)
                  lbu        a5, 64(a7)
                  lhu        s1, 10(ra)
                  sb         s8, -6(s11)
                  lb         gp, -11(ra)
                  sb         s4, 10(a6)
                  sb         ra, 3(ra)
                  sb         a3, 9(s11)
                  lb         zero, 37(ra)
                  sb         a2, -54(ra)
                  lw         a4, -11(s11)
                  lb         s2, -33(a7) #end load_store_instr_stream_1
                  lbu        s8, 33(ra)
                  lb         t6, -5(s11) #end load_store_instr_stream_2
                  lb         t4, -11(ra)
                  lbu        s2, -37(ra) #end load_store_instr_stream_3
                  lb         s10, 15(a6) #end load_store_instr_stream_0
main_35:          jal        t4, 4f
0:                jal        ra, 17f
1:                c.jal      14f
2:                c.jal      6f
3:                jal        ra, 5f
4:                c.jal      3b
5:                jal        t0, 2b
6:                c.jal      15f
7:                c.jal      19f
8:                c.jal      10f
9:                c.jal      11f
10:               c.jal      9b
11:               c.j        1b
12:               jal        ra, 8b
13:               c.jal      16f
14:               jal        gp, 13b
15:               c.j        18f
16:               jal        ra, 0b
17:               c.j        7b
18:               c.jal      12b
19:               c.srli     a0, 16
                  la         s9, region_2+7454 #start riscv_hazard_instr_stream_14
                  lb         zero, 62(s9)
                  csrrs      zero, 0x340, s6
                  lbu        a3, 7(s9)
                  sb         s8, -29(s9)
                  and        s8, a5, zero
                  lhu        zero, 56(s9)
                  remu       a3, s6, a5
                  sb         a3, -30(s9)
                  lbu        s6, 7(s9)
                  lbu        a3, -2(s9)
                  c.lui      a3, 21
                  sltiu      a3, a3, 107
                  srai       a5, a3, 14
                  lb         zero, 21(s9)
                  sb         zero, 48(s9)
                  .4byte 0x0a291cf3 # kIllegalSystemInstr
                  mulhsu     s8, zero, zero
                  lb         a5, -12(s9)
                  c.slli     s6, 1
                  csrrci     s6, 0x340, 8
                  lhu        s8, -8(s9)
                  lbu        s10, 14(s9)
                  lui        zero, 1029121
                  lbu        s6, 55(s9)
                  divu       s10, a5, a3
                  mulh       a3, a3, s10
                  lb         s8, 5(s9)
                  .4byte 0xc50a675b # kIllegalOpcode
                  sb         a5, 19(s9)
                  lb         s10, 61(s9)
                  c.srai     a3, 27
                  lhu        a3, -28(s9)
                  xori       s6, zero, 690
                  lb         s8, 49(s9)
                  c.li       s6, -1
                  sb         a5, 53(s9)
                  lh         a3, -56(s9)
                  c.lui      s8, 11
                  lb         s8, -47(s9)
                  lbu        s6, 38(s9)
                  and        a5, a3, a5
                  sltu       s8, s6, s6
                  c.sub      a3, a5
                  sb         s8, -23(s9)
                  srli       s10, s8, 8
                  mulhu      s6, s10, s10
                  sb         s6, 13(s9)
                  lhu        s10, -20(s9) #end riscv_hazard_instr_stream_14
                  addi       a4, zero, -7 #init loop 0 counter
                  csrrs      t4, 0x340, s4
                  addi       zero, zero, 0 #init loop 0 limit
                  c.mv       t2, gp
                  c.xor      a0, a2
                  mulhu      gp, t4, t3
main_93_0_t:      c.sub      a5, a3
                  addi       a4, a4, 7 #update loop 0 counter
                  c.srai     s1, 2
                  and        t2, a3, s1
                  lui        t5, 739835
                  c.beqz     a4, main_93_0_t #branch for loop 0
                  remu       gp, a2, t4
                  la         t4, region_3+452 #start riscv_load_store_rand_instr_stream_20
                  lbu        a3, -193(t4)
                  slt        a6, s3, s4
                  nop
                  sh         s2, -124(t4)
                  slt        tp, a5, a7
                  srli       a2, t3, 31
                  andi       s5, a6, 776
                  c.xor      a1, a1
                  andi       a7, a4, -862
                  lb         s11, -131(t4)
                  lb         s9, -143(t4)
                  lbu        a7, -129(t4)
                  lhu        a1, -148(t4)
                  lh         a3, -44(t4)
                  csrrw      a2, 0x340, s9
                  lb         t3, -93(t4)
                  srli       s10, s2, 18
                  sh         s11, 6(t4)
                  c.srli     s1, 3
                  lh         a6, 40(t4)
                  srli       a4, s5, 20
                  lbu        t1, -141(t4)
                  c.andi     a3, -1
                  sh         a6, -140(t4)
                  c.srli     a1, 10
                  sb         a4, -251(t4) #end riscv_load_store_rand_instr_stream_20
                  la         t4, region_0+3129 #start riscv_hazard_instr_stream_7
                  lbu        s6, -454(t4)
                  sll        s6, s9, a6
                  sb         a6, -714(t4)
                  c.add      s1, s0
                  div        s6, s10, s6
                  srai       s9, s9, 4
                  slti       s9, s0, 70
                  lui        s0, 944610
                  or         a6, a6, s6
                  div        a6, s6, s9
                  lbu        s6, 313(t4)
                  c.andi     s1, -1
                  lhu        s10, 943(t4)
                  srai       s10, s6, 17
                  c.andi     s0, -1
                  c.srli     s0, 23
                  sh         s1, -1295(t4)
                  lbu        s10, -1080(t4)
                  lui        s1, 164553
                  fence
                  lb         s10, -1891(t4)
                  sltiu      s9, s1, 1001
                  xori       s0, s10, 615
                  andi       s1, s9, 84
                  lbu        s1, 10(t4)
                  c.addi     s9, 25
                  lbu        s1, -22(t4)
                  sltiu      a6, s10, 208
                  ori        s0, a6, -481
                  lhu        s9, -1591(t4)
                  and        s6, s6, s9
                  lbu        a6, 440(t4)
                  lb         a6, 58(t4)
                  lui        a6, 709156
                  rem        s10, s0, s0
                  sltu       s9, s9, s10
                  c.add      s9, s10
                  csrrsi     s1, 0x340, 9
                  div        s10, a6, s1
                  sb         a6, 858(t4) #end riscv_hazard_instr_stream_7
                  la         t5, region_1+9040 #start load_store_instr_stream_1
                  sb         tp, -8(t5)
                  la         a4, region_3+106 #start load_store_instr_stream_0
                  lb         s3, -13(t5)
                  lb         t4, -19(a4)
                  lb         s8, 5(t5)
                  sb         a7, 20(a4)
                  lb         s11, -63(a4)
                  lb         a2, 1(t5)
                  sb         a0, -1(t5)
                  sh         zero, -62(a4)
                  lb         s0, -6(t5)
                  sb         s8, 63(a4)
                  sh         s7, 16(a4)
                  sb         s6, 26(a4)
                  lb         s1, -9(t5) #end load_store_instr_stream_1
                  sb         a5, -5(a4) #end load_store_instr_stream_0
                  .4byte 0x848a0af3 # kIllegalSystemInstr
                  la         a0, region_1+8280 #start load_store_instr_stream_1
                  la         s8, region_1+8115 #start load_store_instr_stream_0
                  sb         s8, 1963(a0)
                  sb         t1, 36(s8)
                  lb         s1, 19(s8)
                  sb         a7, 1553(a0)
                  sb         ra, 18(s8)
                  sb         t0, -581(a0)
                  sw         a6, -39(s8)
                  lbu        t5, -32(s8)
                  lhu        t6, -55(s8)
                  lb         s3, 20(s8)
                  lbu        s0, -9(s8)
                  lbu        a2, 1011(a0)
                  sb         s7, 1276(a0) #end load_store_instr_stream_1
                  lw         a6, -11(s8)
                  sb         t5, -40(s8) #end load_store_instr_stream_0
                  la         t1, region_2+7406 #start riscv_hazard_instr_stream_4
                  sh         a4, -6(t1)
                  sb         a6, -1621(t1)
                  c.andi     a4, -1
                  sb         s3, -1621(t1)
                  c.and      a4, a5
                  srli       s3, a5, 0
                  csrrw      a6, 0x340, a5
                  or         t4, a6, a5
                  c.srai     a4, 28
                  c.add      a6, t4
                  andi       s3, t4, 426
                  xori       s3, s3, 164
                  sh         a5, -876(t1)
                  lbu        a4, -2027(t1)
                  sb         t4, -295(t1)
                  sb         a5, -1567(t1)
                  sltu       a5, a5, a6
                  csrrs      t4, 0x340, a5
                  lb         t4, 171(t1)
                  sb         a5, 263(t1)
                  c.li       s3, -1
                  nop
                  sra        t5, t5, a4
                  mulhsu     a5, a6, a4
                  rem        a5, t4, a5
                  lbu        t5, -1916(t1)
                  lb         a5, -671(t1)
                  lb         a6, -691(t1)
                  lb         t4, -145(t1)
                  ori        s3, s3, -722
                  fence
                  srai       t4, a6, 1
                  add        a6, s3, a5
                  lb         a5, 203(t1)
                  c.andi     a4, -1
                  sb         t4, -1623(t1)
                  sb         a5, 720(t1)
                  fence
                  lb         s3, -596(t1)
                  srl        a4, a5, s3
                  lui        a6, 241972
                  fence.i
                  sltiu      a4, s3, 147
                  c.addi     a5, -1
                  auipc      t5, 114948
                  mulhsu     t4, a5, a4
                  slti       s3, s3, 145
                  sb         a5, -101(t1)
                  lb         s3, 294(t1) #end riscv_hazard_instr_stream_4
                  addi       a4, zero, -5 #init loop 0 counter
                  mulhu      a3, sp, t2
                  csrrsi     a3, 0x340, 31
                  andi       tp, ra, -198
                  mulh       s2, a4, s2
                  c.or       a2, a1
                  c.addi     t5, 7
                  sltiu      t2, a6, 466
                  ori        t4, a3, -305
                  addi       s3, zero, -5 #init loop 0 limit
                  c.li       t2, -1
main_104_0_t:     and        s8, a4, t3
                  lui        s6, 516418
                  slti       s6, a2, -45
                  addi       a4, a4, -2 #update loop 0 counter
                  auipc      s10, 262429
                  ori        s10, t1, 262
                  div        ra, s3, s0
                  or         tp, a6, ra
                  xori       a0, s1, -117
                  srai       gp, t3, 30
                  bge        a4, s3, main_104_0_t #branch for loop 0
                  c.add      s9, t0
                  addi       s1, zero, 2 #init loop 0 counter
                  ori        a7, t6, 19
                  add        a4, t6, s6
                  xor        t0, s3, s1
                  c.slli     t2, 18
                  c.add      s3, s9
                  c.xor      a3, a2
                  c.addi     t5, 23
                  addi       t6, zero, -19 #init loop 0 limit
                  c.srai     a0, 23
main_106_0_t:     mulhsu     s10, t5, s10
                  slli       t1, zero, 31
                  c.and      a2, a2
                  addi       gp, t0, 363
                  csrrsi     a1, 0x340, 30
                  xori       t2, s11, -378
                  or         a7, t0, s1
                  nop
                  c.addi     t2, 7
                  addi       s1, s1, -7 #update loop 0 counter
                  bge        s1, t6, main_106_0_t #branch for loop 0
                  c.slli     s11, 7
                  la         s0, region_0+2767 #start load_store_instr_stream_2
                  la         t2, region_1+8413 #start load_store_instr_stream_3
                  la         a2, region_3+101 #start load_store_instr_stream_0
                  sb         a0, -10(t2)
                  sb         s10, 148(s0)
                  lbu        a7, -182(s0)
                  lb         zero, -10(a2)
                  sb         gp, 12(a2)
                  lbu        a0, -4(t2)
                  sb         t1, 94(s0)
                  la         t1, region_2+8064 #start load_store_instr_stream_1
                  lb         s9, -3(t2)
                  sh         t6, 149(s0)
                  lw         s1, -4(t1)
                  sb         ra, -10(t2)
                  sb         s6, -57(t1)
                  lb         a4, -8(a2)
                  lbu        s2, -8(t2)
                  lbu        s1, 46(t1)
                  sh         t0, -11(t2)
                  sb         s7, -16(a2)
                  lb         ra, -17(t1)
                  lbu        t0, 12(t2)
                  lbu        s6, 13(t1)
                  lb         t6, -12(t2)
                  lb         tp, 12(a2)
                  lbu        s11, 7(a2)
                  sb         zero, 10(t2) #end load_store_instr_stream_3
                  sb         a2, 14(t1)
                  sb         s11, 98(s0)
                  lbu        a6, 58(s0)
                  lh         t4, 50(t1) #end load_store_instr_stream_1
                  lb         t0, -54(s0) #end load_store_instr_stream_2
                  lbu        a7, -7(a2) #end load_store_instr_stream_0
                  addi       a5, zero, -1 #init loop 0 counter
                  or         gp, s0, t1
                  xori       a4, sp, 179
                  c.or       a1, a4
                  srli       tp, a7, 26
                  rem        s3, s2, ra
                  addi       a0, zero, -11 #init loop 0 limit
                  auipc      t0, 67858
main_100_0_t:     nop
                  sltiu      s2, t6, -368
                  srl        tp, s11, t1
                  c.li       a1, -1
                  c.and      a1, a2
                  addi       a5, a5, -10 #update loop 0 counter
                  c.addi     ra, 14
                  fence.i
                  csrrw      s2, 0x340, t4
                  mulhu      s9, a3, s10
                  sub        a2, a1, t4
                  bne        a5, a0, main_100_0_t #branch for loop 0
                  sub        s8, a4, a5
main_39:          jal        t4, 2f
0:                c.jal      10f
1:                jal        t5, 20f
2:                c.j        1b
3:                c.jal      16f
4:                c.j        12f
5:                c.j        18f
6:                c.j        14f
7:                jal        tp, 3b
8:                c.jal      11f
9:                jal        ra, 8b
10:               c.jal      5b
11:               c.jal      4b
12:               c.jal      21f
13:               jal        ra, 15f
14:               c.jal      17f
15:               c.j        19f
16:               c.j        0b
17:               c.jal      13b
18:               c.j        22f
19:               jal        ra, 25f
20:               c.jal      23f
21:               c.jal      6b
22:               c.jal      24f
23:               c.j        7b
24:               jal        t0, 9b
25:               csrrsi     t0, 0x340, 17
                  la         s2, region_0+1773 #start load_store_instr_stream_1
                  lw         a2, -13(s2)
                  la         t6, region_4+733 #start load_store_instr_stream_2
                  sb         zero, -202(t6)
                  la         t1, region_3+314 #start load_store_instr_stream_0
                  lb         a7, -82(t6)
                  sb         t2, -2(s2)
                  sb         a7, 10(s2)
                  lbu        tp, 8(t6)
                  sb         t6, -141(t1)
                  lbu        a3, 218(t6)
                  lh         s6, -70(t1)
                  sb         gp, 53(t6)
                  sb         ra, -148(t6)
                  lbu        ra, 187(t1)
                  sb         s6, -10(s2)
                  lh         a3, -237(t6)
                  lh         gp, -201(t6)
                  sb         s8, -12(s2)
                  lbu        a4, -94(t1)
                  sh         t5, -199(t6)
                  lb         s8, 1(s2) #end load_store_instr_stream_1
                  lh         s8, -221(t6) #end load_store_instr_stream_2
                  lh         a6, 112(t1) #end load_store_instr_stream_0
                  la         t6, region_2+3927 #start load_store_instr_stream_2
                  lbu        s6, -30(t6)
                  lbu        a0, -21(t6)
                  la         s10, region_1+9984 #start load_store_instr_stream_3
                  la         t2, region_3+24 #start load_store_instr_stream_1
                  lbu        a4, -24(t6)
                  lbu        tp, 11(t2)
                  lbu        t0, -555(s10)
                  lb         t1, -659(s10)
                  la         t4, region_4+869 #start load_store_instr_stream_0
                  la         ra, region_0+4093 #start load_store_instr_stream_4
                  lb         gp, -40(t6)
                  lb         a1, -11(ra)
                  lh         t1, 9(t4)
                  sh         t6, 21(t6)
                  lh         a2, 6(t2)
                  lbu        a3, -166(s10)
                  lb         s5, -13(t2)
                  lb         a7, -946(s10)
                  lbu        gp, 435(s10)
                  lb         s0, -15(t2)
                  lhu        a5, -11(ra)
                  lbu        tp, -2(ra)
                  lb         s2, 614(s10)
                  sh         s2, -1(ra)
                  lbu        t5, 36(t6)
                  lb         t3, 56(t6)
                  lh         t0, -6(t2)
                  sh         s6, -37(t6)
                  sb         t3, -6(t4)
                  lbu        a1, -2(t4)
                  sb         s8, 1047(s10)
                  sb         s6, -16(t4)
                  sb         a1, -1500(s10)
                  sh         s3, -5(ra)
                  lbu        s1, 20(t6)
                  lbu        a1, -4(t4)
                  sb         a4, -14(ra)
                  sb         s6, -10(ra)
                  lb         a3, 306(s10)
                  sb         a2, 7(t2) #end load_store_instr_stream_1
                  sb         s9, -12(ra)
                  lh         s3, 25(t6) #end load_store_instr_stream_2
                  lbu        a1, -11(ra) #end load_store_instr_stream_4
                  lhu        s0, 1796(s10) #end load_store_instr_stream_3
                  lw         tp, -5(t4) #end load_store_instr_stream_0
                  la         s8, region_4+2290 #start load_store_instr_stream_0
                  sb         s7, -241(s8)
                  la         t0, region_1+7376 #start load_store_instr_stream_1
                  la         ra, region_2+1517 #start load_store_instr_stream_2
                  sb         s6, -92(s8)
                  lb         tp, -7(t0)
                  lbu        a4, -15(ra)
                  lb         a0, 2(ra)
                  lbu        t1, 16(ra)
                  sb         a3, 9(t0)
                  sb         s5, 15(t0)
                  sb         a6, -16(ra)
                  lbu        t1, -29(s8)
                  sb         s10, 119(s8)
                  lbu        zero, -9(t0)
                  sb         s10, 187(s8)
                  lbu        a2, -150(s8)
                  sb         t0, 2(ra)
                  lh         zero, 0(t0)
                  lb         t2, -5(t0)
                  lh         s2, 3(ra)
                  sb         t5, -8(ra)
                  lbu        a6, 211(s8)
                  lhu        t6, 14(t0)
                  lb         s11, -5(t0) #end load_store_instr_stream_1
                  sb         sp, -16(ra)
                  sb         t5, 131(s8)
                  sh         gp, 1(ra) #end load_store_instr_stream_2
                  lbu        a5, -192(s8) #end load_store_instr_stream_0
                  la         t3, region_1+3877 #start load_store_instr_stream_2
                  la         t0, region_0+2138 #start load_store_instr_stream_1
                  .4byte 0x5002 # kReservedCompressedInstr
                  sw         s10, 10(t0)
                  sb         ra, 5(t0)
                  la         s1, region_3+90 #start load_store_instr_stream_3
                  lw         t2, -2(t0)
                  lh         s11, 241(t3)
                  lb         s2, -1899(t3)
                  la         a1, region_4+2155 #start load_store_instr_stream_0
                  la         s3, region_2+3977 #start load_store_instr_stream_4
                  lb         s0, 59(s1)
                  lbu        s2, -1760(t3)
                  lb         t1, 808(a1)
                  lb         s2, 1006(t3)
                  sb         tp, 1294(s3)
                  sb         s4, -469(s3)
                  sh         t1, -8(t0)
                  sh         s6, -477(s3)
                  lbu        a5, 15(t0)
                  sb         s7, 1357(a1)
                  lb         s8, 82(s1)
                  lb         t5, 1998(t3)
                  lhu        s5, 1895(s3)
                  lb         ra, 834(a1)
                  lb         a4, 872(a1)
                  lhu        zero, -181(s3)
                  sb         t4, 14(t0)
                  lb         zero, -1938(a1)
                  sb         s5, 115(s1)
                  sb         tp, -1570(t3)
                  sb         s1, 212(s1)
                  sb         t5, -6(t0)
                  lb         s11, -204(a1)
                  lbu        s11, 105(s1) #end load_store_instr_stream_3
                  sw         a3, 971(t3)
                  lbu        tp, -14(t0)
                  lh         a7, 1867(s3)
                  lhu        t6, -1555(s3)
                  lh         s5, -1773(t3)
                  lbu        a6, 968(a1)
                  lbu        s10, -446(a1)
                  lb         a7, -1847(t3)
                  sw         sp, -1173(s3)
                  sb         s8, -5(t0) #end load_store_instr_stream_1
                  lb         s10, 942(s3)
                  lhu        a7, 1447(a1)
                  sh         zero, -1795(t3) #end load_store_instr_stream_2
                  lbu        zero, 1930(s3) #end load_store_instr_stream_4
                  sb         a3, -1523(a1) #end load_store_instr_stream_0
                  la         s0, region_4+83 #start load_store_instr_stream_1
                  lb         a4, -48(s0)
                  la         a1, region_2+7722 #start load_store_instr_stream_0
                  lb         a2, 225(s0)
                  lw         s3, -10(a1)
                  lb         a3, 207(s0)
                  lb         t6, -5(a1)
                  sb         a4, -3(a1)
                  lb         tp, 15(a1)
                  lh         ra, -8(a1)
                  lbu        a2, -1(a1)
                  sb         s6, 68(s0)
                  sh         zero, -12(a1)
                  lb         s3, -14(s0)
                  lb         s9, -70(s0)
                  sb         t0, 22(s0) #end load_store_instr_stream_1
                  lb         a3, -1(a1) #end load_store_instr_stream_0
main_23:          jal        t4, 2f
0:                c.jal      10f
1:                c.j        4f
2:                jal        ra, 6f
3:                c.j        0b
4:                c.jal      8f
5:                jal        ra, 9f
6:                c.jal      7f
7:                c.jal      11f
8:                c.j        12f
                  .4byte 0xaab37373 # kIllegalSystemInstr
9:                jal        t1, 3b
10:               jal        s6, 1b
11:               c.j        5b
12:               slli       a1, t2, 16
                  la         a5, region_4+46 #start riscv_load_store_rand_instr_stream_12
                  sra        a1, s9, s10
                  addi       s6, t2, 679
                  mulh       s0, a4, s6
                  c.nop
                  c.slli     a7, 13
                  c.mv       s2, a1
                  lb         s5, -7(a5)
                  fence.i
                  add        s1, t2, t0
                  sb         t4, 5(a5)
                  lbu        a0, 11(a5)
                  addi       s0, a6, 360
                  lbu        t4, -9(a5)
                  and        t5, a3, s0
                  c.mv       t3, t0
                  sb         t3, -10(a5)
                  sb         s5, -7(a5)
                  lbu        t2, 8(a5)
                  c.andi     a2, 25
                  add        t6, t6, s0
                  xor        s5, ra, a5
                  c.addi     s1, -1
                  slt        a3, a7, t4
                  csrrsi     s9, 0x340, 13
                  divu       zero, a1, s7
                  lh         s2, -12(a5)
                  srli       t4, t3, 10
                  sb         s11, 15(a5)
                  csrrwi     s11, 0x340, 1
                  sw         s5, -2(a5)
                  lui        s6, 531188
                  lbu        t0, -7(a5)
                  lb         a0, 6(a5)
                  csrrsi     a3, 0x340, 29
                  srai       s9, a6, 23
                  csrrwi     s1, 0x340, 10
                  c.xor      s0, s1
                  lui        t2, 463748
                  nop
                  lb         t2, -4(a5)
                  lb         zero, 2(a5) #end riscv_load_store_rand_instr_stream_12
                  addi       a3, zero, 10 #init loop 0 counter
                  srai       s5, a3, 14
                  addi       zero, zero, 0 #init loop 0 limit
                  sll        t6, s10, a0
main_94_0_t:      c.mv       s10, sp
                  addi       a3, a3, -2 #update loop 0 counter
                  c.xor      a4, a1
                  xor        t6, a2, zero
                  sltu       gp, s3, s4
                  c.bnez     a3, main_94_0_t #branch for loop 0
                  srli       t3, s10, 22
                  la         a2, region_1+3969 #start load_store_instr_stream_3
                  la         a1, region_1+2062 #start load_store_instr_stream_4
                  la         t1, region_1+15786 #start load_store_instr_stream_1
                  lw         a4, 7(a2)
                  sb         a2, -24(t1)
                  lb         s6, 11(a1)
                  la         s11, region_1+3947 #start load_store_instr_stream_2
                  lhu        s0, -12(a1)
                  lh         t5, -12(t1)
                  la         t2, region_1+2111 #start load_store_instr_stream_0
                  sb         a4, -10(a2)
                  sb         s1, 58(s11)
                  lbu        tp, -63(t1)
                  lb         t3, 699(t2)
                  lbu        t3, -26(s11)
                  sh         t1, -1637(t2)
                  lb         s0, 7(t1)
                  sw         s10, 10(a1)
                  sb         sp, 1740(t2)
                  sb         s4, 58(s11)
                  sb         s9, -2(a2)
                  sb         t2, -14(a2)
                  lbu        a0, 1397(t2)
                  sb         sp, -1720(t2)
                  sb         s1, -10(a2)
                  sh         a5, -31(s11)
                  lbu        a4, -14(a2)
                  lhu        a5, 12(a1)
                  lb         s10, 16(t1)
                  sw         tp, -1871(t2)
                  sb         t2, -1763(t2)
                  sb         s4, -16(a2) #end load_store_instr_stream_3
                  sb         a3, 51(s11)
                  sb         t3, -36(t1)
                  lb         a7, -21(t1) #end load_store_instr_stream_1
                  sb         a0, 4(a1) #end load_store_instr_stream_4
                  sb         s10, 0(t2)
                  lbu        s1, 53(s11) #end load_store_instr_stream_2
                  lbu        a0, 1874(t2) #end load_store_instr_stream_0
                  la         s8, region_3+60 #start riscv_hazard_instr_stream_5
                  srl        s9, a3, s2
                  sb         s2, 234(s8)
                  sb         s2, 72(s8)
                  c.li       t1, -1
                  lhu        s2, 76(s8)
                  auipc      s2, 145904
                  lbu        t1, 13(s8)
                  lbu        t0, 237(s8)
                  c.and      a3, a3
                  lh         s9, 240(s8)
                  srl        s2, s9, t1
                  divu       s9, t0, tp
                  lh         t1, -14(s8)
                  nop
                  sltiu      s2, s2, 645
                  lb         tp, 145(s8)
                  lb         t1, 143(s8)
                  sw         s9, -48(s8)
                  lbu        s2, 173(s8)
                  or         tp, a3, s9
                  lb         s2, 83(s8)
                  lw         tp, 220(s8)
                  lb         t0, 69(s8)
                  lbu        a3, 97(s8)
                  sh         t1, 128(s8)
                  c.or       a3, a3
                  mulhu      a3, a3, t0
                  c.and      a3, a3
                  csrrs      s9, 0x340, a3
                  c.add      tp, t1
                  sb         s9, 1(s8)
                  c.sub      a3, a3
                  csrrsi     a3, 0x340, 22
                  lbu        s9, 83(s8)
                  lbu        s2, 10(s8)
                  lbu        t1, 20(s8)
                  lb         s2, 122(s8)
                  sb         t0, -45(s8)
                  lb         s2, 245(s8)
                  remu       t0, tp, t1
                  lbu        a3, 54(s8)
                  remu       t1, a3, t1
                  sb         t0, -57(s8) #end riscv_hazard_instr_stream_5
                  la         gp, region_4+1651 #start load_store_instr_stream_1
                  la         s6, region_1+11540 #start load_store_instr_stream_3
                  lb         t6, -1506(gp)
                  la         a1, region_3+430 #start load_store_instr_stream_0
                  lbu        s10, -1(a1)
                  lb         s1, 7(a1)
                  lhu        s0, -493(gp)
                  lbu        a5, -189(gp)
                  lbu        zero, 15(a1)
                  lbu        a6, 1795(gp)
                  la         t0, region_2+3483 #start load_store_instr_stream_2
                  lb         s1, -1558(s6)
                  lh         t6, -902(s6)
                  sb         s8, 11(a1)
                  lhu        s10, -581(gp)
                  lb         s11, 88(t0)
                  lb         a4, 1238(gp)
                  lbu        tp, 817(gp)
                  sb         s3, -1(a1)
                  sb         s10, -15(a1)
                  lbu        s2, -835(gp)
                  lh         tp, -169(t0)
                  lb         a4, 214(t0)
                  lb         s8, 1(a1)
                  sb         s8, 90(t0)
                  sw         ra, -95(gp)
                  lb         a5, 2008(s6)
                  lb         a6, 200(t0) #end load_store_instr_stream_2
                  lbu        tp, 12(a1)
                  lbu        a6, 563(s6)
                  lhu        s5, 776(s6) #end load_store_instr_stream_3
                  lb         a5, 886(gp) #end load_store_instr_stream_1
                  sw         a4, 6(a1) #end load_store_instr_stream_0
                  la         a2, region_2+2669 #start riscv_hazard_instr_stream_16
                  lb         a5, -52(a2)
                  c.xor      a5, a5
                  or         zero, zero, zero
                  lb         zero, 63(a2)
                  lb         a6, -3(a2)
                  c.mv       a5, a5
                  c.sub      a1, a5
                  div        a7, t6, a1
                  lhu        a5, -25(a2)
                  sb         t6, 17(a2)
                  srl        a7, a5, a5
                  lh         t6, -53(a2)
                  lhu        zero, -43(a2)
                  slti       a1, a1, 325
                  sltu       a6, t6, a1
                  c.sub      a1, a1
                  sh         t6, -37(a2)
                  c.or       a5, a1
                  mulhsu     a6, a1, a7
                  c.sub      a5, a5
                  c.add      a1, t6
                  c.srai     a1, 19
                  slti       a1, a7, -689
                  lbu        a5, -32(a2)
                  lw         t6, 63(a2)
                  sltiu      a7, a7, -71
                  sb         a7, -24(a2)
                  csrrs      zero, 0x340, t6
                  add        zero, t6, zero
                  csrrw      a1, 0x340, a5
                  slt        a6, a6, a5
                  sra        zero, a1, a6
                  nop
                  c.xor      a5, a1
                  sb         a5, 24(a2) #end riscv_hazard_instr_stream_16
                  la         s1, region_1+2664 #start load_store_instr_stream_3
                  lbu        t3, 23(s1)
                  la         t2, region_2+4756 #start load_store_instr_stream_0
                  la         a4, region_0+1137 #start load_store_instr_stream_1
                  la         t5, region_3+276 #start load_store_instr_stream_2
                  sb         a1, 30(s1)
                  la         a5, region_4+2410 #start load_store_instr_stream_4
                  sb         s8, -32(s1)
                  lhu        t4, 50(t2)
                  lbu        gp, 49(t5)
                  lb         tp, 34(t5)
                  sb         zero, 60(a5)
                  lh         zero, -36(t2)
                  lw         t1, -20(t5)
                  sb         a3, 4(a4)
                  sh         a4, 34(t5)
                  lb         s5, 59(t5)
                  lb         a6, 19(s1)
                  lbu        s3, -29(a5)
                  sw         s5, -28(t2)
                  lbu        ra, -62(s1)
                  lb         s9, 37(a5)
                  lbu        s9, -41(t2)
                  lb         s3, 42(a5)
                  lb         s0, -45(a5)
                  lb         a1, -40(a4)
                  sw         t2, -58(a5)
                  lb         t1, -58(a4)
                  lb         a6, 42(a4)
                  sb         t3, 39(t5)
                  sb         a4, -1(t5)
                  lbu        a1, -23(t2)
                  lw         t1, 35(a4) #end load_store_instr_stream_1
                  sh         a3, 12(t5)
                  lbu        gp, -30(t5) #end load_store_instr_stream_2
                  sb         t3, -5(s1)
                  lh         s11, -30(a5) #end load_store_instr_stream_4
                  lb         s0, 9(s1) #end load_store_instr_stream_3
                  lb         t6, 45(t2) #end load_store_instr_stream_0
                  la         s6, region_2+930 #start load_store_instr_stream_0
                  la         s0, region_2+4922 #start load_store_instr_stream_3
                  lbu        t1, 11(s6)
                  la         t6, region_2+1221 #start load_store_instr_stream_1
                  sb         s9, 79(s0)
                  lbu        s11, -139(t6)
                  sh         tp, -1566(s0)
                  la         t2, region_2+8167 #start load_store_instr_stream_2
                  la         t5, region_2+2378 #start load_store_instr_stream_4
                  lb         a4, 1025(t5)
                  sh         a2, -13(t2)
                  lb         t4, -1429(t5)
                  lbu        s11, 509(s0)
                  lb         a4, -91(t5)
                  lb         tp, -1948(t5)
                  sh         s10, 1316(s0)
                  lbu        a6, -21(t6)
                  lh         s9, 848(s0)
                  lb         a2, -590(t5)
                  sb         a6, 16(s6)
                  lbu        s8, -667(t5)
                  lbu        s2, 1(t2)
                  lbu        s8, 55(t6)
                  lhu        s9, -10(s6)
                  lbu        a4, 13(s6)
                  sb         a7, -1445(t5)
                  lw         s10, 227(t6)
                  lb         a0, 4(t2)
                  sb         s1, -5(s6)
                  sb         gp, 1978(s0)
                  lb         s11, 0(t2)
                  lb         zero, -915(t5)
                  sb         sp, -1916(s0)
                  lbu        a6, 795(s0) #end load_store_instr_stream_3
                  sh         s4, -227(t6) #end load_store_instr_stream_1
                  sb         gp, -12(t2) #end load_store_instr_stream_2
                  lbu        a3, -1267(t5) #end load_store_instr_stream_4
                  sb         gp, -8(s6) #end load_store_instr_stream_0
                  la         s3, region_0+989 #start riscv_load_store_rand_instr_stream_0
                  andi       t1, t3, -975
                  csrrs      s8, 0x340, a2
                  lbu        a3, 118(s3)
                  lb         a5, -340(s3)
                  c.sub      a3, a3
                  sb         s4, 1235(s3)
                  divu       s2, a7, a7
                  lhu        gp, -41(s3)
                  sb         s7, 1281(s3)
                  mulhu      a0, s10, t0
                  rem        a5, gp, t2
                  ori        ra, t0, 961
                  lb         a3, -934(s3)
                  sh         sp, 265(s3)
                  srl        a6, t4, a5
                  sh         a7, -723(s3)
                  srli       t4, t4, 27
                  lh         tp, 1145(s3)
                  slti       s10, s6, -709
                  lhu        ra, 219(s3)
                  lh         s0, 263(s3)
                  and        t4, a2, s7
                  sb         a1, 455(s3)
                  sub        t2, s8, t1
                  lb         a5, 340(s3)
                  ori        ra, s0, 978
                  slti       a1, s9, -85
                  sltu       a7, s11, s3
                  mulhu      t2, t4, s3
                  slti       a3, a4, -850
                  lw         a1, 911(s3)
                  lhu        s11, -67(s3)
                  sb         s6, 1421(s3)
                  sw         a0, 1235(s3)
                  sltiu      ra, a4, -697
                  c.xor      s1, a5
                  sb         sp, 625(s3)
                  c.andi     s0, -1
                  fence
                  div        a1, s9, s7
                  lh         a0, -697(s3)
                  c.or       a3, a4
                  lhu        a7, 1015(s3)
                  lh         ra, -673(s3)
                  lbu        s9, -672(s3) #end riscv_load_store_rand_instr_stream_0
                  addi       t5, zero, 8 #init loop 0 counter
                  mulh       s6, s5, t1
                  c.slli     tp, 15
                  c.lui      t4, 4
                  mulh       a0, s9, a2
                  slli       a0, a4, 13
                  sltiu      s1, t3, -729
                  xori       a6, s11, -375
                  srl        t3, ra, s0
                  csrrwi     a0, 0x340, 13
                  csrrw      s3, 0x340, s10
                  c.andi     a2, -1
                  c.addi     t4, 8
                  c.and      a1, a1
                  fence.i
                  c.andi     a4, -1
                  addi       s11, zero, 18 #init loop 0 limit
main_105_0_t:     c.or       a1, a4
                  srai       s9, t5, 6
                  csrrsi     t4, 0x340, 21
                  addi       t5, t5, 1 #update loop 0 counter
                  c.sub      a3, s0
                  lui        a7, 530363
                  csrrwi     s9, 0x340, 4
                  xor        s10, s2, t3
                  add        s0, s1, s10
                  csrrw      s10, 0x340, s5
                  bltu       t5, s11, main_105_0_t #branch for loop 0
                  csrrwi     gp, 0x340, 8
                  la         t0, region_0+3619 #start riscv_load_store_rand_instr_stream_4
                  lb         a6, 17(t0)
                  lb         s6, -12(t0)
                  auipc      t5, 256871
                  lw         a4, 45(t0)
                  fence.i
                  rem        a6, s2, s2
                  sb         s11, -22(t0)
                  nop
                  lbu        tp, -38(t0)
                  lhu        t3, 5(t0)
                  lbu        a2, -44(t0)
                  sb         s4, -18(t0)
                  lh         s2, -41(t0)
                  sh         s8, -5(t0)
                  xori       t6, s11, -127
                  mulh       s11, a5, a2
                  mulhsu     tp, a6, t1
                  c.andi     a3, -1
                  sh         a1, -33(t0)
                  lb         t3, -13(t0)
                  lbu        s5, -10(t0)
                  sb         a1, 4(t0)
                  remu       s10, gp, a3
                  sub        a1, a6, s4
                  lhu        s11, -17(t0)
                  lh         a2, -21(t0)
                  lbu        s11, -34(t0)
                  lb         t2, -25(t0)
                  sh         sp, 39(t0)
                  c.sub      a3, a0
                  lb         a6, -12(t0)
                  lw         s9, -19(t0)
                  sb         t2, 0(t0)
                  c.or       a1, a4
                  lb         a4, -54(t0)
                  lhu        a2, 5(t0)
                  lh         a6, 19(t0)
                  csrrwi     s11, 0x340, 16
                  lb         t4, -46(t0)
                  rem        s2, s5, a1
                  nop
                  sb         t3, -28(t0) #end riscv_load_store_rand_instr_stream_4
                  la         a1, region_0+2583 #start riscv_load_store_rand_instr_stream_9
                  and        s5, t0, t0
                  lbu        a5, -1446(a1)
                  lui        t3, 591086
                  nop
                  lhu        t6, 1319(a1)
                  lb         a3, -1030(a1)
                  sub        s10, a7, gp
                  xori       s5, s6, 424
                  c.mv       s0, t4
                  sh         a4, 1175(a1)
                  nop
                  auipc      a2, 259415
                  lb         t3, -954(a1)
                  lw         a6, 153(a1)
                  csrrwi     t4, 0x340, 18
                  div        t2, sp, t6
                  csrrci     a0, 0x340, 7
                  lhu        a0, -89(a1)
                  c.and      a3, a4
                  slti       a0, s9, 119
                  sb         a1, 490(a1)
                  lb         s8, 358(a1)
                  sb         tp, -1841(a1)
                  c.andi     s1, -1
                  mul        s11, zero, a0
                  andi       t2, a4, -429
                  sh         t3, 1237(a1)
                  c.li       s6, 18
                  slti       s9, t6, 375
                  srli       t3, s11, 5
                  mulh       t1, s4, t2
                  sb         a1, -1478(a1)
                  andi       s9, t1, -141
                  c.srai     a4, 13
                  lbu        a3, 1300(a1)
                  lh         a0, -1877(a1)
                  csrrs      s2, 0x340, s4
                  lbu        t2, 1470(a1)
                  div        t6, a2, s1
                  csrrc      tp, 0x340, t6
                  xori       a5, s0, 617
                  lh         a0, 1141(a1)
                  lhu        a6, -947(a1)
                  or         s2, s0, a4
                  c.lui      t2, 4
                  lb         a3, 933(a1)
                  c.nop
                  lb         s5, -1488(a1)
                  sh         t5, -243(a1)
                  csrrsi     a3, 0x340, 9
                  sb         sp, -1390(a1)
                  sh         a1, -1277(a1) #end riscv_load_store_rand_instr_stream_9
                  la         a4, region_2+3354 #start load_store_instr_stream_2
                  la         a3, region_4+950 #start load_store_instr_stream_0
                  lb         a7, 5(a3)
                  lb         ra, -15(a3)
                  la         t2, region_3+111 #start load_store_instr_stream_1
                  lb         s2, 1(a4)
                  lbu        s0, -27(a3)
                  sb         s4, -15(a4)
                  sb         a5, 8(t2)
                  lb         a6, 14(a3)
                  lbu        t1, -12(a4)
                  lw         s11, -15(t2)
                  sb         zero, 45(a3)
                  sb         a6, 49(a3)
                  lbu        a7, 14(a4)
                  sb         s9, -55(a3)
                  lhu        s8, 16(a4)
                  sh         a5, -11(t2)
                  sb         s0, -2(t2)
                  sh         s3, -12(a4)
                  lbu        a0, -11(a3)
                  sb         t5, 12(t2)
                  lbu        a7, 5(t2)
                  sh         tp, -16(a4)
                  lbu        a1, -5(a4)
                  lhu        a1, 10(a4)
                  lbu        s10, 13(a4) #end load_store_instr_stream_2
                  lb         t3, -13(a3)
                  lb         gp, 11(t2)
                  sb         s3, 10(t2) #end load_store_instr_stream_1
                  lhu        s8, 8(a3) #end load_store_instr_stream_0
                  addi       gp, zero, -8 #init loop 1 counter
                  addi       s6, zero, 18 #init loop 1 limit
main_98_1_t:      c.nop
                  addi       gp, gp, 2 #update loop 1 counter
                  addi       a2, zero, -3 #init loop 0 counter
                  auipc      t2, 883969
                  addi       t6, zero, 2 #init loop 0 limit
main_98_0_t:      xor        s2, a6, t0
                  addi       a2, a2, 9 #update loop 0 counter
                  blt        a2, t6, main_98_0_t #branch for loop 0
                  bne        gp, s6, main_98_1_t #branch for loop 1
                  slli       s2, tp, 24
                  la         s1, region_4+3249 #start riscv_load_store_rand_instr_stream_7
                  sw         t1, -125(s1)
                  lw         ra, 547(s1)
                  lb         t6, -1281(s1)
                  sh         a2, 661(s1)
                  addi       a4, t5, -580
                  srl        a5, t6, tp
                  lb         s0, -1531(s1)
                  sb         s6, -1827(s1)
                  div        t1, t6, s11
                  slti       gp, a4, 860
                  slli       s5, s8, 8
                  lh         a0, 405(s1)
                  lbu        s10, 652(s1)
                  c.sub      a2, a4
                  csrrwi     s2, 0x340, 13
                  lb         a4, -656(s1)
                  mulhsu     s3, s8, t4
                  lbu        s5, -1453(s1)
                  and        a7, s5, sp
                  lbu        t0, -1174(s1)
                  mulh       a2, s5, a7
                  sh         t0, -891(s1)
                  c.nop
                  .4byte 0x2ee2 # kIllegalCompressedOpcode
                  lb         s6, -1184(s1)
                  lbu        a4, 112(s1)
                  divu       t2, s5, t3
                  slti       s11, t6, 89
                  lh         s10, -1195(s1)
                  c.nop
                  sb         t1, -556(s1)
                  c.slli     t6, 22
                  lb         t6, 304(s1)
                  lb         gp, -88(s1)
                  lhu        t0, 607(s1)
                  sb         s5, -1516(s1)
                  sb         s3, -1910(s1)
                  c.addi     t2, -1
                  srl        tp, s3, ra
                  sb         a5, -786(s1)
                  lb         a6, -1742(s1)
                  sb         s6, -1208(s1)
                  lh         s10, -273(s1)
                  sltiu      a3, a6, -236
                  lb         t1, -604(s1)
                  div        a5, a6, ra
                  lbu        a2, -1308(s1) #end riscv_load_store_rand_instr_stream_7
                  la         t5, region_0+950 #start load_store_instr_stream_1
                  la         s0, region_4+3669 #start load_store_instr_stream_0
                  sh         s3, -15(s0)
                  lbu        a6, 11(t5)
                  sb         a0, -48(s0)
                  lh         t0, 10(t5)
                  sb         t4, -18(s0)
                  lhu        t2, -51(s0)
                  sb         s10, -3(t5)
                  lb         t2, 3(t5)
                  lbu        a0, 1(s0)
                  lh         gp, 4(t5)
                  sb         s3, 1(t5)
                  lb         a5, 18(s0)
                  lh         a4, -14(t5)
                  lbu        ra, 15(t5) #end load_store_instr_stream_1
                  lbu        t4, 38(s0) #end load_store_instr_stream_0
                  la         t0, region_1+8598 #start riscv_hazard_instr_stream_1
                  lbu        t4, 1082(t0)
                  c.or       a5, a3
                  xori       t3, a0, 322
                  c.li       a5, -1
                  lbu        a5, 1951(t0)
                  lbu        a3, -508(t0)
                  lh         t3, -164(t0)
                  slt        s3, s3, a0
                  csrrwi     a5, 0x340, 19
                  lb         a0, 2003(t0)
                  lui        s3, 677577
                  xor        a3, t4, a5
                  lhu        t4, 528(t0)
                  addi       t3, a0, 607
                  c.add      a0, t3
                  sb         a3, 2034(t0)
                  sb         a5, -1422(t0)
                  lw         t3, 862(t0)
                  c.nop
                  sh         t3, 1290(t0)
                  sb         a3, -1737(t0)
                  sltiu      s3, s3, 620
                  sh         t4, -1750(t0)
                  sb         t4, -1095(t0)
                  sb         t3, -347(t0)
                  slt        a5, a3, t4
                  lbu        a0, 207(t0)
                  lb         t4, -2039(t0)
                  sb         t4, 1577(t0)
                  lb         s3, 1203(t0)
                  fence.i
                  lbu        s3, 779(t0)
                  sltu       t3, a0, a5
                  slt        t3, t3, a0
                  sh         t3, 1484(t0)
                  lb         s3, 1743(t0)
                  srai       t3, a0, 15
                  lbu        a5, -1807(t0)
                  sb         t3, 1282(t0)
                  lbu        s3, -1093(t0)
                  div        a5, t4, a5
                  lh         a3, -912(t0)
                  lb         a5, 1762(t0)
                  csrrs      a5, 0x340, t3
                  lhu        a5, 654(t0) #end riscv_hazard_instr_stream_1
                  la         a5, region_2+4756 #start load_store_instr_stream_3
                  la         t6, region_4+338 #start load_store_instr_stream_2
                  lbu        a4, -5(t6)
                  lbu        s0, 170(a5)
                  la         t4, region_0+497 #start load_store_instr_stream_0
                  lbu        ra, 13(t6)
                  lbu        s2, 27(a5)
                  la         s6, region_1+15008 #start load_store_instr_stream_1
                  lb         s8, 45(t4)
                  sh         s9, -6(t6)
                  lh         s9, 8(t6)
                  lbu        a4, -1827(s6)
                  la         a0, region_3+7 #start load_store_instr_stream_4
                  sb         s7, -138(s6)
                  sb         s0, -237(a5)
                  lb         a6, 11(t6)
                  lbu        a1, 51(a0)
                  lb         gp, -437(s6)
                  sw         ra, 47(t4)
                  lb         t3, -6(t6)
                  lbu        s2, -112(a5)
                  lb         a7, -112(t4)
                  lbu        t1, 217(t4)
                  lhu        s5, -1284(s6)
                  lb         t1, 60(a0)
                  sb         t5, -3(t4)
                  lhu        s8, 250(a5)
                  lhu        a7, 16(t6)
                  sb         s10, -240(a5)
                  lw         t0, -1640(s6)
                  sh         gp, 2(t6)
                  lh         gp, 924(s6)
                  lbu        tp, 20(t4)
                  sb         t1, 218(a0)
                  lbu        s8, 121(a5)
                  lb         a3, 120(a0)
                  lbu        zero, -14(t6)
                  lh         s1, 742(s6)
                  lhu        a6, 6(t6) #end load_store_instr_stream_2
                  c.lw       a1, 16(a5)
                  lbu        s8, -125(t4)
                  lbu        t5, -1505(s6)
                  lb         zero, -367(s6) #end load_store_instr_stream_1
                  lb         t0, 229(a5) #end load_store_instr_stream_3
                  lb         zero, 242(a0) #end load_store_instr_stream_4
                  sh         s10, -193(t4) #end load_store_instr_stream_0
main_34:          jal        t4, 2f
0:                c.jal      9f
1:                c.jal      10f
2:                jal        ra, 11f
3:                jal        ra, 5f
4:                c.jal      12f
5:                c.jal      4b
6:                c.j        1b
7:                c.jal      8f
8:                c.j        13f
9:                c.j        7b
10:               c.jal      0b
11:               jal        t1, 3b
12:               c.jal      6b
13:               srl        s10, s5, a4
                  la         tp, region_4+2476 #start riscv_hazard_instr_stream_3
                  sub        s0, t3, t6
                  csrrci     t6, 0x340, 27
                  lbu        s10, 983(tp)
                  slt        s0, a5, a5
                  add        s10, t6, t6
                  nop
                  sh         t4, -1346(tp)
                  lb         t4, 227(tp)
                  mulhu      t3, a5, t4
                  c.srli     a5, 20
                  lhu        t3, 678(tp)
                  and        a5, s0, t6
                  lb         s10, -25(tp)
                  csrrw      a5, 0x340, t3
                  div        t3, t6, s10
                  lbu        s0, -626(tp)
                  sb         t3, -946(tp)
                  sb         s10, -1035(tp)
                  lh         t4, -954(tp)
                  remu       s10, t4, s0
                  sb         s0, 257(tp)
                  lb         t4, 625(tp)
                  sb         a5, 1195(tp)
                  c.slli     t6, 29
                  sll        a5, t3, s0
                  c.nop
                  sltiu      t6, s0, -81
                  srai       t6, s10, 16
                  lb         s0, 502(tp) #end riscv_hazard_instr_stream_3
                  addi       t4, zero, 1 #init loop 1 counter
                  c.addi     s11, 22
                  addi       s5, zero, 20 #init loop 1 limit
                  sll        a2, tp, s7
main_92_1_t:      andi       s3, s9, 341
                  addi       s0, a0, 864
                  ori        a5, a3, -375
                  remu       ra, zero, tp
                  addi       t4, t4, 1 #update loop 1 counter
                  and        a6, t0, s0
                  addi       a3, zero, -3 #init loop 0 counter
                  addi       s11, s8, 600
                  addi       zero, zero, 0 #init loop 0 limit
                  c.and      a4, a1
                  c.srli     s1, 29
                  sra        s1, a3, a6
                  sub        a7, gp, a0
                  sltu       s0, s8, t5
main_92_0_t:      c.li       s0, -1
                  xori       gp, t5, 339
                  slt        gp, s5, s10
                  nop
                  c.slli     s8, 1
                  xor        gp, s0, gp
                  sra        s8, t3, s3
                  addi       a3, a3, 3 #update loop 0 counter
                  c.bnez     a3, main_92_0_t #branch for loop 0
                  auipc      a6, 718879
                  c.mv       t0, s7
                  beq        t4, s5, main_92_1_t #branch for loop 1
                  c.srli     a4, 5
                  la         s3, region_2+326 #start riscv_load_store_rand_instr_stream_18
                  c.and      a0, s1
                  lb         t4, 793(s3)
                  lhu        zero, 2040(s3)
                  mul        s1, a3, a4
                  lbu        a5, 175(s3)
                  lh         s10, 302(s3)
                  c.li       t6, 31
                  c.slli     t6, 25
                  lbu        ra, -223(s3)
                  c.addi     s8, 21
                  mulhu      a0, t1, sp
                  xor        s8, a5, zero
                  srl        ra, t4, zero
                  c.srai     a4, 2
                  sb         t1, 1929(s3)
                  sw         tp, 26(s3)
                  sra        s9, ra, tp
                  c.andi     s1, 23
                  sltiu      a4, t6, 84
                  lui        t5, 323307
                  sltiu      s0, a4, 966
                  c.sub      s1, a3
                  lbu        s8, -159(s3)
                  c.mv       tp, s4
                  lh         t1, 1044(s3)
                  csrrci     t3, 0x340, 24
                  lbu        a4, 1631(s3) #end riscv_load_store_rand_instr_stream_18
                  la         a2, region_4+735 #start load_store_instr_stream_2
                  la         a7, region_4+2586 #start load_store_instr_stream_1
                  lh         s2, 58(a7)
                  sb         s3, -44(a7)
                  la         t3, region_4+2628 #start load_store_instr_stream_0
                  sb         t6, -45(a7)
                  lh         tp, -60(t3)
                  sb         a6, -29(a7)
                  lbu        s5, 910(a2)
                  lbu        s10, 61(t3)
                  lb         t2, -37(a7)
                  lh         t4, -40(a7)
                  lh         a4, 12(a7)
                  lbu        ra, -44(t3)
                  lw         s1, 52(t3)
                  lb         zero, -18(a7)
                  lb         a6, -63(a7)
                  lbu        a0, -606(a2)
                  lh         s3, -62(a7) #end load_store_instr_stream_1
                  sb         a1, 1559(a2)
                  lhu        s10, -24(t3)
                  lh         s5, 1265(a2)
                  lb         t2, 47(t3)
                  lhu        a0, 993(a2)
                  lb         a3, 1873(a2)
                  sb         t6, 519(a2)
                  lh         t5, 26(t3)
                  sb         t5, -61(t3)
                  sb         a1, 1296(a2) #end load_store_instr_stream_2
                  sb         s1, 63(t3) #end load_store_instr_stream_0
                  la         s6, region_4+2810 #start load_store_instr_stream_4
                  la         t5, region_4+2107 #start load_store_instr_stream_1
                  lh         a2, 737(t5)
                  la         s5, region_4+3588 #start load_store_instr_stream_0
                  la         a7, region_4+4024 #start load_store_instr_stream_3
                  la         a3, region_4+1991 #start load_store_instr_stream_2
                  lh         s3, -226(a7)
                  sb         s3, 30(a3)
                  lhu        t0, 2(s6)
                  lb         t3, -2(s5)
                  lbu        s11, -116(a7)
                  lw         t0, 17(a3)
                  sb         s10, -30(a3)
                  sw         s2, -6(s6)
                  sh         tp, 16(a7)
                  sb         t5, 954(t5)
                  lb         s3, -16(s6)
                  lb         s3, -32(a3)
                  lb         a6, 11(s5)
                  lb         s9, -235(a7)
                  sh         a1, 16(s5)
                  lbu        tp, -1682(t5)
                  lb         t4, -60(a3)
                  lhu        a6, 16(s6)
                  sb         t6, 34(a3)
                  lw         s10, 4(a7)
                  lb         a5, -9(s5)
                  lb         s2, -157(a7)
                  lb         t2, -10(s6)
                  lw         t0, -15(a3) #end load_store_instr_stream_2
                  lbu        s8, 339(t5)
                  lb         t2, -1415(t5)
                  lhu        s10, -10(s5)
                  lh         a6, -1485(t5)
                  lbu        s11, 216(t5) #end load_store_instr_stream_1
                  lb         s8, -73(a7) #end load_store_instr_stream_3
                  lbu        s8, -12(s6) #end load_store_instr_stream_4
                  sh         s3, -8(s5) #end load_store_instr_stream_0
                  la         a5, region_4+1682 #start riscv_hazard_instr_stream_13
                  c.mv       s11, s11
                  csrrwi     s5, 0x340, 25
                  csrrsi     s0, 0x340, 5
                  lbu        s11, 1925(a5)
                  lbu        t5, 1727(a5)
                  sb         a1, 1953(a5)
                  and        t5, a6, s5
                  srl        a1, a1, a1
                  sub        t5, t5, s5
                  c.mv       a1, t5
                  lbu        s11, 1937(a5)
                  lbu        t5, -1513(a5)
                  lb         s0, -1177(a5)
                  div        a1, s0, a1
                  addi       a6, s0, 967
                  nop
                  c.and      s0, a1
                  c.xor      s0, a1
                  lbu        s0, 1021(a5)
                  sb         s11, 833(a5)
                  sb         s5, 1387(a5)
                  sltiu      s5, s0, 1011
                  csrrc      a6, 0x340, s5
                  divu       t5, s11, a1
                  lb         s0, -344(a5)
                  mulhu      s11, a1, t5
                  c.andi     s0, 23
                  lb         a1, 731(a5)
                  addi       a6, t5, -529
                  div        s5, t5, s0
                  lbu        s0, 716(a5)
                  lbu        s5, -1217(a5)
                  lhu        t5, 1802(a5)
                  lbu        a6, 1703(a5)
                  csrrsi     s5, 0x340, 4
                  lbu        a1, -857(a5)
                  lb         t5, 755(a5)
                  divu       a1, a1, t5
                  xor        s11, s0, t5
                  c.addi     s0, -1
                  divu       s11, a6, a1
                  lb         s5, 400(a5)
                  lbu        a6, 867(a5)
                  sw         a1, -42(a5)
                  lb         t5, 905(a5)
                  sh         s11, -328(a5)
                  addi       s0, s11, 89
                  lb         s0, 190(a5)
                  srai       t5, a6, 9
                  csrrc      a1, 0x340, a1
                  sb         s11, 639(a5)
                  lb         t5, 117(a5)
                  csrrw      a1, 0x340, s0
                  lb         a6, 77(a5)
                  lb         s0, 1747(a5)
                  lb         a6, -1415(a5)
                  c.or       s0, a1
                  sh         a1, 378(a5) #end riscv_hazard_instr_stream_13
                  la         t3, region_4+1464 #start load_store_instr_stream_0
                  la         ra, region_4+3402 #start load_store_instr_stream_1
                  sb         s1, 14(t3)
                  lw         s10, 2(ra)
                  sb         ra, -9(ra)
                  lbu        a1, -4(ra)
                  lbu        s6, 5(t3)
                  sb         s6, -4(ra)
                  lhu        t1, -14(t3)
                  lb         t2, 1(t3)
                  lbu        t0, 1(ra)
                  lh         s1, -12(t3)
                  sh         s1, -4(ra)
                  sb         a7, 13(ra)
                  lb         s6, -7(ra)
                  sb         sp, -10(t3)
                  sb         s3, -1(t3)
                  sh         s5, 12(t3)
                  sw         s10, -2(ra)
                  sb         a2, -12(ra) #end load_store_instr_stream_1
                  lw         a5, -16(t3)
                  sb         s3, 12(t3) #end load_store_instr_stream_0
                  la         ra, region_3+456 #start riscv_load_store_rand_instr_stream_8
                  fence.i
                  lb         s8, -83(ra)
                  divu       a7, zero, a7
                  add        a7, a2, s2
                  and        a3, s5, s2
                  sll        s10, t3, s2
                  sb         ra, -142(ra)
                  c.slli     t0, 5
                  sll        a1, s11, s0
                  sub        tp, t5, s4
                  lbu        t6, -105(ra)
                  remu       gp, s0, s6
                  c.addi     a5, 2
                  srai       s5, s0, 11
                  mul        s10, s5, a7
                  andi       a6, s2, -954
                  c.nop
                  slti       s0, sp, 126
                  mul        s3, a6, s3
                  lhu        s3, -260(ra)
                  c.sub      a1, a4
                  c.nop
                  sra        gp, t6, t3
                  c.lui      a0, 9
                  lbu        a3, -251(ra)
                  mulh       a1, t1, s8
                  divu       a7, s6, s1
                  or         t4, s11, a7
                  lb         a3, -180(ra)
                  ori        a4, s8, 852
                  c.addi     a4, -1
                  sb         t5, -210(ra)
                  sb         s6, -302(ra)
                  c.nop
                  lbu        s5, -286(ra)
                  srl        t2, s3, sp
                  sb         t1, -421(ra)
                  lh         s6, -306(ra) #end riscv_load_store_rand_instr_stream_8
main_42:          jal        t4, 14f
0:                c.jal      25f
1:                c.jal      0b
2:                c.j        4f
3:                c.jal      18f
4:                c.jal      9f
5:                jal        ra, 7f
6:                c.j        12f
7:                c.j        24f
8:                c.jal      20f
9:                c.j        15f
10:               c.j        2b
11:               jal        ra, 13f
12:               c.jal      1b
13:               jal        t1, 8b
14:               c.jal      17f
15:               c.j        6b
16:               jal        t1, 5b
17:               c.jal      21f
18:               jal        t1, 23f
19:               c.jal      10b
20:               c.j        27f
21:               jal        ra, 26f
22:               c.j        3b
23:               c.j        11b
24:               c.j        22b
25:               jal        ra, 28f
26:               c.jal      16b
27:               c.jal      19b
28:               csrrci     s2, 0x340, 23
                  la         t0, region_4+915 #start load_store_instr_stream_1
                  la         s5, region_4+4007 #start load_store_instr_stream_0
                  la         a2, region_4+2104 #start load_store_instr_stream_2
                  la         t6, region_4+101 #start load_store_instr_stream_3
                  lb         s6, 468(t0)
                  lbu        a4, -2(t6)
                  sw         s4, 1269(t0)
                  lbu        s1, 5(t6)
                  sh         sp, 1235(t0)
                  lb         tp, -47(a2)
                  lhu        a7, -1037(s5)
                  lhu        a4, 1803(t0)
                  lh         a4, -459(t0)
                  lb         a7, 5(a2)
                  lbu        s11, 31(a2)
                  sh         ra, -877(s5)
                  lbu        a0, -1138(s5)
                  lb         s11, 443(t0)
                  lbu        a7, -57(a2)
                  lb         s0, -15(t6)
                  sb         t5, 1491(t0)
                  lbu        t1, 29(a2)
                  lbu        t3, -11(t6)
                  sb         s7, -1688(s5)
                  lb         s10, 776(t0)
                  lhu        s3, -77(t0) #end load_store_instr_stream_1
                  sb         s2, 10(t6) #end load_store_instr_stream_3
                  lbu        a4, -29(a2) #end load_store_instr_stream_2
                  sh         s0, -1241(s5)
                  lbu        s11, -762(s5) #end load_store_instr_stream_0
                  la         s5, region_3+108 #start load_store_instr_stream_3
                  lb         a4, -42(s5)
                  la         a7, region_3+371 #start load_store_instr_stream_4
                  la         s8, region_3+144 #start load_store_instr_stream_1
                  lbu        tp, -158(a7)
                  sh         s6, 296(s8)
                  la         t4, region_3+506 #start load_store_instr_stream_0
                  lhu        t0, 196(s8)
                  lh         a6, -165(a7)
                  sb         sp, 147(s5)
                  sh         t0, -32(t4)
                  la         s9, region_3+114 #start load_store_instr_stream_2
                  lb         a0, 148(s8)
                  lbu        s10, -162(a7)
                  sb         t0, 315(s5)
                  sb         s0, 47(s9)
                  lb         s0, -75(s8)
                  lb         t5, 11(s5)
                  sw         s0, 400(s5)
                  lbu        t0, -41(t4)
                  sb         a2, 13(s9)
                  lhu        a0, -70(s5)
                  sb         s9, -47(s9)
                  lb         tp, 237(s5)
                  sb         s9, -66(s8) #end load_store_instr_stream_1
                  sb         s8, -33(t4)
                  lw         s1, -6(t4)
                  sb         t3, 117(a7)
                  lb         a1, -12(a7) #end load_store_instr_stream_4
                  lb         s3, 66(s5)
                  lb         a3, 52(s9)
                  sb         zero, 191(s5) #end load_store_instr_stream_3
                  sb         s10, -30(s9) #end load_store_instr_stream_2
                  lbu        t3, -21(t4) #end load_store_instr_stream_0
                  la         a3, region_3+3 #start load_store_instr_stream_0
                  la         s1, region_0+1762 #start load_store_instr_stream_1
                  sb         s6, -1245(s1)
                  sh         t6, 457(a3)
                  lhu        a4, -1522(s1)
                  sh         s5, 417(a3)
                  lw         s2, -1534(s1)
                  sb         a3, 124(a3)
                  lb         a4, 34(a3)
                  lb         zero, 354(a3)
                  sb         s9, -513(s1)
                  sb         s8, 61(s1)
                  sh         s4, -1240(s1)
                  lb         s0, -737(s1)
                  sb         s10, 480(a3)
                  lb         s8, 809(s1)
                  sw         a1, 477(a3)
                  sh         t1, 272(s1)
                  lw         t5, 25(a3)
                  lb         s8, -13(s1) #end load_store_instr_stream_1
                  sb         s6, 62(a3) #end load_store_instr_stream_0
                  la         s2, region_4+1185 #start riscv_hazard_instr_stream_8
                  lb         t3, -16(s2)
                  csrrw      a0, 0x340, s8
                  lw         t0, -13(s2)
                  sb         a5, -4(s2)
                  and        a0, t0, a1
                  sub        a5, a1, s8
                  lhu        a1, -11(s2)
                  sb         t0, 10(s2)
                  lb         a0, 10(s2)
                  sb         t0, -3(s2)
                  nop
                  divu       a0, a5, a0
                  sw         t3, 15(s2)
                  fence
                  c.li       s8, 31
                  lbu        a5, 16(s2)
                  divu       a0, s8, s8
                  lh         a5, 11(s2)
                  sh         a5, 9(s2)
                  lbu        a0, 7(s2)
                  csrrs      a1, 0x340, s8
                  c.xor      a0, a1
                  nop
                  srl        a1, a1, a1
                  lb         a0, 3(s2)
                  mulh       t3, s8, a1
                  c.xor      a1, a0
                  lb         a5, 5(s2)
                  add        t3, s8, t3
                  srli       a0, t3, 6
                  and        s8, a5, t0
                  lb         a1, -3(s2)
                  c.slli     a0, 24
                  lb         a5, 4(s2)
                  lbu        a0, -4(s2)
                  xori       s8, t0, 620
                  c.or       a0, a5
                  lbu        a5, 14(s2)
                  mulhu      a5, s8, t3
                  sb         s8, -10(s2)
                  lhu        a5, -15(s2)
                  c.or       a1, a1
                  sb         t0, 2(s2)
                  lw         a5, -5(s2)
                  lb         a1, -12(s2)
                  xor        a0, a5, a0
                  lb         t3, 8(s2) #end riscv_hazard_instr_stream_8
                  la         t5, region_1+14683 #start riscv_load_store_rand_instr_stream_13
                  nop
                  sub        tp, s10, a2
                  c.lui      gp, 12
                  slti       gp, t6, -191
                  nop
                  c.and      a3, a2
                  sb         s8, 199(t5)
                  lb         s9, -200(t5)
                  csrrsi     a0, 0x340, 16
                  divu       a4, ra, s2
                  c.slli     a3, 28
                  sb         sp, 105(t5)
                  c.addi     t3, -1
                  lbu        a4, 199(t5)
                  lb         a6, 144(t5)
                  lh         a7, -125(t5)
                  and        t1, a6, s4
                  lbu        a6, 5(t5)
                  sltu       a3, s10, ra
                  sb         s2, -150(t5)
                  remu       a7, t3, s5
                  c.sub      a4, a4
                  lb         a6, 71(t5)
                  sb         ra, -156(t5)
                  sltu       t6, t1, gp
                  csrrw      s8, 0x340, a2
                  sh         a2, -203(t5)
                  sltu       s2, s10, gp
                  lh         t2, 35(t5)
                  lb         s10, 123(t5)
                  lb         s3, -180(t5)
                  c.or       a1, a3
                  lh         a6, 173(t5)
                  and        s9, t4, s7
                  lbu        a5, -244(t5)
                  lh         t1, 73(t5)
                  lb         a5, -172(t5)
                  rem        a2, a4, s9
                  sll        s10, s3, t2
                  sb         t6, 170(t5)
                  mul        t6, a2, a3
                  lb         a0, -244(t5)
                  srl        s3, a3, s6
                  lh         a4, -235(t5)
                  csrrs      s10, 0x340, s0
                  sb         a3, -176(t5)
                  sb         a0, 76(t5)
                  c.srai     s1, 11
                  lb         s8, -24(t5)
                  lbu        a6, 113(t5) #end riscv_load_store_rand_instr_stream_13
                  addi       a2, zero, 9 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
                  .4byte 0x9bf700f3 # kIllegalSystemInstr
                  csrrw      t0, 0x340, t1
main_107_0_t:     mulh       a4, s0, t6
                  sll        s6, t2, s6
                  andi       s1, t5, 654
                  ori        s8, s0, -279
                  addi       a2, a2, -9 #update loop 0 counter
                  auipc      s9, 891831
                  c.srli     a4, 4
                  c.bnez     a2, main_107_0_t #branch for loop 0
                  csrrsi     t3, 0x340, 25
                  la         a2, region_3+289 #start riscv_hazard_instr_stream_20
                  lb         t5, -47(a2)
                  lhu        ra, -7(a2)
                  srl        t5, a0, s6
                  lbu        t6, -30(a2)
                  c.li       t6, 4
                  lb         t6, -42(a2)
                  mulh       a6, a0, t5
                  remu       a6, s6, a6
                  csrrwi     s6, 0x340, 15
                  sltu       a6, s6, t5
                  sra        s6, a6, a0
                  c.srai     a0, 21
                  c.li       a0, 15
                  sb         a0, 46(a2)
                  c.xor      a0, a0
                  lui        a0, 56361
                  sb         a6, 53(a2)
                  remu       s6, t6, ra
                  sltu       a0, t6, s6
                  lb         t5, -38(a2)
                  remu       t5, a6, a0
                  sub        t5, t5, a6
                  lb         s6, -34(a2)
                  sb         a0, 48(a2)
                  lb         t5, 64(a2)
                  mulhsu     a0, t5, ra
                  xor        t6, s6, ra
                  lbu        s6, 9(a2)
                  lui        ra, 124259
                  lb         a0, 28(a2)
                  c.mv       t6, ra
                  divu       ra, ra, a6
                  lbu        a0, 55(a2)
                  c.addi     s6, 22
                  lb         a0, 44(a2)
                  mulh       a6, t5, ra
                  ori        a6, a0, 333
                  c.or       a0, a0
                  c.srli     a0, 26
                  addi       s6, s6, 723
                  sh         t5, -47(a2)
                  lb         ra, 6(a2) #end riscv_hazard_instr_stream_20
                  la         t4, region_0+2651 #start riscv_load_store_rand_instr_stream_1
                  c.li       a4, -1
                  andi       s2, s10, -922
                  c.slli     t6, 24
                  lb         t5, -1(t4)
                  lb         tp, 6(t4)
                  sb         a1, 6(t4)
                  lb         s6, 3(t4)
                  fence.i
                  sra        s10, gp, tp
                  c.lui      s3, 17
                  c.mv       ra, s9
                  sw         s5, -3(t4)
                  lbu        ra, 6(t4)
                  c.or       a5, a5
                  c.srai     a5, 8
                  lb         a6, -6(t4)
                  lbu        a1, 11(t4)
                  c.li       a0, -1
                  lbu        s0, 5(t4)
                  sb         s7, 4(t4)
                  div        s6, s2, a7
                  lw         t6, -11(t4)
                  lbu        a5, 16(t4)
                  lb         s0, -16(t4)
                  lb         a4, -14(t4)
                  lbu        t0, 5(t4)
                  lbu        s1, 10(t4)
                  csrrci     s0, 0x340, 31
                  sh         t6, 15(t4) #end riscv_load_store_rand_instr_stream_1
                  addi       a2, zero, 8 #init loop 0 counter
                  andi       s5, t0, -680
                  div        s6, s5, sp
                  c.slli     t0, 8
                  c.mv       s0, t3
                  sub        tp, gp, gp
                  c.slli     t1, 31
                  c.slli     t1, 8
                  addi       s3, zero, 8 #init loop 0 limit
                  addi       s5, t1, 883
                  fence.i
main_97_0_t:      c.mv       a0, s5
                  csrrs      s5, 0x340, a2
                  c.addi     s2, -1
                  addi       a2, a2, -6 #update loop 0 counter
                  nop
                  sltu       a0, s2, ra
                  remu       s2, s1, s5
                  c.nop
                  xor        a1, s0, gp
                  c.lui      a0, 30
                  csrrsi     s8, 0x340, 20
                  bgeu       a2, s3, main_97_0_t #branch for loop 0
                  csrrc      a6, 0x340, tp
                  la         s0, region_2+7500 #start riscv_load_store_rand_instr_stream_21
                  sb         s0, 35(s0)
                  lb         a4, -180(s0)
                  add        a4, zero, s6
                  sb         t0, -175(s0)
                  sll        zero, s2, a3
                  srli       t5, s4, 29
                  lh         zero, -1578(s0)
                  fence.i
                  srai       t5, a7, 2
                  sb         gp, -1026(s0)
                  sub        ra, s5, s6
                  fence
                  c.xor      a2, a1
                  c.mv       s5, s7
                  sb         s9, -254(s0)
                  sb         t0, -2007(s0)
                  lb         ra, -1533(s0)
                  csrrs      s11, 0x340, sp
                  c.addi     a4, 31
                  lbu        a3, -309(s0)
                  lb         s3, -1786(s0)
                  sb         s0, -1599(s0)
                  csrrwi     tp, 0x340, 22
                  lb         gp, -1703(s0)
                  sb         s8, -137(s0)
                  sb         a6, 196(s0)
                  c.li       a6, 21
                  lbu        s2, -979(s0)
                  sh         s3, -574(s0)
                  lbu        a1, -1503(s0)
                  lbu        t5, -717(s0)
                  lh         s1, -1140(s0)
                  sh         t0, -914(s0)
                  lbu        s11, -1753(s0)
                  c.sw       a3, 76(s0)
                  lb         t1, -887(s0)
                  lbu        s3, -1571(s0)
                  remu       s9, s2, a2
                  srl        zero, s2, a2
                  csrrwi     s2, 0x340, 18
                  lbu        t4, 409(s0)
                  sb         s9, -493(s0)
                  lbu        a2, 292(s0)
                  sb         a3, -559(s0)
                  lhu        t4, 550(s0) #end riscv_load_store_rand_instr_stream_21
                  la         ra, region_3+246 #start load_store_instr_stream_1
                  sb         a5, 77(ra)
                  lbu        tp, 57(ra)
                  lbu        s5, 253(ra)
                  la         t2, region_3+45 #start load_store_instr_stream_0
                  lw         a0, 7(t2)
                  sb         gp, -127(ra)
                  lhu        s1, -142(ra)
                  sb         s5, -10(t2)
                  lb         a0, -125(ra)
                  lh         a2, -13(t2)
                  lb         s6, 248(ra)
                  lh         t1, 11(t2)
                  lh         tp, -234(ra)
                  sb         s9, -14(t2)
                  sh         t6, -24(ra)
                  sb         s1, -13(t2)
                  sw         t6, -106(ra) #end load_store_instr_stream_1
                  lh         zero, 9(t2) #end load_store_instr_stream_0
main_37:          jal        t4, 6f
0:                c.jal      3f
1:                c.j        8f
2:                jal        ra, 5f
3:                c.j        2b
4:                c.jal      9f
5:                jal        ra, 10f
6:                c.j        4b
7:                c.jal      1b
8:                c.j        0b
9:                c.jal      7b
10:               c.addi     t5, -1
                  la         a5, region_1+5773 #start riscv_hazard_instr_stream_15
                  sb         s5, 7(a5)
                  c.mv       s8, a0
                  lbu        t4, -5(a5)
                  lbu        s5, -2(a5)
                  lbu        a0, 7(a5)
                  sh         a0, -11(a5)
                  andi       a0, a2, -228
                  c.addi     s8, 4
                  c.srli     a2, 19
                  lhu        s5, -15(a5)
                  auipc      s8, 331815
                  sltiu      s5, t6, 21
                  srli       s5, a2, 19
                  mulhu      s8, s5, a0
                  lbu        s5, -11(a5)
                  c.addi     a2, 24
                  csrrci     t4, 0x340, 10
                  sw         s8, 15(a5)
                  mulhu      a2, a2, s8
                  lbu        s5, 5(a5)
                  lbu        a0, 6(a5)
                  slt        t4, t6, t6
                  sra        a0, s5, a0
                  lb         a2, 6(a5)
                  lui        s8, 26384
                  csrrw      s8, 0x340, a0
                  lb         t6, 4(a5)
                  sb         s8, 3(a5)
                  sltiu      a2, s5, -945
                  lh         s8, -15(a5)
                  sll        s8, a0, t6
                  remu       a2, s5, s5
                  sb         a2, -12(a5)
                  sb         s8, 12(a5)
                  csrrc      t4, 0x340, s8
                  sb         t4, -10(a5)
                  add        s5, t6, s8
                  sh         s8, -11(a5)
                  lh         t6, -3(a5)
                  lui        a0, 346487
                  nop
                  csrrc      a2, 0x340, s5
                  mulhu      s8, t6, a2
                  c.li       t4, 2
                  lhu        a0, -7(a5)
                  sw         s5, -13(a5) #end riscv_hazard_instr_stream_15
                  la         s5, region_3+123 #start riscv_load_store_rand_instr_stream_10
                  c.sub      a2, a2
                  c.lui      tp, 1
                  lb         t6, -48(s5)
                  lh         a3, 119(s5)
                  lui        a0, 162714
                  lh         gp, 163(s5)
                  lbu        t5, 103(s5)
                  lw         zero, 169(s5)
                  c.srli     s1, 23
                  sb         s2, 140(s5)
                  lb         t3, -113(s5)
                  or         zero, t6, a3
                  srli       t6, s1, 23
                  fence.i
                  lbu        a0, -24(s5)
                  sb         a4, 388(s5)
                  rem        s11, s10, a4
                  lb         t1, 342(s5)
                  sb         zero, 233(s5)
                  lw         gp, -79(s5)
                  lbu        a2, -26(s5)
                  lhu        t2, 27(s5)
                  lb         s11, 154(s5)
                  c.or       s0, a3
                  slt        a5, s3, t3
                  lbu        s11, 64(s5)
                  lhu        s2, 99(s5)
                  lb         t4, -113(s5)
                  sll        a4, ra, a6
                  sltu       a2, a5, gp
                  lh         a3, 237(s5) #end riscv_load_store_rand_instr_stream_10
                  la         s8, region_3+434 #start riscv_load_store_rand_instr_stream_19
                  addi       ra, a3, 427
                  lbu        s6, -19(s8)
                  lhu        s6, -22(s8)
                  sb         s2, -16(s8)
                  slti       tp, s1, -54
                  andi       s10, t0, 731
                  sb         t3, -52(s8)
                  mulhu      s11, t3, s10
                  lb         t3, -48(s8)
                  mulhsu     t3, t0, s7
                  lb         s2, -3(s8)
                  fence.i
                  or         a5, sp, a2
                  sh         s4, 62(s8)
                  c.mv       gp, t0
                  sb         a7, 59(s8)
                  sb         a7, 37(s8)
                  sh         t4, 24(s8)
                  remu       a2, t5, s5
                  lb         s0, -37(s8)
                  sb         a1, 22(s8)
                  lh         t5, 30(s8)
                  lbu        a2, 10(s8)
                  c.nop
                  lbu        t4, 48(s8)
                  addi       zero, a2, 888
                  sll        s9, ra, s7
                  xori       a3, s3, -616
                  lhu        s9, -14(s8)
                  srai       a0, s10, 3
                  addi       a5, s4, -249
                  lb         a0, -53(s8)
                  lh         s3, -12(s8)
                  lb         ra, -42(s8)
                  mul        t2, s2, t6
                  lbu        a3, -33(s8)
                  slt        t3, s2, t6
                  sw         s5, 58(s8)
                  c.srai     a1, 12
                  c.srli     a5, 24
                  c.andi     a1, -1
                  sb         a1, 7(s8)
                  c.lui      s2, 16
                  lh         t2, -52(s8)
                  lbu        a2, 58(s8)
                  sb         a5, 25(s8)
                  lb         gp, -17(s8) #end riscv_load_store_rand_instr_stream_19
                  la         s6, region_3+278 #start load_store_instr_stream_1
                  la         a7, region_3+114 #start load_store_instr_stream_3
                  lhu        s9, 64(s6)
                  sh         a7, 12(a7)
                  sb         s0, -14(a7)
                  la         a3, region_3+484 #start load_store_instr_stream_2
                  la         s3, region_3+396 #start load_store_instr_stream_0
                  lb         s11, -411(a3)
                  sh         gp, -30(s3)
                  lhu        a2, -8(a7)
                  lh         a2, -248(s6)
                  la         t4, region_3+498 #start load_store_instr_stream_4
                  lbu        gp, -139(a3)
                  lb         a5, 9(a7)
                  lh         t6, -126(a3)
                  lbu        tp, -63(s6)
                  lhu        ra, 2(a7)
                  lh         t1, -228(t4)
                  sb         gp, -165(s3)
                  lh         s1, 76(s6)
                  lb         a2, -217(a3)
                  lb         s1, -384(a3)
                  lb         t6, -78(t4)
                  lhu        a5, 220(s6)
                  lh         a2, -56(t4)
                  lbu        zero, 30(s3)
                  lhu        a4, 0(a7)
                  lb         s5, -419(a3)
                  lh         t2, 16(a7)
                  lhu        s0, -56(s6) #end load_store_instr_stream_1
                  lhu        s8, 38(s3)
                  sb         s6, -47(t4)
                  lbu        s10, -9(a7)
                  sb         a6, -183(s3)
                  lb         s9, 12(a7)
                  lb         a4, -12(a7) #end load_store_instr_stream_3
                  lbu        s11, 5(t4) #end load_store_instr_stream_4
                  sb         t6, 98(s3)
                  sh         ra, -368(a3) #end load_store_instr_stream_2
                  sh         t3, -60(s3) #end load_store_instr_stream_0
                  la         s2, region_1+11352 #start riscv_load_store_rand_instr_stream_17
                  c.addi     a7, -1
                  or         s1, sp, s6
                  lb         s1, 771(s2)
                  csrrs      s9, 0x340, s4
                  slt        t3, a6, zero
                  lbu        ra, -1515(s2)
                  sb         t5, 1069(s2)
                  srl        s0, t2, t1
                  lw         s10, 44(s2)
                  xor        a4, s6, a0
                  mul        t2, s8, a0
                  c.nop
                  lb         gp, 1011(s2)
                  lb         t1, -1071(s2)
                  sltiu      s10, a3, 28
                  add        s8, gp, a2
                  sb         a4, -549(s2)
                  sh         gp, -470(s2)
                  csrrci     s1, 0x340, 5
                  fence.i
                  lbu        gp, 1431(s2)
                  sltiu      t4, s9, 699
                  lbu        s5, -821(s2)
                  c.or       s1, a4
                  lb         a5, 1737(s2)
                  mulhu      s6, a4, sp
                  slli       a1, s10, 24
                  divu       t3, a2, s5
                  c.srai     a0, 9
                  lhu        t4, 236(s2)
                  c.xor      s0, a5
                  csrrwi     s5, 0x340, 20
                  lhu        a2, -1668(s2) #end riscv_load_store_rand_instr_stream_17
                  la         t6, region_2+3011 #start load_store_instr_stream_1
                  lb         a5, -172(t6)
                  la         s8, region_2+3 #start load_store_instr_stream_0
                  sb         t1, -61(t6)
                  lw         t4, 5(s8)
                  lb         a4, 58(s8)
                  lbu        t4, -36(t6)
                  lb         s11, 206(s8)
                  lb         gp, 256(s8)
                  lhu        a1, -61(t6)
                  lbu        zero, 158(s8)
                  lb         a7, 75(t6) #end load_store_instr_stream_1
                  lb         ra, 124(s8) #end load_store_instr_stream_0
                  la         s2, region_1+8850 #start load_store_instr_stream_1
                  lbu        s6, -12(s2)
                  la         t2, region_1+5478 #start load_store_instr_stream_0
                  la         a0, region_1+4414 #start load_store_instr_stream_2
                  lb         s1, -60(t2)
                  lbu        a6, -15(s2)
                  sb         t1, -6(s2)
                  lw         t3, -30(t2)
                  sb         s4, -41(t2)
                  lb         t6, -49(a0)
                  lbu        t3, 51(a0)
                  sb         ra, -11(s2)
                  sh         a7, 18(t2)
                  sh         s7, 8(s2)
                  lh         zero, -22(t2)
                  sh         a4, 16(s2)
                  lbu        a2, -4(a0)
                  sb         s0, -49(t2)
                  lb         t0, 23(a0)
                  lb         t1, -13(s2)
                  lb         a7, -3(s2)
                  sb         t0, 61(t2)
                  lb         s3, -10(s2)
                  lbu        a2, -11(s2) #end load_store_instr_stream_1
                  sb         a7, -60(a0) #end load_store_instr_stream_2
                  lb         t3, 45(t2)
                  lw         zero, 6(t2) #end load_store_instr_stream_0
                  la         s3, region_2+2436 #start load_store_instr_stream_1
                  lbu        s8, 32(s3)
                  la         s1, region_4+614 #start load_store_instr_stream_0
                  lbu        t5, -58(s3)
                  lw         t5, -26(s1)
                  sh         t5, -46(s3)
                  lbu        a4, -55(s3)
                  lb         t0, 23(s1)
                  lb         t6, 33(s3)
                  sb         a1, 41(s1)
                  lh         s9, -26(s3)
                  lbu        ra, -61(s3)
                  sb         s3, -47(s1)
                  lbu        ra, 3(s3)
                  lb         s5, 53(s3) #end load_store_instr_stream_1
                  sh         s6, 52(s1) #end load_store_instr_stream_0
main_33:          jal        t4, 12f
0:                jal        ra, 5f
1:                c.jal      21f
2:                jal        ra, 4f
3:                c.j        8f
4:                c.j        1b
5:                c.j        9f
6:                c.j        17f
7:                jal        tp, 19f
8:                jal        t2, 18f
9:                c.j        11f
10:               jal        ra, 15f
11:               jal        ra, 23f
12:               c.j        2b
13:               jal        t0, 6b
14:               jal        t0, 22f
15:               c.j        14b
16:               c.jal      13b
17:               c.jal      20f
18:               c.j        16b
19:               c.j        0b
20:               c.jal      10b
21:               jal        s0, 3b
22:               jal        t1, 7b
23:               mulhsu     a4, a1, s3
main_26:          jal        t4, 0f
0:                jal        ra, 3f
1:                c.jal      12f
2:                jal        t1, 14f
3:                jal        tp, 18f
4:                c.jal      13f
5:                c.jal      10f
6:                c.j        5b
7:                c.jal      16f
8:                c.jal      19f
9:                c.j        11f
10:               c.jal      7b
11:               jal        t1, 15f
12:               jal        s6, 9b
13:               c.j        2b
14:               c.jal      6b
15:               jal        ra, 4b
16:               jal        t1, 17f
17:               c.j        8b
18:               jal        ra, 1b
19:               c.and      a2, a2
                  addi       tp, zero, 1 #init loop 1 counter
                  addi       s10, zero, -11 #init loop 1 limit
main_101_1_t:     rem        t4, a6, t6
                  addi       tp, tp, -2 #update loop 1 counter
                  addi       s1, zero, -7 #init loop 0 counter
                  srli       s2, s1, 5
                  addi       zero, zero, 0 #init loop 0 limit
                  csrrc      s2, 0x340, a0
main_101_0_t:     xori       a7, a5, 739
                  addi       s1, s1, 7 #update loop 0 counter
                  c.bnez     s1, main_101_0_t #branch for loop 0
                  bne        tp, s10, main_101_1_t #branch for loop 1
                  auipc      s9, 22157
                  la         a5, region_2+2988 #start load_store_instr_stream_3
                  la         a1, region_3+182 #start load_store_instr_stream_0
                  sb         ra, -20(a5)
                  la         s2, region_0+2064 #start load_store_instr_stream_1
                  lbu        t1, 45(a1)
                  lbu        a2, -45(a5)
                  la         s1, region_1+13010 #start load_store_instr_stream_2
                  lbu        t0, 187(s2)
                  lb         gp, -1249(s1)
                  lb         t4, 227(a1)
                  lb         s10, 92(s2)
                  lbu        a0, -58(a5)
                  lbu        gp, 215(s2)
                  sb         a0, 181(s1)
                  lb         s11, -17(a5)
                  lb         t0, -97(a1)
                  lb         s8, -64(s2)
                  lbu        a2, 177(s2)
                  lbu        s5, 9(a5)
                  sb         a6, 1(a5)
                  lbu        ra, -221(s2)
                  lbu        a7, -15(a5)
                  lbu        t2, 405(s1)
                  sw         sp, -216(s2)
                  lb         t1, 53(a5)
                  lb         s9, 952(s1)
                  lbu        t0, 51(a5) #end load_store_instr_stream_3
                  sw         s6, 10(a1)
                  lbu        t1, 180(s2)
                  lh         t2, 160(s2) #end load_store_instr_stream_1
                  sb         a5, 1223(s1)
                  lb         t6, 369(s1) #end load_store_instr_stream_2
                  lb         t0, 184(a1) #end load_store_instr_stream_0
main_36:          jal        t4, 2f
0:                c.j        10f
1:                c.jal      7f
2:                jal        a6, 9f
3:                c.j        8f
4:                c.jal      12f
5:                jal        ra, 13f
6:                c.jal      4b
7:                c.j        0b
8:                c.jal      6b
9:                jal        ra, 1b
10:               c.j        3b
11:               jal        t5, 5b
12:               jal        ra, 11b
13:               c.jal      14f
14:               c.or       a1, s0
main_27:          jal        t4, 5f
0:                c.j        3f
1:                c.j        12f
2:                c.jal      4f
3:                jal        t1, 1b
4:                c.jal      7f
5:                c.j        11f
6:                jal        ra, 15f
7:                jal        ra, 10f
8:                c.jal      2b
9:                c.j        13f
10:               jal        t1, 14f
11:               jal        s9, 9b
12:               c.j        6b
13:               jal        a6, 8b
14:               c.j        0b
15:               divu       t5, zero, a4
                  addi       a4, zero, 6 #init loop 1 counter
                  lui        s2, 89791
                  addi       zero, zero, 0 #init loop 1 limit
                  c.and      a5, a3
                  addi       s5, a6, -221
                  c.srai     a0, 12
                  csrrci     s2, 0x340, 30
                  c.xor      a2, a0
                  c.sub      a5, a0
main_99_1_t:      c.lui      a3, 23
                  ori        a5, a6, -707
                  c.srai     s0, 1
                  addi       a4, a4, -6 #update loop 1 counter
                  c.slli     a1, 7
                  addi       s9, zero, 1 #init loop 0 counter
                  sltu       a2, t0, a2
                  addi       s3, zero, -9 #init loop 0 limit
                  srai       tp, s2, 26
                  auipc      tp, 665951
main_99_0_t:      or         s1, a2, s11
                  c.add      a3, a5
                  slli       a6, sp, 0
                  c.andi     a1, 10
                  addi       s9, s9, -2 #update loop 0 counter
                  auipc      a2, 334183
                  beq        s9, s3, main_99_0_t #branch for loop 0
                  divu       a5, a7, a7
                  c.andi     s1, 10
                  rem        s11, t4, s11
                  slt        a1, s0, t6
                  csrrs      a3, 0x340, a2
                  c.beqz     a4, main_99_1_t #branch for loop 1
                  c.li       t6, -1
                  la         a0, region_1+11912 #start riscv_hazard_instr_stream_2
                  sb         tp, -701(a0)
                  lh         tp, -372(a0)
                  auipc      tp, 119143
                  sb         a5, -431(a0)
                  sra        tp, s11, s8
                  lbu        s11, -680(a0)
                  sltu       a5, t3, t4
                  sltu       s8, t4, t4
                  lbu        t3, 686(a0)
                  c.nop
                  c.mv       t4, s8
                  lbu        t3, 486(a0)
                  sb         t3, -1427(a0)
                  csrrc      t4, 0x340, t3
                  c.nop
                  sh         a5, 956(a0)
                  lh         s11, -1062(a0)
                  lb         t4, -1255(a0)
                  mulhu      tp, t3, t3
                  lhu        t4, -134(a0)
                  lhu        s11, 594(a0)
                  lhu        t4, -94(a0)
                  c.sub      a5, a5
                  c.andi     a5, 11
                  c.slli     t3, 27
                  lb         a5, -953(a0)
                  mulhu      t4, a5, t3
                  sh         t3, -1744(a0)
                  lbu        s8, 1637(a0)
                  lb         s11, -209(a0)
                  sb         s11, -33(a0) #end riscv_hazard_instr_stream_2
                  addi       a1, zero, -8 #init loop 1 counter
                  slti       t6, t1, -660
                  addi       zero, zero, 0 #init loop 1 limit
                  c.srai     a5, 1
main_103_1_t:     c.sub      a3, a4
                  addi       a1, a1, 4 #update loop 1 counter
                  c.srai     a5, 5
                  c.srli     s1, 20
                  c.xor      a2, a5
                  addi       s9, zero, -10 #init loop 0 counter
                  addi       a4, zero, -3 #init loop 0 limit
                  c.nop
                  c.addi     a7, 2
main_103_0_t:     rem        gp, ra, s5
                  c.li       t0, 31
                  sltiu      a3, s1, -309
                  c.or       a5, a2
                  rem        a5, gp, a1
                  addi       s9, s9, 7 #update loop 0 counter
                  auipc      a6, 460903
                  srai       s2, gp, 23
                  slt        a7, s9, tp
                  srli       t0, gp, 21
                  c.sub      a5, a2
                  mulhsu     s1, tp, a1
                  csrrwi     t3, 0x340, 22
                  csrrs      s8, 0x340, s10
                  beq        s9, a4, main_103_0_t #branch for loop 0
                  c.mv       t0, gp
                  c.bnez     a1, main_103_1_t #branch for loop 1
                  or         s2, s11, t5
                  la         s2, region_1+10100 #start riscv_load_store_rand_instr_stream_2
                  slli       a0, a4, 21
                  add        zero, t0, s1
                  lhu        s1, -604(s2)
                  sw         a1, -172(s2)
                  c.xor      a5, a1
                  auipc      t3, 420185
                  slli       s9, a1, 12
                  srli       a4, a2, 18
                  lbu        tp, 427(s2)
                  sltu       a3, gp, s11
                  c.addi     a6, 5
                  lh         a3, 888(s2)
                  srli       s6, t6, 12
                  xori       s10, s0, -355
                  or         t0, s7, s5
                  csrrs      s8, 0x340, tp
                  andi       s3, a3, -552
                  mulhu      gp, t0, s2
                  c.slli     ra, 2
                  lb         s9, -1912(s2)
                  sh         s5, -764(s2)
                  and        s0, s0, a2
                  srai       s3, s1, 11
                  add        t1, t1, zero
                  c.andi     a3, -1
                  lbu        s3, -169(s2)
                  ori        t5, s4, -813
                  lbu        s5, 1618(s2)
                  c.and      s1, a2
                  csrrci     zero, 0x340, 10
                  sb         s8, -747(s2)
                  sll        s0, gp, tp
                  c.xor      a4, s0
                  lb         a3, 1476(s2)
                  sll        t2, t5, gp
                  sb         s8, 1846(s2)
                  csrrw      t4, 0x340, s2
                  mulhu      ra, t2, a2
                  sh         a5, -812(s2) #end riscv_load_store_rand_instr_stream_2
                  la         a1, region_3+319 #start riscv_load_store_rand_instr_stream_5
                  nop
                  sb         s6, -280(a1)
                  slt        a4, s8, t3
                  lh         a7, -301(a1)
                  sb         a2, -51(a1)
                  lhu        a5, -5(a1)
                  add        a3, a1, s7
                  sh         sp, 187(a1)
                  sll        s1, s4, t2
                  sltiu      a7, t2, 735
                  lb         t5, 116(a1)
                  lb         s5, 65(a1)
                  sra        a2, t5, sp
                  xori       t5, a6, 993
                  sb         zero, -312(a1)
                  lbu        tp, 120(a1)
                  sw         gp, 53(a1)
                  sb         s1, -218(a1)
                  lbu        a3, 188(a1)
                  lbu        a2, -20(a1)
                  csrrci     s2, 0x340, 9
                  lh         t4, -255(a1)
                  lb         tp, -282(a1)
                  lh         s9, -171(a1)
                  lb         t2, -117(a1)
                  sb         t3, -262(a1)
                  mulhu      a2, s2, s5
                  lh         a2, -257(a1)
                  sh         s6, 151(a1)
                  sw         t2, -239(a1)
                  sb         a4, -219(a1)
                  sub        t2, a0, s7
                  sll        a7, a2, t6
                  lbu        s0, -232(a1)
                  lbu        a0, -120(a1) #end riscv_load_store_rand_instr_stream_5
                  la         t4, region_3+128 #start riscv_hazard_instr_stream_22
                  c.srli     s1, 1
                  lw         a2, -4(t4)
                  c.xor      s1, a5
                  mulhsu     s1, s1, gp
                  remu       a5, a0, a5
                  sb         a2, -15(t4)
                  sub        a2, s1, zero
                  slli       s1, a5, 1
                  mulhsu     a0, gp, a5
                  c.xor      a5, a5
                  c.or       a5, s1
                  lb         s1, -1(t4)
                  slt        gp, gp, gp
                  srli       a2, a5, 26
                  lbu        a5, 14(t4)
                  c.and      s1, a0
                  lbu        a5, 12(t4)
                  nop
                  srai       a0, zero, 0
                  lbu        gp, 14(t4)
                  lh         a5, 10(t4)
                  xor        zero, s1, gp
                  lhu        gp, -6(t4)
                  srai       a2, a5, 25
                  rem        s1, a5, a2
                  andi       a2, gp, 920
                  lh         a0, 4(t4)
                  c.nop
                  lhu        zero, 0(t4)
                  c.andi     a0, 25
                  csrrs      a5, 0x340, a0
                  sltu       a0, a0, zero
                  mulhu      s1, a5, a0
                  sb         gp, 1(t4)
                  lhu        a5, -12(t4)
                  lbu        a0, -5(t4) #end riscv_hazard_instr_stream_22
                  la         s8, region_1+9689 #start load_store_instr_stream_4
                  la         s10, region_1+1477 #start load_store_instr_stream_3
                  la         a3, region_1+10557 #start load_store_instr_stream_2
                  la         s5, region_1+15974 #start load_store_instr_stream_1
                  lh         t6, -1536(s5)
                  sb         a1, -49(s8)
                  sb         t5, -340(s10)
                  lhu        t5, 773(s10)
                  lbu        t6, -58(a3)
                  sb         a6, -1256(s10)
                  lhu        a2, -756(s5)
                  sh         s10, -909(s10)
                  la         ra, region_1+697 #start load_store_instr_stream_0
                  lb         t1, -975(s5)
                  sb         s1, 52(s8)
                  lb         s9, 64(s8)
                  lbu        t5, -995(s5)
                  sb         a2, 54(a3)
                  sh         s2, 1053(s10)
                  lbu        t6, 58(ra)
                  sb         a5, -636(s10)
                  sh         t3, -576(s5)
                  lhu        s6, 221(s10)
                  sh         ra, 587(s10)
                  sb         a1, 60(ra)
                  sb         t1, -40(a3)
                  lbu        a2, 1621(s10)
                  sb         a2, -12(ra)
                  sb         a7, 1(s8)
                  sb         a6, 57(ra)
                  lh         t3, -5(a3)
                  sb         gp, -1999(s5)
                  sb         s2, -5(a3)
                  lh         t0, 15(a3)
                  sb         a4, 18(s8)
                  lb         a7, -1809(s5)
                  sb         t3, -19(s8)
                  lb         t1, 54(s8) #end load_store_instr_stream_4
                  lbu        s0, -55(ra)
                  lh         t3, -31(a3)
                  lb         t4, -811(s5)
                  sb         t5, -35(a3)
                  lb         t4, -616(s10) #end load_store_instr_stream_3
                  lh         t5, 17(a3) #end load_store_instr_stream_2
                  lhu        a4, -764(s5) #end load_store_instr_stream_1
                  lh         t2, 45(ra) #end load_store_instr_stream_0
main_38:          jal        t4, 7f
0:                jal        tp, 9f
1:                jal        ra, 14f
2:                c.j        0b
3:                c.jal      6f
4:                c.j        1b
5:                jal        t1, 24f
6:                jal        t1, 2b
7:                jal        t1, 16f
8:                jal        s9, 21f
9:                c.j        23f
10:               jal        ra, 19f
11:               jal        ra, 13f
12:               c.jal      15f
13:               c.j        18f
14:               c.j        17f
15:               jal        tp, 8b
16:               c.j        12b
17:               c.j        10b
18:               c.j        25f
19:               c.j        3b
20:               c.j        5b
21:               c.j        20b
22:               c.jal      4b
23:               c.jal      11b
24:               jal        t1, 22b
25:               mulhu      s8, s8, t2
main_32:          jal        t4, 11f
0:                jal        ra, 12f
1:                c.j        13f
2:                c.jal      1b
3:                c.jal      6f
4:                c.j        14f
5:                jal        ra, 0b
6:                jal        ra, 8f
7:                c.jal      5b
8:                jal        s10, 10f
9:                jal        t2, 3b
10:               jal        ra, 2b
11:               c.jal      7b
12:               c.jal      9b
13:               c.jal      4b
14:               mulh       t1, s5, s3
                  la         s1, region_0+457 #start riscv_hazard_instr_stream_10
                  lh         a5, -1(s1)
                  fence
                  lbu        s3, 16(s1)
                  sub        t0, a5, s3
                  sw         a1, 3(s1)
                  sw         a5, -9(s1)
                  .4byte 0xe344b6f3 # kIllegalSystemInstr
                  c.sub      a4, a5
                  lbu        a4, 4(s1)
                  or         t0, a5, s2
                  lbu        s3, -14(s1)
                  mulh       a4, a1, s3
                  div        t0, t0, a1
                  sb         t0, 10(s1)
                  lb         s2, 12(s1)
                  csrrci     a1, 0x340, 24
                  lbu        t0, 13(s1)
                  slt        a4, t0, s3
                  mul        s2, s3, a4
                  addi       s2, a4, 126
                  sub        t0, a4, a5
                  lbu        a5, 6(s1)
                  lbu        a5, -4(s1) #end riscv_hazard_instr_stream_10
                  la         a3, region_1+6087 #start riscv_hazard_instr_stream_17
                  sh         s1, 185(a3)
                  fence.i
                  fence.i
                  sb         s3, -239(a3)
                  c.and      s1, s1
                  csrrs      a7, 0x340, a6
                  div        zero, s8, s8
                  csrrsi     s1, 0x340, 28
                  lhu        zero, 227(a3)
                  sb         s1, -125(a3)
                  lb         s8, 127(a3)
                  or         a7, a7, s3
                  xor        a7, s3, zero
                  srl        s3, a7, s3
                  div        a7, s3, s8
                  mul        zero, a6, s1
                  csrrwi     s3, 0x340, 17
                  rem        a7, a6, s1
                  lbu        a6, 72(a3)
                  sw         s1, 93(a3)
                  sh         s3, -65(a3)
                  sb         a7, -228(a3)
                  divu       s1, a6, a6
                  csrrci     a6, 0x340, 4
                  lh         s3, 247(a3)
                  sll        s8, s8, s3
                  lbu        a7, -6(a3)
                  rem        s8, s1, zero
                  add        zero, zero, zero
                  lbu        s8, 94(a3)
                  lb         a7, 203(a3)
                  lbu        a6, 18(a3)
                  sltu       s1, s1, s3
                  lb         zero, -218(a3)
                  lb         a6, 166(a3)
                  lbu        s8, -87(a3)
                  lb         s1, -242(a3)
                  sb         a6, 137(a3)
                  csrrwi     a6, 0x340, 20
                  c.add      s3, s1
                  and        s3, s8, s8
                  lb         s3, -90(a3)
                  lbu        a6, -198(a3) #end riscv_hazard_instr_stream_17
                  remu       s9, s8, a3
                  fence.i
                  bne        t4, zero, 17f
                  c.or       a1, a0
                  andi       t4, t2, 70
                  c.xor      s0, a2
                  bgeu       s10, a1, 24f
                  lui        s1, 998220
                  srl        tp, s11, a3
                  nop
                  c.addi     gp, 17
                  xor        s11, t1, t3
                  srli       t2, a7, 6
                  srl        s10, tp, s10
                  csrrwi     gp, 0x340, 7
                  slli       gp, a1, 1
                  c.addi     s2, -1
17:               auipc      t4, 300271
                  auipc      s9, 558938
                  sll        a4, s7, gp
                  bgeu       s1, a7, 35f
                  sltiu      t6, t5, -252
                  bltu       a5, a2, 31f
                  srl        s0, s3, s8
24:               c.srai     a3, 10
                  divu       t1, zero, a0
                  xori       t5, a5, 399
                  c.sub      a0, a4
                  csrrwi     t6, 0x340, 17
                  xor        s1, s6, s9
                  c.addi     s8, 23
31:               bge        a2, a3, 34f
                  fence.i
                  bgeu       s2, s6, 47f
34:               or         t1, s7, s6
35:               c.slli     s6, 4
                  slti       t6, a4, -618
                  fence
                  bltu       s0, zero, 40f
                  ori        s0, a5, -494
40:               mul        a0, s9, s7
                  bltu       a3, s0, 59f
                  rem        a4, s0, s9
                  sll        t0, s3, s6
                  auipc      s8, 503219
                  mulh       t2, t1, a1
                  c.andi     a5, -1
47:               nop
                  bgeu       s2, a7, 52f
                  remu       s11, sp, s4
                  lui        tp, 500583
                  sll        a3, s5, a0
52:               mulh       t0, a4, t6
                  auipc      a4, 804132
                  c.srai     a4, 21
                  beq        t6, t4, 56f
56:               mulhu      a5, s8, t3
                  c.slli     t3, 24
                  csrrwi     a2, 0x340, 5
59:               mul        s6, s5, zero
                  c.and      a5, a5
                  c.srai     a2, 3
                  c.srai     a0, 17
                  sll        a6, t1, zero
                  c.and      a1, a0
                  slli       t0, a5, 5
                  csrrsi     s10, 0x340, 18
                  c.nop
                  c.srli     a3, 2
                  or         t0, s5, s4
                  add        s9, a1, s9
                  auipc      t1, 606118
                  csrrwi     a2, 0x340, 12
                  beq        tp, s1, 75f
                  mulh       tp, t0, t4
75:               lui        a7, 273874
                  rem        s3, s3, tp
                  c.and      s1, a0
                  mul        t5, t0, zero
                  c.andi     a3, 15
                  sltu       s10, s2, s1
                  c.sub      a1, a3
                  mulh       s9, s4, s8
                  csrrci     s10, 0x340, 13
                  srl        s6, s11, s4
                  srl        s3, s9, t6
                  mulh       a5, s4, t6
                  c.srli     s1, 7
                  c.or       s1, a5
                  srai       t3, s4, 20
                  sltu       s6, s9, t0
                  c.and      a3, s1
                  mul        zero, ra, a1
                  c.li       s1, 16
                  csrrc      t6, 0x340, zero
                  c.mv       s2, s8
                  or         s2, t4, t5
                  bne        tp, s11, 110f
                  sltiu      s1, a0, 183
                  c.addi     a7, 8
                  xori       zero, t6, 672
                  slli       ra, t2, 19
                  csrrs      t1, 0x340, s3
                  srli       s0, zero, 24
                  divu       t6, s1, tp
                  remu       s1, sp, s2
                  auipc      t3, 125967
                  c.addi     a5, -1
                  andi       s10, sp, -191
                  slti       a2, s6, -888
110:              bne        s2, s1, 124f
                  slli       t1, ra, 7
                  bltu       a4, a7, 123f
                  lui        a5, 1025855
                  bltu       t1, s7, 118f
                  srai       ra, s2, 21
                  c.li       a7, -1
                  c.srai     s0, 23
118:              c.add      a4, t5
                  c.beqz     a4, 125f
                  sll        ra, zero, zero
                  slt        a1, s8, t4
                  sub        s2, t5, t3
123:              csrrsi     t2, 0x340, 7
124:              fence.i
125:              xor        gp, a4, t6
                  blt        s2, a6, 145f
                  andi       s10, s11, -775
                  c.beqz     a5, 145f
                  slt        s6, a4, gp
                  c.addi     ra, 20
                  c.li       gp, -1
                  c.bnez     a5, 146f
                  mul        a4, s1, s11
                  srl        a7, s4, s4
                  bltu       t6, a1, 137f
                  add        s1, a3, a2
137:              sra        s5, a6, s5
                  div        a3, s0, ra
                  c.addi     s6, -1
                  lui        s1, 1031023
                  csrrs      a5, 0x340, a3
                  mulh       s8, s2, s7
                  xori       a7, s3, -715
                  blt        t3, t0, 164f
145:              c.bnez     s0, 151f
146:              xori       gp, s8, -883
                  c.srli     a4, 11
                  c.addi     s1, 29
                  beq        a5, s4, 158f
                  or         s3, sp, a5
151:              csrrs      s2, 0x340, t2
                  c.xor      a5, a2
                  c.add      s10, gp
                  andi       s5, s0, -692
                  or         a0, s11, tp
                  bge        a2, a3, 161f
                  c.sub      s0, s1
158:              mulhu      s11, a5, tp
                  divu       a3, tp, tp
                  div        s8, s1, s1
161:              addi       zero, zero, -646
                  lui        t4, 157436
                  c.li       s3, -1
164:              csrrci     a2, 0x340, 26
                  add        zero, s10, t4
                  fence
                  slli       t6, s4, 14
                  c.srai     a0, 9
                  csrrsi     a6, 0x340, 19
                  or         ra, s6, s10
                  sra        s8, a2, a4
                  sll        s11, t0, zero
                  c.beqz     a0, 174f
174:              csrrci     t5, 0x340, 23
                  c.srai     a0, 1
                  andi       t0, tp, 236
                  c.and      a0, a5
                  xori       a6, t2, -893
                  c.slli     a4, 2
                  csrrs      s8, 0x340, a3
                  fence
                  c.nop
                  c.xor      a0, s0
                  andi       t0, a7, 753
                  c.srli     s0, 16
                  c.srli     s0, 2
                  c.srli     s0, 9
                  c.or       a1, a4
                  c.bnez     s0, 196f
                  sltu       a0, a2, t6
                  srl        zero, t2, t1
                  c.nop
                  c.xor      a4, a0
                  csrrwi     s5, 0x340, 7
                  c.slli     gp, 17
196:              divu       s3, t5, s3
                  csrrc      a6, 0x340, a6
                  c.and      a0, a0
                  c.lui      s1, 4
                  c.srai     s1, 31
                  blt        s9, sp, 203f
                  srl        a6, s10, a7
203:              c.add      s1, s4
                  rem        t0, t0, t2
                  div        t5, sp, s4
                  csrrs      t6, 0x340, s1
                  c.andi     a3, 16
                  divu       s8, s7, s5
                  and        t2, s11, s8
                  or         s5, a7, a2
                  sll        t6, s10, t0
                  sltiu      t6, t5, -487
                  mulh       s9, t1, s5
                  auipc      a3, 146905
                  ori        a5, s3, -914
                  bltu       s9, a7, 236f
                  mulhsu     gp, s4, t3
                  slt        t6, s2, s5
                  slt        a7, t4, a6
                  srai       s9, a4, 12
                  xor        t6, a4, s7
                  csrrsi     s5, 0x340, 11
                  fence
                  csrrc      s8, 0x340, s4
                  fence
                  c.and      a3, a5
                  auipc      t3, 627002
                  auipc      s6, 607279
                  c.or       s1, a2
                  c.slli     t6, 18
                  mul        s5, t5, gp
                  srai       t1, a3, 16
                  csrrs      s3, 0x340, s0
                  or         tp, a0, a0
                  csrrci     s5, 0x340, 8
236:              slli       t3, s6, 27
                  c.mv       a2, s5
                  sltu       s2, a3, t6
                  c.bnez     s1, 257f
                  c.nop
                  xori       t5, a3, 735
                  c.beqz     s0, 243f
243:              srli       a7, t6, 22
                  xor        s9, a2, s7
                  c.lui      a1, 26
                  beq        a4, sp, 247f
247:              bge        a0, ra, 248f
248:              fence
                  csrrw      s5, 0x340, t5
                  c.or       s0, s1
                  fence
                  c.bnez     a0, 265f
                  c.sub      a5, a4
                  xori       a3, s6, 371
                  divu       a3, s3, s4
                  c.or       a1, a1
257:              c.mv       tp, s6
                  c.slli     a6, 13
                  andi       s8, zero, -26
                  div        s6, ra, a1
                  mulhsu     a0, s6, t1
                  rem        s10, s3, t6
                  auipc      s0, 828200
                  slti       s3, s5, 689
265:              c.sub      a2, a2
                  srai       tp, ra, 10
                  and        t5, s2, s6
                  c.xor      s1, a2
                  fence
                  csrrw      tp, 0x340, sp
                  fence
                  div        t0, t0, s8
                  blt        gp, s10, 279f
                  sra        gp, a3, a3
                  sra        s11, s3, a4
                  fence
                  c.and      a3, a3
                  csrrci     a7, 0x340, 6
279:              mulhu      t4, s6, s2
                  and        s6, a0, ra
                  addi       s11, s10, -864
                  c.addi     s2, 17
                  srli       s3, a5, 10
                  csrrci     a2, 0x340, 11
                  csrrs      t1, 0x340, t6
                  addi       t1, a5, 900
                  c.slli     gp, 18
                  csrrwi     ra, 0x340, 4
                  csrrsi     ra, 0x340, 24
                  csrrc      tp, 0x340, t1
                  bltu       s8, t2, 295f
                  srl        t6, s0, s1
                  slti       a0, s1, -770
                  slti       a1, s10, -293
295:              auipc      s9, 204237
                  c.srli     a2, 17
                  slt        t4, t2, s11
                  nop
                  xor        a4, a6, s1
                  mul        a2, s0, s0
                  c.addi     t6, -1
                  c.nop
                  mulhu      s8, zero, gp
                  csrrci     s0, 0x340, 23
                  sra        s11, a2, s10
                  c.lui      a4, 25
                  c.slli     s0, 13
                  addi       s0, t0, 636
                  sll        t3, sp, t5
                  div        s8, a7, t1
                  divu       s2, a6, ra
                  sll        s11, s5, t1
                  c.beqz     a3, 322f
                  beq        gp, s11, 317f
                  c.bnez     a5, 333f
                  mulhsu     s5, sp, t1
317:              c.add      a6, gp
                  or         s2, a6, s6
                  srl        s10, a2, t2
                  ori        a2, ra, 928
                  add        t1, t4, s4
322:              csrrc      s8, 0x340, s8
                  csrrc      t0, 0x340, s3
                  csrrsi     t6, 0x340, 29
                  c.addi     gp, -1
                  sll        t0, t4, s9
                  slti       a4, t0, -898
                  c.add      s9, a3
                  divu       s1, s8, a7
                  rem        a2, a4, sp
                  bge        s0, s9, 336f
                  csrrsi     a2, 0x340, 15
333:              c.bnez     a0, 347f
                  c.addi     a4, 19
                  c.sub      s0, a3
336:              srli       s11, s9, 22
                  c.li       t0, -1
                  blt        a0, s9, 356f
                  c.srai     a2, 22
                  bge        s8, a6, 354f
                  xor        s1, a4, a6
                  sltiu      a6, a6, 866
                  xor        s1, s3, a6
                  bgeu       s9, t4, 361f
                  mul        zero, s7, a3
                  fence
347:              mulhsu     tp, ra, s2
                  and        a3, gp, s7
                  rem        a6, s6, s7
                  fence
                  or         s3, t4, a2
                  bgeu       gp, s3, 367f
                  srl        t2, s6, t5
354:              add        t3, tp, a0
                  c.or       a2, a0
356:              auipc      a2, 536993
                  srl        a7, a0, s3
                  csrrwi     zero, 0x340, 21
                  c.lui      a6, 31
                  c.sub      a1, a1
361:              slli       t5, t2, 27
                  c.li       t1, 2
                  mul        s2, a4, s2
                  bltu       s6, a2, 365f
365:              c.lui      t6, 13
                  div        a7, a3, a0
367:              c.addi     a7, -1
                  mulh       s2, s8, s9
                  c.beqz     a0, 371f
                  csrrwi     s3, 0x340, 11
371:              add        gp, a0, s11
                  rem        a2, a7, a7
                  c.beqz     a3, 380f
                  csrrwi     s0, 0x340, 20
                  slli       a6, t0, 22
                  c.xor      a5, a3
                  sra        s11, t3, t3
                  divu       s8, s10, s4
                  c.slli     s2, 31
380:              c.srli     a4, 19
                  sltu       s0, s1, t2
                  auipc      s2, 116179
                  c.mv       t1, a0
                  c.srli     a0, 14
                  lui        a7, 233705
                  nop
                  mulh       tp, gp, a0
                  c.mv       s3, s11
                  blt        a0, tp, 409f
                  srai       a4, t3, 14
                  slti       s10, s2, 770
                  rem        a7, s10, a3
                  slt        tp, a4, t6
                  c.and      a4, a1
                  c.nop
                  div        s6, a0, zero
                  c.lui      s3, 7
                  sll        s11, s3, s2
                  c.or       a1, a3
                  c.add      s1, a7
                  c.mv       t2, a4
                  csrrs      t4, 0x340, s10
                  bltu       a1, a0, 422f
                  c.srli     a4, 20
                  bgeu       s4, a3, 420f
                  andi       t0, s2, 809
                  fence
                  c.sub      s1, a0
409:              c.sub      a4, a1
                  xor        t3, a0, t4
                  and        s9, s2, s10
                  and        s10, s3, t0
                  ori        gp, tp, 818
                  sll        s2, s0, t0
                  fence.i
                  srai       s9, a6, 27
                  slli       t5, gp, 4
                  csrrwi     t6, 0x340, 12
                  or         t1, s8, a6
420:              add        zero, t4, s8
                  xori       gp, a1, 973
422:              nop
                  c.srai     a1, 19
                  auipc      s9, 967507
                  bge        s3, ra, 427f
                  sll        tp, s5, a3
427:              nop
                  and        gp, zero, s0
                  beq        t0, a4, 449f
                  ori        s6, t2, 427
                  bltu       s2, t6, 437f
                  c.li       s3, 25
                  fence
                  csrrs      s1, 0x340, s3
                  mulhsu     a7, a6, a2
                  bge        a3, a0, 440f
437:              mulhu      t0, s10, s11
                  csrrwi     ra, 0x340, 5
                  c.and      a4, a3
440:              csrrsi     s9, 0x340, 21
                  c.add      a4, s1
                  csrrsi     s1, 0x340, 0
                  add        a5, s9, s1
                  bge        a0, ra, 446f
                  sub        s2, a0, a2
446:              csrrc      t2, 0x340, t5
                  c.addi     ra, -1
                  csrrwi     s2, 0x340, 3
449:              mulhu      s8, a3, t5
                  rem        t1, s8, s5
                  fence.i
                  srl        s6, a0, tp
                  bge        s2, tp, 464f
                  c.addi     a6, 8
main_31:          jal        t4, 18f
0:                c.j        11f
1:                jal        ra, 6f
2:                jal        t1, 17f
3:                c.j        1b
4:                jal        ra, 3b
5:                jal        a2, 19f
6:                jal        t1, 21f
7:                jal        ra, 0b
8:                jal        gp, 24f
9:                c.j        4b
10:               c.jal      14f
11:               c.j        23f
12:               c.jal      22f
13:               jal        t1, 10b
14:               c.jal      8b
15:               c.jal      12b
16:               c.jal      9b
17:               c.j        5b
18:               c.jal      20f
19:               c.j        16b
20:               jal        tp, 2b
21:               c.jal      7b
22:               c.j        13b
23:               jal        ra, 15b
24:               fence
                  c.add      t2, t1
                  csrrc      tp, 0x340, s2
                  sra        a2, t6, a2
                  c.andi     a5, -1
                  c.or       s0, a3
                  bne        ra, a2, 462f
                  c.sub      a2, s0
462:              csrrwi     a2, 0x340, 12
                  c.lui      a7, 5
464:              csrrc      s2, 0x340, gp
                  c.nop
                  slt        a6, t2, zero
                  sltiu      a1, s1, -938
                  c.slli     a1, 26
                  or         s10, t5, s4
                  fence
                  c.srai     s1, 27
                  c.lui      s10, 19
                  c.xor      a3, a2
                  c.or       a3, a1
                  fence
                  c.mv       s5, tp
                  srl        tp, t2, t0
                  xor        a6, tp, t2
                  mulh       ra, s1, t6
                  xor        a4, a2, a3
                  fence.i
                  c.mv       a7, sp
                  c.xor      a1, a0
                  addi       s9, s4, 990
                  slli       a4, ra, 2
                  sra        a2, a6, s11
                  mul        s8, s8, gp
                  mulhsu     s5, s8, t4
                  beq        s7, sp, 498f
                  beq        ra, sp, 508f
                  div        t6, a6, zero
                  ori        zero, s0, -106
                  srli       t1, s8, 26
                  csrrci     s1, 0x340, 14
                  slt        s6, s9, a4
                  remu       gp, a0, s1
                  c.or       s1, a4
498:              srl        s8, s7, a1
                  c.nop
                  or         s8, s7, a1
                  c.andi     a0, -1
                  blt        t2, s8, 516f
                  c.addi     s10, 18
                  xor        t2, s9, a6
                  c.srai     a5, 26
                  c.beqz     a1, 524f
                  mulhsu     zero, a1, t1
508:              c.lui      s9, 16
                  csrrsi     t5, 0x340, 1
                  csrrc      a1, 0x340, a6
                  mulh       t3, t2, s6
                  c.slli     t5, 20
                  xor        s8, s10, s2
                  blt        a6, a7, 516f
                  c.mv       s11, a4
516:              lui        t5, 226009
                  mulhsu     s9, s4, a3
                  ori        t6, s10, -540
                  c.andi     s0, 5
                  csrrci     gp, 0x340, 15
                  rem        t1, s10, s9
                  mulh       s0, a6, a0
                  csrrwi     gp, 0x340, 30
524:              bgeu       a2, tp, 539f
                  sltu       a6, s11, a3
                  xor        a6, s2, t6
                  xor        t0, s11, gp
                  sll        a1, t5, s2
                  c.andi     a0, -1
                  fence.i
                  slli       t4, s11, 4
                  c.add      s6, t0
                  auipc      a4, 70737
                  ori        a5, tp, -960
                  c.bnez     s0, 550f
                  rem        s2, s8, a6
                  sltiu      a6, ra, -383
                  c.addi     s5, -1
539:              bgeu       a6, a2, 556f
                  remu       gp, s10, t1
                  or         zero, s2, s10
                  bltu       ra, ra, 560f
                  csrrw      t1, 0x340, a4
                  xor        a1, a5, a7
                  c.bnez     s0, 546f
546:              mul        a4, gp, t6
                  bltu       s8, a3, 548f
548:              bne        s9, a5, 557f
                  slli       a0, s5, 16
550:              sra        zero, gp, s1
                  csrrs      ra, 0x340, a7
                  sra        t5, t3, s4
                  c.add      s2, s3
                  c.xor      a3, a5
                  srli       s1, s8, 15
556:              c.lui      s8, 1
557:              sltu       a3, gp, s9
                  c.sub      a4, a4
                  c.lui      s2, 6
560:              xor        s8, tp, zero
                  mulh       s9, a6, s6
                  srli       a5, tp, 25
                  nop
                  c.sub      s1, a5
                  fence
                  slt        t3, a4, s1
                  c.nop
                  fence.i
                  c.beqz     a1, 572f
                  mulhsu     t0, s9, tp
                  rem        s0, t5, s9
572:              remu       s9, s3, a7
                  srli       s9, a4, 3
                  nop
                  bge        t1, s0, 577f
                  csrrs      s2, 0x340, t5
577:              divu       t1, sp, t0
                  c.slli     a3, 4
                  nop
                  la         t0, region_4+3049 #start load_store_instr_stream_2
                  la         s9, region_3+40 #start load_store_instr_stream_3
                  la         t2, region_2+4163 #start load_store_instr_stream_1
                  sb         t2, 33(s9)
                  la         a2, region_0+1600 #start load_store_instr_stream_0
                  lh         s3, 13(t2)
                  lb         t4, -704(t0)
                  lbu        a0, -1688(t0)
                  lh         s11, -15(t2)
                  lb         gp, -13(s9)
                  sb         a2, 78(a2)
                  lbu        t5, -39(s9)
                  lb         tp, 30(s9)
                  sh         s4, -84(a2)
                  lh         a6, -1613(t0)
                  sw         a3, -1281(t0)
                  sh         a1, 15(t2)
                  sb         zero, -525(t0)
                  sb         a4, -13(t2)
                  lbu        zero, -1256(t0)
                  sh         t1, 230(a2)
                  lb         a7, -1843(t0)
                  lhu        a4, 6(a2)
                  sb         s9, -6(t2)
                  c.lw       s0, 32(a2)
                  lhu        a7, 515(t0)
                  lb         ra, 16(t2)
                  lhu        s6, -319(t0) #end load_store_instr_stream_2
                  sb         a4, -2(t2) #end load_store_instr_stream_1
                  lbu        s8, -3(s9) #end load_store_instr_stream_3
                  lh         s2, -10(a2) #end load_store_instr_stream_0
                  divu       a2, a3, t6
                  rem        s9, s6, gp
                  xori       s5, a7, -107
                  nop
                  lui        s11, 988051
                  sltiu      s2, sp, 658
                  slt        s5, a1, t0
                  rem        a1, t0, s6
                  sltu       s0, s6, a4
                  beq        a3, a5, 593f
                  mul        zero, t3, t2
                  divu       tp, s0, a3
                  c.srai     a2, 27
593:              or         gp, t0, s7
                  csrrs      gp, 0x340, a5
                  divu       a4, s11, tp
                  csrrsi     a7, 0x340, 5
                  blt        gp, t1, 610f
                  mulhsu     s0, s0, t2
                  csrrsi     zero, 0x340, 5
                  c.srai     a2, 31
                  csrrc      t0, 0x340, s8
                  csrrc      s5, 0x340, a5
                  rem        t5, a6, zero
                  c.xor      a5, s1
                  c.or       a5, s0
                  rem        s11, a6, t3
                  mulhu      t6, t0, a0
                  fence.i
                  c.andi     s1, 17
610:              slt        s9, t3, t1
                  csrrw      t4, 0x340, a4
                  c.or       s1, s0
                  mulh       a5, s9, t0
                  csrrs      a6, 0x340, s5
                  nop
                  bge        s8, a4, 635f
                  csrrc      t4, 0x340, s7
                  mulh       a2, s2, t2
                  fence.i
                  auipc      s3, 555875
                  auipc      s5, 340804
                  auipc      a7, 91179
                  c.and      s1, a2
                  mulh       t0, tp, t1
                  csrrs      t4, 0x340, s10
                  mulhu      a2, a6, s3
                  c.mv       s6, s1
                  auipc      a7, 412645
                  bge        s4, a0, 631f
                  srl        a5, s11, a1
631:              blt        s6, ra, 651f
                  auipc      a2, 668515
                  srli       s6, s2, 27
                  csrrwi     s10, 0x340, 17
635:              csrrs      s1, 0x340, s10
                  c.add      s3, a4
                  blt        tp, t2, 639f
                  and        s1, t5, a3
639:              c.srli     a1, 24
                  fence.i
                  bgeu       a5, s9, 659f
                  sll        t1, gp, t6
                  c.srai     a2, 14
                  fence.i
                  c.andi     s0, 8
                  bge        s8, a6, 653f
                  bne        s10, t2, 652f
                  srl        t4, ra, sp
                  xori       a3, a1, 569
                  c.andi     a2, -1
651:              auipc      s3, 21997
652:              blt        s11, s6, 666f
653:              remu       gp, a4, s8
                  rem        a4, sp, t6
                  bge        a6, s0, 669f
                  sltiu      s9, a2, 712
                  srli       a4, s7, 21
                  auipc      a6, 848221
659:              bltu       s5, s0, 670f
                  bgeu       t3, a3, 666f
                  bgeu       t0, a2, 662f
662:              c.beqz     s0, 671f
                  c.xor      a2, a0
                  beq        a3, tp, 668f
                  bne        t4, a0, 679f
666:              c.add      t0, a0
                  fence.i
668:              mul        s0, sp, a7
669:              or         s9, s8, ra
670:              sltu       s9, a6, a3
671:              bge        sp, a2, 677f
                  addi       s0, t3, 440
                  addi       t0, a2, -860
                  mulhu      s3, ra, a6
                  c.or       a2, a3
                  bltu       t6, a3, 696f
677:              blt        a3, s8, 683f
                  c.mv       s5, s8
679:              bge        a4, ra, 688f
                  beq        t0, tp, 698f
                  lui        t3, 572426
                  rem        a4, s6, a6
683:              bne        t0, tp, 690f
                  mulhsu     a4, s1, s4
                  c.bnez     a3, 689f
                  csrrc      tp, 0x340, a0
                  bltu       s7, t6, 702f
688:              and        gp, s6, sp
689:              nop
690:              c.and      a4, a5
                  csrrwi     s3, 0x340, 1
                  rem        a5, t3, s1
                  lui        s2, 607754
                  sub        s3, a5, t5
                  sra        s5, a6, s5
                  xor        s10, sp, s1
                  la         t5, sub_1
                  addi       t5, t5, -347
                  c.xor      a2, a5
                  nop
                  sll        t4, s0, t4
                  bgeu       s8, a3, j__main_sub_1_4 #branch to jump instr
                  sltiu      zero, a4, -604
j__main_sub_1_4:  jalr       t4, t5, 347
                  or         s10, t0, s7
696:              fence
                  ori        zero, a5, -474
698:              c.nop
                  c.addi     s11, 28
                  mulhsu     a4, s1, s0
                  csrrci     s3, 0x340, 25
702:              and        t4, t6, a3
                  sltiu      t0, t2, 712
                  mulh       gp, sp, a6
                  remu       s9, a3, a4
                  xori       a4, a3, 221
                  slt        s8, s3, s9
                  bltu       t3, t1, 721f
                  sub        a0, s7, a1
                  c.li       t3, -1
                  c.beqz     a3, 729f
                  c.andi     a2, 28
                  csrrw      s9, 0x340, ra
                  bge        gp, a1, 729f
                  bne        a4, s10, 726f
                  c.srli     s1, 9
                  nop
                  bltu       ra, t2, 722f
                  rem        s2, s7, t6
                  c.srli     a4, 27
721:              c.sub      s0, a5
722:              c.sub      a2, a2
                  mulh       t6, a4, s6
                  div        t6, a0, a0
                  srl        t4, t1, a6
726:              c.sub      a1, a1
                  xori       ra, t3, -1000
                  mul        s3, ra, s5
729:              bltu       t0, a6, 735f
                  csrrsi     s0, 0x340, 14
                  srai       s5, t6, 19
                  c.slli     a1, 5
                  divu       s0, t3, a4
                  fence.i
735:              slti       a2, t2, 397
                  c.andi     a2, -1
                  blt        t3, t6, 739f
                  c.lui      t5, 13
739:              c.mv       s6, s5
                  bge        s2, s2, 741f
741:              remu       gp, a7, s10
                  mulhu      t3, s9, a4
                  c.addi     t2, 30
                  c.bnez     a3, 764f
                  and        a6, tp, a1
                  srli       s2, t5, 5
                  bltu       s1, gp, 749f
                  c.srai     a1, 16
749:              c.srai     a0, 24
                  andi       s6, a5, 309
                  c.slli     a4, 24
                  c.slli     a2, 9
                  addi       t4, s5, -231
                  c.beqz     a5, 756f
                  or         t2, s8, a1
756:              div        t0, t0, t6
                  div        t1, a6, a2
                  add        a1, gp, zero
                  csrrsi     ra, 0x340, 11
                  csrrwi     t4, 0x340, 17
                  sub        a5, s1, s4
                  xori       s6, s4, 441
                  bgeu       s11, s10, 777f
764:              srl        t3, t5, s7
                  srai       t1, s0, 17
                  csrrs      s11, 0x340, tp
                  mulh       gp, a2, ra
                  c.xor      a0, a4
                  add        ra, ra, a5
                  bne        ra, t5, 779f
                  csrrs      s10, 0x340, s9
                  mul        t4, t3, s4
                  c.nop
                  divu       s0, s8, s11
                  c.sub      a0, a3
                  c.slli     a6, 21
777:              sltiu      s10, s7, 634
                  sra        tp, a3, s7
779:              c.andi     s0, -1
                  blt        s4, zero, 794f
                  slt        s0, s9, a1
                  srai       t2, s0, 15
                  c.and      a3, a3
                  csrrsi     a5, 0x340, 30
                  csrrsi     tp, 0x340, 31
                  c.srai     s1, 3
                  c.srli     a2, 19
                  c.slli     t6, 27
                  sub        t4, s11, t2
                  auipc      t0, 512224
                  c.xor      a2, a4
                  xori       s6, t2, -943
                  csrrsi     s1, 0x340, 24
794:              csrrc      ra, 0x340, t1
                  fence.i
                  csrrc      t3, 0x340, a4
                  c.mv       a0, s10
                  remu       zero, s9, s8
                  c.nop
                  c.lui      s1, 2
                  srai       a3, a0, 21
                  nop
                  csrrsi     a1, 0x340, 18
                  csrrw      s8, 0x340, a6
                  add        t2, t6, a2
                  sub        a5, a0, s4
                  c.add      a2, t2
                  and        s6, s10, t4
                  or         tp, t2, t5
                  c.nop
                  slti       a1, s3, -794
                  beq        t5, s8, 831f
                  c.nop
                  c.or       s0, a5
                  csrrci     s5, 0x340, 29
                  blt        s9, a0, 819f
                  slt        a5, t3, t5
                  mul        a5, t2, a2
819:              c.srli     a0, 8
                  add        t2, s2, a4
                  rem        t5, t3, a3
                  and        t4, s5, t5
                  c.lui      a3, 6
                  srli       a7, s9, 10
                  blt        t1, zero, 845f
                  blt        a2, s4, 827f
827:              c.srli     a5, 8
                  c.xor      a2, a5
                  srl        tp, tp, s6
                  div        t2, zero, ra
831:              addi       s6, a6, -507
                  mulh       zero, t3, t2
                  divu       tp, s4, s9
                  mulhu      a0, s2, s6
                  srl        a0, a7, t2
                  slli       a7, s10, 7
                  c.srai     a3, 3
                  fence
                  xori       s8, s2, 801
                  sltu       a5, s3, s11
                  c.mv       a1, gp
                  c.addi     a4, 15
                  divu       a3, t6, a3
                  c.srli     a3, 27
845:              csrrs      s10, 0x340, a5
                  and        a4, t3, s11
                  c.and      a3, a5
                  c.srai     a5, 27
                  lui        s1, 107171
                  fence
                  csrrwi     ra, 0x340, 17
                  sll        a5, a2, s0
                  fence
                  sltu       gp, t4, t2
                  xor        s6, a7, t6
                  c.beqz     a0, 861f
                  csrrsi     ra, 0x340, 29
                  c.li       s9, 25
                  slti       a5, a4, -673
                  blt        t2, t6, 861f
861:              sub        a3, t1, sp
                  c.bnez     a0, 864f
                  rem        t5, gp, tp
864:              srai       a7, t3, 21
                  add        ra, s1, t5
                  csrrsi     gp, 0x340, 14
                  addi       s8, s5, -657
                  csrrci     s9, 0x340, 1
                  bgeu       s4, sp, 887f
                  csrrs      s2, 0x340, s11
                  c.li       a5, -1
                  beq        a3, s7, 889f
                  fence.i
                  mulhsu     s0, a7, s0
                  slt        t0, t5, s7
                  div        a4, s10, ra
                  slti       s3, zero, -656
                  sltu       s11, a3, s4
                  bge        a1, a0, 893f
                  mul        t6, s11, s2
                  c.beqz     a0, 883f
                  c.nop
883:              xor        t2, s9, t0
                  mulhsu     s10, t3, s1
                  c.addi     s2, -1
                  csrrsi     s0, 0x340, 25
887:              c.sub      a3, a5
                  rem        s11, s7, s11
889:              srai       t0, t4, 19
                  andi       s6, t2, -596
                  csrrwi     t1, 0x340, 21
                  bne        a6, t0, 911f
893:              c.nop
                  remu       a4, s0, s10
                  remu       t3, t0, s9
                  beq        tp, a6, 900f
                  fence.i
                  c.nop
                  nop
900:              fence
                  mulhu      a5, sp, t6
                  lui        a5, 1015534
                  srl        s10, s4, zero
                  auipc      s3, 617522
                  csrrs      s5, 0x340, a3
                  csrrc      a2, 0x340, a7
                  srli       a2, s7, 3
                  mulhsu     t1, a5, tp
                  andi       s9, a0, 274
                  c.beqz     a0, 915f
911:              beq        a5, t4, 929f
                  c.nop
                  c.slli     t0, 5
                  andi       a3, s4, 874
915:              sll        s5, a7, a4
                  c.nop
                  mulhu      s5, t2, t3
                  c.sub      a3, a4
                  rem        s0, a4, s6
                  xori       s6, t5, 535
                  srli       a1, tp, 27
                  csrrci     s8, 0x340, 22
                  slti       a4, s1, -740
                  fence
                  bgeu       s2, ra, 931f
                  bgeu       s10, s10, 940f
                  srl        a2, t5, a3
                  c.add      s2, s10
929:              c.addi     s6, -1
                  mulhu      s6, a1, gp
931:              c.and      s0, s0
                  csrrw      a1, 0x340, t3
                  srli       s8, s6, 18
                  blt        s11, a1, 952f
                  mul        t5, s1, t6
                  xor        a3, s4, s10
                  csrrc      a2, 0x340, s2
                  addi       t1, s3, -48
                  blt        t4, s0, 941f
940:              bgeu       a2, a0, 953f
941:              csrrc      a3, 0x340, s8
                  fence
                  sltiu      a3, a0, 837
                  c.lui      a0, 4
                  mulh       t2, a0, a1
                  slli       s8, s11, 27
                  sltu       s3, a7, sp
                  blt        t0, t4, 959f
                  rem        s11, a2, t6
                  c.li       a0, -1
                  c.li       t5, -1
952:              nop
953:              bge        t4, sp, 957f
                  csrrw      s6, 0x340, t0
                  slti       a6, t3, 911
                  mul        a2, ra, a4
957:              mulhu      s3, s3, a5
                  blt        t1, s10, 973f
959:              fence
                  addi       t3, s0, 153
                  fence.i
                  rem        s11, s3, t3
                  c.and      a0, a0
                  auipc      s0, 962715
                  sll        a5, ra, t6
                  fence.i
                  c.nop
                  c.or       s1, a1
                  mulhsu     a5, t0, a1
                  divu       s6, t6, a6
                  rem        ra, zero, s4
                  sltu       t5, t0, gp
973:              fence.i
                  c.srli     a3, 3
                  c.srai     a5, 8
                  bgeu       tp, t4, 982f
                  bltu       a6, s2, 979f
                  c.add      tp, t6
979:              mulhsu     s8, gp, a2
                  sltiu      t2, s11, 320
                  or         s2, s11, t6
982:              c.add      t3, t6
                  csrrsi     gp, 0x340, 29
                  slti       s5, a5, 999
                  beq        t1, a1, 986f
986:              mul        a0, t1, s6
                  srai       s5, s7, 26
                  srai       t5, s6, 11
                  sub        tp, a0, t5
                  and        s3, t5, t1
                  c.beqz     s0, 994f
                  sltu       a0, s10, s0
                  slti       s10, s11, 973
994:              slli       a7, s6, 22
                  rem        s0, s0, sp
                  bge        s5, gp, 1014f
                  blt        tp, t5, 998f
998:              rem        s2, s10, s10
                  c.nop
                  mulhu      a2, t5, t1
                  add        a2, zero, sp
                  c.and      a4, a3
                  srli       t6, zero, 10
                  nop
                  sub        s0, t4, a0
                  or         s0, a3, a0
                  csrrc      tp, 0x340, s7
                  xor        s10, s0, t5
                  slli       a5, s4, 23
                  bltu       a4, s8, 1019f
                  xor        a2, tp, s10
                  la         s10, sub_3
                  sll        t3, s2, t3
                  c.lui      s2, 5
                  auipc      gp, 299965
                  addi       s10, s10, 1022
                  addi       s9, sp, 968
j__main_sub_3_5:  jalr       t4, s10, -1022
                  mul        s11, t3, zero
                  div        t3, sp, a5
                  c.lui      t2, 8
1014:             c.xor      a5, a1
                  c.addi     a7, -1
                  csrrci     a3, 0x340, 24
                  bgeu       s5, s0, 1026f
                  csrrc      s6, 0x340, s0
1019:             csrrsi     t0, 0x340, 23
                  sltiu      t6, t4, 317
                  ori        a5, s7, -989
                  bltu       t6, tp, 1023f
1023:             sltiu      zero, s7, -927
                  sltiu      a0, s7, 682
                  c.and      a5, a5
1026:             c.slli     t5, 29
                  c.or       a2, s0
                  c.sub      s1, a2
                  c.sub      s1, s0
                  c.andi     s0, -1
                  and        t5, t6, t3
                  mulhu      t6, s4, t2
                  la         a0, region_3+444 #start riscv_load_store_rand_instr_stream_11
                  c.mv       s5, s2
                  lbu        s11, 59(a0)
                  srl        s2, t3, s9
                  mulhsu     a4, s11, ra
                  srl        a6, tp, s5
                  lui        a4, 878607
                  lb         s3, 15(a0)
                  add        t2, tp, s8
                  lb         a1, -48(a0)
                  mulhsu     s6, s0, a1
                  add        s6, a2, t2
                  or         t0, s3, s5
                  sub        a2, s11, a0
                  csrrw      t2, 0x340, s11
                  csrrsi     t2, 0x340, 26
                  mulh       t3, a7, t4
                  div        a5, s6, a6
                  fence.i
                  c.slli     a2, 21
                  lw         zero, 4(a0)
                  srl        a3, a1, s1
                  sw         s2, 8(a0)
                  auipc      gp, 886080
                  lb         a3, 61(a0)
                  sw         sp, 16(a0)
                  c.xor      a5, a5
                  sh         s7, 58(a0)
                  sh         t2, 0(a0)
                  c.nop
                  slli       t2, s5, 1
                  lhu        gp, -56(a0)
                  lbu        t3, 63(a0)
                  sb         t3, -1(a0) #end riscv_load_store_rand_instr_stream_11
                  lui        tp, 902557
                  sub        a7, tp, a4
                  c.and      a1, a3
                  bgeu       s4, s0, 1038f
                  sra        a0, tp, a2
1038:             csrrw      t6, 0x340, a7
                  fence
                  mulhu      a3, t1, a6
                  mulhsu     t2, t3, zero
                  auipc      t6, 744920
                  c.add      a4, t0
                  c.slli     s3, 24
                  c.mv       t2, sp
                  rem        s2, a7, a7
                  ori        a2, s2, -462
                  div        s1, t3, a2
                  remu       t1, a0, a5
                  c.and      a3, s0
                  bgeu       zero, s9, 1071f
                  csrrsi     t6, 0x340, 9
                  csrrci     s6, 0x340, 5
                  slli       t3, s2, 30
                  sll        s0, ra, s4
                  sltiu      t4, a1, -856
                  bne        a2, t3, 1064f
                  slt        a1, s9, a1
                  c.or       a3, a2
                  mulhsu     s2, a6, a2
                  csrrsi     s3, 0x340, 26
                  sltu       t4, s11, s9
                  c.srai     a0, 14
1064:             csrrci     t3, 0x340, 27
                  beq        a3, s1, 1079f
                  ori        a0, a6, 974
                  c.sub      a2, a1
                  div        a7, s6, s7
                  c.srli     s1, 31
                  sltu       t0, t6, tp
1071:             srl        s3, a4, a7
                  auipc      s6, 283602
                  mulhsu     a4, s5, a0
                  xor        a0, a1, t0
                  beq        gp, t4, 1089f
                  c.mv       tp, s4
                  or         t6, s7, zero
                  sll        t2, a6, tp
1079:             bne        a6, zero, 1094f
                  ori        s5, ra, 147
                  csrrc      s3, 0x340, s10
                  fence
                  andi       s9, s11, -825
                  slt        s5, a5, sp
                  sll        t0, t5, t2
                  c.srai     a5, 6
                  sll        s6, t2, a1
                  sll        s5, t6, s6
1089:             c.xor      a3, a0
                  srl        a5, gp, a5
                  csrrwi     s3, 0x340, 14
                  sll        gp, s5, a1
                  c.sub      s0, s0
1094:             andi       s10, s9, -8
                  lui        s9, 185830
                  xor        s10, s11, sp
                  bgeu       s3, t1, 1117f
                  sltu       tp, s9, t4
                  mulhu      a4, zero, s6
                  csrrwi     t6, 0x340, 27
                  sltiu      t6, t5, 596
                  srl        t2, t4, s10
                  divu       t1, s1, a1
                  c.slli     t4, 25
                  c.li       s2, -1
                  c.mv       a6, s11
                  div        t5, a2, t4
                  sltiu      s1, s5, -541
                  srl        s0, ra, s3
                  bge        t4, tp, 1127f
                  andi       a1, s9, 912
                  c.mv       a4, s5
                  c.lui      ra, 21
                  bge        s5, a0, 1123f
                  bltu       s10, sp, 1133f
                  xor        s0, s1, t2
1117:             c.andi     a2, -1
                  remu       tp, t3, s10
                  c.mv       gp, t4
                  c.bnez     s1, 1140f
                  csrrsi     ra, 0x340, 30
                  c.bnez     s1, 1129f
1123:             sub        a3, a5, t4
                  bgeu       s9, gp, 1125f
1125:             mulhu      a0, sp, a7
                  fence
1127:             fence
                  div        a7, t3, s2
1129:             bge        s5, a4, 1135f
                  rem        a1, s9, s5
                  ori        t5, a7, 575
                  c.and      a2, s1
1133:             c.beqz     s0, 1148f
                  sltiu      s1, a5, 751
1135:             slli       s3, zero, 20
                  c.beqz     s1, 1138f
                  c.li       ra, -1
1138:             c.srli     a0, 25
                  slt        zero, gp, a1
1140:             slli       a3, tp, 9
                  sll        t5, t2, a4
                  c.srli     s1, 26
                  srl        a4, sp, t0
                  sra        t2, a2, a4
                  mulhu      a6, s4, s10
                  c.add      s11, a0
                  lui        t0, 678001
1148:             rem        s10, s4, t1
                  srli       s3, a4, 12
                  lui        a4, 84587
                  c.bnez     s0, 1154f
                  mulhsu     a4, a5, a3
                  sltiu      t2, a0, 230
1154:             srl        t6, t1, sp
                  remu       s9, a0, a4
                  sltiu      s6, s6, 704
                  csrrci     s3, 0x340, 3
                  div        s1, zero, a2
                  mulhsu     s1, s8, s10
                  c.beqz     a1, 1178f
                  bltu       t0, s0, 1172f
                  csrrw      s9, 0x340, s8
                  rem        a0, t3, s0
                  ori        s8, t4, 378
                  blt        s4, s4, 1179f
                  mulhu      ra, ra, t1
                  xor        s2, s7, zero
                  or         t1, s0, t5
                  csrrs      t5, 0x340, t3
                  c.bnez     s0, 1172f
                  rem        zero, a0, a5
1172:             remu       zero, s6, t5
                  csrrw      t3, 0x340, tp
                  csrrsi     t3, 0x340, 20
                  csrrc      s6, 0x340, a1
                  lui        s10, 934977
                  mul        t1, zero, s5
1178:             c.andi     a3, -1
1179:             ori        a6, zero, -35
                  c.or       a0, a3
                  mulhsu     t4, a2, s11
                  c.or       a0, s0
                  c.mv       a1, s5
                  srai       a4, s5, 5
                  mul        a2, s11, s7
                  addi       a3, a5, -753
                  addi       zero, sp, -431
                  ori        a1, s0, -919
                  mulhu      a4, t1, sp
                  sll        a2, a3, t3
                  fence.i
                  csrrci     t4, 0x340, 12
                  mulhu      a4, t1, a4
                  fence.i
                  c.nop
                  bgeu       ra, t4, 1210f
                  c.sub      s0, a4
                  sra        t2, s8, s11
                  sra        t0, t4, s6
                  c.or       a0, s0
                  c.and      a3, a1
                  csrrs      s8, 0x340, s1
                  blt        a7, t1, 1222f
                  csrrc      t1, 0x340, t3
                  c.srli     s1, 24
                  c.li       t1, 29
                  c.addi     s9, 24
                  sltu       a3, a6, s4
                  csrrci     t3, 0x340, 14
1210:             andi       tp, s3, 874
                  c.andi     s0, 31
                  c.sub      a3, a1
                  addi       t2, s0, -1011
                  c.li       s8, -1
                  csrrwi     t6, 0x340, 12
                  csrrci     s8, 0x340, 31
                  csrrsi     s11, 0x340, 29
                  and        a7, t5, s6
                  sltiu      a6, s2, 509
                  remu       gp, a5, s7
                  auipc      a2, 690740
1222:             andi       zero, t6, 439
                  remu       a7, a7, s10
                  div        s2, s5, s8
                  c.srli     a3, 4
                  csrrs      s9, 0x340, s5
                  lui        s3, 183600
                  slli       s2, s1, 22
                  c.srli     a2, 4
                  sub        s8, t0, tp
                  addi       s6, a3, -684
                  csrrc      a6, 0x340, s3
                  srli       a4, t6, 24
                  mul        a0, a3, t0
                  fence.i
                  c.li       s3, -1
                  auipc      s6, 113538
                  divu       t4, a0, s0
                  bltu       a4, a5, 1240f
1240:             blt        t6, a5, 1242f
                  c.slli     s2, 23
1242:             bne        ra, a7, 1259f
                  or         zero, a2, sp
                  bne        s5, zero, 1257f
                  c.slli     s1, 8
                  add        s8, t1, sp
                  sltiu      a1, t4, 504
                  fence
                  sra        t5, s2, s11
                  blt        a6, t1, 1265f
                  divu       s3, a6, a1
                  mul        a0, zero, a5
                  c.addi     a7, 25
                  c.srli     a0, 3
                  andi       a6, zero, 509
                  and        t1, t3, t0
1257:             c.add      a5, t6
                  fence.i
1259:             auipc      zero, 645420
                  csrrs      s3, 0x340, s5
                  bgeu       t3, s8, 1262f
1262:             c.addi     t4, -1
                  div        a2, t2, t6
                  div        a6, t2, sp
1265:             srai       s2, ra, 25
                  csrrs      t1, 0x340, s3
                  divu       t0, s8, sp
                  blt        t6, s4, 1288f
                  slti       tp, t1, 530
                  bltu       s0, s2, 1272f
                  sltiu      s11, a7, -477
1272:             fence.i
                  mul        s3, s4, a5
                  csrrw      ra, 0x340, a6
                  or         ra, t1, sp
                  mulhsu     s3, a3, zero
                  c.or       a2, a2
                  slti       t1, a2, 661
                  csrrci     s6, 0x340, 4
                  slt        a5, a7, s1
                  sll        t1, a0, sp
                  mul        t6, s9, a5
                  c.and      s1, a3
                  c.beqz     a0, 1288f
                  beq        t1, s4, 1294f
                  c.srai     s1, 30
                  csrrwi     s9, 0x340, 15
1288:             remu       s6, s11, t1
                  xor        a4, s1, s4
                  add        t0, tp, a6
                  csrrsi     a4, 0x340, 13
                  csrrs      a4, 0x340, a1
                  fence
1294:             ori        a6, t6, 995
                  bge        s8, s9, 1313f
                  csrrc      t5, 0x340, tp
                  bne        t1, t5, 1311f
                  c.srai     a1, 12
                  mulhu      a4, t1, a5
                  remu       s9, s2, t3
                  c.addi     t4, 24
                  nop
                  c.bnez     s0, 1307f
                  srai       s3, a7, 12
                  csrrs      t6, 0x340, zero
                  bltu       a4, zero, 1311f
1307:             c.sub      a2, a2
                  csrrci     a0, 0x340, 5
                  blt        sp, ra, 1315f
                  xori       s6, t3, 860
1311:             andi       s3, s4, -768
                  csrrwi     t2, 0x340, 13
1313:             mulhsu     a0, tp, t0
                  sra        s3, gp, a7
1315:             sub        t6, a3, a0
                  fence
                  mulh       gp, a2, s10
                  xor        a0, a2, t4
                  xor        a0, s1, zero
                  sltu       s10, a1, tp
                  addi       a6, s6, -612
                  c.nop
                  mul        t0, gp, a3
                  bltu       s5, t6, 1342f
                  mulh       a4, s4, a2
                  srl        gp, a4, a0
                  c.and      a3, a3
                  sub        a7, s4, tp
                  c.srai     a1, 24
                  srli       s6, s1, 18
                  bltu       a5, sp, 1351f
                  c.andi     s0, 28
                  addi       a2, s11, -913
                  sltiu      s2, s11, 126
                  c.mv       t4, s10
                  slli       a2, s8, 10
                  srl        s3, s8, t4
                  nop
                  sra        s6, a1, a5
                  c.or       a0, a3
                  auipc      t0, 1009480
1342:             rem        s2, s1, a4
                  c.lui      s8, 2
                  la         t0, region_0+946 #start riscv_hazard_instr_stream_6
                  andi       a4, a4, -671
                  c.slli     a4, 23
                  remu       s5, a6, s5
                  sb         a4, -925(t0)
                  c.add      tp, s8
                  xor        s6, s5, s6
                  lbu        s6, -84(t0)
                  sb         s5, 1403(t0)
                  srli       tp, a4, 13
                  auipc      s8, 519368
                  lbu        tp, -677(t0)
                  lb         tp, 1299(t0)
                  c.nop
                  sh         s8, 548(t0)
                  slt        s8, a6, tp
                  c.xor      a4, a4
                  sub        tp, tp, tp
                  sh         tp, 1308(t0)
                  csrrwi     tp, 0x340, 27
                  auipc      s8, 631461
                  lhu        a4, 1076(t0)
                  lw         tp, 858(t0)
                  lh         a6, -804(t0)
                  xor        s6, s6, s6
                  mulhsu     a4, a4, a6
                  divu       a4, a4, s5
                  lh         a6, 304(t0)
                  lh         s6, 20(t0)
                  remu       a6, s8, tp
                  sb         s5, 1113(t0)
                  sb         a4, 1511(t0)
                  mul        s6, s5, s6
                  c.addi     a6, -1
                  sb         s6, 879(t0)
                  lb         s6, 1356(t0)
                  c.sub      a4, a4
                  lb         s5, 55(t0)
                  c.andi     a4, -1
                  or         a4, tp, a6
                  nop
                  sb         tp, 190(t0)
                  sub        tp, s5, a4
                  mulh       s8, a6, s5
                  lhu        s8, 1146(t0) #end riscv_hazard_instr_stream_6
                  c.beqz     a3, 1346f
                  c.bnez     a3, 1356f
1346:             c.sub      a0, a4
                  csrrw      t5, 0x340, t0
                  xori       a3, s8, 24
                  nop
                  sltiu      a0, a0, -365
1351:             slt        a7, t3, zero
                  beq        a2, s9, 1358f
                  mulhsu     a6, t6, a0
                  lui        t2, 526023
                  nop
1356:             csrrci     gp, 0x340, 26
                  slli       s0, s8, 4
1358:             fence.i
                  blt        s3, s1, 1363f
                  c.andi     a4, -1
                  c.and      s1, a1
                  mulh       a3, s7, a0
1363:             sltiu      a5, zero, -469
                  c.srai     a0, 8
                  fence.i
                  bne        a5, s5, 1372f
                  srai       s5, s9, 21
                  c.add      tp, s0
                  c.srli     a3, 7
                  csrrwi     s11, 0x340, 25
                  andi       a5, ra, 214
1372:             sltiu      t3, a7, 172
                  sll        s11, t5, tp
                  xori       s10, s2, 452
                  c.add      gp, s8
                  c.slli     s6, 17
                  xor        s6, t2, t3
                  or         tp, t3, t5
                  c.mv       a0, a7
                  beq        a6, gp, 1389f
                  nop
                  mulh       tp, zero, s9
                  slti       s2, a0, -504
                  c.nop
                  auipc      s2, 489407
                  or         s1, s10, t0
                  remu       s3, a0, t5
                  c.srli     a0, 2
1389:             fence
                  c.nop
                  and        zero, s3, a3
                  fence
                  c.andi     a5, -1
                  sub        a5, a2, s8
                  ori        a0, tp, -417
                  srl        a2, s8, t1
                  c.or       a0, s1
                  c.andi     s1, 27
                  auipc      s2, 387232
                  addi       a4, t5, 489
                  c.add      tp, sp
                  csrrci     t5, 0x340, 3
                  c.andi     a4, -1
                  c.srai     a2, 9
                  csrrsi     t1, 0x340, 15
                  srai       s5, s8, 17
                  slt        t6, tp, a1
                  csrrsi     a4, 0x340, 0
                  c.add      s2, t4
                  mulhsu     t3, s5, s6
                  or         a6, a7, t3
                  div        s0, a7, a1
                  c.addi     t4, 5
                  andi       a5, t5, 995
                  mulhu      t6, a3, gp
                  slti       a4, a6, -993
                  bne        t6, zero, 1420f
                  mul        t4, s5, a2
                  beq        a2, s1, 1421f
1420:             c.andi     a1, -1
1421:             sltiu      s9, gp, -859
                  slli       t3, s10, 26
                  rem        t4, t0, s10
                  bgeu       a0, s5, 1429f
                  fence
                  c.add      t6, t3
                  ori        s5, ra, -961
                  slli       s11, a7, 20
1429:             c.srai     a3, 27
                  blt        s6, s7, 1437f
                  c.beqz     a0, 1448f
                  c.xor      a3, a1
                  blt        s9, s10, 1434f
1434:             or         s10, a1, s11
                  mulhu      tp, a2, a4
                  addi       s5, s3, 628
1437:             fence.i
                  auipc      zero, 949583
                  bne        s11, a0, 1441f
                  slt        t6, t0, gp
1441:             remu       s1, s2, a5
                  nop
                  xori       a1, s6, -588
                  auipc      t5, 856265
                  xori       a3, s0, 101
                  la         t1, sub_3
                  sltiu      a0, s1, 1014
                  ori        s9, s11, 98
                  addi       a1, t4, 147
                  c.addi     a7, 10
                  addi       t1, t1, 117
                  or         t6, a6, s10
                  fence.i
j__main_sub_3_1:  jalr       t4, t1, -117
                  add        t2, zero, t4
                  csrrsi     a5, 0x340, 5
1448:             add        s8, a3, a7
                  c.sub      a5, a1
                  xor        s5, a1, zero
                  c.sub      s1, a3
                  c.sub      a2, a2
                  sltu       t0, t0, s5
                  c.sub      a1, a4
                  srl        t6, t6, s3
                  c.nop
                  c.li       a3, 6
                  sub        t0, s1, a4
                  mulh       a3, zero, t2
                  fence
                  c.xor      a0, a0
                  fence.i
                  c.xor      a3, a3
                  csrrs      t4, 0x340, t0
                  srai       a5, gp, 19
                  auipc      gp, 751675
                  beq        t5, s6, 1476f
                  xori       a7, a5, -924
                  divu       gp, gp, s1
                  mul        s1, s6, s4
                  div        s9, a4, t6
                  bgeu       s2, sp, 1486f
                  csrrs      a2, 0x340, a1
                  lui        a3, 817059
                  bltu       t4, s7, 1476f
1476:             andi       a0, zero, -318
                  c.andi     a4, 16
                  c.beqz     s1, 1479f
1479:             sltu       s8, s4, s4
                  div        gp, tp, t0
                  srai       s0, t6, 17
                  bge        zero, a1, 1497f
                  c.lui      t6, 19
                  c.and      a2, s1
                  fence.i
1486:             csrrc      s2, 0x340, a1
                  auipc      ra, 840213
                  bge        s9, t6, 1501f
                  csrrc      s5, 0x340, t5
                  bgeu       a6, a0, 1504f
                  nop
                  remu       t6, s8, s6
                  c.srai     s1, 23
                  bne        s5, s6, 1512f
                  csrrwi     a7, 0x340, 7
                  bltu       t0, s6, 1511f
1497:             csrrc      t3, 0x340, t1
                  rem        a2, a2, a0
                  divu       t0, ra, a2
                  mulhu      s2, t6, t1
1501:             c.or       a4, a0
                  srli       t6, s2, 7
                  or         a4, a5, s1
1504:             or         a7, ra, s4
                  add        a4, s5, a2
                  csrrsi     s8, 0x340, 11
                  and        s8, s1, a2
                  remu       tp, t5, sp
                  divu       a4, a5, t3
                  rem        gp, s5, s1
1511:             c.beqz     a3, 1529f
1512:             srli       s8, ra, 7
                  divu       a1, t3, a3
                  mulhsu     s1, a5, a3
                  csrrw      s9, 0x340, ra
                  csrrc      s2, 0x340, zero
                  mulhu      a3, s6, t0
                  mul        tp, a6, s5
                  bgeu       s0, s11, 1521f
                  bltu       gp, s2, 1540f
1521:             c.and      s0, a2
                  andi       s3, a6, -116
                  srai       s11, zero, 7
                  beq        t3, t0, 1538f
                  csrrs      a4, 0x340, a1
                  lui        s0, 488157
                  addi       s0, s1, 94
                  div        zero, a2, a1
1529:             c.and      a2, a5
                  slli       a7, s4, 19
                  andi       t4, t1, -332
                  ori        t6, ra, 379
                  csrrsi     a3, 0x340, 0
                  srli       t3, t3, 22
                  divu       s9, s5, s4
                  sltu       gp, a0, s3
                  mul        ra, zero, s5
1538:             c.xor      a3, a5
                  andi       s8, t3, 684
1540:             csrrci     tp, 0x340, 0
                  c.li       t5, -1
                  csrrw      t2, 0x340, t5
                  c.lui      t2, 22
                  sll        s1, s6, s7
                  lui        gp, 1007839
                  bge        ra, gp, 1550f
                  slti       a1, s5, 242
                  c.beqz     a2, 1567f
                  c.sub      a4, a4
1550:             srl        a2, s11, a1
                  beq        sp, t4, 1569f
                  csrrw      a2, 0x340, s10
                  ori        a2, t3, -896
                  div        s6, s7, s2
                  mulhsu     s5, a4, t0
                  bltu       s2, a4, 1560f
                  rem        s5, s6, t0
                  csrrsi     s8, 0x340, 19
                  or         ra, s8, s2
1560:             c.srai     s0, 10
                  lui        t3, 432806
                  srli       s10, gp, 30
                  blt        tp, s5, 1565f
                  and        s8, ra, s8
1565:             c.srai     a3, 18
                  or         tp, s7, zero
1567:             csrrs      s1, 0x340, t5
                  bge        s1, gp, 1585f
1569:             divu       ra, s8, a0
                  mulh       s6, s2, gp
                  beq        s11, zero, 1573f
                  remu       s8, t0, s11
1573:             srl        s1, s10, ra
                  mulhsu     t2, t6, t0
                  csrrw      s2, 0x340, a6
                  auipc      s2, 540000
                  add        s2, s1, t1
                  addi       s10, sp, -208
                  sll        s5, a4, tp
                  c.andi     a0, -1
                  lui        a5, 106899
                  addi       a4, a6, -321
                  auipc      t6, 64581
                  c.and      a0, s0
1585:             c.nop
                  lui        t1, 561887
                  bge        t6, s1, 1602f
                  bne        t1, ra, 1607f
                  auipc      a4, 543000
                  sra        a4, t2, s10
                  xor        a3, s8, t1
                  c.and      a4, a2
                  srli       t6, t3, 2
                  addi       t6, t5, -609
                  srli       t1, a6, 13
                  sll        t0, a5, s11
                  srai       s0, s10, 10
                  mulh       ra, s11, s5
                  rem        a1, s9, tp
                  add        t0, gp, t2
                  srai       tp, sp, 5
1602:             lui        t6, 337135
                  c.add      a4, gp
                  c.slli     tp, 19
                  mulhu      a6, s1, s1
                  bgeu       a2, a1, 1612f
1607:             xor        t0, tp, t4
                  csrrc      zero, 0x340, s4
                  csrrci     a2, 0x340, 21
                  sltu       t2, tp, tp
                  mulhsu     a4, t1, a7
1612:             blt        t4, s7, 1621f
                  srai       gp, a5, 9
                  bgeu       a3, tp, 1615f
1615:             srl        t4, a0, s8
                  lui        s10, 375409
                  fence.i
                  c.beqz     a5, 1620f
                  fence.i
1620:             c.xor      a0, a5
1621:             c.nop
                  csrrwi     gp, 0x340, 15
                  c.xor      a0, a0
                  c.or       a3, a4
                  bge        s3, s8, 1639f
                  bltu       a1, a7, 1629f
                  sltu       t2, t1, tp
                  srli       t1, a3, 21
1629:             bne        s8, ra, 1630f
1630:             fence
                  fence
                  add        s3, s0, t6
                  ori        s6, t6, -92
                  csrrw      a6, 0x340, t5
                  c.li       t4, 28
                  fence
                  slt        ra, a4, a7
                  sub        t4, s0, s6
1639:             blt        a6, s8, 1645f
                  c.nop
                  csrrci     a7, 0x340, 28
                  rem        s9, gp, s0
                  c.add      ra, t6
                  auipc      s1, 948123
1645:             c.addi     a3, 23
                  sub        s5, a0, a6
                  remu       t6, ra, a6
                  srli       a2, s4, 27
                  sltiu      s8, t2, 958
                  c.nop
                  mulhu      t4, s10, s2
                  slt        a6, t5, a1
                  add        a4, s9, s3
                  and        t6, t1, t2
                  auipc      zero, 457366
                  c.srai     a3, 28
                  csrrw      a0, 0x340, s3
                  c.bnez     a3, 1660f
                  c.li       s1, 20
1660:             sltiu      a7, t6, 422
                  mulhsu     s11, a7, s7
                  mulhsu     s11, tp, s5
                  c.slli     s11, 28
                  div        a0, a1, a4
                  addi       t6, a7, 432
                  csrrc      s6, 0x340, s11
                  csrrc      a4, 0x340, a4
                  fence.i
                  divu       gp, s8, s2
                  fence.i
                  beq        zero, t3, 1678f
                  add        s5, s10, s0
                  c.lui      tp, 5
                  remu       tp, s6, t3
                  csrrw      t0, 0x340, s5
                  andi       s0, a0, 688
                  xori       a2, ra, 825
1678:             sll        s2, t3, s1
                  fence
                  fence.i
                  mulh       zero, a6, t5
                  xor        t3, a0, s7
                  c.mv       ra, s6
                  mulhsu     t1, a4, ra
                  sltiu      s0, s6, -376
                  csrrci     s2, 0x340, 6
                  csrrc      a3, 0x340, a0
                  andi       s11, t2, 806
                  mulhu      tp, a5, a1
                  auipc      t3, 629163
                  bltu       s9, a3, 1695f
                  sub        tp, s2, gp
                  bltu       s8, t6, 1698f
                  c.sub      a4, a3
1695:             c.li       gp, -1
                  lui        t6, 68194
                  slli       ra, a0, 23
1698:             mulh       s9, zero, t6
                  beq        t4, a7, 1717f
                  mul        a1, s5, s7
                  c.xor      a2, a2
                  slt        s9, t2, s8
                  srli       s0, a5, 10
                  divu       a1, s1, t6
                  ori        s6, tp, 555
                  sltiu      s2, gp, -264
                  mul        zero, s3, s5
                  addi       a7, t0, -1020
                  divu       a2, t4, s5
                  fence.i
                  slli       gp, s1, 21
                  add        s9, sp, s5
                  c.slli     a4, 8
                  sltiu      a3, t4, -61
                  c.and      a1, s1
                  csrrs      gp, 0x340, a4
1717:             sltiu      s5, s4, 422
                  c.sub      s0, a5
                  csrrc      s0, 0x340, a4
                  sub        t5, t1, t1
                  divu       a4, s4, t5
                  c.andi     a2, 12
                  mulhsu     t3, s8, s1
                  add        s1, a2, s11
                  bltu       a0, t3, 1739f
                  slli       s5, a6, 30
                  xori       t4, s4, -334
                  csrrc      a1, 0x340, s0
                  nop
                  sll        t4, t3, s6
                  srai       s8, a3, 24
                  or         t3, a0, t3
                  beq        t6, s10, 1748f
                  c.add      s1, s10
                  c.bnez     a5, 1748f
                  mulh       s0, a4, sp
                  c.mv       s5, s1
                  xor        t5, a6, a6
1739:             c.sub      a4, s1
                  mulh       t3, a3, t0
                  bgeu       gp, tp, 1742f
1742:             c.and      a5, s0
                  c.srli     a2, 20
                  c.mv       a7, s7
                  mul        s2, gp, a5
                  c.and      a0, a0
                  csrrs      a7, 0x340, s6
1748:             fence.i
                  remu       t5, a3, a5
                  c.sub      a3, s0
                  csrrsi     zero, 0x340, 28
                  sra        a0, s1, s9
                  bgeu       s8, s3, 1773f
                  add        s9, t1, t6
                  fence
                  srl        s10, s3, ra
                  add        a7, t6, s0
                  csrrc      s10, 0x340, s8
                  fence
                  bltu       zero, a5, 1780f
                  blt        t4, t2, 1770f
                  slli       zero, s4, 5
                  c.srli     a4, 4
                  csrrw      tp, 0x340, a6
                  c.li       s3, 17
                  c.add      s3, s4
                  csrrci     s8, 0x340, 25
                  sltiu      s5, s2, 296
                  sltiu      a6, s11, 520
1770:             c.andi     a0, 6
                  c.or       a2, a2
                  sltiu      s2, a6, -431
1773:             bne        a7, t6, 1784f
                  c.nop
                  c.slli     a4, 4
                  add        a6, gp, s0
                  c.lui      a5, 28
                  nop
                  csrrc      a1, 0x340, s3
1780:             mul        a6, a2, t4
                  c.or       s0, a5
                  add        s3, s7, a4
                  c.sub      a5, s1
1784:             c.slli     a5, 23
                  andi       t3, s7, 878
                  csrrs      tp, 0x340, t5
                  divu       t0, s3, a1
                  slli       tp, s10, 19
                  blt        s8, a4, 1807f
                  remu       s5, a6, s9
                  lui        s6, 1015863
                  bge        t0, t1, 1806f
                  rem        s0, s4, s9
                  c.mv       s2, s1
                  divu       s0, s9, s2
                  c.and      a3, a5
                  xor        a3, a7, s8
                  c.addi     t2, 28
                  srl        t4, a1, s6
                  bge        gp, s5, 1818f
                  rem        s2, gp, a7
                  xor        a0, s1, zero
                  csrrci     s10, 0x340, 14
                  ori        t3, a1, 892
                  c.mv       t0, s6
1806:             srai       s2, tp, 26
1807:             ori        s8, s2, -901
                  c.srli     s0, 1
                  fence
                  div        zero, s7, s4
                  auipc      a3, 608699
                  bltu       s5, s7, 1827f
                  mulhu      a3, s4, ra
                  c.or       s0, a4
                  bgeu       s6, s3, 1816f
1816:             slt        s11, a1, s2
                  mulhsu     a0, t0, tp
1818:             c.bnez     a0, 1819f
1819:             csrrci     t1, 0x340, 29
                  auipc      s1, 968535
                  divu       gp, s2, a1
                  srai       t4, s7, 7
                  addi       a0, t5, -810
                  c.addi     s0, 24
                  c.andi     a4, 9
                  andi       zero, s5, 503
1827:             c.addi     gp, -1
                  div        s6, t1, s11
                  sub        a5, a2, a4
                  auipc      a4, 493982
                  xori       t4, a6, -999
                  c.addi     gp, 26
                  bltu       a2, s4, 1842f
                  and        a1, s8, tp
                  rem        t5, s6, a4
                  sltu       zero, s8, s6
                  lui        a2, 85530
                  addi       s5, t4, -555
                  mulhu      a6, s5, t2
                  sltiu      s3, a0, 206
                  sub        s9, s2, s11
1842:             mulhsu     t2, t6, a3
                  csrrci     t2, 0x340, 13
                  csrrci     t0, 0x340, 1
                  xor        t4, a0, s9
                  sltu       s3, sp, a4
                  mulhsu     t5, s8, s6
                  remu       a7, a7, s5
                  c.add      a6, s11
                  auipc      t1, 616349
                  csrrw      s9, 0x340, tp
                  slti       t5, s5, 175
                  srli       tp, a3, 1
                  mul        zero, s6, a4
                  mulh       a3, a6, t6
                  c.li       a4, 27
                  csrrwi     t5, 0x340, 8
                  fence
                  c.add      s8, t2
                  mulh       a7, t5, t0
                  srli       s5, a7, 30
                  mulh       s2, gp, s7
                  c.add      a2, a5
                  csrrci     a1, 0x340, 16
                  csrrwi     t4, 0x340, 27
                  rem        zero, a6, a4
                  csrrci     a2, 0x340, 10
                  mulhu      s10, t5, a2
                  c.xor      a5, a2
                  srai       gp, t0, 23
                  csrrsi     t3, 0x340, 10
                  addi       s5, a3, 900
                  c.andi     a0, -1
                  xor        t1, a4, s7
                  csrrs      gp, 0x340, s0
                  c.addi     a6, 7
                  mulhsu     a1, t0, s7
                  csrrc      t3, 0x340, s8
                  bne        s9, s0, 1888f
                  auipc      a0, 87813
                  sub        t0, s1, a2
                  xor        s1, s6, tp
                  beq        tp, s0, 1903f
                  c.srai     a4, 19
                  c.sub      a2, a3
                  srli       s3, a3, 23
                  bltu       ra, s1, 1889f
1888:             sub        a1, a2, ra
1889:             c.srai     s1, 25
                  xori       zero, t1, -412
                  beq        ra, zero, 1910f
                  csrrc      a7, 0x340, a1
                  xori       tp, t3, 64
                  slli       s10, a0, 6
                  remu       s6, s10, s0
                  c.xor      s0, a5
                  blt        s3, a5, 1901f
                  sll        a1, t5, t5
                  srai       a2, a5, 17
                  csrrwi     tp, 0x340, 7
1901:             ori        s6, t3, 133
                  mulh       ra, s10, s8
1903:             csrrw      a0, 0x340, s11
                  or         s2, s10, sp
                  csrrw      gp, 0x340, t6
                  c.sub      a1, a4
                  srli       a1, s7, 4
                  ori        t4, s8, 713
                  fence.i
1910:             lui        t3, 882310
                  or         a5, t4, sp
                  csrrw      a5, 0x340, a0
                  lui        a7, 763206
                  c.add      t1, t4
                  auipc      a7, 127202
                  c.addi     a1, -1
                  c.and      s0, a4
                  bne        t5, t1, 1920f
                  srl        a0, s7, a0
1920:             c.srai     a1, 25
                  c.and      a3, a4
                  srli       a0, t5, 31
                  srl        a1, t2, a2
                  fence
                  c.add      a7, a5
                  slti       t2, t2, 394
                  divu       s10, s6, a7
                  sltu       s10, zero, t0
                  sub        s3, a3, ra
                  bne        a2, s4, 1948f
                  sra        s10, a2, t0
                  fence.i
                  mulhsu     t6, tp, a6
                  rem        s11, t3, s0
                  beq        ra, t5, 1949f
                  csrrs      a4, 0x340, a2
                  andi       s0, s8, -551
                  c.srai     a4, 5
                  c.srli     s0, 29
                  srai       s8, a4, 2
                  c.slli     ra, 7
                  slti       a3, t2, -168
                  auipc      a5, 1000224
                  srai       a7, a1, 7
                  srl        a0, ra, t6
                  sll        s3, s0, s6
                  slli       s9, s0, 19
1948:             c.bnez     a4, 1962f
1949:             c.beqz     a5, 1962f
                  and        s11, s3, t5
                  sltu       s6, sp, s0
                  slli       a7, a4, 18
                  c.addi     ra, -1
                  mulh       tp, t3, s0
main_40:          jal        t4, 20f
0:                c.jal      7f
1:                c.j        6f
2:                c.j        17f
3:                c.j        5f
4:                jal        ra, 22f
5:                c.j        8f
6:                jal        ra, 18f
7:                c.jal      9f
8:                c.jal      23f
9:                c.j        3b
10:               c.jal      24f
11:               c.j        13f
12:               jal        t1, 21f
13:               jal        t1, 0b
14:               c.j        11b
15:               c.j        2b
16:               c.j        14b
17:               c.jal      25f
18:               c.j        19f
19:               c.j        26f
20:               c.j        12b
21:               c.jal      10b
22:               jal        ra, 28f
23:               jal        t1, 29f
24:               jal        ra, 27f
25:               c.jal      4b
26:               c.j        15b
27:               c.jal      1b
28:               c.jal      16b
29:               slli       t5, a0, 29
                  c.and      s0, a1
                  c.bnez     a5, 1967f
                  csrrw      gp, 0x340, a0
                  mul        a7, t6, s9
                  add        t0, a0, t0
                  xor        t2, a0, s10
                  c.and      a0, a3
1962:             srai       s5, s9, 6
                  c.addi     a4, 10
                  beq        a5, s11, 1978f
                  xor        s6, zero, s8
                  csrrc      s5, 0x340, a7
1967:             auipc      a4, 553736
                  c.sub      a1, a2
                  srl        t4, tp, s4
                  c.and      a4, s0
                  c.srli     a0, 1
                  c.mv       tp, a7
                  c.addi     a0, -1
                  blt        a0, a5, 1989f
                  bltu       a2, a3, 1981f
                  bgeu       s8, s10, 1981f
                  c.and      a5, a0
1978:             sub        tp, a3, a3
                  bltu       s2, s0, 1996f
                  c.lui      a0, 11
1981:             c.xor      a1, a2
                  srli       a6, a5, 15
                  csrrc      s8, 0x340, a3
                  c.bnez     a5, 1986f
                  c.mv       t5, a6
1986:             c.add      a2, s8
                  add        s1, a0, sp
                  addi       t5, s6, -741
1989:             sltiu      a1, a3, -432
                  c.sub      s1, a0
                  csrrwi     ra, 0x340, 14
                  srli       a5, s6, 0
                  ori        a5, s6, 261
                  c.li       t5, -1
                  c.li       s10, -1
1996:             bne        tp, a3, 2000f
                  c.li       gp, 7
                  c.slli     tp, 24
                  bgeu       a7, a4, 2019f
2000:             sltu       a2, t6, a5
                  and        t2, s9, ra
                  xor        t3, a6, s3
                  mul        a1, ra, sp
                  bne        a4, a1, 2010f
                  xori       s3, a2, -543
                  bltu       a6, s5, 2009f
                  c.and      a4, a5
                  csrrw      a0, 0x340, a3
2009:             srai       s5, sp, 9
2010:             mulhu      s0, s1, s1
                  c.mv       s8, t1
                  c.li       a5, -1
                  srl        s1, zero, s4
                  c.sub      a4, a5
                  c.add      t2, ra
                  nop
                  csrrwi     t3, 0x340, 22
                  beq        a6, a3, 2020f
2019:             slt        a2, s2, s11
2020:             andi       zero, t5, -560
                  ori        s2, gp, 902
                  csrrs      s1, 0x340, s10
                  mulh       a2, s1, t3
                  remu       s1, t4, s11
                  c.sub      s0, a2
                  sra        zero, s10, a3
                  lui        a7, 931876
                  blt        zero, t1, 2029f
2029:             remu       a2, s8, gp
                  c.xor      a3, a0
                  nop
                  srai       s9, t3, 3
                  blt        s11, s6, 2051f
                  bne        a6, a3, 2041f
                  sra        a3, t0, t0
                  divu       ra, a1, t0
                  c.andi     s1, 8
                  csrrs      ra, 0x340, a7
                  c.srai     a0, 22
                  sub        s5, a2, s10
2041:             ori        s2, a5, 762
                  c.sub      a1, s1
                  c.add      a3, s6
                  c.nop
                  c.or       a0, a1
                  csrrw      t4, 0x340, a3
                  c.slli     a1, 21
                  add        s10, s3, a2
                  c.and      a0, s1
                  sra        s1, s5, a3
2051:             csrrc      s3, 0x340, zero
                  srli       a7, a6, 1
                  c.slli     t1, 2
                  div        t6, a0, tp
                  c.and      s0, s1
                  addi       t6, t4, 787
                  div        a1, s4, s1
                  mulh       a2, a4, s0
                  mulhu      a6, s2, a3
                  add        s1, s11, a6
                  c.srai     a0, 15
                  auipc      gp, 459299
                  c.slli     a0, 28
                  c.and      a4, a0
                  csrrsi     t5, 0x340, 0
                  beq        a7, t5, 2083f
                  c.or       a1, a2
                  srl        s10, s3, s2
                  c.andi     a0, -1
                  div        t5, t1, a7
                  c.slli     t6, 9
                  bge        t0, t3, 2078f
                  c.or       a2, s0
                  div        t4, s5, s4
                  lui        ra, 571815
                  sltu       a4, a5, a7
                  c.nop
2078:             srli       a2, s11, 27
                  fence.i
                  csrrsi     gp, 0x340, 27
                  xori       s11, a4, 303
                  c.xor      a2, a3
2083:             sub        a6, t3, t3
                  or         a0, s1, s0
                  csrrsi     s0, 0x340, 22
                  addi       s11, a4, 907
                  c.xor      a3, s1
                  and        s0, tp, t3
                  remu       t3, s8, t4
                  c.srli     a0, 20
                  slt        s1, s4, t4
                  addi       a3, s8, -408
                  c.srai     a5, 31
                  div        a7, s9, t5
                  c.mv       a5, s1
                  sltiu      s5, a6, 57
                  c.li       s8, 25
                  divu       s3, t0, s0
                  sub        s0, t0, a5
                  slti       tp, s0, -679
                  c.li       a6, 10
                  bge        a1, s5, 2109f
                  andi       s1, t6, 823
                  c.mv       a2, t3
                  csrrc      s11, 0x340, s1
                  remu       a0, t6, a2
                  csrrci     a1, 0x340, 28
                  c.mv       t2, ra
2109:             srl        s6, zero, t0
                  csrrw      a3, 0x340, s1
                  sub        a7, a4, s4
                  csrrw      tp, 0x340, a5
                  c.slli     s8, 11
                  remu       gp, ra, t1
                  c.beqz     a5, 2130f
                  csrrs      a2, 0x340, a3
                  c.or       s0, a3
                  srai       a1, a3, 3
                  sra        a1, t2, s2
                  auipc      s1, 343132
                  slt        s5, s8, t3
                  divu       a0, ra, sp
                  lui        a7, 21983
                  mul        a2, t3, s5
                  beq        a7, s10, 2129f
                  bne        a7, s3, 2145f
                  nop
                  csrrc      s6, 0x340, a4
2129:             remu       a7, gp, a6
2130:             mulh       t6, t1, s1
                  c.add      s0, s7
                  andi       t0, a0, -244
                  c.or       s1, a4
                  csrrwi     s10, 0x340, 10
                  bgeu       s1, t4, 2137f
                  div        s10, t3, a0
2137:             bltu       s8, s7, 2146f
                  c.mv       t6, s8
                  c.and      a0, a4
                  nop
                  csrrci     s3, 0x340, 17
                  c.addi     a4, 8
                  mul        ra, s9, t4
                  nop
2145:             c.addi     t4, 20
2146:             andi       s1, s6, -274
                  fence
                  c.lui      t0, 24
                  bge        t6, tp, 2163f
                  csrrs      a4, 0x340, s5
                  mulh       t3, s7, a5
                  csrrsi     gp, 0x340, 1
                  slti       s1, s4, 981
                  beq        t6, s1, 2168f
                  c.andi     a4, 31
                  mulhu      a7, a2, s7
                  slti       s0, a7, 809
                  c.srai     a0, 28
                  c.slli     t3, 6
                  sll        t5, t0, a5
                  nop
                  srli       gp, s2, 21
2163:             xor        t0, t2, a0
                  csrrc      t2, 0x340, gp
                  slti       gp, s0, -477
                  csrrci     s9, 0x340, 25
                  or         a0, s11, t1
2168:             mul        s1, a4, s5
                  beq        t2, t3, 2171f
                  div        s9, tp, s10
2171:             c.nop
                  remu       t1, a7, a4
                  c.addi     a1, -1
                  or         s8, sp, t1
                  ori        s5, t0, 403
                  sub        t1, s11, a5
                  csrrsi     a2, 0x340, 25
                  bge        t3, s1, 2189f
                  bne        t3, t4, 2197f
                  nop
                  fence
                  add        zero, a2, a5
                  slti       t0, s7, -795
                  slli       t2, s1, 3
                  and        t2, t3, t5
                  csrrs      s8, 0x340, sp
                  c.bnez     s0, 2207f
                  c.nop
2189:             addi       t5, ra, -180
                  slt        t6, s6, a2
                  c.slli     s1, 22
                  mulhu      t0, sp, a0
                  c.add      s5, t2
                  div        s3, a4, t2
                  mulhu      s1, a1, t6
                  or         s3, ra, s2
2197:             or         gp, sp, ra
                  divu       a4, t0, s10
                  srai       a2, t6, 23
                  xori       s11, sp, 50
                  mul        a2, ra, s2
                  beq        t1, tp, 2217f
                  bge        zero, s0, 2221f
                  add        s10, t5, s11
                  lui        a1, 149662
                  bge        s4, s0, 2207f
2207:             slli       tp, t1, 15
                  add        a2, s9, s6
                  sltiu      t1, s0, 301
                  sra        s6, t4, s5
                  c.mv       t1, s1
                  mul        s8, t1, a2
                  sll        t6, s0, s4
                  c.li       t6, 26
                  csrrwi     a4, 0x340, 2
                  c.srai     a1, 17
2217:             and        t2, s7, s9
                  sll        s11, s1, s1
                  srli       t3, a6, 24
                  blt        gp, t5, 2223f
2221:             slt        s5, zero, s0
                  nop
2223:             beq        t3, a4, 2224f
2224:             divu       a1, s6, t1
                  sub        a7, s10, a5
                  c.li       a2, 15
                  c.srai     a2, 1
                  slli       t6, s2, 27
                  sub        t5, sp, tp
                  c.or       a2, s1
                  csrrc      s10, 0x340, s10
                  c.and      a2, a4
                  sub        s6, s0, t1
                  c.addi     a7, 13
                  sltiu      s6, t2, 565
                  c.or       a1, a4
                  csrrc      tp, 0x340, t3
                  c.li       a3, 15
                  beq        t6, s2, 2252f
                  divu       a3, s3, a6
                  c.nop
                  srli       s11, a2, 16
                  csrrwi     t3, 0x340, 13
                  srli       a6, t5, 2
main_24:          jal        t4, 1f
0:                jal        s6, 11f
1:                jal        t1, 13f
2:                c.jal      10f
3:                jal        ra, 7f
4:                c.jal      0b
5:                jal        ra, 6f
6:                c.j        8f
7:                c.jal      15f
8:                jal        ra, 2b
9:                c.j        3b
10:               c.j        12f
11:               c.j        5b
12:               c.j        14f
13:               c.jal      4b
14:               jal        t1, 9b
15:               rem        s1, s9, t2
                  c.or       s0, a5
                  c.and      s0, a4
                  blt        a5, s7, 2256f
                  csrrc      s6, 0x340, s8
                  csrrci     s2, 0x340, 31
                  csrrs      a5, 0x340, a2
                  divu       s11, a2, s5
2252:             csrrs      a5, 0x340, t6
                  rem        t3, s8, t4
                  andi       s10, s3, -723
                  c.addi     a7, 2
2256:             lui        s11, 691848
                  bge        a3, a2, 2259f
                  csrrc      s5, 0x340, s3
2259:             srai       t0, a5, 13
                  sll        zero, s5, gp
                  bgeu       tp, gp, 2279f
                  c.bnez     s1, 2268f
                  mul        s3, a4, a6
                  csrrsi     t6, 0x340, 7
                  c.add      s8, s9
                  csrrs      s9, 0x340, a2
                  c.and      s0, a0
2268:             c.slli     a4, 1
                  slti       s6, s7, 488
                  bltu       s8, t1, 2272f
                  auipc      t0, 973378
2272:             fence
                  slt        a0, a0, t2
                  c.srai     s1, 11
                  .4byte 0xd6e41013 # kIllegalFunc7
                  srl        s11, t0, sp
                  andi       a3, s2, 676
                  blt        s9, a5, 2291f
                  div        a7, s4, s4
2279:             sll        a2, a0, a3
                  lui        t2, 125936
                  srl        s2, a6, s4
                  csrrci     s0, 0x340, 21
                  sltiu      s1, a3, -406
                  nop
                  mul        a5, a0, s7
                  auipc      a0, 709589
                  c.andi     a1, 3
                  addi       s8, s8, -350
                  slti       t5, zero, 320
                  addi       t4, s8, 699
2291:             divu       s10, a7, s0
                  c.bnez     s0, 2312f
                  c.and      s1, s0
                  c.srli     s1, 1
                  srli       a0, s4, 31
                  fence
                  fence
                  sll        s8, t4, s9
                  csrrwi     s0, 0x340, 12
                  bne        a7, gp, 2304f
                  c.nop
                  c.lui      a7, 15
                  c.bnez     a4, 2304f
2304:             c.srli     s1, 29
                  c.slli     a7, 24
                  xori       t5, t4, 302
                  or         s0, s7, a7
                  beq        gp, s2, 2313f
                  bgeu       a1, s2, 2323f
                  ori        t1, a3, -850
                  c.lui      a7, 15
2312:             fence.i
2313:             bgeu       t5, s10, 2314f
2314:             xori       a3, s3, -871
                  c.sub      a4, a5
                  srli       zero, s9, 30
                  nop
                  beq        s0, a2, 2338f
                  c.and      a2, a3
                  blt        a3, zero, 2329f
                  c.li       t6, 31
                  c.li       ra, -1
2323:             blt        s11, t3, 2329f
                  lui        a2, 78388
                  c.bnez     s1, 2332f
                  sltiu      a7, s6, 795
                  csrrwi     t4, 0x340, 18
                  sra        a1, sp, a2
2329:             c.bnez     s0, 2331f
                  csrrsi     zero, 0x340, 8
2331:             c.beqz     a2, 2340f
2332:             or         gp, s5, s0
                  slti       a2, s2, 248
                  xori       s5, t1, -808
                  bgeu       a4, zero, 2353f
                  c.mv       tp, t6
                  mulhu      a5, s6, s6
2338:             c.addi     t3, 9
                  csrrci     s2, 0x340, 24
2340:             srli       a0, zero, 11
                  auipc      ra, 82527
                  sltu       s8, tp, s6
                  sub        t5, gp, s3
                  sltiu      s3, s7, -971
                  add        t2, s2, s5
                  c.nop
                  slli       t3, s5, 15
                  srai       a2, a6, 16
                  srai       t0, sp, 20
                  bltu       t2, a7, 2351f
2351:             andi       t5, sp, 688
                  sra        a6, s2, ra
2353:             and        tp, s0, s7
                  fence.i
                  blt        t4, t3, 2368f
                  bne        a3, zero, 2357f
2357:             nop
                  c.or       s0, s1
                  lui        tp, 648047
                  c.andi     s0, 15
                  lui        a6, 90872
                  blt        s3, a5, 2364f
                  divu       s3, t4, zero
2364:             c.or       a3, a3
                  c.srai     a2, 14
                  c.srli     a1, 18
                  csrrsi     s5, 0x340, 4
2368:             c.srli     a4, 15
                  c.bnez     a4, 2372f
                  csrrci     a6, 0x340, 19
                  auipc      gp, 146416
2372:             c.add      s3, s6
                  or         a1, s3, tp
                  c.srli     a2, 28
                  .4byte 0x5e1f75ff # kIllegalOpcode
                  mulh       s10, sp, s6
                  mulhsu     s3, a1, s1
                  slli       a4, s4, 13
                  divu       t1, a7, s10
                  divu       t4, t3, a5
                  c.or       s1, a5
                  c.xor      a5, s0
                  lui        t3, 727046
                  bne        s0, t3, 2385f
                  csrrsi     t0, 0x340, 19
2385:             c.lui      s10, 15
                  slli       a6, a1, 10
                  sra        a3, a4, tp
                  c.addi     t1, -1
                  c.andi     a0, -1
                  srli       t5, s3, 16
                  csrrc      a0, 0x340, t2
                  add        t1, t2, tp
                  bgeu       a4, s6, 2408f
                  c.sub      a1, a4
                  sub        a1, a6, a5
                  c.andi     s0, -1
                  mul        s10, a3, a0
                  sra        s10, t0, s4
                  beq        s7, tp, 2417f
                  c.nop
                  bltu       s6, s6, 2418f
                  srai       a6, s1, 26
                  srai       s2, s7, 3
                  c.nop
                  ori        t5, a7, -920
                  c.li       a1, -1
                  c.lui      t2, 21
2408:             c.and      s0, a1
                  c.srli     s0, 26
                  slli       s11, a0, 27
                  sub        s2, t3, ra
                  fence.i
                  nop
                  bltu       ra, t6, 2416f
                  sll        t0, a3, a2
2416:             sltiu      a3, s2, -177
2417:             c.xor      s0, a2
2418:             ori        a3, a6, 495
                  csrrsi     a2, 0x340, 17
                  c.slli     a2, 16
                  andi       t2, s4, -699
                  div        zero, s8, ra
                  andi       s9, tp, -951
                  auipc      t6, 22432
                  c.slli     s11, 22
                  c.and      a0, a3
                  mulh       s2, t4, s10
                  addi       a6, s7, -962
                  mulhsu     s8, s7, a7
                  c.add      t1, t4
                  sltiu      a1, a5, -672
                  add        a4, s7, s10
                  csrrc      s5, 0x340, a5
                  xor        t5, s2, a2
                  auipc      s0, 832679
                  sll        t3, t5, t4
                  bgeu       s11, a3, 2456f
                  sll        a6, a2, s3
                  c.beqz     s0, 2450f
                  c.srai     a5, 17
                  auipc      s10, 829405
                  blt        t3, s3, 2462f
                  c.xor      a0, s1
                  ori        s3, t1, 569
                  mul        s9, s2, t5
                  sra        a5, t0, a1
                  slli       gp, s7, 8
                  fence
                  slti       a7, sp, 153
2450:             nop
                  fence
                  sltiu      s6, a6, 421
                  beq        a1, s0, 2457f
                  c.and      a0, s1
                  csrrc      s8, 0x340, zero
2456:             c.sub      a5, s1
2457:             c.bnez     s0, 2463f
                  c.andi     s1, 4
                  fence
                  div        a6, s8, a6
                  c.add      a4, t6
2462:             add        a6, s3, a1
2463:             blt        t5, s10, 2468f
                  sra        s10, t1, gp
                  csrrc      a7, 0x340, t4
                  fence
                  c.xor      a0, a5
2468:             sll        a4, t0, s9
                  nop
                  andi       s9, a6, -848
                  remu       zero, s2, t4
                  csrrw      zero, 0x340, a5
                  fence.i
                  slti       s10, s1, -436
                  bne        t5, s8, 2479f
                  csrrw      a5, 0x340, s1
                  divu       t4, t0, s10
                  srai       s5, s11, 11
2479:             ori        s9, a3, 964
                  c.xor      a1, a3
                  c.sub      s0, a1
                  mulhsu     t1, a2, ra
                  c.nop
                  blt        s10, t3, 2502f
                  c.mv       a3, s9
                  rem        gp, s0, s1
                  andi       ra, s11, 337
                  c.or       a5, a3
                  c.andi     a4, -1
                  lui        s1, 194396
                  sub        tp, zero, a0
                  sra        s11, zero, a3
                  bgeu       t6, s6, 2507f
                  srli       s10, a7, 24
                  bne        s0, ra, 2509f
                  fence
                  csrrw      gp, 0x340, s0
                  c.slli     s8, 15
                  ori        a2, s0, 871
                  c.srli     s0, 7
                  div        s11, s5, t4
2502:             slti       a3, s4, -982
                  sll        a0, s5, a7
                  c.andi     s0, -1
                  bne        s2, a2, 2520f
                  bge        a3, s4, 2520f
2507:             rem        t1, t4, t0
                  slt        a2, ra, s6
2509:             mulh       t1, t0, a3
                  sub        s10, a7, s10
                  c.srai     a3, 30
                  c.addi     s9, -1
                  divu       a2, s4, sp
                  addi       t0, t6, -901
                  c.mv       a0, s4
                  c.li       a4, 31
                  c.li       s10, 0
                  mulh       s5, s1, s10
                  remu       t6, sp, a1
2520:             fence
                  slli       t1, s4, 8
                  sltu       a0, s1, s10
                  csrrwi     s3, 0x340, 6
                  csrrc      zero, 0x340, s6
                  sll        a0, s10, gp
                  addi       s1, zero, 300
                  c.sub      a2, a0
                  mulhsu     t0, ra, s0
                  mulh       s11, t5, a1
                  ori        s0, a6, -598
                  div        s9, s4, gp
                  bltu       s4, s8, 2538f
                  fence.i
                  c.li       a1, -1
                  mul        a4, t1, t6
                  c.mv       t0, a1
                  c.sub      a1, a0
2538:             mul        t3, t1, s0
                  c.addi     tp, -1
                  addi       a5, s8, -746
                  .4byte 0x8849ac73 # kIllegalSystemInstr
                  divu       a0, a4, ra
                  add        s8, a1, t0
                  auipc      t1, 374481
                  c.li       tp, -1
                  c.slli     s2, 20
                  remu       s3, gp, a0
                  slli       s5, a3, 10
                  csrrs      s5, 0x340, a2
                  lui        a7, 481846
                  srli       ra, s10, 11
                  c.nop
                  rem        t2, a4, s8
                  beq        zero, ra, 2573f
                  slt        s5, sp, a0
                  c.nop
                  c.mv       a5, s9
                  csrrci     s6, 0x340, 23
                  c.addi     a0, -1
                  c.bnez     a2, 2576f
                  c.sub      a3, a1
                  slti       tp, t4, 168
                  and        a3, zero, ra
                  csrrc      s11, 0x340, s4
                  csrrci     a3, 0x340, 31
                  c.addi     s3, -1
                  csrrci     a5, 0x340, 25
                  c.beqz     a5, 2569f
                  sll        s3, s0, a1
2569:             csrrs      gp, 0x340, s6
                  c.addi     tp, -1
                  srai       a0, a1, 3
                  or         a4, t3, a6
2573:             div        a6, s11, s6
                  c.addi     a5, -1
                  c.beqz     a4, 2593f
2576:             beq        a4, s8, 2583f
                  fence
                  addi       t4, t6, -53
                  slti       ra, t0, 990
                  add        a5, a1, a6
                  fence
                  andi       a4, s1, -226
2583:             fence
                  xori       a2, s10, 368
                  slt        s10, s3, s9
                  add        a7, s5, t4
                  xor        s1, t2, a7
                  csrrsi     s3, 0x340, 28
                  xor        t0, sp, a0
                  csrrs      zero, 0x340, s0
                  sltiu      tp, t6, 517
                  auipc      s1, 587121
2593:             or         t3, t4, t2
                  mul        a4, a2, zero
                  sra        s3, a0, zero
                  ori        s0, s9, -98
                  csrrci     s8, 0x340, 12
                  c.sub      a0, s1
                  c.andi     a4, -1
                  auipc      zero, 674408
                  fence.i
                  csrrsi     s3, 0x340, 1
                  rem        a6, s3, t3
                  sra        t5, s0, s4
                  c.add      t0, s2
                  c.xor      a3, s0
                  c.mv       t1, t4
                  c.slli     s3, 29
                  and        t5, s10, s3
                  srai       s5, s6, 30
                  divu       t2, a0, zero
                  bgeu       a2, s11, 2630f
                  sll        a2, a1, s0
                  rem        ra, a3, t4
                  remu       s9, s6, s5
                  bne        a7, s0, 2617f
2617:             bge        t5, zero, 2623f
                  csrrsi     t6, 0x340, 17
                  slti       a2, t6, -27
                  divu       t4, t1, t3
                  andi       s10, s10, 94
                  srai       t1, t0, 8
2623:             fence.i
                  slti       s9, s4, -716
                  and        a6, t0, t2
                  slti       s0, s5, 769
                  andi       a6, a3, -350
                  ori        t0, zero, -214
                  mul        a3, t0, a2
2630:             rem        zero, t2, sp
                  ori        zero, sp, -213
                  csrrsi     s5, 0x340, 14
                  ori        a5, s6, 984
                  .4byte 0xc385fc73 # kIllegalSystemInstr
                  lui        s11, 522874
                  slti       t3, s1, -507
                  sltu       a3, t0, tp
                  c.mv       a0, a0
                  xor        a0, s1, t2
                  c.add      t5, a0
                  fence
                  c.or       a4, s0
                  beq        s11, t0, 2651f
                  c.addi     s11, 24
                  c.slli     s5, 19
                  c.addi     a0, -1
                  and        s0, sp, s5
                  sltu       a0, s3, a2
                  sltu       t2, a2, a2
                  bgeu       t6, t5, 2650f
2650:             andi       a6, a6, 388
2651:             c.li       a7, -1
                  c.and      s1, a3
                  c.nop
                  auipc      s0, 168174
                  sub        a4, tp, s2
                  bltu       s6, tp, 2671f
                  c.or       s1, s0
                  xor        s9, t6, a6
                  or         ra, t6, sp
                  remu       a1, t5, a5
                  remu       t0, a1, t5
                  div        tp, s2, s1
                  fence.i
                  auipc      s11, 103361
                  c.srli     a5, 26
                  c.or       a1, a4
                  divu       s10, a1, sp
                  c.li       a6, 19
                  sltu       a2, t1, t6
                  c.addi     s2, 5
2671:             xor        s3, s4, t2
                  csrrw      s5, 0x340, s6
                  auipc      t3, 217718
                  sll        s2, a3, a2
                  csrrci     ra, 0x340, 14
                  div        t1, tp, sp
                  lui        s3, 234841
                  c.andi     a2, -1
                  div        t6, t0, t0
                  auipc      s2, 185514
                  csrrsi     s3, 0x340, 25
                  add        t0, tp, s11
                  nop
                  c.sub      s0, a1
                  sub        s0, s4, s1
                  c.or       a2, a1
                  csrrci     s0, 0x340, 6
                  mulh       s9, s10, s6
                  c.nop
                  csrrw      t6, 0x340, t5
                  slli       s0, t1, 23
                  bltu       a1, s9, 2706f
                  ori        s10, a1, -483
                  c.sub      a4, a2
                  mul        s1, s1, s7
                  andi       s8, zero, -1021
                  sltiu      t2, a6, -447
                  rem        tp, a3, a6
                  c.xor      a3, a2
                  auipc      t1, 461948
                  sll        a5, a5, s8
                  la         s5, region_2+4958 #start riscv_hazard_instr_stream_12
                  addi       tp, a5, 898
                  lbu        tp, -770(s5)
                  sw         tp, 786(s5)
                  mulh       s2, a5, t5
                  rem        a5, a0, s2
                  lb         s2, 1503(s5)
                  lb         a5, -119(s5)
                  lhu        a0, -458(s5)
                  srl        t6, t5, a0
                  mulhu      s2, tp, a5
                  divu       s2, s2, s2
                  lbu        s2, -1536(s5)
                  sb         a0, 1096(s5)
                  sb         a5, -1272(s5)
                  lb         tp, -389(s5)
                  lbu        a0, -1329(s5)
                  c.nop
                  slli       tp, t6, 0
                  c.lui      s2, 23
                  lbu        s2, -1856(s5)
                  sh         t6, 470(s5)
                  fence
                  ori        s2, t6, -241
                  remu       tp, t5, t6
                  csrrw      s2, 0x340, t5
                  nop
                  rem        s2, a0, t6
                  c.andi     a0, 28
                  lb         a0, 309(s5)
                  sb         tp, 1281(s5)
                  xor        s2, tp, t6
                  rem        t6, t6, t5
                  csrrc      t5, 0x340, a0
                  sb         tp, 591(s5)
                  add        a0, t6, a5
                  lb         a5, -55(s5)
                  sb         t6, -1997(s5)
                  csrrs      a0, 0x340, a0
                  xor        s2, t6, a0
                  xor        s2, a0, a5
                  lb         t5, -1541(s5)
                  lbu        a5, -259(s5) #end riscv_hazard_instr_stream_12
                  c.beqz     a4, 2706f
                  beq        t5, s1, 2714f
                  mul        a2, t1, s2
                  andi       s3, s4, 441
2706:             auipc      s8, 32464
                  slli       s6, t0, 17
                  csrrs      tp, 0x340, t1
                  csrrwi     t0, 0x340, 0
                  c.lui      a6, 6
                  c.lui      a2, 30
                  c.and      s1, a5
                  sra        s10, gp, a0
2714:             c.li       s1, 23
                  divu       s8, s9, s3
                  srl        a7, s7, s2
                  fence
                  srai       s10, a5, 16
                  c.mv       a4, s1
                  divu       s11, a5, s0
                  lui        s5, 882031
                  mulhsu     a3, tp, a6
                  bne        t3, ra, 2743f
                  csrrw      tp, 0x340, a2
                  addi       s1, s1, -252
                  andi       s0, gp, -347
                  c.srai     s0, 15
                  mulhu      zero, gp, s2
                  sra        a5, tp, a4
                  c.andi     a0, 11
                  sltiu      s8, s7, -420
                  c.slli     s0, 22
                  auipc      t4, 954082
                  c.srai     a0, 5
                  c.li       s10, 19
                  mul        gp, ra, t2
                  remu       zero, a0, a6
                  addi       t0, t5, -344
                  c.li       s3, 25
                  mulhsu     s0, sp, s4
                  bge        s4, sp, 2743f
                  or         tp, a6, gp
2743:             slti       a7, s0, -472
                  slti       a0, a6, -238
                  fence.i
                  sub        s1, s0, s5
                  c.bnez     a3, 2761f
                  c.li       s5, 2
                  csrrs      s2, 0x340, ra
                  beq        s8, a3, 2751f
2751:             lui        a3, 599095
                  c.lui      s2, 14
                  srli       s6, s9, 27
                  .4byte 0xfe68 # kIllegalCompressedOpcode
                  add        tp, t4, t4
                  bge        a7, t2, 2773f
                  addi       s9, s3, -519
                  divu       s0, s10, tp
                  sll        s6, t3, s5
                  xori       ra, a6, 832
                  bge        a2, a0, 2764f
2761:             mulhsu     s1, t4, s8
                  bltu       ra, t4, 2764f
                  csrrs      s5, 0x340, zero
2764:             c.sub      a3, a3
                  c.slli     a2, 23
                  remu       s8, a7, tp
                  fence.i
                  slli       t3, a6, 10
                  fence
                  c.beqz     a0, 2785f
                  slt        a0, s1, tp
                  add        s9, a7, s2
2773:             c.sub      a3, a1
                  remu       tp, s2, a6
                  blt        s4, t5, 2780f
                  remu       s8, a4, s7
                  slti       s8, gp, -1013
                  csrrsi     s10, 0x340, 28
                  and        s0, s0, s9
2780:             c.andi     a1, -1
                  divu       t4, sp, a4
                  sll        a0, s6, sp
                  beq        s10, t4, 2786f
                  xor        gp, t5, s9
2785:             c.sub      a5, a1
2786:             c.addi     ra, 2
                  ori        t0, t6, 137
                  auipc      tp, 633475
                  sltiu      t1, a2, 508
                  sra        s6, s7, a6
                  add        s10, s5, s9
                  csrrwi     t6, 0x340, 0
                  divu       s6, a6, gp
                  sub        s0, t1, t2
                  c.xor      s0, s0
                  sll        s9, a3, a1
                  c.srli     a0, 17
                  mulh       s2, t0, tp
                  fence.i
                  mulhsu     a0, a4, tp
                  slti       a5, s0, 742
                  add        ra, sp, a1
                  sra        s2, sp, s2
                  rem        a6, a2, a7
                  c.add      a0, t5
                  c.beqz     a2, 2825f
                  csrrci     a0, 0x340, 5
                  c.add      s6, a1
                  csrrsi     s6, 0x340, 28
                  remu       a4, a0, a3
                  c.or       a4, s1
                  sltu       a6, t4, s0
                  csrrci     a3, 0x340, 8
                  fence.i
                  mulhsu     t5, t4, s9
                  sll        s2, t4, a2
                  xor        zero, a7, s10
                  mulhsu     t2, s4, s10
                  c.or       a5, s1
                  bgeu       s0, gp, 2822f
                  remu       t4, a2, a2
2822:             andi       s10, s7, -703
                  andi       s5, t3, 848
                  c.add      t5, ra
2825:             bltu       a4, a3, 2838f
                  c.beqz     a1, 2835f
                  slti       zero, t1, 214
                  rem        s2, t1, ra
                  srl        s0, s0, zero
                  div        s3, a6, t4
                  div        t6, t6, t4
                  c.mv       t2, s0
                  c.add      t4, a3
                  div        a7, t6, t2
2835:             and        s2, a7, ra
                  c.addi     a2, -1
                  c.sub      a2, a3
2838:             xor        t3, a2, t4
                  auipc      t0, 1003563
                  csrrc      t5, 0x340, s1
                  srai       t5, t2, 6
                  sltu       tp, t2, s7
                  ori        s9, a0, 696
                  c.sub      a2, a5
                  sltu       a7, t4, a7
                  srai       ra, sp, 13
                  mulhu      t3, a2, tp
                  sltiu      s2, t4, -346
                  beq        s9, a2, 2869f
                  lui        t2, 78726
                  sub        a2, t2, t5
                  ori        a6, a4, 94
                  c.lui      t5, 10
                  rem        a7, t0, gp
                  sra        t1, a2, t5
                  csrrsi     zero, 0x340, 21
                  add        t2, t2, t0
                  srli       s0, a7, 17
                  sltiu      s10, t2, -293
                  and        a4, ra, a4
                  sltiu      t5, a5, -335
                  sub        s1, ra, s3
                  c.bnez     a5, 2872f
                  mulh       zero, s11, t5
                  sll        s6, s4, a3
                  slt        s8, t1, zero
                  bge        s10, s11, 2876f
                  blt        t3, s0, 2875f
2869:             auipc      a0, 940624
                  slt        a5, s5, a2
                  c.xor      a5, a1
2872:             xori       tp, a4, 431
                  csrrw      s10, 0x340, s6
                  c.or       s0, a3
2875:             beq        s9, gp, 2879f
2876:             c.nop
                  srl        gp, tp, s10
                  srli       a6, a1, 2
2879:             nop
                  sub        s1, s1, a1
                  add        a4, t2, s6
                  slt        s8, a5, t0
                  sub        s2, s2, s10
                  bne        ra, t2, 2902f
                  c.xor      a0, a1
                  add        zero, a7, s5
                  and        t3, a0, t0
                  srli       s0, a0, 7
                  remu       s10, s2, a1
                  mulh       a5, s11, s0
                  c.and      s0, a3
                  bne        t1, a7, 2894f
                  c.xor      a2, a3
2894:             sub        s1, s7, a4
                  sltiu      a7, a6, -556
                  c.andi     s1, 23
                  csrrs      a3, 0x340, s4
                  fence.i
                  csrrci     a1, 0x340, 24
                  sub        tp, t1, a6
                  auipc      zero, 700695
2902:             xor        s8, a0, a4
                  sra        t5, t5, s1
                  srl        a4, gp, s0
                  or         a6, s9, s2
                  and        t0, s2, t6
                  sra        a5, tp, t0
                  mulhu      zero, gp, zero
                  csrrsi     s5, 0x340, 8
                  or         s11, t0, s3
                  slli       t5, t6, 18
                  mulh       t6, a6, a1
                  mulhsu     a7, t5, a2
                  sltu       s1, s6, s11
                  lui        s6, 859388
                  csrrci     t4, 0x340, 7
                  bne        a1, t3, 2918f
2918:             auipc      t3, 185798
                  c.slli     s2, 28
                  sub        s11, s6, s8
                  csrrci     ra, 0x340, 27
                  c.addi     s10, -1
                  nop
                  rem        s6, s7, a5
                  sltiu      s1, a5, -979
                  csrrw      a0, 0x340, a6
                  beq        s5, s3, 2942f
                  rem        s9, s11, a7
                  c.srai     a4, 15
                  bge        a7, s10, 2947f
                  slt        tp, a3, t6
                  c.add      a7, t2
                  auipc      s3, 372207
                  remu       s5, s4, t4
                  c.xor      s0, a0
                  ori        s5, s5, -132
                  auipc      t4, 86363
                  add        t3, a5, a7
                  addi       a2, a5, -179
                  auipc      s2, 512636
                  c.srai     a4, 19
2942:             or         a5, s4, t3
                  csrrsi     s10, 0x340, 15
                  bne        s11, s11, 2949f
                  slt        t1, s10, a1
                  blt        s2, s7, 2964f
2947:             slt        a4, s11, t0
                  c.add      s9, a3
2949:             slti       s10, a1, 4
                  xor        a0, a4, ra
                  csrrw      s3, 0x340, tp
                  csrrwi     s8, 0x340, 0
                  xori       tp, t3, -2
                  srai       t4, a1, 6
                  la         t1, region_0+1776 #start load_store_instr_stream_1
                  la         a5, region_3+146 #start load_store_instr_stream_0
                  lh         s2, 1664(t1)
                  lw         t4, -1592(t1)
                  lb         s3, 439(t1)
                  lb         t5, -107(a5)
                  sh         s0, 1580(t1)
                  sb         s3, -1740(t1)
                  lbu        t3, -33(a5)
                  lh         t5, -1124(t1)
                  sb         t3, 145(t1)
                  lb         ra, 173(a5)
                  lbu        a3, 474(t1) #end load_store_instr_stream_1
                  lb         zero, 113(a5)
                  lb         a2, 302(a5) #end load_store_instr_stream_0
                  c.xor      s0, a3
                  srai       a1, s4, 31
                  c.slli     a6, 27
                  c.mv       a6, t2
                  bltu       a1, ra, 2960f
2960:             c.lui      a2, 2
                  bge        t1, gp, 2963f
                  bge        a4, s1, 2976f
2963:             c.slli     s6, 1
2964:             sra        s5, s2, zero
                  div        a4, a5, gp
                  c.beqz     a5, 2972f
                  mulhu      s3, t3, s8
                  bne        s1, t2, 2988f
                  csrrsi     ra, 0x340, 27
                  or         a3, a1, a1
                  bge        tp, s2, 2985f
2972:             csrrci     s11, 0x340, 24
                  divu       s1, t3, t2
                  c.slli     a1, 22
                  slti       s1, a3, 841
2976:             slti       s8, s4, -342
                  sra        a6, s7, s3
                  sltiu      s8, s4, -303
                  bgeu       a5, s5, 2998f
                  mul        t3, s11, s9
                  csrrwi     tp, 0x340, 13
                  addi       a4, a0, 577
                  bge        s1, s2, 2984f
2984:             xor        a7, s10, gp
2985:             sra        a5, s11, a6
                  mulh       zero, sp, t2
                  auipc      s2, 490561
2988:             fence.i
                  srli       zero, t4, 5
                  csrrwi     s3, 0x340, 25
                  mulhsu     zero, a2, s3
                  c.andi     s0, -1
                  c.srai     s1, 12
                  andi       s10, s3, -651
                  xori       a4, t5, -375
                  mulh       s2, s10, s3
                  bge        s3, t6, 3011f
2998:             sub        s11, t0, s11
                  c.slli     s8, 31
                  lui        t6, 619475
                  lui        t5, 891214
                  sll        a6, zero, s7
                  blt        sp, t1, 3021f
                  or         a6, a0, gp
                  andi       gp, a1, 997
                  c.add      s8, s4
                  c.beqz     a2, 3013f
                  and        a5, t6, s1
                  c.mv       a0, a7
                  c.beqz     a0, 3025f
3011:             csrrc      t3, 0x340, a1
                  bne        sp, s4, 3014f
3013:             csrrwi     a4, 0x340, 0
3014:             c.add      tp, t2
                  c.sub      s1, a5
                  andi       t5, s1, 534
                  blt        s8, a7, 3019f
                  c.mv       s6, t3
3019:             remu       ra, s5, a3
                  sltiu      t6, t3, -594
3021:             srl        s1, s2, a0
                  srli       s6, s11, 31
                  remu       t1, a4, sp
                  csrrsi     zero, 0x340, 9
3025:             auipc      a0, 254799
                  ori        s8, a0, -952
                  remu       ra, a1, t1
                  c.xor      a1, s0
                  sltu       t1, a6, a5
                  csrrc      s5, 0x340, s10
                  remu       t3, a7, s5
                  div        a2, a7, s4
                  bgeu       s4, gp, 3036f
                  mulh       a2, t1, a0
                  xor        s9, s11, t2
3036:             bgeu       sp, s11, 3049f
                  csrrs      a6, 0x340, t3
                  bne        s0, zero, 3049f
                  mulhu      gp, s8, s5
                  csrrwi     t5, 0x340, 29
                  c.slli     ra, 13
                  bne        a2, s3, 3046f
                  beq        s4, s10, 3052f
                  sltu       a6, s3, s10
                  xori       t6, a6, 708
3046:             sltiu      s1, s7, 786
                  c.and      a5, s1
                  c.slli     t6, 18
3049:             csrrw      a1, 0x340, a1
                  c.bnez     a1, 3069f
                  lui        a0, 468237
3052:             csrrc      zero, 0x340, s7
                  auipc      t5, 702401
                  la         a3, region_4+36 #start load_store_instr_stream_1
                  la         t4, region_4+253 #start load_store_instr_stream_2
                  sh         t0, -5(t4)
                  la         s2, region_4+3071 #start load_store_instr_stream_0
                  sh         t5, 12(a3)
                  la         gp, region_4+931 #start load_store_instr_stream_4
                  lb         s6, -9(a3)
                  sh         t3, 659(s2)
                  sb         a2, -1973(s2)
                  sb         s6, -253(gp)
                  la         s1, region_4+2561 #start load_store_instr_stream_3
                  lbu        s11, -10(a3)
                  sb         t2, 64(s1)
                  c.lw       a4, 0(a3)
                  lb         s6, -152(gp)
                  sh         s11, 501(s1)
                  sh         t2, -15(t4)
                  sh         s8, 7(t4)
                  sb         t1, -466(s1)
                  lhu        tp, -359(s2)
                  lb         a4, 32(gp)
                  sb         a7, -16(a3)
                  sb         a2, -257(s1)
                  sw         a0, 16(a3)
                  lhu        s10, -1515(s1)
                  lbu        s5, 1111(s1)
                  lhu        a6, -9(t4)
                  lbu        s11, -1179(s2)
                  lbu        t0, 148(gp)
                  sb         ra, -3(t4)
                  lbu        a4, -836(s2)
                  sb         a7, 197(gp)
                  lbu        s9, -140(gp) #end load_store_instr_stream_4
                  sh         t0, 1053(s1)
                  sb         sp, -8(t4)
                  sw         ra, 15(t4) #end load_store_instr_stream_2
                  lb         a1, -13(a3)
                  lb         t6, -1146(s1)
                  lb         a1, -181(s2)
                  lb         s3, -5(a3) #end load_store_instr_stream_1
                  lb         s6, -482(s1) #end load_store_instr_stream_3
                  lbu        t5, 96(s2)
                  sb         s0, -1656(s2) #end load_store_instr_stream_0
                  beq        t4, s8, 3074f
                  c.and      a4, s0
                  csrrc      a5, 0x340, a1
                  csrrci     ra, 0x340, 31
                  csrrw      t6, 0x340, a4
                  bgeu       a0, gp, 3060f
3060:             srli       s6, t4, 13
                  c.beqz     s0, 3068f
                  srl        s8, s8, a1
                  rem        a1, s5, t2
                  add        s2, s5, s11
                  auipc      gp, 393908
                  fence.i
                  c.addi     t1, 26
3068:             c.srli     a2, 19
3069:             csrrci     s2, 0x340, 5
                  slti       a6, t5, -626
                  fence.i
                  csrrwi     a5, 0x340, 3
                  xor        a5, s10, s5
3074:             addi       t0, s10, -610
                  mulh       s2, a5, t0
                  or         s11, tp, t2
                  csrrs      a6, 0x340, s2
                  c.andi     s0, 23
                  fence
                  sltu       gp, s5, s7
                  c.lui      s2, 7
                  c.and      a5, a2
                  c.srli     a2, 31
                  csrrwi     a2, 0x340, 20
                  xori       t5, s4, 350
                  c.mv       gp, t1
                  mulhsu     a0, a7, ra
                  bltu       s3, s0, 3094f
                  csrrw      s11, 0x340, s6
                  srli       s11, tp, 18
                  c.andi     a5, 3
                  add        a2, s4, s11
                  c.addi     t6, -1
3094:             mulh       ra, t1, t5
                  c.srai     a3, 26
                  c.slli     a5, 8
                  c.mv       a3, s3
                  c.addi     a2, -1
                  mulhu      a5, a7, a3
                  bge        a1, t3, 3103f
                  div        zero, gp, ra
                  nop
3103:             c.lui      t5, 31
                  c.beqz     a1, 3118f
                  slt        t3, a7, a4
                  c.lui      a1, 12
                  c.add      t2, t2
                  ori        s9, t1, 577
                  c.beqz     a0, 3127f
                  mulhu      tp, tp, t5
                  lui        t4, 811051
                  srl        s9, zero, s8
                  ori        t4, s11, 453
                  c.lui      s1, 27
                  srl        t3, a0, s0
                  csrrci     tp, 0x340, 16
                  csrrsi     tp, 0x340, 20
3118:             bge        s2, s4, 3122f
                  c.or       a1, a0
                  c.add      t4, a7
                  c.srai     s1, 7
3122:             csrrsi     t0, 0x340, 19
                  c.srli     a5, 10
                  c.sub      a5, a0
                  c.sub      a3, a5
                  slli       t4, s10, 8
3127:             csrrw      t5, 0x340, t2
                  nop
                  c.lui      s9, 10
                  csrrs      t3, 0x340, s9
                  sra        a6, s7, ra
                  .4byte 0x25f6a073 # kIllegalSystemInstr
                  srli       t6, s2, 17
                  sltiu      a1, s7, -21
                  bne        a6, t5, 3149f
                  andi       a7, t0, -477
                  csrrs      s11, 0x340, t0
                  sltiu      t5, a5, 530
                  sub        s2, a5, t2
                  divu       s8, s2, a7
                  bne        a6, s7, 3142f
                  csrrc      a0, 0x340, zero
3142:             or         s8, s1, a2
                  and        s11, t4, a2
                  c.bnez     a3, 3158f
                  c.mv       a3, a7
                  mul        a2, s11, s3
                  csrrc      s3, 0x340, a2
                  fence
3149:             sll        t5, t4, a2
                  c.andi     a2, -1
                  c.lui      t6, 24
                  c.sub      s0, a4
                  srai       a1, s7, 4
                  mulh       gp, s11, a2
                  rem        a5, a3, a6
                  slti       s0, s4, -95
                  srl        s6, t2, a6
3158:             bgeu       a3, s4, 3175f
                  andi       a1, a2, -483
                  slt        t6, a6, s2
                  lui        s1, 574239
                  csrrci     t4, 0x340, 18
                  slti       a1, a7, 689
                  srai       s1, s2, 9
                  bgeu       s9, s6, 3170f
                  addi       t0, t5, -9
                  fence
                  blt        s10, a2, 3177f
                  c.li       s9, 21
3170:             c.and      s0, s1
                  sltiu      s2, a7, 281
                  sltiu      tp, s8, 206
                  fence.i
                  auipc      a1, 412333
3175:             rem        a2, s4, s5
                  c.andi     a3, -1
3177:             xori       a5, t3, -545
                  mulhsu     a4, t3, s9
                  c.xor      a5, s0
                  c.add      t0, a3
                  c.nop
                  beq        gp, t5, 3197f
                  csrrw      s2, 0x340, s3
                  sra        a0, a3, sp
                  mulh       s1, s11, a4
                  blt        s8, a5, 3206f
                  and        s10, t1, a5
                  c.nop
                  c.nop
                  sll        t3, zero, s9
                  c.andi     a5, 7
                  add        ra, s4, a6
                  mulhu      s3, a2, ra
                  mul        t5, s3, s10
                  csrrs      a7, 0x340, gp
                  andi       s8, s7, 315
3197:             c.andi     a4, 22
                  xori       s0, s4, -51
                  csrrwi     s3, 0x340, 31
                  srli       a2, s7, 11
                  fence
                  c.li       a7, 0
                  csrrwi     t1, 0x340, 24
                  blt        s0, s10, 3222f
                  c.slli     a6, 15
3206:             add        zero, s1, s7
                  bne        t2, t5, 3209f
                  srli       s8, a6, 21
3209:             c.sub      a2, a1
                  mulhu      t3, s7, s1
                  sub        a5, t4, t5
                  csrrwi     a7, 0x340, 15
                  srli       s2, a2, 4
                  sll        a3, sp, s6
                  bltu       zero, s8, 3216f
3216:             fence.i
                  beq        a2, a5, 3218f
3218:             add        s2, s8, s9
                  csrrs      a6, 0x340, a4
                  slti       a0, t1, -556
                  slli       a2, s10, 12
3222:             srai       s1, s6, 18
                  bne        s8, s2, 3241f
                  sra        a5, s4, a3
                  slt        a3, t6, a3
                  slli       a2, t0, 15
                  fence
                  csrrs      s6, 0x340, s1
                  c.beqz     a2, 3235f
                  c.nop
                  bgeu       gp, a0, 3235f
                  or         s1, s1, a5
                  csrrs      s0, 0x340, s1
                  beq        s4, s8, 3247f
3235:             sltu       s0, s3, s8
                  bge        a7, sp, 3247f
                  sub        a6, t6, s8
                  nop
                  csrrci     gp, 0x340, 0
                  c.li       s3, -1
3241:             sra        s9, zero, a4
                  auipc      a7, 413435
                  csrrsi     t3, 0x340, 4
                  c.or       a0, a4
                  srl        t5, zero, s6
                  ori        tp, a0, 621
3247:             mul        t6, gp, s3
                  and        t3, s5, t6
                  c.or       a0, s1
                  add        t0, a6, a7
                  slti       a3, t6, 269
                  c.xor      a1, a1
                  div        t0, t4, s6
                  sltiu      t6, t2, 777
                  c.nop
                  and        s9, a4, s1
                  ori        s3, s0, 157
                  c.nop
                  c.bnez     a1, 3261f
                  sltu       ra, a1, t5
3261:             add        t6, t3, t4
                  div        gp, sp, s0
                  c.and      s0, s1
                  bne        s5, a5, 3266f
                  c.srli     a0, 6
3266:             csrrsi     s9, 0x340, 1
                  csrrs      s3, 0x340, s3
                  or         a1, s9, s10
                  and        ra, a7, s5
                  add        t3, a2, t1
                  mulh       s1, t4, t6
                  c.xor      a1, s0
                  bgeu       s5, s0, 3287f
                  srli       a4, a0, 15
                  c.add      gp, ra
                  ori        zero, t3, -222
                  c.andi     a4, -1
                  c.and      a4, a5
                  csrrwi     s10, 0x340, 15
                  csrrsi     s2, 0x340, 2
                  srai       s5, s6, 30
                  fence.i
                  slli       a3, s7, 11
                  xori       t1, s11, -744
                  mulhu      s11, t2, a7
                  csrrc      s9, 0x340, s11
3287:             sltu       a5, a4, t5
                  bne        s8, a0, 3301f
                  fence.i
                  bne        s8, t0, 3292f
                  c.lui      s10, 9
3292:             slli       a1, t3, 14
                  blt        tp, a3, 3307f
                  c.mv       s10, s5
                  c.xor      a3, s0
                  sub        t4, s1, gp
                  c.srai     a2, 18
                  c.slli     s11, 8
                  c.andi     a0, -1
                  c.bnez     a1, 3315f
3301:             csrrci     s3, 0x340, 23
                  and        t1, s1, t0
                  nop
                  c.slli     s8, 31
                  c.andi     a1, 15
                  div        a2, s11, s1
3307:             ori        s2, a2, -328
                  c.li       ra, 1
                  srl        a3, a0, s0
                  sub        t5, zero, a6
                  addi       s9, zero, 3 #init loop 0 counter
                  csrrsi     t3, 0x340, 30
                  or         ra, a5, t0
                  srli       s0, t2, 8
                  c.slli     s11, 13
                  c.slli     tp, 15
                  c.mv       a4, s1
                  c.or       a3, a1
                  csrrc      t6, 0x340, s2
                  slli       a6, a7, 24
                  csrrs      t6, 0x340, a1
                  add        zero, gp, t2
                  addi       s5, zero, -1 #init loop 0 limit
main_96_0_t:      lui        s1, 621753
                  csrrci     t2, 0x340, 30
                  csrrci     s1, 0x340, 1
                  addi       s9, s9, -8 #update loop 0 counter
                  mulhsu     a4, s3, t0
                  lui        tp, 623409
                  fence.i
                  c.add      s10, s1
                  csrrs      s6, 0x340, s5
                  slti       ra, t0, 988
                  bge        s9, s5, main_96_0_t #branch for loop 0
                  csrrsi     a4, 0x340, 8
                  csrrc      t6, 0x340, a4
                  c.and      a4, a4
                  lui        s11, 442104
                  auipc      gp, 986413
3315:             c.bnez     a4, 3316f
3316:             bltu       a7, t6, 3318f
                  csrrs      s8, 0x340, a7
3318:             addi       s3, s11, 720
                  add        t3, a2, s3
                  xori       t5, t0, -238
                  addi       s11, s4, 270
                  mul        t6, t2, t6
                  c.add      a2, sp
                  c.nop
                  c.lui      s9, 3
                  csrrci     t5, 0x340, 8
                  c.nop
                  bgeu       a1, a6, 3331f
                  c.srli     a4, 26
                  c.or       s0, s1
3331:             csrrwi     s0, 0x340, 11
                  srli       a1, s2, 16
                  mulhu      a3, s11, t0
                  and        s1, a3, s11
                  c.srai     a0, 26
                  fence.i
                  divu       s6, s11, a3
                  div        s10, t1, a5
                  blt        zero, t2, 3343f
                  slli       t5, zero, 28
                  sra        s10, a2, s9
                  rem        tp, t5, sp
3343:             bge        s5, s1, 3361f
                  xor        t6, t1, a1
                  rem        s3, a7, tp
                  fence
                  rem        a7, a7, s2
                  c.xor      a3, a0
                  sltiu      s1, tp, 217
                  rem        a2, a7, gp
                  fence.i
                  .4byte 0x3d3e # kIllegalCompressedOpcode
                  fence
                  c.nop
                  xor        s10, t2, a3
                  c.lui      a5, 1
                  mulhu      t4, t6, t2
                  csrrs      t0, 0x340, t1
                  fence
                  bne        gp, s10, 3363f
                  sltiu      t3, a2, -42
3361:             rem        t0, a4, t0
                  sll        zero, s7, a3
3363:             sra        a6, a6, s5
                  blt        s0, s1, 3365f
3365:             c.nop
                  c.nop
                  srl        zero, a0, t2
                  bgeu       s2, s1, 3386f
                  c.li       s10, -1
                  c.addi     s10, 15
                  srli       s9, a3, 2
                  rem        zero, a7, t1
                  c.slli     s2, 7
                  xor        a5, t5, zero
                  srli       a4, s7, 28
                  c.nop
                  c.and      a4, a3
                  sltu       a1, a1, tp
                  c.bnez     s1, 3398f
                  nop
                  xor        zero, a0, a2
                  c.slli     a3, 27
                  divu       a3, s6, s2
                  srli       a1, gp, 17
                  blt        a1, a2, 3405f
3386:             c.addi     s0, 17
                  c.addi     s9, 12
                  csrrci     a2, 0x340, 23
                  mulhsu     t0, t2, s2
                  or         s5, sp, a3
                  c.and      a4, s0
                  andi       t0, s11, -145
                  auipc      s0, 685847
                  srai       s3, t3, 30
                  sra        t4, t3, s11
                  c.mv       s0, tp
                  c.srai     a2, 15
3398:             mulh       t6, a1, ra
main_29:          jal        t4, 6f
0:                jal        ra, 18f
1:                c.j        17f
2:                jal        tp, 0b
3:                c.jal      14f
4:                jal        ra, 22f
5:                jal        gp, 13f
6:                c.jal      19f
7:                c.jal      1b
8:                jal        t1, 2b
9:                c.jal      15f
10:               c.j        20f
11:               c.jal      12f
12:               jal        t1, 21f
13:               c.j        10b
14:               c.jal      16f
15:               c.j        4b
16:               c.jal      23f
17:               jal        t5, 5b
18:               c.j        9b
19:               c.j        11b
20:               c.jal      8b
21:               jal        t1, 7b
22:               c.jal      3b
23:               divu       s9, sp, t3
                  c.li       s3, -1
                  and        a3, a2, t2
                  bltu       s0, s7, 3416f
                  c.and      a1, a4
                  nop
                  c.andi     a2, -1
3405:             csrrc      ra, 0x340, s6
                  sltu       a4, s11, a5
                  c.xor      a5, a3
                  nop
                  csrrwi     t4, 0x340, 28
                  c.add      t4, t1
                  sub        a5, zero, a0
                  bne        s2, s4, 3414f
                  nop
3414:             addi       t1, a5, 221
                  mulh       s11, t4, s4
3416:             nop
                  and        a0, t3, zero
                  c.addi     gp, 19
                  bge        a5, a5, 3428f
                  bge        t4, t6, 3422f
                  mul        s10, t1, s8
3422:             sltu       gp, gp, t3
                  mulhsu     a6, s0, a4
                  andi       s8, s1, -844
                  srai       zero, a3, 16
                  and        s2, s4, s4
                  c.sub      s0, a4
3428:             c.lui      s3, 27
                  sub        t5, t1, ra
                  slti       a0, t6, 993
                  c.addi     s11, 19
                  sltiu      t6, s7, -705
                  c.andi     a2, -1
                  srai       ra, a3, 5
                  c.addi     s9, 9
                  c.beqz     s1, 3437f
3437:             and        a7, s3, t5
                  or         ra, t3, a1
                  c.and      a3, s0
                  srai       a5, s0, 28
                  bne        s1, t3, 3458f
                  srl        t0, a5, a6
                  c.srai     a2, 16
                  srai       ra, t5, 14
                  rem        s5, s10, t0
                  rem        t0, s9, s11
                  add        tp, t5, a4
                  c.li       gp, -1
                  slt        t3, a7, s7
                  sll        s2, s6, s4
                  bge        s7, s5, 3465f
                  csrrwi     s8, 0x340, 8
                  fence
                  c.add      a4, a3
                  div        tp, s8, t6
                  c.andi     a4, 8
                  c.nop
3458:             c.andi     a4, -1
                  csrrw      s9, 0x340, a6
                  c.sub      a0, a1
                  slti       ra, a2, -9
                  c.add      t0, s1
                  mulhsu     tp, s1, a4
                  mul        t5, a3, t3
3465:             c.srli     a5, 20
                  c.sub      s0, a0
                  fence.i
                  csrrw      a2, 0x340, t1
                  srai       zero, a2, 28
                  sll        a6, s6, s7
                  c.srli     s1, 6
                  add        a2, s9, s4
                  slli       t5, zero, 6
                  mulhu      s8, s0, s11
                  and        t4, s2, a6
                  sra        t3, s9, t1
                  mulhu      s6, a7, s6
                  c.mv       s9, t5
                  divu       a3, ra, t2
                  c.srli     a2, 7
                  c.add      tp, t2
                  csrrwi     s8, 0x340, 20
                  slli       a6, a6, 3
                  mulhsu     s3, s5, t0
                  rem        s5, a0, gp
                  c.and      a0, a2
                  slt        a1, t0, s9
                  c.lui      s5, 29
                  srli       s9, gp, 21
                  divu       s5, tp, gp
                  c.srli     a0, 23
                  srl        t3, s4, t1
                  mulhu      s10, tp, a4
                  bne        a2, a7, 3500f
                  div        s9, s5, s8
                  c.srli     a4, 11
                  c.bnez     a0, 3503f
                  sub        s9, s4, s9
                  srai       a7, a0, 25
3500:             addi       ra, a1, 565
                  bgeu       t1, s6, 3510f
                  beq        a1, s10, 3507f
3503:             c.mv       a0, s0
                  c.bnez     a1, 3522f
                  bge        a3, sp, 3512f
                  srli       s1, a6, 12
3507:             c.sub      s0, a5
                  fence
                  c.lui      a3, 13
3510:             csrrs      t4, 0x340, a3
                  c.sub      a4, a3
3512:             c.andi     s1, -1
                  auipc      t6, 428126
                  bgeu       a1, a0, 3528f
                  nop
                  csrrsi     s5, 0x340, 8
                  csrrci     s2, 0x340, 3
                  slli       a7, sp, 26
                  fence.i
                  mulhsu     s5, s11, a3
                  remu       a2, s2, s10
3522:             remu       a1, a2, a2
                  beq        s2, s1, 3543f
                  bgeu       a2, t0, 3535f
                  divu       a5, a0, s3
                  divu       s0, a7, t4
                  sll        s3, t0, a6
3528:             fence
                  srl        t0, s11, sp
                  bltu       t0, a6, 3548f
                  c.xor      a4, a2
                  c.beqz     a1, 3533f
3533:             auipc      a6, 538803
                  c.addi     t1, -1
3535:             and        s11, s5, s6
                  sltu       t1, s9, gp
                  bge        s9, s2, 3544f
                  csrrwi     a1, 0x340, 0
                  bge        t2, s9, 3559f
                  csrrci     t2, 0x340, 25
                  and        a1, a7, tp
                  bgeu       a5, a5, 3557f
3543:             csrrw      s2, 0x340, s6
3544:             c.or       a2, s0
                  c.slli     t3, 9
                  slli       ra, a6, 22
                  bltu       t5, s6, 3553f
3548:             addi       t1, s9, -680
                  srli       a0, a7, 24
                  srai       s9, s10, 26
                  sll        s8, gp, s1
                  c.mv       a4, t4
3553:             c.add      s6, a4
                  beq        gp, a3, 3560f
                  and        gp, a2, s9
                  blt        s6, s7, 3560f
3557:             and        a4, t6, t4
                  srai       tp, s0, 30
3559:             add        gp, t6, s3
3560:             c.sub      a5, a2
                  div        a7, s9, s2
                  mul        s6, s5, s10
                  c.beqz     s1, 3565f
                  c.srai     a2, 30
3565:             div        a7, t6, s2
                  slti       t6, sp, -688
                  bltu       t0, gp, 3570f
                  sub        gp, t4, s4
                  csrrwi     s3, 0x340, 13
3570:             andi       a7, a6, 120
                  or         s2, s3, s5
                  or         s11, tp, sp
                  mul        t1, a4, s10
                  c.addi     t1, -1
                  or         s10, t4, t1
                  c.beqz     s0, 3585f
                  c.srai     s0, 31
                  rem        t4, a5, ra
                  bltu       t5, s2, 3581f
                  c.srli     a1, 5
3581:             lui        t3, 1017061
                  divu       gp, t3, s10
                  c.addi     t4, 5
                  csrrc      a0, 0x340, a6
3585:             c.and      s1, a4
                  csrrci     s9, 0x340, 15
                  c.slli     t1, 23
                  sll        s10, a6, s9
                  beq        s10, t5, 3603f
                  c.andi     a0, 10
                  div        a7, s7, s9
                  c.mv       s5, t3
                  fence
                  nop
                  csrrsi     a3, 0x340, 13
                  ori        s6, a3, -1004
                  csrrc      s1, 0x340, gp
                  c.slli     a1, 20
                  srli       s1, t5, 28
                  add        t0, s7, s1
                  slt        ra, s4, s5
                  c.li       t4, -1
3603:             c.li       a4, -1
                  blt        s9, s5, 3606f
                  beq        s0, t1, 3624f
3606:             c.addi     s3, -1
                  andi       zero, s1, 88
                  mulh       s2, t6, s0
                  slli       s1, s7, 17
                  c.srli     a0, 12
                  beq        sp, s6, 3629f
                  div        a0, s7, t2
                  lui        t3, 565593
                  sll        s10, t6, t4
                  divu       a4, a0, s6
                  slli       t4, t4, 18
                  bge        a7, t2, 3619f
                  sll        s1, ra, s8
3619:             srl        gp, s10, t1
                  lui        a2, 149523
                  srl        s0, t5, s4
                  c.or       s1, a2
                  remu       t6, tp, t0
3624:             slli       s3, a3, 12
                  c.and      a4, a2
                  sltiu      t0, s11, 199
                  ori        s1, zero, -670
                  c.nop
3629:             c.xor      s0, s1
                  bgeu       s8, s5, 3643f
                  blt        t5, s10, 3645f
                  c.bnez     a2, 3652f
                  c.or       a3, a0
                  blt        t1, s3, 3638f
                  sll        s11, ra, s5
                  c.andi     a0, -1
                  c.bnez     a1, 3638f
3638:             auipc      a6, 470547
                  auipc      t4, 7302
                  c.mv       a7, t0
                  blt        s0, s9, 3659f
                  sra        ra, s11, s4
                  .4byte 0xca88bdf3 # kIllegalSystemInstr
3643:             c.xor      a3, a4
                  andi       s6, s8, -347
3645:             srli       a3, t0, 26
                  csrrs      a5, 0x340, s9
                  sra        s1, s1, s5
                  sll        a5, s9, s1
                  nop
                  divu       a6, s10, s6
                  sra        s5, s6, a4
3652:             beq        a0, a2, 3666f
                  c.beqz     a0, 3658f
                  sll        t4, a1, t6
                  add        t0, tp, s1
                  c.srai     a0, 30
                  .4byte 0x704d9893 # kIllegalFunc7
                  sra        t0, t0, s2
3658:             and        t6, a2, s2
3659:             c.mv       t6, t3
                  lui        a7, 355760
                  slt        a3, t3, t2
                  .4byte 0x9df0 # kReservedCompressedInstr
                  bne        a7, a4, 3677f
                  auipc      t2, 997167
                  csrrwi     gp, 0x340, 10
                  sltu       t5, a5, a6
3666:             c.li       a6, -1
                  csrrw      gp, 0x340, sp
                  sll        a4, s6, s9
                  xor        ra, s9, s7
                  rem        s10, s7, a2
                  bgeu       s8, t3, 3682f
                  ori        a2, a4, 814
                  srl        s3, a2, a4
                  bne        gp, s0, 3691f
                  c.srli     a4, 20
                  xor        tp, s7, a2
3677:             c.xor      a1, a5
                  sra        t0, s5, s8
                  csrrwi     s0, 0x340, 24
                  divu       a7, t5, zero
                  c.lui      ra, 31
3682:             beq        a0, a7, 3683f
3683:             c.slli     s10, 16
                  and        a4, a6, s6
                  sra        s1, a2, s5
                  c.sub      a2, a1
                  xori       a5, s8, -670
                  sub        t6, t1, s6
                  and        a1, a1, a2
                  c.bnez     a3, 3699f
3691:             rem        a1, s11, sp
                  mul        a0, zero, s2
                  srai       a7, sp, 20
                  bltu       s7, t0, 3695f
3695:             mulh       a5, zero, t5
                  ori        s2, s1, -237
                  mulhsu     s6, s5, sp
                  bltu       sp, t5, 3707f
3699:             srli       t1, s3, 2
                  c.mv       s9, t6
                  fence.i
                  c.bnez     s0, 3708f
                  div        s1, sp, tp
                  sra        s8, a7, a3
                  mulhu      gp, s5, s0
                  c.lui      s8, 26
3707:             sltiu      a7, s7, 211
3708:             c.or       a2, a0
                  blt        t2, a0, 3726f
                  c.srli     a4, 26
                  c.mv       tp, s4
                  c.slli     s10, 11
                  addi       t5, zero, 931
                  blt        s11, tp, 3728f
                  slli       t3, s4, 21
                  c.li       t5, 30
                  mul        s11, s6, t3
                  lui        s0, 816689
                  slli       a6, s10, 19
                  or         s10, s5, t4
                  auipc      s11, 159883
                  ori        t0, s2, -421
                  or         s0, a7, s9
                  slti       gp, s8, -244
                  bltu       gp, a6, 3727f
3726:             c.or       a5, a4
3727:             sll        a4, a0, t3
3728:             csrrci     zero, 0x340, 8
                  c.xor      a3, a3
                  sltu       a7, a0, t1
                  sltiu      s1, gp, 796
                  c.beqz     a3, 3750f
                  c.or       a0, a4
                  add        t5, t4, s9
                  mul        a3, s6, s3
                  c.andi     a3, -1
                  c.li       ra, 31
                  c.li       a7, 1
                  csrrc      a2, 0x340, a3
                  c.li       s3, 17
                  blt        zero, gp, 3750f
                  c.li       a1, -1
                  ori        gp, a6, 250
                  c.addi     a0, -1
                  sll        a4, t6, a0
                  c.or       a3, s0
                  c.beqz     a1, 3765f
                  mulhsu     s2, t6, a0
                  ori        t1, s7, 886
3750:             xori       tp, s4, 320
                  sltu       s11, t5, zero
                  xor        t4, s0, a7
                  remu       s0, s7, s9
                  c.slli     ra, 31
                  bltu       t4, a4, 3766f
                  fence.i
                  mulhsu     tp, t0, a7
                  div        t5, s7, t6
                  mulh       t3, a3, s11
                  c.or       a4, a5
                  sltiu      ra, s8, -755
                  sltiu      t5, a1, -565
                  remu       a5, t5, s7
                  or         a1, s9, s7
3765:             mulhsu     a4, s8, ra
3766:             c.beqz     a1, 3768f
                  mulh       a2, t4, s5
3768:             fence
                  blt        s6, a4, 3770f
3770:             nop
                  bltu       ra, t5, 3789f
                  ori        gp, t1, 965
                  c.li       a6, 5
                  rem        t0, a3, a5
                  c.addi     tp, 23
                  c.xor      a0, a1
                  bltu       a7, s5, 3784f
                  mulh       t6, gp, s11
                  sltu       t1, a5, s4
                  and        t5, a3, zero
                  mulh       s2, s5, ra
                  bgeu       a5, t6, 3784f
                  c.srli     a1, 22
3784:             c.andi     a3, 5
                  rem        t6, s1, t0
                  csrrwi     s3, 0x340, 8
                  fence
                  or         s11, s8, a4
3789:             rem        a6, gp, gp
                  slt        a2, s8, s1
                  auipc      s3, 750883
                  sltu       t5, tp, s2
                  remu       a6, s6, sp
                  c.bnez     a0, 3809f
                  andi       s2, a4, 55
                  fence
                  mul        s5, s5, a7
                  bltu       s11, t1, 3800f
                  blt        s3, a4, 3818f
3800:             nop
                  lui        s1, 327663
                  mul        t6, s5, s8
                  xori       s3, s3, -744
                  mulh       s2, t6, t3
                  csrrwi     t2, 0x340, 31
                  c.and      a0, s0
                  blt        tp, s1, 3827f
                  mulhsu     t2, t4, tp
3809:             mulh       a1, a0, t5
                  bltu       t3, sp, 3816f
                  c.andi     a1, 29
                  srl        ra, s8, a5
                  csrrsi     s6, 0x340, 6
                  c.andi     a1, 6
                  sltiu      a0, a6, -777
3816:             ori        t6, s0, 293
                  and        s11, a2, a7
3818:             remu       t3, a6, s9
                  c.add      t3, gp
                  c.bnez     s1, 3834f
                  c.xor      a1, a4
                  auipc      s0, 554348
                  sltu       a6, s5, s4
                  blt        a5, t3, 3839f
                  c.srai     a1, 22
                  csrrci     s0, 0x340, 11
3827:             sltu       s8, a2, s0
                  ori        s3, ra, 332
                  lui        t4, 546135
                  c.srai     a3, 2
                  sra        a0, a1, gp
                  mulhu      s9, s0, s10
                  bne        gp, s8, 3834f
3834:             c.addi     a5, -1
                  slli       zero, tp, 29
                  divu       a1, s1, t4
                  srai       s2, zero, 27
                  and        s9, s8, s2
3839:             xori       a0, s1, -680
                  srli       t5, t5, 20
                  bge        sp, sp, 3845f
                  slti       a0, s8, -540
                  or         a7, t5, s2
                  csrrw      a2, 0x340, t3
3845:             sltiu      t3, s8, -637
                  addi       t4, a2, 389
                  csrrci     t2, 0x340, 15
                  c.bnez     a1, 3852f
                  lui        s5, 882011
                  c.sub      a3, a1
                  bge        a4, s6, 3854f
3852:             csrrc      t1, 0x340, s10
                  csrrsi     s2, 0x340, 18
3854:             sub        tp, a4, sp
                  remu       a7, a2, s10
                  c.xor      a0, a2
                  bltu       t2, a5, 3862f
                  c.srli     a1, 31
                  bltu       a5, zero, 3873f
                  ori        a0, t0, -844
                  andi       a5, a3, -821
3862:             bgeu       ra, t5, 3875f
                  blt        s4, a7, 3883f
                  sub        s10, s9, s7
                  c.nop
                  mulh       t4, s5, s5
                  c.beqz     a5, 3882f
                  c.andi     a0, -1
                  div        ra, gp, a5
                  c.li       a6, 1
                  srl        t4, s4, s0
                  addi       a1, t2, 399
3873:             remu       t6, a0, t2
                  csrrwi     s11, 0x340, 27
3875:             bne        a7, s3, 3878f
                  beq        s3, s4, 3894f
                  beq        t0, s0, 3879f
3878:             and        s5, a2, a1
3879:             c.xor      a5, a5
                  srli       s5, gp, 27
                  divu       t0, s2, s10
3882:             auipc      s10, 396162
3883:             c.and      a3, a5
                  mulh       s11, s9, a2
                  c.andi     a2, -1
                  c.xor      a5, a3
                  auipc      ra, 866889
                  mulhsu     a2, ra, a1
                  ori        s3, s5, 293
                  c.nop
                  c.sub      s0, a1
                  and        t4, t4, sp
                  fence.i
3894:             c.nop
                  beq        a5, s10, 3899f
                  sltiu      s1, t1, 49
                  mulhsu     t5, ra, a7
                  sra        ra, s7, a4
3899:             add        s9, s6, ra
                  c.li       a5, 29
                  rem        a1, a3, a7
                  divu       s5, a5, t6
                  c.bnez     a0, 3917f
                  bge        t4, t0, 3905f
3905:             srai       t1, s9, 27
                  c.li       s1, -1
                  mulhu      a4, s2, s0
                  c.bnez     a4, 3914f
                  c.sub      a3, a0
                  csrrci     s11, 0x340, 24
                  mulhu      s6, s4, s3
                  mulhu      a1, t3, a5
                  c.addi     a1, 30
3914:             ori        t4, tp, 968
                  beq        a4, a0, 3935f
                  c.lui      s5, 20
3917:             sll        s2, tp, a1
                  bge        s9, s5, 3920f
                  addi       t2, s11, -651
3920:             or         s9, a0, zero
                  bne        gp, t6, 3936f
                  c.li       t3, 30
                  and        t4, sp, tp
                  c.andi     a2, -1
                  csrrc      a3, 0x340, gp
                  andi       s10, a2, 928
                  c.bnez     a2, 3941f
                  slli       a3, t0, 6
                  ori        s5, t3, -284
                  ori        a3, a0, 615
                  c.bnez     a5, 3945f
                  c.and      a4, s1
                  slt        a0, s1, s6
                  csrrwi     s9, 0x340, 1
3935:             xori       ra, a0, -741
3936:             lui        tp, 54358
                  or         a6, a3, a6
                  csrrsi     s11, 0x340, 11
                  srli       tp, s5, 24
                  .4byte 0xaea958cb # kIllegalOpcode
                  srai       a4, ra, 23
3941:             lui        a7, 119818
                  sub        t1, a6, ra
                  remu       s3, s3, a4
                  srli       gp, s7, 6
3945:             c.li       s10, 27
                  csrrs      s6, 0x340, ra
                  csrrwi     t3, 0x340, 21
                  divu       t5, s10, s10
                  csrrci     s5, 0x340, 24
                  c.srli     a5, 30
                  addi       s8, t6, 612
                  c.bnez     a1, 3959f
                  c.slli     a5, 7
                  mulhu      s9, s4, a3
                  csrrw      t3, 0x340, s6
                  andi       s1, s2, -466
                  srai       s2, t1, 21
                  slli       a7, t4, 24
3959:             bgeu       s5, a0, 3978f
                  slt        zero, t3, a6
                  csrrci     s0, 0x340, 15
                  csrrwi     ra, 0x340, 27
                  divu       s0, t1, a7
                  slt        t3, a2, s2
                  rem        ra, s1, t1
                  or         s2, s11, s4
                  c.add      t1, s6
                  blt        s11, t5, 3977f
                  sltiu      t2, s0, -234
                  c.mv       a4, t6
                  nop
                  slli       a1, t4, 22
                  c.mv       t3, s6
                  bge        ra, t3, 3991f
                  csrrci     a7, 0x340, 30
                  xor        s11, s5, s4
3977:             csrrwi     t5, 0x340, 0
3978:             mulhsu     a3, s8, a1
                  csrrc      t6, 0x340, s2
                  slti       t2, t6, 262
                  sra        a6, s0, s2
                  mul        t4, t4, t1
                  .4byte 0x3766 # kIllegalCompressedOpcode
                  fence.i
                  c.li       a5, -1
                  c.nop
                  c.xor      a4, a2
                  divu       a1, gp, s6
                  addi       t1, s0, -510
                  c.sub      a1, a5
                  mulh       a3, t2, s5
3991:             addi       a6, a4, 322
                  fence.i
                  c.li       s5, -1
                  slti       gp, t5, -568
                  csrrw      a7, 0x340, s6
                  rem        a0, sp, t0
                  and        t2, t5, t0
                  xor        t4, a0, s2
                  sltiu      s3, s4, -345
                  mulhsu     t6, gp, a0
                  bltu       sp, s0, 4012f
                  c.add      gp, a6
                  bge        s4, a3, 4016f
                  bge        s9, t4, 4022f
                  fence.i
                  c.li       s3, 19
                  add        t2, a2, s1
                  add        s0, zero, s9
                  xori       t0, t1, 914
                  beq        sp, a7, 4016f
                  c.beqz     s0, 4013f
4012:             srai       tp, s3, 8
4013:             c.add      t2, s10
                  mulh       tp, s11, gp
                  srai       s5, t3, 7
4016:             mulhsu     a0, a0, sp
                  mulhu      tp, a5, t4
                  csrrsi     s11, 0x340, 22
                  divu       a3, tp, s8
                  c.addi     a6, -1
                  c.lui      s2, 12
4022:             c.li       t2, 19
                  csrrci     gp, 0x340, 15
                  c.nop
                  bltu       s6, a2, 4029f
                  xor        a5, s6, a7
                  lui        s9, 575760
                  c.srli     s0, 13
4029:             sll        t3, t5, ra
                  bgeu       t1, s7, 4031f
4031:             c.beqz     a3, 4036f
                  divu       s0, s9, s1
                  csrrw      ra, 0x340, s6
                  c.andi     a4, 22
                  sll        s0, t0, t3
4036:             beq        s7, a4, 4054f
                  bne        a4, s1, 4046f
                  mulhsu     a2, a3, t4
                  c.sub      s0, a0
                  and        s3, s5, a2
                  c.andi     a3, -1
                  c.mv       s2, s0
                  c.add      s11, a0
                  div        gp, s3, s7
                  slti       tp, a0, 333
4046:             add        s10, s0, s0
                  c.lui      s3, 10
                  bgeu       s4, s4, 4050f
                  srai       ra, ra, 28
4050:             mul        s5, a7, s7
                  c.or       s0, s1
                  addi       t5, a3, 944
                  bgeu       a1, s11, 4073f
4054:             c.add      s3, t6
                  c.lui      t5, 7
                  mulhsu     s3, s9, a4
                  c.and      a5, a2
                  c.or       s1, s0
                  c.li       s3, -1
                  and        s2, a0, gp
                  xor        t6, a0, t5
                  c.slli     a1, 21
                  c.slli     s3, 13
                  slli       t1, s11, 29
                  sltu       a7, tp, a2
                  xor        s0, t6, s2
                  c.addi     t2, -1
                  remu       a3, s3, s10
                  div        s2, s3, a3
                  bne        t4, s9, 4071f
4071:             c.andi     a5, -1
                  c.srai     s0, 10
4073:             fence.i
                  sra        s5, s1, a5
                  c.srli     a3, 12
                  divu       ra, t0, zero
                  fence
                  mul        tp, a7, t3
                  c.srai     a2, 30
                  srai       s10, s0, 12
                  or         s2, s7, sp
                  bgeu       sp, t5, 4085f
                  csrrs      a3, 0x340, a5
                  mul        a4, t5, t3
4085:             c.and      a1, a0
                  c.li       t2, -1
                  c.li       tp, 19
                  ori        t6, tp, 886
                  slli       a5, t6, 5
                  csrrci     t6, 0x340, 20
                  sll        a7, sp, t1
                  sltu       t3, a4, ra
                  sltiu      t1, t1, 857
                  blt        gp, a4, 4098f
                  c.or       s1, a1
                  nop
                  fence.i
4098:             or         t0, a1, a5
                  c.mv       t1, s4
                  srai       t3, sp, 11
                  fence
                  c.nop
                  sltiu      s2, s7, -828
                  c.or       a2, a1
                  c.nop
                  c.xor      a1, a2
                  remu       ra, t6, a2
                  divu       t3, a6, sp
                  csrrw      a4, 0x340, a6
                  lui        zero, 940721
                  addi       t3, t4, -423
                  sub        s6, s3, ra
                  beq        s2, s5, 4124f
                  csrrwi     a6, 0x340, 8
                  csrrci     s2, 0x340, 1
                  mul        a5, a5, s2
                  slli       s1, t3, 19
                  c.add      t6, a1
                  bltu       sp, s11, 4133f
                  c.li       a7, -1
                  add        a0, s3, a4
                  c.nop
                  csrrw      t3, 0x340, s4
4124:             rem        ra, a5, ra
                  mulh       t6, s8, zero
                  slti       a4, t3, 159
                  lui        s5, 978389
                  sltiu      a4, a2, -163
                  bge        a2, s3, 4149f
                  nop
                  sub        a3, s8, a1
                  mulhu      s9, s9, s7
4133:             slli       s11, a4, 15
                  lui        a1, 653447
                  slt        a3, s11, a3
                  fence
                  csrrci     zero, 0x340, 12
                  sra        t3, tp, a4
                  c.xor      s0, a2
                  slli       a3, a5, 15
                  nop
                  mulhu      a0, s10, s8
                  srl        t6, t6, a0
                  lui        gp, 57155
                  csrrwi     t3, 0x340, 13
                  csrrwi     s11, 0x340, 11
                  c.mv       tp, t3
                  csrrwi     gp, 0x340, 6
4149:             fence
                  c.srli     a2, 3
                  c.nop
                  bltu       s9, t2, 4158f
                  nop
                  c.andi     a1, -1
                  mulh       t2, s9, tp
                  ori        t1, s7, -887
                  div        a7, t5, t6
4158:             c.addi     a7, 26
                  blt        a0, a0, 4164f
                  lui        a7, 856856
                  rem        gp, s9, a5
                  sub        zero, zero, a7
                  nop
4164:             c.add      a3, a0
                  sltu       a3, s7, s5
                  slli       t1, t2, 7
                  srl        a1, a0, a3
                  remu       a1, a1, s6
                  slli       ra, a1, 4
                  srl        s8, sp, a6
                  lui        t5, 100937
                  mulhsu     t4, a0, a7
                  divu       t1, t6, a3
                  sltiu      tp, s10, -426
                  div        a0, t0, s5
                  bge        a2, t4, 4185f
                  csrrs      s1, 0x340, t4
                  bgeu       t1, s2, 4197f
                  blt        a0, zero, 4185f
                  xor        ra, s11, s1
                  sra        t4, s7, t5
                  beq        s9, a1, 4195f
                  mulhu      a5, a0, s8
                  c.srai     s0, 9
4185:             c.li       s2, -1
                  add        t2, tp, s10
                  mulh       a6, t3, a7
                  csrrw      a4, 0x340, s2
                  remu       s9, s5, t5
                  fence
                  mul        a0, a6, gp
                  and        t2, a0, s10
                  sra        s5, zero, a0
                  csrrci     tp, 0x340, 13
4195:             mul        s11, t1, t4
                  and        s8, a2, s6
4197:             addi       tp, ra, 552
                  c.srli     a3, 24
                  srai       zero, t4, 2
                  slli       tp, zero, 9
                  bne        s1, s10, 4218f
                  c.srai     s0, 28
                  mulh       t1, s10, s3
                  c.xor      a5, a4
                  and        t4, t4, s9
                  slt        a0, s11, s10
                  mul        s2, s6, s1
                  c.beqz     a3, 4210f
                  c.xor      a3, s0
4210:             c.slli     a5, 16
                  srli       t2, t1, 23
                  mul        ra, sp, s9
                  c.mv       a1, sp
                  sltu       t4, s5, s9
                  c.addi     s10, 2
                  csrrw      t5, 0x340, s3
                  c.lui      t4, 31
4218:             c.lui      t5, 11
                  c.beqz     s0, 4226f
                  lui        gp, 789175
                  c.srli     a1, 14
                  or         a1, s6, t6
                  c.lui      gp, 9
                  srl        s1, s3, gp
                  xori       s9, s6, -408
4226:             srl        s6, ra, t6
                  csrrw      t6, 0x340, s3
                  bgeu       a0, s2, 4230f
                  .4byte 0xaf9cbd73 # kIllegalSystemInstr
                  bge        tp, s9, 4249f
4230:             xori       gp, s3, 119
                  ori        t5, zero, -616
                  ori        t3, a3, -56
                  csrrw      t2, 0x340, s4
                  srl        t3, s1, t3
                  bltu       t3, a3, 4249f
                  c.add      s11, t4
                  c.beqz     a3, 4252f
                  bne        s3, s4, 4242f
                  c.add      t0, s2
                  c.slli     s0, 19
                  slli       s2, s5, 2
4242:             bltu       s1, a7, 4260f
                  slt        s1, t6, sp
                  c.li       a7, -1
                  bne        t3, s9, 4246f
4246:             csrrw      a0, 0x340, t2
                  remu       a7, t5, s0
                  remu       s8, a7, a7
4249:             csrrci     gp, 0x340, 21
                  sra        a1, a4, t2
                  xori       a6, s9, -886
4252:             sub        t4, t6, s3
                  add        a5, t0, t1
                  c.lui      t6, 23
                  mulhu      a0, s4, sp
                  c.and      s1, a5
                  mul        tp, s2, a7
                  slti       a3, tp, -401
                  remu       t4, s2, a1
4260:             xori       s3, a1, -373
                  lui        t6, 393401
                  rem        t1, s0, s0
                  sll        tp, s3, a5
                  slti       t6, s5, 408
                  c.lui      a7, 14
                  c.add      tp, s0
                  add        s0, a5, s7
                  xor        s11, s10, a1
                  bne        s1, s6, 4270f
4270:             fence
                  sub        s11, s10, a5
                  mulh       s8, a7, s11
                  c.slli     a2, 4
                  sltiu      a0, s6, -581
                  csrrs      t6, 0x340, t0
                  csrrci     a3, 0x340, 26
                  c.li       t0, 30
                  .4byte 0x5108a08f # kIllegalFunc3
                  sll        t2, t3, s7
                  sltu       t4, t4, a3
                  xor        s9, s5, s8
                  c.sub      a2, a5
                  mulhu      t6, s4, a4
                  fence
                  c.li       ra, 6
                  xori       s9, s6, -337
                  addi       t3, s9, -116
                  csrrc      gp, 0x340, s0
                  sltiu      t1, s11, 1014
                  add        s3, a0, s5
                  mulhu      t1, t0, t6
                  c.mv       a2, sp
                  csrrci     a0, 0x340, 18
                  slti       tp, s1, -419
                  bge        a4, s2, 4303f
                  csrrw      t2, 0x340, zero
                  xori       t4, s8, 307
                  csrrw      t6, 0x340, gp
                  c.sub      a5, s1
                  c.srli     a4, 3
                  auipc      t4, 866704
                  beq        tp, s5, 4315f
                  and        a1, ra, a4
4303:             sra        t1, s11, t6
                  divu       t0, t2, s10
                  rem        ra, a6, tp
                  ori        t2, s9, 690
                  csrrc      s0, 0x340, s9
                  sltu       t6, s4, a0
                  mul        s5, a0, a7
                  fence
                  lui        a4, 685568
                  mul        a2, a0, s2
                  bgeu       s3, gp, 4331f
                  c.and      a1, a1
4315:             and        a3, zero, gp
                  or         a2, s1, a1
                  ori        a3, s10, -341
                  c.lui      t6, 26
                  andi       s8, sp, 325
                  blt        s11, s3, 4335f
                  xori       s11, s4, 356
                  mulh       a1, s2, zero
                  and        t3, s1, s4
                  bge        s8, a4, 4325f
4325:             c.mv       s5, s4
                  sub        t6, s5, t6
                  csrrw      a7, 0x340, gp
                  mulhsu     t6, a4, a3
                  bne        gp, t3, 4347f
                  auipc      a3, 620111
4331:             c.and      s0, s0
                  c.addi     a0, 23
                  auipc      t4, 314339
                  slt        t3, ra, a3
4335:             slti       tp, a1, 912
                  c.srli     a4, 19
                  rem        s3, s0, s11
                  beq        a3, s3, 4340f
                  slt        t5, s7, a0
4340:             xor        s11, s9, t2
                  bne        a2, a2, 4343f
                  slt        t4, a4, s7
4343:             auipc      s5, 542881
                  c.lui      s10, 23
                  sll        t1, s1, ra
                  c.srli     a1, 11
4347:             c.and      s0, a0
                  sll        t1, a1, a1
                  slli       s3, s9, 12
                  csrrsi     t1, 0x340, 20
                  or         a4, a7, a4
                  c.srli     a4, 30
                  c.sub      s0, a1
                  slt        t4, a2, t0
                  or         s5, s11, s11
                  andi       s11, a5, -434
                  c.addi     s5, -1
                  divu       s8, a7, s5
                  c.addi     gp, 5
                  slli       ra, t5, 17
                  ori        a7, t1, 455
                  c.addi     t0, -1
                  fence
                  c.and      a5, a1
                  c.srli     a5, 31
                  c.bnez     a3, 4385f
                  xor        a0, s4, s2
                  sll        t6, zero, tp
                  auipc      s5, 538777
                  div        zero, a1, s0
                  csrrwi     s5, 0x340, 22
                  c.nop
                  c.slli     t3, 4
                  slti       gp, a0, 166
                  sltu       s6, t5, s5
                  or         a0, ra, a5
                  mulhu      s10, t4, t5
                  blt        s9, t2, 4380f
                  c.mv       a2, t3
4380:             mulhu      s8, t1, t5
                  la         tp, region_0+3125 #start load_store_instr_stream_0
                  la         s3, region_0+2296 #start load_store_instr_stream_1
                  sh         a0, -108(s3)
                  lb         t2, -1562(tp)
                  lb         s1, -169(s3)
                  lhu        a0, -136(s3)
                  lb         s10, -262(tp)
                  lhu        a4, 186(s3)
                  lb         s9, 142(s3)
                  sb         a4, -85(s3)
                  lb         a5, -8(tp)
                  lw         a3, -88(s3)
                  lh         gp, 118(s3) #end load_store_instr_stream_1
                  lb         s6, 589(tp)
                  lbu        t5, -1726(tp) #end load_store_instr_stream_0
                  divu       s11, zero, t2
                  and        zero, sp, s4
                  csrrwi     s2, 0x340, 18
                  divu       s10, a0, s6
4385:             mul        t6, a1, s11
                  slt        t6, s6, s9
                  slli       tp, t0, 18
                  c.mv       t5, a4
                  csrrwi     s5, 0x340, 3
                  mul        t6, s9, s8
                  srai       a5, ra, 31
                  c.lui      t1, 12
                  blt        s8, t6, 4397f
                  csrrw      a0, 0x340, s11
                  fence
                  csrrsi     tp, 0x340, 13
4397:             sub        a2, s7, s2
                  csrrci     a4, 0x340, 7
                  c.nop
                  srl        a5, a4, a5
                  sltu       tp, a7, a0
                  c.sub      a3, a3
                  lui        t3, 225147
                  xori       t6, s10, -500
                  add        s9, s0, s0
                  bltu       t4, s1, 4420f
                  sltiu      ra, s11, -477
                  c.beqz     a0, 4425f
                  bltu       s5, t5, 4416f
                  sll        t3, t4, s5
                  blt        s11, t1, 4426f
                  slti       tp, sp, 80
                  c.beqz     a0, 4415f
                  bge        s8, s7, 4427f
4415:             csrrc      s2, 0x340, s2
                  la         a5, sub_2
                  sra        gp, ra, s3
                  c.xor      s1, a1
                  csrrwi     s11, 0x340, 29
                  addi       a5, a5, 402
                  beq        s2, t4, j__main_sub_2_2 #branch to jump instr
                  and        t4, t6, ra
                  mulhsu     a3, a7, t2
j__main_sub_2_2:  jalr       t4, a5, -402
                  la         a2, region_1+1710 #start load_store_instr_stream_1
                  sb         a1, 64(a2)
                  la         t0, region_1+7019 #start load_store_instr_stream_0
                  sh         a0, -8(a2)
                  lh         s9, -9(t0)
                  sb         a0, -16(t0)
                  sb         t5, 8(t0)
                  lh         a0, 26(a2)
                  lbu        a7, 41(a2)
                  lh         s3, 16(a2)
                  lb         s10, -31(a2)
                  sw         s11, -3(t0)
                  lbu        t6, -36(a2)
                  lbu        s6, 15(t0)
                  lbu        s5, -55(a2)
                  sb         t4, 1(t0)
                  lbu        s0, -12(t0)
                  lb         s6, -11(t0)
                  lbu        a4, 12(t0)
                  sh         a3, -60(a2) #end load_store_instr_stream_1
                  sw         a1, 9(t0) #end load_store_instr_stream_0
4416:             c.slli     s5, 11
                  lui        a1, 75647
                  lui        s3, 289024
                  c.li       s2, -1
4420:             csrrw      s8, 0x340, a2
                  bgeu       s3, a4, 4427f
                  c.srai     s0, 1
                  c.lui      a2, 28
                  sra        a6, a5, a4
4425:             sltu       t0, t0, a6
4426:             bgeu       s7, a2, 4427f
4427:             beq        t2, t6, 4447f
                  c.lui      t2, 15
                  c.srli     a2, 22
                  c.mv       t4, s11
                  mulh       t0, s3, s11
                  divu       a6, t2, t1
                  sltu       s0, sp, s3
                  c.andi     s0, -1
                  c.andi     s1, -1
                  sltu       a4, s0, s1
                  csrrci     a0, 0x340, 12
                  divu       a2, s8, t6
                  andi       s10, a0, -559
                  fence.i
                  c.lui      t1, 11
                  or         zero, a0, s9
                  or         a2, s2, a3
                  mulhu      t6, a7, s10
                  lui        t5, 369767
                  sltu       a1, s1, sp
4447:             c.addi     t4, 30
                  auipc      s3, 376043
                  sltu       t5, sp, a3
                  fence
                  fence.i
                  divu       t4, gp, s4
                  srl        a7, ra, a0
                  c.xor      a4, s0
                  sltiu      s8, s8, 568
                  csrrc      s8, 0x340, a4
                  bltu       a7, a6, 4477f
                  slt        s8, t3, t4
                  bgeu       gp, s7, 4462f
                  c.nop
                  bge        a4, s8, 4463f
                  la         s0, region_2+5367 #start riscv_load_store_rand_instr_stream_15
                  sll        zero, zero, zero
                  lh         t3, 1(s0)
                  sh         a2, -53(s0)
                  lb         a6, 55(s0)
                  addi       a7, s11, -323
                  sw         t5, -39(s0)
                  sll        gp, zero, t2
                  slti       s9, s2, -519
                  sltiu      ra, s9, 102
                  ori        ra, s6, 89
                  srl        a3, s6, a0
                  xori       s6, a2, -408
                  lbu        a3, 62(s0)
                  lb         a2, -28(s0)
                  lbu        s6, -41(s0)
                  c.mv       s5, tp
                  sra        s8, s3, sp
                  lbu        s9, -44(s0)
                  rem        t3, a7, s9
                  lhu        s10, -55(s0)
                  mul        ra, sp, zero
                  sw         zero, 49(s0)
                  sb         s3, 21(s0)
                  sb         a4, -56(s0)
                  sb         tp, -46(s0)
                  c.xor      a4, a1
                  addi       t4, s3, -863
                  lb         a6, 36(s0)
                  lh         s1, -19(s0)
                  lb         s3, 64(s0)
                  lw         tp, -63(s0)
                  lbu        s10, -19(s0)
                  lb         a6, -57(s0)
                  c.slli     s5, 19
                  lbu        s9, -12(s0) #end riscv_load_store_rand_instr_stream_15
4462:             fence
4463:             srl        zero, s11, gp
                  c.and      s1, a0
                  mulhsu     t2, t5, t1
                  c.li       s5, -1
                  slli       s11, t5, 9
                  slli       s2, s2, 1
                  c.and      a1, s1
                  c.srli     a4, 28
                  addi       s3, a7, -952
                  srli       a7, sp, 11
                  slt        s8, s7, s7
                  c.beqz     s1, 4475f
4475:             c.srli     s1, 8
                  csrrsi     t0, 0x340, 29
4477:             c.srai     a2, 25
                  c.addi     a5, -1
                  blt        s6, s0, 4481f
                  c.andi     a4, -1
4481:             ori        t4, tp, 738
                  sll        s0, s6, t5
                  c.srli     s0, 29
                  srl        s10, tp, a6
                  addi       s3, s6, 944
                  slti       t1, gp, -1015
                  bltu       t0, s5, 4492f
                  c.slli     a4, 27
                  auipc      s5, 373918
                  mulhu      a1, s3, s2
                  bltu       s5, t0, 4509f
4492:             c.xor      a0, s0
                  lui        s0, 649843
                  c.and      a5, a2
                  srl        s8, s4, s6
                  add        s1, tp, t3
                  sltu       a6, t6, a0
                  fence.i
                  c.add      s8, s7
                  addi       t5, t0, 16
                  csrrs      a7, 0x340, s9
                  div        s1, s0, s9
                  csrrsi     s10, 0x340, 31
                  c.lui      t1, 11
                  beq        a0, s3, 4506f
4506:             csrrc      s9, 0x340, t6
                  c.addi     t3, 22
                  add        a7, s8, s6
4509:             c.slli     a0, 8
                  slli       t2, s2, 12
                  c.andi     s1, -1
                  addi       a3, t5, 775
                  mulh       a3, s5, t0
                  sltu       t6, s7, a7
                  c.mv       t1, s9
                  c.add      s9, s6
                  c.beqz     a5, 4531f
                  ori        s1, a7, 345
                  csrrsi     a5, 0x340, 18
                  sll        s0, s3, s7
                  sll        s10, t4, a0
                  blt        zero, sp, 4540f
                  sltiu      t1, a3, 942
                  blt        zero, ra, 4528f
                  fence
                  ori        s1, a5, 851
                  rem        a3, s6, s10
4528:             mulh       a4, s8, s4
                  c.slli     s6, 27
                  csrrw      ra, 0x340, s7
4531:             mulhu      gp, s9, s9
                  div        s2, s2, gp
                  sra        s0, s11, s11
                  c.xor      s0, a0
                  rem        a3, t6, a7
                  and        s9, s11, t4
                  slli       t2, s5, 25
                  sub        a5, s10, a0
                  rem        t2, a6, s7
4540:             mulhsu     t3, s11, a3
                  srai       a0, t3, 26
                  c.srli     s1, 16
                  srai       a3, t2, 19
                  c.li       t3, 9
                  bge        t2, t1, 4554f
                  c.mv       s6, s7
                  c.or       a4, a0
                  c.bnez     a2, 4562f
                  csrrs      s1, 0x340, t4
                  lui        a5, 892214
                  c.lui      t1, 19
                  lui        a6, 542333
                  c.bnez     a4, 4571f
4554:             div        s11, sp, a2
                  csrrwi     s11, 0x340, 27
                  c.lui      a0, 16
                  c.add      s9, s1
                  srai       a4, t2, 27
                  fence
                  lui        s6, 312214
                  ori        a2, a0, 779
4562:             sll        t2, s8, a6
                  divu       a3, s0, t0
                  sub        s8, t5, t5
                  fence.i
                  fence.i
                  c.li       tp, -1
                  div        a4, a2, t1
                  c.and      a0, a1
                  ori        t4, t0, -245
main_30:          jal        t4, 9f
0:                c.jal      14f
1:                c.jal      5f
2:                c.jal      13f
3:                c.jal      0b
4:                c.j        2b
5:                jal        t1, 3b
6:                c.j        1b
7:                c.jal      4b
8:                jal        t1, 10f
9:                c.jal      12f
10:               c.j        7b
11:               jal        ra, 6b
12:               c.j        8b
13:               c.jal      11b
14:               csrrsi     s2, 0x340, 6
4571:             c.bnez     a1, 4577f
                  c.nop
                  addi       a2, a1, -1023
                  sll        a0, a5, a1
                  div        s1, s10, a4
                  c.beqz     s1, 4587f
4577:             srai       a2, s2, 8
                  c.sub      a2, a4
                  sltiu      s1, sp, -598
                  divu       ra, ra, a4
                  slli       t3, sp, 22
                  bgeu       s4, ra, 4591f
                  c.addi     gp, 7
                  divu       a4, a6, ra
                  slli       a2, s9, 30
                  rem        a6, s10, gp
4587:             c.or       a3, a0
                  divu       a6, a0, a3
                  c.li       tp, -1
                  xor        t2, s8, zero
4591:             or         t2, t4, s1
                  c.beqz     a3, 4607f
                  auipc      t1, 939988
                  csrrsi     s10, 0x340, 29
                  sub        s10, s9, s2
                  srl        s10, gp, a2
                  addi       t0, a6, -1003
                  c.and      a0, a4
                  bgeu       a2, a5, 4600f
4600:             blt        sp, t4, 4618f
                  rem        gp, s8, t1
                  csrrci     s2, 0x340, 12
                  mulh       t4, s2, sp
                  c.sub      a3, a3
                  c.xor      a1, s0
                  bge        a3, s4, 4624f
4607:             add        a2, tp, sp
                  slli       s0, s3, 28
                  mul        a3, t0, s0
                  nop
                  sltu       a1, s6, s4
                  c.add      a1, s1
                  sra        a5, ra, a7
                  fence.i
                  bltu       a1, t1, 4629f
                  div        a1, gp, a7
                  csrrwi     s9, 0x340, 21
4618:             remu       a7, s10, a3
                  div        s2, t4, t3
                  lui        t5, 119463
                  bge        sp, a0, 4627f
                  csrrci     t4, 0x340, 27
                  bge        t5, s10, 4627f
4624:             csrrwi     s3, 0x340, 0
                  c.srai     s0, 15
                  lui        t4, 372866
4627:             c.and      a3, a2
                  srli       a5, a7, 0
4629:             csrrsi     t4, 0x340, 21
                  csrrci     s6, 0x340, 18
                  or         t0, ra, a4
                  andi       zero, t3, 343
                  c.srai     s1, 2
                  bltu       s3, t3, 4636f
                  c.srai     a0, 21
4636:             c.andi     a5, 29
                  c.bnez     s1, 4638f
4638:             addi       s5, t1, -125
                  srl        gp, s3, s1
                  csrrsi     s2, 0x340, 17
                  srl        a7, t2, a7
                  xor        s1, s9, ra
                  beq        t3, s0, 4648f
                  lui        s8, 717234
                  c.add      s0, s3
                  rem        s1, s9, a0
                  beq        sp, s7, 4656f
4648:             xori       a3, t1, -509
                  bge        tp, s3, 4655f
                  mulhu      s5, a0, s0
                  srai       s10, t5, 26
                  c.addi     s1, -1
                  div        a0, t2, s2
                  slti       s9, s0, -994
4655:             c.mv       a7, s9
4656:             csrrsi     zero, 0x340, 1
                  csrrsi     t2, 0x340, 14
                  fence.i
                  mulhsu     s5, s6, s8
                  srli       a5, s6, 22
                  rem        a3, t5, s10
                  srl        ra, a4, zero
                  c.bnez     a1, 4672f
                  c.beqz     a5, 4666f
                  nop
4666:             fence
                  fence.i
                  bne        a2, t5, 4681f
                  c.sub      s0, a4
                  c.slli     t3, 25
                  srli       a3, sp, 31
4672:             fence
                  mul        t4, s0, s11
                  c.srli     a3, 1
                  c.lui      s5, 20
                  slti       t6, s4, 305
                  fence
                  nop
                  and        t5, a6, t2
                  slli       a3, s4, 27
4681:             csrrc      t0, 0x340, s0
                  c.mv       a6, a1
                  mul        a5, s11, s1
                  rem        a3, a2, a3
                  remu       s11, a0, ra
                  csrrc      s8, 0x340, a6
                  c.add      s2, sp
                  fence
                  nop
                  c.bnez     a3, 4704f
                  c.add      s5, s11
                  beq        s7, s1, 4693f
4693:             beq        zero, a3, 4710f
                  fence.i
                  mul        s3, s5, s2
                  beq        t3, a7, 4715f
                  c.sub      a2, a4
                  sltiu      a3, t5, 705
                  nop
                  mulh       t6, s4, s3
                  fence
                  xor        s0, t4, t4
                  .4byte 0x129f75f3 # kIllegalSystemInstr
                  lui        s3, 483693
4704:             c.mv       a5, a7
main_45:          jal        t4, 15f
0:                c.jal      26f
1:                jal        s0, 14f
2:                c.jal      0b
3:                c.jal      1b
4:                c.jal      11f
5:                c.jal      23f
6:                c.j        17f
7:                jal        a3, 13f
8:                c.jal      22f
9:                c.jal      8b
10:               c.jal      4b
11:               c.j        27f
12:               c.j        10b
13:               jal        ra, 24f
14:               c.j        9b
15:               c.jal      16f
16:               c.jal      6b
17:               jal        ra, 25f
18:               jal        ra, 19f
19:               c.j        7b
20:               jal        ra, 2b
21:               c.j        18b
22:               jal        a7, 20b
23:               c.j        12b
24:               c.jal      3b
25:               c.jal      21b
26:               c.jal      5b
27:               nop
                  srli       s1, s0, 22
                  beq        s8, t3, 4721f
                  bne        s5, s10, 4710f
                  bltu       a5, s0, 4715f
                  or         s11, gp, a6
4710:             ori        a2, s1, 489
                  c.xor      a5, a5
                  slt        a1, s7, t3
                  c.srli     s1, 28
                  c.addi     s11, -1
4715:             srai       s5, sp, 12
                  and        ra, a7, s2
                  c.lui      a7, 13
                  csrrwi     a5, 0x340, 9
                  csrrw      s11, 0x340, a7
                  or         s3, s2, s9
4721:             csrrci     gp, 0x340, 7
                  csrrw      s9, 0x340, s7
                  sub        s0, sp, s9
                  sltiu      gp, s10, -214
                  add        s6, a0, ra
                  csrrw      s11, 0x340, a6
                  nop
                  add        a3, s8, s9
                  mulh       s11, t3, s9
                  lui        a3, 282276
                  slti       a2, a4, -496
                  div        t6, zero, t0
                  bge        tp, t2, 4753f
                  c.addi     t3, -1
                  auipc      s1, 145052
                  div        a1, a0, a2
                  c.bnez     s0, 4751f
                  csrrci     a2, 0x340, 5
                  csrrci     s3, 0x340, 12
                  bne        ra, a4, 4744f
                  csrrc      s3, 0x340, t3
                  or         s3, a7, s1
                  andi       s5, s9, -788
4744:             sltiu      s8, a2, 871
                  slt        s1, a2, tp
                  slli       t1, t1, 0
                  srli       a2, a7, 11
                  c.bnez     a4, 4750f
                  or         zero, a7, a3
4750:             csrrsi     tp, 0x340, 31
4751:             mulhsu     ra, s8, s7
                  xor        a5, a5, s8
4753:             c.slli     a3, 9
                  c.srli     a1, 8
                  sub        a0, gp, s6
                  rem        a5, a6, zero
                  xor        a5, t1, a5
                  or         gp, zero, a1
                  srl        s9, s0, ra
                  csrrsi     s8, 0x340, 28
                  c.nop
                  and        zero, t2, t1
                  c.slli     a4, 14
                  csrrci     s11, 0x340, 17
                  c.srai     a4, 5
                  c.or       a2, a1
                  mulhsu     t0, s4, s8
                  and        ra, zero, ra
                  remu       t6, t3, s6
                  c.mv       tp, a7
                  bgeu       ra, ra, 4789f
                  c.beqz     s0, 4792f
                  bne        s2, ra, 4788f
                  c.li       a4, -1
                  sll        t2, t3, a0
                  c.li       s5, 6
                  c.or       s0, a4
                  xor        t1, s11, s1
                  srli       a7, a6, 24
                  c.srli     a0, 6
                  andi       t6, s5, 817
                  c.bnez     a1, 4793f
                  andi       a1, a7, 691
                  xori       s0, zero, -221
                  sra        a0, t1, s7
                  bne        s10, a4, 4788f
                  c.or       a1, a1
4788:             sltu       s10, t2, a0
4789:             c.andi     s0, -1
                  bne        zero, s2, 4796f
                  divu       t6, a4, t2
4792:             csrrsi     s2, 0x340, 12
4793:             csrrw      zero, 0x340, t6
                  nop
                  slt        s5, a2, s7
4796:             c.or       a5, s0
                  sltiu      s9, s9, 504
                  mulh       a3, sp, a3
                  div        s11, s11, ra
                  c.bnez     a0, 4817f
                  mulh       tp, a4, t0
                  c.add      ra, s1
                  csrrci     t4, 0x340, 3
                  andi       s2, a6, -951
                  c.sub      a3, a2
                  c.srai     a3, 28
                  mulhsu     s11, t0, s1
                  sll        a3, s11, a6
                  lui        s2, 718925
                  slli       ra, gp, 25
                  bne        t2, a4, 4818f
                  mulhu      tp, a3, t3
                  sra        s3, s6, gp
                  mulh       s9, a5, t1
                  andi       s1, a5, 518
                  c.lui      t4, 31
4817:             blt        s2, gp, 4835f
4818:             rem        a1, t1, a5
                  csrrwi     a0, 0x340, 14
                  sub        t0, s0, s6
                  lui        s1, 347307
                  lui        tp, 1032925
                  lui        t3, 748349
                  slli       s5, a0, 12
                  remu       a0, s7, gp
                  sll        t3, a4, a2
                  sra        s8, t3, ra
                  c.lui      t4, 29
                  c.xor      a4, s1
                  lui        a6, 470930
                  and        a4, t5, zero
                  mul        s0, t6, s1
                  andi       s1, sp, 961
                  c.or       a3, a5
4835:             sra        s11, t4, s6
                  c.srli     a5, 26
                  rem        s8, s11, s4
                  rem        a5, t1, a6
                  rem        t1, t4, t4
                  auipc      s3, 339120
                  slti       s2, a4, -378
                  and        gp, zero, zero
                  div        a4, s2, gp
                  and        a2, s5, s1
                  bltu       a0, a1, 4859f
                  sll        a5, gp, a4
                  srai       t6, s9, 16
                  bltu       s2, s9, 4868f
                  slli       s11, a6, 7
                  mulh       a1, s4, t5
                  bge        t4, s7, 4864f
                  div        s10, s4, s0
                  bltu       t4, a4, 4859f
                  c.andi     s1, 31
                  c.addi     a1, -1
                  or         a0, t3, s6
                  bltu       s6, s4, 4861f
                  remu       a4, t6, a5
4859:             div        tp, t5, s11
                  mulh       a7, s6, s7
4861:             lui        a5, 852624
                  srai       t6, s4, 21
                  ori        s5, ra, 992
4864:             mulhu      s1, s9, s3
                  mulhu      s0, t6, zero
                  csrrwi     t0, 0x340, 11
                  csrrc      t1, 0x340, a2
4868:             csrrwi     a1, 0x340, 24
                  slti       t5, a6, 976
                  ori        gp, s8, -630
                  addi       t3, s8, -16
                  srai       a6, gp, 8
                  c.addi     t5, 9
                  xor        gp, a3, t1
                  c.andi     s1, -1
                  c.nop
                  andi       a7, t1, 875
                  c.lui      s3, 20
                  csrrsi     a0, 0x340, 11
                  mulhsu     a2, t2, s9
                  and        s10, a3, s6
                  csrrc      gp, 0x340, s8
                  mulhu      a6, s0, a3
                  c.beqz     s1, 4899f
                  bne        a7, s2, 4903f
                  c.and      s0, s1
                  c.beqz     s0, 4896f
                  c.slli     t2, 29
                  lui        a0, 843823
                  divu       t1, s2, s11
                  xor        a7, t3, t6
                  csrrci     t2, 0x340, 17
                  lui        t5, 554296
                  c.or       a4, s0
                  div        ra, s11, s10
4896:             srai       t0, t0, 0
                  mul        a0, s3, a4
                  csrrw      t6, 0x340, s0
4899:             nop
                  c.li       t2, -1
                  blt        t0, gp, 4904f
                  c.nop
4903:             divu       s9, t1, s4
4904:             xor        t6, zero, tp
                  remu       t1, s7, a3
                  mulh       t6, s5, a6
                  srl        zero, s3, s6
                  rem        t3, s3, gp
                  blt        a3, a7, 4923f
                  c.nop
                  add        tp, t0, sp
                  srai       t6, a4, 11
                  auipc      s11, 41172
                  xori       a7, s9, 278
                  c.or       s1, s1
                  srai       s9, a6, 22
                  slli       s5, s3, 25
                  sltu       s11, s6, s11
                  and        s3, s1, s10
                  bne        a7, zero, 4922f
                  srli       s0, s4, 12
4922:             blt        zero, a4, 4942f
4923:             c.slli     t6, 15
                  mul        a5, ra, t2
                  c.and      a5, a2
                  slt        zero, s4, s6
                  slli       gp, ra, 31
                  csrrci     t0, 0x340, 18
                  srli       s3, s1, 30
                  slt        t0, a4, s0
                  c.srli     a5, 3
                  mulhsu     s9, a1, a0
                  c.xor      a5, a2
                  divu       t6, a1, sp
                  c.lui      a5, 4
                  csrrw      s6, 0x340, gp
                  c.andi     a1, 7
                  xori       s1, ra, -743
                  addi       t5, s0, -798
                  c.nop
                  c.nop
4942:             c.srli     a0, 27
                  mulhsu     a3, s1, a6
                  blt        a0, a3, 4946f
                  xor        t4, s10, gp
4946:             lui        gp, 338876
                  fence.i
                  csrrw      a7, 0x340, a3
                  csrrci     s9, 0x340, 26
                  srai       s5, a6, 9
                  rem        t3, a4, s6
                  srli       t2, s1, 0
                  csrrci     t6, 0x340, 0
                  c.lui      s1, 26
                  andi       s11, a6, -241
                  c.andi     a3, -1
                  div        s0, s5, s10
                  c.nop
                  addi       t1, s8, 543
                  srai       gp, zero, 11
                  div        t5, t0, t6
                  xor        ra, s8, t4
                  xori       a5, t1, 977
                  nop
                  mulhsu     gp, a1, tp
                  csrrsi     s9, 0x340, 17
                  csrrw      a3, 0x340, a7
                  or         s3, a6, t1
                  c.lui      a1, 13
                  c.beqz     a5, 4971f
4971:             div        a5, s2, ra
                  bltu       s3, t3, 4976f
                  addi       t1, a6, -133
                  andi       a6, a0, 642
                  mulhsu     s6, tp, t2
4976:             sltu       s0, s6, s7
                  slti       t3, a3, 112
                  c.srai     s0, 2
                  sltiu      s2, s0, 700
                  c.li       s2, -1
                  ori        gp, s2, 285
                  c.bnez     a4, 4984f
                  c.li       t0, -1
4984:             csrrwi     zero, 0x340, 0
                  slt        a0, s4, a3
                  sltiu      s1, a0, 268
                  div        s1, s11, t4
                  srli       a4, t2, 2
                  xori       t2, t1, -365
                  c.nop
                  csrrci     s3, 0x340, 7
                  sltu       s6, t0, ra
                  divu       a2, s11, s7
                  sra        s6, a0, t4
                  csrrci     a1, 0x340, 0
                  bge        t4, s3, 5011f
                  fence
                  remu       t6, s5, t5
                  slt        tp, sp, t3
                  sra        zero, s9, ra
                  fence.i
                  lui        s11, 159000
                  ori        a1, a5, 586
                  lui        a0, 806032
                  mulh       a2, s3, t6
                  sra        s1, t4, sp
                  rem        t2, s0, gp
                  xori       a5, t0, -993
                  csrrci     s8, 0x340, 5
                  sll        a4, sp, s7
5011:             slt        t3, a1, s0
                  rem        s0, s5, t4
                  c.nop
                  add        s10, a5, s8
                  csrrw      a1, 0x340, s3
                  c.bnez     a3, 5035f
                  slli       s2, t0, 5
                  xor        t2, t5, t4
                  addi       zero, a3, -413
                  csrrwi     a7, 0x340, 28
                  fence
                  c.bnez     a0, 5033f
                  c.xor      a1, a5
                  csrrwi     a3, 0x340, 19
                  c.addi     a2, -1
                  c.sub      a5, a0
                  c.bnez     s0, 5028f
5028:             ori        a7, t4, 431
                  c.slli     s11, 13
                  mulh       s3, s4, ra
                  c.addi     a6, 7
                  sub        ra, t2, t0
5033:             c.slli     a1, 31
                  c.nop
5035:             csrrwi     a2, 0x340, 13
                  sub        gp, a3, t1
                  c.nop
                  slli       t1, t4, 19
                  add        s11, s9, s6
                  mulh       s9, s7, s10
                  xori       s2, s10, -615
                  c.xor      s1, s0
                  c.bnez     s0, 5057f
                  beq        a1, s5, 5053f
                  c.li       a4, -1
                  c.sub      a1, a0
                  mulhsu     t5, s10, s6
                  csrrs      a3, 0x340, t1
                  srai       a5, sp, 18
                  mulh       a6, a1, s1
                  csrrs      s10, 0x340, t2
                  sra        a7, s0, s3
5053:             c.addi     t0, 4
                  c.srli     a4, 10
                  sra        a1, s7, t4
                  c.addi     s3, 28
5057:             csrrs      a3, 0x340, s0
                  sll        t3, a0, s1
                  remu       s1, s7, s10
                  c.beqz     a2, 5065f
                  csrrci     t0, 0x340, 1
                  c.add      a4, s7
                  c.or       a1, a0
                  c.beqz     s1, 5065f
5065:             slli       a3, s3, 20
                  addi       t1, t2, 894
                  mulhsu     a2, s0, gp
                  or         s10, s7, s5
                  c.slli     a5, 3
                  csrrw      s3, 0x340, t6
                  srli       t4, a4, 22
                  c.or       a0, a2
                  c.andi     s0, -1
                  bge        tp, sp, 5092f
                  sub        gp, a7, tp
                  bltu       s11, s7, 5078f
                  slt        t1, s5, ra
5078:             divu       a5, a3, t3
                  sra        s6, s1, sp
                  c.sub      s1, a3
                  csrrsi     gp, 0x340, 13
                  sltiu      t3, t1, 415
                  c.srli     a5, 1
                  fence
                  mulhsu     gp, a2, s9
                  beq        ra, s4, 5095f
                  c.bnez     a1, 5105f
                  lui        t6, 830380
                  c.srai     s1, 24
                  c.bnez     s1, 5095f
                  c.addi     s1, 25
5092:             ori        s6, t2, -982
                  c.or       s1, a3
                  slti       s2, s3, -721
5095:             sra        zero, a5, s3
                  c.mv       gp, t1
                  c.slli     a4, 3
                  csrrs      s1, 0x340, s2
                  c.srli     a0, 14
                  c.and      a5, a3
                  c.mv       s10, s11
                  auipc      a5, 415690
                  bne        a5, t2, 5105f
                  c.and      a0, a5
5105:             c.xor      s0, a0
                  beq        zero, s0, 5107f
5107:             csrrs      s6, 0x340, ra
                  c.add      s6, s5
                  mul        a0, tp, zero
                  slli       a4, a6, 3
                  c.slli     s8, 15
                  xori       s11, a3, 773
                  c.lui      s3, 30
                  c.nop
                  addi       t2, t5, 802
                  blt        a5, t4, 5117f
5117:             srai       t5, s7, 6
                  sra        s1, t3, s2
                  c.add      t3, s1
                  blt        ra, t3, 5124f
                  csrrc      tp, 0x340, t5
                  auipc      ra, 47034
                  xori       a4, t0, 49
5124:             bltu       t5, s5, 5137f
                  remu       a6, a2, ra
                  auipc      s2, 660395
                  or         a5, t6, s0
                  csrrc      s9, 0x340, a5
                  c.beqz     a4, 5144f
                  rem        t0, s2, s11
                  nop
                  bltu       a0, tp, 5135f
                  c.srli     a1, 22
                  sub        a4, sp, t6
5135:             andi       t2, a6, 99
                  c.nop
5137:             add        zero, t4, a0
                  and        s6, zero, a6
                  csrrwi     s8, 0x340, 6
                  c.mv       s6, s0
                  sub        a4, s1, a3
                  srai       s2, t4, 27
                  mul        s11, a2, t5
5144:             csrrw      a2, 0x340, t6
                  rem        s5, tp, s2
                  mulhsu     a0, a3, s5
                  mulh       s0, a3, sp
                  c.or       a3, a1
                  csrrc      tp, 0x340, zero
                  bne        a2, a7, 5154f
                  slli       s11, s0, 25
                  sltu       s9, a2, a4
                  and        s1, s11, s0
5154:             slt        t4, t6, t1
                  mul        s0, a2, t2
                  add        a1, s11, tp
                  sltiu      tp, sp, 289
                  srai       a0, t6, 15
                  lui        zero, 685111
                  csrrs      a7, 0x340, s2
                  slti       a2, s6, -824
                  remu       s3, a5, s4
                  divu       a4, s4, a3
                  mulh       t6, a7, t2
                  c.lui      s8, 16
                  remu       t6, t2, s4
                  fence.i
                  div        gp, s11, t1
                  div        s6, ra, t1
                  and        s6, a4, s2
                  c.sub      a5, a1
                  la         s5, sub_4
                  c.mv       tp, s1
                  c.and      s1, a5
                  addi       s5, s5, 96
                  addi       t1, s5, -1007
                  csrrci     s1, 0x340, 27
                  c.xor      a5, a5
j__main_sub_4_3:  jalr       t4, s5, -96
                  ori        t2, a6, 128
                  beq        t3, a1, 5189f
                  sltiu      s8, sp, 931
                  and        t6, a6, t0
                  srai       t6, t5, 25
                  remu       a3, sp, a5
                  bne        s2, t0, 5178f
                  remu       s2, s3, a7
5178:             csrrw      tp, 0x340, t0
                  c.li       a0, -1
                  divu       t0, a3, sp
                  c.li       t6, 3
                  srai       a1, s2, 4
                  slli       s9, s2, 13
                  xori       tp, s2, -57
                  slli       ra, t2, 10
                  c.xor      a5, a0
                  fence.i
                  bltu       a2, a6, 5205f
5189:             csrrs      s1, 0x340, a4
                  srl        a2, s2, t1
                  mul        t2, t2, a0
                  xor        t2, a3, s7
                  c.add      s0, t6
                  addi       t4, a0, -967
                  div        s9, a1, ra
                  c.li       s2, 1
                  c.andi     a3, 9
                  c.addi     t5, -1
                  ori        s6, s0, -728
                  xori       t1, t3, -760
                  mulhu      a7, s2, s1
                  fence
                  c.sub      a3, a1
                  c.srli     a3, 19
5205:             lui        ra, 430386
                  andi       s10, a7, 425
                  andi       s9, s2, -413
                  sltu       a6, sp, s1
                  c.mv       t4, s8
                  sub        t0, tp, zero
                  c.beqz     a1, 5230f
                  rem        s10, a2, t5
                  csrrci     s5, 0x340, 22
                  slti       s10, sp, 593
                  xori       s11, t5, 346
                  slt        s3, s0, s7
                  sra        s11, s11, a0
                  andi       a5, s9, 249
                  ori        s2, s8, -996
                  bne        s7, t5, 5222f
                  csrrwi     s8, 0x340, 26
5222:             c.addi     t2, -1
                  sltu       s8, a4, s4
                  slt        a5, t3, a0
                  xor        a3, t5, t6
                  c.xor      a2, s0
                  bge        ra, t0, 5228f
5228:             bltu       s4, a7, 5242f
                  fence
5230:             and        t0, t6, a3
                  srl        s11, s0, s9
                  lui        zero, 725191
                  lui        t0, 858479
                  c.bnez     a5, 5243f
                  sltu       t3, tp, a5
                  or         t3, s4, zero
                  ori        a2, zero, 757
                  addi       a7, s6, 833
                  c.sub      a5, a0
                  srai       a4, s0, 13
                  c.srli     a3, 17
5242:             auipc      a2, 836251
5243:             csrrw      s5, 0x340, s2
                  bltu       t1, s4, 5264f
                  ori        a0, a6, 747
                  mulhsu     s8, t6, t1
                  mulhsu     a5, s7, s8
                  c.srai     a4, 5
                  mulh       t6, s7, s9
                  slt        gp, a6, t2
                  srl        t5, t5, t2
                  rem        s5, s2, s10
                  srai       a4, a7, 3
                  bgeu       t0, a5, 5261f
                  c.add      a5, a1
                  c.srli     a0, 31
                  c.or       a5, a0
                  or         t1, t0, gp
                  slti       a3, s8, -684
                  c.lui      ra, 21
5261:             c.xor      a0, s1
                  srai       a6, s10, 24
                  slt        s1, s10, a4
5264:             csrrs      s3, 0x340, s7
                  xori       s11, a7, -138
                  c.xor      a3, a1
                  add        s6, s10, s5
                  csrrs      zero, 0x340, a7
                  or         a3, s2, gp
                  andi       a1, s5, 523
                  sub        t2, a0, s1
                  c.mv       a7, a6
                  bgeu       t5, a1, 5291f
                  bge        s11, gp, 5288f
                  srl        t3, a1, a3
                  c.add      s8, s1
                  csrrw      s2, 0x340, s0
                  srli       a1, a4, 18
                  bne        a7, t3, 5293f
                  blt        t1, a2, 5282f
                  c.srai     a2, 2
5282:             mul        a3, t6, t0
                  lui        s3, 64359
                  bltu       s8, a5, 5299f
                  sub        tp, s10, ra
                  c.srai     a4, 18
                  rem        zero, s7, a6
5288:             sub        a3, a3, s3
                  bgeu       a7, s1, 5309f
                  mulhu      s1, gp, a6
5291:             add        gp, a2, t4
                  slti       t5, zero, 150
5293:             sra        zero, a4, ra
                  csrrw      s5, 0x340, t3
                  xori       a2, s1, -782
                  and        a7, t6, a1
                  csrrc      s3, 0x340, s6
                  sltu       t6, a2, tp
5299:             c.lui      tp, 6
                  c.srli     s1, 31
                  srai       s6, a0, 24
                  c.xor      s1, s1
                  add        s0, t6, s1
                  bltu       ra, s3, 5310f
                  c.add      a2, s0
                  bge        a7, sp, 5312f
                  andi       ra, a4, 745
                  c.xor      a2, s1
5309:             c.andi     a3, 14
5310:             c.sub      s1, s0
                  c.sub      a1, s1
5312:             rem        gp, t6, s1
                  fence
                  sub        gp, gp, a4
                  c.lui      a7, 17
                  sll        a2, a4, a5
                  csrrci     t5, 0x340, 4
                  andi       s2, a2, -559
                  mulhsu     s5, gp, sp
                  csrrci     s0, 0x340, 28
                  mulhu      a2, t1, a0
                  c.lui      a4, 18
                  sltiu      zero, gp, 1013
                  c.li       s6, 13
                  mulhsu     t0, ra, a5
                  divu       a3, a1, t6
                  c.or       s1, a1
                  rem        a4, s6, s4
                  bge        a0, s0, 5340f
                  c.mv       t4, s6
                  c.bnez     a1, 5333f
                  la         a1, region_2+2998 #start load_store_instr_stream_0
                  la         a3, region_2+2357 #start load_store_instr_stream_1
                  sb         gp, 236(a3)
                  lhu        t1, 1160(a1)
                  sb         sp, 6(a3)
                  sw         s0, -69(a3)
                  lh         t4, -1720(a1)
                  sb         gp, -1388(a1)
                  lb         t6, -84(a3)
                  lh         t2, -1202(a1)
                  sh         a7, 99(a3) #end load_store_instr_stream_1
                  sb         gp, -930(a1) #end load_store_instr_stream_0
                  blt        a7, a0, 5334f
5333:             sltiu      a7, t1, -461
5334:             csrrsi     s9, 0x340, 8
                  sltiu      a6, s2, -786
                  csrrc      t2, 0x340, t4
                  csrrci     t4, 0x340, 2
                  srl        ra, a5, ra
                  lui        s3, 245386
5340:             csrrci     s8, 0x340, 28
                  c.lui      s0, 17
                  lui        t6, 191658
                  c.sub      s1, a1
                  c.add      a3, ra
                  mulhu      t5, s3, a3
                  c.and      a0, a3
                  bltu       s0, s6, 5364f
                  nop
                  csrrs      a2, 0x340, s3
                  csrrci     s3, 0x340, 25
                  lui        s6, 294220
                  c.and      a5, a0
                  c.lui      t3, 25
                  rem        a3, s9, t3
                  c.bnez     a2, 5369f
                  csrrw      s5, 0x340, s9
                  c.srli     a1, 27
                  c.srli     a2, 16
                  slt        a7, sp, t4
                  bge        s7, a1, 5375f
                  c.xor      a3, s1
                  mulhu      t1, s1, ra
                  bltu       a0, a5, 5381f
5364:             sltu       zero, a2, t2
                  xor        a4, s6, a4
                  c.andi     a1, -1
                  bgeu       s8, s8, 5369f
                  c.sub      a2, s0
5369:             rem        s5, s9, t5
                  srl        t3, zero, a0
                  c.addi     a4, -1
                  c.sub      a4, a0
                  lui        a2, 212050
                  mulhsu     t5, s1, a5
5375:             remu       s1, t2, s9
                  and        a4, a2, sp
                  remu       a2, sp, s8
                  mulhsu     t4, s11, a7
                  addi       t5, t2, -685
                  add        t2, t2, tp
5381:             ori        ra, t4, -104
                  c.add      s0, s3
                  c.beqz     s0, 5392f
                  xor        a0, a4, s1
                  mul        s8, s11, a7
                  sub        a1, s2, s11
                  csrrci     t3, 0x340, 21
                  c.srli     a3, 23
                  c.slli     a3, 30
                  c.beqz     a0, 5393f
                  add        s11, a0, s11
5392:             mulh       s8, a6, t5
5393:             bge        sp, s8, 5400f
                  c.slli     s11, 3
                  csrrwi     ra, 0x340, 26
                  c.mv       ra, s1
                  mulh       t6, zero, a1
                  bltu       zero, a3, 5418f
                  c.srli     a2, 29
5400:             csrrsi     a5, 0x340, 13
                  lui        t0, 1006659
                  mulh       a5, s1, a6
                  rem        a6, t5, a6
                  sra        zero, gp, s11
                  rem        zero, a2, s6
                  bge        s5, a4, 5417f
                  fence.i
                  bgeu       s9, s9, 5423f
                  slti       t2, a1, 35
                  mulhu      s3, a2, tp
                  srli       t4, s0, 31
                  xori       a0, s9, 769
                  beq        s9, a7, 5426f
                  blt        t2, a7, 5420f
                  sltu       zero, s6, a3
                  or         zero, a4, ra
5417:             bge        s5, a4, 5437f
5418:             bgeu       s8, a2, 5419f
5419:             c.add      s8, s10
5420:             csrrwi     a0, 0x340, 11
                  fence
                  srai       a4, ra, 4
5423:             csrrc      t0, 0x340, s4
                  sra        a0, s3, s7
                  slli       t2, ra, 2
5426:             c.addi     t0, -1
                  c.srai     s0, 15
                  beq        s11, zero, 5442f
                  bgeu       t6, tp, 5443f
                  mulhsu     a5, a4, t1
                  slli       s9, s1, 16
                  slti       s10, t5, -314
                  beq        s7, tp, 5434f
5434:             sra        s8, t3, s9
                  la         t1, region_3+166 #start load_store_instr_stream_1
                  lb         s6, -37(t1)
                  la         a6, region_3+177 #start load_store_instr_stream_0
                  lb         zero, 160(a6)
                  sb         t6, 41(t1)
                  lbu        tp, 39(t1)
                  la         s11, region_3+270 #start load_store_instr_stream_2
                  lb         s2, 7(s11)
                  lb         s6, -63(t1)
                  lbu        s8, 252(a6)
                  sb         t1, -116(a6)
                  lbu        a1, -17(t1)
                  sb         zero, 291(a6)
                  lhu        s0, 4(s11)
                  lbu        gp, 192(a6)
                  lb         t2, -94(a6)
                  sb         s0, 1(s11)
                  sb         a7, -8(t1)
                  lbu        zero, 9(t1)
                  lbu        t5, -146(a6)
                  lb         ra, -165(a6)
                  lb         a7, -11(s11)
                  lbu        zero, 39(t1)
                  lbu        a1, -9(s11)
                  lb         a2, 23(t1)
                  lw         s0, 151(a6)
                  lbu        a1, 1(s11) #end load_store_instr_stream_2
                  lbu        gp, 17(t1) #end load_store_instr_stream_1
                  lb         a5, -153(a6) #end load_store_instr_stream_0
                  srli       s11, a4, 29
                  mulhsu     s11, t6, t4
5437:             c.li       s5, -1
                  sltiu      s2, t2, 656
                  auipc      t1, 170768
                  csrrwi     ra, 0x340, 28
                  mul        s1, t0, s6
5442:             lui        zero, 72993
5443:             c.andi     a4, 15
                  beq        tp, t3, 5462f
                  mulhu      t3, sp, a0
                  auipc      t6, 1025719
                  lui        s0, 11367
                  c.nop
                  lui        s3, 647654
                  div        t3, gp, a1
                  nop
                  c.and      a1, a5
                  and        t0, a3, s11
                  csrrci     t1, 0x340, 15
                  lui        s10, 381825
                  c.or       a0, a0
                  ori        t2, sp, 593
                  bgeu       s1, sp, 5462f
                  fence.i
                  mulhu      zero, s10, sp
                  c.lui      s1, 27
5462:             andi       t6, a7, -41
                  auipc      s10, 3647
                  c.mv       t2, s4
                  c.add      s10, t4
                  bgeu       s8, s7, 5484f
                  ori        s5, a7, 108
                  slt        a4, ra, a0
                  c.mv       a0, a1
                  mulhu      t1, s5, ra
                  c.and      a2, a4
                  bgeu       s9, ra, 5478f
                  c.srli     a0, 29
                  c.add      s8, s6
                  csrrc      s1, 0x340, tp
                  c.andi     s1, -1
                  ori        a3, s6, -655
5478:             xori       t1, s11, -437
                  rem        a5, ra, s5
                  c.mv       s8, a1
                  fence
                  mulh       s2, s7, s3
                  c.andi     a3, -1
5484:             c.li       a7, 30
                  c.li       a3, -1
                  sra        zero, s4, a4
                  bgeu       s10, s7, 5492f
                  srl        ra, s6, s8
                  mulhsu     t5, t3, s10
                  c.mv       t0, s2
                  div        t1, a4, s5
5492:             c.slli     a5, 18
                  c.add      a2, a1
                  c.add      ra, a2
                  sll        a5, ra, a1
                  csrrs      t0, 0x340, s0
                  c.bnez     a3, 5506f
                  slti       a0, t1, -427
                  bltu       zero, t0, 5503f
                  andi       a7, s0, -851
                  or         t6, t3, s5
                  c.addi     t6, 25
5503:             blt        a4, a0, 5504f
5504:             csrrs      s3, 0x340, t5
                  c.and      a1, a0
5506:             sltu       t5, s2, s11
                  sll        t4, zero, a5
                  bne        t6, a2, 5510f
                  fence
5510:             mul        zero, s9, s7
                  c.srai     a2, 23
                  srai       s6, t5, 14
                  c.nop
                  sll        gp, s6, gp
                  xori       s8, a2, 81
                  rem        s10, s3, s11
                  nop
                  c.xor      s0, a1
                  remu       s6, t6, t4
                  c.or       s0, s1
                  addi       s11, s2, -760
                  fence.i
                  andi       a4, t4, -770
                  auipc      t1, 713770
                  xor        s2, a5, s7
                  srli       t3, s9, 28
                  mul        t2, s3, t4
                  mulhsu     t1, s11, t4
                  and        gp, s10, s7
                  or         t4, s8, ra
                  c.or       a1, s1
                  divu       s9, tp, t6
                  c.nop
                  sltiu      s8, s9, -623
                  bgeu       a6, gp, 5554f
                  slt        t6, ra, a7
                  bgeu       t0, t4, 5556f
                  c.bnez     a4, 5547f
                  mulh       t1, s2, t5
                  andi       s6, a6, -547
                  c.li       s9, 3
                  blt        s2, a6, 5557f
                  csrrci     s2, 0x340, 21
                  rem        s9, s5, sp
                  beq        a1, ra, 5546f
5546:             fence
5547:             bgeu       s7, s7, 5567f
                  c.addi     s1, -1
                  addi       s11, t2, 993
                  add        t0, s0, s0
                  divu       t1, s10, s0
                  blt        tp, tp, 5561f
                  and        t2, gp, ra
5554:             c.li       s3, -1
                  ori        a1, s2, -34
5556:             c.mv       a1, a1
5557:             div        s0, s7, s2
                  div        t5, s5, gp
                  srli       t1, ra, 11
                  c.and      a4, a0
5561:             c.srai     a3, 16
                  bgeu       t6, sp, 5580f
                  mul        s10, s7, tp
                  andi       a7, a0, -542
                  blt        s1, s11, 5566f
5566:             bne        s3, s3, 5568f
5567:             c.addi     t2, -1
5568:             or         s8, t6, a4
                  c.slli     s8, 21
                  andi       a0, s7, -986
                  bge        sp, a7, 5576f
                  fence.i
                  c.add      s0, s3
                  mulh       gp, t5, s6
                  mul        s8, sp, s6
5576:             srli       s5, s6, 29
                  csrrci     t1, 0x340, 8
                  blt        s8, s6, 5582f
                  blt        s10, a3, 5582f
5580:             c.lui      s8, 20
                  bne        s4, a3, 5583f
5582:             c.lui      a1, 26
5583:             addi       s3, t2, 953
                  xori       t0, sp, -63
                  c.nop
                  remu       s10, ra, zero
                  c.beqz     s0, 5601f
                  c.nop
                  c.xor      s0, a3
                  csrrwi     t1, 0x340, 28
                  bltu       t0, t5, 5604f
                  add        s2, s2, t3
                  mul        a4, a3, a5
                  sra        s3, sp, gp
                  xori       t5, s7, 701
                  srli       s6, a3, 27
                  xor        a0, s9, s0
                  rem        s8, t3, sp
                  fence
                  c.mv       t0, gp
5601:             or         t4, a5, a1
                  csrrsi     tp, 0x340, 19
                  c.mv       s11, s3
5604:             srai       ra, t5, 1
                  c.addi     a7, -1
                  srl        s3, tp, a4
                  c.or       s0, a1
                  bltu       t6, s0, 5610f
                  lui        s10, 476680
5610:             c.lui      t0, 15
                  csrrci     t3, 0x340, 1
                  bne        s9, s0, 5618f
                  c.lui      s2, 9
                  srl        t3, s6, t0
                  bgeu       t1, a7, 5629f
                  srli       t0, ra, 25
                  auipc      s5, 1041238
5618:             csrrs      t6, 0x340, s7
                  csrrsi     a2, 0x340, 24
                  slti       s6, a6, 148
                  c.mv       t4, s2
                  c.sub      a4, a1
                  sub        tp, ra, ra
                  c.and      a2, a1
                  srai       t4, a4, 23
                  mulhu      s9, tp, t4
                  c.sub      a1, a3
                  srli       s11, t5, 26
5629:             nop
                  c.mv       t1, s1
                  c.andi     a0, 14
                  bge        s9, s7, 5638f
                  .4byte 0x24d992f3 # kIllegalSystemInstr
                  c.sub      a0, a3
                  c.nop
                  c.add      a2, t0
                  sub        a4, a2, tp
                  c.andi     a3, 16
5638:             divu       s8, gp, tp
                  srl        tp, a2, s0
                  c.beqz     s0, 5655f
                  and        a0, a1, t5
                  mul        s10, s0, gp
                  lui        t2, 212998
                  sltu       t4, s0, a6
                  rem        t5, a6, s10
                  add        tp, t1, s11
                  div        s9, s6, t6
                  c.andi     s1, -1
                  lui        s9, 459312
                  beq        a2, s10, 5667f
                  c.mv       s6, gp
                  c.bnez     a2, 5672f
                  c.beqz     s1, 5660f
                  c.srai     a0, 5
5655:             c.li       t4, 18
                  c.srli     a2, 16
                  nop
                  bltu       t3, t6, 5669f
                  c.and      s1, s0
5660:             add        gp, t2, s0
                  c.slli     a3, 31
                  fence.i
                  csrrwi     zero, 0x340, 6
                  csrrs      s3, 0x340, s0
                  c.beqz     a2, 5666f
5666:             fence
5667:             add        t1, t2, t5
                  csrrwi     ra, 0x340, 6
5669:             bge        tp, s10, 5673f
                  c.slli     ra, 25
                  csrrc      s1, 0x340, a5
5672:             xor        a2, s2, t1
5673:             csrrs      t4, 0x340, a2
                  csrrw      t2, 0x340, s1
                  slt        ra, a3, zero
                  srli       s3, t0, 1
                  sra        a4, t0, s1
                  xori       s6, a0, -950
                  divu       a1, t6, a0
                  c.or       s0, s1
                  mulh       s10, s11, s11
                  xor        s11, s1, t6
                  sra        s2, t0, s6
                  and        t1, t5, s10
                  auipc      t6, 174321
                  c.slli     tp, 24
                  srl        a0, a0, t4
                  slti       ra, t2, 316
                  srl        a4, a0, a4
                  xor        s1, a2, a1
                  slti       a4, s9, -253
                  c.srai     a1, 1
                  andi       t5, s7, -39
                  c.lui      tp, 31
                  mul        t0, gp, s10
                  bne        s6, s4, 5714f
                  andi       s5, t5, 888
                  fence
                  c.srai     a1, 14
                  c.sub      a2, a5
                  srli       a4, s4, 16
                  div        s6, a6, s10
                  slli       s2, s11, 1
                  csrrci     zero, 0x340, 20
                  mul        s0, s3, t2
                  c.slli     gp, 9
                  srai       t1, t0, 18
                  csrrsi     s10, 0x340, 13
                  c.sub      a4, a2
                  sltiu      s10, a7, -628
                  c.srli     a5, 14
                  c.nop
                  csrrc      t0, 0x340, s6
5714:             c.mv       gp, s7
                  csrrwi     s5, 0x340, 17
                  fence
                  bge        t1, tp, 5735f
                  c.sub      a1, a2
                  c.bnez     a1, 5733f
                  csrrsi     t2, 0x340, 11
                  bgeu       ra, t6, 5723f
                  xori       a4, s2, 154
5723:             andi       s10, t5, 2
                  csrrwi     s2, 0x340, 11
                  srl        a0, s11, s3
                  c.xor      s0, a1
                  remu       t6, t6, s3
                  c.xor      s0, a1
                  csrrwi     s10, 0x340, 18
                  div        t5, t5, a6
                  xor        s1, s9, a6
                  mul        s10, t3, a3
5733:             c.srai     a5, 8
                  mulhsu     t3, a0, gp
5735:             csrrsi     a5, 0x340, 10
                  c.li       t0, -1
                  or         s3, t4, s5
                  c.srai     s0, 7
                  srl        t0, s8, s6
                  csrrsi     s6, 0x340, 19
                  c.add      tp, t2
                  csrrs      tp, 0x340, a2
                  c.mv       s8, t5
                  c.andi     s0, 19
                  ori        tp, s11, -186
                  c.bnez     a2, 5752f
main_43:          jal        t4, 0f
0:                c.jal      9f
1:                jal        ra, 3f
2:                c.j        11f
3:                jal        ra, 7f
4:                jal        gp, 1b
5:                jal        ra, 4b
6:                jal        t1, 2b
7:                jal        ra, 6b
8:                jal        t1, 13f
                  .4byte 0xb630dfd7 # kIllegalOpcode
9:                jal        t0, 10f
10:               c.jal      12f
11:               c.j        8b
12:               jal        t1, 5b
13:               mulhsu     s2, gp, t4
                  beq        t5, a2, 5748f
5748:             c.and      a3, a5
                  bne        t6, gp, 5752f
                  csrrs      t3, 0x340, t5
                  fence
5752:             sra        s10, a6, a6
test_done:        
                  li gp, 1
                  ecall
sub_3:            c.addi     a2, -1
                  addi       sp, sp, -28
                  sw         t4, 4(sp)
                  c.andi     s0, -1
                  sra        s1, a5, s6
                  c.andi     a1, 18
                  fence
                  srai       s5, sp, 25
                  csrrci     s5, 0x340, 25
                  mulhsu     a0, s2, s2
                  srl        t2, s8, a6
                  sltiu      gp, a4, -598
j_sub_3_sub_5_6:  jal        t4, sub_5
                  divu       s9, t4, a4
                  c.beqz     a4, 17f
                  srl        t6, a3, zero
                  csrrci     a5, 0x340, 24
                  c.and      a0, s0
                  c.add      a4, tp
                  c.lui      s2, 22
                  c.beqz     s1, 27f
                  fence.i
                  beq        a6, a4, 27f
                  divu       s8, a7, a3
                  c.nop
                  c.nop
                  srli       a5, t1, 19
                  mulh       zero, s5, t2
                  c.andi     a1, 14
                  c.xor      a3, a2
17:               add        a6, a1, t2
                  c.xor      s1, a5
                  xor        t2, gp, s1
                  c.beqz     a4, 31f
                  lui        s6, 200884
                  c.andi     a4, -1
                  div        a1, s9, a3
                  sub        a3, s2, a0
                  auipc      ra, 411661
                  c.andi     a3, 12
27:               srai       t1, t5, 12
                  blt        a4, a5, 36f
                  csrrwi     a4, 0x340, 26
                  mulhu      t5, t3, a5
31:               c.mv       tp, a4
                  srli       s9, t1, 19
                  xori       a7, a7, -166
                  sub        t0, a3, t6
                  andi       a2, s6, 144
36:               add        t6, a4, s0
                  andi       a4, a4, -580
                  lw         t4, 4(sp)
                  nop
                  addi       sp, sp, 28
                  csrrw      t2, 0x340, s8
55:               c.jr x29
sub_5:            c.li       a3, -1
                  bne        s0, sp, sub_5_stack_p
                  lui        ra, 985476
sub_5_stack_p:    addi       sp, sp, -20
                  c.lui      t5, 13
                  sw         t4, 4(sp)
                  c.addi     s6, -1
                  srl        a4, sp, s2
                  mulhsu     t0, s5, a3
                  addi       t1, zero, -7 #init loop 1 counter
                  c.or       a4, a3
                  srli       t2, s8, 11
                  c.slli     a2, 16
                  lui        a6, 779365
                  addi       a7, zero, 3 #init loop 1 limit
                  andi       t4, sp, 489
sub_5_46_1_t:     mulhu      s3, a6, a5
                  fence.i
                  c.srai     a2, 27
                  addi       t1, t1, 10 #update loop 1 counter
                  sltiu      a3, zero, 639
                  addi       ra, zero, -9 #init loop 0 counter
                  mulhu      s9, s11, sp
                  lui        a2, 88174
                  mulhu      a4, a3, s4
                  addi       a5, zero, 15 #init loop 0 limit
sub_5_46_0_t:     c.addi     t2, 14
                  fence.i
                  addi       ra, ra, 8 #update loop 0 counter
                  remu       tp, s0, a6
                  bltu       ra, a5, sub_5_46_0_t #branch for loop 0
                  srl        t5, sp, s11
                  beq        t1, a7, sub_5_46_1_t #branch for loop 1
                  mulh       a6, s1, s7
                  la         t5, region_3+352 #start riscv_hazard_instr_stream_9
                  lbu        t6, -62(t5)
                  c.slli     a3, 17
                  rem        a3, a1, a3
                  sltiu      t4, t6, 842
                  c.li       a0, 13
                  sb         s6, -139(t5)
                  lhu        a3, -214(t5)
                  sll        a1, a1, a0
                  lbu        a3, -27(t5)
                  lbu        a3, -95(t5)
                  divu       a1, s6, t4
                  lb         s6, -138(t5)
                  add        t4, a3, t4
                  sb         s6, -27(t5)
                  lb         s6, -192(t5)
                  fence
                  lb         t6, -140(t5)
                  lbu        a0, -107(t5)
                  c.sub      a1, a3
                  slli       t6, a1, 22
                  c.and      a3, a0
                  srli       t6, t6, 9
                  xor        t4, a0, t6
                  c.lui      a1, 31
                  sb         t4, -110(t5)
                  lb         s6, 9(t5) #end riscv_hazard_instr_stream_9
sub_5_18:         jal        t4, 21f
0:                c.j        19f
1:                jal        t6, 16f
2:                c.jal      27f
3:                jal        ra, 10f
4:                c.jal      12f
5:                c.j        23f
6:                c.j        1b
7:                c.j        6b
8:                c.jal      26f
9:                jal        ra, 18f
10:               c.j        17f
11:               jal        ra, 25f
12:               jal        s10, 22f
13:               c.jal      3b
14:               c.j        9b
15:               c.jal      7b
16:               c.jal      13b
17:               c.j        29f
18:               c.jal      15b
19:               jal        t0, 2b
20:               c.j        8b
21:               c.jal      14b
22:               c.jal      5b
23:               jal        ra, 24f
24:               jal        ra, 30f
25:               c.j        4b
26:               c.j        11b
27:               c.jal      20b
28:               c.j        0b
29:               c.jal      28b
30:               auipc      a5, 342157
                  la         a3, region_4+2123 #start riscv_hazard_instr_stream_3
                  lb         s3, -6(a3)
                  sb         s3, -46(a3)
                  lbu        s3, -62(a3)
                  srli       s10, s1, 31
                  slti       s1, s3, -467
                  fence
                  c.lui      s0, 24
                  c.mv       s0, s1
                  nop
                  c.andi     s0, -1
                  sh         s2, -15(a3)
                  lbu        s2, 7(a3)
                  lb         s10, -14(a3)
                  sb         s1, 39(a3)
                  lb         s2, -32(a3)
                  mulhu      s1, tp, tp
                  lb         s3, 20(a3)
                  addi       s1, s1, 731
                  lhu        tp, 51(a3)
                  c.li       s0, 15
                  fence
                  slli       tp, s3, 1
                  csrrci     tp, 0x340, 30
                  c.and      s1, s1
                  c.mv       tp, s10
                  lbu        s10, -18(a3)
                  lbu        s10, -21(a3)
                  c.and      s1, s0
                  csrrs      s2, 0x340, tp
                  sh         tp, 47(a3)
                  c.srli     s0, 22
                  sb         tp, -54(a3)
                  nop
                  sb         s3, 34(a3)
                  sltu       s10, s3, s2
                  lb         s3, -1(a3)
                  sh         s10, 53(a3)
                  remu       s1, s0, s0
                  lbu        s10, 53(a3)
                  sh         s10, -29(a3)
                  lb         s3, 60(a3)
                  csrrw      s2, 0x340, s10
                  csrrw      tp, 0x340, tp
                  sb         s0, -49(a3)
                  mulhsu     s0, s0, s1
                  addi       s1, s10, 520
                  divu       s0, s1, s3
                  lbu        s2, 58(a3)
                  lb         s10, -35(a3)
                  lhu        s3, -17(a3)
                  lbu        s0, -37(a3)
                  sb         s0, 36(a3)
                  srl        s10, s10, tp
                  andi       s3, s3, 899
                  sb         s0, -48(a3)
                  sb         s3, 20(a3)
                  slti       s3, s2, -174
                  lh         s10, 11(a3) #end riscv_hazard_instr_stream_3
                  la         a7, region_0+112 #start riscv_load_store_rand_instr_stream_1
                  c.srli     a2, 26
                  c.lui      gp, 16
                  sb         t1, 13(a7)
                  sb         tp, 1534(a7)
                  lb         zero, 367(a7)
                  mulh       t3, a5, t1
                  sltu       s9, a7, s3
                  xori       gp, tp, -773
                  rem        a1, a4, a4
                  c.sub      a1, a0
                  lb         a0, 1969(a7)
                  and        gp, s3, ra
                  srl        ra, s1, a2
                  rem        a3, t0, s0
                  fence.i
                  lb         a4, 1984(a7)
                  lbu        s9, 967(a7)
                  auipc      s6, 938354
                  div        s10, a3, t0
                  mul        zero, t3, zero
                  sb         s1, 1014(a7)
                  divu       tp, s0, t5
                  srl        a2, s4, s11
                  slti       s6, s0, -102
                  sra        tp, s5, t1
                  sra        tp, a5, s1
                  csrrc      s3, 0x340, s6
                  srai       t1, sp, 23
                  sb         t1, 107(a7)
                  sltiu      s8, t6, 54
                  sb         a0, 988(a7)
                  mulhu      a2, zero, a4
                  sll        t2, s4, s4
                  csrrwi     s8, 0x340, 12
                  sh         a7, 322(a7)
                  add        s9, a3, s1
                  lhu        t6, 240(a7)
                  sra        t5, a0, s7
                  ori        a5, t4, 96
                  xor        ra, tp, sp
                  lb         t1, 912(a7) #end riscv_load_store_rand_instr_stream_1
                  la         a7, region_2+1440 #start riscv_hazard_instr_stream_0
                  lbu        a6, 252(a7)
                  lhu        t1, 168(a7)
                  c.srli     s1, 8
                  sw         s1, -92(a7)
                  c.li       s5, -1
                  csrrw      a6, 0x340, t0
                  sb         s1, 155(a7)
                  c.srli     s0, 9
                  lbu        s1, -89(a7)
                  sb         s5, -69(a7)
                  lb         s5, 7(a7)
                  slt        a6, a6, t0
                  add        t1, t0, s1
                  lbu        s1, 152(a7)
                  c.nop
                  lb         t0, -61(a7)
                  fence.i
                  add        a6, s1, t0
                  c.mv       t0, s5
                  xori       s5, s1, 523
                  csrrci     s1, 0x340, 2
                  csrrsi     s0, 0x340, 28
                  sb         s0, 65(a7)
                  lhu        s0, -218(a7)
                  csrrsi     s1, 0x340, 31
                  lbu        s0, -1(a7)
                  lb         s1, -229(a7)
                  lh         s5, 216(a7)
                  lbu        t1, -194(a7)
                  sh         t1, 128(a7)
                  sll        a6, t0, t1
                  lb         a6, -100(a7)
                  lb         t0, 21(a7)
                  xor        s5, t0, s0
                  lw         s0, -176(a7)
                  lhu        s1, 204(a7)
                  fence.i
                  c.mv       a6, s0
                  lbu        t1, -103(a7)
                  sh         s1, 116(a7)
                  sltu       t0, t0, t1
                  lbu        t1, 127(a7) #end riscv_hazard_instr_stream_0
                  la         s10, region_3+317 #start load_store_instr_stream_0
                  la         s3, region_3+248 #start load_store_instr_stream_1
                  la         t5, region_3+220 #start load_store_instr_stream_3
                  sb         t2, 93(s10)
                  lbu        s0, 9(s3)
                  la         a3, region_3+65 #start load_store_instr_stream_4
                  lh         a2, 2(t5)
                  la         a7, region_3+485 #start load_store_instr_stream_2
                  lh         s9, -97(a7)
                  lb         t3, 3(t5)
                  lb         gp, 176(s10)
                  lh         gp, 341(a3)
                  sw         s0, -8(s3)
                  lw         s0, 39(a3)
                  lw         t2, -357(a7)
                  sw         t3, 307(a3)
                  lbu        s5, -64(a7)
                  sw         a0, -25(s10)
                  sb         sp, 254(a3)
                  lb         gp, 11(t5)
                  sh         s2, 8(t5)
                  sb         t6, -15(s3)
                  lb         t2, -15(s3)
                  sb         s8, -26(a3)
                  lb         tp, 158(a3)
                  lb         ra, -18(a7)
                  .4byte 0xe9888c1b # kIllegalOpcode
                  sb         s5, -76(a7)
                  lb         s8, -13(s3)
                  sb         s11, -122(s10)
                  sh         s8, -141(s10)
                  lbu        s6, -9(t5)
                  lb         s11, 14(s3)
                  lb         s9, -468(a7)
                  lhu        t2, -3(s10)
                  lb         t0, 15(t5)
                  lb         zero, -137(a7)
                  lb         tp, 5(t5)
                  lbu        a0, 373(a3) #end load_store_instr_stream_4
                  lb         a1, 5(t5)
                  sb         a2, -16(s3)
                  sb         a0, 5(t5)
                  sb         gp, -262(a7)
                  lw         s0, 16(s3)
                  lbu        tp, -13(t5) #end load_store_instr_stream_3
                  lbu        t2, -83(a7) #end load_store_instr_stream_2
                  lbu        s8, -142(s10)
                  lb         s11, 15(s3) #end load_store_instr_stream_1
                  lbu        s5, -228(s10) #end load_store_instr_stream_0
                  la         a7, region_4+1282 #start load_store_instr_stream_0
                  sb         zero, 14(a7)
                  la         tp, region_3+300 #start load_store_instr_stream_1
                  lbu        t3, -67(tp)
                  sb         s3, 14(tp)
                  sb         s7, -11(a7)
                  lb         t0, -19(tp)
                  lb         a5, 2(a7)
                  lbu        s0, 2(a7)
                  lbu        a1, -15(a7)
                  lbu        a0, 4(a7)
                  lb         ra, -60(tp)
                  sw         s10, -6(a7)
                  lb         a6, -147(tp)
                  lh         t4, 2(a7)
                  lb         a0, 94(tp) #end load_store_instr_stream_1
                  lh         s6, 8(a7)
                  lb         s0, -5(a7) #end load_store_instr_stream_0
                  la         t6, region_0+2555 #start riscv_load_store_rand_instr_stream_9
                  lb         t2, 48(t6)
                  sb         s10, -20(t6)
                  .4byte 0x02531b87 # kIllegalOpcode
                  lhu        a2, -61(t6)
                  auipc      t3, 22388
                  sb         sp, 6(t6)
                  or         s0, sp, t0
                  sub        s0, s10, t0
                  lb         a0, 0(t6)
                  lb         s1, 23(t6)
                  .4byte 0x05bd726b # kIllegalOpcode
                  c.slli     s9, 23
                  lhu        s1, 31(t6)
                  srl        s5, a1, zero
                  srl        a5, sp, s11
                  fence
                  lb         t0, -16(t6)
                  sb         a2, 35(t6)
                  c.mv       t3, a6
                  lhu        s5, -41(t6)
                  lb         s5, -9(t6)
                  lbu        s11, -21(t6)
                  c.nop
                  lw         s3, -23(t6)
                  sb         t0, -64(t6)
                  c.lui      s11, 31
                  lw         s10, 45(t6)
                  csrrs      t5, 0x340, a2
                  csrrw      t1, 0x340, a2
                  slt        s3, tp, s10
                  lhu        a0, -51(t6)
                  slti       gp, s2, -327
                  ori        zero, a3, -240
                  sltu       s3, a3, s3
                  c.sub      a1, a3
                  fence.i
                  c.srai     a3, 14
                  nop
                  lhu        s11, -23(t6)
                  csrrci     s8, 0x340, 9
                  ori        a7, t3, -24
                  sb         t1, -42(t6)
                  lb         a2, 56(t6)
                  lh         t1, -13(t6)
                  fence.i
                  sw         ra, 9(t6) #end riscv_load_store_rand_instr_stream_9
                  la         ra, region_0+1221 #start load_store_instr_stream_0
                  la         s10, region_3+32 #start load_store_instr_stream_1
                  la         t2, region_2+6061 #start load_store_instr_stream_2
                  lb         t0, -28(s10)
                  lbu        t1, -2(ra)
                  sh         s0, 8(s10)
                  sb         t4, -11(t2)
                  sb         t4, -14(t2)
                  lb         zero, 11(s10)
                  lbu        a4, 14(t2)
                  sb         s11, 6(t2)
                  lbu        t4, -21(s10)
                  lb         s2, -14(ra)
                  lb         a3, -5(s10)
                  sh         t0, 11(t2)
                  sb         s5, 44(s10) #end load_store_instr_stream_1
                  lh         a7, 15(t2)
                  lhu        s3, 15(t2)
                  lb         a1, -7(ra)
                  lbu        s8, 10(ra)
                  lbu        s5, 10(t2) #end load_store_instr_stream_2
                  lb         t0, 14(ra) #end load_store_instr_stream_0
                  la         t0, region_4+3051 #start riscv_load_store_rand_instr_stream_5
                  slt        a0, t0, a4
                  lb         s3, -10(t0)
                  sb         t5, -7(t0)
                  srai       t5, t4, 6
                  sh         ra, -7(t0)
                  c.li       a1, -1
                  c.add      a2, sp
                  c.srli     s1, 8
                  lbu        tp, -8(t0)
                  c.slli     s0, 6
                  sub        s1, gp, a7
                  sb         t6, 0(t0)
                  sw         a4, -7(t0)
                  sh         tp, -5(t0)
                  lbu        s11, 6(t0)
                  lb         s11, 6(t0)
                  sb         t0, -8(t0)
                  lh         s11, -3(t0)
                  sb         t5, -15(t0)
                  lbu        a7, 7(t0)
                  slt        s2, s7, t4
                  sw         a3, 1(t0)
                  sb         a0, 13(t0)
                  lhu        t3, 3(t0)
                  sub        t3, tp, sp
                  lbu        a2, 16(t0)
                  sw         gp, -15(t0)
                  sb         a5, -1(t0)
                  lbu        s9, 16(t0)
                  lb         s1, -4(t0)
                  sw         s5, 5(t0)
                  sb         s2, 6(t0)
                  csrrc      gp, 0x340, s6
                  xor        t1, tp, a0
                  lb         t4, 0(t0)
                  lb         tp, 16(t0)
                  sb         t0, -13(t0) #end riscv_load_store_rand_instr_stream_5
sub_5_11:         jal        t4, 18f
0:                c.j        5f
1:                c.j        10f
2:                jal        ra, 29f
3:                c.j        1b
4:                c.jal      23f
5:                c.j        7f
6:                c.j        20f
7:                jal        ra, 28f
8:                c.j        3b
9:                c.j        12f
10:               c.j        0b
11:               c.jal      4b
12:               c.jal      13f
13:               c.jal      27f
14:               c.j        17f
15:               c.j        24f
16:               c.jal      14b
17:               c.j        21f
18:               c.jal      19f
19:               jal        ra, 15b
20:               jal        t3, 25f
21:               c.j        11b
22:               c.jal      2b
23:               c.jal      6b
24:               c.j        8b
25:               jal        ra, 22b
26:               c.jal      16b
27:               c.jal      26b
28:               c.jal      9b
29:               csrrc      s0, 0x340, s3
                  la         a7, region_3+192 #start riscv_hazard_instr_stream_2
                  lbu        s1, -70(a7)
                  c.li       s0, 29
                  sb         s1, 181(a7)
                  lb         s6, 77(a7)
                  lhu        s0, 16(a7)
                  c.or       s0, s0
                  lh         s11, 46(a7)
                  sb         t3, 114(a7)
                  c.li       s11, -1
                  lbu        s1, 190(a7)
                  lb         a6, -147(a7)
                  lbu        s6, -129(a7)
                  sb         s6, -121(a7)
                  lb         s1, -105(a7)
                  lb         s11, -185(a7)
                  c.addi     s6, 2
                  sb         t3, -126(a7)
                  lh         a6, 180(a7)
                  mulhu      s1, s1, a6
                  lb         s1, -29(a7)
                  add        t3, s6, s6
                  lb         s1, 96(a7)
                  csrrw      s11, 0x340, s11
                  lhu        s11, -162(a7)
                  csrrsi     s11, 0x340, 7
                  sb         a6, 181(a7)
                  sw         t3, 140(a7)
                  lbu        a6, -15(a7)
                  c.sub      s0, s1
                  srl        s0, s0, s11
                  c.li       s1, 21
                  lb         t3, 208(a7)
                  csrrci     s0, 0x340, 6
                  lb         t3, 110(a7)
                  lh         s1, 216(a7)
                  csrrci     s1, 0x340, 7
                  lb         s0, 177(a7)
                  sb         s11, -42(a7) #end riscv_hazard_instr_stream_2
                  la         s3, region_3+203 #start load_store_instr_stream_2
                  la         s10, region_0+1085 #start load_store_instr_stream_4
                  la         t4, region_1+4192 #start load_store_instr_stream_1
                  lb         a6, -3(t4)
                  la         a1, region_2+3006 #start load_store_instr_stream_0
                  lbu        t2, 301(a1)
                  la         ra, region_4+44 #start load_store_instr_stream_3
                  lbu        a5, -60(s3)
                  sb         s9, -13(t4)
                  lbu        t0, 1234(ra)
                  lb         a7, 247(ra)
                  sb         a3, 95(a1)
                  sb         sp, 925(a1)
                  lh         t5, 748(a1)
                  lh         a5, -12(t4)
                  sb         a5, -34(s10)
                  lbu        a2, 3(t4)
                  lhu        t0, 51(s10)
                  lb         a6, -3(t4)
                  sb         gp, -24(s10)
                  sb         s1, 862(ra)
                  sb         s2, -15(s10)
                  lb         a2, 92(s3)
                  lbu        t6, 173(a1)
                  lb         s6, 158(s3)
                  lbu        a5, 1861(a1)
                  lbu        t0, -1392(a1)
                  sh         t4, 786(ra)
                  lbu        tp, -10(s10)
                  sb         s8, 214(s3)
                  sb         gp, 56(s10)
                  lbu        t6, 22(s10)
                  lb         s5, 408(ra)
                  sb         a2, 24(s10)
                  sb         t4, 1019(ra)
                  sb         tp, -1897(a1)
                  lbu        a5, -118(s3)
                  sb         a1, 258(s3)
                  lhu        a6, 0(t4)
                  lb         a3, -1(t4) #end load_store_instr_stream_1
                  lh         s6, 264(a1)
                  lhu        tp, 201(s3)
                  lb         t0, 16(s10) #end load_store_instr_stream_4
                  lh         a5, 800(ra) #end load_store_instr_stream_3
                  sh         s3, 193(s3) #end load_store_instr_stream_2
                  lh         t3, 532(a1) #end load_store_instr_stream_0
sub_5_17:         jal        t4, 1f
0:                c.j        10f
1:                jal        t1, 6f
2:                c.j        0b
3:                c.jal      2b
4:                jal        tp, 9f
5:                c.j        3b
6:                jal        ra, 4b
7:                jal        t1, 12f
8:                jal        s8, 5b
9:                c.jal      8b
10:               c.jal      11f
11:               c.jal      7b
12:               addi       tp, t3, -646
                  la         s2, region_4+287 #start riscv_hazard_instr_stream_5
                  sb         a2, 12(s2)
                  div        zero, t3, t3
                  fence.i
                  lbu        a2, 0(s2)
                  lb         a5, -13(s2)
                  xor        a5, s11, a5
                  srli       s11, t3, 1
                  remu       zero, a5, a5
                  c.nop
                  lh         t3, -13(s2)
                  c.srli     a2, 28
                  sh         a5, -3(s2)
                  addi       a4, t3, -416
                  sb         s11, 8(s2)
                  remu       a4, t3, a2
                  sb         a5, 8(s2)
                  and        a4, a2, a4
                  xori       s11, a2, 602
                  srli       t3, a5, 28
                  c.andi     a2, -1
                  lb         a2, 2(s2)
                  lhu        t3, -5(s2)
                  sltiu      s11, a4, -617
                  slli       zero, t3, 8
                  mulh       a4, a4, t3
                  sll        t3, a2, a4
                  fence
                  c.lui      a4, 10
                  c.add      a2, a2
                  lw         t3, -3(s2)
                  slt        a2, a2, zero
                  sltu       a4, a4, a5
                  c.and      a2, a5
                  lbu        a5, 15(s2)
                  sb         t3, -3(s2) #end riscv_hazard_instr_stream_5
                  la         a7, region_0+1886 #start riscv_load_store_rand_instr_stream_7
                  sb         gp, -539(a7)
                  csrrsi     s6, 0x340, 10
                  lb         s6, 1781(a7)
                  c.nop
                  c.slli     s11, 6
                  lh         a4, 1868(a7)
                  csrrci     ra, 0x340, 12
                  csrrwi     s6, 0x340, 4
                  slt        a6, s9, a4
                  or         a5, s9, s3
                  lbu        s9, 1279(a7)
                  mulhu      s6, s4, t3
                  lb         s11, -724(a7)
                  lb         t2, -601(a7)
                  sltu       a4, s7, s3
                  fence
                  c.or       a4, a4
                  lbu        s3, -1355(a7)
                  sh         a0, -262(a7)
                  lb         s3, 1823(a7)
                  lb         t3, 1076(a7)
                  lb         a2, 1039(a7)
                  slt        t1, s7, a2
                  lbu        s5, 1707(a7)
                  fence
                  sltiu      t0, gp, -1006
                  sh         a6, 960(a7)
                  c.sub      a2, a5
                  sw         a4, -1302(a7)
                  sb         s8, -251(a7)
                  sb         s7, 133(a7)
                  c.nop
                  mulh       t0, s10, a2
                  lb         a2, 1545(a7) #end riscv_load_store_rand_instr_stream_7
                  la         a2, region_0+3626 #start load_store_instr_stream_1
                  la         ra, region_4+3633 #start load_store_instr_stream_3
                  la         t3, region_3+105 #start load_store_instr_stream_0
                  lhu        t4, 93(t3)
                  sb         t3, -15(a2)
                  lb         tp, -6(ra)
                  la         s6, region_1+16098 #start load_store_instr_stream_2
                  lb         a5, 16(ra)
                  sb         s6, 191(s6)
                  lbu        a0, 16(ra)
                  la         t5, region_2+7751 #start load_store_instr_stream_4
                  sw         t1, 46(a2)
                  sb         a5, 248(t3)
                  sb         ra, 12(t5)
                  lbu        s3, 40(a2)
                  lhu        s1, 53(t3)
                  lhu        s5, -50(a2)
                  lhu        t2, -52(a2)
                  lb         t0, -4(ra)
                  lb         s1, -792(s6)
                  lb         a7, 162(t3)
                  lbu        t2, -13(ra)
                  lhu        t2, 9(t5)
                  lb         s11, -2(t5)
                  sb         a2, -1699(s6)
                  lh         t1, -870(s6)
                  lbu        t0, 25(a2)
                  sb         s6, -17(t5)
                  lb         t4, -49(a2)
                  lbu        s8, -14(ra)
                  lw         a3, -65(t3)
                  sh         gp, -3(ra)
                  sb         s11, -2(a2)
                  lbu        a6, 4(ra) #end load_store_instr_stream_3
                  lb         tp, -299(s6)
                  sb         zero, -1059(s6) #end load_store_instr_stream_2
                  sb         gp, -23(a2) #end load_store_instr_stream_1
                  sb         a6, 162(t3)
                  lbu        a6, 16(t5) #end load_store_instr_stream_4
                  lb         s1, 348(t3) #end load_store_instr_stream_0
sub_5_16:         jal        t4, 15f
0:                c.jal      9f
1:                jal        a0, 10f
2:                c.jal      1b
3:                jal        t0, 17f
4:                c.j        0b
5:                c.jal      6f
6:                c.jal      2b
7:                c.jal      12f
8:                jal        ra, 5b
9:                c.jal      3b
10:               jal        t2, 11f
11:               c.j        16f
12:               c.j        8b
13:               c.j        4b
14:               jal        ra, 13b
15:               c.j        7b
16:               c.jal      14b
17:               csrrsi     s11, 0x340, 0
                  la         t5, region_1+11680 #start load_store_instr_stream_3
                  la         s0, region_1+8366 #start load_store_instr_stream_2
                  sb         s3, 51(t5)
                  la         s2, region_1+14766 #start load_store_instr_stream_1
                  la         a1, region_1+11841 #start load_store_instr_stream_0
                  sb         s0, -43(s0)
                  lbu        s8, 23(a1)
                  lhu        t4, 248(s2)
                  sb         sp, 6(t5)
                  sb         t2, -27(s0)
                  lb         zero, -163(s2)
                  lb         a6, -19(a1)
                  lbu        a3, -43(t5)
                  lb         a6, 79(s2)
                  lhu        s3, 20(s0)
                  lb         s5, -33(a1)
                  sh         s7, 28(t5)
                  lhu        t2, -56(s0)
                  lb         gp, 61(t5) #end load_store_instr_stream_3
                  lb         s9, 53(s2)
                  lb         tp, -48(a1)
                  lb         a6, 42(s0)
                  sb         a5, -79(s2) #end load_store_instr_stream_1
                  lb         a3, 44(s0) #end load_store_instr_stream_2
                  .4byte 0xfc8e9173 # kIllegalSystemInstr
                  sb         a5, -52(a1) #end load_store_instr_stream_0
                  la         t1, region_1+11754 #start load_store_instr_stream_0
                  sw         tp, -2(t1)
                  sh         s1, -38(t1)
                  la         t6, region_1+12567 #start load_store_instr_stream_1
                  la         s9, region_1+1372 #start load_store_instr_stream_2
                  lb         s10, 1278(s9)
                  lb         s1, 19(t1)
                  lb         a4, -106(t6)
                  lb         s1, -926(s9)
                  lbu        t2, 196(t6)
                  lbu        a4, 25(t6)
                  sb         s0, -506(s9)
                  lh         s1, 56(t1)
                  sh         s10, 203(t6)
                  lh         a7, 8(t1)
                  lhu        t4, 290(s9)
                  sh         s0, -203(t6)
                  sh         a1, -101(t6)
                  lbu        t3, -194(t6)
                  lbu        s8, 45(t1)
                  lbu        gp, 152(t6)
                  lb         ra, 13(t1)
                  sh         s7, 326(s9) #end load_store_instr_stream_2
                  sh         gp, -143(t6) #end load_store_instr_stream_1
                  lbu        s3, 51(t1) #end load_store_instr_stream_0
                  la         s2, region_0+1771 #start riscv_load_store_rand_instr_stream_6
                  lb         s3, 12(s2)
                  lb         tp, -4(s2)
                  lbu        tp, 0(s2)
                  lb         s9, -16(s2)
                  lui        a1, 840458
                  xori       a4, s6, -447
                  sb         t4, -2(s2)
                  sb         s10, 10(s2)
                  addi       s0, a0, -579
                  lbu        a5, 0(s2)
                  lh         a5, -5(s2)
                  sw         s7, -15(s2)
                  csrrw      s6, 0x340, t0
                  c.srli     a2, 17
                  sb         s1, 4(s2)
                  slti       s6, t2, -157
                  lb         t2, -8(s2)
                  c.srai     a3, 24
                  lb         tp, 2(s2)
                  sra        t4, ra, s3
                  fence.i
                  slt        t6, s9, t2
                  lbu        a3, 14(s2)
                  lbu        ra, -4(s2)
                  srli       t5, gp, 25
                  lbu        a2, 6(s2)
                  lb         t0, 10(s2)
                  csrrci     t5, 0x340, 13
                  sb         t3, 14(s2)
                  c.sub      a3, a3
                  csrrci     s10, 0x340, 8
                  sb         ra, 8(s2)
                  lbu        s1, -2(s2)
                  fence
                  c.li       t4, -1
                  lbu        zero, -8(s2)
                  lbu        tp, 3(s2)
                  lb         s6, -2(s2)
                  lb         s3, 10(s2)
                  fence
                  csrrw      tp, 0x340, s3
                  sb         s1, -6(s2)
                  lb         t5, -1(s2)
                  sh         s2, 11(s2)
                  ori        a7, s6, -258
                  sb         t4, 2(s2)
                  sll        t2, s0, a3
                  sll        s11, a0, a2
                  lb         s3, -2(s2)
                  lbu        s10, 3(s2)
                  c.and      s1, a1
                  lhu        a4, -9(s2) #end riscv_load_store_rand_instr_stream_6
                  la         s0, region_0+3720 #start load_store_instr_stream_3
                  lb         a0, -136(s0)
                  la         t2, region_0+3273 #start load_store_instr_stream_1
                  la         t3, region_0+1131 #start load_store_instr_stream_2
                  lhu        t1, 19(t3)
                  la         s8, region_0+1638 #start load_store_instr_stream_4
                  sb         a2, -476(t2)
                  sh         t0, -184(s0)
                  la         s1, region_0+1259 #start load_store_instr_stream_0
                  lhu        a2, 64(s8)
                  lbu        s5, -51(t3)
                  sh         s10, -100(s0)
                  lbu        s2, -1113(t2)
                  lbu        s3, 58(t3)
                  sb         gp, -1285(t2)
                  lbu        gp, 20(t3)
                  lbu        a5, -64(t3)
                  lbu        a0, 171(s0)
                  sh         s5, -53(s1)
                  lb         a0, -63(s8)
                  lbu        s3, -1260(t2)
                  lbu        t6, -35(s1)
                  lb         a1, -57(s8)
                  lbu        s11, 119(s0)
                  lbu        s6, 61(s8)
                  sh         a3, -41(t3)
                  sb         a2, -27(s8)
                  sb         a7, -23(s8)
                  lbu        a0, 62(s1)
                  sw         s11, 25(t3)
                  lbu        t0, 42(s8)
                  sb         s2, 211(s0)
                  sb         a5, 62(s1)
                  sb         s11, -55(s8)
                  lb         s5, -1546(t2)
                  lb         tp, -108(s0)
                  lbu        a3, -3(s8) #end load_store_instr_stream_4
                  lh         s3, -1439(t2) #end load_store_instr_stream_1
                  sh         s8, -13(t3) #end load_store_instr_stream_2
                  lb         s10, 163(s0)
                  lh         t4, 210(s0) #end load_store_instr_stream_3
                  sb         ra, -56(s1) #end load_store_instr_stream_0
sub_5_12:         jal        t4, 18f
0:                c.j        25f
1:                c.jal      26f
2:                jal        gp, 1b
3:                jal        ra, 10f
4:                c.j        23f
5:                c.jal      22f
6:                c.jal      9f
7:                jal        tp, 8f
8:                c.j        27f
9:                jal        gp, 5b
10:               c.jal      11f
11:               jal        t1, 21f
12:               c.j        14f
13:               c.j        3b
14:               c.jal      6b
15:               c.jal      20f
16:               jal        ra, 15b
17:               c.jal      24f
18:               jal        t1, 13b
19:               c.jal      7b
20:               jal        ra, 12b
21:               c.j        17b
22:               jal        t2, 19b
23:               jal        t0, 16b
24:               c.j        2b
25:               c.jal      4b
26:               c.jal      0b
27:               srli       s3, t1, 1
                  la         s10, region_0+2196 #start load_store_instr_stream_2
                  lhu        a4, 10(s10)
                  la         t5, region_0+3314 #start load_store_instr_stream_1
                  la         a7, region_0+474 #start load_store_instr_stream_0
                  lbu        a0, 353(a7)
                  lh         s5, -2(s10)
                  lb         t3, -3(t5)
                  sb         t2, 1884(a7)
                  lbu        a6, -1(s10)
                  lbu        zero, 13(t5)
                  lw         t4, 10(t5)
                  sb         a0, -6(s10)
                  lb         t1, -15(s10)
                  sb         a6, 8(t5)
                  lbu        s6, 509(a7)
                  sb         sp, 1999(a7)
                  lhu        s0, 2(t5)
                  lb         t6, -9(t5)
                  lb         t3, 1401(a7)
                  sh         a7, 10(s10)
                  lh         ra, 1366(a7)
                  sb         t3, -11(s10)
                  sb         a0, 1706(a7)
                  lhu        a4, 8(t5) #end load_store_instr_stream_1
                  lb         s0, 1(s10) #end load_store_instr_stream_2
                  sw         a7, 1430(a7)
                  lb         t3, 191(a7) #end load_store_instr_stream_0
                  la         a5, region_3+317 #start load_store_instr_stream_3
                  lhu        s6, -231(a5)
                  la         s8, region_2+3001 #start load_store_instr_stream_1
                  la         a4, region_1+14213 #start load_store_instr_stream_2
                  la         a1, region_0+2558 #start load_store_instr_stream_0
                  sb         s1, 14(a4)
                  lbu        t5, -1917(s8)
                  lbu        tp, 12(a4)
                  lb         s9, -217(a5)
                  lbu        s1, -45(a5)
                  sb         a4, -363(a1)
                  sb         sp, -219(a5)
                  lw         t0, -1273(s8)
                  sb         s1, -10(a4)
                  lw         s11, 1995(s8)
                  lw         s5, -1(a5)
                  sb         a6, 723(a1)
                  lb         t3, 1481(s8)
                  lbu        s10, -995(s8)
                  lw         t4, -13(a4)
                  lh         s1, -1407(s8)
                  lhu        s3, -385(s8)
                  sh         s10, 606(a1)
                  lb         t5, 48(a5)
                  lbu        a3, -2031(s8) #end load_store_instr_stream_1
                  sh         gp, -1706(a1)
                  lbu        s9, 1004(a1)
                  sw         s8, -1(a4) #end load_store_instr_stream_2
                  sb         s1, -196(a5) #end load_store_instr_stream_3
                  lbu        a3, 907(a1) #end load_store_instr_stream_0
                  la         s0, region_0+493 #start load_store_instr_stream_1
                  la         a3, region_4+904 #start load_store_instr_stream_2
                  la         a5, region_1+10854 #start load_store_instr_stream_0
                  sb         t6, 65(a3)
                  lb         a2, -171(a3)
                  sb         a7, 13(s0)
                  sb         a1, -217(a3)
                  lb         a7, -252(a5)
                  sh         a0, 130(a5)
                  lh         t5, 15(s0)
                  lbu        zero, -10(s0)
                  sb         s0, -1249(a5)
                  lb         s11, 1843(a5)
                  lb         t1, 2(s0)
                  lhu        zero, -7(s0)
                  lbu        s5, -1129(a5)
                  lbu        s11, -59(a3)
                  lhu        s9, -2002(a5)
                  sb         t1, -104(a3)
                  sb         s5, -4(s0) #end load_store_instr_stream_1
                  lb         s11, 116(a3)
                  lh         s3, -740(a5)
                  lbu        a6, 826(a5)
                  lb         s10, 83(a3)
                  lbu        s2, -203(a3) #end load_store_instr_stream_2
                  lh         gp, -1934(a5) #end load_store_instr_stream_0
                  la         s8, region_1+1905 #start riscv_load_store_rand_instr_stream_0
                  sb         s6, -34(s8)
                  fence.i
                  c.li       s6, -1
                  auipc      s5, 793171
                  sh         a5, 39(s8)
                  sltu       t3, s11, a1
                  srli       t3, t4, 21
                  c.slli     t6, 11
                  slti       a3, sp, 40
                  sll        a4, t0, t6
                  lhu        s3, 39(s8)
                  ori        a4, t4, 187
                  slli       a5, s8, 15
                  csrrci     s10, 0x340, 9
                  sb         ra, 42(s8)
                  lbu        ra, -1(s8)
                  csrrs      s9, 0x340, t5
                  auipc      t0, 425908
                  rem        t2, a0, t3
                  andi       t1, a5, -5
                  mulhu      a6, t4, a2
                  sll        tp, a0, a5
                  c.srai     a3, 22
                  c.srli     a3, 7
                  lh         t1, -43(s8)
                  lh         t5, 27(s8)
                  sra        s6, gp, ra
                  csrrs      t3, 0x340, sp
                  sb         s11, -22(s8)
                  c.slli     t6, 31
                  csrrw      ra, 0x340, a5
                  srli       s0, a2, 18
                  srli       zero, s6, 12
                  lbu        a1, -18(s8)
                  divu       a7, gp, s8
                  csrrc      t1, 0x340, s10
                  mulhsu     s3, s6, a4
                  sb         a5, -62(s8)
                  sb         s7, 57(s8)
                  c.andi     a2, -1
                  lhu        zero, 61(s8)
                  sll        ra, a3, t6
                  lbu        s1, 10(s8) #end riscv_load_store_rand_instr_stream_0
                  la         t2, region_4+3535 #start load_store_instr_stream_3
                  la         s0, region_4+3966 #start load_store_instr_stream_1
                  la         a6, region_4+1816 #start load_store_instr_stream_2
                  sb         a1, -1678(t2)
                  sb         s2, -44(t2)
                  la         a7, region_4+3819 #start load_store_instr_stream_0
                  sh         s7, 4(s0)
                  lh         t4, -228(a6)
                  la         a0, region_4+4045 #start load_store_instr_stream_4
                  lh         s2, -911(a0)
                  lb         s8, -8(s0)
                  lbu        s8, -10(s0)
                  lh         t4, 78(a6)
                  lb         t6, -1068(a0)
                  lb         a5, -6(a7)
                  lhu        s5, 12(s0)
                  sh         ra, -55(a0)
                  lbu        s11, 380(t2)
                  sb         t4, -911(a0)
                  lb         a4, -14(a7)
                  lh         s11, 13(a7)
                  lb         tp, -23(a6)
                  lhu        s1, -1469(t2)
                  lb         t1, 251(a6)
                  sb         t0, 162(a6)
                  lb         s5, 4(a7)
                  sh         s11, -10(s0)
                  sb         t2, -1622(a0) #end load_store_instr_stream_4
                  lh         a4, -8(s0)
                  lhu        s8, 10(s0)
                  sb         s9, -1249(t2)
                  lb         a5, -189(a6)
                  sb         a4, 8(a7)
                  lhu        s5, -1587(t2)
                  sb         s8, -118(a6)
                  sb         s6, -39(a6)
                  sb         t5, -1(s0)
                  lb         s6, -2(a7)
                  lb         a2, 16(s0)
                  lh         s10, 15(a7)
                  sb         gp, -1660(t2)
                  lb         t4, -100(t2) #end load_store_instr_stream_3
                  lbu        a5, 205(a6)
                  sb         ra, 111(a6) #end load_store_instr_stream_2
                  sb         s4, -9(s0) #end load_store_instr_stream_1
                  lw         a3, 1(a7) #end load_store_instr_stream_0
                  la         s10, region_0+2151 #start riscv_hazard_instr_stream_8
                  sw         a1, 1365(s10)
                  sb         s0, 1703(s10)
                  c.sub      s0, s0
                  mulhsu     s0, s0, a1
                  c.lui      a1, 26
                  c.or       a1, a4
                  c.or       s0, a4
                  slti       a1, a4, 508
                  lb         s6, 732(s10)
                  lb         s8, 59(s10)
                  add        a1, a1, s8
                  lb         s3, -1214(s10)
                  srai       a1, a1, 6
                  sb         s8, 444(s10)
                  lb         s6, 256(s10)
                  and        a1, s8, s3
                  lbu        a1, -478(s10)
                  c.add      s8, s3
                  lhu        s6, -1537(s10)
                  slti       s6, a1, -84
                  csrrwi     s0, 0x340, 8
                  sh         s3, -1077(s10)
                  sra        s8, s3, a1
                  sh         s6, 891(s10)
                  nop
                  c.and      s0, a1
                  sb         s3, 1119(s10)
                  c.li       s0, 4
                  sb         a4, 1858(s10)
                  lb         s6, 1244(s10)
                  div        s6, s8, s3
                  sb         s3, 1093(s10)
                  srai       a4, s6, 13
                  csrrs      s3, 0x340, a1
                  csrrci     s8, 0x340, 10
                  sb         s3, -1409(s10)
                  lbu        a4, 615(s10)
                  xor        a1, s6, s3
                  nop
                  sb         s3, 962(s10)
                  slti       s0, s8, 51
                  lhu        s6, -1609(s10)
                  lb         s0, -1398(s10)
                  sltu       s3, s3, a1
                  c.or       a4, a1
                  lbu        s6, 288(s10)
                  lh         s6, 1759(s10)
                  lb         a1, 1897(s10)
                  lb         a4, 676(s10)
                  lb         s3, -2023(s10)
                  csrrc      a1, 0x340, s6
                  slt        a4, a4, s8
                  lw         s0, 181(s10)
                  sh         s3, -1259(s10) #end riscv_hazard_instr_stream_8
sub_5_19:         jal        t4, 5f
0:                c.j        11f
1:                jal        a4, 10f
2:                c.jal      9f
3:                jal        ra, 0b
4:                jal        ra, 8f
5:                jal        ra, 6f
6:                c.jal      13f
7:                c.j        3b
8:                c.j        14f
9:                c.j        1b
10:               c.j        12f
11:               c.j        4b
12:               c.jal      7b
13:               c.jal      2b
14:               c.li       s2, 14
sub_5_13:         jal        t4, 7f
0:                c.j        3f
1:                c.j        11f
2:                c.j        9f
3:                c.j        1b
4:                c.jal      5f
5:                jal        gp, 12f
6:                c.j        8f
7:                c.jal      10f
8:                c.jal      0b
9:                c.jal      4b
10:               c.jal      6b
11:               c.jal      2b
12:               c.and      a1, s0
                  la         s9, region_1+11840 #start riscv_load_store_rand_instr_stream_8
                  sb         t1, -174(s9)
                  slli       s1, t5, 28
                  sra        tp, a0, sp
                  csrrw      a2, 0x340, s2
                  lbu        a2, 114(s9)
                  rem        s2, s4, a2
                  sub        a7, a7, tp
                  c.or       s0, a4
                  mulhu      a1, a4, ra
                  c.srli     a0, 9
                  sh         a4, -248(s9)
                  lb         s8, -222(s9)
                  xori       t1, zero, -363
                  c.lui      t0, 4
                  srl        ra, s5, t0
                  lbu        t0, -170(s9)
                  srai       a1, s8, 29
                  sub        a1, s8, s11
                  c.sub      a1, s0
                  lbu        tp, -107(s9)
                  remu       s1, s8, a4
                  xori       s10, s4, 954
                  andi       tp, s7, 338
                  c.and      a5, s0
                  fence
                  sw         gp, 188(s9)
                  csrrs      t4, 0x340, s0
                  mulhu      s1, s10, t0
                  c.and      a2, a4
                  lbu        a6, 108(s9)
                  lbu        t0, -229(s9)
                  sub        a1, s3, t4
                  c.srai     a3, 16
                  c.or       a5, s1
                  c.xor      a1, a2
                  lbu        s1, -254(s9)
                  lh         t0, 16(s9)
                  c.add      s3, a6
                  mul        a7, sp, t3
                  fence.i
                  ori        s0, t3, 442
                  sb         tp, -179(s9)
                  lb         a6, -143(s9) #end riscv_load_store_rand_instr_stream_8
                  la         s11, region_0+3012 #start load_store_instr_stream_1
                  la         s10, region_3+146 #start load_store_instr_stream_0
                  sb         s4, 335(s11)
                  sb         t4, 202(s10)
                  lb         s9, -1365(s11)
                  sb         a6, -96(s10)
                  lb         s6, -1901(s11)
                  sb         a6, 248(s10)
                  lhu        s6, 98(s10)
                  sb         a5, -709(s11)
                  lw         s6, 302(s10)
                  sh         a1, -1990(s11)
                  lbu        t0, -67(s10)
                  lbu        s0, -51(s11)
                  lh         s1, 342(s10)
                  lh         s0, -1312(s11) #end load_store_instr_stream_1
                  lb         tp, 240(s10) #end load_store_instr_stream_0
                  la         s2, region_1+9926 #start load_store_instr_stream_3
                  la         ra, region_0+3908 #start load_store_instr_stream_0
                  la         s3, region_2+732 #start load_store_instr_stream_1
                  la         t5, region_3+197 #start load_store_instr_stream_2
                  lbu        tp, 6(ra)
                  lbu        gp, 1493(s2)
                  lhu        a5, -135(t5)
                  lbu        t2, 713(s2)
                  lbu        a7, 1213(s3)
                  lb         t6, 1477(s3)
                  sb         s2, 989(s3)
                  lh         s1, 4(ra)
                  sb         a0, -753(s2)
                  lhu        s0, 1684(s3)
                  sb         t4, 24(t5)
                  lb         a3, 5(ra)
                  sb         tp, -1201(s2)
                  lb         a2, -155(t5)
                  lbu        t0, -131(t5)
                  sb         s1, 265(s2)
                  lh         a1, 10(ra)
                  sb         t4, -55(t5)
                  lb         s9, 11(ra)
                  lh         s5, 129(t5)
                  sb         s1, -755(s2)
                  lbu        s11, -931(s2)
                  lb         a5, 1171(s3)
                  lbu        a3, 190(t5)
                  sh         gp, 1328(s3)
                  lb         zero, -13(ra)
                  lb         t6, -42(t5)
                  sh         t1, 27(t5)
                  lb         a4, 32(t5) #end load_store_instr_stream_2
                  sb         a1, -1450(s2) #end load_store_instr_stream_3
                  sb         s10, 37(s3) #end load_store_instr_stream_1
                  sb         s9, -10(ra) #end load_store_instr_stream_0
                  la         a3, region_4+223 #start load_store_instr_stream_1
                  la         t2, region_1+4999 #start load_store_instr_stream_0
                  lb         t0, 142(a3)
                  lbu        a6, -12(t2)
                  la         t5, region_0+2101 #start load_store_instr_stream_2
                  la         s0, region_2+5202 #start load_store_instr_stream_3
                  lb         ra, 185(s0)
                  sh         tp, 1791(a3)
                  lb         s6, -243(s0)
                  lb         t3, -8(t2)
                  la         s5, region_3+48 #start load_store_instr_stream_4
                  lb         s10, 2(t5)
                  sb         t6, 85(s0)
                  sb         s11, 1712(a3)
                  lbu        a0, -164(s0)
                  sb         s7, 141(s5)
                  lb         t6, 8(t5)
                  lb         a0, 105(s5)
                  lbu        a2, -59(s0)
                  lhu        a2, -11(t2)
                  lhu        s11, 122(s5)
                  sb         t5, -2(t2)
                  sb         a6, -12(t5)
                  lhu        a6, 409(a3)
                  sb         t3, 34(a3)
                  lw         s9, 7(t5)
                  sb         ra, 7(t2)
                  sb         s10, 1764(a3)
                  sb         s6, 45(s0)
                  lb         a4, -2(t5)
                  lb         a7, 15(s5)
                  lw         zero, 905(a3)
                  sb         s7, 6(t5)
                  lb         t4, 150(a3) #end load_store_instr_stream_1
                  lb         gp, -15(t5)
                  lh         a0, -104(s0) #end load_store_instr_stream_3
                  lbu        gp, 34(s5)
                  lbu        a7, 16(t5) #end load_store_instr_stream_2
                  lb         s9, 92(s5) #end load_store_instr_stream_4
                  lbu        ra, -10(t2) #end load_store_instr_stream_0
                  addi       gp, zero, 9 #init loop 0 counter
                  addi       s1, zero, 9 #init loop 0 limit
                  c.slli     s11, 9
sub_5_45_0_t:     mulhu      s8, s7, t3
                  csrrwi     a5, 0x340, 21
                  fence
                  mulhu      a3, s5, s3
                  csrrsi     ra, 0x340, 15
                  addi       gp, gp, -8 #update loop 0 counter
                  mul        a6, sp, t1
                  csrrsi     s5, 0x340, 18
                  ori        s5, s8, -582
                  sltiu      s10, a3, -403
                  andi       a7, s5, -715
                  csrrs      a4, 0x340, t6
                  bgeu       gp, s1, sub_5_45_0_t #branch for loop 0
                  csrrs      t6, 0x340, t2
                  addi       a1, zero, 9 #init loop 0 counter
                  srl        t3, a4, s5
                  addi       s1, zero, 9 #init loop 0 limit
                  add        s6, s5, a3
sub_5_42_0_t:     c.nop
                  nop
                  addi       a1, a1, -2 #update loop 0 counter
                  bgeu       a1, s1, sub_5_42_0_t #branch for loop 0
                  mul        t4, a2, s11
sub_5_15:         jal        t4, 8f
0:                c.j        1f
1:                c.jal      3f
2:                jal        ra, 7f
3:                c.j        12f
4:                c.jal      15f
5:                c.jal      10f
6:                c.jal      0b
7:                c.jal      11f
8:                c.j        13f
9:                jal        t2, 2b
10:               c.jal      14f
11:               c.jal      6b
12:               c.j        4b
13:               c.jal      5b
14:               jal        gp, 9b
15:               mulhu      a0, s6, t0
                  la         s1, region_3+500 #start load_store_instr_stream_1
                  lbu        t1, -258(s1)
                  la         s11, region_3+368 #start load_store_instr_stream_2
                  la         a2, region_3+475 #start load_store_instr_stream_0
                  sb         a5, -144(s1)
                  lbu        t6, -12(a2)
                  sh         s1, 12(s11)
                  lb         t0, -93(s1)
                  lbu        zero, -3(s11)
                  sb         t0, 33(s11)
                  lw         s8, -16(s11)
                  lbu        tp, -6(a2)
                  lb         a7, 58(s11)
                  lbu        t3, -181(s1)
                  lbu        ra, -12(a2)
                  sb         t4, -270(s1)
                  lw         a5, -7(a2)
                  lhu        s9, -498(s1)
                  lb         t2, 15(a2)
                  lh         t0, -370(s1)
                  lb         a0, -16(a2)
                  lh         t2, -48(s11) #end load_store_instr_stream_2
                  lhu        t5, -476(s1)
                  lhu        t0, 11(a2)
                  lh         s2, -482(s1) #end load_store_instr_stream_1
                  lbu        t3, -14(a2) #end load_store_instr_stream_0
sub_5_14:         jal        t4, 7f
0:                c.jal      4f
1:                jal        t1, 11f
2:                c.j        12f
3:                c.jal      8f
4:                jal        a0, 3b
5:                jal        t0, 22f
6:                c.j        18f
7:                c.j        20f
8:                c.jal      13f
9:                c.j        16f
10:               c.j        26f
11:               jal        ra, 25f
12:               c.jal      15f
13:               c.jal      21f
14:               c.jal      9b
15:               jal        a4, 1b
16:               c.j        24f
17:               c.j        10b
18:               c.jal      23f
19:               c.j        2b
20:               jal        s0, 5b
21:               c.jal      28f
22:               c.jal      17b
23:               c.j        19b
24:               c.j        29f
25:               c.j        0b
26:               jal        a3, 6b
27:               c.jal      14b
28:               c.jal      27b
29:               c.add      s2, s3
                  la         s3, region_3+333 #start riscv_hazard_instr_stream_1
                  slti       t5, s2, -953
                  lw         s2, -113(s3)
                  c.slli     s2, 17
                  sb         s2, -215(s3)
                  sb         a3, -18(s3)
                  lhu        t5, -175(s3)
                  mul        a1, a3, s2
                  sb         t5, -149(s3)
                  lb         a3, -20(s3)
                  xori       t2, a3, -677
                  c.nop
                  csrrc      s9, 0x340, t5
                  c.andi     a1, 10
                  lb         t2, 80(s3)
                  sb         a3, 49(s3)
                  lbu        a3, 108(s3)
                  lbu        t5, 166(s3)
                  lbu        s9, 146(s3)
                  lhu        t2, -9(s3)
                  c.add      t2, a1
                  lb         t2, -196(s3)
                  lh         a1, -247(s3)
                  lb         s2, 166(s3)
                  lb         t2, 7(s3)
                  c.andi     a3, 20
                  mulhsu     t2, s2, a1
                  lbu        s2, -150(s3)
                  srai       t2, s2, 1
                  sb         t2, 106(s3)
                  sw         s9, -45(s3)
                  srli       s9, t2, 13
                  lbu        t2, -162(s3)
                  lh         s2, -27(s3)
                  c.and      a1, a1
                  lb         a1, 162(s3)
                  lb         s9, -8(s3) #end riscv_hazard_instr_stream_1
                  la         s2, region_0+4066 #start load_store_instr_stream_1
                  lw         t6, -1114(s2)
                  la         gp, region_0+2123 #start load_store_instr_stream_2
                  la         t5, region_0+2314 #start load_store_instr_stream_0
                  sh         zero, -3(gp)
                  sh         t0, -1184(s2)
                  sh         t6, -9(gp)
                  lbu        s3, -1125(s2)
                  lbu        s10, 189(t5)
                  sb         a7, -2(gp)
                  sb         a3, -2(gp)
                  lbu        a1, -760(s2)
                  lw         zero, 66(t5)
                  lbu        t4, -1745(s2)
                  lh         s6, 11(gp)
                  sh         s8, -204(t5)
                  lb         s3, 17(s2)
                  lh         t3, -5(gp)
                  lbu        tp, 254(t5)
                  sb         s6, -1024(s2)
                  lb         zero, 12(gp) #end load_store_instr_stream_2
                  lb         a7, -741(s2) #end load_store_instr_stream_1
                  sb         a2, 255(t5) #end load_store_instr_stream_0
                  la         s1, region_3+405 #start load_store_instr_stream_3
                  la         s8, region_0+1096 #start load_store_instr_stream_1
                  la         s10, region_4+127 #start load_store_instr_stream_2
                  la         s6, region_1+6544 #start load_store_instr_stream_4
                  sb         s0, 126(s8)
                  sb         t1, -1703(s6)
                  la         gp, region_2+2403 #start load_store_instr_stream_0
                  lb         a6, -225(s1)
                  sb         zero, -64(s10)
                  lhu        a2, 55(s10)
                  sb         t1, -38(s1)
                  lb         t3, 787(s6)
                  sw         s3, -255(gp)
                  lhu        t3, -91(s1)
                  sb         tp, 684(s6)
                  lbu        t5, 403(s6)
                  sb         a3, -1396(s6)
                  sb         zero, -118(s8)
                  lbu        t4, 250(gp)
                  lb         a6, 24(s10)
                  lb         s2, 91(s1)
                  lb         ra, -1894(s6)
                  lb         s3, 1(s8)
                  lbu        a5, -162(s1)
                  lhu        t2, -5(s10)
                  lhu        a5, -162(s8)
                  lb         t1, -126(s8)
                  lbu        zero, -229(s8)
                  lh         a5, 59(s10)
                  lb         a1, 215(gp)
                  lb         t0, 30(s1)
                  lhu        a6, 5(gp)
                  lbu        t4, 164(s6)
                  sb         t5, 24(s10)
                  lhu        a0, -1442(s6)
                  sw         t3, 480(s6) #end load_store_instr_stream_4
                  lbu        s9, -171(s8)
                  sb         a5, -108(s1) #end load_store_instr_stream_3
                  lhu        a7, 41(s10) #end load_store_instr_stream_2
                  sb         tp, 21(s8) #end load_store_instr_stream_1
                  lh         s3, -155(gp) #end load_store_instr_stream_0
                  la         t2, region_0+1293 #start riscv_hazard_instr_stream_7
                  lb         s1, -56(t2)
                  c.srli     s1, 9
                  lui        s1, 532374
                  auipc      t6, 218698
                  lb         t4, 202(t2)
                  mulhu      t4, t4, s11
                  c.srai     s1, 10
                  sltiu      t6, s11, -524
                  nop
                  divu       s5, s5, s5
                  sh         t3, 137(t2)
                  lw         s5, -205(t2)
                  mulhsu     t4, t3, s5
                  lb         s5, -66(t2)
                  csrrci     t6, 0x340, 30
                  sh         s1, -85(t2)
                  lbu        s1, 24(t2)
                  sb         t6, -124(t2)
                  csrrc      t6, 0x340, t6
                  lb         t6, -48(t2)
                  sh         s5, -101(t2)
                  sb         s11, -222(t2)
                  lh         t6, -147(t2)
                  rem        t3, t4, t3
                  and        s11, t3, t4
                  lb         t4, 188(t2)
                  divu       s11, t3, t4
                  and        s5, s11, s5
                  sb         s1, 110(t2)
                  sb         s5, 228(t2)
                  c.and      s1, s1
                  sb         s1, -90(t2)
                  csrrc      s1, 0x340, s5
                  lbu        t3, -92(t2)
                  srai       s1, t6, 23
                  c.or       s1, s1
                  c.lui      t6, 29
                  lbu        t3, -208(t2)
                  slli       t4, s11, 18
                  c.slli     s11, 15
                  lbu        t4, 146(t2)
                  lw         t4, -241(t2)
                  lb         t6, 106(t2) #end riscv_hazard_instr_stream_7
                  la         ra, region_2+6675 #start load_store_instr_stream_4
                  la         a5, region_2+7483 #start load_store_instr_stream_2
                  la         s5, region_2+793 #start load_store_instr_stream_1
                  lb         a1, -200(a5)
                  la         s0, region_2+4563 #start load_store_instr_stream_3
                  lb         s8, -543(s5)
                  la         t5, region_2+4168 #start load_store_instr_stream_0
                  lb         a3, -2037(ra)
                  lhu        s8, -14(t5)
                  lb         tp, -487(s5)
                  lbu        t6, 579(s5)
                  lbu        t0, -24(a5)
                  lbu        t6, -3(t5)
                  lb         s11, -216(a5)
                  sb         zero, 13(t5)
                  sb         s3, 30(s0)
                  lbu        a6, -1667(ra)
                  lbu        tp, -184(s5)
                  lb         s9, -134(a5)
                  lh         a7, -5(s0)
                  lb         s2, -9(t5)
                  lbu        a1, 1753(s5)
                  lbu        t2, 362(s5)
                  sh         s0, -617(s5)
                  sb         s10, 5(t5)
                  lb         s2, 175(a5)
                  lb         a0, -896(ra)
                  sb         a3, 24(s0)
                  sb         t2, 26(s5)
                  sb         s9, -102(a5)
                  lb         a2, -958(ra)
                  lbu        s3, -12(s0)
                  lhu        t1, 8(t5)
                  lh         a4, 1469(ra) #end load_store_instr_stream_4
                  sb         s0, -182(s5) #end load_store_instr_stream_1
                  sb         a3, -56(a5)
                  sh         s6, 191(a5)
                  lhu        zero, -51(s0) #end load_store_instr_stream_3
                  lbu        gp, 5(t5)
                  lhu        s10, -2(t5)
                  lb         s2, 30(a5) #end load_store_instr_stream_2
                  lw         s10, 0(t5) #end load_store_instr_stream_0
                  la         a3, region_4+1621 #start riscv_load_store_rand_instr_stream_2
                  lb         s6, -190(a3)
                  sb         s3, -237(a3)
                  c.mv       t3, t4
                  lb         a7, 31(a3)
                  lbu        a0, -230(a3)
                  slti       s3, t3, 155
                  mulhsu     ra, a6, ra
                  lhu        s3, -151(a3)
                  remu       a0, a0, sp
                  lb         t6, -160(a3)
                  slli       a6, ra, 23
                  c.srli     a2, 8
                  lbu        tp, -93(a3)
                  c.li       a1, 11
                  lh         s6, 169(a3)
                  lb         t6, -168(a3)
                  lbu        t1, 43(a3)
                  lbu        s2, -156(a3)
                  lb         s2, -248(a3)
                  csrrs      t4, 0x340, s0
                  andi       tp, zero, -398
                  xor        a7, t3, sp
                  sb         a6, -168(a3)
                  lhu        a7, 221(a3)
                  lhu        a4, 75(a3)
                  addi       s3, s11, 707
                  mulhu      a1, a7, s2
                  andi       t4, ra, 618
                  lhu        s1, 1(a3)
                  mulhu      t3, t6, s6
                  lh         s0, -211(a3)
                  c.mv       s6, t1
                  sb         s5, -16(a3) #end riscv_load_store_rand_instr_stream_2
                  mulhu      a6, a3, gp
                  and        t2, s4, t4
                  rem        s3, s9, a6
                  sltiu      zero, s3, -160
                  mulh       t0, t2, s10
                  sltu       a1, t6, zero
                  slli       gp, s2, 30
                  addi       ra, s0, -282
                  csrrci     a6, 0x340, 2
                  ori        a6, s7, 65
                  c.nop
                  mulhu      t3, s9, t0
                  blt        a1, s9, 27f
                  and        s10, t4, t6
                  c.slli     t3, 18
                  div        t6, gp, sp
                  ori        tp, s4, 634
                  c.addi     a2, 5
                  slti       a1, sp, 361
                  slli       s3, a7, 8
                  c.or       s1, a3
                  c.or       a5, s0
                  c.nop
                  mulh       t3, s6, s9
                  c.andi     a5, -1
                  nop
                  bge        s9, a3, 39f
27:               srli       tp, s5, 10
                  csrrw      s5, 0x340, a0
                  c.li       s1, 26
                  ori        a3, s2, 807
                  c.bnez     a3, 51f
                  srli       a0, s11, 21
                  srli       a3, t5, 16
                  la         s5, region_2+1778 #start riscv_load_store_rand_instr_stream_4
                  lhu        a3, 50(s5)
                  divu       s11, t5, t6
                  sb         s7, 19(s5)
                  lbu        t6, -32(s5)
                  lhu        s6, 40(s5)
                  csrrci     s0, 0x340, 11
                  lbu        gp, -40(s5)
                  ori        a3, s3, -471
                  sw         t0, -10(s5)
                  sb         s0, 37(s5)
                  csrrwi     a7, 0x340, 30
                  or         s2, s3, t5
                  csrrw      a7, 0x340, s6
                  slti       a2, a1, 611
                  c.slli     s9, 17
                  sra        s11, s3, t6
                  ori        s9, t0, 316
                  sra        a0, s7, a0
                  lbu        a4, 1(s5)
                  fence.i
                  lbu        s11, -13(s5)
                  sb         a7, -49(s5)
                  c.and      a2, a4
                  c.nop
                  lb         a4, -43(s5)
                  sb         a7, 22(s5)
                  mulhsu     t2, a1, t5
                  lb         gp, -27(s5)
                  sb         t3, -9(s5)
                  srai       t0, s0, 21
                  nop
                  divu       t4, ra, a7
                  sb         s7, 21(s5)
                  sb         zero, -7(s5) #end riscv_load_store_rand_instr_stream_4
                  csrrsi     gp, 0x340, 20
                  csrrci     s9, 0x340, 15
                  mulhsu     s9, s5, t6
                  slt        t6, t2, t4
                  c.addi     t5, -1
39:               c.or       s0, s0
                  c.bnez     a4, 49f
                  mulhsu     t3, s5, s2
                  remu       zero, tp, a0
                  slti       t4, a4, 730
                  lui        a4, 942765
                  xori       a7, t3, 546
                  bgeu       s6, s9, 54f
                  c.addi     a0, -1
                  sltu       s11, t0, s7
49:               c.add      t4, a6
                  sub        s2, s4, a1
51:               csrrw      s11, 0x340, s1
                  srai       a3, s1, 16
                  c.bnez     s1, 61f
54:               c.lui      t6, 8
                  rem        a3, a7, a7
                  lui        t3, 139992
                  srai       a3, a1, 27
                  sra        s8, a0, s8
                  slli       a6, s1, 26
                  csrrc      t0, 0x340, ra
61:               bgeu       t4, s1, 68f
                  xori       t5, s1, 16
                  div        ra, t6, s0
                  c.addi     a0, 30
                  auipc      a3, 217271
                  bltu       t3, s0, 76f
                  csrrwi     s6, 0x340, 1
68:               add        tp, a6, ra
                  mul        s10, s9, a1
                  or         a2, s1, zero
                  csrrci     a4, 0x340, 29
                  remu       gp, s4, a5
                  bgeu       s9, gp, 87f
                  mulh       a6, gp, t3
                  c.add      s3, t4
76:               slt        a5, s4, tp
                  xori       a2, a5, 391
                  bgeu       s5, s1, 87f
                  bgeu       a3, s10, 90f
                  c.beqz     a5, 89f
                  csrrc      t4, 0x340, a4
                  csrrw      s8, 0x340, a0
                  srai       s2, t5, 25
                  sll        t0, a1, t1
                  c.nop
                  addi       a4, a7, 451
87:               add        a2, t0, s3
                  bge        s4, sp, 103f
89:               c.nop
90:               andi       ra, a2, -797
                  auipc      s10, 486410
                  csrrs      t2, 0x340, s3
                  nop
                  c.bnez     a1, 98f
                  c.slli     t0, 9
                  addi       a3, gp, 932
                  blt        gp, s1, 112f
98:               c.addi     t5, -1
                  c.lui      a6, 12
                  div        t3, a3, s3
                  csrrwi     s5, 0x340, 8
                  c.beqz     a4, 112f
103:              csrrsi     s6, 0x340, 3
                  fence
                  mulhsu     s8, t5, s1
                  c.addi     a7, 16
                  bgeu       s7, s8, 125f
                  c.or       s0, s1
                  lui        ra, 374470
                  csrrw      t6, 0x340, a4
                  srl        s9, s7, s8
112:              csrrci     s0, 0x340, 18
                  c.li       ra, 21
                  divu       s8, a5, t1
                  c.xor      a5, a1
                  rem        gp, s7, a5
                  csrrw      s9, 0x340, s1
                  csrrsi     tp, 0x340, 17
                  or         s0, t6, t4
                  xori       a2, s8, -432
                  bge        t5, t1, 136f
                  remu       zero, t5, a5
                  mulh       s5, a1, s1
                  ori        s10, sp, -709
125:              bgeu       s9, a4, 143f
                  csrrsi     s0, 0x340, 23
                  fence
                  ori        gp, a1, 224
                  slt        t5, a7, s11
                  andi       t3, a2, -1007
                  beq        ra, s7, 133f
                  slt        t2, s9, a7
133:              bne        tp, ra, 149f
                  div        t5, a0, a0
                  c.addi     s2, -1
136:              c.andi     a5, -1
                  c.slli     s10, 7
                  rem        t5, s2, gp
                  c.and      a3, s1
                  andi       t6, t0, -384
                  c.srai     a3, 31
                  slti       s2, a0, -1023
143:              mul        s3, tp, t5
                  rem        t5, sp, ra
                  andi       s9, s0, 909
                  rem        zero, sp, t0
                  lui        s10, 885479
                  auipc      t3, 464197
149:              sltiu      tp, s11, -47
                  c.nop
                  c.add      t2, a2
                  sub        zero, a6, a0
                  csrrsi     a0, 0x340, 27
                  c.beqz     a4, 163f
                  sll        a3, zero, s1
                  csrrc      s11, 0x340, s8
                  c.srli     a2, 20
                  mul        t4, t4, a1
                  or         a5, sp, t4
                  fence
                  srai       t6, t3, 27
                  fence.i
163:              slti       tp, zero, -880
                  bgeu       a0, s9, 173f
                  c.nop
                  fence
                  mul        gp, s11, s9
                  c.xor      a3, a4
                  c.lui      s5, 25
                  c.add      t1, t6
                  srli       t4, sp, 22
                  andi       t1, s2, -949
173:              csrrw      a6, 0x340, gp
                  sltu       s5, s9, s9
                  c.li       a6, -1
                  slli       t2, a1, 29
                  c.add      t0, s8
                  srli       gp, s7, 26
                  remu       s0, s11, s4
                  c.li       a1, -1
                  c.add      s5, t6
                  c.li       s10, -1
                  bne        s1, s9, 202f
                  sltu       a0, s6, s3
                  ori        s10, a0, 833
                  c.or       a2, a4
                  c.addi     a5, -1
                  nop
                  c.nop
                  c.lui      t6, 5
                  bne        s9, s7, 209f
                  or         a0, s1, s5
                  ori        t5, a3, -623
                  sltu       t3, s6, zero
                  beq        s1, a4, 204f
                  sltu       gp, a1, zero
                  csrrwi     a6, 0x340, 27
                  sll        tp, a0, a4
                  and        s2, zero, a5
                  andi       tp, a7, -192
                  c.addi     t1, -1
202:              csrrsi     s3, 0x340, 20
                  c.sub      a4, a4
204:              bne        s6, ra, 216f
                  bltu       a6, ra, 214f
                  c.addi     s3, 25
                  blt        s11, t4, 225f
                  sll        a2, a4, a1
209:              xori       a3, a2, 461
                  c.bnez     a2, 215f
                  rem        s6, s8, gp
                  blt        s0, sp, 221f
                  slt        a3, a4, sp
214:              xori       s5, s10, 629
215:              slti       s10, s5, 900
216:              bne        a4, ra, 220f
                  srli       t3, zero, 10
                  lui        a7, 707864
                  srai       a4, a2, 13
220:              remu       a5, s3, s6
221:              ori        s2, t3, -742
                  fence.i
                  csrrw      s8, 0x340, sp
                  div        s3, gp, gp
225:              blt        a4, a4, 240f
                  andi       s0, s8, -404
                  blt        a7, a7, 229f
                  and        a1, s0, s9
229:              c.lui      s5, 25
                  addi       a6, s10, 1002
                  slti       t2, s4, 840
                  mulhu      gp, s6, a4
                  bgeu       a2, t4, 242f
                  bne        t1, s11, 252f
                  bge        s11, sp, 253f
                  c.xor      a3, a3
                  bge        a6, s4, 251f
                  and        a6, a4, s4
                  csrrc      t5, 0x340, a5
240:              csrrwi     a0, 0x340, 14
                  srl        a7, s7, t5
242:              mulhsu     a4, s10, s4
                  csrrc      s3, 0x340, t5
                  c.andi     s0, -1
                  andi       tp, t0, 249
                  addi       a5, a7, -29
                  csrrs      a0, 0x340, s2
                  csrrsi     a6, 0x340, 29
                  csrrc      s5, 0x340, zero
                  csrrci     t2, 0x340, 17
251:              mulhu      s10, a0, t5
252:              c.mv       t2, s1
253:              and        s10, s6, s4
                  sltu       a5, s11, gp
                  mulh       a6, a2, tp
                  bne        t5, a3, 271f
                  slli       a1, tp, 0
                  mulhsu     t3, a5, gp
                  mul        a4, s5, s10
                  bge        s3, tp, 272f
                  rem        s0, s8, a7
                  srl        s2, s4, t0
                  lui        s3, 748128
                  slti       s10, sp, -63
                  c.andi     a1, -1
                  ori        gp, s7, -901
                  slli       t0, a1, 25
                  addi       ra, a6, 966
                  mulhsu     t5, t5, s10
                  csrrc      a7, 0x340, a1
271:              c.or       a1, a4
272:              bgeu       s0, a1, 285f
                  add        t5, t3, zero
                  bltu       s11, s0, 283f
                  sltiu      s9, zero, 900
                  sub        s9, ra, a7
                  c.li       a4, 0
                  blt        a0, s1, 293f
                  mulhu      s2, t5, s1
                  csrrc      ra, 0x340, a0
                  srl        s5, t3, s2
                  csrrsi     a4, 0x340, 25
283:              csrrwi     s2, 0x340, 13
                  csrrci     s1, 0x340, 14
285:              mulhu      s9, t4, sp
                  c.addi     s2, -1
                  mulhu      a7, gp, tp
                  ori        a1, s5, 744
                  lui        tp, 894764
                  nop
                  fence
                  or         a2, a5, t5
293:              add        a6, gp, s9
                  remu       a5, t2, a7
                  csrrci     a1, 0x340, 10
                  c.bnez     a5, 316f
                  csrrwi     t1, 0x340, 2
                  div        s9, t6, t6
                  lui        s10, 654581
                  xor        a6, t2, s5
                  csrrc      t6, 0x340, s3
                  addi       t4, s4, -325
                  csrrw      a7, 0x340, s11
                  sltiu      s3, t2, -489
                  c.nop
                  c.li       a0, -1
                  sll        t2, s1, tp
                  slt        t3, sp, gp
                  bgeu       t3, a7, 318f
                  mulhu      tp, s7, s11
                  mul        t0, ra, s0
                  c.bnez     a3, 322f
                  csrrc      t1, 0x340, s10
                  bge        s8, s11, 332f
                  sra        s11, t0, s1
316:              csrrsi     t5, 0x340, 13
                  c.li       s10, 17
318:              and        s8, s0, s7
                  srl        a7, sp, a1
                  mul        ra, s9, s6
                  rem        s5, s2, s1
322:              c.srai     a5, 3
                  c.srai     a1, 3
                  c.srli     a5, 1
                  c.mv       s8, s9
                  fence
                  c.srai     s0, 8
                  sltu       a6, s1, s4
                  add        t6, a5, a4
                  xori       a4, s6, -914
                  slti       s8, s11, -670
332:              nop
                  c.and      a2, a2
                  bgeu       s9, s0, 344f
                  fence.i
                  c.lui      t5, 19
                  c.addi     a5, 18
                  addi       a0, t2, 670
                  addi       a5, a7, 478
                  xor        a0, s2, a4
                  remu       t5, t0, sp
                  bne        zero, s6, 347f
                  nop
344:              sra        t0, a3, a7
                  c.addi     tp, -1
                  csrrw      s10, 0x340, s9
347:              c.li       t1, 15
                  c.nop
                  slli       s6, s0, 22
                  csrrw      s0, 0x340, s4
                  csrrs      s11, 0x340, t3
                  bne        tp, a6, 360f
                  nop
                  sub        t4, a7, t6
                  fence.i
                  mul        t1, t0, s6
                  csrrci     zero, 0x340, 0
                  bne        gp, t1, 365f
                  mulhu      tp, t6, t0
360:              c.xor      a5, a2
                  c.nop
                  c.addi     a7, 20
                  mulh       t4, t2, tp
                  remu       t2, gp, gp
365:              slt        zero, s5, a3
                  c.bnez     a0, 375f
                  sltu       s11, a1, t0
                  addi       t5, a6, 231
                  bgeu       a5, t0, 385f
                  mulhu      tp, s5, s0
                  c.srli     a2, 23
                  c.add      t3, sp
                  fence
                  c.li       s1, -1
375:              remu       t3, s8, a4
                  srai       t4, a4, 29
                  c.and      a1, a3
                  csrrc      t2, 0x340, s6
                  c.lui      ra, 27
                  slli       s9, a7, 28
                  ori        s2, a5, 946
                  rem        ra, a5, tp
                  sltiu      s9, t3, 746
                  nop
385:              c.add      s1, a3
                  sll        s5, t6, sp
                  fence
                  csrrwi     a5, 0x340, 8
                  slt        a0, ra, a3
                  c.bnez     a5, 398f
                  rem        a4, ra, s3
                  c.slli     a5, 31
                  lui        t2, 87009
                  c.mv       s11, s9
                  auipc      t3, 24918
                  c.li       a1, 1
                  add        t6, zero, s6
398:              lui        s2, 965949
                  xori       s9, s3, 781
                  ori        s5, s3, 123
                  sltu       a4, t1, a0
                  sub        a5, s10, t4
                  c.mv       ra, a0
                  ori        a6, a7, 1012
                  rem        s9, s9, s1
                  c.sub      a1, a5
                  nop
                  csrrs      ra, 0x340, s11
                  bne        t0, t1, 428f
                  sub        t2, t0, t6
                  c.nop
                  srai       a4, t0, 10
                  csrrc      a0, 0x340, s6
                  csrrw      a3, 0x340, s7
                  c.bnez     a2, 424f
                  csrrsi     t3, 0x340, 5
                  srai       s1, s0, 17
                  csrrc      t0, 0x340, t6
                  fence.i
                  sltiu      a7, s11, -252
                  mulh       t3, a7, s10
                  c.bnez     s0, 440f
                  c.xor      s1, a1
424:              ori        s5, s4, 323
                  c.mv       s0, s11
                  srl        zero, t3, s6
                  mul        zero, t4, s6
428:              lui        s2, 1001756
                  div        t1, s3, t0
                  c.or       s0, a1
                  slt        s0, s10, zero
                  c.xor      a1, s1
                  c.lui      t3, 6
                  sra        t0, s6, s3
                  lui        gp, 296539
                  auipc      s2, 858332
                  c.srai     a1, 28
                  slli       t3, s10, 15
                  slli       a2, t0, 22
440:              mul        s5, s1, a2
                  blt        s11, a4, 452f
                  c.slli     a1, 5
                  bne        s5, t6, 458f
                  csrrsi     s11, 0x340, 24
                  ori        a7, gp, 830
                  c.beqz     a1, 455f
                  csrrc      a7, 0x340, a5
                  c.lui      tp, 13
                  mulh       a2, t2, s0
                  c.lui      t6, 8
                  nop
452:              csrrs      a4, 0x340, s6
                  addi       t1, s2, 296
                  srl        a4, a2, a6
455:              srl        a5, s6, t4
                  ori        s5, s1, 560
                  mulhsu     gp, sp, s2
458:              fence
                  mulhsu     s1, sp, a6
                  add        tp, s8, s11
                  csrrwi     s8, 0x340, 18
                  bne        a3, t5, 472f
                  sltiu      t3, s11, -892
                  mulhsu     a4, s3, s3
                  div        s9, a6, s11
                  c.nop
                  sra        s5, tp, s10
                  srl        a5, a0, sp
                  c.or       a2, s1
                  mulhsu     s10, a2, s2
                  c.addi     gp, 19
472:              srai       t4, t0, 22
                  xor        a7, s1, a3
                  csrrsi     a6, 0x340, 15
                  c.add      a2, t1
                  beq        a2, s4, 485f
                  bltu       a1, s4, 497f
                  mul        zero, s8, zero
                  mul        s6, a4, s9
                  csrrc      ra, 0x340, s6
                  c.li       t2, -1
                  fence
                  csrrci     a3, 0x340, 14
                  sra        tp, t5, s6
485:              xor        gp, gp, a3
                  csrrsi     s8, 0x340, 3
                  mulhu      t3, s2, ra
                  csrrci     t4, 0x340, 21
                  addi       tp, s9, -937
                  c.or       s1, a1
                  slt        tp, t4, s2
                  and        s8, s2, s4
                  mul        s10, s3, s7
                  c.addi     a1, -1
                  divu       a0, a7, t4
                  mulhsu     a3, sp, a7
497:              c.or       a0, a4
                  mul        t0, t3, ra
                  sltu       ra, a3, t4
                  c.addi     t0, -1
                  bltu       t1, s9, 511f
                  srli       tp, s0, 10
                  bne        ra, zero, 514f
                  mulh       a3, ra, sp
                  mulh       s1, a3, s10
                  divu       t4, s9, a5
                  bltu       s5, t1, 523f
                  csrrwi     t2, 0x340, 26
                  mulhsu     a7, sp, a5
                  csrrw      t0, 0x340, t2
511:              rem        t2, a1, a0
                  csrrs      a6, 0x340, t6
                  c.sub      s0, a3
514:              c.srli     a1, 13
                  beq        s5, a4, 534f
                  c.beqz     a3, 529f
                  mulhu      a0, a3, sp
                  c.srli     a4, 23
                  beq        t3, s3, 537f
                  slli       a3, t6, 6
                  sltiu      a3, ra, 976
                  xori       gp, a4, -479
523:              csrrci     tp, 0x340, 29
                  and        a1, s6, t2
                  xor        t0, tp, a6
                  mul        s5, sp, zero
                  srli       a3, a5, 17
                  xor        a1, zero, t3
529:              sltu       s9, t4, t1
                  sub        t4, s0, a2
                  csrrs      a3, 0x340, t0
                  ori        s3, a7, -441
                  auipc      s5, 446462
534:              andi       t6, s7, 496
                  srli       t6, ra, 31
                  auipc      tp, 314399
537:              div        a2, a4, s4
                  mulhu      t3, a0, s10
                  fence.i
                  fence.i
                  blt        t1, s6, 550f
                  sltu       a7, a5, a0
                  csrrs      t2, 0x340, s1
                  c.bnez     a0, 553f
                  nop
                  srl        t6, s2, tp
                  bne        s11, s10, 555f
                  slti       a5, t6, 969
                  sll        a2, s8, s3
550:              ori        a5, t2, -300
                  add        t5, a1, s4
                  add        s6, gp, s6
553:              add        t1, s6, a5
                  csrrwi     s9, 0x340, 28
555:              csrrs      s0, 0x340, s7
                  sub        a3, a2, s9
                  mulhsu     t0, s4, a1
                  or         t2, s1, s11
                  bge        a3, a4, 574f
                  ori        t4, s0, 349
                  csrrci     s10, 0x340, 18
                  remu       s2, s5, s3
                  c.beqz     s1, 568f
                  sra        a3, a7, zero
                  la         s3, region_3+482 #start riscv_hazard_instr_stream_6
                  csrrsi     t1, 0x340, 28
                  c.sub      s0, s0
                  c.mv       s0, s0
                  lbu        t1, 1(s3)
                  sb         t1, -181(s3)
                  lb         s5, -205(s3)
                  lbu        t6, 21(s3)
                  divu       s2, t6, t1
                  sb         s2, -125(s3)
                  andi       t6, s5, -107
                  lbu        t6, -201(s3)
                  lhu        t6, 20(s3)
                  sb         t1, 9(s3)
                  c.li       a1, -1
                  mulh       s5, a1, a1
                  sb         s2, -119(s3)
                  srl        t6, a1, s2
                  lbu        s0, -205(s3)
                  srli       s5, s0, 5
                  remu       s5, s0, t1
                  sw         a1, -38(s3)
                  add        s2, a1, s5
                  lb         t6, -79(s3)
                  sh         s5, -204(s3)
                  addi       t1, s5, -335
                  lb         s0, -398(s3)
                  csrrwi     s0, 0x340, 2
                  lb         s0, 5(s3)
                  c.or       a1, s0
                  srai       s5, a1, 27
                  sb         s2, -464(s3)
                  lbu        s5, 21(s3)
                  sb         s0, -17(s3)
                  xor        s2, t6, s0
                  sb         a1, -109(s3)
                  sb         t6, -67(s3)
                  mul        s5, t6, s0
                  c.lui      s5, 24
                  sb         s5, -101(s3)
                  lbu        t6, -351(s3)
                  csrrwi     s5, 0x340, 15
                  addi       t1, s0, 470
                  sb         s5, -221(s3)
                  c.xor      s0, a1
                  lh         s0, -18(s3)
                  sb         t6, 7(s3)
                  lhu        t6, -390(s3)
                  lb         s0, -413(s3)
                  csrrwi     s2, 0x340, 31
                  mulhu      s5, a1, s2
                  csrrw      s5, 0x340, s0
                  lb         s5, -467(s3) #end riscv_hazard_instr_stream_6
                  or         a4, s5, s9
                  mul        tp, a4, s2
                  csrrw      s0, 0x340, t5
568:              c.xor      a1, a4
                  bgeu       ra, s0, 578f
                  sll        ra, t3, tp
                  srl        ra, t2, ra
                  bgeu       sp, a3, 590f
                  add        t3, a2, sp
574:              sltu       a3, ra, a2
                  .4byte 0xee89de73 # kIllegalSystemInstr
                  blt        s5, gp, 584f
                  beq        tp, gp, 591f
                  or         a0, t0, s2
578:              c.nop
                  divu       s2, a1, s5
                  csrrci     a0, 0x340, 9
                  rem        zero, gp, s3
                  c.bnez     s0, 600f
                  srai       t0, s7, 15
584:              slt        s0, s6, ra
                  auipc      a7, 912110
                  beq        t3, t5, 590f
                  c.add      tp, t5
                  divu       t5, t2, a3
                  csrrs      a1, 0x340, a0
590:              csrrw      a6, 0x340, ra
591:              lui        s0, 953945
                  c.beqz     a1, 601f
                  c.add      t0, s11
                  and        a4, t5, a4
                  xor        a4, s5, ra
                  c.and      a5, a3
                  c.andi     a1, 22
                  .4byte 0x9938 # kReservedCompressedInstr
                  c.li       a1, 7
                  slti       a6, s1, -159
600:              c.mv       gp, a7
601:              csrrci     t5, 0x340, 28
                  sltiu      s11, a1, -766
                  slt        a2, s5, ra
                  mul        s6, s2, t0
                  bltu       s11, a0, 617f
                  add        a1, t5, sp
                  c.nop
                  ori        s3, zero, 242
                  andi       s8, zero, -149
                  c.and      s1, a0
                  c.bnez     s0, 629f
                  c.srli     s0, 8
                  remu       gp, t5, t2
                  c.beqz     s1, 629f
                  rem        a0, t3, gp
                  csrrs      a6, 0x340, a7
617:              mulh       a7, s10, t6
                  xori       t6, s6, -676
                  fence
                  c.xor      a0, s1
                  andi       t5, s2, 196
                  fence
                  .4byte 0x55d8d873 # kIllegalSystemInstr
                  add        zero, a5, a3
                  c.bnez     a0, 626f
                  csrrc      t1, 0x340, a5
626:              c.beqz     s1, 635f
                  c.xor      a2, a4
                  sltu       t6, gp, a6
629:              fence.i
                  bne        s3, a6, 638f
                  c.lui      s10, 30
                  csrrc      s0, 0x340, a3
                  divu       s9, a3, s7
                  fence.i
635:              fence
                  andi       a4, a1, 566
                  blt        a6, s0, 652f
638:              fence
                  bltu       t0, s8, 653f
                  bgeu       a4, a0, 647f
                  c.andi     a0, 11
                  sub        a1, a5, ra
                  sra        a0, a1, sp
                  andi       s9, t0, 628
                  csrrw      a3, 0x340, a3
                  c.nop
647:              c.add      a5, s0
                  xori       a6, t2, -46
                  nop
                  c.li       a1, -1
                  srai       t1, t3, 9
652:              bltu       sp, gp, 659f
653:              ori        a0, s8, -401
                  slti       t4, tp, -348
                  csrrw      ra, 0x340, t2
                  c.mv       tp, t4
                  mulhsu     t6, s1, s5
                  xori       s6, t0, 319
659:              add        a7, ra, s7
                  c.lui      s9, 3
                  c.and      a3, s0
                  la         a4, region_3+125 #start load_store_instr_stream_2
                  la         s9, region_3+25 #start load_store_instr_stream_0
                  la         s8, region_3+251 #start load_store_instr_stream_1
                  sb         t3, 146(a4)
                  la         a3, region_3+71 #start load_store_instr_stream_3
                  lbu        s1, -216(s8)
                  sh         ra, 55(s9)
                  sb         s9, -111(s8)
                  sw         t1, -179(s8)
                  sb         a0, -200(s8)
                  lbu        t3, 33(a3)
                  lbu        a7, -121(a4)
                  lhu        tp, 23(s8)
                  lb         t5, 37(s9)
                  sh         zero, 197(a3)
                  lb         t5, 16(a4)
                  lhu        t5, 13(s9)
                  lhu        s1, 59(s9)
                  lbu        t5, -190(s8)
                  sb         t4, 16(a4)
                  lb         t0, -3(s9)
                  sb         s2, 178(a4)
                  sb         t3, -12(s9)
                  lb         a1, 244(s8)
                  sb         t6, 57(a3)
                  sb         a3, -117(a4) #end load_store_instr_stream_2
                  lb         t3, 120(a3)
                  lh         s11, -219(s8)
                  sb         a2, 17(s9)
                  sb         s8, 236(a3) #end load_store_instr_stream_3
                  sb         a6, 82(s8)
                  lbu        a0, -52(s8) #end load_store_instr_stream_1
                  lh         t3, 49(s9) #end load_store_instr_stream_0
                  sltiu      s6, t3, 37
                  srli       a1, a7, 4
                  bne        a4, t6, 679f
                  slt        t3, tp, s9
                  c.xor      a1, a5
                  lui        t2, 222152
                  sll        t4, t2, a6
                  csrrc      s5, 0x340, s9
                  bltu       a1, s10, 675f
                  andi       s0, zero, -507
                  andi       s3, a1, -213
                  c.nop
                  csrrw      s3, 0x340, a6
675:              bne        t2, a4, 693f
                  c.beqz     a2, 689f
                  addi       a5, zero, 10 #init loop 1 counter
                  mulh       s5, zero, t5
                  xor        tp, s8, t0
                  c.addi     gp, 4
                  addi       zero, zero, 0 #init loop 1 limit
sub_5_41_1_t:     c.sub      s1, a2
                  add        s8, ra, t1
                  addi       a5, a5, -10 #update loop 1 counter
                  csrrci     tp, 0x340, 22
                  addi       a4, zero, 10 #init loop 0 counter
                  addi       s0, zero, 2 #init loop 0 limit
sub_5_41_0_t:     or         gp, s9, tp
                  or         t2, s9, s1
                  addi       a4, a4, -1 #update loop 0 counter
                  csrrs      s10, 0x340, s7
                  bgeu       a4, s0, sub_5_41_0_t #branch for loop 0
                  csrrs      s1, 0x340, a5
                  c.beqz     a5, sub_5_41_1_t #branch for loop 1
                  csrrw      a0, 0x340, gp
                  slt        s10, a4, s4
                  c.lui      t5, 12
679:              c.mv       a1, a6
                  c.li       s0, -1
                  csrrsi     t1, 0x340, 16
                  bltu       s0, s1, 697f
                  c.mv       tp, s3
                  or         s1, t2, s6
                  sra        a0, s0, t3
                  fence
                  c.add      a5, s3
                  c.li       a2, 21
689:              bne        s3, s8, 693f
                  csrrs      a5, 0x340, t6
                  c.beqz     a3, 711f
                  c.and      a3, a5
693:              sltiu      s10, s11, 734
                  c.and      a4, a5
                  mulh       a3, s3, t5
                  mul        tp, s10, ra
697:              mulh       a4, t1, a4
                  sra        s9, t3, s10
                  sub        t1, zero, s5
                  mulh       a4, t0, s8
                  srli       s8, a3, 16
                  xori       gp, a0, -809
                  nop
                  addi       t4, s1, -65
                  mul        t4, s2, t3
                  c.li       s9, 13
                  c.andi     a2, 8
                  c.sub      a5, a4
                  slti       tp, t1, 376
                  mulhu      tp, a4, s10
711:              addi       s6, a0, 884
                  add        tp, t2, a2
                  mulh       ra, t6, a4
                  slt        t3, a7, t5
                  add        s10, a5, s11
                  slli       t6, s0, 21
                  csrrc      a4, 0x340, s3
                  bne        s0, a6, 727f
                  lui        s6, 960973
                  fence.i
                  divu       a4, s1, a3
                  csrrsi     s11, 0x340, 16
                  divu       a4, a2, t3
                  c.bnez     a5, 734f
                  c.andi     a3, -1
                  c.lui      t5, 30
727:              c.srli     a2, 19
                  ori        a3, s9, -367
                  andi       a6, t2, 733
                  andi       a7, s9, -725
                  sltiu      s9, s8, -84
                  c.sub      s0, s0
                  c.or       a2, a1
734:              xori       t2, tp, 482
                  c.andi     a5, 3
                  srai       a2, ra, 0
                  bne        s2, a5, 751f
                  bltu       t1, s5, 747f
                  auipc      zero, 844316
                  srli       s5, t4, 23
                  csrrc      s9, 0x340, a5
                  lui        a0, 6680
                  c.srli     a5, 15
                  sll        t6, s3, s4
                  csrrs      a0, 0x340, a6
                  fence
747:              c.or       s1, a3
                  slt        gp, sp, gp
                  bge        ra, ra, 757f
                  c.xor      a3, a0
751:              c.srai     a2, 18
                  c.slli     t3, 14
                  srai       s3, tp, 6
                  mul        t2, t3, s6
                  div        s0, tp, sp
                  c.nop
757:              c.srli     a5, 2
                  add        a6, s3, a7
                  csrrsi     a1, 0x340, 15
                  csrrc      t1, 0x340, a2
                  add        t2, zero, s6
                  sra        s10, s5, s2
                  c.and      s1, s0
                  mulhu      a3, s4, a6
                  c.xor      a4, a2
                  c.or       a0, a2
                  c.mv       tp, t0
                  mulhsu     s5, s6, s10
                  c.xor      s0, a5
                  ori        t0, t2, 126
                  csrrc      a5, 0x340, a0
                  csrrc      s1, 0x340, s3
                  fence
                  and        a5, t4, ra
                  c.sub      a3, a2
                  mulhu      s5, s3, zero
                  mulhu      t3, t2, t3
                  rem        s10, t5, t1
                  c.bnez     s0, 788f
                  bne        a2, s7, 798f
                  auipc      a0, 726353
                  fence
                  lui        t1, 662084
                  csrrs      s5, 0x340, a5
                  fence
                  c.lui      s3, 20
                  sub        gp, a3, tp
788:              divu       t0, t5, sp
                  c.and      a2, a1
                  fence
                  csrrwi     a0, 0x340, 19
                  sltu       t0, t0, ra
                  c.andi     a1, -1
                  bge        gp, t1, 804f
                  bgeu       s6, s10, 804f
                  ori        s5, s1, -750
                  sltiu      a7, t2, -267
798:              slli       s8, s10, 20
                  c.or       a1, a0
                  sub        s5, gp, s0
                  beq        a7, t0, 803f
                  .4byte 0x247570a3 # kIllegalFunc3
                  mul        t1, t2, a2
803:              sub        s9, s8, t1
804:              c.nop
                  srli       t6, t5, 3
                  csrrwi     t0, 0x340, 15
                  remu       s6, s7, a1
                  xor        s6, a3, a4
                  c.nop
                  ori        s6, sp, -717
                  mulhu      s6, a7, t3
                  srai       a5, t5, 15
                  blt        a0, t1, 822f
                  blt        s7, s8, 829f
                  c.andi     s0, 20
                  c.nop
                  fence
                  mul        s1, gp, s3
                  bne        a2, a3, 837f
                  xor        t1, t5, t1
                  slti       t0, s10, 899
822:              c.andi     a3, -1
                  c.li       a4, -1
                  sll        a5, t0, t3
                  xori       t5, a1, 1020
                  or         s11, t2, s0
                  c.addi     s6, -1
                  c.nop
829:              bgeu       t3, a3, 844f
                  srl        ra, s10, t4
                  mul        s5, ra, t2
                  or         t3, s10, s1
                  sltiu      s11, s8, -212
                  slt        t4, s9, a2
                  mulh       tp, a6, t4
                  c.or       s0, a4
837:              bgeu       s2, s3, 856f
                  ori        t1, sp, -792
                  slt        s2, t0, t0
                  c.lui      s3, 27
                  c.beqz     a0, 853f
                  div        zero, s11, t2
                  csrrwi     t5, 0x340, 1
844:              fence
                  andi       a7, s3, 185
                  srli       s2, t5, 25
                  c.sub      a4, a4
                  srl        s0, a2, a0
                  c.andi     a2, 2
                  c.add      a7, s11
                  slti       s0, s7, 274
                  c.or       s1, a5
853:              bltu       t5, t2, 862f
                  slti       gp, a1, 333
                  c.or       a3, a2
856:              csrrwi     t1, 0x340, 15
                  remu       a4, a3, gp
                  c.beqz     a1, 876f
                  csrrs      a3, 0x340, s1
                  bgeu       t5, t2, 871f
                  sra        a4, s2, tp
862:              nop
                  c.srli     a1, 31
                  c.andi     a4, -1
                  add        s6, gp, sp
                  xor        s3, s5, a5
                  sltiu      tp, s2, 96
                  bne        a0, t5, 876f
                  xori       a1, a1, -695
                  c.mv       s0, a1
871:              c.slli     a6, 20
                  mul        t6, t3, zero
                  sltiu      s1, gp, 907
                  mulhsu     a7, s10, s11
                  mulhu      t3, s11, t0
876:              sltu       s6, s7, t4
                  bne        s8, s10, 893f
                  blt        sp, t5, 887f
                  lui        a2, 470184
                  c.and      a3, s0
                  mul        ra, ra, t1
                  c.beqz     a3, 890f
                  xor        s8, s0, ra
                  mul        s10, a1, s7
                  c.srai     a0, 11
                  andi       a7, a4, -684
887:              csrrci     t3, 0x340, 26
                  csrrs      t0, 0x340, a6
                  mul        a1, s6, s7
890:              srai       a5, sp, 12
                  c.xor      a3, a5
                  fence
893:              slt        s11, s4, t2
                  mulh       t1, s10, a3
                  c.nop
                  csrrc      a4, 0x340, a1
                  bne        s8, a0, 907f
                  srai       a1, a1, 13
                  fence.i
                  c.add      tp, a5
                  c.or       s0, a0
                  rem        gp, a5, a6
                  csrrci     s10, 0x340, 12
                  c.and      a2, s0
                  sltu       s3, a5, s7
                  c.srli     a3, 24
907:              remu       t3, s6, s3
                  mulhsu     a4, s10, zero
                  c.sub      a2, a0
                  bne        a2, s3, 925f
                  and        t1, s6, a5
                  slli       s11, tp, 18
                  c.beqz     a3, 922f
                  xori       t3, sp, -301
                  slli       t1, s3, 27
                  csrrsi     a4, 0x340, 27
                  mulh       s8, t0, a5
                  c.or       a5, a3
                  or         a6, s5, a2
                  mulhu      s9, a4, t1
                  c.bnez     s0, 930f
922:              xor        a1, t5, gp
                  c.add      t4, tp
                  c.bnez     a3, 937f
925:              c.andi     a0, -1
                  mul        a6, t2, a5
                  ori        s2, ra, -148
                  divu       s8, a4, s0
                  nop
930:              csrrwi     a1, 0x340, 17
                  bltu       a4, s0, 933f
                  auipc      t6, 127437
933:              c.lui      s8, 23
                  beq        s11, a4, 949f
                  srli       a0, t4, 30
                  csrrc      t5, 0x340, a4
937:              sub        a1, s1, s9
                  c.add      t6, tp
                  bne        zero, s0, 951f
                  auipc      ra, 758853
                  c.add      a3, s6
                  xori       zero, a6, -11
                  srli       a7, a6, 22
                  srli       t2, s11, 5
                  c.mv       a2, a0
                  sltiu      a7, t5, -1004
                  c.add      s6, s10
                  mulhu      t0, a0, ra
949:              remu       t5, a5, s9
                  mulhu      a2, t0, s2
951:              mul        t1, t6, t1
                  lui        s9, 963852
                  beq        s5, a5, 969f
                  srai       t6, t1, 14
                  srai       gp, s8, 21
                  bge        s8, s7, 971f
                  slli       a6, s8, 12
                  fence.i
                  andi       s8, a4, -16
                  c.add      t1, a5
                  addi       s10, t1, 999
                  c.or       a3, a4
                  mulhu      a7, s10, gp
                  xor        a7, sp, s3
                  c.bnez     a1, 983f
                  xor        a1, s1, s4
                  csrrc      a4, 0x340, t2
                  mulh       s0, a7, a6
969:              addi       t0, tp, -795
                  mul        t2, a4, t0
971:              mulhsu     s0, s9, a2
                  fence
                  c.slli     t4, 21
                  addi       a3, s1, -217
                  sra        t4, s8, s0
                  csrrsi     s2, 0x340, 20
                  sltiu      t4, gp, 862
                  bltu       a0, s7, 987f
                  ori        s1, a5, 801
                  csrrsi     a5, 0x340, 20
                  bltu       a4, a1, 985f
                  c.li       a4, -1
983:              auipc      t6, 754545
                  slti       s9, tp, -631
985:              c.mv       s5, s10
                  sra        s11, a5, s3
987:              mulh       t1, s4, s5
                  fence
                  auipc      a5, 143673
                  addi       s3, t0, -948
                  csrrc      a6, 0x340, a5
                  auipc      a7, 651586
                  csrrsi     a5, 0x340, 27
                  c.add      s6, s2
                  bgeu       s1, gp, 1015f
                  fence.i
                  csrrwi     tp, 0x340, 0
                  and        t3, t0, t5
                  and        t6, gp, s0
                  c.and      a1, a0
                  remu       t4, s9, s8
                  c.mv       gp, s0
                  andi       a2, tp, -340
                  bge        ra, s6, 1013f
                  mul        s11, s0, a0
                  c.andi     a0, 24
                  c.mv       s10, s4
                  or         a3, s11, s7
                  addi       t5, s0, -256
                  auipc      s5, 940048
                  mulh       ra, s6, t5
                  auipc      s6, 853164
1013:             blt        s6, t0, 1023f
                  slti       s10, s5, -213
1015:             c.slli     a7, 7
                  c.bnez     a1, 1034f
                  addi       t2, zero, 10 #init loop 1 counter
                  add        a4, s11, s8
                  sll        s2, s1, gp
                  addi       s11, zero, 10 #init loop 1 limit
                  csrrc      a6, 0x340, ra
                  csrrs      a4, 0x340, s8
sub_5_43_1_t:     div        s5, s7, ra
                  or         t6, ra, a4
                  ori        ra, a2, 174
                  csrrc      a5, 0x340, a2
                  sra        s10, t0, t3
                  addi       t2, t2, -1 #update loop 1 counter
                  addi       a1, zero, 7 #init loop 0 counter
                  ori        t1, s3, 552
                  addi       zero, zero, 0 #init loop 0 limit
                  mulh       t6, s10, s3
sub_5_43_0_t:     andi       s2, a4, 227
                  div        s6, s11, s7
                  csrrsi     s6, 0x340, 14
                  mulhsu     t5, ra, a4
                  srai       s3, t5, 24
                  addi       a1, a1, -7 #update loop 0 counter
                  c.addi     s6, -1
                  c.mv       a4, a6
                  sltiu      s10, s0, -903
                  c.bnez     a1, sub_5_43_0_t #branch for loop 0
                  xor        s9, s7, a7
                  c.add      t6, a4
                  bgeu       t2, s11, sub_5_43_1_t #branch for loop 1
                  c.slli     a0, 1
                  c.addi     ra, 31
                  divu       t6, a5, a0
                  c.beqz     s0, 1038f
                  c.add      ra, s10
                  csrrwi     zero, 0x340, 2
                  slti       s8, s1, 337
1023:             mulhsu     gp, a5, t0
                  sltiu      s8, a6, -148
                  c.li       gp, 9
                  csrrw      s3, 0x340, a4
                  div        t4, s1, zero
                  c.slli     a5, 11
                  addi       t3, a3, -275
                  sra        s9, s8, s9
                  bltu       s7, sp, 1039f
                  c.nop
                  csrrw      s11, 0x340, a4
1034:             srli       t6, ra, 9
                  xor        a4, s7, t3
                  c.beqz     a3, 1054f
                  sub        a3, t4, a0
1038:             bge        a5, t5, 1049f
1039:             mulh       a5, s9, a3
                  mulh       a3, a3, s11
                  addi       zero, t0, -907
                  remu       tp, a1, s3
                  c.addi     a4, -1
                  c.lui      a3, 16
                  mulh       s6, a1, tp
                  beq        a5, a0, 1053f
                  csrrsi     s2, 0x340, 12
                  lui        a5, 852998
1049:             remu       s2, a4, s0
                  mulhsu     s8, s7, s4
                  c.bnez     a3, 1060f
                  bgeu       s9, s8, 1061f
1053:             sub        a1, t3, a7
1054:             bge        a7, t4, 1069f
                  addi       a0, s10, 964
                  sra        t0, t6, a4
                  sltiu      s9, a2, 276
                  sltiu      t2, t6, -106
                  sra        a3, s11, a2
1060:             c.li       t6, 8
1061:             c.nop
                  csrrsi     t2, 0x340, 21
                  addi       s2, t0, -201
                  div        t2, a1, a3
                  slt        s6, t0, ra
                  remu       a2, a6, s7
                  divu       t3, s3, t1
                  mulhu      gp, sp, s10
1069:             c.srai     a0, 8
                  bgeu       a1, a7, 1088f
                  csrrci     a7, 0x340, 13
                  c.nop
                  xori       a3, s10, -902
                  sub        s9, s3, s4
                  sra        s11, zero, t4
                  c.slli     s8, 1
                  or         s0, t1, a0
                  c.or       s1, a0
                  c.beqz     s0, 1084f
                  xori       s0, t4, -425
                  mulh       s6, sp, a7
                  sltiu      tp, t2, 62
                  c.andi     s0, -1
1084:             bltu       t5, s4, 1093f
                  bne        s3, s10, 1099f
                  c.xor      s0, a4
                  fence.i
1088:             c.andi     a0, 11
                  xor        s9, t2, a1
                  divu       a4, t3, s7
                  mulh       t4, s6, ra
                  srli       t6, a2, 12
1093:             beq        a2, t3, 1100f
                  c.andi     a5, 16
                  csrrwi     a7, 0x340, 26
                  c.or       a4, a5
                  c.beqz     a0, 1105f
                  xori       s3, s6, 906
1099:             bge        s6, a5, 1113f
1100:             xor        s0, t0, a7
                  csrrsi     ra, 0x340, 19
                  c.and      a1, a4
                  fence
                  beq        zero, a6, 1116f
1105:             sra        s5, s8, s1
                  mulhu      a2, s6, t0
                  rem        t1, t2, s10
                  xori       a4, s5, 944
                  csrrsi     zero, 0x340, 16
                  bltu       a1, t6, 1128f
                  c.xor      a0, s1
                  mulh       a4, s5, a5
1113:             ori        t5, t5, 315
                  andi       s2, s9, -309
                  ori        a4, s7, 163
1116:             csrrc      a3, 0x340, tp
                  and        s0, s4, t1
                  c.srli     s1, 8
                  addi       t6, a7, -1017
                  sltiu      a7, a6, 19
                  bltu       s2, t5, 1139f
                  c.nop
                  bne        a2, tp, 1132f
                  nop
                  auipc      s0, 649399
                  c.sub      s0, s0
                  c.or       a2, s0
1128:             sub        t5, s2, s9
                  auipc      s8, 15977
                  xori       t1, t0, -589
                  slt        a3, a1, zero
1132:             rem        gp, t0, t2
                  slli       a0, t5, 14
                  blt        a4, s3, 1150f
                  srai       a6, s8, 11
                  bgeu       t0, a1, 1140f
                  srli       a1, s7, 6
                  c.add      a1, s11
1139:             remu       a6, s10, sp
1140:             fence.i
                  sll        s10, a1, s11
                  c.sub      a0, a1
                  c.li       s9, 30
                  addi       a0, a2, 599
                  xor        s5, zero, t3
                  srli       s3, s3, 27
                  div        tp, a1, s4
                  blt        t6, tp, 1157f
                  c.or       a3, a4
1150:             blt        gp, t0, 1159f
                  c.srai     s0, 16
                  c.bnez     a4, 1167f
                  remu       s10, s4, a2
                  srai       a0, sp, 29
                  c.xor      s0, a5
                  slti       a1, s1, -727
1157:             beq        s10, a6, 1166f
                  sra        ra, zero, s2
1159:             c.mv       tp, a3
                  slti       a1, a2, 145
                  slt        s2, tp, t1
                  sll        t0, tp, s9
                  mulhsu     t4, gp, zero
                  c.and      a3, a1
                  xor        a3, t5, s6
1166:             auipc      s11, 969647
1167:             xor        a4, t0, s6
                  csrrc      s10, 0x340, s8
                  c.and      a1, a0
                  sub        s5, s11, zero
                  div        a7, a4, t4
                  c.beqz     a2, 1183f
                  addi       a3, t2, 14
                  slli       t6, s11, 26
                  mulh       s10, s3, t0
                  c.or       s1, a2
                  slt        a6, t4, zero
                  c.or       a3, a3
                  c.nop
                  csrrw      gp, 0x340, s8
                  andi       a2, t0, -911
                  ori        t4, s4, 187
1183:             c.add      t1, s2
                  c.slli     s10, 21
                  remu       t1, s2, t3
                  c.add      t6, a1
                  c.sub      a2, a2
                  mulhsu     s6, sp, s0
                  sub        t5, sp, t1
                  c.mv       s11, s8
                  c.mv       t5, t2
                  slt        a3, s8, s1
                  srli       s2, a6, 3
                  c.bnez     a5, 1213f
                  sltu       s11, s0, a4
                  mul        t4, a5, a4
                  c.li       s11, 19
                  csrrsi     a6, 0x340, 13
                  csrrci     gp, 0x340, 9
                  c.or       s0, a2
                  sll        a4, s9, t4
                  or         s3, sp, t3
                  mul        a3, gp, t1
                  c.andi     a3, -1
                  c.beqz     a2, 1218f
                  fence
                  c.nop
                  lui        a1, 980459
                  mulhu      s2, t6, s8
                  add        ra, a6, s5
                  mulhu      a1, t2, a6
                  csrrci     a5, 0x340, 7
1213:             slt        s6, s10, s3
                  slt        gp, t3, s0
                  bltu       a7, a1, 1235f
                  c.nop
                  sub        s0, s0, t3
1218:             srli       s10, s1, 27
                  sra        s1, s0, t1
                  c.nop
                  or         s1, t6, t1
                  csrrw      s1, 0x340, s6
                  or         tp, t0, s11
                  addi       t2, t0, 563
                  divu       s11, a5, a5
                  andi       t5, zero, -41
                  c.beqz     a1, 1236f
                  c.addi     a1, 22
                  mulh       ra, a3, t0
                  la         a3, region_3+347 #start riscv_hazard_instr_stream_4
                  c.mv       a0, s0
                  slti       t4, s6, 425
                  sll        a7, a0, s6
                  nop
                  c.nop
                  lb         s0, -43(a3)
                  lb         a0, -24(a3)
                  nop
                  sb         a0, -7(a3)
                  csrrsi     s0, 0x340, 18
                  nop
                  nop
                  srl        s0, t6, a7
                  c.andi     a0, -1
                  sh         t6, 55(a3)
                  c.lui      a0, 26
                  sb         t4, -60(a3)
                  lui        s0, 558313
                  fence
                  lbu        t4, 61(a3)
                  mul        t6, s0, a7
                  andi       t6, t4, 180
                  fence.i
                  csrrw      a7, 0x340, t6
                  sltiu      s0, s0, 305
                  sltiu      a0, s0, -501
                  c.srli     s0, 18
                  lbu        t6, -44(a3)
                  and        a0, t6, a0
                  mulhu      s6, s0, t4
                  lb         a0, -17(a3)
                  c.xor      a0, s0
                  sw         t4, 17(a3)
                  lb         s0, -19(a3)
                  srl        t4, t6, t6
                  c.srai     s0, 8
                  c.addi     s6, -1
                  lb         t4, -13(a3)
                  lb         s0, 24(a3) #end riscv_hazard_instr_stream_4
                  rem        a2, s4, a4
                  auipc      s3, 265572
                  c.slli     s3, 30
                  c.li       t5, 19
                  .4byte 0xd95ce48b # kIllegalOpcode
                  beq        s10, a0, 1244f
1235:             sltiu      s5, s7, -922
1236:             c.add      gp, s7
                  or         s10, a5, s5
                  remu       a7, s6, sp
                  c.mv       a7, s4
                  csrrsi     gp, 0x340, 0
                  csrrw      s2, 0x340, s7
                  c.slli     a6, 15
                  csrrwi     t4, 0x340, 29
1244:             srl        t4, s6, a7
                  add        s8, a1, a5
                  bge        s11, t0, 1261f
                  c.mv       s1, a1
                  c.beqz     s0, 1266f
                  div        s5, t1, s5
                  srli       s11, s10, 30
                  slli       a4, s3, 15
                  srai       zero, a0, 19
                  c.bnez     a4, 1268f
                  c.addi     s5, -1
                  andi       a0, t0, -763
                  srl        s11, a2, s9
                  c.beqz     s0, 1262f
                  csrrci     s3, 0x340, 26
                  c.addi     t0, 6
                  nop
1261:             sub        a3, t4, s5
1262:             sra        t2, t1, a0
                  fence.i
                  c.addi     a2, -1
                  bge        t3, s7, 1275f
1266:             or         s3, s8, s6
                  sltiu      gp, t6, 199
1268:             beq        t5, a6, 1283f
                  slt        s9, a0, s8
                  c.addi     a6, 28
                  c.andi     a3, -1
                  srl        s10, t6, t1
                  c.or       s0, a1
                  srli       gp, s0, 17
1275:             addi       gp, zero, -942
                  div        s10, tp, s5
                  srl        t5, s3, a2
                  c.and      a5, a1
                  c.andi     a2, 11
                  addi       s5, s5, 928
                  c.srli     a3, 4
                  c.xor      a3, s0
1283:             c.beqz     a0, 1301f
                  srli       s2, t0, 13
                  andi       s3, s10, 648
                  sll        s2, ra, s5
                  mul        a1, s5, s3
                  slli       gp, sp, 16
                  xor        s10, s7, s3
                  c.srli     a3, 30
                  blt        s5, t5, 1299f
                  c.and      a1, s1
                  csrrw      s2, 0x340, a6
                  c.andi     a5, -1
                  fence
                  div        a3, ra, zero
                  and        a5, s9, s7
                  c.mv       s10, s8
1299:             c.andi     a0, 5
                  xor        s11, s10, t6
1301:             bgeu       a7, s8, 1310f
                  rem        t3, s4, t0
                  c.or       a4, a5
                  srai       a3, t5, 12
                  c.xor      a0, a1
                  c.mv       tp, s8
                  mulhu      s10, s7, t4
                  c.srli     a4, 13
                  c.slli     a7, 16
1310:             sltiu      s1, s11, 35
                  lui        a0, 427056
                  srl        s10, t5, zero
                  c.nop
                  c.andi     a5, -1
                  mulh       zero, s1, s0
                  addi       t2, a5, 765
                  c.andi     a2, -1
                  mulhu      s3, s5, s7
                  sra        s5, a2, s3
                  csrrs      a4, 0x340, s10
                  blt        t3, s3, 1323f
                  c.xor      a2, a2
1323:             auipc      s2, 290616
                  beq        t2, a1, 1333f
                  c.beqz     s0, 1335f
                  c.and      s1, s1
                  mul        s11, a6, s6
                  bge        zero, s1, 1343f
                  or         a4, s2, a3
                  andi       s3, a1, -258
                  fence.i
                  bltu       s7, s0, 1340f
1333:             sra        ra, t4, a7
                  csrrwi     a7, 0x340, 3
1335:             c.or       a4, a5
                  rem        s11, a7, s6
                  lui        s2, 366876
                  c.srai     a2, 15
                  c.beqz     a4, 1348f
1340:             c.bnez     a0, 1359f
                  andi       s8, a6, 749
                  ori        a2, s0, 374
1343:             add        s6, s2, s10
                  c.srai     a4, 28
                  or         t0, s2, s1
                  c.lui      t2, 20
                  c.nop
1348:             xor        s6, zero, s0
                  xori       s6, t4, 679
                  mulhu      s6, t1, s3
                  sll        s3, t4, t1
                  c.beqz     a1, 1360f
                  bltu       a7, a5, 1362f
                  mulhu      t1, s5, tp
                  c.nop
                  bltu       t4, t3, 1365f
                  ori        t1, s1, 993
                  csrrci     s9, 0x340, 13
1359:             srai       a4, t4, 29
1360:             csrrc      t4, 0x340, gp
                  srli       t4, zero, 4
1362:             sltu       a6, s4, a0
                  ori        t5, t3, 840
                  c.li       a2, 28
1365:             csrrwi     zero, 0x340, 27
                  bltu       gp, s5, 1375f
                  and        s6, gp, s3
                  andi       a3, t1, 296
                  c.add      s6, s9
                  csrrwi     zero, 0x340, 5
                  bltu       s10, t0, 1386f
                  divu       ra, s1, a2
                  c.addi     s6, 8
                  c.andi     s0, 10
1375:             c.xor      a4, s1
                  csrrc      a4, 0x340, a7
                  c.addi     s9, 13
                  xor        s2, t1, a0
                  auipc      t2, 454249
                  remu       zero, a0, t5
                  srli       a7, s5, 7
                  nop
                  slt        a6, s1, s2
                  c.srai     a1, 13
                  mulh       t6, t6, t4
1386:             c.andi     s0, -1
                  c.srai     s0, 18
                  mulhu      s1, a4, s3
                  c.mv       t1, tp
                  sltu       a6, a3, s11
                  nop
                  beq        t2, s2, 1404f
                  csrrc      s0, 0x340, s7
                  c.addi     s10, -1
                  csrrw      t2, 0x340, a4
                  addi       a5, s3, 983
                  fence.i
                  csrrc      tp, 0x340, s1
                  csrrw      s0, 0x340, a0
                  srai       s0, s2, 5
                  c.srai     a2, 20
                  csrrw      s10, 0x340, s7
                  bge        tp, t5, 1418f
1404:             slt        tp, s1, s5
                  or         a2, t3, gp
                  andi       tp, s8, 761
                  c.sub      s1, a2
                  bne        a4, s6, 1417f
                  auipc      s9, 505551
                  slli       a0, a2, 14
                  c.or       s0, a4
                  c.lui      a3, 17
                  mulhu      s0, s8, a1
                  auipc      s3, 360596
                  and        t5, s10, s0
                  csrrsi     s9, 0x340, 15
1417:             slli       t3, sp, 12
1418:             fence
                  blt        s5, s7, 1429f
                  csrrc      a5, 0x340, tp
                  c.nop
                  or         t1, a2, t2
                  c.nop
                  c.bnez     a2, 1429f
                  c.sub      s0, a0
                  add        a2, t2, t6
                  xori       a0, t0, 932
                  sra        s9, a1, t5
1429:             csrrwi     s0, 0x340, 29
                  srl        gp, gp, t2
                  c.srai     s1, 21
                  sra        s11, t4, s1
                  div        s3, t3, a5
                  mulhu      t2, s8, t0
                  or         s11, s11, s7
                  xor        s9, t5, a0
                  c.slli     s11, 24
                  csrrwi     s6, 0x340, 14
                  c.or       s0, a4
                  xori       gp, a7, 788
                  c.add      a1, s1
                  c.or       a3, a0
                  c.li       a3, 29
                  fence.i
                  bgeu       s0, s0, 1460f
                  mulhsu     s8, a1, a4
                  c.srai     a5, 21
                  mulh       s2, s4, s9
                  beq        s3, zero, 1460f
                  csrrsi     t6, 0x340, 4
                  c.mv       a3, s6
                  c.srli     a2, 16
                  add        zero, s11, s6
                  srli       t5, t3, 8
                  bne        s8, s8, 1473f
                  bltu       t2, s8, 1470f
                  div        s0, s6, t4
                  c.xor      s1, a0
                  c.mv       s5, a3
1460:             div        t3, t1, s0
                  bgeu       t6, s11, 1470f
                  c.xor      a0, a3
                  c.nop
                  c.lui      t2, 11
                  c.srai     s0, 21
                  c.addi     s6, 13
                  csrrw      a2, 0x340, a6
                  c.and      a1, a5
                  c.sub      a3, a3
1470:             divu       t2, a2, a4
                  srai       gp, s2, 26
                  c.srai     s0, 1
1473:             srli       a5, s5, 4
                  remu       t0, a3, t6
                  rem        s9, s8, gp
                  c.slli     s11, 18
                  c.srli     a4, 15
                  bge        t3, s6, 1480f
                  c.slli     s1, 29
1480:             slli       s9, s8, 10
                  c.addi     t6, 14
                  auipc      a0, 373735
                  csrrci     s9, 0x340, 25
                  divu       t1, t5, s8
                  sltiu      a6, s2, 139
                  or         s2, t3, s8
                  remu       t4, s9, s11
                  srai       t3, s5, 19
                  csrrsi     a7, 0x340, 17
                  c.slli     t2, 8
                  c.srai     a0, 30
                  div        a2, s8, s0
                  csrrci     t4, 0x340, 18
                  sltiu      t0, ra, -624
                  slti       s9, s4, -190
                  lui        a4, 877945
                  sltu       a1, sp, t0
                  c.add      a7, ra
                  srli       t4, a4, 6
                  rem        a6, zero, t0
                  c.srli     a5, 14
                  c.sub      a2, a2
                  bltu       a6, s10, 1507f
                  slt        s2, a1, a5
                  blt        s4, s8, 1521f
                  c.add      s3, s9
1507:             sltiu      t5, tp, 936
                  auipc      s0, 941709
                  c.lui      t4, 13
                  rem        a2, tp, t5
                  c.and      s0, s1
                  c.bnez     a3, 1530f
                  slli       gp, t3, 16
                  la         a7, region_0+1806 #start riscv_load_store_rand_instr_stream_3
                  lhu        s10, -16(a7)
                  lbu        t3, -7(a7)
                  lbu        s8, 7(a7)
                  lb         s1, -16(a7)
                  csrrci     s0, 0x340, 29
                  remu       ra, t0, t2
                  lw         s1, 2(a7)
                  slli       s1, s8, 28
                  c.or       a2, s0
                  div        a0, a0, t4
                  lbu        s11, 13(a7)
                  divu       ra, t6, t4
                  slti       t5, t4, -574
                  add        s6, zero, s6
                  fence.i
                  lb         t2, -6(a7)
                  sb         s3, -4(a7)
                  sh         s5, 14(a7)
                  sb         s1, -4(a7)
                  slli       t2, a0, 4
                  lb         a0, 14(a7)
                  lhu        s3, -12(a7)
                  sltiu      s10, s4, -646
                  lui        s5, 876966
                  lbu        s5, 15(a7)
                  addi       t2, a5, -108
                  sh         a4, 2(a7)
                  sh         s2, 6(a7)
                  rem        t0, a5, gp
                  lbu        a0, -4(a7)
                  andi       zero, sp, 756
                  lh         s2, 10(a7)
                  c.srai     a1, 22
                  c.sub      a0, a5
                  sb         s11, -13(a7)
                  c.sub      s0, s1
                  lbu        t4, -11(a7)
                  lh         s2, 0(a7)
                  lbu        s8, 15(a7)
                  ori        t0, s2, -363
                  lhu        a6, -16(a7)
                  lbu        ra, 14(a7)
                  lbu        t4, 6(a7)
                  lh         tp, 12(a7)
                  lb         s6, -3(a7)
                  sll        a1, t6, a1
                  c.srai     s1, 18
                  lbu        a4, 12(a7) #end riscv_load_store_rand_instr_stream_3
                  csrrw      t1, 0x340, s0
                  c.andi     a0, 12
                  mulhsu     gp, a0, s0
                  sub        s3, a1, t4
                  c.slli     t2, 10
                  bge        a1, s3, 1528f
                  c.nop
1521:             c.or       a5, s1
                  mul        t3, tp, a4
                  srl        s2, tp, t4
                  addi       s5, t5, 207
                  remu       ra, tp, a3
                  csrrc      t3, 0x340, s7
                  c.bnez     a2, 1545f
1528:             mulh       a5, s6, s4
                  remu       s8, a7, s11
1530:             and        gp, gp, t4
                  c.beqz     a1, 1549f
                  sub        s10, s11, s4
                  ori        tp, t5, 699
                  sub        zero, s2, a2
                  slli       a1, a6, 2
                  mulh       t0, t6, s8
                  mul        a5, sp, a1
                  slli       s6, t6, 17
                  c.sub      a4, a3
                  srai       t4, t6, 30
                  bltu       a1, zero, 1561f
                  bltu       s10, zero, 1555f
                  slti       t1, a1, -516
                  srl        s9, a2, t1
1545:             add        t6, t3, s1
                  sra        a6, a3, t0
                  or         s1, ra, s10
                  slti       s0, gp, 295
1549:             mul        s0, t1, t1
                  or         gp, a6, s10
                  sltiu      s9, t2, -317
                  c.and      a3, s1
                  bgeu       s9, a2, 1560f
                  slli       t4, a0, 2
1555:             c.lui      t2, 31
                  add        a1, gp, tp
                  srli       a4, s9, 29
                  rem        s1, tp, tp
                  c.slli     a0, 15
1560:             c.addi     a5, 20
1561:             c.addi     s2, -1
                  c.slli     a6, 28
                  srl        a7, s8, a6
                  xori       t1, s0, 636
                  mul        a7, s2, s1
                  c.mv       t6, a4
                  slti       a6, tp, 197
                  csrrwi     a5, 0x340, 21
                  srli       s0, gp, 25
                  c.slli     s2, 24
                  c.li       a3, -1
                  sltiu      s11, a4, 522
                  sra        t5, t2, sp
                  c.and      a2, a3
                  srli       t5, s5, 31
                  lui        ra, 782476
                  andi       zero, s9, -45
sub_5_10:         jal        t4, 13f
0:                c.j        14f
1:                jal        ra, 3f
2:                c.j        6f
3:                c.jal      11f
4:                c.j        1b
5:                jal        ra, 4b
6:                jal        ra, 7f
7:                c.j        15f
8:                jal        ra, 0b
9:                c.j        2b
10:               jal        ra, 9b
11:               c.jal      8b
12:               jal        s0, 10b
13:               c.j        5b
14:               c.j        12b
15:               c.nop
                  c.addi     a1, -1
                  srli       s9, s2, 5
                  c.add      t5, t5
                  c.and      s1, a3
                  csrrc      a3, 0x340, s0
                  csrrs      s8, 0x340, s5
                  c.addi     s2, -1
                  auipc      a7, 98554
                  ori        t3, s5, 995
                  lui        t2, 103527
                  fence
                  c.addi     s11, 27
                  ori        gp, t6, -885
                  bne        ra, gp, 1606f
                  c.beqz     a1, 1610f
                  divu       s2, a2, t6
                  beq        s6, a1, 1607f
                  add        a4, a5, zero
                  c.lui      s8, 18
                  slt        a6, a7, s2
                  xori       t5, t1, -846
                  c.lui      ra, 24
                  blt        t5, s8, 1618f
                  mulhu      t1, a1, zero
                  div        s1, t2, zero
                  rem        s3, t6, zero
                  nop
                  slt        a2, s5, ra
1606:             srai       s9, t4, 27
1607:             slli       t6, a1, 22
                  ori        s11, a1, -802
                  mulhsu     a3, s11, s7
1610:             csrrw      s0, 0x340, a0
                  and        a5, sp, a1
                  ori        t0, a3, -61
                  and        t5, s5, a0
                  c.nop
                  c.add      a6, tp
                  bne        a7, t1, 1626f
                  bge        tp, s2, 1627f
1618:             c.srli     a4, 30
                  sub        a3, a2, a0
                  bge        t6, t0, 1631f
                  divu       s11, t6, s7
                  c.sub      a2, a1
                  c.addi     a3, 17
                  mul        a0, t1, s10
                  c.addi     s5, 3
1626:             or         s3, s7, a0
1627:             auipc      t2, 970529
                  c.srli     a0, 7
                  beq        s9, t5, 1634f
                  xori       s3, t5, -987
1631:             bltu       a1, t3, 1635f
                  bge        tp, tp, 1641f
                  fence
1634:             remu       s10, s2, a6
1635:             sub        a2, t4, s10
                  mulh       s1, zero, ra
                  mulh       a4, s6, a6
                  bge        s2, tp, 1647f
                  lui        zero, 975963
                  c.andi     s1, -1
1641:             rem        t6, gp, t2
                  c.srai     a5, 14
                  fence.i
                  mulhu      a7, s9, tp
                  xor        s0, t6, s8
                  c.andi     s1, -1
1647:             or         t5, tp, t4
                  c.srai     a4, 3
                  csrrs      gp, 0x340, a6
                  csrrwi     a6, 0x340, 12
                  auipc      s8, 920475
                  fence.i
                  remu       zero, t3, a4
                  c.addi     a3, -1
                  csrrci     s11, 0x340, 30
                  csrrci     t1, 0x340, 15
                  csrrci     s11, 0x340, 21
                  c.srai     a1, 29
                  csrrw      tp, 0x340, a7
                  slti       t2, zero, 660
                  csrrw      s6, 0x340, s9
                  fence
                  or         s2, t3, tp
                  beq        s1, a4, 1678f
                  mul        s5, t0, s5
                  mulhu      a1, s3, s8
                  nop
                  remu       s0, s1, t5
                  csrrci     s10, 0x340, 11
                  lui        a7, 1043401
                  bge        s1, s0, 1680f
                  c.bnez     a5, 1687f
                  slt        a6, s4, s10
                  c.li       a6, 10
                  or         s5, tp, a5
                  c.lui      a3, 14
                  csrrsi     s0, 0x340, 28
1678:             c.srai     a3, 23
                  srai       s10, s6, 28
1680:             c.nop
                  csrrwi     a0, 0x340, 23
                  csrrw      s1, 0x340, s9
                  slt        zero, t5, t4
                  c.andi     s1, 6
                  bge        s2, t0, 1703f
                  mulhu      t0, a1, t1
1687:             bge        s6, t0, 1706f
                  c.nop
                  c.and      a1, a1
                  andi       s10, sp, 156
                  c.sub      s1, a1
                  sra        a7, a1, t3
                  bne        a1, s10, 1702f
                  csrrwi     a4, 0x340, 8
                  srli       s11, s9, 29
                  andi       t5, t1, 508
                  c.mv       t3, ra
                  sll        t0, s7, s8
                  andi       tp, t2, -520
                  sll        zero, gp, t0
                  xor        s1, s10, s9
1702:             rem        t1, t4, t3
1703:             c.xor      a1, a2
                  add        s3, t4, zero
                  add        tp, s2, s4
1706:             c.andi     a5, 6
                  mulhsu     t4, a1, t5
                  add        s2, s9, ra
                  xor        t2, s0, a4
                  c.srai     a4, 2
                  c.beqz     a2, 1719f
                  fence
                  bgeu       t0, gp, 1725f
                  c.bnez     a4, 1716f
                  fence.i
1716:             mulh       tp, a6, t3
                  auipc      s11, 840787
                  nop
1719:             srai       s0, a4, 23
                  sra        s3, sp, s0
                  nop
                  xori       t4, s6, -334
                  c.srai     a4, 5
                  slli       s6, a7, 21
1725:             c.slli     s11, 27
                  srl        ra, zero, a3
                  csrrw      t3, 0x340, t3
                  sll        gp, sp, t1
                  fence.i
                  csrrc      zero, 0x340, s3
                  c.li       s9, 29
                  sltu       a1, s4, a0
                  csrrc      s6, 0x340, ra
                  sra        a7, s8, a5
                  c.bnez     a3, 1750f
                  mulh       gp, a6, s5
                  and        a5, s8, a6
                  nop
                  c.srli     a3, 16
                  divu       t1, a7, a1
                  c.beqz     a3, 1749f
                  c.srli     a1, 24
                  slti       a0, gp, -368
                  srli       t3, gp, 31
                  xori       a1, t5, 483
                  c.nop
                  slli       t5, s2, 30
                  csrrw      t1, 0x340, zero
1749:             mulh       s5, a7, t6
1750:             mulhsu     a4, zero, a0
                  bge        tp, t4, 1767f
                  andi       t0, sp, 759
                  c.xor      a1, a0
                  sra        t1, s9, s6
                  lui        a6, 500211
                  c.slli     s5, 11
                  srai       t4, s1, 14
                  bne        t4, s11, 1778f
                  c.andi     s0, -1
                  csrrsi     s5, 0x340, 26
                  mulhu      a0, t4, t1
                  slti       t4, s4, -651
                  c.or       a3, a2
                  c.andi     a4, 22
                  bgeu       t2, a5, 1780f
                  mulhu      s2, a6, a7
1767:             c.addi     s5, 28
                  c.andi     a0, 27
                  auipc      s5, 673122
                  slti       s1, zero, -388
                  andi       tp, t2, 859
                  c.lui      s10, 10
                  csrrw      t1, 0x340, s8
                  srli       t4, s5, 2
                  c.lui      t5, 12
                  or         a0, s6, s0
                  sll        s9, a4, s3
1778:             csrrc      t1, 0x340, s3
                  c.srli     a5, 28
1780:             c.addi     s0, 22
                  c.sub      s0, a3
                  lui        t0, 803806
                  csrrci     tp, 0x340, 21
                  andi       s6, a4, -502
                  c.bnez     a4, 1792f
                  c.beqz     s0, 1795f
                  slti       s10, a0, -825
                  c.lui      t2, 26
                  sub        gp, s3, s0
                  addi       t0, a0, -952
                  andi       a6, s3, -35
1792:             c.or       a4, a5
                  lui        t3, 947664
                  mulhu      s6, s5, s6
1795:             c.or       a1, a4
                  sub        s3, ra, s11
                  mul        a2, a2, a6
                  c.li       a0, 11
                  c.slli     a3, 21
                  div        s3, s2, t5
                  c.addi     t0, -1
                  bne        ra, ra, 1811f
                  mulhu      a3, t4, a1
                  and        s0, a0, a5
                  c.addi     gp, 5
                  lui        gp, 862068
                  c.sub      s1, a3
                  csrrsi     s1, 0x340, 19
                  beq        t6, s10, 1818f
                  mulhu      s3, s10, s9
1811:             c.nop
                  sra        t5, a4, a2
                  c.lui      s6, 6
                  c.and      a0, a1
                  c.add      a7, t1
                  xori       a3, s2, -7
                  csrrs      s8, 0x340, s1
1818:             slt        s8, gp, t2
                  addi       t3, t6, 82
                  and        a5, s5, a1
                  csrrw      a6, 0x340, s8
                  ori        a4, s2, 276
                  xor        a6, sp, t3
                  mulh       s11, zero, a7
                  c.mv       ra, t0
                  ori        ra, a6, 67
                  csrrci     t3, 0x340, 24
                  nop
                  sltu       a0, s8, t0
                  bge        t4, a3, 1848f
                  sltu       s9, t2, ra
                  c.srli     s1, 18
                  c.slli     s0, 3
                  rem        a0, s10, gp
                  c.add      gp, sp
                  auipc      s9, 832752
                  csrrwi     s10, 0x340, 1
                  c.nop
                  remu       gp, s3, a6
                  auipc      s2, 490214
                  addi       s3, s8, -1013
                  andi       a7, a0, -542
                  bgeu       t0, s9, 1847f
                  fence.i
                  c.beqz     s0, 1857f
                  auipc      t1, 44349
1847:             fence
1848:             bge        a7, gp, 1863f
                  slli       s3, a2, 21
                  csrrw      gp, 0x340, s2
                  remu       t0, a3, sp
                  c.or       a5, s0
                  lui        t0, 538674
                  xor        a2, t2, s2
                  c.and      a3, s0
                  c.andi     s1, -1
1857:             beq        s10, s2, 1862f
                  beq        t6, tp, 1871f
                  c.and      s0, a5
                  or         a6, a6, t3
                  c.li       s9, 31
1862:             csrrs      a0, 0x340, s3
1863:             andi       t6, s3, 511
                  sra        s8, s8, t5
                  csrrwi     t1, 0x340, 15
                  auipc      a0, 530335
                  c.xor      a3, a1
                  slli       t0, s2, 3
                  srai       s5, s8, 25
                  bgeu       s1, t5, 1879f
1871:             slli       gp, t2, 3
                  mul        s10, s10, a5
                  lui        a4, 632781
                  bge        s5, t6, 1889f
                  addi       s10, s1, 745
                  c.beqz     s1, 1885f
                  .4byte 0x66d75cbf # kIllegalOpcode
                  addi       gp, t6, -688
                  srl        s11, s5, a2
1879:             srl        t4, t6, s5
                  fence
                  srli       t4, s0, 25
                  c.li       t1, 16
                  c.beqz     a4, 1892f
                  c.srai     a2, 14
1885:             srai       t3, zero, 19
                  sra        s10, gp, t6
                  lui        t4, 719115
                  mulhu      a7, t2, a0
1889:             nop
                  c.mv       ra, t5
                  csrrs      t2, 0x340, a6
1892:             csrrc      s9, 0x340, s2
                  blt        a5, s9, 1911f
                  nop
                  c.li       t6, -1
                  srai       tp, a7, 17
                  c.sub      a4, s1
                  c.srli     a1, 8
                  c.bnez     a0, 1914f
                  csrrc      s6, 0x340, t0
                  or         t0, a3, s11
                  c.lui      s2, 13
                  sll        s6, s7, t0
                  srl        tp, s6, s4
                  addi       s10, zero, 3 #init loop 1 counter
                  auipc      a3, 404326
                  c.mv       s0, t3
                  addi       a7, zero, -18 #init loop 1 limit
                  addi       t0, t0, -36
sub_5_44_1_t:     auipc      s1, 622741
                  rem        t2, s3, a5
                  mulhu      s5, t0, s10
                  addi       s10, s10, -7 #update loop 1 counter
                  c.andi     a3, -1
                  divu       s11, a2, a6
                  rem        t1, s9, s6
                  addi       a6, zero, -3 #init loop 0 counter
                  addi       t3, zero, 0 #init loop 0 limit
                  sltiu      zero, s7, 791
sub_5_44_0_t:     lui        s9, 314638
                  addi       a6, a6, 3 #update loop 0 counter
                  .4byte 0xadf7c7d7 # kIllegalOpcode
                  fence
                  bne        a6, t3, sub_5_44_0_t #branch for loop 0
                  add        a3, a3, t2
                  mulhsu     gp, a3, a0
                  bne        s10, a7, sub_5_44_1_t #branch for loop 1
                  nop
                  c.srai     a2, 13
                  divu       s8, s9, s10
                  c.beqz     s1, 1915f
                  c.srai     a4, 23
                  bgeu       a0, s1, 1916f
                  bge        s1, s2, 1918f
1911:             srai       a2, a7, 10
                  csrrs      a5, 0x340, gp
                  srli       a5, s1, 14
1914:             fence.i
1915:             ori        ra, t3, -423
1916:             mulh       s11, t4, s5
                  div        a1, a0, s7
1918:             c.sub      a4, a4
                  srai       s11, zero, 22
                  srl        t5, ra, a6
                  fence
                  sra        a4, s8, t1
                  c.lui      t5, 6
                  c.bnez     a5, 1940f
                  auipc      zero, 749653
                  c.nop
                  nop
                  mulhsu     a3, a2, a1
                  mulh       s0, s11, s4
                  remu       s5, s10, s11
                  c.or       s0, a2
                  sltiu      a5, sp, 218
                  andi       t5, s9, 524
                  bltu       a5, t3, 1948f
                  bge        s1, a0, 1944f
                  sub        t6, s5, s9
                  srai       a0, s4, 14
                  or         a3, s6, a4
                  sltiu      a0, s11, -806
1940:             fence
                  csrrc      s6, 0x340, t4
                  fence.i
                  divu       s3, s3, s6
1944:             nop
                  blt        s8, t3, 1954f
                  sltu       a3, sp, t0
                  sll        gp, a3, tp
1948:             c.li       a6, 26
                  lui        s1, 30476
                  sltiu      a5, a7, -698
                  or         a0, t5, tp
                  c.bnez     a3, 1963f
                  ori        a4, t0, -254
1954:             c.srli     a1, 1
                  sltu       t2, s3, s2
                  nop
                  ori        s9, t2, -132
                  c.slli     s3, 11
                  c.nop
                  c.sub      a2, a4
                  c.sub      a2, a1
                  srl        a1, a1, a4
1963:             sll        a2, a4, a1
                  rem        a7, s3, s4
                  c.nop
                  andi       s9, s2, 807
                  c.addi     a0, -1
                  c.sub      s1, a4
                  remu       s3, t1, s10
                  c.andi     a3, -1
                  .4byte 0x5ba89193 # kIllegalFunc7
                  c.andi     s0, 26
                  c.li       s3, -1
                  c.beqz     s1, 1982f
                  add        s10, s1, s10
                  csrrc      s9, 0x340, s0
                  blt        a5, t1, 1994f
                  bltu       a2, s11, 1995f
                  srai       t4, s9, 4
                  andi       s6, zero, 63
                  andi       a6, s4, -446
                  sltu       zero, sp, s6
1982:             c.add      s2, sp
                  mulhsu     s8, ra, t5
                  csrrsi     s9, 0x340, 15
                  c.or       a1, a4
                  csrrwi     s9, 0x340, 31
                  c.add      s11, s0
                  c.lui      a3, 22
                  fence.i
                  bgeu       t2, s6, 1999f
                  c.xor      s1, s0
                  andi       t2, s7, -600
                  bne        t6, t4, 2012f
1994:             remu       a0, t2, a3
1995:             fence
                  blt        sp, a7, 2006f
                  slt        s1, s0, gp
                  slt        t0, zero, a7
1999:             sltiu      a0, s2, -672
                  remu       zero, t5, sp
                  c.srai     a5, 10
                  bltu       a6, s0, 2022f
                  csrrwi     gp, 0x340, 14
                  c.slli     tp, 16
                  c.srli     a1, 8
2006:             c.srli     a3, 25
                  fence
                  srl        zero, s10, t2
                  c.add      t4, s4
                  mulhu      s1, t1, t6
                  mulhu      a3, a3, a0
2012:             remu       s11, t5, s4
                  bne        s7, s3, 2031f
                  c.bnez     a1, 2016f
                  c.lui      tp, 29
2016:             csrrw      gp, 0x340, s9
                  ori        tp, zero, 820
                  csrrci     a6, 0x340, 27
                  c.srli     a4, 25
                  slli       s5, a1, 15
                  slli       s8, s5, 2
2022:             sltiu      zero, t6, -226
                  div        s10, tp, a4
                  mul        s2, tp, a2
                  ori        s1, a0, -973
                  c.beqz     s1, 2036f
                  c.add      s10, s10
                  lui        s0, 81315
                  c.add      a2, a4
                  c.sub      a1, a2
2031:             csrrw      t2, 0x340, a5
                  mul        s8, t3, s0
                  mulh       tp, t2, s5
                  c.mv       a0, s2
                  c.addi     s10, 3
2036:             c.li       a3, 7
                  c.slli     a3, 7
                  slli       s5, a4, 14
                  fence
                  beq        a0, s5, 2055f
                  rem        s9, tp, t5
                  csrrc      s5, 0x340, gp
                  xor        s3, gp, tp
                  slli       a6, t1, 15
                  c.lui      a3, 6
                  c.and      a2, s0
                  xori       gp, s8, 822
                  or         tp, s4, t5
                  bge        s9, s8, 2058f
                  mulhsu     a4, s9, a6
                  c.addi     s2, 25
                  c.sub      a5, s1
                  mulh       a4, a2, t2
                  sltiu      a3, a0, -625
2055:             bge        s10, s2, 2070f
                  bltu       s7, t2, 2066f
                  c.sub      s0, s1
2058:             c.or       a3, a5
                  csrrsi     t1, 0x340, 26
                  csrrc      s10, 0x340, a3
                  sra        t3, s10, s9
                  xori       s9, t2, 823
                  rem        s2, gp, a2
                  csrrci     t5, 0x340, 14
                  fence.i
2066:             remu       t4, t0, t2
                  sltiu      s10, s1, 321
                  and        a5, a4, s3
                  bltu       s1, a0, 2084f
2070:             bne        a4, t5, 2078f
                  c.srai     a0, 12
                  c.or       a1, a4
                  nop
                  c.mv       a0, t0
                  bge        t6, s7, 2084f
                  csrrwi     s5, 0x340, 8
                  ori        s3, a6, 470
2078:             c.addi     s8, 23
                  c.andi     a5, 13
                  sra        t4, s8, s7
                  xori       s10, s5, -390
                  sra        tp, s1, t4
                  csrrw      a4, 0x340, sp
2084:             c.andi     a1, -1
                  srl        t0, t1, a3
                  sltu       s10, a3, a4
                  csrrs      a7, 0x340, s0
                  mulhsu     s9, a1, t1
                  sltiu      t3, t1, 75
                  c.srli     s0, 2
                  csrrsi     a2, 0x340, 20
                  bltu       t3, sp, 2100f
                  c.and      a2, s1
                  c.and      a5, a3
                  mulhu      a7, t4, tp
                  srai       s2, tp, 29
                  or         a1, tp, s11
                  c.srli     a5, 25
                  c.or       a2, a2
2100:             c.add      ra, a3
                  csrrw      a3, 0x340, t1
                  c.srai     s0, 30
                  c.lui      s0, 8
                  c.andi     a1, 17
                  csrrci     a3, 0x340, 2
                  fence.i
                  csrrs      zero, 0x340, s6
                  c.bnez     a3, 2119f
                  slt        zero, s9, a5
                  c.addi     a6, 9
                  blt        a5, a4, 2115f
                  add        a0, t6, s11
                  sll        a5, t4, ra
                  sltiu      a0, s5, 464
2115:             c.slli     s9, 5
                  mulh       a5, t3, s4
                  blt        s7, s3, 2126f
                  addi       t4, s9, -591
2119:             sltiu      gp, s8, -876
                  divu       s5, a7, s0
                  csrrwi     s6, 0x340, 3
                  and        t6, a5, s4
                  or         s5, s0, s1
                  c.or       s0, s1
                  sltu       s11, a1, t6
2126:             fence
                  nop
                  c.srli     a5, 20
                  mul        gp, s1, tp
                  remu       s11, t4, gp
                  xor        s3, s6, s3
                  andi       s11, s1, 226
                  add        a3, a2, gp
                  xor        t0, t2, s5
                  add        a3, s10, s10
                  csrrw      t5, 0x340, ra
                  c.andi     a0, -1
                  or         s6, s10, s10
                  sltiu      a7, a5, -611
                  xori       t2, a1, 654
                  c.xor      a1, s0
                  srai       s9, t5, 2
                  mulhu      t0, a6, a0
                  sltu       ra, s7, s6
                  c.xor      a4, a1
                  or         s3, a7, t5
                  c.srli     a0, 7
                  auipc      a4, 1018216
                  csrrsi     ra, 0x340, 23
                  xori       t2, a6, 931
                  csrrsi     a7, 0x340, 25
                  add        gp, s8, t2
                  srl        s1, t2, a6
                  c.lui      s6, 27
                  c.mv       a4, a1
                  add        s2, s6, s2
                  xor        gp, t6, a6
                  add        s5, s10, a4
                  sll        s2, t1, s7
                  csrrsi     s11, 0x340, 27
                  csrrc      t2, 0x340, s8
                  sra        t0, s0, s4
                  mulhu      a3, s1, zero
                  c.lui      s2, 15
                  c.mv       s8, s1
                  sltu       t1, s4, t5
                  bgeu       zero, s7, 2181f
                  sll        a6, t1, sp
                  c.xor      a2, a0
                  or         a0, s2, gp
                  mulh       s9, s1, t5
                  sltu       a6, s1, s8
                  mulhsu     t4, t0, s10
                  c.add      a0, sp
                  beq        a7, s5, 2193f
                  remu       t0, sp, sp
                  rem        t3, t2, a5
                  blt        tp, s7, 2193f
                  nop
                  div        t6, t0, a7
2181:             divu       t5, a1, s2
                  bgeu       a3, s6, 2200f
                  c.sub      a5, s1
                  bltu       t6, s0, 2196f
                  addi       t2, zero, -9 #init loop 0 counter
                  addi       a2, zero, -12 #init loop 0 limit
sub_5_40_0_t:     c.addi     s8, 11
                  addi       t2, t2, -4 #update loop 0 counter
                  bge        t2, a2, sub_5_40_0_t #branch for loop 0
                  div        t5, ra, a5
                  sltiu      a4, s6, 649
                  bgeu       ra, sp, 2201f
                  bne        a4, t1, 2207f
                  c.or       a3, a3
                  and        zero, s6, a2
                  sra        t0, s8, t1
                  c.or       a4, a0
                  fence
2193:             c.lui      t2, 3
                  xor        t4, s6, s9
                  and        t6, a1, a5
2196:             c.or       s1, a4
                  csrrci     gp, 0x340, 1
                  mulhsu     a3, t2, a5
                  rem        s5, t5, t2
2200:             c.srai     s1, 1
2201:             xor        t1, s9, gp
                  c.slli     s5, 17
                  auipc      tp, 477408
                  slti       s2, t2, 338
                  mulhu      t0, a4, t3
                  srl        t4, a2, a3
2207:             c.sub      s0, a3
                  c.addi     a7, -1
                  csrrwi     a0, 0x340, 4
                  fence.i
                  c.and      s0, a3
                  sra        a3, a5, t0
                  bgeu       sp, s8, 2222f
                  mulhsu     a7, s5, tp
                  add        a7, s5, s1
                  divu       t3, s2, ra
                  csrrci     s1, 0x340, 0
                  c.xor      a5, a5
                  sltu       t3, s7, a2
                  mulhu      zero, gp, s6
                  sltiu      s3, gp, 458
2222:             csrrsi     s9, 0x340, 30
                  csrrc      tp, 0x340, gp
                  slt        a0, t1, t1
                  csrrs      a4, 0x340, zero
                  divu       t4, s4, sp
                  c.bnez     a3, 2243f
                  bltu       a7, t4, 2238f
                  csrrw      t0, 0x340, s4
                  c.slli     s5, 26
                  ori        ra, s10, 125
                  bgeu       s8, s11, 2245f
                  sra        s8, a4, a6
                  sltiu      s3, sp, -840
                  remu       t6, t3, a2
                  blt        a2, a2, 2245f
                  xori       s6, s4, -703
2238:             csrrc      t1, 0x340, s3
                  mul        s5, s2, s1
                  c.sub      a0, a5
                  lui        s8, 1046451
                  c.mv       a7, s2
2243:             fence
                  mulh       s2, t4, s5
2245:             c.lui      a4, 1
                  srl        gp, a3, t1
                  sll        a4, ra, s7
                  div        t5, zero, a6
                  c.andi     s0, -1
                  csrrc      a4, 0x340, gp
                  xori       a6, s7, 819
                  c.sub      s0, a1
                  sltu       t2, zero, t4
                  csrrc      a1, 0x340, a5
                  xor        a1, s8, a2
                  c.addi     s2, 25
                  c.addi     s0, 1
                  c.lui      a5, 19
                  or         s0, t2, t0
                  c.beqz     a4, 2278f
                  c.srai     a2, 29
                  c.nop
                  sll        a3, s0, s4
                  csrrw      s6, 0x340, s11
                  c.xor      a0, s1
                  slt        t0, a7, t2
                  c.xor      s1, a0
                  csrrw      s9, 0x340, s2
                  xor        s11, s3, s3
                  sltu       s2, a1, t5
                  lui        a0, 441440
                  csrrc      a3, 0x340, s7
                  c.li       t0, -1
                  sll        a1, t1, s3
                  c.mv       s2, s4
                  andi       t4, s7, -609
                  csrrw      ra, 0x340, t6
2278:             c.li       t2, -1
                  c.srai     a3, 25
                  c.li       a4, 2
                  divu       t6, tp, t2
                  fence.i
                  csrrsi     a2, 0x340, 19
                  c.add      t4, a4
                  mulhsu     s1, gp, s0
                  auipc      gp, 206006
                  sra        s6, s0, t4
                  c.bnez     s0, 2306f
                  rem        t4, a0, s6
                  sub        t6, a1, t3
                  srli       s11, s6, 15
                  slt        ra, zero, zero
                  andi       s5, t0, -661
                  rem        t3, s8, a7
                  sub        s6, t6, a0
                  sltu       s9, tp, gp
                  slti       a4, a3, -607
                  sll        a0, t0, a1
                  c.mv       gp, s7
                  bge        t6, sp, 2319f
                  lui        tp, 951832
                  divu       t3, s4, t5
                  remu       s5, s2, t0
                  and        s11, a0, t2
                  sltu       tp, s10, a7
2306:             lui        s0, 360404
                  sltiu      t6, t2, -582
                  sltu       gp, zero, tp
                  c.and      s0, s1
                  sll        t4, s0, s11
                  bgeu       tp, s8, 2320f
                  c.srai     a1, 12
                  srli       a0, t4, 15
                  c.addi     a0, -1
                  c.nop
                  div        s0, gp, s8
                  c.mv       a4, tp
                  fence.i
2319:             csrrc      t5, 0x340, s4
2320:             c.andi     s0, 7
                  c.sub      a1, a3
                  mul        s0, s10, t5
                  c.srli     a3, 30
                  c.li       ra, 20
                  c.mv       a5, a2
                  c.srli     a1, 12
                  andi       a5, s9, 644
                  c.sub      a0, a3
                  csrrsi     tp, 0x340, 5
                  csrrw      s9, 0x340, s0
                  c.beqz     s0, 2340f
                  mulhsu     a0, tp, s2
                  addi       t5, tp, -49
                  andi       s8, a2, 293
                  xori       ra, s11, -831
                  csrrw      a1, 0x340, t2
                  c.mv       t4, s10
                  csrrw      a2, 0x340, a0
                  mulh       t5, s8, a4
2340:             c.and      s0, a1
                  bgeu       t3, t5, 2346f
                  c.xor      s0, a1
                  c.xor      s1, a4
                  csrrci     a0, 0x340, 25
                  bgeu       s11, s0, 2347f
2346:             addi       s0, t4, -229
2347:             xori       s10, t0, -692
                  csrrw      t1, 0x340, s6
                  beq        s5, t1, 2356f
                  beq        t0, s9, 2368f
                  c.slli     s10, 7
                  csrrc      t5, 0x340, s5
                  sltu       a5, s6, s1
                  csrrsi     a1, 0x340, 8
                  remu       s10, tp, a4
2356:             xor        s5, s4, t6
                  c.srli     a4, 31
                  addi       s0, t3, 49
                  xori       s9, t4, 1022
                  xor        zero, t4, s4
                  c.srai     a3, 25
                  fence.i
                  xori       s5, t1, 252
                  and        a6, s7, gp
                  srli       s11, tp, 22
                  slli       s2, s1, 22
                  addi       s8, zero, 802
2368:             c.bnez     a4, 2377f
                  ori        s5, a6, -275
                  c.li       t5, -1
                  mulh       s3, s0, s9
                  c.srai     a5, 7
                  blt        t5, a6, 2391f
                  c.sub      a4, a3
                  ori        a5, s7, -777
                  bgeu       t5, s11, 2386f
2377:             c.xor      s1, a0
                  c.bnez     s0, 2393f
                  mulhsu     s6, s7, t1
                  bne        s4, s4, 2385f
                  c.bnez     a5, 2396f
                  c.or       a5, a0
                  blt        a6, s4, 2403f
                  addi       a7, a7, -765
2385:             slli       t5, t4, 0
2386:             c.or       a1, a2
                  srai       a4, a1, 3
                  bgeu       a5, ra, 2397f
                  csrrc      t4, 0x340, t5
                  c.xor      s0, a0
2391:             c.addi     tp, 21
                  c.add      s8, s0
2393:             c.bnez     a0, 2402f
                  ori        a6, s2, -820
                  fence.i
2396:             lui        s2, 181514
2397:             slt        s8, s8, t0
                  mulhu      s10, s2, t5
                  csrrsi     tp, 0x340, 4
                  sra        a4, a0, a7
                  bgeu       a3, t5, 2410f
2402:             auipc      t1, 133618
2403:             c.lui      a0, 15
                  rem        s9, a1, s8
                  c.and      a1, s1
                  srl        s6, s8, a7
                  and        s0, s2, s10
                  c.li       a6, 5
                  andi       t0, s5, -462
2410:             bne        t5, s8, 2417f
                  csrrci     s8, 0x340, 13
                  c.srli     s0, 14
                  or         s2, tp, ra
                  c.srli     a4, 20
                  c.li       t2, 20
                  slt        a6, sp, a1
2417:             c.andi     a5, 8
                  c.srai     a5, 7
                  rem        t1, t6, zero
                  bgeu       a7, a7, 2428f
                  c.bnez     a0, 2429f
                  csrrc      tp, 0x340, a7
                  c.or       a2, a4
                  mulhsu     s8, s6, zero
                  c.li       tp, -1
                  and        s10, a2, a6
                  mul        t5, t4, s1
2428:             c.mv       a0, a0
2429:             bgeu       s8, s10, 2442f
                  c.beqz     a0, 2434f
                  mulhsu     t5, a0, s1
                  csrrs      s8, 0x340, sp
                  csrrci     s3, 0x340, 17
2434:             mulh       t3, a3, a6
                  add        a6, s9, a1
                  fence.i
                  c.bnez     s1, 2446f
                  ori        tp, t2, 162
                  lui        s1, 639250
                  blt        s4, t5, 2458f
                  c.sub      a3, a0
2442:             c.beqz     a4, 2453f
                  csrrsi     s3, 0x340, 3
                  andi       s1, s9, 11
                  nop
2446:             slti       t2, a3, 99
                  or         a0, a1, a7
                  auipc      t3, 172291
                  csrrs      tp, 0x340, t1
                  c.bnez     s0, 2459f
                  andi       t2, a4, -597
                  c.and      a3, a4
2453:             slli       s6, s2, 16
                  c.bnez     a1, 2456f
                  mulhsu     t4, sp, s8
2456:             c.add      a2, s2
                  sll        s8, tp, a1
2458:             bne        ra, a2, 2472f
2459:             c.addi     gp, -1
                  c.xor      a0, a5
                  sra        t1, s6, a1
                  sll        s8, t3, s9
                  bge        a0, s0, 2473f
                  xori       s10, t1, 312
                  and        s6, a1, s9
                  c.srai     s1, 21
                  remu       t0, s5, a6
                  xori       s8, ra, -615
                  c.li       s2, 4
                  bge        a6, a5, 2486f
                  c.mv       gp, s0
2472:             ori        a0, s6, 434
2473:             xori       s3, s7, -42
                  blt        s9, s11, 2489f
                  c.nop
                  c.lui      t6, 11
                  add        s10, s10, t6
                  mul        zero, a1, a4
                  c.lui      s3, 5
                  c.sub      s0, s1
                  srli       gp, s4, 30
                  fence.i
                  beq        tp, s0, 2501f
                  c.bnez     a1, 2503f
                  srai       s5, t0, 12
2486:             sltiu      t5, t4, 384
                  addi       s5, a4, -854
                  c.srai     s0, 16
2489:             c.addi     a2, -1
                  ori        a4, s2, 594
                  c.or       a1, a1
                  c.beqz     s1, 2507f
                  nop
                  srl        s9, zero, t5
                  c.addi     s6, 27
                  remu       a1, ra, t4
                  c.and      s0, a0
                  ori        a1, gp, -615
                  c.srai     a0, 3
                  add        t1, a4, s3
2501:             xor        t6, s4, s7
                  bltu       a6, s1, 2511f
2503:             divu       s1, s9, s5
                  bne        s1, t2, 2516f
                  c.add      a7, t4
                  c.slli     t6, 24
2507:             or         s11, a2, a3
                  c.srli     a3, 7
                  divu       a7, s3, a6
                  srl        s1, s8, s1
2511:             srai       t5, zero, 21
                  xori       t4, s4, -64
                  bne        a0, s9, 2527f
                  sra        t6, s2, t4
                  c.and      a0, s1
2516:             fence.i
                  andi       t6, ra, -396
                  srai       t6, s4, 30
                  c.srli     a4, 20
                  nop
                  mulhu      s2, ra, t5
                  csrrsi     s6, 0x340, 12
                  nop
                  divu       t0, s0, t0
                  bltu       a1, s4, 2537f
                  c.addi     t1, 8
2527:             csrrwi     t4, 0x340, 14
                  sll        a2, gp, gp
                  xor        t4, s2, s3
                  csrrc      s8, 0x340, s9
                  sub        s3, zero, a0
                  c.li       a0, -1
                  csrrsi     s5, 0x340, 26
                  c.li       a5, 26
                  csrrsi     a2, 0x340, 9
                  and        t4, a7, a3
2537:             csrrsi     tp, 0x340, 4
                  c.andi     s1, -1
                  fence.i
                  c.sub      a0, a3
                  slli       s5, a5, 8
                  lw         t4, 4(sp)
                  csrrwi     s2, 0x340, 19
                  mulh       a5, ra, a5
                  c.li       s10, -1
                  addi       sp, sp, 20
                  c.addi     s3, -1
4411:             c.jr x29
sub_4:            blt        a4, gp, sub_4_stack_p
                  slt        a5, a6, s1
                  csrrc      t2, 0x340, a5
                  c.srai     a3, 9
                  csrrwi     s2, 0x340, 4
sub_4_stack_p:    addi       sp, sp, -12
                  csrrwi     s5, 0x340, 7
                  lui        s10, 568452
                  srai       a4, a5, 18
                  c.xor      a5, a1
                  c.mv       tp, sp
                  sw         t4, 4(sp)
                  c.srai     a0, 8
sub_4_1:          jal        t4, 6f
0:                c.jal      1f
1:                c.jal      7f
2:                c.jal      8f
3:                c.j        10f
4:                jal        tp, 9f
5:                c.j        3b
6:                c.j        2b
7:                c.jal      11f
8:                jal        s6, 5b
9:                jal        ra, 0b
10:               c.j        4b
11:               c.j        12f
12:               fence.i
                  la         t2, region_0+119 #start load_store_instr_stream_0
                  la         s2, region_4+1782 #start load_store_instr_stream_1
                  lhu        t0, -7(t2)
                  lw         s6, 94(s2)
                  lh         t6, -9(t2)
                  lhu        a7, 80(s2)
                  sh         a5, 230(s2)
                  lb         s5, -1(t2)
                  sw         t4, -190(s2)
                  lbu        s11, -14(t2)
                  lbu        s1, 0(t2)
                  lb         s0, -246(s2)
                  lb         s1, 13(t2)
                  lh         s1, -222(s2) #end load_store_instr_stream_1
                  sb         s0, 10(t2)
                  lbu        t1, 4(t2) #end load_store_instr_stream_0
                  srli       t3, s1, 27
                  c.bnez     a0, 17f
                  auipc      s2, 13521
                  nop
                  bge        s4, a6, 6f
                  bgeu       a4, t6, 16f
6:                ori        t2, s11, 566
                  c.bnez     a0, 9f
                  c.addi     s5, -1
                  la         t5, region_4+196 #start riscv_hazard_instr_stream_0
                  c.lui      s1, 12
                  lbu        s0, 183(t5)
                  mulhsu     a5, a7, s10
                  lhu        s1, -138(t5)
                  slli       a5, s1, 7
                  ori        a7, a5, 746
                  sh         a5, 108(t5)
                  sw         s10, -4(t5)
                  sh         a7, 48(t5)
                  sb         a7, -93(t5)
                  lb         s0, 169(t5)
                  lb         s10, 51(t5)
                  lbu        s0, -119(t5)
                  div        a5, s10, s2
                  mulh       a7, s10, a7
                  c.and      s0, a5
                  sb         a7, 249(t5)
                  mulhsu     a7, s2, s2
                  sb         s2, 3(t5)
                  sb         s1, -145(t5)
                  sltiu      s10, s1, 679
                  sra        a7, s1, a7
                  sb         a5, 255(t5)
                  sb         a5, -83(t5)
                  sb         s1, 97(t5)
                  c.add      a5, a7
                  c.slli     s2, 19
                  lhu        s2, -44(t5)
                  sb         s10, 103(t5)
                  sw         s10, 8(t5)
                  lb         s10, 238(t5)
                  sb         a5, 183(t5)
                  ori        s1, s0, 912
                  sb         s1, 64(t5)
                  sb         s2, -99(t5)
                  auipc      s2, 282935
                  add        s10, a5, a5
                  mul        a5, a7, a7
                  srl        s10, s10, s0
                  sh         a7, -188(t5)
                  lbu        s1, -111(t5)
                  c.andi     s1, 10
                  sll        s2, s0, s10
                  csrrwi     s2, 0x340, 29
                  srai       s0, a5, 28
                  c.srli     s1, 5
                  sb         s10, 0(t5) #end riscv_hazard_instr_stream_0
9:                mulh       s6, a6, t6
                  andi       t6, t4, 858
                  slt        a7, a0, s9
                  slt        s1, gp, s4
                  mulh       s2, s2, s5
                  slt        s11, t3, sp
                  mulhsu     s8, gp, s1
16:               csrrsi     a6, 0x340, 30
17:               c.srai     a1, 31
                  c.and      a1, a4
                  sltiu      s3, t4, -60
                  c.xor      s1, s1
                  c.xor      s1, a3
                  fence.i
                  sub        t3, s11, a4
                  ori        t1, s9, -210
                  mulhsu     t0, tp, s4
                  bne        a1, s5, 30f
                  rem        t4, s3, a5
                  c.srli     a1, 10
                  blt        s8, s3, 34f
30:               csrrs      t6, 0x340, gp
                  c.add      s5, t3
                  and        a7, s11, t2
                  c.slli     s5, 23
34:               c.or       a3, a2
                  div        s11, s9, s11
                  auipc      t1, 392349
                  csrrwi     t1, 0x340, 16
                  mul        a4, a7, t5
                  srl        s8, s2, a6
                  mulhsu     t3, t1, t0
                  csrrw      a5, 0x340, s8
                  c.bnez     a5, 47f
                  mulhsu     a3, a4, t0
                  or         s3, t4, a4
                  xori       a0, s11, -937
                  c.and      s1, a2
47:               rem        a4, s11, sp
                  mulhsu     s10, a3, a6
                  mulhsu     gp, t6, t6
                  sltiu      s8, a5, 870
                  sra        s2, zero, t1
                  bltu       s2, a0, 67f
                  c.add      t1, tp
                  div        s5, a6, zero
                  lui        t1, 572973
                  or         s0, s7, gp
                  c.add      s8, a5
                  c.beqz     a5, 71f
                  remu       ra, a6, ra
                  csrrc      tp, 0x340, a7
                  slti       a4, a4, -589
                  add        s2, t6, a2
                  la         a2, region_3+184 #start riscv_load_store_rand_instr_stream_0
                  sub        s10, t2, a5
                  sb         s0, -55(a2)
                  c.nop
                  lh         t6, -26(a2)
                  lbu        s10, 17(a2)
                  remu       t6, a5, s10
                  lb         a5, -25(a2)
                  lui        s1, 534485
                  csrrsi     t0, 0x340, 6
                  sh         s7, 18(a2)
                  csrrwi     zero, 0x340, 4
                  sb         t0, -26(a2)
                  c.xor      a5, s1
                  lb         a3, -25(a2)
                  sra        s5, s6, a0
                  mulhsu     gp, a6, tp
                  c.sub      a0, a3
                  csrrs      s10, 0x340, zero
                  slt        ra, t5, t2
                  sh         a2, 58(a2)
                  lh         s3, 46(a2)
                  slti       s1, sp, 458
                  sltiu      s3, s4, 161
                  lb         zero, 41(a2)
                  c.addi     s10, 13
                  lhu        a7, -50(a2)
                  sll        a4, s2, a4
                  lb         s6, 6(a2)
                  fence.i
                  sltu       a7, a1, s10
                  lh         gp, -42(a2)
                  sb         tp, -52(a2)
                  sra        a0, s8, s2
                  add        a7, a3, t2
                  lh         t0, 14(a2) #end riscv_load_store_rand_instr_stream_0
                  xor        s5, a1, zero
                  csrrwi     t3, 0x340, 11
                  sll        gp, s0, a2
                  slti       a4, t1, 166
67:               fence
                  c.xor      s1, a5
                  sra        t3, s6, a5
                  ori        s11, s6, 876
71:               sra        s3, s11, s1
                  csrrw      a0, 0x340, s2
                  or         a1, s6, t5
                  lui        t4, 822533
                  or         a6, a3, a7
                  bne        a6, s7, 91f
                  divu       s3, s9, sp
                  c.and      a1, s1
                  rem        s1, a2, zero
                  addi       s0, t0, -302
                  srli       s10, s3, 29
                  sltiu      t2, a2, -393
                  fence
                  c.li       t5, 7
                  auipc      s2, 642150
                  c.beqz     a1, 102f
                  mulhu      tp, s9, s3
                  or         t4, s8, t5
                  nop
                  csrrc      s9, 0x340, s5
91:               mul        s0, a1, s4
                  csrrwi     a7, 0x340, 26
                  sub        t4, ra, a7
                  c.or       a1, a0
                  c.slli     tp, 31
                  and        s2, s9, t0
                  c.xor      a3, a2
                  slti       a4, s9, 520
                  lui        s0, 42940
                  mulhu      ra, a7, s9
                  bge        ra, t5, 117f
102:              xori       t2, s3, 503
                  csrrc      s6, 0x340, t3
                  slt        a5, a4, s3
                  fence
                  slli       t5, a2, 5
                  csrrc      gp, 0x340, s11
                  c.srai     a5, 22
                  .4byte 0x9d49 # kReservedCompressedInstr
                  c.addi     a5, -1
                  div        t3, s6, a4
                  c.or       s0, a3
                  mulhsu     a3, zero, t6
                  csrrsi     a2, 0x340, 25
                  sltiu      t1, ra, 51
                  remu       t6, s9, a2
                  sll        zero, s4, gp
117:              c.mv       s5, a0
                  csrrsi     a7, 0x340, 8
                  auipc      s5, 560474
                  bne        s3, s11, 132f
                  srli       s8, s11, 29
                  div        t4, s0, t2
                  csrrs      s0, 0x340, a2
                  sltu       t0, s8, s4
                  or         t2, s9, s10
                  c.li       tp, 11
                  bltu       a6, s10, 141f
                  bne        s8, zero, 133f
                  beq        s11, s11, 135f
                  c.srli     a3, 13
                  remu       s0, t4, t5
132:              c.addi     t0, 28
133:              c.andi     s0, 31
                  xori       t5, t3, -629
135:              c.lui      t6, 7
                  srli       tp, t6, 17
                  srli       s0, t4, 18
                  csrrc      a7, 0x340, t0
                  ori        ra, s1, 331
                  nop
141:              or         s6, s0, s10
                  c.sub      a4, a3
                  mulh       a3, a6, a1
                  add        a4, a5, t6
                  slli       t5, s7, 12
                  slli       t6, s1, 16
                  add        s2, t5, tp
                  c.sub      a1, a3
                  auipc      s6, 1004231
                  auipc      a4, 540987
                  c.beqz     a2, 164f
                  srli       s0, t6, 24
                  c.li       a4, 23
                  srai       s2, t6, 3
                  bge        gp, s2, 158f
                  slti       s6, s8, -534
                  nop
158:              xori       a1, a1, 399
                  andi       s3, t4, -969
                  andi       s5, t2, 485
                  c.srai     a5, 16
                  csrrwi     s5, 0x340, 29
                  csrrw      a5, 0x340, s5
164:              srli       s1, t1, 9
                  sll        t0, s2, t1
                  mul        s2, sp, s2
                  sra        a2, t4, a6
                  csrrsi     s10, 0x340, 2
                  c.srai     a4, 15
                  div        t5, s8, a1
                  c.bnez     s0, 173f
                  csrrwi     s3, 0x340, 22
173:              srli       t0, a0, 7
                  mulhu      a5, t1, s7
                  rem        s5, a3, s6
                  nop
                  slt        t5, s7, t5
                  csrrci     a1, 0x340, 15
                  fence
                  slti       t6, s6, -542
                  la         t3, region_4+1808 #start load_store_instr_stream_2
                  la         a2, region_4+3731 #start load_store_instr_stream_0
                  la         s9, region_4+1309 #start load_store_instr_stream_3
                  la         s6, region_4+890 #start load_store_instr_stream_1
                  la         s5, region_4+3064 #start load_store_instr_stream_4
                  sw         a0, -57(s9)
                  sh         ra, 780(s6)
                  lbu        gp, 1372(s6)
                  lb         a4, -54(s5)
                  sb         s9, 194(a2)
                  sh         t2, -1(s9)
                  lb         t6, -19(s5)
                  sb         a2, 50(t3)
                  sb         s5, 59(s9)
                  lhu        s11, -536(s6)
                  lhu        s3, -217(a2)
                  sw         s6, 241(a2)
                  lb         gp, 99(t3)
                  sb         t2, -154(a2)
                  lh         t4, -418(s6)
                  lb         s11, -385(s6)
                  sb         a3, 21(s5)
                  lh         zero, -33(s9)
                  sb         t5, 16(s5)
                  lb         s10, 28(s9)
                  lbu        s1, 61(s5)
                  lbu        t0, 24(a2)
                  lbu        t6, 63(t3)
                  sb         t2, -233(s6)
                  sb         a5, 155(s6)
                  sh         a1, 50(s5)
                  sb         t3, -51(s9) #end load_store_instr_stream_3
                  sb         s4, -248(t3)
                  lb         t0, 15(s5) #end load_store_instr_stream_4
                  lh         a3, 1658(s6)
                  lbu        s11, 192(a2)
                  lbu        s8, 851(s6) #end load_store_instr_stream_1
                  lw         zero, -44(t3) #end load_store_instr_stream_2
                  sb         a4, 16(a2) #end load_store_instr_stream_0
                  ori        t4, t0, -612
                  addi       s9, a4, 967
                  c.nop
                  c.add      s1, sp
                  c.li       s1, -1
                  csrrc      gp, 0x340, s9
                  csrrc      s0, 0x340, t5
                  c.and      a5, a0
                  c.or       a4, a3
                  c.srai     a5, 9
                  csrrs      s10, 0x340, t0
                  mulhu      t3, s0, a1
                  bge        t2, t4, 207f
                  slt        t3, s4, a1
                  c.mv       a1, t4
                  csrrci     t4, 0x340, 26
                  bne        s4, t4, 213f
                  c.li       s1, 24
                  c.li       gp, -1
                  lui        s0, 838587
                  bne        s5, t3, 218f
                  sub        ra, a5, s6
                  mulhu      tp, s10, a7
                  c.lui      s11, 19
                  and        s9, t6, s0
                  c.xor      s1, a4
207:              c.mv       s8, s3
                  auipc      t2, 797730
                  div        s3, a4, s10
                  beq        t4, a4, 212f
                  c.li       s3, -1
212:              csrrw      s0, 0x340, zero
213:              srai       s0, s7, 14
                  csrrs      tp, 0x340, s0
                  c.li       a6, -1
                  and        s5, a3, s9
                  fence
218:              c.srai     a3, 20
                  csrrsi     s9, 0x340, 13
                  c.srli     s1, 19
                  lui        s1, 836185
                  c.mv       tp, t3
                  bltu       s2, a7, 241f
                  sltu       t2, t3, t6
                  beq        t4, s6, 226f
226:              c.srai     a1, 17
                  fence.i
                  fence
                  beq        t0, t2, 233f
                  c.lui      s2, 14
                  bgeu       sp, a6, 235f
                  c.nop
233:              blt        s4, a4, 249f
                  xori       t4, a5, -258
235:              c.xor      a3, a4
                  divu       ra, t6, zero
                  or         a0, a6, ra
                  mulh       t0, s9, s3
                  xor        a3, a0, t4
                  auipc      ra, 229850
241:              sll        t0, a4, s6
                  c.bnez     a2, 250f
                  sltiu      t5, tp, 141
                  c.lui      t4, 8
                  c.slli     gp, 2
                  c.nop
                  c.srli     a2, 15
                  csrrci     s6, 0x340, 0
249:              srl        s9, a5, s11
250:              sltiu      s8, s10, -422
                  addi       a7, t3, -885
                  xor        s9, s1, s9
                  auipc      s2, 328156
                  c.mv       a1, s8
                  auipc      s0, 540063
                  mulhsu     a7, a4, t0
                  bne        a5, ra, 260f
                  srai       s10, t4, 17
                  c.sub      a0, a3
260:              divu       a0, s6, s4
                  c.lui      a3, 22
                  sra        t4, t6, s1
                  c.and      a5, a1
                  nop
                  beq        s2, a0, 267f
                  rem        a3, sp, t0
267:              c.beqz     a1, 269f
                  srai       s11, s1, 30
269:              auipc      t5, 316763
                  c.andi     a0, -1
                  andi       s6, s5, 673
                  slt        t2, s5, sp
                  csrrc      s1, 0x340, a4
                  c.nop
                  slt        s9, a1, t3
                  lw         t4, 4(sp)
                  xori       t2, s3, 442
                  sub        tp, s6, s11
                  addi       sp, sp, 12
                  slt        s1, a2, t3
447:              c.jr x29
sub_2:            csrrw      s9, 0x340, a5
                  fence.i
                  addi       sp, sp, -12
                  srl        s6, a0, s11
                  sw         t4, 4(sp)
                  c.addi     a5, -1
                  la         s8, region_0+3338 #start load_store_instr_stream_0
                  la         t1, region_0+2096 #start load_store_instr_stream_1
                  sb         gp, -55(s8)
                  sb         a6, 36(t1)
                  lbu        s3, -131(s8)
                  sb         s10, -21(t1)
                  lb         zero, -1(t1)
                  sb         s8, 46(t1)
                  sb         t3, 35(s8)
                  lbu        s3, 28(t1)
                  sb         s8, -45(t1)
                  sb         a7, 12(t1) #end load_store_instr_stream_1
                  sw         sp, 34(s8)
                  lw         a3, 22(s8) #end load_store_instr_stream_0
                  la         a1, region_1+1065 #start riscv_load_store_rand_instr_stream_0
                  lw         s0, -5(a1)
                  lhu        t1, 1(a1)
                  sb         s8, 16(a1)
                  c.add      t3, t6
                  csrrci     s0, 0x340, 5
                  csrrsi     a7, 0x340, 5
                  lbu        gp, 8(a1)
                  lbu        ra, -12(a1)
                  lhu        s1, 7(a1)
                  sb         a1, 14(a1)
                  lb         s1, -10(a1)
                  addi       a7, s10, 470
                  csrrci     a4, 0x340, 30
                  lb         t5, 10(a1)
                  lh         t3, -5(a1)
                  lbu        a4, 4(a1)
                  lbu        a0, -12(a1)
                  slti       a7, s3, 352
                  lhu        t5, -9(a1)
                  lbu        t4, -7(a1)
                  lui        t2, 765020
                  lb         t0, -4(a1)
                  sb         a3, -2(a1)
                  divu       s2, s4, a6
                  srai       s2, a7, 8
                  lb         s10, -16(a1)
                  sb         a3, -6(a1)
                  sra        s8, t5, t1
                  lb         t5, -6(a1)
                  sw         t1, 15(a1)
                  srai       a6, s8, 8
                  c.li       t2, -1
                  lb         s3, 4(a1)
                  sb         a6, 10(a1)
                  lb         t0, 3(a1) #end riscv_load_store_rand_instr_stream_0
                  addi       a4, zero, -3 #init loop 0 counter
                  xor        t4, t2, t4
                  sub        t6, s8, tp
                  fence.i
                  c.andi     a3, 13
                  srli       s1, s11, 30
                  c.nop
                  or         s11, s6, t5
                  c.mv       a5, s5
                  addi       zero, zero, 0 #init loop 0 limit
                  csrrwi     t1, 0x340, 21
                  xor        s1, s3, t5
                  mul        s11, s7, s3
                  c.addi     s10, 31
                  sltiu      s10, s8, 17
                  sltu       s0, t6, s2
                  sra        s6, s0, a7
                  c.and      a0, a0
sub_2_8_0_t:      xor        a6, s0, s10
                  mulhu      tp, a5, t5
                  addi       a4, a4, 3 #update loop 0 counter
                  xori       s1, s10, 55
                  sltiu      a5, s9, 519
                  rem        s10, a5, s10
                  or         a3, s9, t5
                  c.bnez     a4, sub_2_8_0_t #branch for loop 0
                  sub        a2, a3, a4
sub_2_3:          jal        t4, 19f
0:                c.j        22f
1:                c.j        26f
2:                jal        ra, 1b
3:                c.j        25f
4:                c.jal      14f
5:                c.jal      7f
6:                c.jal      12f
7:                jal        ra, 27f
8:                jal        ra, 21f
9:                c.j        5b
10:               c.jal      13f
11:               jal        ra, 18f
12:               c.jal      4b
13:               c.j        20f
14:               jal        t1, 0b
15:               jal        ra, 3b
16:               c.j        8b
17:               c.jal      28f
18:               c.jal      16b
19:               c.j        9b
20:               c.j        24f
21:               c.jal      23f
22:               jal        a3, 15b
23:               c.j        2b
24:               c.j        17b
25:               jal        ra, 11b
26:               jal        ra, 29f
27:               jal        ra, 10b
28:               jal        t1, 6b
29:               add        a6, s10, s10
sub_2_2:          jal        t4, 10f
0:                jal        t1, 6f
                  .4byte 0xe2eaf973 # kIllegalSystemInstr
1:                jal        s2, 9f
2:                c.jal      18f
3:                c.j        8f
4:                jal        ra, 2b
5:                jal        t1, 23f
6:                c.jal      4b
7:                jal        ra, 5b
8:                c.jal      22f
9:                jal        ra, 12f
10:               c.jal      0b
11:               c.j        16f
12:               c.j        7b
13:               c.jal      14f
14:               jal        ra, 15f
15:               c.j        11b
16:               jal        s8, 17f
17:               c.j        19f
18:               jal        t1, 20f
19:               jal        ra, 21f
20:               c.j        3b
21:               c.jal      1b
22:               jal        tp, 13b
23:               xor        s11, t1, s9
                  la         s6, region_2+1037 #start load_store_instr_stream_1
                  sb         t5, 170(s6)
                  lw         a0, 239(s6)
                  la         s2, region_2+8032 #start load_store_instr_stream_0
                  sw         s1, -1360(s2)
                  sb         tp, -141(s6)
                  lbu        s5, -1827(s2)
                  sb         t0, -2013(s2)
                  lbu        a0, -160(s6)
                  lb         a7, 96(s6)
                  sb         s7, -526(s2)
                  lbu        s1, -21(s6)
                  lb         t0, -1750(s2)
                  lbu        t5, -1297(s2)
                  lh         s0, -880(s2)
                  sb         s2, 10(s6)
                  lb         tp, -1230(s2)
                  sb         s2, 126(s6)
                  lbu        gp, -166(s6)
                  lbu        a0, 90(s6) #end load_store_instr_stream_1
                  sb         a3, -1683(s2) #end load_store_instr_stream_0
                  la         a1, region_3+36 #start riscv_hazard_instr_stream_1
                  lb         a7, 81(a1)
                  lb         a2, 11(a1)
                  lhu        a7, -10(a1)
                  lhu        a6, 242(a1)
                  csrrs      a7, 0x340, a5
                  csrrci     s8, 0x340, 10
                  lb         a7, 123(a1)
                  lbu        zero, 237(a1)
                  nop
                  divu       a5, a2, zero
                  lbu        a6, 243(a1)
                  lh         a6, -26(a1)
                  lb         zero, -25(a1)
                  sh         a7, 22(a1)
                  csrrc      s8, 0x340, zero
                  csrrc      a6, 0x340, a2
                  lb         a5, 157(a1)
                  rem        a2, a6, s8
                  sb         a6, 91(a1)
                  c.slli     s8, 19
                  slt        a6, s8, s8
                  slt        a5, zero, a6
                  csrrw      s8, 0x340, s8
                  lbu        a7, 59(a1)
                  c.sw       a5, 124(a1)
                  sll        a5, a2, s8
                  sb         s8, 85(a1)
                  lh         a2, 90(a1)
                  lb         a2, -21(a1)
                  lbu        a5, -2(a1)
                  sw         s8, 88(a1)
                  or         a7, a5, a2
                  lbu        a7, -30(a1)
                  auipc      a5, 390843
                  lb         a2, -29(a1)
                  csrrc      a7, 0x340, s8
                  lh         s8, 8(a1)
                  c.add      a7, a6
                  slt        zero, a2, zero
                  lh         a7, 142(a1)
                  lui        a2, 857587
                  csrrwi     s8, 0x340, 1
                  lbu        a7, -1(a1)
                  divu       a7, a6, s8
                  lbu        s8, 218(a1)
                  lbu        a2, 179(a1) #end riscv_hazard_instr_stream_1
                  csrrw      s6, 0x340, a4
                  add        s1, t6, a0
                  sra        t1, s5, s11
                  srai       a4, s11, 31
                  csrrsi     t3, 0x340, 14
                  slti       a6, t6, -509
                  c.slli     a1, 4
                  sltiu      s6, t2, 741
                  auipc      a3, 73788
                  and        t4, s1, gp
                  add        gp, s11, a1
                  xor        s0, a0, t6
                  csrrw      tp, 0x340, s9
                  bge        a6, t3, 17f
                  auipc      t6, 474150
                  slti       s6, gp, -571
                  auipc      t5, 929326
17:               fence.i
                  auipc      s2, 613306
                  c.srli     s0, 6
                  xor        t1, a0, t2
                  c.lui      a4, 26
                  srli       t3, zero, 16
                  c.slli     gp, 30
                  xori       t2, s6, -72
                  nop
                  bgeu       t0, s10, 37f
                  lui        a7, 187923
                  fence
                  slti       s9, s1, 212
                  c.srli     a2, 22
                  fence
                  c.srli     a2, 7
                  slti       s3, zero, 200
                  c.add      a7, t0
                  csrrci     a6, 0x340, 7
                  slti       gp, s0, 986
37:               c.srli     a4, 9
                  csrrs      a3, 0x340, a7
                  slt        s11, s5, s9
                  c.bnez     s1, 59f
                  c.beqz     s1, 44f
                  csrrw      s2, 0x340, s8
                  addi       a0, s5, 109
44:               c.xor      s1, s0
                  sltu       a0, a2, s6
                  andi       t6, t3, -750
                  sltiu      s1, s1, 613
                  auipc      t1, 435378
                  and        s6, t4, t0
                  c.srli     a5, 25
                  xor        a4, s8, a7
                  nop
                  slli       t1, t2, 17
                  mulhu      t6, t5, ra
                  c.sub      s0, a4
                  xor        a4, t6, t0
                  mul        a0, t6, s5
                  or         s10, sp, a2
59:               c.addi     a2, 28
                  c.mv       a2, ra
                  c.mv       t6, s2
                  slti       gp, a0, -155
                  sltiu      ra, s0, -480
                  xori       a3, zero, 595
                  slt        a5, s7, s11
                  sll        t4, s2, t3
                  c.addi     t2, -1
                  ori        s1, a5, -109
                  c.nop
                  sub        a7, t0, s6
                  c.li       a3, 26
                  srli       s1, zero, 9
                  srai       ra, s9, 14
                  mul        s11, a5, a5
                  slti       s6, a7, 333
                  addi       t6, a3, -687
                  and        s5, t1, s2
                  csrrc      zero, 0x340, zero
                  mul        a4, s5, a6
                  div        a3, s8, s10
                  csrrwi     t2, 0x340, 3
                  srl        s1, t0, s2
                  csrrs      a7, 0x340, a3
                  bne        t2, s8, 95f
                  fence.i
                  c.and      a4, a1
                  sra        t0, s5, a6
                  slt        a0, t1, a7
                  sltu       s0, s8, a4
                  div        a2, s7, a4
                  mulh       ra, a1, a4
                  srli       tp, tp, 13
                  fence
                  c.addi     ra, -1
95:               c.li       a7, 5
                  mulh       s0, t6, a3
                  mulhsu     s11, a4, tp
                  bne        sp, s3, 115f
                  c.srai     a0, 15
                  slt        s11, s2, t5
                  c.li       s6, -1
                  c.addi     s10, 12
                  sltu       ra, s6, a2
                  c.add      s3, s0
                  mul        s1, a4, s10
                  mul        a5, a3, t2
                  csrrwi     t2, 0x340, 15
                  c.beqz     a3, 114f
                  c.addi     s10, 21
                  c.li       s5, -1
                  csrrc      t5, 0x340, s2
                  div        t3, a4, s6
                  csrrsi     s1, 0x340, 31
114:              c.nop
115:              andi       s11, s0, -893
                  csrrs      s9, 0x340, t6
                  xori       s11, s5, 475
                  c.and      a3, a3
                  bltu       s9, zero, 136f
                  xori       t3, sp, 868
                  auipc      t6, 370405
                  bltu       a0, s1, 139f
                  divu       a0, a2, a0
                  c.srai     s0, 2
                  fence
                  bltu       sp, s10, 130f
                  div        t5, s1, t0
                  auipc      s6, 542611
                  mulh       s6, a5, s2
130:              xor        ra, t3, a1
                  sll        s6, a6, t6
                  csrrw      a4, 0x340, t6
                  bge        a3, t0, 136f
                  mulhsu     t3, s11, s9
                  c.addi     t4, -1
136:              sltiu      tp, t5, -88
                  c.addi     s9, -1
                  lui        s0, 439559
139:              slt        a2, a4, s10
                  nop
                  nop
                  sll        a0, a5, ra
                  c.sub      a1, a5
                  sltu       a5, s0, t2
                  csrrs      gp, 0x340, sp
                  sra        zero, s5, zero
                  blt        a1, t2, 161f
                  c.andi     a2, -1
                  mulhu      a3, s3, t0
                  srli       a2, gp, 28
                  mulhsu     a4, s3, gp
                  bne        a1, ra, 159f
                  and        a0, a1, a5
                  srai       s6, t1, 15
                  c.or       a0, a1
                  andi       s11, t2, 571
                  bge        t3, s10, 169f
                  mulh       s1, sp, t5
159:              divu       t5, a6, t6
                  blt        s2, s2, 174f
161:              mulhu      t3, tp, a7
                  divu       a0, a6, s1
                  srai       t2, s7, 2
                  sll        a3, t6, t6
                  bne        t3, t5, 175f
                  mulhsu     s3, gp, a3
                  xor        s5, zero, s1
                  mulhu      s10, s4, t5
169:              sll        t3, s10, s3
                  or         a5, a0, a1
                  sltiu      s8, gp, -200
                  fence
                  csrrsi     a6, 0x340, 14
174:              add        s0, s11, a1
175:              srli       a4, s2, 24
                  fence.i
                  c.beqz     s0, 193f
                  srl        ra, a5, ra
                  or         s2, a4, s6
                  csrrw      t6, 0x340, s10
                  srai       zero, t5, 9
                  or         s1, s11, t4
                  slti       s6, s6, 19
                  c.li       a6, -1
                  slti       a4, t0, 218
                  sub        a7, tp, t2
                  csrrs      s10, 0x340, t6
                  c.xor      s0, a1
                  addi       t1, s6, 623
                  c.lui      t3, 1
                  divu       t2, a5, a1
                  c.li       a2, 19
193:              csrrwi     a5, 0x340, 3
                  c.nop
                  remu       t5, s9, t4
                  csrrci     s3, 0x340, 30
                  ori        a4, ra, 888
                  bge        s1, s5, 209f
                  slt        t5, a4, s1
                  bgeu       zero, t4, 220f
                  slti       s9, a5, 51
                  c.srai     a3, 31
                  sra        a3, zero, ra
                  c.beqz     a4, 217f
                  c.and      a1, a3
                  rem        t1, ra, t5
                  c.slli     a0, 15
                  la         a1, region_3+413 #start load_store_instr_stream_0
                  la         s6, region_4+2907 #start load_store_instr_stream_2
                  la         s8, region_1+9318 #start load_store_instr_stream_3
                  lbu        s1, 5(a1)
                  lbu        t4, -1364(s6)
                  sh         a3, -5(a1)
                  lb         a4, -556(s6)
                  la         ra, region_0+2110 #start load_store_instr_stream_1
                  sw         a7, -10(ra)
                  lbu        gp, 9(s8)
                  lw         t2, -1(a1)
                  sb         s11, -8(a1)
                  sh         a4, 2(s8)
                  lb         s9, 7(ra)
                  lb         a7, 916(s6)
                  sb         s6, 3(ra)
                  lh         s5, -12(s8)
                  sh         a4, 6(ra)
                  sb         s9, -11(s8)
                  lhu        a7, -417(s6)
                  lb         t1, -3(a1)
                  lbu        s11, 941(s6)
                  sb         t0, -10(ra) #end load_store_instr_stream_1
                  lb         a2, -3(s8)
                  lbu        s3, -1674(s6)
                  lhu        a2, 13(a1)
                  sb         s5, -10(a1)
                  lb         t3, -1234(s6) #end load_store_instr_stream_2
                  sb         t0, 3(s8) #end load_store_instr_stream_3
                  .4byte 0x8b833d73 # kIllegalSystemInstr
                  sb         zero, 8(a1) #end load_store_instr_stream_0
                  c.and      a2, a2
209:              xor        s11, s10, s0
                  srli       s9, t5, 9
                  nop
                  ori        s8, sp, 154
                  slti       a0, s2, 666
                  divu       gp, s5, a5
                  c.mv       t6, ra
                  la         t3, region_3+419 #start riscv_load_store_rand_instr_stream_1
                  lbu        s1, 0(t3)
                  sll        t4, s3, a0
                  sb         t5, -14(t3)
                  sb         s3, 8(t3)
                  ori        t0, t5, -673
                  lb         a2, 13(t3)
                  lbu        a5, 12(t3)
                  lh         t0, 11(t3)
                  addi       s2, a5, 398
                  lbu        t5, 0(t3)
                  lbu        t4, -7(t3)
                  csrrc      s1, 0x340, a0
                  sb         s7, 16(t3)
                  sltu       s5, zero, gp
                  lb         gp, -4(t3)
                  add        t5, t6, a4
                  c.srai     a0, 11
                  lbu        s11, -7(t3)
                  csrrc      s3, 0x340, s6
                  lb         a6, -4(t3)
                  lb         a4, -14(t3)
                  sh         t0, -3(t3)
                  csrrsi     a7, 0x340, 27
                  lh         s0, -5(t3)
                  lhu        zero, 3(t3)
                  lb         t6, 0(t3)
                  lh         tp, 9(t3)
                  c.or       a1, s1
                  lui        s10, 134590
                  lb         s2, 8(t3)
                  andi       s1, a3, 397
                  slt        t0, a6, s7
                  lh         s3, 11(t3)
                  lbu        s6, -2(t3)
                  lbu        a7, 14(t3) #end riscv_load_store_rand_instr_stream_1
                  div        a2, a6, a0
217:              sra        s11, sp, t5
                  c.slli     t5, 10
                  csrrci     s10, 0x340, 6
220:              srai       s10, t6, 9
                  csrrwi     zero, 0x340, 20
                  bge        a7, t0, 231f
                  mulhu      s10, t3, s8
                  lui        t3, 836131
                  sll        s8, sp, s4
                  nop
                  and        a7, t3, t2
                  csrrsi     ra, 0x340, 0
                  csrrsi     ra, 0x340, 22
                  bgeu       s10, t5, 250f
231:              csrrwi     a4, 0x340, 16
                  c.addi     t5, 10
                  la         t0, region_0+3934 #start riscv_hazard_instr_stream_0
                  lw         a0, -1938(t0)
                  lb         a0, -541(t0)
                  nop
                  xori       a2, a2, 773
                  lhu        s2, -1404(t0)
                  lbu        a1, -1720(t0)
                  lui        s2, 496967
                  lb         s11, -1201(t0)
                  mulh       a0, a2, a0
                  lbu        s2, -1939(t0)
                  lbu        a2, -112(t0)
                  lb         s2, -120(t0)
                  lb         a0, -862(t0)
                  div        a1, s11, a2
                  lbu        a1, -339(t0)
                  auipc      a1, 455882
                  sb         s2, -644(t0)
                  lh         s11, 60(t0)
                  and        s0, s0, s11
                  remu       a0, a2, a2
                  lh         a2, -978(t0)
                  sb         a1, -2014(t0)
                  mul        a2, a0, a2
                  lbu        s11, -968(t0)
                  andi       a1, s2, -710
                  lhu        a1, -984(t0)
                  sw         s0, -2014(t0)
                  sh         a1, -330(t0)
                  lbu        a2, -1025(t0)
                  sb         a1, -1243(t0)
                  lb         a2, -14(t0) #end riscv_hazard_instr_stream_0
                  ori        s0, a3, -486
                  sub        a6, a5, s11
                  mul        t6, a4, ra
                  csrrci     ra, 0x340, 25
                  sub        a2, s9, a4
                  mulhu      a1, a5, t5
                  c.srli     a1, 29
                  c.andi     a4, 26
                  sra        gp, s7, a3
                  rem        a2, s3, t1
                  c.sub      a3, a4
                  remu       t0, a1, s8
                  csrrc      s6, 0x340, t1
                  xor        s8, s11, s7
                  csrrw      a0, 0x340, s4
                  c.srai     a0, 1
                  c.srai     s0, 27
250:              rem        zero, a0, t5
                  rem        s6, s8, tp
                  bgeu       s8, s3, 254f
                  bge        a2, zero, 254f
254:              bgeu       s9, s0, 262f
                  bne        a2, s6, 265f
                  srai       s5, s6, 8
                  xor        ra, s8, t3
                  c.addi     tp, 4
                  slli       t1, a4, 22
                  bgeu       t4, a5, 280f
                  csrrwi     t4, 0x340, 7
262:              srli       a2, s10, 23
                  csrrc      s2, 0x340, t4
                  mul        a0, a6, t6
265:              c.nop
                  ori        t5, zero, 290
                  c.slli     a4, 31
                  rem        s10, t2, t0
                  bgeu       t3, s9, 285f
                  c.bnez     s0, 286f
                  and        s1, s4, s5
                  c.lui      s8, 12
                  c.slli     s5, 23
                  sltiu      s11, zero, 122
                  c.addi     a5, -1
                  xori       a7, a2, -136
                  addi       s1, t4, 410
                  bgeu       t0, t3, 287f
                  blt        t0, t6, 282f
280:              fence.i
                  c.srli     s0, 14
282:              bgeu       s6, s7, 298f
                  blt        t4, s8, 285f
                  rem        zero, s8, t2
285:              csrrwi     s5, 0x340, 10
286:              sltiu      gp, s2, 773
287:              add        t0, t3, s3
                  fence
                  ori        t2, zero, 312
                  sll        s3, a5, t1
                  addi       a2, ra, 267
                  c.xor      a4, s1
                  or         t4, s3, t5
                  xori       a3, a7, 839
                  c.sub      a1, s0
                  la         s9, region_4+2060 #start load_store_instr_stream_1
                  la         t6, region_3+109 #start load_store_instr_stream_0
                  lh         tp, 6(s9)
                  lb         s2, 11(s9)
                  sh         tp, 4(s9)
                  lbu        s10, 242(t6)
                  lhu        a3, -10(s9)
                  lbu        t4, 290(t6)
                  lbu        t1, -2(s9)
                  lb         a0, 162(t6)
                  lb         a3, 5(s9)
                  lbu        ra, 15(s9)
                  sb         ra, 208(t6)
                  lbu        s2, -15(s9)
                  lbu        a7, 7(s9) #end load_store_instr_stream_1
                  sb         a2, 175(t6)
                  lb         a5, 108(t6) #end load_store_instr_stream_0
                  bltu       s2, s9, 313f
                  c.add      t0, s6
298:              auipc      a4, 2864
                  remu       a4, zero, ra
                  blt        a7, s1, 320f
                  c.xor      a4, a1
                  andi       t2, t3, -242
                  lui        t3, 461118
                  csrrw      s11, 0x340, t4
                  c.srli     s0, 13
                  c.beqz     a2, 325f
                  bge        s5, s2, 321f
                  slt        s10, t4, a7
                  mulhsu     t4, s4, tp
                  c.mv       t6, t3
                  slli       s3, a4, 31
                  csrrs      s5, 0x340, s6
313:              c.addi     a3, -1
                  sra        t3, a1, a2
                  srli       a3, t1, 18
                  srai       s9, s9, 5
                  slti       s11, a5, -413
                  sll        a1, s0, a6
                  mulh       a4, a2, s5
320:              divu       a1, gp, a6
321:              c.sub      a2, a0
                  div        s2, ra, s10
                  c.addi     t2, -1
                  srli       t2, s6, 4
325:              c.andi     a0, -1
                  c.srai     a5, 22
                  csrrc      s1, 0x340, a3
                  bgeu       sp, a4, 337f
                  mul        tp, s4, s11
                  and        s3, a0, t4
                  mul        t0, a7, sp
                  slt        s0, t6, a7
                  lui        s2, 761481
                  c.beqz     a4, 354f
                  addi       s9, s4, -729
                  c.li       ra, -1
337:              ori        ra, t1, 687
                  c.or       a4, a4
                  bge        s0, zero, 348f
                  srai       s11, a5, 10
                  sub        zero, gp, tp
                  c.slli     a6, 19
                  c.add      t6, s4
                  mul        zero, t3, a6
                  rem        ra, s9, s4
                  csrrwi     t1, 0x340, 3
                  srli       s5, sp, 11
348:              c.addi     a7, -1
                  bgeu       t0, t4, 357f
                  c.slli     s11, 16
                  and        t1, t4, s4
                  c.srli     a2, 26
                  mul        zero, s3, t4
354:              nop
                  csrrci     ra, 0x340, 1
                  addi       t2, a6, 34
357:              c.andi     a0, -1
                  c.bnez     a1, 361f
                  and        t6, s2, s9
                  xor        s0, zero, tp
361:              mulhsu     a3, t4, s1
                  nop
                  csrrs      s9, 0x340, s5
                  c.and      a0, a2
                  bge        s10, s8, 375f
                  srai       zero, a2, 9
                  c.mv       a5, sp
                  nop
                  c.xor      s0, a1
                  c.andi     s1, -1
                  csrrci     s11, 0x340, 7
                  xori       t4, a4, -462
                  sra        a7, zero, t4
                  csrrsi     t0, 0x340, 10
375:              csrrwi     s2, 0x340, 22
                  c.xor      a3, a3
                  sub        ra, s8, zero
                  xori       a7, a4, 414
                  fence.i
                  c.slli     s6, 27
                  csrrsi     a2, 0x340, 10
                  beq        a3, s6, 398f
                  srl        s10, s10, a1
                  bgeu       t3, a6, 396f
                  c.srli     a5, 19
                  fence.i
                  c.nop
                  mulhsu     a1, s9, s7
                  c.srli     s0, 17
                  c.and      a5, a3
                  divu       s10, t5, a3
                  c.slli     a3, 13
                  c.sub      s0, a2
                  div        s8, a4, t6
                  addi       t3, a4, 911
396:              csrrs      t0, 0x340, s7
                  fence
398:              andi       a5, a7, -892
                  slli       s2, s3, 27
                  c.srli     s0, 12
                  csrrci     s6, 0x340, 2
                  sll        s9, a3, s3
                  bgeu       s7, t4, 420f
                  remu       s9, s11, a0
                  mulh       s2, s7, a7
                  fence
                  divu       s9, tp, s0
                  csrrwi     t4, 0x340, 24
                  csrrw      a0, 0x340, s7
                  mulhsu     s3, s8, t4
                  rem        t5, s9, zero
                  mul        s3, a3, s5
                  slli       a7, a6, 27
                  auipc      s1, 906406
                  srai       t0, s5, 2
                  csrrs      gp, 0x340, s7
                  divu       t2, s2, s1
                  c.nop
                  slt        a0, s10, a2
420:              csrrsi     a2, 0x340, 27
                  and        s1, s11, s4
                  bltu       gp, gp, 435f
                  lui        s10, 267693
                  slti       a4, a5, -815
                  addi       t1, t5, 999
                  auipc      a1, 730100
                  rem        s2, s1, s9
                  c.srli     a5, 20
                  bne        sp, a2, 433f
                  slli       s1, a7, 23
                  c.lui      a7, 21
                  c.or       a1, a2
433:              bge        s8, s5, 437f
                  ori        t4, tp, 342
435:              csrrs      s9, 0x340, a3
                  c.lui      a2, 17
437:              bltu       tp, t2, 451f
                  sra        t0, s6, s5
                  fence
                  csrrci     tp, 0x340, 18
                  fence.i
                  sll        s0, sp, t2
                  div        a5, t4, s6
                  c.or       a2, a1
                  xor        a0, tp, s10
                  beq        t6, s6, 447f
447:              c.addi     s9, -1
                  mulhu      a7, s10, a0
                  remu       s5, s3, a0
                  c.sub      a4, a0
451:              c.mv       a0, t6
                  c.nop
                  c.srai     a0, 16
                  div        zero, a1, s4
                  andi       ra, a2, -179
                  slt        s8, t4, gp
                  auipc      t2, 622288
                  blt        t5, t5, 468f
                  blt        t5, t2, 475f
                  sub        ra, s8, tp
                  div        t2, s2, t1
                  csrrc      t4, 0x340, a5
                  csrrsi     s5, 0x340, 23
                  srai       ra, a6, 15
                  divu       a6, a6, s11
                  or         t4, a0, a2
                  ori        t2, s1, 364
468:              ori        s10, a5, 391
                  c.slli     t0, 14
                  beq        s4, s3, 477f
                  sub        s9, t5, a6
                  slt        s9, s5, s10
                  xori       s5, tp, 84
                  nop
475:              fence
                  beq        s4, a0, 496f
477:              sltu       a4, s2, a3
                  bge        s8, a5, 495f
                  and        a0, a5, s10
                  rem        t6, ra, s10
                  c.mv       s10, a4
                  beq        s11, t2, 493f
                  mulh       a2, t0, s2
                  csrrs      t1, 0x340, t0
                  divu       t5, s1, a0
                  mulh       a6, t4, tp
                  nop
                  csrrwi     gp, 0x340, 20
                  andi       s6, a5, 426
                  div        s2, gp, s7
                  div        a6, s8, t5
                  srai       t2, t2, 25
493:              div        a1, t4, t4
                  c.sub      a0, s0
495:              sltu       a6, a4, s0
496:              c.beqz     a0, 502f
                  slti       s2, a0, 349
                  nop
                  c.srli     a2, 29
                  slli       t2, ra, 16
                  div        t4, t3, gp
502:              mulhsu     t5, a0, s11
                  lui        a7, 687826
                  c.addi     s1, -1
                  c.nop
                  slli       s3, a5, 4
                  csrrsi     s9, 0x340, 24
                  divu       a1, t3, a2
                  c.andi     a1, 26
                  c.and      a0, s1
                  fence
                  c.li       t6, 15
                  mulhsu     a2, ra, t0
                  xor        s3, s2, t4
                  csrrs      t2, 0x340, a2
                  bge        t3, t5, 527f
                  fence.i
                  c.add      tp, a7
                  csrrw      a7, 0x340, gp
                  c.or       s1, a1
                  csrrc      s3, 0x340, tp
                  c.or       s1, a2
                  csrrs      s6, 0x340, t2
                  c.or       a2, s1
                  srl        a2, s2, t6
                  ori        t5, s8, 135
527:              srl        t1, a1, t1
                  c.andi     a1, 31
                  fence
                  xor        t0, t5, s8
                  c.li       a1, -1
                  c.andi     a4, -1
                  addi       t1, s10, -714
                  srl        a0, s9, t0
                  srli       s0, s6, 11
                  c.add      gp, a7
                  csrrci     a6, 0x340, 21
                  lw         t4, 4(sp)
                  sll        a2, t3, s3
                  addi       sp, sp, 12
                  mulh       s11, s11, s7
864:              c.jr x29
sub_1:            addi       sp, sp, -20
                  sw         t4, 4(sp)
                  andi       a3, t2, -912
                  c.add      gp, gp
                  csrrci     ra, 0x340, 4
                  and        a6, gp, s9
sub_1_4:          jal        t4, 1f
0:                c.jal      20f
1:                c.jal      15f
2:                c.j        10f
3:                c.jal      21f
4:                jal        ra, 7f
5:                jal        ra, 12f
6:                jal        t0, 24f
7:                jal        ra, 3b
8:                jal        ra, 4b
9:                c.j        18f
10:               c.j        14f
11:               c.j        6b
12:               c.j        2b
13:               c.jal      8b
14:               jal        t1, 0b
15:               c.jal      19f
16:               c.jal      13b
17:               c.jal      16b
18:               c.j        22f
19:               c.j        5b
20:               c.jal      17b
21:               jal        ra, 23f
22:               c.jal      11b
23:               c.jal      9b
24:               nop
                  la         t5, region_4+3688 #start load_store_instr_stream_2
                  lh         s5, -2028(t5)
                  la         t3, region_4+4012 #start load_store_instr_stream_0
                  la         s10, region_4+2228 #start load_store_instr_stream_1
                  lbu        t6, 12(s10)
                  lb         a1, -511(t5)
                  lb         zero, 7(s10)
                  sb         t1, -15(t3)
                  sb         t2, -1679(t5)
                  lbu        ra, 1(s10)
                  lb         t0, 61(t5)
                  sb         t2, 2(t3)
                  sb         s9, 3(t3)
                  sb         t0, 106(t5)
                  lbu        a6, 6(s10)
                  lb         s9, -1156(t5)
                  lb         a0, -7(s10)
                  lb         a5, 15(s10)
                  lb         s9, -2(t3)
                  lbu        a3, -2006(t5)
                  sb         s7, -15(t3)
                  lb         s8, 12(s10)
                  sb         s9, 14(s10)
                  sb         s4, 0(t3)
                  lbu        s8, -694(t5)
                  lh         a2, 8(s10)
                  lhu        s0, 6(s10) #end load_store_instr_stream_1
                  lb         s3, -1628(t5) #end load_store_instr_stream_2
                  lbu        ra, -7(t3) #end load_store_instr_stream_0
                  la         s9, region_2+3454 #start load_store_instr_stream_1
                  la         a3, region_4+23 #start load_store_instr_stream_0
                  lb         t4, -212(s9)
                  lbu        t3, 3(a3)
                  sb         s8, 13(a3)
                  lbu        t0, -24(s9)
                  lb         a6, 225(s9)
                  sh         s3, -70(s9)
                  lb         a5, -2(a3)
                  lbu        t6, 156(s9)
                  sh         tp, 28(s9)
                  sb         gp, 13(a3)
                  lbu        t3, -179(s9)
                  sb         t4, 5(a3)
                  lb         s3, 10(a3)
                  sb         ra, 47(s9)
                  lhu        s2, -5(a3)
                  lbu        s8, 61(s9)
                  sb         a1, 222(s9) #end load_store_instr_stream_1
                  lbu        s1, 13(a3) #end load_store_instr_stream_0
                  addi       s1, zero, -9 #init loop 0 counter
                  addi       s9, s9, -546
                  addi       zero, zero, 0 #init loop 0 limit
sub_1_12_0_t:     div        s2, a6, a0
                  addi       s1, s1, 1 #update loop 0 counter
                  c.or       a2, a0
                  c.addi     a4, -1
                  c.srli     s0, 15
                  c.beqz     s1, sub_1_12_0_t #branch for loop 0
                  slli       t2, ra, 28
                  la         s9, region_0+146 #start riscv_hazard_instr_stream_1
                  slti       s8, s8, 243
                  lb         a1, -85(s9)
                  and        a1, s10, t3
                  sw         a1, 190(s9)
                  sltu       t3, a1, s10
                  csrrwi     a1, 0x340, 21
                  sb         a1, 173(s9)
                  sra        s0, s0, t3
                  fence
                  c.srai     s0, 25
                  lbu        a1, -60(s9)
                  lbu        t3, -33(s9)
                  mulh       s0, s8, s3
                  sb         s0, 103(s9)
                  and        s8, t3, a1
                  sb         s8, 33(s9)
                  nop
                  c.xor      a1, s0
                  lb         s3, 161(s9)
                  fence
                  lbu        s3, -76(s9)
                  rem        a1, s3, s8
                  csrrs      s0, 0x340, a1
                  srl        s10, s3, s10
                  mulh       t3, a1, a1
                  sb         s10, -123(s9)
                  lbu        a1, -52(s9)
                  lbu        a1, -121(s9)
                  lbu        s10, 255(s9)
                  fence
                  lh         s0, 12(s9)
                  andi       s3, s0, 273
                  xor        a1, a1, t3
                  csrrsi     s8, 0x340, 29
                  lb         s8, 61(s9)
                  sh         s10, 22(s9)
                  sll        a1, t3, s3
                  sb         s8, 182(s9)
                  lbu        a1, 237(s9)
                  lb         t3, 96(s9)
                  sb         s10, 65(s9) #end riscv_hazard_instr_stream_1
sub_1_5:          jal        t4, 23f
0:                c.jal      14f
1:                c.jal      25f
2:                c.jal      20f
3:                c.j        1b
4:                c.jal      24f
5:                jal        ra, 8f
6:                c.jal      12f
7:                c.j        28f
8:                c.jal      2b
9:                c.jal      17f
10:               jal        ra, 13f
11:               jal        t1, 22f
12:               c.jal      21f
13:               c.j        19f
14:               c.jal      4b
15:               c.j        0b
16:               c.jal      7b
17:               jal        t1, 15b
18:               c.j        16b
19:               c.jal      5b
20:               c.jal      6b
21:               c.j        11b
22:               c.j        26f
23:               c.j        10b
24:               c.jal      3b
25:               c.jal      27f
26:               jal        t5, 18b
27:               c.j        29f
28:               jal        s2, 9b
29:               csrrs      t3, 0x340, s10
                  la         a2, region_3+511 #start riscv_hazard_instr_stream_2
                  sb         s3, -8(a2)
                  nop
                  lbu        s1, -6(a2)
                  csrrci     t5, 0x340, 9
                  nop
                  c.slli     t2, 24
                  slt        s5, s3, s3
                  sw         t5, -11(a2)
                  sb         s1, -9(a2)
                  add        s1, t5, t5
                  xor        s3, t2, ra
                  srai       s5, s3, 8
                  andi       t5, s5, -608
                  sb         s3, -14(a2)
                  lb         t2, -10(a2)
                  xori       s5, s5, 968
                  and        s3, s5, s3
                  csrrci     s3, 0x340, 25
                  mul        s1, s3, ra
                  sub        t5, t2, t2
                  c.and      s1, s1
                  ori        s3, s5, 673
                  c.addi     s5, -1
                  mulh       s3, s5, s1
                  sb         ra, -4(a2)
                  sb         s3, -2(a2)
                  lb         s1, 0(a2)
                  divu       t5, s3, s1
                  lbu        t5, -14(a2)
                  xori       s1, s5, -458
                  sb         s5, -10(a2)
                  addi       ra, s1, -123
                  sltu       t5, t2, ra
                  lhu        t2, -5(a2)
                  lb         s1, -8(a2)
                  mulhu      t2, t5, s5
                  sb         t2, -14(a2)
                  lui        ra, 392775
                  c.addi     s1, -1
                  lbu        ra, -10(a2)
                  sb         t5, -13(a2) #end riscv_hazard_instr_stream_2
                  la         a2, region_2+2353 #start riscv_load_store_rand_instr_stream_2
                  c.lui      ra, 19
                  mul        s8, s5, t5
                  sb         s0, -66(a2)
                  lhu        a1, -15(a2)
                  sb         a5, 120(a2)
                  lb         s5, -140(a2)
                  xori       s8, gp, -789
                  sw         a7, 247(a2)
                  csrrwi     tp, 0x340, 18
                  lb         s2, -108(a2)
                  lhu        a0, 163(a2)
                  sh         ra, -49(a2)
                  lbu        s8, 54(a2)
                  and        t4, a4, t2
                  auipc      s1, 741547
                  c.andi     s0, 14
                  sb         s8, -206(a2)
                  lbu        t5, 28(a2)
                  lb         t3, 250(a2)
                  lb         t5, 229(a2)
                  div        s8, s3, t2
                  sh         a6, 249(a2)
                  sb         sp, -84(a2)
                  sb         zero, -171(a2)
                  lb         s5, 27(a2)
                  lb         s10, -256(a2)
                  csrrs      gp, 0x340, tp
                  lbu        s11, -9(a2)
                  sh         t4, -191(a2)
                  lbu        t2, -100(a2)
                  sb         a2, 100(a2)
                  sh         a1, 157(a2)
                  ori        tp, a6, 574
                  lbu        t1, 194(a2)
                  lbu        zero, -46(a2)
                  sb         t1, 193(a2)
                  sb         a0, -160(a2)
                  lh         gp, 59(a2) #end riscv_load_store_rand_instr_stream_2
                  la         a3, region_3+446 #start load_store_instr_stream_0
                  sb         a3, 19(a3)
                  la         s0, region_0+1575 #start load_store_instr_stream_1
                  lw         s11, -78(a3)
                  lbu        t3, 191(s0)
                  sb         a3, -23(s0)
                  lbu        s11, -95(a3)
                  lb         t1, 80(s0)
                  lbu        t6, -141(a3)
                  lbu        s9, -57(a3)
                  lb         a6, 218(s0)
                  lbu        a2, -135(a3)
                  sb         ra, -24(s0) #end load_store_instr_stream_1
                  lbu        s1, -235(a3)
                  sw         s8, -62(a3)
                  sh         ra, -230(a3) #end load_store_instr_stream_0
                  la         s10, region_2+187 #start riscv_load_store_rand_instr_stream_0
                  lb         zero, 18(s10)
                  c.add      t5, a7
                  sb         sp, -36(s10)
                  c.slli     s3, 25
                  sb         t6, 6(s10)
                  c.or       s1, a0
                  ori        s11, t0, 39
                  sw         t5, 61(s10)
                  lw         tp, -23(s10)
                  addi       s3, gp, 964
                  auipc      s5, 784389
                  sw         t4, -35(s10)
                  c.sub      s1, a3
                  xori       s8, a1, -219
                  csrrsi     a3, 0x340, 11
                  lbu        t0, -52(s10)
                  lhu        s3, -29(s10)
                  nop
                  c.srai     a0, 12
                  auipc      t1, 710313
                  c.srai     a1, 14
                  xor        a3, s5, s7
                  rem        s5, a0, s1
                  divu       a2, a0, a7
                  lb         a4, -62(s10)
                  c.li       ra, -1
                  lhu        s0, 23(s10)
                  c.mv       t6, s6
                  sb         t0, -37(s10)
                  ori        tp, a2, 72
                  c.andi     s1, 11
                  divu       s8, t0, s2
                  sh         a5, -59(s10)
                  lb         a7, -26(s10)
                  srai       ra, a5, 29
                  slli       s11, s9, 15
                  c.xor      s1, a5
                  sb         t6, -28(s10) #end riscv_load_store_rand_instr_stream_0
                  la         a0, region_4+485 #start load_store_instr_stream_2
                  la         t6, region_3+495 #start load_store_instr_stream_1
                  la         s10, region_2+3003 #start load_store_instr_stream_3
                  la         s3, region_0+2636 #start load_store_instr_stream_4
                  la         t4, region_1+2697 #start load_store_instr_stream_0
                  lbu        s0, -54(s10)
                  lbu        t2, -227(s3)
                  sh         t2, 845(a0)
                  lb         t3, 9(t6)
                  sb         sp, -34(s10)
                  sb         a3, -26(t4)
                  lb         s1, -9(s10)
                  lw         zero, 343(a0)
                  lb         a3, 1632(a0)
                  .4byte 0x9f5d # kReservedCompressedInstr
                  lbu        t1, 38(t4)
                  lb         s6, -181(s3)
                  sb         s0, -178(s10)
                  sw         s0, -155(t6)
                  lb         a4, -47(t6)
                  lh         s0, -205(s10)
                  lb         s5, -45(s3)
                  lh         s2, -33(t6)
                  lb         a2, 102(a0)
                  sb         t4, -3(t4)
                  lw         t0, -239(s10)
                  lhu        a3, 214(s3)
                  lhu        s0, -43(t6)
                  lbu        tp, -233(t6)
                  lhu        s9, 47(t4)
                  sh         s10, 54(s3) #end load_store_instr_stream_4
                  sb         t1, -62(s10)
                  lb         s5, 37(t4)
                  lb         a3, -137(t6)
                  sb         a1, 100(s10) #end load_store_instr_stream_3
                  lh         a3, -431(a0) #end load_store_instr_stream_2
                  sw         s7, -159(t6)
                  lb         a6, -18(t6) #end load_store_instr_stream_1
                  lbu        s5, 27(t4) #end load_store_instr_stream_0
sub_1_3:          jal        t4, 5f
0:                c.jal      6f
1:                c.jal      15f
2:                c.jal      10f
3:                c.j        9f
4:                c.j        3b
5:                c.jal      1b
6:                c.jal      11f
7:                c.jal      8f
8:                c.j        0b
9:                c.j        12f
10:               jal        ra, 14f
11:               jal        ra, 16f
12:               c.j        13f
13:               c.j        7b
14:               c.jal      4b
15:               c.jal      2b
16:               c.jal      17f
17:               c.sub      a3, s1
                  addi       a0, zero, 10 #init loop 1 counter
                  slt        s3, t3, a1
                  addi       t3, gp, 256
                  c.mv       a1, t1
                  xor        gp, a7, t1
                  sub        t0, s10, ra
                  c.xor      a3, a5
                  addi       zero, zero, 0 #init loop 1 limit
                  c.addi     s0, 20
sub_1_13_1_t:     lui        a4, 981076
                  addi       s11, a5, -457
                  slt        t0, a7, t1
                  addi       a0, a0, -5 #update loop 1 counter
                  c.add      a5, s8
                  addi       ra, zero, -5 #init loop 0 counter
                  addi       t2, zero, -16 #init loop 0 limit
                  c.srli     a1, 29
                  rem        a4, s11, s10
                  mul        a6, ra, s10
                  c.addi     t6, 27
sub_1_13_0_t:     c.andi     a4, -1
                  c.and      a3, s1
                  addi       ra, ra, -5 #update loop 0 counter
                  divu       a1, s1, s11
                  xor        s3, a6, a3
                  bge        ra, t2, sub_1_13_0_t #branch for loop 0
                  c.lui      s3, 31
                  c.beqz     a0, sub_1_13_1_t #branch for loop 1
                  divu       t3, a4, s3
                  la         a6, region_2+407 #start load_store_instr_stream_1
                  sh         t5, -41(a6)
                  la         a2, region_2+6240 #start load_store_instr_stream_2
                  sb         s0, 62(a6)
                  la         s5, region_2+6599 #start load_store_instr_stream_0
                  sh         ra, 43(a6)
                  lhu        a4, -1076(a2)
                  lhu        s9, 51(a6)
                  lb         t6, -810(s5)
                  lbu        a4, 178(a2)
                  lb         zero, -54(a6)
                  lb         s9, -1052(s5)
                  lb         s1, -804(s5)
                  lw         s2, -19(a6)
                  lb         a0, 729(s5)
                  sb         a0, -34(a6)
                  sb         s9, -522(s5)
                  sb         gp, -1453(a2)
                  lbu        a1, -1136(s5)
                  sb         t6, -1959(a2)
                  lw         s0, -348(a2)
                  sw         a0, 900(a2) #end load_store_instr_stream_2
                  sb         s10, -26(a6) #end load_store_instr_stream_1
                  sh         s5, 125(s5) #end load_store_instr_stream_0
                  la         t0, region_2+8136 #start riscv_hazard_instr_stream_0
                  addi       a2, t2, -679
                  lhu        t2, -148(t0)
                  lhu        t2, -1342(t0)
                  lbu        s8, -1814(t0)
                  sh         s5, -1776(t0)
                  lb         t4, -1211(t0)
                  mulh       t2, s8, t4
                  lh         a2, -234(t0)
                  .4byte 0xe2fde043 # kIllegalOpcode
                  slli       s8, t4, 19
                  csrrsi     s5, 0x340, 27
                  lh         a5, -186(t0)
                  slli       t4, s5, 3
                  lb         t4, -1136(t0)
                  nop
                  sb         s8, 25(t0)
                  sb         t4, -997(t0)
                  divu       t2, t2, a2
                  xor        s8, t4, t4
                  lh         a2, -738(t0)
                  csrrs      s5, 0x340, a2
                  lb         s5, -85(t0)
                  sb         s5, -1843(t0)
                  c.nop
                  csrrwi     t2, 0x340, 11
                  addi       t2, a2, 20
                  lhu        s8, -548(t0)
                  sll        t4, a2, a2
                  slt        t4, a2, t2
                  c.slli     s5, 3
                  c.sub      a5, a2
                  .4byte 0x11c3f2d3 # kIllegalOpcode
                  xori       t2, t2, 700
                  fence
                  mul        s8, t2, a5
                  lb         s5, -1721(t0)
                  slti       s5, s5, 248
                  sb         t4, -533(t0)
                  c.andi     a5, 19
                  lui        a2, 935758
                  lhu        a5, -478(t0) #end riscv_hazard_instr_stream_0
                  c.li       a6, -1
                  csrrsi     t2, 0x340, 1
                  sltiu      s11, t3, 728
                  c.or       a3, s0
                  fence
                  bltu       t5, a1, 18f
                  mulhsu     t3, t5, s11
                  slt        a1, t4, t6
                  and        t1, tp, s4
                  c.li       s6, 23
                  bgeu       a0, t2, 18f
                  sltiu      tp, tp, -119
                  c.addi     t0, 6
                  mulh       s1, t0, gp
                  xor        s9, a1, s10
                  rem        a2, a7, s9
                  div        a2, t3, a1
                  srli       t6, gp, 19
18:               srai       t0, gp, 25
                  rem        ra, s2, a1
                  csrrwi     a4, 0x340, 8
                  addi       gp, t3, 470
                  lui        t5, 16383
                  remu       gp, a7, zero
                  fence
                  sltu       a4, s7, sp
                  c.add      a4, s2
                  nop
                  csrrc      t5, 0x340, s9
                  addi       ra, s5, 34
                  mul        a7, s1, t1
                  csrrc      s0, 0x340, zero
                  slli       a0, t3, 26
                  srl        s11, s1, s11
                  or         s2, s7, a2
                  csrrc      a4, 0x340, a5
                  divu       a5, s11, t4
                  bge        t0, t4, 41f
                  c.and      s0, a1
                  sra        t1, zero, t2
                  srai       a7, t3, 31
41:               xor        gp, s4, t5
                  srli       tp, t3, 21
                  slti       a6, ra, 281
                  bne        t3, s7, 61f
                  beq        s1, ra, 61f
                  c.lui      a1, 24
                  c.slli     t5, 6
                  andi       gp, a4, -418
                  sltu       t3, t6, a4
                  remu       s5, gp, t4
                  c.slli     s11, 16
                  c.lui      ra, 27
                  mulh       s2, tp, s7
                  xori       s3, s1, 830
                  mulhu      gp, a2, t3
                  c.add      t5, s11
                  sub        zero, sp, s0
                  c.slli     t1, 2
                  c.bnez     a3, 75f
                  xori       tp, s2, -911
61:               fence.i
                  slt        a5, t2, s11
                  bge        t1, s5, 77f
                  c.nop
                  srl        a2, t0, sp
                  csrrci     t2, 0x340, 5
                  csrrsi     a6, 0x340, 18
                  slt        t6, s5, a1
                  srli       s1, t6, 17
                  or         ra, s3, ra
                  csrrw      t2, 0x340, a7
                  add        a1, s2, s2
                  c.andi     a0, 13
                  csrrc      a5, 0x340, a5
75:               sltu       tp, s3, tp
                  xor        zero, tp, a5
                  .4byte 0x288ac933 # kIllegalFunc7
77:               c.xor      a3, a5
                  sra        tp, s7, s10
                  nop
                  c.mv       s9, s0
                  andi       a5, s9, 998
                  c.add      ra, t6
                  csrrsi     s5, 0x340, 8
                  auipc      s5, 386315
                  divu       s0, a6, s7
                  c.li       t1, -1
                  blt        s10, t0, 105f
                  andi       a3, a7, -752
                  lui        s1, 436030
                  ori        t3, a7, -507
                  c.beqz     a1, 102f
                  divu       s2, s4, s2
                  add        t0, a2, a3
                  xor        t3, s7, s10
                  sltiu      a2, t4, 88
                  sll        t4, t0, s11
                  csrrc      s0, 0x340, t2
                  csrrs      t1, 0x340, t6
                  c.xor      s0, a2
                  bne        s4, tp, 115f
                  auipc      s3, 874116
102:              c.add      gp, a1
                  c.bnez     a5, 110f
                  c.andi     a1, -1
105:              sltiu      s0, s2, 333
                  c.srli     a1, 18
                  csrrci     s5, 0x340, 9
                  mulhu      t5, s4, t6
                  bgeu       s2, t5, 127f
110:              csrrsi     gp, 0x340, 12
                  beq        t5, sp, 124f
                  bgeu       t1, a5, 119f
                  add        s9, a5, s2
                  c.and      a1, s0
115:              c.xor      s0, s1
                  xor        s1, s9, t1
                  lui        s0, 378259
                  fence
119:              slli       t6, s0, 9
                  srli       t5, a6, 2
                  csrrc      a1, 0x340, s9
                  c.bnez     a1, 135f
                  c.bnez     a3, 134f
124:              slt        s2, gp, ra
                  div        a4, t5, s4
                  mul        zero, a7, t5
127:              xori       s8, a2, 287
                  csrrc      s10, 0x340, s7
                  c.beqz     s0, 146f
                  csrrwi     t3, 0x340, 21
                  mul        t5, a4, sp
                  nop
                  c.sub      a0, a0
134:              c.sub      a0, a5
135:              c.li       s5, -1
                  mul        a3, s10, s7
                  c.beqz     a4, 144f
                  and        s6, t5, a5
                  c.andi     s1, -1
                  bltu       a3, s11, 160f
                  divu       s10, a6, a7
                  bgeu       t6, a5, 154f
                  mul        s8, s0, s5
144:              c.srli     s0, 30
                  csrrwi     a6, 0x340, 30
146:              c.mv       tp, sp
                  bge        ra, ra, 149f
                  c.mv       gp, s10
149:              c.slli     s0, 13
                  c.lui      t6, 28
                  xori       tp, t4, -853
                  lui        gp, 933691
                  c.bnez     a5, 165f
154:              srai       s8, s4, 0
                  sll        t5, s7, t0
                  csrrs      t3, 0x340, a7
                  c.add      s9, s6
                  addi       ra, s5, -677
                  divu       s6, sp, s4
160:              bge        t2, a2, 168f
                  slli       gp, t6, 8
                  fence.i
                  sub        a5, t2, a5
                  c.srli     a0, 23
165:              auipc      a0, 989208
                  mul        s3, s7, zero
                  remu       t2, s11, sp
168:              sll        t0, a5, s9
                  c.beqz     s1, 178f
                  mulhu      a3, zero, s10
                  rem        s10, s2, s1
                  divu       t3, a6, a2
                  bltu       t1, a4, 176f
                  c.or       a1, a2
                  bne        t5, s6, 195f
176:              and        ra, s6, a6
                  c.mv       a6, a3
178:              csrrwi     s0, 0x340, 11
                  rem        t4, ra, s0
                  csrrsi     a1, 0x340, 18
                  mulhsu     t1, t6, t6
                  andi       s9, t5, 357
                  c.andi     a0, 7
                  csrrc      a4, 0x340, a3
                  slti       a3, a7, -1004
                  mulhsu     t6, sp, tp
                  c.addi     ra, 6
                  sra        s10, t3, s4
                  andi       a6, a1, 607
                  fence.i
                  ori        gp, s1, -585
                  c.xor      a1, a2
                  csrrs      a6, 0x340, gp
                  bgeu       zero, s4, 205f
195:              lui        s5, 706930
                  c.and      a2, a4
                  or         t1, s3, s10
                  divu       s9, tp, sp
                  sra        tp, t6, s11
                  c.lui      s9, 22
                  mulh       a3, s8, s0
                  c.or       s1, a3
                  c.add      a0, s8
                  csrrs      t3, 0x340, s7
205:              div        ra, s10, t1
                  sra        t1, a2, t3
                  beq        a5, t5, 209f
                  mulhsu     s3, s11, s6
209:              or         s11, t3, t0
                  mulhsu     a6, s8, a6
                  srai       s9, s3, 29
                  bge        s7, a7, 217f
                  sub        t6, s9, a7
                  beq        s0, s2, 215f
215:              bgeu       a0, t3, 227f
                  c.lui      a3, 10
217:              csrrci     s3, 0x340, 31
                  or         s3, t0, sp
                  fence
                  xor        tp, a2, s11
                  mulh       s10, t1, s4
                  beq        a4, a6, 237f
                  csrrsi     t6, 0x340, 25
                  fence.i
                  c.sub      s1, a1
                  bge        a7, s4, 229f
227:              auipc      s6, 716237
                  slli       a5, s6, 8
229:              c.lui      s1, 24
                  blt        s2, a3, 243f
                  auipc      t1, 281610
                  c.xor      a5, a0
                  beq        a6, s5, 249f
                  bge        tp, s2, 239f
                  sltiu      a5, s5, 142
                  c.or       s0, s0
237:              andi       t6, s1, 6
                  addi       a4, a2, -72
239:              sltu       t6, s6, s10
                  csrrw      t2, 0x340, a6
                  auipc      t6, 187699
                  blt        s10, a0, 244f
243:              c.slli     t5, 17
244:              ori        t0, t3, -694
                  c.add      s0, s7
                  slli       gp, t5, 16
                  slti       t5, s5, 125
                  sll        s10, s7, tp
249:              bltu       s7, s4, 257f
                  nop
                  or         s3, s1, s1
                  c.lui      gp, 5
                  nop
                  and        s5, zero, s11
                  addi       a6, a5, -326
                  c.andi     s1, -1
257:              rem        a7, tp, t0
                  srl        a7, s4, s5
                  c.srli     s1, 30
                  c.add      gp, t6
                  c.beqz     a3, 265f
                  xor        s8, s10, a1
                  c.nop
                  divu       gp, gp, zero
265:              nop
                  c.srli     a1, 30
                  sra        t4, ra, a4
                  and        s11, t4, t5
                  srl        a3, s7, a7
                  fence
                  csrrw      s11, 0x340, s2
                  and        a3, s2, t5
                  bne        t5, a4, 280f
                  rem        s8, s4, a1
                  c.addi     s3, 24
                  c.srli     s1, 5
                  csrrci     gp, 0x340, 25
                  fence
                  sra        gp, s10, a3
280:              and        s8, a6, a1
                  csrrci     gp, 0x340, 5
                  sltu       zero, gp, a2
                  slti       s9, s4, -85
                  remu       tp, t6, t4
                  c.srli     s0, 7
                  mul        tp, s1, tp
                  div        s1, s5, t4
                  c.andi     s0, -1
                  csrrs      s8, 0x340, a6
                  c.beqz     s0, 292f
                  xor        a2, a4, s9
292:              sltu       a3, a0, t3
                  ori        t3, t5, 740
                  c.srai     a5, 11
                  bltu       s7, s2, 306f
                  csrrc      t3, 0x340, s6
                  sra        ra, s11, t5
                  bgeu       a7, a3, 312f
                  slt        t1, ra, s7
                  c.lui      s11, 23
                  csrrci     ra, 0x340, 23
                  rem        a7, a5, s1
                  csrrc      tp, 0x340, s0
                  mulhu      t0, t4, t4
                  blt        s1, zero, 316f
306:              remu       a3, s10, s1
                  auipc      t4, 214539
                  addi       s0, sp, 477
                  c.andi     a1, 27
                  xori       tp, sp, -390
                  srai       a6, a0, 26
312:              blt        s5, a2, 320f
                  c.bnez     s1, 322f
                  fence
                  auipc      t4, 395972
316:              c.mv       t1, s8
                  bge        s7, t2, 335f
                  bgeu       a7, s4, 331f
                  and        a5, t3, s3
320:              auipc      s0, 83609
                  csrrs      t0, 0x340, s4
322:              c.lui      gp, 30
                  addi       t5, s11, 223
                  bne        s7, a1, 325f
325:              c.mv       t4, t0
                  remu       zero, t5, a3
                  divu       t3, s8, s3
                  srai       t4, s9, 5
                  or         a5, s4, s5
                  srli       t2, a7, 25
331:              fence
                  mulhsu     s1, s4, a6
                  sltu       s9, s9, s0
                  addi       tp, a6, 195
335:              c.beqz     a1, 352f
                  and        gp, tp, s7
                  fence
                  fence
                  mulhsu     t3, s0, s2
                  c.slli     t5, 1
                  blt        t3, zero, 361f
                  c.bnez     a5, 349f
                  mul        s6, ra, a7
                  c.andi     a1, 4
                  mul        ra, s1, t3
                  divu       a5, s6, s7
                  bne        s10, sp, 363f
                  add        t3, s11, a6
349:              or         s8, s6, s1
                  c.add      a2, t2
                  bgeu       t0, s7, 362f
352:              c.and      a5, a2
                  div        s6, t2, gp
                  addi       t1, s6, -768
                  xor        gp, s4, s2
                  c.andi     a0, -1
                  csrrwi     a5, 0x340, 18
                  c.srli     s1, 28
                  mulhsu     s3, a0, s11
                  c.addi     t2, -1
361:              mul        s3, t1, a6
362:              slli       tp, a6, 13
363:              c.add      s5, s11
                  srai       s6, t3, 27
                  slli       a0, a6, 8
                  add        a4, a5, a5
                  sltu       s9, s2, s3
                  c.or       a5, a4
                  c.xor      a0, a5
                  c.srli     a4, 12
                  nop
                  csrrw      s6, 0x340, gp
                  xori       s8, s8, 476
                  csrrc      s1, 0x340, sp
                  fence.i
                  srli       zero, s9, 5
                  c.li       tp, 24
                  fence
                  mulhsu     a4, ra, s5
                  xori       s9, s5, -47
                  sll        gp, t0, a0
                  and        s6, a7, s8
                  c.bnez     a0, 403f
                  sub        s5, tp, zero
                  addi       s2, s10, 601
                  bltu       s4, s10, 398f
                  sll        a5, ra, a5
                  mul        a2, s11, t5
                  remu       s1, t5, a0
                  div        a1, t6, s1
                  ori        a2, gp, 855
                  c.xor      s1, a4
                  nop
                  sltiu      t4, a6, -883
                  mulh       s2, tp, ra
                  addi       s11, s2, -228
                  div        s3, t1, s6
398:              fence
                  slti       a1, t2, 70
                  sra        a1, t0, zero
                  sltiu      t6, a7, 974
                  blt        gp, s3, 409f
403:              beq        t6, ra, 420f
                  sltiu      a6, a6, -562
                  c.nop
                  csrrci     a7, 0x340, 25
                  div        a7, tp, t0
                  c.and      a1, a3
409:              slti       t2, ra, -399
                  remu       t1, gp, a3
                  addi       s5, s8, 662
                  beq        s5, t0, 430f
                  csrrci     s3, 0x340, 14
                  bltu       a5, t4, 427f
                  c.or       a3, a0
                  c.sub      s1, a1
                  sltu       t4, s4, a7
                  remu       s1, t0, t0
                  c.srai     a5, 18
420:              sub        t5, t2, s2
                  addi       s6, t4, 496
                  fence
                  sll        t6, t5, a0
                  sub        s1, s0, s8
                  add        s0, s10, s3
                  srli       s10, s8, 29
427:              c.add      s1, s0
                  bge        s10, s4, 441f
                  bge        s4, a3, 434f
430:              csrrwi     s2, 0x340, 13
                  c.andi     a3, -1
                  c.bnez     a2, 449f
                  remu       s3, a5, s2
434:              or         a3, t1, sp
                  sll        s6, a1, a4
                  csrrsi     ra, 0x340, 6
                  addi       t5, sp, 142
                  xor        s3, gp, a7
                  xor        a1, a7, s8
                  c.srli     a4, 19
441:              slti       ra, s7, 698
                  bne        s7, s4, 456f
                  ori        tp, a5, 345
                  c.andi     a3, 15
                  c.xor      a4, a2
                  c.beqz     a0, 448f
                  slli       s5, s7, 30
448:              divu       a0, s6, s4
449:              sll        s2, a1, s5
                  c.slli     s0, 13
                  or         tp, tp, a4
                  c.beqz     a0, 463f
                  or         t2, a7, s9
                  beq        a5, s7, 467f
                  c.xor      a4, a3
456:              fence
                  ori        a4, a6, 446
                  auipc      s9, 89229
                  ori        t3, a2, -781
                  c.srai     a0, 5
                  bne        a4, a7, 468f
                  sra        t4, s8, s4
463:              and        s11, s0, s8
                  ori        a4, a3, 658
                  div        s1, sp, sp
                  sra        gp, a1, t6
467:              slti       a3, s3, -364
468:              addi       a6, a5, -853
                  nop
                  bltu       zero, t1, 477f
                  and        s2, s1, s3
                  blt        s2, a0, 488f
                  mul        t1, a5, a5
                  slt        s1, ra, a5
                  c.addi     s11, 16
                  mulh       tp, a3, t3
477:              csrrwi     a0, 0x340, 3
                  ori        t1, gp, 685
                  c.li       t4, -1
                  c.srai     a5, 8
                  csrrc      s3, 0x340, ra
                  bne        s4, zero, 493f
                  mulhsu     s11, a7, t4
                  bltu       a3, a2, 497f
                  blt        s5, tp, 493f
                  csrrw      t1, 0x340, s11
                  lui        s5, 1043969
488:              andi       s5, a7, -1012
                  mul        a5, t5, t3
                  divu       s5, a3, t5
                  or         s8, sp, a7
                  bltu       sp, a1, 496f
493:              c.xor      a3, s0
                  mulhsu     t3, t2, zero
                  c.addi     s9, -1
496:              auipc      t4, 239501
497:              ori        t0, t6, -158
                  srl        s6, t4, s1
                  slti       s1, s11, -449
                  nop
                  bge        a2, s7, 519f
                  c.nop
                  mulh       t2, t5, t2
                  bltu       s5, t2, 524f
                  auipc      a7, 939906
                  beq        s9, s2, 513f
                  sltu       a2, t5, s10
                  divu       a7, tp, s9
                  srai       a0, s10, 0
                  bltu       zero, a3, 513f
                  blt        t4, a5, 528f
                  divu       a5, s3, s2
513:              slti       t0, zero, 545
                  nop
                  bge        s5, s8, 531f
                  c.srli     a5, 16
                  ori        t2, gp, 969
                  mul        t3, s11, s9
519:              c.mv       a2, a6
                  srl        s1, t1, s6
                  mulh       s5, s2, tp
                  c.add      t3, s10
                  csrrci     s8, 0x340, 14
524:              c.slli     ra, 19
                  and        a1, s8, s6
                  sltiu      gp, s11, -855
                  c.add      s0, s10
528:              c.sub      s1, s0
                  c.srli     a3, 4
                  andi       gp, a1, -174
531:              lui        s9, 405598
                  c.slli     a2, 14
                  slli       t1, s6, 3
                  slti       a4, t6, -963
                  slt        s2, t4, t0
                  sra        s1, s9, t5
                  csrrs      ra, 0x340, t1
                  mulhu      t3, s2, ra
                  sltu       s2, sp, sp
                  c.li       t3, 13
                  c.slli     s2, 5
                  blt        a3, gp, 554f
                  fence.i
                  beq        s1, a2, 553f
                  sra        s9, s3, a6
                  csrrsi     a6, 0x340, 27
                  xori       a5, a6, 898
                  beq        t2, t6, 563f
                  la         a5, region_3+227 #start riscv_load_store_rand_instr_stream_1
                  lh         a6, -5(a5)
                  c.srai     a2, 28
                  sb         tp, 8(a5)
                  sb         ra, 9(a5)
                  lhu        s9, 11(a5)
                  lb         zero, 10(a5)
                  sb         s3, -14(a5)
                  lbu        t3, -2(a5)
                  sub        s9, s9, sp
                  sub        a3, t1, sp
                  sb         a1, -4(a5)
                  add        gp, sp, t3
                  c.andi     s0, -1
                  slti       a6, a3, 229
                  c.slli     a1, 10
                  rem        t0, gp, t1
                  c.slli     s3, 5
                  div        a1, s3, sp
                  c.srai     a2, 21
                  c.srli     a1, 19
                  lbu        s5, 0(a5)
                  lhu        tp, 15(a5)
                  slli       t5, sp, 20
                  lbu        s1, 16(a5)
                  lh         s0, 5(a5)
                  slli       s10, a5, 8
                  lbu        t4, 6(a5)
                  c.li       a7, 31
                  ori        s11, t0, 595
                  sh         ra, -5(a5)
                  c.mv       s5, t2
                  srai       s6, a7, 16
                  c.mv       s2, a1
                  lbu        s3, -14(a5)
                  ori        t1, s2, -716
                  xori       s6, a7, 541
                  lh         s9, -7(a5)
                  mulhu      t4, t0, s6
                  lbu        a4, 8(a5)
                  lbu        s1, -4(a5)
                  divu       a4, t1, t2
                  mul        s8, t2, gp
                  csrrw      s0, 0x340, s5
                  lh         t0, -3(a5)
                  c.xor      s1, a3
                  srai       s9, t0, 22
                  sw         ra, -11(a5)
                  sh         ra, -9(a5)
                  rem        s0, a4, a0
                  lh         tp, 3(a5)
                  lw         s10, 5(a5)
                  lb         gp, -10(a5)
                  or         t1, ra, a0
                  lb         s0, -14(a5)
                  lbu        t2, -15(a5)
                  lbu        t3, 11(a5)
                  slti       ra, s7, -32
                  lhu        s2, -15(a5) #end riscv_load_store_rand_instr_stream_1
                  xori       tp, s1, 593
                  sra        a6, s3, a0
                  mul        t6, ra, ra
                  mul        t2, t0, a5
553:              sll        a5, s6, a6
554:              c.srli     s1, 27
                  c.sub      a4, a1
                  c.or       s0, a2
                  slti       a3, s3, -870
                  srl        zero, s0, t0
                  csrrs      s6, 0x340, t5
                  c.xor      a1, s1
                  srai       s6, a4, 17
                  beq        t5, s9, 580f
563:              mulhsu     s0, t2, s4
                  c.add      ra, s9
                  nop
                  fence
                  c.or       s0, a2
                  bne        sp, t6, 579f
                  fence
                  auipc      a1, 141450
                  c.mv       a4, tp
                  c.mv       a6, a0
                  andi       s0, a3, 486
                  mulhu      t6, a5, a5
                  and        t5, s0, s10
                  c.sub      s1, a5
                  div        a7, s3, t4
                  bltu       t4, tp, 579f
579:              csrrw      gp, 0x340, a5
580:              sltu       ra, t2, s0
                  xor        t6, s3, a0
                  mulhsu     t4, ra, a5
                  mulh       s2, ra, zero
                  c.mv       a1, tp
                  c.slli     s0, 22
                  srai       s2, t1, 25
                  remu       a3, s2, s3
                  mulhu      s1, a1, s10
                  xori       t3, ra, 984
                  rem        t4, a1, a7
                  sra        t5, s5, a2
                  xori       t6, s0, -286
                  beq        a4, s2, 595f
                  xori       a1, a2, 138
595:              csrrc      s3, 0x340, a0
                  csrrw      gp, 0x340, t6
                  csrrci     gp, 0x340, 20
                  csrrs      s0, 0x340, s1
                  fence
                  c.sub      s0, a4
                  c.addi     a3, 5
                  xori       s3, t6, 243
                  c.and      a3, a2
                  c.srai     s1, 27
                  c.andi     a4, -1
                  andi       s8, t5, -733
                  bltu       s10, a4, 619f
                  blt        s5, t2, 616f
                  c.srli     a2, 9
                  c.or       a0, a0
                  c.addi     s1, -1
                  bge        t3, a2, 632f
                  ori        s11, s0, 40
                  c.srli     s1, 19
                  sll        a1, a6, s9
616:              and        t5, s5, a3
                  and        s2, s11, s8
                  andi       s10, t3, -566
619:              and        s1, t2, s5
                  c.beqz     a2, 632f
                  ori        a6, s10, 43
                  fence.i
                  mulh       ra, s8, s6
                  c.srli     a1, 4
                  slli       tp, s10, 21
                  sll        t0, t6, s9
                  fence
                  or         tp, s10, t0
                  and        a4, s4, gp
                  c.lui      s0, 12
                  sll        a4, s9, s1
632:              mulhsu     a3, s10, a3
                  ori        a4, ra, 980
                  mulhu      a4, tp, t5
                  slt        a1, gp, a5
                  csrrci     s3, 0x340, 20
                  c.srli     a0, 27
                  c.beqz     s1, 645f
                  ori        s8, t0, 929
                  div        s8, t1, ra
                  c.beqz     a4, 654f
                  c.lui      a2, 17
                  bgeu       sp, s1, 645f
                  mul        t2, s9, s9
645:              auipc      t4, 845438
                  mulhsu     a5, s10, s1
                  srl        a5, t0, s11
                  c.li       tp, 2
                  c.add      a3, s4
                  blt        s2, a2, 653f
                  srli       a3, a4, 10
                  div        t3, s9, t2
653:              mulhsu     a4, s7, a6
654:              or         a3, t6, s4
                  sll        s8, t2, a6
                  bltu       a1, s9, 670f
                  srai       t1, zero, 10
                  mulhsu     s0, a1, a0
                  rem        s11, t5, s9
                  ori        a6, t4, -608
                  remu       t5, tp, s4
                  div        t3, t3, t0
                  csrrci     s5, 0x340, 5
                  slt        t1, s4, s4
                  sltu       s9, s11, zero
                  fence.i
                  c.add      s9, a0
                  c.xor      a3, a5
                  csrrc      s3, 0x340, a5
670:              add        zero, s11, s8
                  c.bnez     a1, 684f
                  sra        s6, a6, s5
                  csrrs      s8, 0x340, s2
                  bne        s6, t2, 692f
                  add        a6, s3, t1
                  srli       s0, t3, 8
                  slti       s9, t3, 992
                  c.add      t4, s7
                  or         a0, gp, sp
                  addi       s2, s1, -897
                  div        s11, s5, s10
                  blt        a2, s0, 691f
                  mulhu      t1, a4, t6
684:              sra        a5, a6, a3
                  add        ra, s5, s3
                  c.andi     a2, -1
                  csrrsi     t2, 0x340, 30
                  sll        ra, s0, t3
                  ori        a1, s7, 810
                  c.addi     s2, 7
691:              mulhsu     a4, s6, s1
692:              sub        a4, gp, a5
                  slt        a5, s7, s2
                  c.or       s0, a0
                  c.andi     a3, -1
                  c.srli     a3, 2
                  mulh       s3, a2, s8
                  c.sub      s0, a4
                  auipc      t0, 236208
                  c.xor      a0, a5
                  csrrc      t5, 0x340, a1
                  csrrwi     s6, 0x340, 23
                  c.or       a0, s0
                  csrrc      s6, 0x340, s4
                  sub        s6, s9, s0
                  la         s8, region_1+10492 #start load_store_instr_stream_4
                  la         a1, region_1+8162 #start load_store_instr_stream_3
                  lbu        s6, 5(s8)
                  la         t6, region_1+10952 #start load_store_instr_stream_0
                  sb         t5, 19(s8)
                  lbu        t2, -11(a1)
                  la         a7, region_1+13540 #start load_store_instr_stream_1
                  lb         a6, -251(t6)
                  lb         s3, -1409(a7)
                  la         s10, region_1+15714 #start load_store_instr_stream_2
                  sb         ra, 9(a1)
                  sb         t0, 1534(t6)
                  sb         ra, 15(a1)
                  lh         a5, -38(s8)
                  lb         t2, 39(s10)
                  lb         t5, 15(a1)
                  sb         t1, -31(s8)
                  lbu        s9, -29(s10)
                  sh         zero, -58(s10)
                  sh         a0, 16(a1)
                  lbu        tp, 25(s8)
                  lb         s2, 815(a7)
                  lbu        s2, -12(a1)
                  sh         zero, -956(a7)
                  sh         s7, 6(a1)
                  lb         a5, 1451(t6)
                  lbu        t3, -1709(a7)
                  sh         t6, 528(t6)
                  sh         s3, -2002(a7)
                  sb         a5, -5(s8)
                  lbu        a2, -44(s10)
                  lbu        s0, -39(s10) #end load_store_instr_stream_2
                  lb         a2, -1179(t6)
                  sb         t1, 1535(a7)
                  sh         s2, -16(a1)
                  sb         a0, -43(s8)
                  lbu        a2, -155(t6)
                  lw         tp, -8(s8)
                  lhu        t2, -854(a7)
                  sw         t4, -1260(t6)
                  lbu        t5, 203(a7)
                  lbu        t3, 1545(a7)
                  lb         s3, -23(s8) #end load_store_instr_stream_4
                  lh         a0, 1414(t6)
                  lbu        t0, 5(a1) #end load_store_instr_stream_3
                  lbu        t1, 140(a7) #end load_store_instr_stream_1
                  sb         s5, -1810(t6) #end load_store_instr_stream_0
                  c.beqz     a2, 710f
                  add        a4, a2, ra
                  bgeu       s0, a7, 715f
                  blt        a2, a2, 721f
710:              bltu       t3, a7, 725f
                  addi       s9, s8, 953
                  divu       gp, s6, s11
                  xor        zero, s5, a0
                  sltu       ra, s3, t5
715:              c.xor      s1, s1
                  rem        t1, t4, t0
                  c.srai     a0, 5
                  andi       t1, t4, 291
                  c.and      a0, s0
                  andi       t3, t0, 873
721:              or         tp, s0, s2
                  mulhu      t4, s7, s8
                  ori        a6, t5, 852
                  c.bnez     a3, 740f
725:              mul        ra, s10, s4
                  srli       a3, s8, 7
                  mulhu      s5, s5, sp
                  csrrs      s6, 0x340, a4
                  c.sub      a2, a3
                  sub        s11, s0, t1
                  div        a4, t5, s7
                  bne        s4, a4, 743f
                  sltu       a2, s3, a1
                  auipc      a3, 219127
                  sub        a0, zero, s10
                  slli       zero, s7, 20
                  mul        a0, s1, gp
                  csrrw      s8, 0x340, gp
                  slt        s3, s2, a1
740:              c.sub      s0, a4
                  blt        s6, tp, 748f
                  fence.i
743:              sub        a0, t4, t0
                  nop
                  slt        s8, s2, a7
                  sll        s11, zero, s10
                  srl        s11, a6, t4
748:              c.and      a5, a5
                  c.bnez     a2, 769f
                  c.add      s2, s8
                  slli       a6, s3, 17
                  c.beqz     a1, 769f
                  c.nop
                  csrrsi     a0, 0x340, 27
                  divu       t0, t5, a3
                  c.xor      a4, a5
                  div        a7, zero, s7
                  c.add      a0, s11
                  mulh       a1, ra, a5
                  beq        s9, t4, 777f
                  nop
                  c.bnez     a4, 770f
                  sltu       s6, s3, s1
                  mulhsu     t0, s2, tp
                  csrrci     s10, 0x340, 8
                  sltiu      s2, s2, 152
                  bgeu       tp, t3, 772f
                  ori        a1, t5, -477
769:              c.lui      a3, 22
770:              c.mv       t5, a0
                  mul        s6, s0, t0
772:              andi       t4, s3, 283
                  c.srli     s1, 2
                  c.bnez     s0, 785f
                  csrrw      a0, 0x340, zero
                  srl        t6, s7, a1
777:              c.srli     s0, 16
                  xor        s11, a7, ra
                  sll        t5, s8, t0
                  blt        a0, zero, 800f
                  bgeu       t0, gp, 789f
                  addi       s6, t3, 338
                  c.beqz     a1, 785f
                  srli       a6, ra, 3
785:              rem        a7, t4, t5
                  sra        s2, a1, zero
                  add        s9, s8, s5
                  add        s5, a7, sp
789:              xor        ra, a4, sp
                  sll        a2, gp, s11
                  csrrwi     zero, 0x340, 7
                  slli       s10, a6, 5
                  srl        a6, t5, ra
                  srai       ra, a1, 28
                  srl        a5, s3, s7
                  c.mv       s2, t6
                  divu       s1, t1, t3
                  fence.i
                  srl        t0, t1, s4
800:              csrrc      zero, 0x340, s11
                  bltu       s4, s3, 817f
                  c.srli     a0, 12
                  blt        s0, s11, 804f
804:              rem        a4, s0, t4
                  add        a5, gp, s1
                  ori        a2, ra, -104
                  srli       s5, s6, 0
                  srai       t5, s1, 30
                  remu       s3, gp, s11
                  sltu       s5, t2, a7
                  c.sub      a5, a2
                  srli       a7, s2, 25
                  sltiu      s3, s3, 987
                  bgeu       a5, s11, 825f
                  ori        s2, s5, -635
                  xor        t2, a3, a5
817:              c.nop
                  xor        s10, a7, t0
                  c.addi     s8, 7
                  c.srai     a2, 23
                  c.mv       tp, a0
                  csrrw      t0, 0x340, a2
                  c.mv       a2, gp
                  bge        ra, s9, 837f
825:              bne        t2, s9, 843f
                  srl        s2, a6, s1
                  and        a7, s11, a0
                  or         s1, s8, a5
                  ori        a4, s10, -122
                  or         a7, zero, zero
                  mulhu      t2, t1, a1
                  ori        s3, tp, 389
                  ori        a6, sp, -751
                  bgeu       a5, s1, 839f
                  c.slli     t0, 18
                  c.sub      s1, a5
837:              lui        s2, 937702
                  c.or       a3, a3
839:              c.nop
                  ori        a1, t6, 521
                  c.add      a5, s2
                  srli       a5, s5, 17
843:              mulhu      a0, t5, s7
                  bne        s8, sp, 855f
                  srl        t3, s6, s7
                  c.mv       s0, t0
                  bgeu       s10, t0, 857f
                  remu       t4, a3, t5
                  bgeu       s2, s8, 857f
                  or         zero, gp, a1
                  mulhsu     s2, a0, t5
                  slt        s9, a1, t5
                  slti       t3, t3, -200
                  lui        t5, 321549
855:              xor        s6, a4, s0
                  bne        s0, s6, 857f
857:              c.slli     ra, 25
                  lw         t4, 4(sp)
                  addi       sp, sp, 20
                  sub        a1, a5, a3
                  c.srli     a0, 29
                  slti       t0, a2, 482
                  c.lui      t3, 9
                  or         t5, s0, t0
                  srl        s5, s2, t5
                  mul        s2, s9, sp
                  c.andi     a3, 31
                  mulh       a4, s10, s3
1425:             c.jr x29
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

init_machine_mode:
                  li x14, 0x101800
                  csrw 0x300, x14 # MSTATUS
                  li x14, 0x0
                  csrw 0x304, x14 # MIE
                  mret
.data
.pushsection .tohost,"aw",@progbits;
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.popsection;
.pushsection .region_0,"aw",@progbits;
region_0:
.word 0xdb8e288e, 0x0b533ead, 0x56206288, 0x72480379, 0x55315fae, 0x13fb19ac, 0xc8fe1bb7, 0xb9f329cf
.word 0x3b6b17e2, 0x506ec7ed, 0x45745f48, 0xeb33e6ba, 0xcd3b8826, 0x49cfa175, 0x1648f7e7, 0xfa99b628
.word 0x86a66428, 0x2d9fb00c, 0xa2e60e55, 0x7b7a6306, 0x346f5fc6, 0x26c0d0dd, 0x4f126186, 0xfd87a1b9
.word 0xb1b04895, 0x998295ff, 0xb67bc6cd, 0x29c7f341, 0x40afea68, 0x5fe2c325, 0x0c1276c3, 0x7c992938
.word 0x2191dd72, 0xf43a6953, 0x784a246d, 0x04eb0bc2, 0xad2219aa, 0xe3fac58f, 0x0df0888e, 0x4c2c4967
.word 0x4b11b7d8, 0xad8bef5a, 0xb938bde1, 0xdd9e42ce, 0xa82fb268, 0xd0c3ef2a, 0x80edcef8, 0xeef6169f
.word 0xf553dc3b, 0x42cc13cd, 0xb8f1e2d7, 0x3da2e8fc, 0x5d7e73a8, 0xe256bc82, 0x97c58a94, 0xaf96ab44
.word 0x37abece5, 0x94fcbcb0, 0x08352440, 0x3add799b, 0x6506becc, 0xe3df3ff6, 0x0780aa70, 0xb8d6ed8e
.word 0xf77bb2e7, 0xf42885a7, 0x58610728, 0x946cd923, 0xb827219f, 0xfd59dd00, 0x8a4398b6, 0x245d1c41
.word 0xd320e19e, 0x4807082d, 0xa913d182, 0xefde3580, 0x94a367b4, 0xc63d189a, 0x9c6435a7, 0x740ea0a5
.word 0x4677358f, 0x9dc43fde, 0xb4f5df35, 0x478622a7, 0xcf62c6e7, 0x0ce7cc28, 0x8fe62c00, 0xeb5226e7
.word 0xa9640315, 0x04fc08be, 0xd2ac2866, 0xfe6d1ed0, 0x0ed8cc80, 0xfd5cbc57, 0xde54275b, 0xb671f1d0
.word 0x3bfdd543, 0x9fae1506, 0x0958c2c9, 0x8b311429, 0x8b097716, 0xccc8f75d, 0x39cebbe6, 0x4801bf8e
.word 0x74979f69, 0x793d4d54, 0x564464f2, 0x2470939b, 0xfe5af28b, 0x8749e734, 0x07903b90, 0x61056c6e
.word 0xaee5a4d1, 0x90f2842b, 0x0d523e2a, 0xe3efebfd, 0x5cd4fe97, 0xce080d60, 0xc2dab763, 0xfacbae2b
.word 0x57d29192, 0x1bfbb516, 0xce6ec405, 0x1c94a37a, 0xc609debf, 0xf6a7d4ec, 0x6d6ce672, 0x00a778b4
.word 0xd04da7c4, 0xfc7c961b, 0xb2c98015, 0xd704c0b3, 0x1b5191ed, 0xcae51f85, 0x326edfcf, 0xac9cf0f9
.word 0x8fe2463f, 0x803fb5ed, 0xc1599386, 0x28408e69, 0x365f1244, 0x2e478dd6, 0x204f2afb, 0x1499870d
.word 0xab160958, 0x08927b76, 0xd0e5b806, 0x6c20459b, 0x6968215f, 0xb0fc988f, 0x2e13cbfe, 0xe82c71e2
.word 0x0629c905, 0x42161d91, 0xbee63319, 0x462b41ae, 0x47d2903d, 0x377ebdea, 0x63359fa3, 0x26654b3d
.word 0x1afc9623, 0xb7031c37, 0xd6f1fe6a, 0x729682ce, 0xcd14ec6b, 0x04975e60, 0xc8149237, 0xe7db856b
.word 0xf005c63f, 0x78fc95b8, 0x5e770765, 0x6d78f9c5, 0x04a6ac8e, 0x0f05e89e, 0xd074f959, 0xaa6989f5
.word 0xae6cbbda, 0x0606978d, 0xcf40fd3a, 0x033b9f2b, 0x6a8bb2c4, 0x2e158d38, 0x39114cf1, 0x5773f73a
.word 0x82174fd7, 0xa373a32d, 0x585b21bb, 0xa549b5a2, 0x57f568a0, 0xb17d7709, 0xe2e78208, 0x834fc5f0
.word 0x69e1caa0, 0xc8fe4879, 0x482421cb, 0x761cb4e9, 0xb0f6826c, 0xc60b597b, 0x84b9812e, 0x3c31364d
.word 0xbffafbbb, 0x10ac901d, 0x616d8187, 0x0cc748a8, 0xe46d4e30, 0x08c3e3cc, 0xc46a4bf8, 0xfe9ed590
.word 0xf13e5ec4, 0xa1e15aff, 0xa450f24c, 0x9cd99250, 0x55db21b1, 0x7cd85b49, 0x64a3935e, 0x0cb49156
.word 0x945156e1, 0x52de0d79, 0xcdcfab73, 0x8af34f94, 0x3795ed71, 0xbeac8f76, 0xd903d12e, 0x7ed634be
.word 0x9dba3a02, 0x84ff47be, 0xb923805b, 0x8d9f1925, 0xafd97d13, 0xe74c30d8, 0x1e5fcf2c, 0xc1ffaf6b
.word 0x64f795d9, 0x268ae735, 0x2196ac48, 0x13f08f8d, 0xd6909d9c, 0xd5aa1a67, 0x71649cda, 0xd1e30182
.word 0xb3d6e055, 0xb27d1b0d, 0xc432a4fe, 0xa16af20c, 0xa2ed44e3, 0x322887b5, 0x3abd1344, 0x169623e9
.word 0x2d56809a, 0x9c307afd, 0xbb17d667, 0xd8b92d35, 0xb9fb28e1, 0x63864fa0, 0x4f40757c, 0xa31ee3c0
.word 0xb07c5b64, 0x463e169f, 0xb970c25e, 0xb43731ed, 0xd6f90d5b, 0x23822609, 0x84531767, 0x8c477959
.word 0xb5265382, 0x644fa0f3, 0x409501c1, 0xddcc1f57, 0x3bc30811, 0x8d5b8710, 0x490f66bb, 0xca1d8176
.word 0x8b7b4dfa, 0xf76a3c09, 0x63921107, 0xf92801df, 0x5ebb828f, 0x86b3c444, 0xf0c4c854, 0x2856504d
.word 0xd65f2012, 0xa011ff95, 0x497d26e9, 0x9dd38ea8, 0x95201cc0, 0x4b96cb1e, 0x21a28a20, 0x876f192d
.word 0x43bd4aed, 0x001236da, 0x1c64de15, 0x19327cfd, 0xfbb99adc, 0x11027815, 0x0810c6ad, 0x223371cb
.word 0x535f0567, 0xa7422fdd, 0xd531bf0f, 0xdd62663b, 0xd67b4996, 0x5c062385, 0x09ecdf9a, 0xcde54c72
.word 0xa18bbf9b, 0xb3298e23, 0xfe970e73, 0x903a0a11, 0x118eff73, 0x5d24d3fb, 0x6f4b03b7, 0x42ab48a9
.word 0xb5b94aab, 0x16698ea2, 0x762eb9f5, 0xc3cdb58a, 0xf1b9db99, 0x499eb37c, 0xee160605, 0x2668126b
.word 0xe5232f10, 0xe493e835, 0xf5c0a966, 0x9b30c5b7, 0x902c30d2, 0x0b4a1a4e, 0x31d8694e, 0x100ad05c
.word 0x29131868, 0x6d3f28d3, 0x546166ef, 0xa2c7e4ce, 0x5c5b839e, 0xbf82bc8c, 0x39d9adfb, 0x2e5b4fc7
.word 0xef105f25, 0x8df94e2a, 0x14e741a6, 0xd909b782, 0xd3bf8e21, 0x9aba0b1b, 0xcb2da84a, 0x928fac48
.word 0x241bdfe7, 0x34c00cc6, 0x82dac5d9, 0xb19d2bce, 0x09b92a97, 0x63c3043f, 0x35d319b0, 0x63c020b6
.word 0x2749a052, 0x36fe2555, 0x6e5b7a75, 0xc02a9452, 0x09b8fb7b, 0xfc03c306, 0x6e5c20b4, 0x276d16c7
.word 0x930538e9, 0xffb73f64, 0xf2bb6dad, 0xe1455a40, 0xd25080a9, 0x99b51c26, 0xd0a0f79b, 0x5953cefc
.word 0xf6089836, 0x88d3b733, 0x5ec0fafb, 0x02a060f7, 0x46ce2754, 0xc9f7c2ee, 0xdea6d05a, 0x4e946d76
.word 0x80fe24eb, 0xe540dd85, 0xb99cd28c, 0xfcbedcff, 0x2c62dd7f, 0xd176abdf, 0x3c861f47, 0x41bfebea
.word 0x7e1ba8aa, 0x30418835, 0x917e940e, 0x298cadf4, 0xf61ca513, 0x8e45ab69, 0xae42552b, 0xbe1acf15
.word 0x2e106037, 0x67626f5a, 0x737f7402, 0x4c674a71, 0xb669071d, 0x0c2c2567, 0xcc7012f0, 0x48565be5
.word 0x4b7735f8, 0x267c8e94, 0x8645fd62, 0xb5953d44, 0x27dc29ee, 0x4fab651a, 0x0af05661, 0x5f146af7
.word 0x352233b3, 0x01ee162e, 0x74089844, 0x7643a196, 0xf60b15af, 0xd3120911, 0x48eaba9e, 0x34b7d839
.word 0x2777825f, 0x51b91fe3, 0x5f84ae37, 0xf6a017e3, 0xccc8a904, 0x29f081a4, 0x343f8f63, 0x16feb332
.word 0x76b68ed9, 0x582a8d7f, 0xb5f0af1e, 0x6a6d8364, 0x3eef3afd, 0x9e33f2fa, 0x0c7d2ad9, 0x88c86c33
.word 0xe6fde4ef, 0x19cc73e0, 0x7b298f74, 0xc214d72e, 0x3ce80244, 0x02b0724b, 0x79cb5a75, 0x805ac3ae
.word 0x211c72f8, 0x68797b47, 0x12bb6320, 0xe17784c7, 0xcb1b9797, 0x42a9f628, 0xb6d52a3d, 0x5ae64986
.word 0x97773137, 0xa8981e29, 0xc252cc60, 0xa8a5fd67, 0x9f52ba42, 0x93dda7db, 0x805b3f4f, 0xd857d73e
.word 0xe21e36e9, 0xc567465f, 0x595626cb, 0xd2f74fba, 0xd2e4a214, 0x5f079117, 0x1217a416, 0x6d02c363
.word 0x85c7a692, 0xc5f1ffe9, 0x61d7a80b, 0x56673e7d, 0x75109ce8, 0xa1ed9dc1, 0x774b0ee0, 0x708d5a43
.word 0xad478923, 0x4e1249ae, 0x0e8c9024, 0x6389406b, 0x0384e5bd, 0x6b8a32dd, 0x441ef277, 0x1fa5e88c
.word 0x13056556, 0x8f26b3e8, 0x4dcbbc59, 0xa0a79e1d, 0xbc7e5371, 0x3f2962bb, 0xa2dd3eeb, 0xeebb2601
.word 0xea4c2897, 0x735d4186, 0x5a3c9724, 0x96f365c9, 0x5b1ce645, 0x202b8035, 0x5d1e15df, 0xf3a77326
.word 0x6e5f6082, 0x10cc71a6, 0xeb74b3b2, 0xbeef4ad9, 0xe7079cde, 0x82f22cfd, 0xe24304db, 0x0b37eb4a
.word 0xa1b34726, 0x23517056, 0xc6eacc70, 0xc299aeb1, 0xe38c665b, 0x0b6fe261, 0x938ce37a, 0x80387173
.word 0xc0985476, 0xc4e8d9e0, 0xa02a457a, 0x2acc0a1e, 0x22934b6d, 0x2edd6bfe, 0xa0b79a12, 0xedd3c6d7
.word 0x3a9c3095, 0x6532f241, 0xf72ffcec, 0x02064e3c, 0x0e7ed186, 0x1df81687, 0x91789abc, 0x995fb2a0
.word 0x741423d8, 0x6e1466a8, 0x3ebe856b, 0x92dd5f44, 0x77b93d84, 0xa6c7da36, 0x53714ede, 0xd45243e8
.word 0x1c02747c, 0x4f1998bc, 0x89ce4599, 0x3344b3f6, 0x68500428, 0x8b0a4ff2, 0x7d895ff5, 0x8eff8f24
.word 0x4a5d00f9, 0x99b2ac69, 0xf383beeb, 0xd92140ad, 0x5255c168, 0x8a417866, 0x41d6bb16, 0x889ec23c
.word 0xea8d1b06, 0x28b01a80, 0xdf852f71, 0x74560e9e, 0x56543131, 0xcdd09a42, 0x8a5e648d, 0xb5d2879c
.word 0x5cf15529, 0xf6935b88, 0x3bcebc45, 0x52c73d7a, 0xfab58e5f, 0x4f03ad9b, 0x0d3f03b5, 0x3a9cec9a
.word 0xdf5c5a6f, 0xc46bbff5, 0x22433dde, 0xec6f50fd, 0xe8b6677a, 0x38a6f96f, 0xcf604a10, 0x2e8c9cc1
.word 0x205c055d, 0x2c764376, 0x175cfffc, 0xfbdab02a, 0x45df2b29, 0xb50371b0, 0x74ecaae0, 0x70d67ddb
.word 0xd5d74eca, 0x8a085cdf, 0x31ed2b2e, 0x732ff0d0, 0x8e8688c7, 0xf51e7e84, 0x67f2ce9f, 0x83c5c0b9
.word 0x77a1389d, 0x7e2b4935, 0xa35b56f2, 0xc2aa9006, 0x4f9d5ba7, 0xdff7ea85, 0x85238bd5, 0x7a48198a
.word 0x2a8fab0a, 0x55589226, 0x554ce2d2, 0xfd6b4c03, 0xba1e532e, 0x4c85d6bb, 0x5590b5fd, 0x038a6967
.word 0x367c66d4, 0x2950f136, 0x7f265afc, 0x59cd502b, 0x8567af18, 0xc6e96d71, 0xb69dbd58, 0x2074246a
.word 0x8b92a894, 0x35abe756, 0x81adaa50, 0x217d86c1, 0x6211554f, 0x7452e6e2, 0x1b5dba83, 0x1a3853cc
.word 0x05c92044, 0xf89d01d6, 0xcce30b7e, 0x6590fec1, 0xce57e289, 0xa6b11e2f, 0x3d73cbfd, 0x347c5b1e
.word 0xa23a9c85, 0x3d6a2480, 0xa8ea135e, 0xc750d3a6, 0x512b8d03, 0xd46092b5, 0x513d1c7f, 0x26ee9a61
.word 0x8b4de884, 0x4ee3d97e, 0x698f29a6, 0xbc4aee4a, 0xb9df9230, 0x669f0353, 0x1052beff, 0x9b97590f
.word 0xe0303e2b, 0xba39ceb7, 0xce7dec8c, 0xeac990b5, 0xcb20fb97, 0x7bc26315, 0x7602e661, 0x8b64473b
.word 0x0328b056, 0xd964caab, 0xce83a5ae, 0xcb26ffef, 0x4ec4cc27, 0xa952452f, 0x28a09f9c, 0xa89bc530
.word 0x229fcabe, 0x27b72308, 0xa8254aff, 0xde449fbb, 0x1b832137, 0x2cffe2a3, 0x8b8881d0, 0x0f8913f7
.word 0xa97020dd, 0xffa1bb8f, 0xdbffe0dc, 0xe2ea1052, 0x8244b756, 0xd3a11cd7, 0xce2ce8b0, 0x01e6d173
.word 0x8e3d65ed, 0x53b9a49e, 0xaceb78a5, 0xecbe9919, 0x472af952, 0x4527ef35, 0x4ad5d266, 0x2ae1c82a
.word 0xcb8db02e, 0x7f4e2df3, 0x8e3df162, 0x91c1333e, 0xab2ce0a1, 0xf9b3de23, 0x89543ab2, 0x5f2db732
.word 0x63fea5c1, 0xa0203919, 0x64d352b6, 0x08eb1157, 0xe3658d41, 0x6fd32d55, 0x945dfb47, 0xd1c8360a
.word 0x2dd73f58, 0x6401fefa, 0x3b28cb71, 0x893b0d54, 0x3697210d, 0xd61db381, 0x3710f563, 0x791de6b0
.word 0xe71ddf1d, 0xe15b49b6, 0x677ed502, 0x61cab362, 0x479802b4, 0xbb6be89b, 0xa35f8be5, 0x51c53b92
.word 0xbf00ca72, 0x39dce075, 0x1fa408f5, 0x7df6d407, 0x0c33dbc7, 0x0ab4cf4d, 0x596c469e, 0x683574da
.word 0x9cf41dce, 0x794f6ade, 0x4182a4f6, 0xe5ace269, 0xa54f3b31, 0x2fb9c3a1, 0xe0570ea9, 0xbaaa216a
.word 0xfa30b177, 0x0e935387, 0x8868ffd6, 0x46c32fa5, 0xc9fb9a4a, 0xd4ac52a5, 0x35a2ae55, 0x80f1b0ab
.word 0xcaa73d41, 0xa39de460, 0xbfee0e06, 0x3389ed40, 0x32f03ec1, 0xafd1c448, 0x7fd14757, 0xa1aa29cf
.word 0x66feafc4, 0xd5e2bc69, 0xbc97d2f2, 0xd5d81d08, 0xdc8bdbfb, 0xeeaec1fe, 0xfb043de9, 0x414f3a8f
.word 0xa6ad8b8b, 0xd00658c8, 0x2d462559, 0xe8fe48b4, 0x00127a57, 0x1b4274f1, 0x69a22106, 0x76af8bde
.word 0x0b1c0d44, 0xf0629f66, 0x91d76a62, 0x04c22c0d, 0xb47f70fc, 0x12311596, 0xf863e0c2, 0xdba78306
.word 0x9a99a8fa, 0x33648606, 0x9255675f, 0x28472297, 0xd642dc84, 0x41fbad5d, 0x26577179, 0x663dcb8c
.word 0x26c8ecd2, 0xbd4fcde9, 0xbaaffa41, 0xc53b4969, 0x6d135bf8, 0x25009770, 0xd41ed607, 0x91068dfc
.word 0x7c95e1bd, 0x7c2c9571, 0x164f2f21, 0x9ac66465, 0x0b89f8ea, 0x2be33152, 0x75e0d644, 0xbcfb4d05
.word 0xe4c24162, 0x4a7bba5e, 0xc003683a, 0xb82054f0, 0x31c7b5cb, 0x3ac4ad8d, 0x9f711294, 0xab5d82ba
.word 0x77482951, 0xa4685ee7, 0xec4eea97, 0x135881f3, 0x683ff054, 0x2afb8231, 0xd75ceabb, 0xf551e20c
.word 0xd0372a99, 0xb649a5cb, 0x7e083d93, 0x8df0b96f, 0xbf01eefb, 0x95deeec8, 0x8485f640, 0x4ea29a7d
.word 0xd20c1531, 0x990652ae, 0x783e89ec, 0xb39a8999, 0xbaeebbc2, 0x684ca6fa, 0x8dc5ed2a, 0x60d579c7
.word 0x37e9673d, 0x4625d232, 0xf27935d8, 0xbfcb9007, 0x3c66623e, 0x183ae731, 0xaa56601e, 0x53c57c63
.word 0xb22dc95c, 0x099041f9, 0x009fb310, 0x2da8003f, 0xbc2afde4, 0xfd8bec84, 0x705418bf, 0xa1147fe5
.word 0x54711904, 0x0615f973, 0x87d348ae, 0x45c33b1a, 0xb5ac65dd, 0xa34d1fb7, 0x63290b58, 0x7ed6d014
.word 0x9a684dcb, 0xfbd8b4ec, 0x81bd9763, 0x0a71b8dd, 0x5a6d65bc, 0x4d2a01b1, 0xcb5aa2d9, 0xbb6b60e0
.word 0xe60b7c6d, 0x556a1a6d, 0xeffa7de9, 0x6a71cadb, 0xfc2a0541, 0x7c63db61, 0x070459ba, 0xae2c8e95
.word 0x50887b39, 0x47ee7232, 0x2be5fe46, 0x1c4c3b93, 0x48427496, 0x1f97228f, 0xca94be2e, 0x9c62979a
.word 0x8c48a5f1, 0xbe2768ae, 0x5f96d5de, 0xe4590455, 0xde56eb79, 0xa11549d6, 0x52cb0490, 0x624c4caf
.word 0x43c06f73, 0x28b6b6ee, 0x25203a2f, 0x4fe3b7b3, 0xe5b17a5c, 0x5979aac2, 0x9e7a8fd9, 0x72dcd95d
.word 0x1a7ab072, 0xea97b28b, 0x9271c8f8, 0x41f1e2af, 0x63903350, 0xf66e564e, 0x878532d2, 0x5fefbb14
.word 0x98ac8fdb, 0x32269add, 0x8e7f4bf0, 0x3f0d2bf7, 0x82c78a7e, 0xfc5c1123, 0xb92cd9d6, 0x201d608d
.word 0xb34cef56, 0xc1340eba, 0xe29190b1, 0xb287b9c6, 0xd7bfc2ef, 0x85bfe12f, 0x6d96e220, 0x557fb07d
.word 0x0093dc8e, 0xdfd7fa15, 0x4b9a7140, 0x31e951fc, 0xb2048b35, 0xedd78ac2, 0xede68ff2, 0xf3a9c898
.word 0x7227b718, 0x2cc15387, 0x971400ea, 0x6f9aab12, 0x02de4984, 0x829c0962, 0x4384b41c, 0xfe4353b2
.word 0x056a207f, 0x377f3828, 0x150d91d8, 0xbde2fc83, 0x2e1f766a, 0x8ea6b6b5, 0x3b817440, 0x0d97765e
.word 0xb702108b, 0x58e1a215, 0x74a9dc8b, 0x42489481, 0xeb2e6948, 0x232a3dcb, 0x714be98f, 0x5dc01575
.word 0x6074e8e0, 0x073df091, 0x9bb3d2ff, 0x5ab32b9d, 0x90ba9f7f, 0x4edc44c8, 0x4be612eb, 0xc4bc515b
.word 0x4d79fa33, 0x77ba5b5f, 0x9c956e35, 0xfa19d8dd, 0x3ed37d1e, 0xaa92519b, 0x39a0de94, 0x2741149c
.word 0xa2b642d1, 0xba4e3f8d, 0x9f9a480f, 0x35efab31, 0x754a2b4b, 0x3f7cd021, 0x2c11c655, 0xe6c3e6ff
.word 0xdabbaab0, 0x1217bd48, 0x6f7a0dee, 0x82f63fc6, 0x35eb0f56, 0xf3d20ada, 0x1566de34, 0xb8915379
.word 0x33947897, 0x5d734544, 0x15503e94, 0x9a076326, 0xb59924bc, 0xa468b5d4, 0xac286713, 0x252066ef
.word 0xc901391b, 0x4c2d3d60, 0x72a704ee, 0x31fd8ecb, 0x247485a2, 0x5ffbe7db, 0xe5afa2a7, 0x699ac575
.word 0x43521006, 0xf72616c0, 0x18360c6b, 0x885a55d5, 0xd0257b44, 0xfb09b5d6, 0x6c018bc1, 0xc1d55ceb
.word 0x74a5c949, 0x43c3cc54, 0x0d7a0c8c, 0x2c2acc47, 0xcba10c21, 0x2a61ecdf, 0xcbcfd298, 0x026d200a
.word 0x229d3452, 0xde5786f2, 0x1b34da95, 0x700f9547, 0x90e89ab2, 0xe675c51b, 0x0654f29b, 0x3e8bcc8b
.popsection;
.pushsection .region_1,"aw",@progbits;
region_1:
.word 0x3e060a91, 0x298b92f9, 0xcad3df3e, 0x1b3df074, 0x975bc123, 0x673ce983, 0x69b0ba9b, 0xc4f4f3ca
.word 0x43d3a7a6, 0x0a5afd3c, 0x06120239, 0x04aa6787, 0x85afbd0e, 0x261f3faf, 0xbeb3ce7b, 0x691284ed
.word 0x9c9b7175, 0x89b122c5, 0x137022e5, 0x59c8de1c, 0x30cb5731, 0x3322c47e, 0x7311f3f6, 0xab6fbd9d
.word 0x1bfdd3ad, 0x18d5b833, 0xdc72ada6, 0xde001b8d, 0x23f53c2f, 0xe26b2c85, 0x1eb7af03, 0x20c5764b
.word 0x510aa6a3, 0xc8c8ca06, 0x2de8cb1d, 0xf09098c2, 0xf10e1f97, 0x02c5c364, 0x5432048c, 0xc0802c05
.word 0x33616c44, 0x0112d2cf, 0x5d0d2733, 0x36f277bd, 0x4d52ad0d, 0xd7d792db, 0x4b013a91, 0xdea93519
.word 0xd60a20aa, 0xf3977ba2, 0x56999b17, 0xa3bb4802, 0xd9d28148, 0x8c3593a4, 0xf581e790, 0x78d4e113
.word 0x58f9410d, 0x69b2ebdd, 0xde070b2d, 0x70bf65b9, 0x23704f0e, 0x78ead1ff, 0xe671f574, 0xd3aeca4a
.word 0x0c1be90d, 0xd9e6f5e6, 0x3e7a8a07, 0x390b70ca, 0x3d5e1d20, 0x2717d000, 0x29d7cfe6, 0x49cb97f8
.word 0xe2c49402, 0x1f7272af, 0x4777c20b, 0x9d8d0842, 0xccf171b4, 0x596f2b34, 0x8b36b221, 0x7e6b8102
.word 0x711d1863, 0x7170042a, 0x31bc5c98, 0xef93a69c, 0x03cea053, 0x4359beb4, 0xb36a12f0, 0x9f271df0
.word 0x042ea733, 0x8b0b08e6, 0x6dd473c4, 0x2c943a92, 0x99a18188, 0xd95cce01, 0xb7ed69a8, 0xdb78a295
.word 0xf1023e39, 0xacb8b180, 0x3f632a2c, 0xbe44ab2e, 0x72b27338, 0xe633b541, 0x1d760932, 0x7e4ce83c
.word 0x6f22371f, 0x7addec36, 0xd1392411, 0x9c90019c, 0xc109fac4, 0xeb0a423f, 0x535e4d25, 0xc96fe920
.word 0x05bfb3f2, 0xadd69202, 0xe4a0d48d, 0xc4c36b9e, 0x6d2ab07e, 0x2268f05a, 0xa34bfc13, 0x13bcf02c
.word 0x02046363, 0x5f6404c9, 0x54a79873, 0xdfdaeeac, 0xf8c7d9ff, 0x02f78984, 0xa20cc3d0, 0xe27955b2
.word 0xd6b166b5, 0x6d62cb09, 0xbd1a1db8, 0xa25bb3ba, 0x244a4f3c, 0x2eb0cd79, 0xb4af1f56, 0xa25c1ebc
.word 0x0a86f59c, 0x39897f9d, 0xc09a001d, 0x7b4ac8e7, 0x11132b9c, 0xb0ab869d, 0xcff6a06f, 0x6ebe81dd
.word 0xc9bbbe08, 0x930aac92, 0xee9644ec, 0x75264f43, 0xba7cb989, 0x9304fef7, 0x356c8086, 0x50db2b08
.word 0xd6bdf199, 0x38907857, 0x43985186, 0x893a3c7d, 0xb402e79d, 0x0da8b4a3, 0x1e72b938, 0xb89d4793
.word 0xaee1fbf5, 0x1149a05e, 0x69059ca4, 0xe87fc8b7, 0xf940216b, 0x0b14766e, 0x25ac2288, 0x46e63232
.word 0x00f0e415, 0xd00e9445, 0x06f2b2b1, 0xae1ee651, 0xf5f3875c, 0x8fb8c968, 0x8f50a9cc, 0xd1914094
.word 0xf9ecffa1, 0xb598e168, 0xd3dd746e, 0x04e5b1fe, 0x16fb2768, 0xb4b056ea, 0x0db82c68, 0x0c827756
.word 0x73597c68, 0x2e27e002, 0xdd9e0585, 0x4ca71403, 0x02e2f45d, 0x45cd12ef, 0x721a30fe, 0xa5132330
.word 0x77179f44, 0x02e7d27e, 0xf18979a8, 0x120080ee, 0xe1e293e6, 0x592bc269, 0x80a092a2, 0x944ca645
.word 0x6402e6ec, 0x5e4eeebe, 0x65609e97, 0xca79e493, 0x0470abfc, 0xea558869, 0xb75ba33f, 0xeda14005
.word 0x1c7da0f4, 0x4d58cbab, 0xc4ccf2ea, 0x7ab0709c, 0xb33d7cfc, 0xa0c0b057, 0x07108cd0, 0x52587336
.word 0xcd696027, 0x6f2a6971, 0x519a8835, 0x5c1f032f, 0x2d9f7869, 0x9b41a138, 0x1c040f98, 0xaed97510
.word 0x37b8c0bb, 0xdf453094, 0x90f88e2e, 0xe3c6f741, 0xf47ee3e9, 0x56f4b169, 0xd9c14a80, 0xd92a82fb
.word 0xf4864665, 0x902a161e, 0x5d9e03ff, 0x478ab8d3, 0x1d257390, 0x965abe14, 0x7309872f, 0x8f5b79f1
.word 0x819d93dc, 0xc325d655, 0x88e085a5, 0xe6b47ad3, 0xc310950f, 0x7723b04c, 0x3043e37b, 0xbd1ed9ed
.word 0x648c02fb, 0xccfed1dc, 0x78186f03, 0xa1abce58, 0x64f44e8c, 0x0eb526ad, 0xdf182dd2, 0x432195ef
.word 0xe2238a2f, 0xd68e89e6, 0x109ad615, 0xca16f5a6, 0xe0103f61, 0x435fcd96, 0xb5d43eb8, 0xe3fc80e5
.word 0x8030882a, 0x44b929ac, 0x8d2fa944, 0x1444a470, 0x4578b8c4, 0xd497ed6f, 0x426160a6, 0xa7fb4c62
.word 0x04c02f8f, 0x37a642a6, 0x1dfed235, 0xcb99dd3e, 0xf739aaf5, 0x8d248270, 0xab5adb6b, 0x3e6b24cb
.word 0x5c371228, 0x230f50f5, 0x98318879, 0x24712d1e, 0x720b2036, 0x217856ff, 0xb69a229c, 0x34c9a31b
.word 0xa92ced90, 0x66dc21e9, 0xfaa334b1, 0x89cc13ba, 0xbbe82d55, 0xe9d98972, 0x4297304a, 0xadcab8c5
.word 0x76a5e5b4, 0xa5563666, 0xc39ad659, 0x4cdb0ae7, 0xc780c455, 0xec2118cc, 0x5ffbbf48, 0x8c66821a
.word 0x22835e80, 0xcfb1b019, 0x29bb4d53, 0xaf7cbf90, 0xad91a04a, 0xd77adc4b, 0x897554e5, 0xcfb09bae
.word 0x6e55b89a, 0x98e7b8bf, 0xf3e4e347, 0x21a4a556, 0x1e7eb81e, 0x790acf23, 0x3577db7e, 0xf830c5bb
.word 0xf9d0e068, 0xc5bdf637, 0x4d3ca24e, 0x9449a015, 0xf7e61487, 0x9d128316, 0x6b62c9bc, 0x0a054026
.word 0x8436937a, 0xa06e05c8, 0x889c883c, 0xb8cfdd84, 0x3b453c34, 0x74210255, 0xd50fa7f3, 0x2006c754
.word 0xdee0c22f, 0x9406942c, 0x378e3484, 0x67d59aae, 0xc2c879fa, 0x75768ad6, 0x78136a50, 0x70dae3e6
.word 0x0cabc400, 0x4d0513d6, 0x7322bdc1, 0x3fec446c, 0xbbbb4be4, 0xdf9e0b57, 0xc4d57b4f, 0xd60474bf
.word 0x5855b450, 0x0b2a59a9, 0xfc0a646a, 0xd702b06c, 0xd7b8ead2, 0x743eaa22, 0x5cf60d01, 0xf964f3d2
.word 0x80594767, 0xcde0510b, 0xb69b5d1f, 0x38969ef4, 0xc92b3890, 0xb8714981, 0xc4a0fb0d, 0xf713ea81
.word 0x31792107, 0x16e09466, 0x6131d7fa, 0x04b9ede7, 0x7e890c96, 0x3abcc079, 0x7ae9f83e, 0x00bd7701
.word 0x13c31343, 0x04e11015, 0xc703e355, 0x48304573, 0xd6ce8197, 0xcc7330f2, 0xfd6a06ed, 0xe3a27675
.word 0x219f879b, 0xe794d02e, 0x1392eeb0, 0x7663da76, 0x947ac7a1, 0xcc36f81c, 0x37e9f318, 0xda815c57
.word 0x79d8caad, 0x2a26300c, 0x9728f9eb, 0x7ee6eb3d, 0x6200d30d, 0x977b6c71, 0xe2d232c2, 0x32f7a962
.word 0x830b4dcf, 0xdba9f90a, 0x2aa9ea4c, 0x9770c680, 0x30708e64, 0x53f46c06, 0x38cf2f2d, 0x6380572b
.word 0xa7282f73, 0xab4aa3a2, 0x1a9da848, 0x4c33c94a, 0x5b87210e, 0x9b97f755, 0x137ee6ae, 0x56a65be7
.word 0x58876d8a, 0xd09b03f6, 0x05370f3d, 0x3c72fab1, 0x040dd3fb, 0xf864cdfb, 0x5bcff5b6, 0x863a01ba
.word 0x6bf0386c, 0x0a69a12e, 0x0e29ad02, 0x415a896d, 0xb70e966b, 0x7f22cb32, 0xd01e089a, 0x4eda76be
.word 0xb5a19ebd, 0xa19068a6, 0x70cbe0ea, 0xfaa801f4, 0x8d009ef7, 0x1802f5df, 0xab76717f, 0x9da0f0f1
.word 0xe85497d6, 0x6ad0e783, 0x1b0857f0, 0x146fea5b, 0x75713f6c, 0xe7386850, 0xedef2180, 0xf26f88f9
.word 0xd6bcd3ab, 0xffb7e8d2, 0x54eb2191, 0x57d667a6, 0xd7f21c3e, 0x21931107, 0xf690c29a, 0x7ed972dc
.word 0xdac86e63, 0x3b4c637f, 0x73ba0169, 0x5b256822, 0x37a537da, 0xc94181cb, 0xbff0f1fc, 0x67e90a38
.word 0x2c535204, 0xd8255bec, 0x8a356e04, 0x5b87c8f2, 0x35c6afd5, 0x4e669f84, 0x54e26769, 0x935b9616
.word 0xee6e9e67, 0xe36f7d8a, 0x9299683e, 0x64483bed, 0xaba7fff5, 0x64c86264, 0x1acc2f68, 0x775a240c
.word 0xc663bd85, 0xcb013631, 0x32d0935d, 0xa5e7e727, 0x2a056697, 0xbd3f5dd7, 0x0daa0366, 0x3855e2db
.word 0xf6b78b96, 0xa18762b5, 0x1eb8ac3d, 0x52e9b4ff, 0xc39d74d6, 0x463b2f54, 0xc499ff05, 0x17c033d1
.word 0xd3fc108a, 0x8583a724, 0x128ecb40, 0x91e6cca3, 0x919855b7, 0x7dfca68b, 0x90994b93, 0xea692f06
.word 0x9c20d552, 0x5959302a, 0xa74db06c, 0x071f3050, 0x0a623b00, 0x3b1bda77, 0xcf2539d5, 0x5cb2dc60
.word 0x486cf275, 0x7d5a42ca, 0xacb1209c, 0x782a28c9, 0x1cf9ac39, 0x76a16575, 0xa79f1d31, 0x07222fc3
.word 0x71cb55d5, 0xed4eb9d3, 0x57eda633, 0x2919691a, 0xe2caa34a, 0xb1939590, 0x866fc0ac, 0x5e8fc87d
.word 0xc2e1ca3d, 0x9e84a8c9, 0x27a6c056, 0x74682c9a, 0x1a08788d, 0xe6de5501, 0x529b5c2e, 0x30f81503
.word 0xb56f8ca5, 0x55703dae, 0xc1694227, 0x91128f0c, 0x3794155b, 0x21c2ff29, 0x28449b29, 0xcc68d89a
.word 0x6548e460, 0x9e80ec1c, 0xc3b8883c, 0xbd860fa6, 0xdb9e4239, 0x57e1d535, 0x16a6d84f, 0x3b383cd1
.word 0x5b735b19, 0x7349fa84, 0x1c509901, 0x841399b0, 0x06a8c15b, 0x927395d9, 0x1d2546b6, 0x3c4f4d5e
.word 0x0086c2bc, 0xbc4fd729, 0x3b1722cd, 0x6a81cb47, 0x710675bc, 0xc2db535b, 0xa28d8640, 0xffd85544
.word 0x60c5c579, 0xcc5d92a0, 0xeee522a2, 0x5e9ce3e0, 0x6c817382, 0xde572a1c, 0xf53f812e, 0xfb14b155
.word 0x8dc28a4d, 0x8a9b5cec, 0x3aceef5e, 0x829ab550, 0x0a705f29, 0x762516a3, 0x5c5b09ed, 0xcfe785be
.word 0xc5788e22, 0x4ffc4246, 0x2d7a16e6, 0x7d62ae89, 0xfae628f5, 0xb7116dd6, 0xb06f3f6f, 0x19d3c4d6
.word 0x382a50c0, 0x01aab1de, 0x0c66c330, 0x85d7c184, 0x253aa551, 0x399596c4, 0x862385db, 0x45c5f714
.word 0x34d6df39, 0x98ad87bb, 0xfcc72499, 0x57a4f69f, 0xd1e6761e, 0xbdfdd472, 0xd4bb09b7, 0x64795a71
.word 0x38d3e106, 0x72da54f9, 0xbb31127e, 0x8caa9ab0, 0xa030e61c, 0x921ef110, 0xfb66d3a3, 0x73206a31
.word 0xea7e0f6c, 0xe5c1ab30, 0x9d3ca8d7, 0x34d8166d, 0xa0f85dc0, 0x1f44fa0d, 0xc5892f64, 0x9a1af519
.word 0x424b0de0, 0x720be2db, 0xe40c5e2a, 0x74868585, 0x0a0649c7, 0x171621a9, 0x48dfe4cc, 0x4d653134
.word 0x06221177, 0x4fcae565, 0x0073e529, 0x4c592807, 0x63153fb6, 0xd1c624ed, 0x0cf21d1b, 0x68fb764d
.word 0xe7dae202, 0xc33b389c, 0x146b814c, 0x22fe20db, 0x8a026ce2, 0xadb5ec79, 0x8521212f, 0x8fa71be3
.word 0x52ed1427, 0xf25fc86f, 0xa13e8cbf, 0x869dea2a, 0x70f28a8a, 0x1201da79, 0x3ed36484, 0x1aa7e2f9
.word 0xc04c9eac, 0x9de612ad, 0xe0e9b5e6, 0xb0933354, 0x280b867f, 0x5ed3603c, 0x81085d8e, 0xe86021c1
.word 0x0d6549d3, 0xa5d011c3, 0x47e1a37e, 0x2ef4aea1, 0xfc8b701c, 0xa91e7e4d, 0xb44bcdbc, 0x2a7fdf9d
.word 0x4a650b9f, 0xf2c2386d, 0x17be1fa0, 0x12ae310d, 0x13fb7d3c, 0x3f9291a6, 0x3e67f4dd, 0x36047586
.word 0x8f30323a, 0xdfc5c365, 0x981037be, 0x02575322, 0x6fdc45eb, 0xb51f4ca1, 0xdf0cc82e, 0x352463a5
.word 0xeacad9c6, 0xf46cb2a8, 0x9c410a7a, 0xf4cf75ac, 0xb29c18b0, 0x345b8920, 0x38b24cea, 0xb4f7054a
.word 0xd00f33bf, 0x3186c9f5, 0x7ff46de3, 0x39058460, 0x5df6b0f7, 0x258e63cb, 0x5211ec49, 0x8cc03da1
.word 0xcc3dfdf9, 0x9f116067, 0x4f4f3ec8, 0x4310ca96, 0xd2b74e05, 0xbb704d00, 0x48aaf747, 0x312b3a6b
.word 0x892d5a5a, 0xe0b11ac3, 0x9a3d782d, 0x7b8a7459, 0x2d3e55e6, 0x31b9fde7, 0x432ba7d1, 0xdce768b2
.word 0x812b7667, 0x2b1bce80, 0xd2e57324, 0x4c5e201e, 0x60706d27, 0x60b4133e, 0x5993c63e, 0x9e4952ce
.word 0x0a8842e8, 0xdf41bddb, 0xab9b39aa, 0x422c1149, 0x98033034, 0x5dc78a4d, 0x7d26f225, 0xb285de06
.word 0x154c841c, 0x45c998f0, 0x9ab1caf3, 0xd6c2a590, 0x666b755c, 0x931e7394, 0x74470f3a, 0xd6789aeb
.word 0xdeef0925, 0x51ef4cfa, 0x6b998e36, 0xd4454900, 0xb6420928, 0xe9a0bfb8, 0x16acf8d3, 0x41b92a39
.word 0xd598e72c, 0xe0501eff, 0x0ba5511e, 0xc4790928, 0x19e9dfad, 0x04e28ba6, 0x0692ec48, 0x23754ddb
.word 0xcfb263c0, 0x8b43006e, 0x6ab5e728, 0x4048b5f0, 0xe3f9cd3d, 0x8a71f460, 0xdfc7b5ce, 0xe36da34d
.word 0x9b8d0972, 0x3ca019ec, 0x7acbd876, 0x98d36404, 0x81135392, 0x9ac033e6, 0x6a7e167b, 0xb335ffef
.word 0x5324756d, 0x39a86c96, 0xc34c02c4, 0x41ce16a6, 0xb6223e07, 0x35ff10c4, 0xf745be49, 0xf1c1d747
.word 0xfc13ab6e, 0x7142e6b4, 0x30b2da68, 0x9cd05997, 0x8a97742a, 0x758e31c2, 0x6795509f, 0x8d4db9d1
.word 0x5b15b68b, 0xb2285d96, 0xe74857b0, 0x18e7a17b, 0xa15fbae0, 0x81e7b752, 0x2e0fdbef, 0x9c3f44dc
.word 0xdf4b631c, 0x063836f0, 0xb32a81e2, 0xaddc6a69, 0x0a2658f4, 0x3f957d0a, 0x2c25c29a, 0x94bff4ba
.word 0x9c53d79c, 0xc68d2b27, 0xcbd0563e, 0x1711e635, 0x87caa74b, 0xa45dc6dd, 0x03f769d7, 0x6bd0cbee
.word 0x35fee2ca, 0x80e65c41, 0xa6856136, 0xd0cf4dfd, 0x72f535ed, 0x10d8f062, 0x220c367c, 0x7e11aebb
.word 0x16c33541, 0xd6fb850a, 0x4abb2247, 0x904d9bba, 0xee901338, 0x4b58c18d, 0x1dfb83f0, 0xf9e0c74c
.word 0x370e7d88, 0xa7b9d345, 0x0d5a7434, 0xc59f097b, 0xd74d4d50, 0x31caf36e, 0x3730cf36, 0x586e502c
.word 0x4ce15ec2, 0x208cbb71, 0x643ecdd6, 0xe6fb6d03, 0xe9e6d00c, 0xd0c3bde6, 0x0f443d97, 0x3504fe0f
.word 0x9dfd5c68, 0x5406ecb7, 0x08cf4b6d, 0x028ebf17, 0x1495ed8c, 0xbdd59bfd, 0x1d7c30a7, 0xeb946c0e
.word 0xff6bda97, 0x453a519f, 0xf9d53f0e, 0x5be97555, 0xb96b22c9, 0x53d10f77, 0xceb54d48, 0x5e6a3888
.word 0x4b173fda, 0x17597cbf, 0x9759bb0d, 0xa8375905, 0xb5d22aa1, 0x8c9771ac, 0xad1f09e2, 0x63dd09d5
.word 0xcdb2dcb1, 0x7ffa588e, 0x88a1f0ec, 0x5243264d, 0x36d3d232, 0x01ab4035, 0x745266e8, 0x1617a0b2
.word 0xf7e3ebeb, 0x8bea7b08, 0xd5419214, 0xfa46abe5, 0x28638e6a, 0x61e49ec5, 0xcb0a4ae8, 0xad11728d
.word 0x682b3bff, 0x787b2583, 0x5232272f, 0x2967d1b7, 0x8476c4ec, 0x58bff084, 0xfa5c47a7, 0x1d0a4a4a
.word 0x0a31f407, 0xeac66cbb, 0x376092f6, 0x88037d74, 0xb3010387, 0x134a2d2f, 0x8c2f8e76, 0x3ad3d002
.word 0xd84a0088, 0xf972cdb4, 0x2b6c86e9, 0x6a87dda7, 0x879b93b2, 0x88dc5a7c, 0x5253ee2a, 0x80f77787
.word 0xa9425472, 0xa1265f56, 0xed96363d, 0x160f7ae6, 0x0b71a8a9, 0x4552dd82, 0xbd0e0491, 0xf8492945
.word 0x8236d9c3, 0x34413ff5, 0x0ef33803, 0x47d23ca3, 0x1feef798, 0xd58e8687, 0xb682832d, 0x547c1334
.word 0x485ddc2a, 0x46708348, 0xf4e4e9e9, 0xbb7bcbed, 0x0feeeff2, 0x79efc6e3, 0xe6144fbf, 0x81dc982d
.word 0xb3b88965, 0x1be46d53, 0x8769db0d, 0xa989f956, 0x692f0b63, 0x98ebc13f, 0xbd8d2dd9, 0x2938b4c8
.word 0x54558310, 0x905e2c10, 0x197f59fd, 0xc35c5cce, 0x9ba82d9f, 0x14a24165, 0xf309f482, 0x313f4cc3
.word 0x7fa38684, 0x956e7889, 0xd35a97cc, 0xb63febe0, 0xd4327132, 0x3869e7db, 0x8dba4479, 0x91215e77
.word 0xcf0ddc3b, 0x006d1c98, 0x21e20472, 0xab0811c3, 0x2bb0b9b9, 0x2ec988a7, 0xe932fcc4, 0x8c911c39
.word 0xe6bd6d3c, 0xc95065c7, 0xbc777539, 0x3d14000c, 0x2e3a9883, 0x43331bdb, 0x215c84bd, 0xd90bb6df
.word 0xeac31c92, 0xbb64f6ed, 0x9fc21989, 0xcb8141f3, 0xd656a346, 0x8f83ebc2, 0xa36325a7, 0x7489e0ab
.word 0xd0736a40, 0xcb49bb1c, 0x4903696c, 0x7c699a75, 0x57b91880, 0xd9224a0d, 0x6d9773f4, 0x2e8d3a65
.word 0x8dfcffed, 0x13afcce9, 0xa7b89378, 0x38638f98, 0x4f4e3cf7, 0x5c8e21d6, 0xb33960f9, 0xc4212e2e
.word 0x1eb4a3c0, 0x2b62f94c, 0x03bb1234, 0x5f133bde, 0x3b465967, 0xb0ce87be, 0x91d46e75, 0xb97f5915
.word 0xbeaa357d, 0xf27e4e29, 0x0b20a2d3, 0xaafcc7e8, 0xf97956ba, 0x03aea9ea, 0x432c569e, 0x307c023b
.word 0x655e83b7, 0xdb5c719c, 0x956ad821, 0xd3ac52aa, 0x28f01454, 0xa4ba55b1, 0x103e073b, 0x6c882bf4
.word 0x1f6a6900, 0xeb56b9d9, 0x3e59e469, 0xa39f038e, 0xdfee7c26, 0x98a63dbf, 0x51893f72, 0xe6afba28
.word 0x391d8ca2, 0x2c8b96a1, 0x2e823209, 0x5a56ac55, 0x77d337f6, 0x05fd56ef, 0xb8c2151b, 0x6b0bcccc
.word 0xc9a05ab1, 0xc3ae8218, 0x38f75140, 0xfb18b678, 0xf242c00b, 0x8e9795bf, 0x1b575d73, 0x43007a80
.word 0x54e531c2, 0x909d75d8, 0xad3d282e, 0x86d77198, 0x8f423d41, 0x741ae460, 0xf03569a4, 0xf57f64cf
.word 0xfcdcd1aa, 0x86690828, 0x0cc9894f, 0x95b2454c, 0x1064c5ef, 0x61d3f506, 0x44c88dd2, 0xa7facb5a
.word 0x5f21aa09, 0x495f5dab, 0x3bce433d, 0x6046d1fe, 0x58e78b1c, 0x88361b6b, 0xa78c02d4, 0xbbda73c8
.word 0x4652e4c8, 0xea777ce2, 0xe57caa72, 0x31e96030, 0x5aeb7ae7, 0xbbdfa4f4, 0x4b9eb5e9, 0x218883bf
.word 0x329267af, 0xc56e1da4, 0xa63d01b7, 0x0e783602, 0x910d1871, 0xb25faf1c, 0x13aaeaeb, 0xfbd0daf1
.word 0x7a2161a8, 0x07ccccaa, 0xa38ef70a, 0x2f67fcdf, 0x2a481f25, 0x8441c4f1, 0x34d9980f, 0xce4990c4
.word 0x416d94e9, 0x2e33ab44, 0x1371ccf4, 0xf54b8531, 0xa29368af, 0x713866e9, 0x8f25bb3d, 0xd01133ab
.word 0x1181fea8, 0x51e107df, 0xff05bd28, 0x0e449fcb, 0x931d3bb5, 0x853f6086, 0x2a83c2b0, 0x9c538d74
.word 0xab6d0a93, 0xd2e5b673, 0xb0b1f3e7, 0x68f2a15e, 0x1f513d95, 0xb978cb67, 0xf6c031e8, 0xff3fee1d
.word 0x97b97cfb, 0x49c2766c, 0x0cdbc804, 0x2599bafd, 0x72709279, 0x7eecb0c0, 0x006281d7, 0x5d228907
.word 0x39589441, 0x49b09745, 0xa82f1aa7, 0x476d4d03, 0x4351252e, 0x9a66f7a8, 0x8ef90955, 0x38a3a063
.word 0x8f8a40d0, 0x5a07e5dc, 0x6d82d457, 0x11500982, 0x8efbbec5, 0x73f19cf5, 0x24bb063b, 0x7c0f60ae
.word 0x56cd6b30, 0x1f016be9, 0x27ad0c31, 0x561b39fb, 0x349d8e06, 0xfed74c05, 0x0ebb7ac5, 0xa16b5be4
.word 0xe5549896, 0xb5387501, 0x2d99ced4, 0xd181b9a4, 0x8a963cad, 0xc9ed3f3c, 0x86189028, 0x9e4cd41d
.word 0xbb45b410, 0xc7c77a2f, 0xc9822f9a, 0x5b3c51be, 0x0f4d3f57, 0x0fa76d58, 0x32a38816, 0x418f0db9
.word 0x7cb1c685, 0xc3b4dcf2, 0xe9d69083, 0x01275dce, 0xcc65960f, 0xdd0738ee, 0xa0ba900d, 0xa5e9c4c1
.word 0xa8d625c9, 0x3a52ad26, 0xc1577a7f, 0x35019706, 0xaf3023aa, 0x43786d28, 0x1f083876, 0x09bf0336
.word 0xf44a73a4, 0x9b4e25e6, 0x1cd80008, 0xe1e44aa9, 0xec4868e9, 0x4115ec58, 0x6b961e71, 0xda12be6f
.word 0x82baacef, 0x2eb5f5e6, 0x476ccb69, 0x81fa01ad, 0xe00495aa, 0xea4dfe1e, 0x9808c9c5, 0x4937d129
.word 0xa7a53c13, 0xac227915, 0x3d5c6e61, 0x97bf339d, 0xa5ebd369, 0xc15591b6, 0x5270ff78, 0x2dedd6ee
.word 0xbc931d56, 0x58e2ebba, 0x14038a8a, 0x47eb9280, 0x451ce60f, 0xce3174ad, 0x437a1e73, 0x746cf4b0
.word 0x82c1f036, 0x38822e5d, 0x82e7b592, 0xa5a32fcd, 0x213bf0c4, 0x8b9ad24e, 0x58d95851, 0xc5087df0
.word 0xfee55cc3, 0x842b83b1, 0xe79f7783, 0x670f03ab, 0x3418b3e9, 0x809a8590, 0x90e8af8f, 0x4e3909aa
.word 0x19f59c9f, 0x98993bbe, 0x86164a40, 0xc95a62a4, 0x023b7a7c, 0xf27d29ec, 0xfd040d15, 0xa08e350e
.word 0x0c1cc23c, 0xba4bf8e6, 0x81778980, 0x26f62895, 0xb235f1d4, 0x969ffea4, 0x4528bf06, 0xabececb3
.word 0x1bd74216, 0xf74760e7, 0x0bb7dcc9, 0x63b278cd, 0xe7587cef, 0x76569362, 0x5b18ca2f, 0x831cd393
.word 0xb99bd823, 0xcc6786e5, 0xac6bdc2b, 0x5f595ca6, 0xcddfaaa4, 0x2b4bd352, 0x99190ac8, 0x5708afe2
.word 0x062ad66e, 0x7ce9f3a2, 0x771e6f19, 0xf6962958, 0xa42183af, 0x16dd7a9c, 0x114bd78b, 0x62d13fb3
.word 0xb79e9905, 0x3d610bd3, 0x0c5380ec, 0xe2fee7fc, 0x7aa67e81, 0x5c57aa9d, 0xf25c6611, 0xba582b8e
.word 0x1d932f4b, 0x1d6e2f46, 0x703c40f1, 0xab00d4d2, 0x03cc1cfd, 0x292aa929, 0xaa034eec, 0xb855c140
.word 0xcf05e3ea, 0x100e52a5, 0xe7bfa52e, 0xa5f91cf6, 0x8c4c46ae, 0xe54d60d1, 0xf7c17b26, 0xbbe65f1a
.word 0xd39b7c9b, 0x3bc9b4e4, 0x45790906, 0xffa61693, 0xb1d6e30c, 0x959d2d77, 0xb11a462d, 0x46c4ae5c
.word 0x869c68dc, 0x5ee24a49, 0x98231d8b, 0xbe4487fa, 0xd47231e9, 0x5c184e46, 0x52921ba2, 0xa7c7ff8c
.word 0x5adbab7d, 0x7e70b43c, 0xb8463a90, 0xce2d0e41, 0x99ad514b, 0x95c23caa, 0x19c0886c, 0xbd6a32b1
.word 0x595eba5b, 0xa53a3f24, 0xff03437a, 0xe26fcd74, 0x07e895c1, 0x5687aa8c, 0x8342d506, 0x68a97f56
.word 0xb90a739b, 0x70a008cb, 0xa0e77475, 0xf2a72ca4, 0x3608ac0e, 0x03dcf4b3, 0xe15817eb, 0x57835447
.word 0x1d623556, 0x82317e70, 0xac37d056, 0xf6a254a4, 0x0e652961, 0xc5ba9960, 0xbfb9a741, 0x4336b6be
.word 0xacc17afe, 0x699572d1, 0x263a54d6, 0x81bf3509, 0xf83abe21, 0x02b3c83d, 0x0956afef, 0xb1c8af5d
.word 0x21899bb4, 0xc6d81757, 0xfcaff667, 0x7db52228, 0x09702092, 0x1532f63a, 0xb58b7a0e, 0x4373d7d4
.word 0xc8d0f94e, 0xd88489b3, 0x7ae51528, 0x16cb5083, 0xf4eb0ee3, 0x7c1782f0, 0xea687f6b, 0x6ed584d0
.word 0xa9b89640, 0x2dc5186e, 0x9ddc6152, 0x7e93a80f, 0x572b01df, 0x107995cc, 0xe3293573, 0x73a7b8ff
.word 0x8ecc7ebf, 0x7af99a45, 0x9719ba77, 0x29101220, 0xfd59f6e7, 0x948bb0ce, 0x7225e76f, 0x81ecd4eb
.word 0x7d6c776b, 0xb4be4b50, 0xee01e3fe, 0x6ebb5b97, 0xc4c53f45, 0x61a46068, 0xcbdd5dc2, 0x2f8e85ea
.word 0x653de0a3, 0x17335d04, 0x36dce3e0, 0xa2308f1f, 0x7f202977, 0x3df2123a, 0x6f71b9e4, 0x05063b42
.word 0x68c8083d, 0x0e642644, 0x0912c455, 0x25d1594b, 0x6a20286d, 0xb18e6570, 0x80a00690, 0xf05e3b14
.word 0x4a719f49, 0x2a187f4a, 0x736b632d, 0x28c1ae30, 0x12dbd28f, 0x993d6f60, 0xf84b5a6d, 0x63688dd0
.word 0xc52b1c0a, 0xd0423645, 0x251b170d, 0x625321b5, 0x4b998755, 0x1b602372, 0xfee2ea7c, 0x423f52fe
.word 0x0f4e4516, 0xb0975a2b, 0x8e78799d, 0x76334d48, 0xc840576b, 0x1067874b, 0x02e318e7, 0xad8413dc
.word 0x6ea839c3, 0x35683b6e, 0x0236aa02, 0x0a0d82b2, 0x7e1342f2, 0x7d90aa92, 0x8aa1da6e, 0x4b6b3bce
.word 0xa655420f, 0x23f113d1, 0xf859bcaa, 0xff84f1b6, 0x5493d9c1, 0x1bc3c9b1, 0x95446f2e, 0x178f7630
.word 0xe76f1c42, 0x64f32ba2, 0xf569987d, 0xf6f1dfae, 0x624f373a, 0x2a98466b, 0x22279f58, 0x0e77aab4
.word 0x2981966e, 0x48995f00, 0xc4c2ec36, 0x6ef2fe7f, 0x1cb80281, 0x80705817, 0x69ec80cb, 0x38284c35
.word 0x51cb80dc, 0x18bb5859, 0x8c3f679d, 0xb2503274, 0xc0cb4ff7, 0x342132d4, 0x0f86f9ff, 0x19f8cc19
.word 0xc18af824, 0x633e97db, 0x950fcd72, 0x727c7a20, 0xc3af8bc6, 0x2369ff5e, 0x32ec9e6a, 0xf5d382f7
.word 0x1918cc66, 0xa0fee572, 0x82e70740, 0x1677edb4, 0xe46706cc, 0x17fe1fa0, 0x543bb1f5, 0x7907d2b4
.word 0xa58d67c8, 0x1c673a70, 0x3f1d5418, 0xa98a0459, 0x52d72130, 0x13cec75d, 0xbe847eba, 0xe6c93b9b
.word 0x58fec96b, 0xab84a8b7, 0xd2e2d19b, 0xd747235f, 0xf7989247, 0xc8db0c07, 0xe84f785a, 0x0de8a97c
.word 0x8e40a3e0, 0x96bf816c, 0xbbba0097, 0x61e68afa, 0x49b28c50, 0xf0f91e94, 0xd436fc5f, 0xf3bd36be
.word 0x7352b4fa, 0xe260e8cd, 0xb4628d2a, 0xa4904d2e, 0x9dcabcdd, 0xf8177eaa, 0x8df3e60d, 0x2b9f7c6f
.word 0x12c18e01, 0x55b9ced3, 0xf1d903a1, 0x093285a8, 0x08be1f35, 0x40d7fcb1, 0xca5f649b, 0x29bb4c8f
.word 0x75ce8aa6, 0x0c3cfa16, 0x4cf49f48, 0x361a1d9a, 0x87503474, 0xe89c8579, 0x5f27cac6, 0x1eee9147
.word 0xa8e46af6, 0x5fc70c02, 0xbdf6392f, 0xddde22b2, 0x69395c31, 0x4707e6d9, 0x14e5fcd9, 0x5404fe23
.word 0xfd2a0d4f, 0xe8214823, 0x99c2eaf4, 0x28538f2e, 0xfc6356bd, 0xa72fe0ca, 0xec5897d3, 0xa555ade4
.word 0xa5a3f69a, 0x8dce0a2a, 0x4a01ef77, 0x9b9d182f, 0x417494ae, 0xb099c7b8, 0x8afeb163, 0xe08ddad3
.word 0x07a48ef9, 0x79d06e48, 0x9e3f373f, 0x2f89470b, 0xfc6cbaae, 0x530aa2e3, 0x2636ce3a, 0x704510af
.word 0x40760c09, 0x584011da, 0x5c8e46cb, 0xb178af2f, 0xf925033f, 0x7b91738a, 0x7f79657b, 0x91bc345a
.word 0xa32dc556, 0x9920c745, 0xc278f1bf, 0x35866859, 0x46de4aed, 0x9aafc883, 0x11d870e8, 0x7b8554c2
.word 0x2047d5ae, 0x0513ff35, 0xa067b4a3, 0x6825a1ed, 0x80f148b0, 0x4339b647, 0x78bc4bf3, 0x8639cde3
.word 0x6b8536a3, 0xc3bce430, 0xd2f1bb7c, 0x5e35d321, 0x5aa31525, 0xce6503e1, 0x7b88f25a, 0x143d2f18
.word 0x93188056, 0xdb13ea88, 0x29066f47, 0x7809d0b6, 0xee27d102, 0x1c225078, 0xea4e284c, 0xc25b497f
.word 0xc4079a60, 0x1cee892a, 0xa44b2e56, 0x96ba760a, 0x6cb201c1, 0x2a739144, 0x0baf9d01, 0x0aaf6e64
.word 0x57703a27, 0x68d7b7e5, 0xc8f89c9c, 0xd516cc80, 0xd532b950, 0x2a5e9285, 0x1d5580f7, 0xe9aea885
.word 0xd3662b38, 0xe47ba491, 0xc470c140, 0x0f2f1cd5, 0x9eb741b2, 0x9755d7db, 0xbbe3632c, 0x51886184
.word 0x808641a1, 0x1fd4ec34, 0xa56d5769, 0xbcc2c478, 0xf1852f1e, 0xfb6d4ec2, 0x1a830bec, 0x44ee6663
.word 0x38067c1a, 0x09f08f8a, 0x77bbfd4b, 0x2c59d068, 0xaba40c71, 0xd8ccf1f9, 0xd271e7f9, 0x21988bb1
.word 0xc7bf2c9b, 0x70edcdfe, 0x2514e75f, 0xa2a010c4, 0x02b17bdc, 0x95b23084, 0x2a1dccf4, 0x70853a18
.word 0xec6d6320, 0x42e2f0a4, 0xe56f9b07, 0xa6159298, 0x3fb2f2d9, 0x6863b363, 0x8944bb0e, 0x2daee711
.word 0x8cab56e3, 0x347644ce, 0x07a10b1a, 0xff882ef9, 0x6ade4717, 0x731934e1, 0x6f95baf0, 0xb15a0876
.word 0xaa3d3b3b, 0x610bb7a7, 0x85741091, 0x59b04490, 0xf58b1dd8, 0x0a027812, 0xc2f6bb0f, 0x0fe9e0e9
.word 0x69a97e7d, 0x24a8ef26, 0x93795b55, 0xf1741eed, 0x8e6d8239, 0x03bf7e2c, 0xa5227dba, 0xb0a47a1c
.word 0x65d0c83e, 0x57e8295c, 0xd60bb133, 0xfdba4600, 0xdbe7a3c7, 0x07794520, 0x75fc41b3, 0xb8f2dfc0
.word 0x712586a8, 0x52164a31, 0xc12117e0, 0xe416b7e8, 0xb77c3f9c, 0xde307ad5, 0x4c0de91a, 0x4d898461
.word 0x0983fb36, 0xc25de701, 0x0693101f, 0x5407947e, 0x0b1b1d7f, 0xa085b209, 0x7fa93bd4, 0xdaf720d4
.word 0x0c2c3513, 0xfe2855e7, 0x9577ba48, 0xe50a6546, 0x7a2c3b9a, 0x1082166e, 0x194d93a8, 0x879145db
.word 0x1cb609a3, 0x21b499bd, 0x8d305057, 0x2420f2c1, 0xe9f4ed9b, 0x7b78a13d, 0x3be5144f, 0xce39f90a
.word 0x539b1976, 0xa60954f9, 0x475dd7a2, 0x7c25f394, 0x056ac601, 0x2d1a9548, 0xcf4273be, 0x37074a54
.word 0xb524d0e7, 0xae05362a, 0x940686a7, 0x1ab7b0ef, 0xc17b727b, 0xf65057d0, 0x6d35a848, 0x0c8573cb
.word 0x2be04c84, 0x575258c6, 0xd1288c7a, 0x13cd608b, 0x514f95fe, 0x4613adc6, 0x1a2b8ab1, 0xfc33fbdd
.word 0x24255522, 0xcafcef46, 0x9f4c052a, 0x07aaa71c, 0x1ca92fd5, 0xc69a5dcf, 0xce61faeb, 0x00028f50
.word 0x6b1cfbab, 0x52faadc2, 0x4f422607, 0xdd796487, 0x91a5312f, 0xc284d8b5, 0xbfb62ed8, 0x103c195d
.word 0x9f85d488, 0xcd264f28, 0xb8aa7b1e, 0xfb9e6e9b, 0xf43aac80, 0x91dd5e1a, 0x539a2759, 0x0fe88e9f
.word 0xad910af2, 0x61c33357, 0xf79e422b, 0x387b6a3c, 0x8cdb4fd2, 0x6057131b, 0x43bdf11e, 0x52570e7e
.word 0xfbeac231, 0x09ea3d91, 0x87e155a9, 0x752cfa7f, 0x5d768e34, 0x9b05afd7, 0x647107e2, 0x8e673a22
.word 0x932be562, 0x835f6910, 0x8313ba52, 0x6e32cdeb, 0x99f2b936, 0xa8919621, 0x34a77581, 0x3603abac
.word 0x6d4dd3e5, 0x476feb43, 0x34c6fdd8, 0x417a0bef, 0xc90b238c, 0xee706785, 0x3cc9efcf, 0x7e690066
.word 0x927944ee, 0x3f2e9788, 0x8099ab6b, 0x6775d43f, 0xc8764da1, 0x516d79dd, 0x8ab3b29e, 0x17dfc773
.word 0x1f893467, 0x466627a0, 0xc051a4c4, 0x7419254a, 0x269c462d, 0x2aa84427, 0xe085fa09, 0x5f08877b
.word 0xc4f05dc0, 0x64cec6b2, 0xf2e7d63e, 0x09e7f46c, 0xae0703f4, 0x0af592c8, 0xb1e966d3, 0x797167c8
.word 0x9eab2b99, 0xddd10780, 0x6a238943, 0xfa9f3865, 0xceac8a9d, 0x0a78b269, 0x29db028c, 0x831b8542
.word 0xe4b14b95, 0x26238e51, 0x6ab1249e, 0x4c5eadde, 0x7d941460, 0x061eeeff, 0x8328f152, 0xe135530a
.word 0xf6e39a16, 0x137cd2cd, 0xb5001ca4, 0xefd1f0b1, 0x16e9865c, 0x47513209, 0x7c3c7e31, 0xfdd07537
.word 0xbb4cb9fe, 0x60cf8d48, 0x041db0d8, 0xd7fe3c1c, 0x4ba834d7, 0xc0f32559, 0x7f62cb02, 0x2efce013
.word 0x98d3d499, 0x0debc2ac, 0xf03351b6, 0xc9ef63cb, 0xb81c3214, 0xff84da54, 0x873dc6a4, 0x1ecb2e4b
.word 0x6c0c9249, 0x8348692a, 0x066e63da, 0x9d9e4b3f, 0x19fcf976, 0x02fa0a35, 0x9162e609, 0xed8779cb
.word 0xe268fef7, 0x21fa7673, 0x21294132, 0xb5603536, 0xc4d1885e, 0x041101aa, 0x9f726158, 0x3fe6ef00
.word 0x3b697f8b, 0x89b681de, 0xdeb119e7, 0x3ef8b7bf, 0x4f45223f, 0xaa3baa10, 0x17ed6445, 0x3de18224
.word 0xe6b4c858, 0x052e366b, 0x6cfe19af, 0x98ccd381, 0x264291b9, 0xad2ba458, 0xa020e8ab, 0x92f9662d
.word 0xb6f8c06d, 0xbdfd79af, 0x5b96d1b0, 0x58f4362d, 0xd8ee9f22, 0xef49c8c1, 0x17825042, 0xf3b76e5d
.word 0x057139f9, 0x4ed7bf97, 0x34cc920c, 0xae60dc17, 0x3d823f46, 0x8bfc0164, 0x53e88bbe, 0xa790c30a
.word 0xf864f55f, 0x21cdb8d3, 0x42deea45, 0xddb16c99, 0x73af8cd9, 0xd25069ba, 0xec645c9f, 0xc53b41c2
.word 0xbf55b51b, 0xc0b2cc08, 0x6bd0fffe, 0x61039175, 0xba501a33, 0x5d521436, 0x4aca09eb, 0x00f06ae7
.word 0x4cde5542, 0xb77743b7, 0x008c9178, 0xe222774a, 0x5b120042, 0xc466d4f7, 0xbf565f69, 0x7ef16c45
.word 0x2608f8a2, 0x69136c4c, 0x3fe4e4db, 0x7f7ae8cd, 0x85f84cb2, 0xdf01f0c9, 0xf4105730, 0xa3b2d4ab
.word 0x2a96e5d3, 0xea3fc480, 0x34fa05d4, 0x523c8efe, 0xe0439d77, 0x052f5318, 0xe527033c, 0x7eeae733
.word 0xa5e9d2d7, 0xd0de3764, 0xb67bbd55, 0xd7e85868, 0x7bca05a5, 0x8fd96510, 0x10e3c690, 0x379e5597
.word 0x31f7d862, 0xc9037497, 0x8516f97e, 0x9628ae83, 0xbaafde82, 0x16102886, 0x9f3e964e, 0x898f6fff
.word 0x6fdbc8f9, 0x2f94b6bc, 0x1dce204c, 0x8cd143bc, 0xaf7a7882, 0x12b89843, 0xc3bb055b, 0x352548de
.word 0x7a79d9f1, 0x2b7108de, 0x3fc66281, 0x66457fb0, 0xf41e7d03, 0xd55cc5d4, 0x395ebf6c, 0xc55ced02
.word 0x16b48df5, 0xe3d96fd0, 0x287a1b83, 0x56257df4, 0xca8fb1d1, 0xa07f003b, 0x75c2983b, 0x3710c007
.word 0xb6d434c4, 0x641278bd, 0xb275617f, 0x6ca5c0bf, 0xd2b15d4e, 0xa7688378, 0x591889f4, 0x51618c79
.word 0xb6821aff, 0xbd74a038, 0x23947258, 0x7891cb14, 0xf7641ec4, 0xdad994ff, 0x029c591f, 0x9929732f
.word 0xc2011b83, 0x339dbf42, 0xfcb6d0fe, 0x726e40c8, 0x7ce0b65c, 0x9e7a2471, 0x931ab3d5, 0x03d3b03e
.word 0x56499a4a, 0xe7e2721f, 0x402fe954, 0xb23e5b8a, 0xd049d42e, 0x8f18216a, 0x628a90ff, 0x41cbe7ff
.word 0x130670e5, 0x7a4ca709, 0x9b16acab, 0xbcaadb50, 0x23a5d079, 0x115b85bb, 0xa0ce6ac8, 0x80cfdbf6
.word 0x6337e7e1, 0xa608862c, 0x225a4a43, 0x1a05e050, 0x62834e21, 0x903f5503, 0xb7c79cdb, 0x6c70160a
.word 0xb2ec2e8f, 0xfb52ffd8, 0xa6f6bdb1, 0xed46efa1, 0x9c2378dc, 0xb1627f5a, 0xd336d8d4, 0x44dfb158
.word 0x83e0ec27, 0x74d48a2d, 0xd9ed834c, 0xd8d515a3, 0x0be0e043, 0x981b336d, 0xb8a659ee, 0x33ed199e
.word 0xd272b76b, 0x64fc0b40, 0xd37b0dcb, 0x4bf66b0a, 0x6541c7fc, 0x6f9e40a8, 0x80085172, 0xe4eeabe2
.word 0x0137f132, 0x83157402, 0x6b761c43, 0xfa50ba9d, 0xadd05ac7, 0xeef18a34, 0xbd492073, 0x6ddac498
.word 0x2cb1419c, 0x17faab69, 0x427c0c04, 0x5681053f, 0x0201e610, 0x0bd207aa, 0x636286cb, 0x75262562
.word 0x157697ae, 0x4aef9731, 0xb7d4eab5, 0xabec93a4, 0xe147b5d6, 0xcaa3de54, 0xea36c291, 0xb2d464fd
.word 0x54bf2eed, 0xa479668e, 0x18809c52, 0x094845b1, 0x27422323, 0xb97fb4ae, 0x744fa493, 0xa6810130
.word 0xc4d599b6, 0xdb8a7e73, 0x3b28023c, 0x371ee754, 0x49a35d0c, 0xe8524b66, 0xa1c3914e, 0x16a133bc
.word 0xc1b1e7a1, 0x1f33ec75, 0xd17e70ae, 0x17e42167, 0xcc6826e3, 0x90748f30, 0x5e53c3c9, 0x33e3e940
.word 0xf2ef0e5f, 0xe297430e, 0xf2454d56, 0xb8bf6728, 0x29bae6a4, 0x0bace337, 0x3ad1d888, 0x0de455ac
.word 0x1ae67ae1, 0x21343ee7, 0x8a202ed6, 0xc6b59ba1, 0x48d33bb7, 0x1681779f, 0xa4dbdbe7, 0x21b05ebe
.word 0xd8a06e30, 0x6ad33188, 0xb7080b68, 0x5d4059e8, 0x80893c3c, 0xdc31c735, 0xa6aa1475, 0xe6f75562
.word 0x3a1b969c, 0xd8051c25, 0xbdf384de, 0xcec52fce, 0x1ef65e81, 0x40f3a22b, 0x272259d7, 0xc4e795d9
.word 0x7aa0ee27, 0x68e3b6c3, 0xbbf35d1a, 0x8473d5b7, 0xa211c5ef, 0x2f152d8f, 0xb725fc49, 0x7d1efed3
.word 0xd8e2526e, 0x084e3bcc, 0x0343f4f4, 0x936e5399, 0x69077002, 0x360ece74, 0xcde04c3e, 0x30976a12
.word 0xaedde3ef, 0x27b822bb, 0x0ee46bb4, 0xf82cd041, 0x9550ad84, 0x4641bdd1, 0xd94a5c20, 0x8746d980
.word 0xcab91f98, 0x17968b7f, 0x477bc630, 0x8dbe9324, 0x83fabd81, 0x45bef702, 0x94397b04, 0x5322d5c4
.word 0xa963168b, 0xc2dc4b24, 0x850c3d97, 0x2ed37b97, 0x2f7f38e4, 0x620b1bcd, 0x3a295185, 0x1e0c56e7
.word 0x7857592c, 0xafb69b50, 0xe8c565e7, 0x07d654e7, 0x55dc97c8, 0x7077da84, 0xd9a5640e, 0x70f0c078
.word 0x8950f11f, 0xd26f392e, 0x14690214, 0x04d9e98b, 0xf4c7d6b2, 0xc84d0b90, 0x6df43774, 0xef677e23
.word 0x0dce3b44, 0x1ef70e54, 0xb9c511d1, 0xec8d9111, 0x9fb800b1, 0x9c2dd774, 0x22b34abb, 0xebd6503d
.word 0xbd11d8c2, 0x85968eff, 0x4c4f403e, 0x53b8da5e, 0x54b68d61, 0x9d7cd741, 0xc46d6217, 0x8ee0e21b
.word 0xfcac89dc, 0x9b469524, 0xfa6215d3, 0x4d867689, 0x61a0da20, 0x79c75bc0, 0x85505cca, 0x0de74274
.word 0x4cfa197d, 0xf2f6a077, 0x65310dc3, 0x995f305b, 0x9eb15dd0, 0x197986d4, 0x2fe03ce4, 0x46d2c82e
.word 0xe1bccaf8, 0x699c7859, 0x4db68669, 0x2c72e7b9, 0x736bd25e, 0x8d3a3bc5, 0x450e0e02, 0x77833120
.word 0x8bb3d72f, 0x245aa8fa, 0x6af19652, 0x3e7eeccd, 0x5dfc96ff, 0xebfce445, 0xc5c42619, 0xac57d437
.word 0x769e201b, 0xa33e1671, 0x9dfba0e2, 0x9871554d, 0xace4bb0f, 0xb7108419, 0x9ae4b14b, 0xbebb4993
.word 0xdc9084cc, 0x47c62635, 0x8eabf251, 0xf3cfe020, 0xe0c553d9, 0x7dcee881, 0xd7bec807, 0x4e761751
.word 0x899d4568, 0xa2409961, 0xc499cd20, 0x3452b366, 0x5d90d088, 0x33d14808, 0x4b52602b, 0x364398c4
.word 0x6620bffb, 0xc2b12f67, 0x4194f84f, 0x80b31871, 0x6438a548, 0x0521b8e3, 0x77d53787, 0xe21dee3b
.word 0xeea366a5, 0xda229590, 0x1651f373, 0x28cecd93, 0x58311e6a, 0xf00ba4d1, 0x496b870c, 0x1f1839a0
.word 0xed02795f, 0xdef542a2, 0x6f81f3d8, 0xae867464, 0xbbc3fb7f, 0x44622c0f, 0x182d2e44, 0x510cd3cf
.word 0xef5d0e67, 0x3477ed88, 0xdebb88da, 0x9836df91, 0xb5e9ee08, 0x1beceb72, 0xe9c641eb, 0x28f8a1c4
.word 0x92768469, 0x818d4b46, 0xd584d881, 0x361ba4cd, 0x80c43070, 0x3450e8dc, 0x675b1214, 0x531b122d
.word 0x35729c1d, 0x55bfbe03, 0x7b209f02, 0x35b413d6, 0x53b92107, 0x5948efae, 0x53e4038b, 0xfde89c4b
.word 0x0f261119, 0x170c2de7, 0x41644aa1, 0x928a8fd9, 0x125c504b, 0xfe2f23e0, 0x941ad218, 0xc538a363
.word 0x4caffd07, 0x0062b43b, 0xd85d86d0, 0xa670cf79, 0xcd47819a, 0x0448a7e6, 0xd57302a2, 0x4482b9dc
.word 0x64de8df2, 0xddc7616b, 0x56c12bcf, 0xf00c7cd1, 0xdf042158, 0xecc3846c, 0x23b7c447, 0x3ec4753a
.word 0x090818ae, 0x3cb6a90b, 0x7d2fc659, 0x0668dc47, 0xe2a6852d, 0x5cbc29be, 0xce8564ba, 0xfe90439a
.word 0x830b20b5, 0x6c5fc02f, 0xe0cff52a, 0xa7b10e21, 0x58ffcbd5, 0x0d684c39, 0x4374baac, 0xd26c43f2
.word 0x3b7d91e4, 0x7ed91fcf, 0xcaf0d8cb, 0x33bd36bd, 0x2f6527bb, 0xca851b35, 0x03b3aa16, 0x2525e13f
.word 0x15d09231, 0x69804b8a, 0x7b0ce4a8, 0xd1cdbc17, 0x9aceaa4f, 0xf0778b6e, 0x04bb26b5, 0xf7420f39
.word 0xb43d297c, 0x03ee41de, 0xe3f99f94, 0xcfdce689, 0xd9dd0ee7, 0xb2a36e84, 0xf9352d07, 0x387651e8
.word 0x6aac250d, 0x7463d34f, 0x28b914b2, 0xe8b80b25, 0x9871cce8, 0x89979c68, 0x84ef1fdb, 0x5d9c749b
.word 0xc141a080, 0x51103f81, 0x31de09b9, 0xe1bfa1b3, 0x598cde9d, 0x6b6fe8ab, 0xfb53fa72, 0xc0617e6d
.word 0xc4a82e6c, 0x8878d305, 0x3aff03a6, 0x2fcd0ebb, 0xd153a6cc, 0xf320ce25, 0x1133bc3f, 0xf89c5091
.word 0x7e8d68d3, 0x9a48bdd3, 0x3286c591, 0x2d66e795, 0x00e6822f, 0xc97f03ab, 0xf5c4d8ec, 0x659c00ca
.word 0x6a58e4b1, 0xbe042a7b, 0x442e9a97, 0xb7efeacd, 0xb79305cf, 0xd9ef83ae, 0x69bbbb59, 0x46f3e5fd
.word 0x09994282, 0x12f5f5d5, 0x23852a6f, 0x838994cb, 0x43f10ef1, 0x31f3bef9, 0x02b6bdcb, 0x8f75d37c
.word 0x0ebe75ab, 0x1af0f35c, 0x0ee31e31, 0xe7dc9fa3, 0x32c8d4cb, 0x3ce5d1f5, 0x7cef2e61, 0x438ae4b0
.word 0x895f821b, 0x63af3175, 0xfdadc02c, 0xbf3ae035, 0xa1475d4f, 0xb2eec165, 0x0e2bbc79, 0x5d11284e
.word 0xe9e48134, 0x10bf090a, 0xfacd1a41, 0x56df0491, 0x3c23208c, 0x32fe4d43, 0x25ad3a6c, 0x4e08eaf5
.word 0xf73eaf44, 0xd2d261cf, 0x2c6cd50e, 0xf6af70f5, 0x23400d31, 0xa5f8030f, 0x8ca56a7b, 0x58ab6db7
.word 0x42ee3b2a, 0x52c99985, 0xe7cfb4c9, 0xe8d698cf, 0xeb18950a, 0x4490f58d, 0xd8a68208, 0x1e4c74df
.word 0xd2e69e06, 0x3aa1414c, 0x66f7d3c6, 0x0f0b3430, 0x5854c2ab, 0x52406163, 0x03d872ea, 0x1373be7c
.word 0x94ddd52b, 0xbe03f323, 0x9e956f5d, 0x8d34fa63, 0x57093c8a, 0x792a3f05, 0x9ef3ab9d, 0x12216795
.word 0xf95b7e4b, 0xd34e7dbd, 0x825d7219, 0xdd169039, 0xabade83b, 0xb96e34ae, 0x39fc6663, 0x8ae6a5be
.word 0xa03dbfc1, 0x89f41703, 0x61d066ee, 0x73c8dbdc, 0x3564dbc4, 0x36541f90, 0xe740f3c9, 0x209657e2
.word 0x82de68b0, 0xcd1c5486, 0x51ea667f, 0xd1934150, 0x7ff48e81, 0x60be2fdf, 0x61f972b8, 0xed8b4642
.word 0xb68481b2, 0x17070152, 0x004f9d1a, 0x324ba62e, 0x7538c6c8, 0xc7679377, 0xa682027d, 0x179e422a
.word 0x2a239a4f, 0x0634b842, 0xd8b11351, 0xc6ba06ad, 0x0394d92f, 0x40f0758e, 0x9ddb41da, 0x69ba4b59
.word 0xea4e4472, 0x0b2fb291, 0xc023b506, 0x4a20083a, 0xd461d777, 0xcdd91872, 0x4d596c3f, 0x846c69a7
.word 0xb68f1415, 0x7394b947, 0xf1c28eed, 0x44e727c3, 0x691a91fa, 0x08c5f736, 0x2c583226, 0xadd05354
.word 0x23c29a19, 0x40c0eedd, 0xa09d36c8, 0x20ee7e96, 0xb19fb7fd, 0x212586e1, 0xddecb35f, 0xe5e36138
.word 0x3359ab53, 0x25a0abdd, 0x0bd21d5b, 0x541530e8, 0x9db8a2b5, 0xf722a2c9, 0x49ad77bb, 0x07287fa8
.word 0xe7b21ae0, 0xd4d538ad, 0xa0bce587, 0x2cdf0d1f, 0x9e1faa6f, 0xa4ecfd21, 0xdee5fc03, 0x35515b1e
.word 0x761b3d4c, 0xb3d16a82, 0x5f4abe5b, 0x59c226d3, 0x39c0d170, 0x950f554b, 0x8279a034, 0x9881527a
.word 0xb821b329, 0x8e1e6225, 0x4f3d0db5, 0x63da6afa, 0x9e4b302b, 0x6677ebb7, 0x00e340e7, 0x8098b6f1
.word 0xe48b4abf, 0x555a0f9d, 0x636e9647, 0xe9365632, 0x1ffcd771, 0x30be4f6f, 0xdddfca09, 0x16c175db
.word 0x971d1e3d, 0xb9c8d526, 0x23900e1d, 0xac62ade3, 0xc7d8475c, 0x8d02b5ee, 0x974537ae, 0xc641089a
.word 0x5442ca6f, 0x88267d96, 0xf2cb0e96, 0x4fd23f7c, 0x5337328a, 0x4997e096, 0x87820d55, 0xda3961fe
.word 0xa4f2c0ad, 0xb383fe2d, 0x7e91a2eb, 0x774192f2, 0x11444f26, 0xc6697deb, 0xe3eb8cec, 0x09c00f02
.word 0xaac1f27d, 0x970a9e0d, 0xa631a5dd, 0x1be6e4b2, 0x4d31271a, 0x26c2ab2b, 0x17c5fda3, 0x9eb6691a
.word 0xa58825f6, 0x02d955da, 0x500e32e8, 0x15eb576f, 0x64d11a14, 0xbd72eb2c, 0x4378b55e, 0xf8538bd2
.word 0x3dc1e08b, 0x96b71197, 0x76af9b32, 0x7a12e7b8, 0x8fb606b7, 0x5e7ce991, 0x34453939, 0xe9280b4c
.word 0xf0849213, 0x8b1fd95f, 0x8538dee6, 0x78edceb5, 0x9c4e2b40, 0x34a5b12b, 0x87b9e837, 0xbfffb794
.word 0x7c86ef6e, 0xe6cdcab2, 0x2b1bed7a, 0xa04602f9, 0x5eafe042, 0x69828a78, 0x3f17aed5, 0x935258e0
.word 0x439bc2af, 0x0cc1cfe2, 0xaaa646d0, 0x7f6c018e, 0x69451656, 0xda1e3c45, 0xac8e7984, 0x50df2171
.word 0xbb01591b, 0xaf4f3885, 0xf55fdddd, 0xf885ec20, 0x943bdeda, 0x8d30bf4b, 0xd813c903, 0x6db26a60
.word 0x97857137, 0xca461a60, 0x71047728, 0x8eed88ff, 0xa2236600, 0xc298e39d, 0xc9a7ca5b, 0x967261ec
.word 0x037946dd, 0x64b5e1f7, 0x33347003, 0xd4c2a357, 0xbe577959, 0x3a7c3352, 0x6d632050, 0x0f7f81ee
.word 0x22d8bf00, 0xd17b4c55, 0x7d7921f6, 0x8b0c0571, 0x4a10cc01, 0xf1d4c279, 0x57097aa0, 0x5649992f
.word 0x61429296, 0xaa08466d, 0x2e878d98, 0x5b63b65d, 0x5a004892, 0x426fd25e, 0x42b12934, 0xd8997dff
.word 0x1cdd6de4, 0x20220aa2, 0xabb7aeee, 0xfe499519, 0x721f4403, 0xfc239174, 0x3aeb7d36, 0xbaeab4ec
.word 0x34afc8b4, 0xafeda2fb, 0x5246a54b, 0x3f6f081d, 0xcf27c9cb, 0xaf37b373, 0x16f870cd, 0x429812d8
.word 0x171b634c, 0x06944f8b, 0xa85c85c8, 0xb648bd7d, 0x5eefe091, 0xda25b662, 0xb6515fd6, 0xeefc7a63
.word 0xad3e3f3d, 0x6b3f69f7, 0xedb3c4c7, 0x3797be20, 0xe1eaf32b, 0x30ae3cd1, 0xb008e007, 0x341d430f
.word 0x100c7571, 0xa191606b, 0xcabcb889, 0xd92ed5e2, 0xafb6febe, 0x81f69eb0, 0xf8799a15, 0xe990ef8d
.word 0x4fbebb8c, 0xcfd94f87, 0xf341d1dc, 0x643d6ed8, 0x85fa8cac, 0xf296f406, 0xec2d6047, 0x6094b15d
.word 0x2bee49d7, 0x3dd9be54, 0x4a044c01, 0x7a9118a9, 0x83493220, 0x9dd9e434, 0x30a3c3dc, 0x8744bd83
.word 0xa034640e, 0xadd19cc1, 0xe8624e7d, 0x8d537ed9, 0x1fe4d757, 0x05e0c9bc, 0x5745b9cd, 0xdf387925
.word 0xf02a89e2, 0x409e3692, 0xd7b203a6, 0x4a04ac98, 0x71e74340, 0xfbbed9c9, 0x00817de3, 0x4325e010
.word 0xf3266f25, 0x350883b5, 0x3760f1a2, 0x6412e251, 0x67e90f33, 0xb7ccb52e, 0x7afa24b6, 0x20fc9eb5
.word 0x793ba47d, 0x5f394074, 0xb2ce4279, 0x44236b02, 0x26fe4640, 0x4c90a849, 0x05c3f81f, 0x59c7ce17
.word 0x1127eee1, 0x3a876b45, 0x9511c150, 0x2617c613, 0x3b799dbc, 0x0d24f42c, 0xe1455590, 0xa9962e27
.word 0xb80dbb5f, 0x4b325606, 0xf20c45ce, 0x37171def, 0x547ae778, 0xc7c74f98, 0xcdd5df9a, 0x7b9ba9bc
.word 0x1ee3513c, 0x500d73ca, 0x5b5f6ab8, 0x075ebdb1, 0x89c13d81, 0x34144bec, 0xb1ff762e, 0x255ef62b
.word 0x535eeb12, 0x84679142, 0x0ec5ed26, 0xd63a980a, 0x67600ea2, 0x7a02dcdb, 0xde73cd80, 0x69a53608
.word 0x3d84d424, 0x459a42b8, 0x560149ac, 0x34e0204d, 0x2213b968, 0x1a2aaaef, 0xdb48a806, 0x0d1c437f
.word 0x55e5b037, 0x4e429c65, 0x9595113c, 0x6036bf79, 0xe7b62a99, 0xe56a0a3f, 0x11cfb418, 0x6164e95a
.word 0xa8ea2a49, 0x0267063d, 0x94813116, 0xba54f3c9, 0x7ba07579, 0xe8528eba, 0x239ebbae, 0xe71c95a0
.word 0x5a7429d3, 0x7dca98a5, 0x53251e91, 0x6b484f98, 0x1f3c4f36, 0x7dd0b455, 0x3eb7f221, 0x833ac9fa
.word 0x3e1d04e4, 0xbd003631, 0x5aef6e1d, 0x4479dc52, 0xee500742, 0x48fa8276, 0xb1eac739, 0x70648edd
.word 0xfc31285b, 0x677f564b, 0x8af553e1, 0xcb7cd870, 0x36d88c62, 0x2b589678, 0x96363c7b, 0xe399e8a4
.word 0x3b4d9747, 0x24aab44a, 0xc381b8e1, 0x1df19432, 0x3f65bbbc, 0xdfdab1f7, 0x54f8f425, 0x151062e5
.word 0xfea72a24, 0xf4473533, 0xfb0fb0b4, 0xa056db81, 0x6e0c4fcc, 0xe0f9acf7, 0x0ac36a28, 0x5154fbb7
.word 0x37da1949, 0xd432abe6, 0xb9a0b454, 0x391d8106, 0x8c1b3eaa, 0xe575ec00, 0x153eed9f, 0xbd731d47
.word 0x9ff46dd2, 0xd9f9345e, 0x0e391afb, 0x506e591e, 0x3fb064d8, 0x69d7f999, 0xcb2e45cd, 0xc927af2b
.word 0x0245c179, 0xcd31ed4f, 0x4c5c4026, 0x4991b189, 0x4c8a6bac, 0x732b489d, 0xf07849a5, 0xbd34eedc
.word 0x74225f22, 0x718478d8, 0x27e8e59f, 0x256cffd3, 0x00d8034b, 0x2b9c3362, 0x8ddcd495, 0xa2bdbf50
.word 0x94ae9e0f, 0x22f80be7, 0xff51c155, 0xe3ae7121, 0x1f8c876a, 0xfe3d485b, 0x88505c6e, 0xb1d09b34
.word 0xa2afbf36, 0xa6b3440f, 0x89bd7d71, 0xe26cb750, 0xca21b17e, 0x3afb569e, 0xf7415d8f, 0x09bcd3ef
.word 0x25a9a309, 0xe4316225, 0x417db1b0, 0x9e3505d6, 0x5a660e55, 0xc887d609, 0x05bff51b, 0x7ba655ac
.word 0x69ea2348, 0xf53342d8, 0x937f125a, 0xa7f7c984, 0x78890eb4, 0x6c5c9a2d, 0xde9685d8, 0x720f52ee
.word 0x5013c137, 0x8e07e755, 0x611578d9, 0xf2ae3f4e, 0xac8dcbaf, 0xed293890, 0x5e29ad53, 0xcba6e5b8
.word 0x48ca7f22, 0x9ffb915b, 0xc02fa06b, 0x4c3ff054, 0x405b0d93, 0x7b4178f7, 0xc341f00c, 0x411367d6
.word 0x5f9b16be, 0x44ffb26e, 0x3f5d3eff, 0x24a73afc, 0x61f00b16, 0xa15e5430, 0x4a7c42c7, 0x3808d1b0
.word 0x1db8c5e5, 0x32bbcc02, 0x31a3c72a, 0x62f57c60, 0xff28d2b6, 0xdd4f879a, 0x6e89036d, 0xc5b27327
.word 0x370c94f5, 0x5731b61c, 0xe096ac70, 0x1a1e2bb1, 0x8548224b, 0xa94df9cf, 0xedb2a9d5, 0x03927817
.word 0x9a1cf41b, 0x118a54c4, 0x2f0b03c6, 0x723b7587, 0x3c2f069f, 0xba82e368, 0x4426daab, 0x4c1d036c
.word 0x0739d204, 0xc21d826a, 0x45cb760d, 0x4a8efc7c, 0xfe9defcb, 0x26ab52bb, 0x26b7b05b, 0x98c8ca12
.word 0x653ad74b, 0x0c838c00, 0x0518f07a, 0xa380448f, 0x5e3c1ba9, 0x62b6bbde, 0xfdf4c72d, 0x6091fb9b
.word 0x6d382121, 0x26b5ee2f, 0xc15573b2, 0x52d57bfc, 0x9b3641cc, 0x93a6fba8, 0x9dc89344, 0x11197654
.word 0xf19f1548, 0x2b6659bc, 0x751880fa, 0x7fdd7317, 0x015b3612, 0xbc08afc9, 0x40f4f5fe, 0x6369f90c
.word 0xbbd89285, 0xcb3579cc, 0xc010e73c, 0x57cfee02, 0xcc039387, 0xe1ba1220, 0xd009051d, 0xdc695843
.word 0xcebd38f8, 0xae003752, 0xc19fd82a, 0xab704534, 0xfccbba4e, 0x7a4f49e1, 0xbd01285e, 0x6ab0bb3d
.word 0xac31e0c8, 0xb6f0eccf, 0x54a12bfd, 0x8240bc47, 0xee871e16, 0xfbd9fadb, 0xec0d7148, 0x219d72fa
.word 0x21d87b6f, 0xc74175eb, 0xd549293e, 0xc4f5ca42, 0x53d94cbe, 0x91bab646, 0x1abd4654, 0x29401984
.word 0x4704c427, 0x5cb72ee5, 0x8bbd5e25, 0x1632274c, 0x9b658de0, 0xb034c5f2, 0x656c9612, 0x24858e74
.word 0x7ef7a7b5, 0xbc4499a2, 0xb9ba7e0c, 0xee52bccb, 0x57a4d8fe, 0x3becaccf, 0xcdff03ca, 0x43b3b6f0
.word 0xdc30cb4a, 0x82741c43, 0x216e9a8d, 0x5a123e16, 0xf09b0cf1, 0x3fa00469, 0x626f429c, 0x6d0522d0
.word 0x3dc61577, 0x7b9042bd, 0x2de48530, 0xba798614, 0x13719e3b, 0x61ba3f9d, 0xd79bac7d, 0x4948f797
.word 0xc298c11b, 0xc5768945, 0xec6646c9, 0x8b615779, 0x5c617560, 0x904eb64b, 0x976d0036, 0x16c05829
.word 0x57e55a25, 0xd56f70d2, 0x0b7dff15, 0xe4440c33, 0xa81c14ff, 0xd64769b1, 0x34434017, 0x284e7c88
.word 0xf0aa0f10, 0x33f08047, 0xa1ee13bc, 0x9dd50418, 0xf4dcc7bb, 0x0629b2de, 0xe7945614, 0x023a052f
.word 0x20a58197, 0x2b675137, 0x71d01a91, 0xb6a38ba5, 0x9a991e76, 0xef6f008f, 0x34965276, 0x5e10b487
.word 0xdc1347ec, 0x37c5eefb, 0xff7a0c84, 0x39247739, 0x0c5dedb6, 0x86c351ee, 0x6880ed52, 0x95e1b70e
.word 0x17409501, 0xc1091037, 0x7c845941, 0x06b7cf16, 0x05522c98, 0x32274877, 0xb40921eb, 0xbdc47e4e
.word 0x86463918, 0x60b70b60, 0x98783147, 0x16ef8d84, 0x396d1e11, 0xed912af3, 0x44788133, 0x71d3294d
.word 0x13d554f5, 0xf243dd35, 0x2e01058a, 0xbcb82f2b, 0x6be09174, 0x89a90b99, 0x219d52a3, 0x1921e8d2
.word 0xbe80dcbb, 0xb5980d02, 0x1f9a43f9, 0x06c403d6, 0x12701d91, 0xc3c182af, 0xafda00d2, 0xe6b384fb
.word 0xdaac0f4a, 0x93c4d7cf, 0x93519212, 0x6d023c2e, 0xfc457044, 0xc90a1299, 0x3a6e6c2f, 0x416af08b
.word 0x3c094c57, 0xb2b5207f, 0x9015bdb8, 0x1869cc86, 0xefd91fc8, 0xd6a172bd, 0xc3767c76, 0x48093fd1
.word 0xa6d01257, 0xba4dd69d, 0x5c99be13, 0x5f7a513a, 0x0380be9e, 0xb29bc132, 0x3e52db44, 0xc6b5d9bc
.word 0xba5c057a, 0x0a79df70, 0x83792c4e, 0x77baca9d, 0x6dbff3a5, 0x23b2d266, 0x7b95cbfa, 0x5baef463
.word 0x2c28eb35, 0x2ea84949, 0x940cfd92, 0x05cee119, 0x05e9d43b, 0x6476da3b, 0x83994626, 0x53866909
.word 0x4f97c806, 0x26493a13, 0x10ef6c4c, 0xabdc5f92, 0xdc1a468c, 0x81b35e3f, 0x07ed4c90, 0x6d1e0c87
.word 0x6d634e57, 0x1405b72e, 0x70eb7f8a, 0xa0ab14ab, 0x565ae7bb, 0xb4e6fa95, 0x48ba400f, 0x5193d10e
.word 0x9e67656c, 0x4a0cad64, 0x4cb62fed, 0x711e34ef, 0xd5159aa0, 0xfbaea8a7, 0x6c7fbc9e, 0x6c351e03
.word 0xcd71c565, 0x4c9301fc, 0x573160fd, 0x5a97f296, 0x02b471d4, 0x5e8c7f43, 0x7c676dc4, 0xadb12db0
.word 0x6c86ea40, 0xc8aea254, 0x965632fa, 0x7a5cd5cb, 0x98581b00, 0xb72c6ab4, 0xd5ce0030, 0xe04fe0c7
.word 0xb1f54c07, 0x5af5ebb6, 0xd60fa9f7, 0x4cb06dec, 0xb2c1ed3a, 0xf1ed71b9, 0x31c4ce5b, 0x33b5c80a
.word 0x02d45be5, 0xe6b8b05c, 0xdddb2626, 0x1fe21508, 0x67436e6c, 0x7dcaaadd, 0x92e5ce67, 0xd1a0c21f
.word 0xaeb4680b, 0xec26dd6d, 0x32159777, 0x3c51614e, 0xb1640943, 0x0f425d40, 0x1fc41ffc, 0x326e6c35
.word 0x9b0f5f70, 0x2798d265, 0x9d2632eb, 0x7a23f344, 0x6dcc0be2, 0xe6a6fc5e, 0x5b821302, 0xd3e320dc
.word 0xa3b24f87, 0x2acd5872, 0x537fa005, 0xad208e72, 0x1fecfa6f, 0xe32b349b, 0x202981bc, 0x814f3ffb
.word 0x296fbe06, 0x949c2579, 0x9b36907b, 0x5a741e50, 0xdc9fb677, 0xc28affec, 0x2ac16950, 0xcf4e68ab
.word 0x4c163035, 0x04e63725, 0xbe534321, 0xfdae5475, 0x1360cf92, 0x26d94693, 0x842893ce, 0xebfdb067
.word 0x276098fe, 0x9ca3db54, 0xf8d02188, 0xec84f90d, 0x132c7552, 0xc33f4704, 0xd2101b48, 0x13a62b48
.word 0xa423b040, 0x877bb041, 0xc8532fcc, 0x5ca150fd, 0x983e21b7, 0x67f8c8ea, 0xf232fa6c, 0xd04d6242
.word 0xc5750ba3, 0xfccb8dd2, 0x4543e3e5, 0xebcf88f2, 0xb910419d, 0x0d04c35b, 0x22bad539, 0x3dac0241
.word 0xea22dcf6, 0xf30dd65e, 0xf9b3e7bc, 0xe9d9266a, 0x32f81899, 0x90877e32, 0xd269fa5c, 0xa8cc34f8
.word 0xbc4309e6, 0xe711ec35, 0xe207c27e, 0x566ffd14, 0x137146d9, 0x47cb275a, 0x5ec69f09, 0xa4f5d539
.word 0x4e1e4c51, 0x5e42470d, 0xb84128f1, 0x42bf7ef5, 0x4cec0952, 0x0d4e1997, 0x451c42f3, 0xead56e60
.word 0x7466af7f, 0xbf73d49e, 0x596420a7, 0x70dde90f, 0xe880af3a, 0x93b8ce54, 0xcaa98508, 0xd135a149
.word 0xd3820974, 0x59a8d6de, 0x28f316af, 0x433ceb4a, 0xcfb0def0, 0xc818ed3b, 0xe01563df, 0x483cc563
.word 0xb2cf9666, 0x7f817a02, 0x81e71454, 0x9042b961, 0x9dd4ba72, 0xfc7ec277, 0xf64fe1e2, 0x2b655a28
.word 0x053871fc, 0x52a15dde, 0xb2b06a07, 0x73a5a72f, 0x05e701b8, 0xba7485da, 0xe29187a8, 0x204ebb71
.word 0xc1375712, 0xc965c7ac, 0x711636db, 0x860bf4fe, 0x3b55f1c7, 0xdc0bfb78, 0xfa0c3d9c, 0xcb74d937
.word 0xacbe6eeb, 0x5d03c723, 0x93f65e46, 0xb7480876, 0xf3e136c1, 0x0335b18b, 0xf5754799, 0x029bef4e
.word 0x82974084, 0x7c75b356, 0x0fb06656, 0xeffdd58b, 0x1ed8f2de, 0x9db29945, 0x38e8d0f0, 0xf0a58cc1
.word 0xa8071790, 0xa559f0cd, 0x1ad4837e, 0xf8e3d2a1, 0x8709141f, 0x93720678, 0xb35301dc, 0x044da3da
.word 0x8935e86e, 0x6e01590b, 0x4ccda17b, 0xb15ffb1e, 0xc14a5c03, 0x23fbda4d, 0x02843597, 0x7da454cc
.word 0x7a1d4dfb, 0xe58247a7, 0x4fba3891, 0x7dbaff30, 0x400a1912, 0xed94da3b, 0x8c58d3eb, 0xf0efde07
.word 0xe3a2bd4a, 0x7b51dd32, 0x36ed158d, 0x1d03d8a5, 0x9c6e3973, 0x9c740d44, 0xd36165bc, 0xa47f8922
.word 0x417e47b2, 0x0a9e4325, 0xf4586241, 0xe621a879, 0xb7adcb59, 0x4f461101, 0x0db2fbef, 0x0ca59e3f
.word 0x943b085c, 0x16be269a, 0x5e0634fe, 0xbf4f0fa2, 0x9465d60f, 0x50856b47, 0x9a650ebc, 0x81603266
.word 0xca7a2c24, 0x5a8776f4, 0x71971bd4, 0xace1d374, 0x4a1a5d08, 0x99b8f15e, 0x05134b54, 0x6fde1ef5
.word 0x924aa461, 0x9a0e6e02, 0x68f2de95, 0x6df5b8bd, 0x87ff8583, 0x3eb59ab5, 0x05a517df, 0xecd8bea6
.word 0x06b1e150, 0xeb5d8e1b, 0x5027164c, 0xc3a8e116, 0x24838b29, 0x4332caaf, 0x7f48b3f7, 0xb3cbfb97
.word 0x410ef82b, 0xf7826cb5, 0x0e0d09f2, 0x14e3e8b3, 0x8e5d0460, 0x5769d107, 0x54c6ede7, 0xef58e92c
.word 0xbd985154, 0x5208012a, 0xd0162924, 0xfb19e17b, 0x4ff5631c, 0x80ceb093, 0xb58ffea7, 0xe3ac9d94
.word 0xa368816b, 0x47c2d3ee, 0x80192df9, 0x2b7a9135, 0x0208ff5a, 0x07c8bce2, 0x6418fd3f, 0x3df2c25f
.word 0x2325df32, 0x11d84477, 0xd3f3220d, 0xd7f98091, 0xa56d1bc2, 0x037cca60, 0xe73ce7aa, 0x44228906
.word 0xc13a2bdb, 0x8f73dffc, 0x305df369, 0x4b8a92b2, 0xdc5e28fa, 0xc50c3465, 0xfd454f8e, 0x16a17064
.word 0x24774be7, 0x52bac3f3, 0x82a2a1df, 0x498eccc2, 0x4f4a1159, 0x6224e156, 0x1340616c, 0xdc9dfa0a
.word 0x63aeb9a1, 0xc7448f11, 0x32051ff8, 0x4f7c2f36, 0x7c21ae54, 0x7a87e303, 0x8a299bb7, 0xef36d5f8
.word 0xb3a312de, 0xd60caddc, 0x12bc81a9, 0x4db13b4d, 0x80acbc5d, 0xf3af5bb4, 0x99277a42, 0xccd785ed
.word 0x82ccb63d, 0xa51f1daa, 0x0be6a984, 0x7ad9476f, 0xd0e5761d, 0x83843667, 0xeb656e42, 0x4795bb22
.word 0x3564b64f, 0x22c18c6b, 0x49c56458, 0xfd51e2ce, 0x72cafe13, 0x60fec20e, 0x169b6ebf, 0xac4487c6
.word 0xc8d93373, 0x246c913d, 0xf0308d7b, 0xd403fe53, 0x9fdabf44, 0x7c879086, 0x2a73fceb, 0xf82abdd0
.word 0x7079cb2f, 0xde5e38af, 0x7d166832, 0x0cb1aceb, 0x5bcadcb0, 0xcbe5597a, 0xaa057a3b, 0x0f5d8c04
.word 0x638cd5e0, 0x623c0a94, 0xf68aefbd, 0x012b826d, 0xd9613829, 0xffe2330f, 0x49983a15, 0x6ace150b
.word 0xf4dba055, 0x112f9aa4, 0xdd63d58e, 0xe9fad293, 0x633f409e, 0xdbb65f0d, 0xcfd17cb8, 0x10c5a104
.word 0xbcf54385, 0xc5359f83, 0x67a2586c, 0x0d612a91, 0xe572a59b, 0xc01565c4, 0x42dfbec7, 0x570ded2a
.word 0xc5a51900, 0x14bd5b86, 0x66f0d141, 0x5636ddb8, 0x98ee239e, 0x71b3a470, 0xd9f34c66, 0x6f85279a
.word 0x87f3025c, 0xdfdece64, 0x7d38b740, 0xac868a82, 0x0e60feb4, 0x9060ace1, 0x2f43a8de, 0x1ea10cc3
.word 0x9c80a589, 0x13929d63, 0x5a94072c, 0xb3d12b8e, 0x971e7c1f, 0x49fd92db, 0x78f3672a, 0x0a2508bb
.word 0x3d373492, 0x72df0eab, 0x72aecdb2, 0xb4a0a321, 0x58b8a2d9, 0x618b5752, 0x2db54187, 0x1172394c
.word 0x4f12a580, 0x2a20aa94, 0x672b4ad2, 0xdae4f044, 0xebf273ba, 0xf7d04451, 0x60a78262, 0x7e902843
.word 0xd4cb638e, 0x38616445, 0x8bf27a66, 0x984a4552, 0x64158323, 0xac4ab61e, 0x975c2fbe, 0x74f0677e
.word 0x133dcd08, 0x3dce77e8, 0xbacd72e1, 0x94cd24db, 0x78dddf9b, 0xc6d75fb8, 0x541c195e, 0x5982b1ab
.word 0x33a55a09, 0xb4d14616, 0x3726d969, 0x109ea1d9, 0xe18109cf, 0x111624d5, 0x96365158, 0xcf54c462
.word 0xfe855a1f, 0x29f9facb, 0x21de268e, 0x10574d60, 0x0222399a, 0x29aff167, 0xaf0d1880, 0xe7f0f687
.word 0x4d15cb2f, 0x94ab09c8, 0xf70f1820, 0xdfaa7ee0, 0xcb7bb52f, 0xeca8f732, 0x983c02d5, 0x25f03945
.word 0x8b7b775f, 0xe6315733, 0x1a7238da, 0x91abaa63, 0xa7dc8805, 0x6545686e, 0x707cd15d, 0xd84d1843
.word 0x3091f7be, 0xd679223f, 0x0595be72, 0xdc901a80, 0x569f214e, 0xc65e3494, 0xef60c6ac, 0x08c04511
.word 0xaba30707, 0x6ac3dd39, 0xcfe0b752, 0xcb73be65, 0xa69b6cdd, 0xfae700d5, 0xf784e49c, 0x1ff11823
.word 0x6929c7e8, 0xc7bcaf2c, 0xee83f556, 0x108aed25, 0x83fec289, 0xd5cf4e7b, 0x9ef15881, 0xe44cec8b
.word 0x2d8e9b5d, 0x7a13cf0c, 0x9f3c31c7, 0x07ec3dac, 0xbe993b0b, 0x5285e028, 0xb12057d3, 0x3b33b220
.word 0x4e27a9a4, 0xba06d731, 0x599888de, 0x8b63326e, 0x6d940501, 0x2ea6e95b, 0xf0d80199, 0x9cd472e4
.word 0x2236bdc9, 0xbffa0d48, 0x6d5486c0, 0xd5584a13, 0x772ac560, 0x73701d03, 0xc54dc221, 0x14b5acd0
.word 0x13b1aaf0, 0xf6c0dedb, 0x27ecf5fd, 0x849c24e0, 0xf351da58, 0x5d6919b2, 0x6c3decba, 0xe295510b
.word 0x5440d750, 0x5d60697b, 0x0fc4eb0d, 0xcc9dbcc9, 0xb6eca17e, 0x69894ca4, 0xf8b6145d, 0xcd76d5c9
.word 0xafdd6d16, 0x790b62c3, 0x4a2260d2, 0xf98ea438, 0x0e904517, 0x28539a0f, 0xc493e294, 0xc8221a48
.word 0x0fc117d3, 0x7f88b177, 0x8167cd95, 0xfeb8d961, 0x775fa464, 0xc5225c13, 0x2060d8ed, 0x2057aea7
.word 0x8446fdca, 0x0d1f4692, 0x42e3cc17, 0x0a907b60, 0x54e36e71, 0xd8f1b5ef, 0x9e70a193, 0x7794ee02
.word 0x746a722a, 0xb9581454, 0xcfbec71f, 0xd02df649, 0xfff33308, 0x331a44e5, 0x373ccee7, 0xb458dece
.word 0xd5212f30, 0x59fc0632, 0x38493bf2, 0x667ca16a, 0x25a89144, 0xd188cda4, 0x1efd3ce8, 0xe2e23a59
.word 0x1ec948c4, 0x71955a3f, 0x2b095dd9, 0x6f513891, 0xc5283d78, 0xc472d3bb, 0xe32040de, 0xb4e76d20
.word 0x8552ab9a, 0xc64ec80a, 0x32fab0b9, 0x82d8092d, 0x317c5bbb, 0x73b71866, 0x9cb68c89, 0xdb0264b7
.word 0x1842ef2b, 0x074e7121, 0x75d2b0d3, 0xca62d9f9, 0x1b101cfd, 0xfe5bc500, 0xf2cb2f6d, 0x0f8c28b8
.word 0x8404f14e, 0xb3caec45, 0xd15500ec, 0xb04b7253, 0x16e32237, 0x694846c3, 0x8427d022, 0xbd1a09e7
.word 0x3e9a6abf, 0xbeb1d010, 0x59987632, 0x58685ea5, 0xa9a09c79, 0x2f2f4979, 0x935b00e7, 0xe30450d7
.word 0x26e18077, 0x7a6ac116, 0xc5a95ef2, 0xdb75d261, 0xbc64a7e8, 0x7457ff33, 0xe34c6922, 0x30396404
.word 0x357c04d9, 0xaf184692, 0x714e7f67, 0x6fd9d19d, 0x4af38bc6, 0xc47ddce4, 0xc76dcea4, 0x33a739e0
.word 0xe5c1b372, 0x7194ffc3, 0xbf0c2eab, 0xde91832b, 0xc4e0c5d6, 0x9245f031, 0xc82b30e5, 0xcb7ec2c5
.word 0xdee21da1, 0x2ea45493, 0xf830640d, 0x76733f0c, 0x845e0c34, 0xa18797ac, 0xb886b340, 0x233c4d3a
.word 0xf947e045, 0x3345c16a, 0xb12417a1, 0x98270629, 0xa314147d, 0xb2efc6e6, 0xcf5cbdd8, 0x0df7af78
.word 0xd3388315, 0x0300310b, 0x88f3b34b, 0x4b34d4bd, 0x868f94f6, 0xcad49f2d, 0x3203baf9, 0x179a04e0
.word 0x69f054b8, 0x39f64283, 0x2d999988, 0xb9192717, 0x8f7af328, 0x45c0e42a, 0x25e2620f, 0xeabcb632
.word 0x6d6d10f5, 0x2b4d9236, 0x5607f800, 0xfe353bf0, 0xf5ac2809, 0xee4f9e1f, 0xfab18a84, 0xfdf6214c
.word 0x68ccafc3, 0x6863030f, 0x9a5fa116, 0x344f6436, 0xba1a958c, 0x170a8022, 0x1368cf77, 0x5db24cd2
.word 0xc9b097ff, 0xdfe5758f, 0x58ef5cc3, 0xf8aa0b32, 0x4535f60e, 0x801fd252, 0x08f198df, 0x516379eb
.word 0xd900b624, 0xf5618807, 0x250316e5, 0x4805b3f6, 0x23a6e33b, 0x32bccf35, 0x7550347e, 0x71f159c4
.word 0x780dc155, 0x702a6d81, 0x1497a90c, 0x8e5e9f8b, 0x63c14ab5, 0x5842f251, 0x5df944ef, 0x9554c90f
.word 0x9c21ac57, 0x1431f97f, 0x0f89be31, 0xbeb1d4f3, 0xf27e0596, 0xf61d958c, 0x8179e279, 0x36304abe
.word 0xd8b3fcea, 0xf051a4e5, 0xc305143b, 0x1b522824, 0xf7114cd4, 0x2becd4f6, 0x6a381693, 0xaeeaacc2
.word 0x7a266a78, 0x14c7e2f7, 0x7f959896, 0xc90ab244, 0xcb8ecbff, 0xc1dbcf11, 0xb9d0d9af, 0x05b03cf4
.word 0x3c577ef5, 0x1d1f45d4, 0x882e1b4f, 0x0cec44e0, 0xb563d446, 0x23632c84, 0x783c411c, 0x526f09f9
.word 0xe3802264, 0x307c44ae, 0xec1cc59b, 0x1162a947, 0xa4993c19, 0xe58d2a80, 0xf3d1d716, 0x15e22ddf
.word 0xba234836, 0xad9dd6e4, 0x0a96d1f3, 0x78cc50f3, 0x2512d1a9, 0x9a39d58d, 0xbd258f99, 0x81f28e7c
.word 0xd123fead, 0x974b6fbf, 0x17a6785e, 0x0081064b, 0x70221b27, 0x4cbd3991, 0x4dce117f, 0x94b64b6b
.word 0x11855723, 0x10aaf24e, 0x40d3eeba, 0x862f2a64, 0x546d0862, 0x8ebe9cc7, 0x03f5804d, 0x0dbeec6e
.word 0xe5f6d0ef, 0x9bb9797b, 0xaf2b8fe7, 0x80c1e00e, 0xe8da2f48, 0x6952e953, 0x626a432b, 0xdb79e6bc
.word 0xf5c4584c, 0x3aa9c654, 0x91401a41, 0xdd242017, 0x5744a3a6, 0x1d5c6da8, 0x389f461b, 0x0a2ba3e6
.word 0xc0df987a, 0xd412f852, 0xa5d2ec16, 0x389acf80, 0xc165987f, 0x6b17269e, 0x222ff478, 0x18d36a92
.word 0x3885b3df, 0x957588a6, 0x76a81965, 0x80a9b0ef, 0x221c677d, 0x40d14523, 0xada5883c, 0xee11d3f1
.word 0x98e6bec3, 0x6496b8f2, 0x8601f93f, 0xd8ab5f5f, 0x90db7604, 0xcc57aefc, 0xd67d1160, 0xecb5bc1e
.word 0x6206238b, 0x47255a84, 0xef1368d1, 0xf95a8d01, 0x2fe5d205, 0x50b011e2, 0x3633ea82, 0xd7db203d
.word 0xcfdd394c, 0x1e9538f8, 0x2dd38f42, 0x6ef8b390, 0x692ef923, 0xe64a6016, 0xe72b0e6d, 0x15656bb4
.word 0x859e53f3, 0xfc3a47c7, 0x76d778c7, 0x5dafb698, 0x716aa9cd, 0xd67879fe, 0xc3564c68, 0xc8326dae
.word 0xa6c80aa5, 0x51d5627e, 0x89b1dd9b, 0x517cbafe, 0x17ed2092, 0x93f4317e, 0x1b539e96, 0x45088c90
.word 0xe0ae4c2a, 0x6a263a61, 0x19ccc317, 0x554da703, 0xc8f9956a, 0xf4a6f80b, 0xd26b6409, 0x985cc80d
.word 0xb3dd4dd5, 0x3163697f, 0x3f35b72c, 0xa93b8bcc, 0x177cc111, 0x17601898, 0x8d220899, 0x3a3153a4
.word 0xc60b5bb5, 0xb5f64d93, 0x3a72bb2c, 0xa6b5d720, 0xbf7b63df, 0xf5c1bf9f, 0xe7f892f0, 0x38a2a1d1
.popsection;
.pushsection .region_2,"aw",@progbits;
region_2:
.word 0x7699dc54, 0x2f7e3d1c, 0x9098957a, 0x4ba2ebdc, 0x0985ee37, 0x3c0f9d23, 0x5b62401e, 0xbd6fdd9b
.word 0xdd5f8373, 0x1c180bf9, 0x25db5eb6, 0x2f5a19e3, 0x052970e7, 0x7dc056a2, 0x932511d6, 0x5798cc18
.word 0xc1d91683, 0xc3d9eee5, 0x19fa74ac, 0x241761d1, 0xeb74deb1, 0xfb85f23c, 0x873518f6, 0xb41e211a
.word 0x61f2c2f9, 0xcee34a4c, 0x400bf314, 0x5f64002a, 0x8a06162b, 0xd080e3b7, 0xe66a41e4, 0x569662d7
.word 0xa5f76e03, 0xc5daa395, 0x07a40927, 0x663820de, 0xae4d8337, 0xbbe9e750, 0xaffccada, 0xcda421cc
.word 0xea582e51, 0xd06fbfbc, 0x15a140c2, 0xcff859dd, 0x6005b675, 0xf064edbc, 0x2459cd25, 0x7537bb63
.word 0x7db529b9, 0x065b5598, 0x5a6c48ed, 0x5435aa51, 0x229cf66c, 0x711a4636, 0x02c881cb, 0x6b22c9e3
.word 0x5bd77517, 0x0ba48845, 0x14191780, 0xba7a67a1, 0x3011d678, 0x541ef354, 0x079b0367, 0x1589b1aa
.word 0xcdfcc915, 0xfb475968, 0x85412b90, 0xc5b5d77f, 0xb229bd55, 0x67e063d6, 0x803461e0, 0x624584d3
.word 0xd959cbae, 0x39955dfa, 0x355a6955, 0x464d199c, 0x3439ca86, 0x006383b2, 0xa2ce13ed, 0x6049045d
.word 0x122bf0a9, 0x6c2bf7d8, 0x25654eea, 0xf42f65e8, 0x0195ff32, 0xa47f649c, 0xd0205723, 0xc57595ef
.word 0x3afb027b, 0x2152ebfc, 0x565e44d7, 0x554143e5, 0x1e360e2f, 0xe626ae9d, 0x3d8a89b9, 0x1bf506e5
.word 0xd9cac876, 0xd8a60548, 0xd5b5ae20, 0xddc0b5bf, 0xcb704379, 0xa08fb4fb, 0x0b772fff, 0xe96cfd21
.word 0x028f21e4, 0x6b2a75d9, 0xe7d8b79b, 0x745bdba7, 0x138db78f, 0xd0c26832, 0x0fa90d3c, 0x0854a6d0
.word 0x0f252206, 0xcfd17874, 0x897b3e17, 0xd9857545, 0x4991f704, 0xf9c26d64, 0xb55a77d3, 0xbcd7ac85
.word 0xc70c88de, 0x1b0b3643, 0xe7ce80f2, 0x36486a81, 0x2417ad33, 0x0e4b10ad, 0x91d0c4d1, 0x1684d1ce
.word 0xe3518adc, 0x6dce010a, 0xbb1eb08f, 0xf992757d, 0x61d38132, 0xca4e314d, 0x5c2d97d4, 0xfcb72e69
.word 0x7742fb43, 0x8cb88843, 0xf99504ee, 0x3cc7d5c4, 0xb71cdba5, 0x13a7463d, 0x961fcaf4, 0x55758210
.word 0xa7707657, 0x94640f60, 0x714c4cd8, 0x648d9408, 0x4b5f45fe, 0xda1635e4, 0x7e485eb4, 0xbecfc5ec
.word 0xef5430b4, 0x7813c66c, 0x204ace7b, 0xc6966459, 0x872d9b3c, 0x60018b29, 0xb7d42e62, 0xb56e4876
.word 0x8e48c67a, 0xf800ddc3, 0xf841f660, 0xf136e969, 0x8d2a187d, 0x47b7c66c, 0x20551852, 0xda0ef9ce
.word 0xb170e8f7, 0xe6ccd0f1, 0x5b03c06e, 0x437adcf7, 0xf49e481f, 0xa06c24c5, 0xcb71c29d, 0x5c934b14
.word 0x5096e1f3, 0x3ac733ee, 0xe6984999, 0x812aead9, 0xa5fc4b3b, 0x07558f5c, 0x8fbc7823, 0xdee245df
.word 0x12054555, 0x8d073e6d, 0x354653ec, 0x4e222dc3, 0x9e212dfa, 0x9795e1b3, 0xb8adf488, 0x83099846
.word 0xaaa8f3e4, 0x1ab1ca1b, 0x21d5d4b3, 0x205314aa, 0xdf4d0295, 0xd7dc2104, 0xe4e2ca95, 0x5bd49f2a
.word 0x65a51cc0, 0x9fef4700, 0xc6aa3bf6, 0x20bc733b, 0xbffd0872, 0x3487c260, 0x1561412f, 0x102e732c
.word 0x8527161b, 0x4cf57ac8, 0x79cd204f, 0x607af412, 0x7af0bebd, 0x548013c9, 0xe7a12d08, 0xd2cd9dcd
.word 0xe13c1558, 0x999ac315, 0xdc926fa3, 0x596e6c32, 0x41e1e1f5, 0xf0b26fba, 0xed4c506e, 0x58fa75a9
.word 0xd2e2e3ce, 0xeea1fc28, 0x659c807f, 0x28c995c2, 0xa583fe98, 0x3fe84793, 0x298ff23b, 0xb9384f38
.word 0x8d31e9be, 0xde4712e7, 0x1a14227e, 0x7eeca20b, 0x29bb88fc, 0x39e05878, 0x141d846f, 0x95f635a4
.word 0x136949de, 0x69dcea03, 0x90096dd9, 0x0f01653b, 0xd236d31d, 0x4197b0ba, 0x8abaa1ed, 0x369d2bd6
.word 0x6be4ba67, 0xad341045, 0x4c2d651b, 0x2ce525ea, 0xf88f6b6a, 0x87f007af, 0xcd35ac1e, 0x834fd402
.word 0xdf8c050d, 0x74a54485, 0x1c11f989, 0xff77821c, 0x2aa3698f, 0xddfe68dc, 0x53466c94, 0x72df12b9
.word 0x4062f656, 0xa5468766, 0x2ee0de70, 0xf304f75e, 0xdd47132c, 0x41e61f9c, 0xa6c68038, 0x02a3c53e
.word 0x406ec194, 0x641736f1, 0xeebe23f0, 0x22c17922, 0xeae937a1, 0xde86f4af, 0xd153918b, 0xfa027e6d
.word 0xec26af7f, 0x484b67bc, 0xa66aa788, 0x124fc042, 0x03f55f8a, 0x3ef22b89, 0x3a1e5c66, 0x54a3eb71
.word 0x5088b457, 0x4b2d5ca6, 0x789d11b6, 0x9c3409b7, 0x0bf24088, 0x2a073349, 0xbd67ab82, 0x10f8135a
.word 0x2faf0b09, 0xd13ec6b8, 0xf0b755a7, 0xb577d2bf, 0xbd7ade60, 0x21dc9047, 0xb1a1b79f, 0x7e58adc4
.word 0xeeebe382, 0xda168862, 0xaa5c42e6, 0x2bf20be7, 0x8ec1c882, 0x9a9b4151, 0x2b6fefc4, 0x5705e04b
.word 0x472fb97d, 0x3a50a54c, 0xea2694d7, 0x6d4b571f, 0xa6dbf0cc, 0x72f14113, 0x1840cffd, 0xddbbe1d1
.word 0xecb0f5c8, 0x7d9ee4cd, 0xab255cba, 0x19f9493f, 0x26ce26a6, 0x31b4d372, 0xd289cb76, 0x2e3fcf7b
.word 0x3b0cc83e, 0x6bb7a831, 0x64f03824, 0x37503526, 0x77f594b6, 0x765e34f3, 0x904cd034, 0x7fc5fa7e
.word 0xdc147730, 0xbe06a0d2, 0xedcb22d8, 0x2bb6f7dc, 0x9ee613a8, 0xf9838242, 0x2322b842, 0x3eaaf2de
.word 0x1d187387, 0xbc26074f, 0xb50c901a, 0x19a98c78, 0xa00e6088, 0x30570468, 0x6a8f75a2, 0x6b427013
.word 0x6d5df1fb, 0xeb843a9f, 0x9764f794, 0x8ade6066, 0xde986e7b, 0xa59a0f28, 0xb5563a0e, 0x89ac6fce
.word 0x7b63bbed, 0x14a3ffdd, 0x9cb81a8c, 0x492d1d93, 0x1b692fb9, 0x754bc761, 0x731ace33, 0xef0760d4
.word 0xb70cc4c3, 0xad4a9de8, 0x40876c12, 0x4515df52, 0x80c674b2, 0xb1ad8765, 0xb43e01c8, 0x21ef48b3
.word 0x93aa1cd7, 0xae4700e3, 0x4b0db6f5, 0x12533e1a, 0xe4c8ef1d, 0x0a645365, 0xcb548fff, 0x3d9206b3
.word 0xeb617e61, 0x9b6a3591, 0x15622c31, 0xfc784313, 0x48fb44a5, 0x03555380, 0x8fec996b, 0x51ec4175
.word 0xc959a825, 0x2b7ec4dc, 0xb5552d96, 0x9107bd66, 0x52cdfe25, 0x7ceb013f, 0x4e2722b2, 0xe0765cbb
.word 0x1d9b5504, 0xac94e5af, 0xc446e6ad, 0x7a70e836, 0x73129763, 0x3d7b73e7, 0xe1f6f4e1, 0x2a554f08
.word 0xe5cfbc80, 0x45e6d40b, 0x98ea3627, 0x4487149b, 0x06a9b9c2, 0x94f290f0, 0x6e60db23, 0x37637822
.word 0x00cbedf0, 0xb743451f, 0xd4daaa04, 0xa88496c6, 0x8a23dcbc, 0x2b523224, 0xc37a8e90, 0x17cc5756
.word 0x96d5df74, 0x4b4b8085, 0x06b3006e, 0x761a6ab2, 0x67b4dd8e, 0xbb22c097, 0xe108611c, 0x00b79cc7
.word 0xcc637afb, 0xa96e529e, 0x9ae14f20, 0xea557659, 0xb77814b4, 0x67142510, 0xf87e6fc9, 0x05dc2138
.word 0x85317d4f, 0xdbbab9d5, 0x8c8af62b, 0x7140fb2c, 0x3ec627ea, 0xf577ac39, 0x47938844, 0x16b836b5
.word 0x02822bb4, 0x9a70d9bf, 0xb4a87572, 0x963edc84, 0x72011198, 0xfe7e7447, 0xadec1016, 0x6d96947b
.word 0x4f17bbab, 0xb4003c43, 0xf5cedff6, 0x3e8f4a28, 0xeadfff7c, 0x68ea712e, 0x7747afd3, 0xe744df83
.word 0x635164aa, 0xaeb57feb, 0x3651c523, 0xd8076222, 0xd39d6348, 0x08147b5b, 0xa7cd938f, 0x04909d8e
.word 0x68ae0586, 0x9eab0dcd, 0xcd8834c7, 0xb930775b, 0x3a9b7489, 0x4deef8f6, 0xcd5250a9, 0x19cf0bb7
.word 0xb229be05, 0x6b760774, 0x14449b0c, 0x0d20d6dc, 0x98e01bf2, 0x2bd51266, 0x40e5d59c, 0xd1f1bb8e
.word 0xde8c9c43, 0x72288f7c, 0x8f26e97b, 0x3ccfc604, 0x5cd27fcc, 0x676a713c, 0xaa724bc8, 0x2a876704
.word 0x7e71a25c, 0xe17f20b4, 0xfffbd5ed, 0x03d95c6a, 0xbd4405a3, 0x942b2cd5, 0x32bd656f, 0xd5d67065
.word 0x998b9396, 0x9163d1a7, 0xac192abd, 0x8c760175, 0x8c1f1898, 0xf44ae8c7, 0x6dffeebe, 0x780db4bd
.word 0x7853915d, 0x01f357e6, 0xfa6126d8, 0x01b95129, 0x0f9a4daa, 0xa376cc59, 0xff471672, 0xde2296ee
.word 0x28e62ae6, 0x778ac2ed, 0x64f9c2bd, 0xffa122bf, 0x568eb6eb, 0x203bde9f, 0x1a5a285d, 0xe8bb6e23
.word 0xb4adf658, 0xfddaeeab, 0x0e32cddf, 0x7944ba92, 0x947031cc, 0xc1bc48f7, 0x4bee4607, 0x0af66412
.word 0xc2e6697a, 0x3e8d99e8, 0x3824312d, 0x2f21e092, 0x04d84e62, 0xfa5bf0da, 0xfdc7d407, 0xd3a4cb3c
.word 0x646ab128, 0xc4c7f01e, 0xc4a8438a, 0xc3cdca62, 0xdfd0567c, 0xa8cadd56, 0x08e80cfe, 0xc4c2be07
.word 0x8078b1ae, 0x942d1595, 0xce3b5c38, 0xa431a54d, 0x898caaad, 0x5118de9a, 0x2c3b0688, 0x5079b548
.word 0xad31d70f, 0xa60913aa, 0x2c4aa002, 0x620b2880, 0x31177636, 0xa07e7b0b, 0xa83bfed1, 0xc725e938
.word 0x7a6673fa, 0xd4459d65, 0xe997e489, 0xa0e14a7b, 0xe4d44c7b, 0xa866999c, 0x67a4d27f, 0xc9ab8706
.word 0x7557edbb, 0x154b6772, 0x3881a1f6, 0xadc312d5, 0x6f524086, 0x3e684eac, 0xbedb5086, 0xd5e03c90
.word 0x041d3ac1, 0xd03b1a4b, 0xc70458c4, 0x16d9cdaa, 0xf0e0bd03, 0x9a353d43, 0x6a387915, 0x9f1d0a92
.word 0xb1c7ff0a, 0x7d7666db, 0xdaa76708, 0xd0ee4519, 0x2c6241f2, 0xe643d841, 0x615170cc, 0x5ea840f2
.word 0x3fb0ad79, 0xc260359d, 0x18c61ab1, 0xb51ef33e, 0x96e925c2, 0x1f7582e5, 0x75bc8acd, 0x02fd03ac
.word 0x5453f78d, 0x96ddfeac, 0xa2d093c0, 0x288934f9, 0x8467e0e9, 0x95bea769, 0x80775bf8, 0x1638fda8
.word 0x2399e5f4, 0xd3bd02e4, 0x92a9afa3, 0x7b30ba5f, 0x931c9685, 0xb3d8c5da, 0x5a0c4eba, 0xcf0f843c
.word 0x3b014bcb, 0xefe7c726, 0xdd04301d, 0xaff8394d, 0x63682dfc, 0x0f7f973d, 0x463df9b1, 0xa5151a57
.word 0x4daef1df, 0xf6712461, 0xfb6aca06, 0xdd549827, 0xfade25e2, 0x89447038, 0x9e1fb885, 0x3de3c20c
.word 0x61adb444, 0xbd73bf28, 0x2fcc0e3b, 0x30b7575a, 0xbcb4347a, 0xf0963849, 0xaf4f9480, 0x629fdf5a
.word 0x97d06695, 0x93e161c0, 0x35575a7b, 0x9970ba43, 0xffda83bf, 0xfd421304, 0x4c51af43, 0x9b022f38
.word 0x8f604007, 0x2dc66a60, 0x0ca9d1be, 0x2a4a26e5, 0x27e639b4, 0xabe8674c, 0xa8df2d33, 0xbb8de2d9
.word 0xc400768b, 0xcae68c31, 0x6887b995, 0xb3e813b5, 0x7606e089, 0x6077e52a, 0xb8fd9c2e, 0x045ed372
.word 0x8d446e30, 0x15879740, 0xfa9c1541, 0xe57b7d15, 0xe2bf5d93, 0x48793c32, 0xcf9a36f9, 0x7e0fe17b
.word 0x74b5aaf7, 0x597aa351, 0x8fe6e787, 0x1b1e3976, 0x60ac575f, 0xb62b45c9, 0x50f00657, 0x2a2c47e4
.word 0x30edb8b4, 0xe77cb6c4, 0xb72e6d64, 0x9ce55320, 0x77248822, 0xf6a3116f, 0x84795fd2, 0x2128dc1f
.word 0x4aa435bc, 0x571f778f, 0xb5ea5faa, 0xc22e55fe, 0x8888796b, 0x57a23779, 0xd690d0f2, 0x25f5d287
.word 0xc9421d25, 0x40e0a743, 0x004c914a, 0x91b584b8, 0x63aab4cd, 0x96615485, 0x44cb2890, 0x9c24a01a
.word 0x33c7a829, 0x1d3cd4cb, 0x083d2ac0, 0xf3fac47a, 0x09131722, 0x18907448, 0x568ee17a, 0xf57a4d94
.word 0x4b46f773, 0xc4ddd9cd, 0xb94d9df8, 0x52b81f98, 0x02c0ea58, 0xb925a913, 0xe2e3d4c1, 0x3735bb2a
.word 0x3b40258e, 0x5eb21046, 0xb0012d0d, 0xf4ca1a72, 0xa35f60af, 0xc3d15c46, 0x119e5139, 0xe1db6b7f
.word 0x4f14a965, 0x4651d37f, 0x2a882ca7, 0x631c49a3, 0xd4e59667, 0xcf386d63, 0xfff0d71d, 0x0cde0b56
.word 0x3f9d2454, 0xc00b8e27, 0x77c88e48, 0xbd749eef, 0x5dacf38c, 0xe69c6f7c, 0x2a9852ce, 0x1d4431b4
.word 0x28a35051, 0x80d78c78, 0xe5982b7d, 0xaceb6444, 0x67fa95be, 0x18a71463, 0x05c163f9, 0x5cdd7f13
.word 0x9c919858, 0xc3e67733, 0xb1799d6f, 0x1b458ee9, 0x02c49640, 0xdfb7b261, 0x7956d066, 0x2a54c8ad
.word 0xc0119784, 0xe0cd84a6, 0x07cc3c5d, 0x5b8818ab, 0x7cb7595e, 0x86b2ae96, 0xa38ab856, 0xbed462bc
.word 0x6ecae229, 0xd32295d9, 0x8c356657, 0x31e6e27e, 0x15f061be, 0xc73698c4, 0x22c74603, 0x210126e9
.word 0xed92d01e, 0xd06a8d41, 0x4e75d493, 0x78fa7c61, 0x050b79c9, 0xf3f2004e, 0xf1596a25, 0x3045697f
.word 0x2ca6827f, 0x0b684fa5, 0xd03f6adb, 0xfa09e48e, 0xfa1ddff0, 0x79c062c1, 0x24782935, 0xf36cc5a5
.word 0xfdb5c38f, 0x2b7354bb, 0x788a6345, 0xd2dead6d, 0x6d9ae7c3, 0x663f6504, 0xbeaf8bdf, 0x8b95ca16
.word 0x99e14f42, 0x97fb7f6a, 0x39a5b157, 0x45a0e64d, 0x6e73a8b5, 0xe6aa4f48, 0xe9f0d62e, 0xfb551283
.word 0x52a0f665, 0x8de6b7c9, 0x67e13c42, 0x83ea4d94, 0x406e17d0, 0xde119f00, 0xf2a366ee, 0xee47c305
.word 0x84423293, 0xe702232d, 0xfbbc6ec1, 0xcd6551ce, 0xc7f33122, 0xa7be01a5, 0xc5aa3432, 0x2c2138da
.word 0x779b3672, 0x67bce121, 0xf8ec861b, 0x3fa34385, 0x3ad36981, 0x13d91767, 0xae21e385, 0xc960db8e
.word 0x6518ffae, 0x78e1ece9, 0x128dbe7b, 0x3f23a173, 0x6d1dad24, 0x76ed2814, 0x46fb54bf, 0x76e90daa
.word 0x32a014c6, 0xe347254f, 0x1cbf1863, 0x259082a1, 0x30da979c, 0xc848833d, 0xeedc3e8f, 0xd4958a50
.word 0xe48d85b2, 0x7346b1a8, 0x250d5437, 0x9761db67, 0x1707b67f, 0xd2d18d41, 0xcb921468, 0x8a12fefd
.word 0x903e33a4, 0x62c11f4b, 0xf144cb03, 0x73ff0c67, 0xbea837ee, 0xc6110cfa, 0x5a07e70e, 0xc4d2cb86
.word 0x00e16156, 0x222ff59f, 0xf39dd14d, 0xcf858ee6, 0x393055a9, 0xff8f99d2, 0xfc7e6c6f, 0xf1ee6825
.word 0xe8155cff, 0xd33d83ca, 0xac2ec79a, 0x7b705395, 0x67859ab4, 0xa1dc937a, 0x298051af, 0xea781691
.word 0xfa32e48a, 0xe584c13e, 0x822ea4ff, 0x2f6276b6, 0x80eb51b1, 0x33bbbe59, 0xf6340992, 0x8363931b
.word 0x401395b1, 0x99aba415, 0xf532a9db, 0xbe6d4f80, 0xb6510037, 0x19239af4, 0x8e8d5960, 0x56b48c4b
.word 0x56db268f, 0x8a55f125, 0x1d0998ec, 0xf3640d25, 0xbdc88de2, 0xf47e7461, 0xbed9fb08, 0x0812ecaf
.word 0xb6b21caa, 0xbb2c7562, 0x6dbd91d0, 0x4d0d540c, 0xf232f251, 0x221a2213, 0x12ae9bbd, 0x6d119d44
.word 0x3d676ff4, 0x91208e1e, 0xbda92b66, 0x4fab2149, 0x4579241e, 0x662ef5c7, 0x2a7da3e2, 0x11341a3c
.word 0x9d7b1edd, 0xf8bc8fd0, 0x5a505f29, 0x2c7e527f, 0x01567331, 0x21ef58bc, 0x77a7464b, 0x6be7963a
.word 0x246b66b2, 0xeb9ad8a1, 0x17143185, 0x4354ff7a, 0xfc1b396e, 0xdf1e0b6b, 0xa786a526, 0x15cecd05
.word 0x5e7ae174, 0xea3ac3c7, 0xdeea2eda, 0x911e2f9d, 0x69ee78ee, 0x8e48c768, 0xd3f4590d, 0x888132d9
.word 0xb9f99ecd, 0xbbb76b28, 0x5e449425, 0x2dd6344e, 0x5c22ccaa, 0xa533d455, 0xbd632b35, 0xf737dc14
.word 0x6f495e62, 0xcdddf66d, 0x1bcd6af7, 0x7eb7b876, 0xe5d819bb, 0xefd4e222, 0xc1e603e3, 0x6d405be4
.word 0x0b1e8732, 0x2cc98836, 0xfcabd3df, 0x689c7df8, 0x7815a9b2, 0x419ab8bf, 0x6a0bd0cd, 0x5875fa9f
.word 0xe7498067, 0xb0de08b1, 0xf92378f1, 0x0860302c, 0x4e366d5b, 0x1d59cb31, 0x20618d77, 0x12e6f4ba
.word 0xaccafe26, 0x274c850f, 0x9834e239, 0x2aa591dc, 0xd7e34d93, 0x5658fecd, 0xc4ec638d, 0x73dee400
.word 0x2f82f9c9, 0xe5adb85c, 0xfb7aa2b2, 0xa3ce4050, 0x46ee2524, 0x59934f4d, 0xc9c06ad1, 0xd2d1b793
.word 0x9db9eef1, 0x44d2b2b9, 0x61c00062, 0x638d8a31, 0x59c5ad58, 0xcf5616c5, 0x84d5d0b3, 0xe8b7cef9
.word 0xe4b184d9, 0xef47e1fd, 0xd09ab6bb, 0x56133678, 0x653b83bf, 0xeca52638, 0xe41e00ca, 0x24619e09
.word 0xda4cb4d4, 0xa3476522, 0x51c52b3b, 0x87438d17, 0x050c9d35, 0x789c573b, 0x5ec66172, 0x6a83d092
.word 0x3894e927, 0xbc92d83b, 0x1486c17a, 0xe7810772, 0xb62d28c1, 0x076d61dc, 0xd0c8deff, 0x342f839e
.word 0x188d2be1, 0xc56d5d01, 0x6cacd9ea, 0x2673e48e, 0x0058cef7, 0x99ee2896, 0x7a3b32f4, 0xf5177f00
.word 0x0f4a4cb0, 0xba84ceae, 0x6cc84491, 0x442b9967, 0xe09b80d9, 0x18836e91, 0x66eb4092, 0x634d7d6e
.word 0x77579f9d, 0xe0ee2e37, 0x62bd8b3e, 0x11884754, 0x292e30fa, 0x70c79a53, 0x91d59086, 0x99865342
.word 0x774fb3c7, 0x943078d7, 0xdba0f9d3, 0xc8fbe0e1, 0xf0d659f7, 0x58319df0, 0x5a364142, 0x3eb9647c
.word 0x66c97531, 0x11524f89, 0x94173dc4, 0x4a48bfd3, 0x6276e213, 0x6e4d2407, 0xcfbb55d8, 0xd5dea51c
.word 0xb335dd80, 0x979621a6, 0x32194d38, 0xcf2d929f, 0xc31244ff, 0x408efeec, 0x5502d2ec, 0x326a9dbd
.word 0xed31ff66, 0x7708246a, 0x3bc77dd1, 0x37b3ce84, 0xc62387c5, 0x9e4c0078, 0xe2bfb132, 0xf7bc6b57
.word 0x58b1710d, 0xc0ee1885, 0xf49f41bb, 0x340829af, 0x45f0681c, 0xa6c06d66, 0x2807fe52, 0x6b7a2389
.word 0xb3146901, 0x32a03651, 0xfa8a6633, 0x5d631e70, 0xafc40965, 0x4859a9d5, 0x66f7da1b, 0x99024382
.word 0xced1665a, 0x44eb2f63, 0x5e082575, 0x7aa30457, 0x71fdbc23, 0x3a3b1317, 0x3c735081, 0xa9a345c2
.word 0x47c77780, 0x13c64c31, 0x5c4503a7, 0x30ab5913, 0xb3facbfb, 0x35e58fbf, 0xca718edd, 0xd5c6ce5c
.word 0xd4552ae8, 0x36d0779f, 0x822e3f76, 0x04c1f71c, 0x1f09a03b, 0x7b6ac666, 0xb4042ddd, 0x46ea9d1f
.word 0x6db90eea, 0xdf20431b, 0x593eae5d, 0x3724185e, 0x704411d6, 0x25249e91, 0x69a4d317, 0x7b5cbbf8
.word 0xc17ef500, 0x3d0788c6, 0x6446e307, 0x6bf21d3d, 0x3776365e, 0x6a7d52d9, 0x224102f8, 0xe6c53210
.word 0x837ef954, 0xff46230f, 0x1f8550db, 0x8d752266, 0xba792d0c, 0x66824f5e, 0x05fb2a84, 0x26184a0d
.word 0x16db1cfb, 0x821e3ff2, 0xe34012e4, 0x463583a8, 0xddcf795a, 0x998d5a3d, 0x871fdff2, 0x874d888c
.word 0xcc867d83, 0x9aad8a0d, 0x9f11326d, 0x22973be9, 0x854fac40, 0x4604db2f, 0x67f85916, 0xf13c93ce
.word 0x9657c072, 0xbc659631, 0xadf499db, 0x7448aff6, 0x3e1cb09c, 0x7a2a9cfe, 0xcc5e3182, 0x879282c1
.word 0xc5ded223, 0x2b07fbbb, 0xdb335130, 0xf828c675, 0x8fbbe31f, 0xfaae7f30, 0xc8618f14, 0xc505b704
.word 0xc6d3b7e1, 0xec4a2c78, 0x7fa648b9, 0x82a112ce, 0x6b949d81, 0xd3106b03, 0xd2038cbf, 0x116efba2
.word 0x1854aa3e, 0xc707c5c3, 0x7a693fb1, 0xf928a968, 0x0f7521a4, 0x09767316, 0x3038024d, 0xa4944ed3
.word 0x9a859bc9, 0x1b1fc82a, 0xacd03fe2, 0x5a9b9446, 0x48103a1b, 0xcae38a51, 0x92f4844c, 0xeb93bf69
.word 0x01124026, 0xca30c23f, 0x9ba18450, 0xebe86035, 0x903ed113, 0x865e4ecf, 0x455ad229, 0xb9d7965c
.word 0x8e1925b2, 0xdb3e30f4, 0xe1052925, 0xc205b4d8, 0x41fe0252, 0x654d909a, 0x030c24bd, 0x74b92a7d
.word 0x5ffc4db3, 0x7c231ce7, 0x0aa30b6e, 0xaf1ffa60, 0xb836235b, 0xf7ac2ab9, 0x47383f6b, 0x991fb441
.word 0x3085e3e4, 0x178f651a, 0xab42e951, 0x0cd3143f, 0x878193b3, 0xb8691289, 0x44055e51, 0xccfb9fe9
.word 0x857367c3, 0x86389fa2, 0x1c1978f8, 0x3650feec, 0x655a2e65, 0x76af1461, 0x8bac97ca, 0x3cc77382
.word 0xaccde2c4, 0x3579fa00, 0xeb57af06, 0xca70edd9, 0x6f9258a3, 0x4161d30f, 0x497bbaa6, 0xa08177fe
.word 0xba50be21, 0x621712e7, 0x001581ed, 0x8eb6e23b, 0xaf5ecc1f, 0xd96750fa, 0x01a01c26, 0xccec672d
.word 0xa582b622, 0x25bd4c7f, 0xf838eab8, 0x7a62b419, 0x8044ffaa, 0x627664d2, 0x244f8e00, 0x8873d7c6
.word 0x76fcff50, 0xa56831ce, 0x34b06c6b, 0x50ed01ac, 0x8c87e02b, 0x622a1ee0, 0x70d5aa5b, 0xb62f9151
.word 0x289b7eeb, 0x7373ac92, 0x7977800b, 0x8638948e, 0x6ccd4f57, 0x75ac5404, 0x781ef062, 0xa5227375
.word 0x655da1d5, 0xb680aa87, 0x26f500c0, 0x94f19126, 0x559868ce, 0x055df446, 0x902c7767, 0x7ddf9e20
.word 0x759059e1, 0x822c993e, 0x2439d098, 0x857ec388, 0xa7b20b28, 0x606a86f8, 0x58eab283, 0x12d70abb
.word 0x13b03453, 0x95d44401, 0x1ee2259c, 0xcce2ffc7, 0x3a44754f, 0x148de02f, 0xed437c55, 0xb422f413
.word 0xcde92374, 0xa9a9d213, 0x18bc5b9d, 0xdf8651f2, 0x1e9251cd, 0x6b663294, 0x650902c7, 0xd83f9288
.word 0xcf473830, 0x54611bbd, 0x968a6412, 0xd62bc09a, 0x4f0e6259, 0xb438d582, 0xcb9446f7, 0x65a68481
.word 0xacd6504c, 0x1f67bf6f, 0x5b4a23a3, 0x9659c005, 0x695d2e39, 0x7908e66e, 0xba244da4, 0x1796de54
.word 0x9793cd0f, 0x7d39c22b, 0x04e99b0b, 0x20d45ce9, 0xb7873058, 0x398ad631, 0x61f151d1, 0xee63a797
.word 0xf4aef9cf, 0x8adf5426, 0xdee3dc0f, 0x4ae86db3, 0x7c0ed0e6, 0xc4b692e3, 0xeb8fd2b5, 0x49d015e4
.word 0xdc1570cf, 0x1b087c6a, 0x7e8656ff, 0x6fce02fc, 0xdf9b6c12, 0x09f57914, 0xcf621fe2, 0xfaef7ec8
.word 0x78d1d83a, 0xfda7e61d, 0xf1c62cfe, 0x1cbcc5a1, 0x8be4f42d, 0x21c02c11, 0x84f62b0c, 0x1e3c0f0c
.word 0x85200060, 0xddb9d89a, 0x3c14d83a, 0x31aa9d49, 0x0888bf33, 0x15eb94e6, 0xd22792bf, 0xc545d55e
.word 0xedcdce88, 0x62af8bb7, 0x96765901, 0xd1071dea, 0xba108a39, 0x951fe44b, 0xe55788a7, 0xe0ad2550
.word 0x6933e538, 0xd1fa0ba8, 0x8f51fa09, 0xec3c1a50, 0x67cc4d5c, 0x4e670ddd, 0x74e44c98, 0x128edda9
.word 0x9eb5252b, 0xca9738d9, 0x46ecd7cb, 0x8d1a2db3, 0x71c3d5ad, 0x444458b5, 0xfe260bcb, 0x2c496fdc
.word 0x4f25e57d, 0x991704a2, 0xd1c8dd79, 0xbb772b70, 0x19f7f533, 0xc38491c6, 0x880d93c0, 0x9e331fe3
.word 0x64f5a561, 0xafc4fcbe, 0x1bef03c8, 0xaf079f4b, 0xc76d8c1a, 0xbec6ec8e, 0x6642dff1, 0x80ac13d1
.word 0x33ed34a8, 0xfd07aa6b, 0xb55f6d80, 0xe3296c81, 0xe2201976, 0xd794c245, 0x0d547a80, 0x7aaf889f
.word 0xbd123e7a, 0x18fe5cfd, 0xd7e8ec82, 0x863559bf, 0x6ce062a8, 0x78661b1c, 0x9681ee4d, 0x0e1eda9e
.word 0x5f567d38, 0x41551731, 0x9af3c36c, 0x16a079e8, 0xa999a6ac, 0xb2b41616, 0x2f054c07, 0x17f9ff1c
.word 0xf195ae46, 0xe77e5f65, 0xc4b54aaf, 0xed63a671, 0x409c85f1, 0x02bd2c00, 0x3adb0cc6, 0xd0797476
.word 0xc9e03d17, 0x1c57ccaa, 0x3dc329fc, 0x8e81e631, 0xe227ce80, 0x4087631a, 0xfb3c9059, 0x62fcb8fe
.word 0x27b1a3b8, 0x4d2d364f, 0x73612c7c, 0x51e9b49f, 0x07926bfd, 0xc46f1db0, 0x593b74b0, 0x05e2f29f
.word 0x195d1ffa, 0xe1fae94f, 0x18e3acb5, 0x61f7f298, 0x10764fa2, 0x295d8ce1, 0x8e066528, 0x26e55bd1
.word 0x7b74bbd9, 0xae00b67b, 0x42fd308a, 0xb182e059, 0x7a18995a, 0xed78fa86, 0xc10faefd, 0xeed2e204
.word 0xe2b0c6ed, 0x2804c9c1, 0xa4e2c02f, 0x4e775e75, 0x49d779c8, 0xfa5a09e1, 0x5116cbf8, 0x9b0d46c4
.word 0x284b8a62, 0xa14cf890, 0x5994364a, 0x1eb8ddd4, 0xbadfd92d, 0x018e2058, 0x65c97b94, 0xc097c491
.word 0xb5716c65, 0x4de28199, 0x69409eeb, 0x8efd752d, 0x75c5c353, 0x08e8b31f, 0xd0745cee, 0x07d5a052
.word 0xb4dffae4, 0xab46cb8c, 0xc88fbdac, 0x339e726d, 0xd2ee2d39, 0x81d81381, 0x0a909619, 0xed935227
.word 0xa557d914, 0x83eebb9c, 0xe46f9f26, 0xe3a9bd7f, 0x467dc153, 0xf99fd6d0, 0xbe161858, 0xa1a988ab
.word 0x8c7cff84, 0x64b91944, 0x8425eb73, 0xd82729c7, 0x83fdc0f0, 0xd6d390cd, 0x37747c12, 0xab5780ed
.word 0x58a481d5, 0xb47b3b69, 0xdd3e344f, 0xc2d4212d, 0x8c28b4e5, 0x30daa6aa, 0x1b76c9f9, 0x1bcb7619
.word 0x9eaee2a8, 0x90b229fe, 0x0b4d1010, 0xe948354b, 0x05c82213, 0xa55c1b94, 0x15fce2a4, 0x135b98d3
.word 0xcc993270, 0x2ac06106, 0xdbe0423a, 0xf1670a67, 0x04981fe2, 0xf1026575, 0xb49708df, 0x37b6e40f
.word 0x7f8d1629, 0x3fa47894, 0x7713d5a0, 0x845615ae, 0x301bdbeb, 0x53f410f6, 0xd9b729a7, 0xc585e9a7
.word 0x3585ce4f, 0xfe1a0643, 0xa341bf99, 0x8523c753, 0x0459168c, 0x5d426804, 0xbe968e24, 0x0005450e
.word 0x3bc0f60a, 0x92f7cf96, 0x1642ac89, 0xf24fa822, 0x47eae118, 0x04366496, 0x1dc5d25e, 0x3036379a
.word 0xfe7e3fc8, 0xba749a4b, 0xa7242e42, 0x30c0defa, 0xc26ae646, 0x5862b87f, 0x3fd1b22b, 0x07f7655e
.word 0x6a45d498, 0xe412d71e, 0x26e85da8, 0xd7fe91cc, 0x34a9abfd, 0xa4f111ca, 0xfcb34266, 0x11e94291
.word 0xe6f04cc0, 0x7f8eb9e2, 0x46b071d2, 0x92cceae9, 0x4071467f, 0x8fedf42c, 0x03b7fad5, 0xdecdbf00
.word 0x396a0c8c, 0x311317c9, 0x41b47069, 0x3672b743, 0x7d83abf4, 0x6f13bd3e, 0x352ad7c4, 0xa441be12
.word 0xbeabd622, 0xa6871f3d, 0x8d8be8b4, 0xc538af61, 0xa061df96, 0x26d0d9be, 0x9cdd4d7e, 0x2cc616b6
.word 0x46e2fbfc, 0x1dda7dca, 0x0d0fd3a4, 0x89edbd5b, 0x5069276f, 0x4f8f5e5f, 0x6af06328, 0xd09b9d9d
.word 0x85e1ceb4, 0x7bd590d7, 0xc252313f, 0x230077fb, 0x039e3224, 0x530879ef, 0xb6b18340, 0x12c4f040
.word 0x2717fe07, 0x2754b50f, 0x26247403, 0x6affd20b, 0xf1763f75, 0x6cd772fc, 0x57b35b15, 0x862bfa3f
.word 0x9dd58a3a, 0x7c3ac40b, 0x13771238, 0xd9b872a7, 0xe304d29a, 0xbac1217e, 0xb122ec65, 0x3336d439
.word 0x545b4053, 0x41707205, 0x389af465, 0xece8a576, 0xc412575c, 0x90d62914, 0x6af20022, 0x7571c2da
.word 0x0ec60a7b, 0xcfa5a61b, 0xe4667774, 0x031528a9, 0x381b53c1, 0x547145d1, 0x4d9cd283, 0x391440be
.word 0xb5b11171, 0x5f559d50, 0xfd56531e, 0x6d1bbc3a, 0x43b27a65, 0xd6f09180, 0x04c7267e, 0xc5f4f8ea
.word 0xa8a30deb, 0x67c5ef40, 0x096cc7fb, 0x9be378ac, 0xbe303951, 0xbce4f7e5, 0xd7da29f0, 0xffe388d9
.word 0xe2c8bf38, 0x22ab9749, 0x6656b683, 0x0784b475, 0x0177b9c4, 0x97958005, 0xe46b5c2a, 0xe65d66d7
.word 0xb4701129, 0xadcb15bf, 0x55c3f3a6, 0x7ee21bb8, 0x61df3e33, 0xbd9103ae, 0x8d8a1dc3, 0xed9dc5ae
.word 0xfb3dbdce, 0xe335b9fb, 0x9315b100, 0xe8f8b71f, 0xa150a81e, 0xb371b4fa, 0xbbcc5fb3, 0x350317ac
.word 0x80dcfaca, 0x74eb319f, 0xc62e9310, 0x6dfdf65b, 0xe6f503ab, 0xa1c31e6b, 0x1e61ba2e, 0x67eb7eaa
.word 0x84888080, 0x6b29c2f7, 0x90fe7bb9, 0xb89ee6ad, 0x62d775ea, 0x5bc37f40, 0xc049d0e0, 0x98fec398
.word 0xe14ef784, 0x45f43996, 0x4f01a0ae, 0x83abe01d, 0xc171edfb, 0x457e77b3, 0x1c14bb42, 0x5dfaef3b
.word 0x5f311c8a, 0xf4e0c6d2, 0xa9c42ae7, 0x6167e2c7, 0xd21438ba, 0x6e3b6e59, 0xeb4e3b38, 0xe868bb37
.word 0x63679108, 0xc2db9f4e, 0xecaceed8, 0xd752f9db, 0x00a465e7, 0x285b1e80, 0xa6e6e32e, 0x97e7e5d0
.word 0x8aebca20, 0x7794eb04, 0x87489b3a, 0xc133e6b6, 0x63a3e4e4, 0xa10eeb9c, 0x0dbd2da1, 0xb1997bf2
.word 0x01822d87, 0x6eab3ce6, 0xdf70b536, 0xa3ad552d, 0xb234f220, 0xdcfb9f6b, 0x33eeeac8, 0xdf7d75db
.word 0x3850ebce, 0x183a7e5f, 0x3f7b2c54, 0xee5e1a14, 0x3ab1a85b, 0xee79fef4, 0xb2e70cd7, 0xe7d8fb7d
.word 0xa066f07c, 0x68dbb73b, 0xc7351809, 0xca360cd2, 0x3bc95dbe, 0xd6a17106, 0xca4018be, 0x61c5fc63
.word 0xc219137b, 0x42e625ad, 0x09d6fad2, 0x3840d290, 0x904fa6f9, 0x32a303e6, 0x2124f05f, 0x78595fde
.word 0x25854985, 0xdc1a6666, 0xa6968ff2, 0xbcda1201, 0xb0402256, 0xfd2f4302, 0x0ff1a666, 0xcbcf928d
.word 0x1bf1f6eb, 0x20e677f6, 0xc953e119, 0x8ff4d6f4, 0x28e90831, 0xdf51ceac, 0x5b00bf32, 0xf13abe5c
.word 0x7dd97956, 0x1f03a11b, 0xf799a674, 0x4d02ee2e, 0x37730272, 0xc8355266, 0x5802b727, 0xe9c56624
.word 0x01c11b29, 0x3d892b3c, 0xf5ddcfbf, 0xde8ceb9d, 0x82192193, 0x44765c38, 0xf358ba75, 0x1ec3fa25
.word 0x1d814175, 0xb69dbfcd, 0x7125f714, 0x8a43825f, 0xb14912cb, 0xbc5443e8, 0x36c1189b, 0x49eeaf86
.word 0x66f1ebf8, 0x4e9c8479, 0x1638adf3, 0xb0f74abd, 0x4d88ebb4, 0x0e870c4d, 0xd87b11c1, 0xa59a36a8
.word 0xfcc97e29, 0x62b42054, 0x1ba0edf1, 0x53c022c9, 0x44e6f4a7, 0x034f0d7a, 0x481fff7c, 0x0a9a506e
.word 0x2cb28a7c, 0x90cc5b37, 0x45eae08a, 0xcdafd332, 0xb66eac3f, 0xcc0c573f, 0xf7d86769, 0xe4607a47
.word 0x7aed6488, 0xf5fe85fa, 0xd51fdc34, 0xdcf2ca30, 0x70cace5e, 0xe52e3449, 0xf53d027a, 0x5318b442
.word 0x8bd17036, 0x34b7eebf, 0x8dbd8066, 0x75195e43, 0x79d58643, 0xd180cda8, 0xe5872c16, 0x196d00ca
.word 0xec0e965d, 0xa4a523e0, 0xc225905f, 0xa5496ba8, 0xa026e8e1, 0x5e8892a5, 0x6362e36a, 0xf92c2ffc
.word 0x155b5485, 0x16221df7, 0xf5adf101, 0xa84b8375, 0xcaa67c1a, 0x86ab2190, 0xedce6a19, 0x20afc861
.word 0xdd0b258f, 0x2398dce1, 0xc3ecc275, 0x0f1c9b9a, 0xf9485bf8, 0xbcd73b9d, 0x49f4116d, 0x35b0a640
.word 0x142a8802, 0x4d1987dc, 0x33e3733a, 0xce40ef00, 0x60448d33, 0x4cbb7cb7, 0x078252fb, 0x953be583
.word 0xede92743, 0x275e10a2, 0xcb1faa5e, 0x4c095556, 0xee8b5b30, 0xd6acaa98, 0x5708cd56, 0x07a57aca
.word 0xac3ed6b1, 0xa64b6bd8, 0xecd250ea, 0x94268fd9, 0x042adf21, 0xb41532ee, 0xf6d6622e, 0xa38f1ec9
.word 0x0ce45c2f, 0x9019515e, 0x57bc149e, 0xa86e6ed2, 0x10d6ae9c, 0x1d4ab38a, 0x18a78e31, 0xb762839b
.word 0x441295ea, 0xf2a2bc44, 0x6b4f16cf, 0xaac47a68, 0x317e9748, 0x1bdf07e1, 0x05679097, 0x6a77676d
.word 0xc0c2b36a, 0x59421c1f, 0x49d21e5e, 0x66cac01b, 0x2a5ba653, 0x98663a07, 0xdd8bcd9d, 0x27c38e50
.word 0xab98ec3d, 0x5146a2c1, 0x248a98d4, 0x2ae41f17, 0x4f0ce98c, 0x82b220b6, 0x70e514a2, 0xdfe9c762
.word 0x0dad2fc9, 0x4f344f48, 0x9582ecc9, 0x373bfa4b, 0x87adf68f, 0x0eb7702d, 0xc0feab01, 0xa64f5225
.word 0xf7f6b220, 0x991e3e2b, 0x6c50243f, 0x48f7f390, 0x1256eedc, 0x6ab44d7c, 0x4b239b1a, 0x23b2527c
.word 0x97f78b52, 0x7532e80a, 0x85a57623, 0x115271cd, 0x6e5d0c36, 0xe9f4314d, 0xb82a4dd8, 0x97bfcca5
.word 0xa7b9b91e, 0x11d82a43, 0x2f5313fe, 0xc5c42e0b, 0x6555db07, 0x26956e7f, 0x8e1ca777, 0x6e9da6ad
.word 0x439735d1, 0x98dbd184, 0xdb8a58fd, 0x5435ca35, 0xc3f7ee9d, 0x288c2401, 0xef7e59a4, 0x207bb9ac
.word 0x665de73a, 0x5c1edb35, 0x355bb724, 0xb50f90fe, 0xc7ad475f, 0xc05cd7b4, 0x9139564a, 0xffac4a9c
.word 0x7cceb0de, 0x18d4b277, 0xc169e951, 0xa8e0922d, 0x674dee05, 0x8423ff0c, 0xb94d3c3d, 0x1e62bf60
.word 0x2019e8af, 0x2b1d3638, 0x321cee12, 0xcee2f046, 0xd1d40eaa, 0x6acc2aae, 0x1fb44dd2, 0x98cabe9e
.word 0x870ffc11, 0x25c28b25, 0x69e6649d, 0x7801f288, 0x6d7481f5, 0xa02b3b0e, 0x9416ea81, 0x8785fffd
.word 0x5c58f8bd, 0x827e478a, 0x92ef14b4, 0xae928b4e, 0x0d3416bb, 0x8e215950, 0xff4c0f54, 0x3ea9b179
.word 0xe9b593ac, 0xc67a9986, 0xac1c5a2a, 0x32d9a7b8, 0x59cf208b, 0xe64f7614, 0x2b3a2543, 0xefb4c1b5
.word 0x2450ff4a, 0xa9894853, 0xdcae3414, 0x34d4258f, 0x1d3eb6d0, 0x1b569c25, 0x8d87271b, 0x69deb3e5
.word 0x465bf35d, 0x01f00824, 0x7ad46070, 0xb417f1c9, 0xec20193d, 0x7bfca71c, 0xb1b7c522, 0x99933a8a
.popsection;
.pushsection .region_3,"aw",@progbits;
region_3:
.word 0x56f5e9f1, 0x9817d219, 0x8ea4f147, 0x2baf95d1, 0x50268912, 0x2f4309f3, 0x2f4f19fa, 0xa7878493
.word 0xebc5dc0e, 0x28e258f5, 0xd94ebdee, 0x9b361555, 0xf68f2e38, 0x015e4766, 0x5563d5dc, 0x54a84349
.word 0x53fbbbbf, 0x514a2f5f, 0xc21ca420, 0xa7ba0a9b, 0x0b142c85, 0xa380f609, 0x1b74078e, 0x0bb4e402
.word 0x7949ea90, 0xd5c17e7d, 0xd88e6f2f, 0x22da6ca8, 0x1743c519, 0x9e81a9b6, 0xf8d9a0d8, 0xe4d8da82
.word 0xd1235b49, 0xbb50a478, 0xa83e7fdf, 0xf7a4b60b, 0x348d88b2, 0x6f610c49, 0x537dedf9, 0x9e9ed1e0
.word 0x7b099133, 0x0cca5827, 0xdc40de17, 0xc2cb6f6e, 0x1370444e, 0xe46387d3, 0x9a646f6e, 0x7db05933
.word 0xa1da5ec0, 0x48a98562, 0x45cb88a0, 0xd043c11d, 0x821e03ae, 0xa818fba1, 0x3a6e9243, 0xcfe89fc3
.word 0xd3bdc17d, 0x11f148c5, 0x589daa2d, 0x0bcdc1ad, 0x71486eaf, 0xb5414bb1, 0x9a7eb96d, 0xbc71aea6
.word 0xd1a62d67, 0x50f95d20, 0x0de1b9fe, 0x295f5c06, 0xcdfb6e49, 0xb07aec72, 0xda554527, 0x438859c4
.word 0x36402731, 0x70e24385, 0x752fb9f6, 0xde20e6f4, 0xcab6b750, 0x97b92be6, 0x81df479c, 0xcf14d3fc
.word 0x434fabe6, 0x93c3fc65, 0xa5b4806d, 0x81da7c68, 0x41b6e8ff, 0x376a762a, 0xfdc09834, 0xbef60797
.word 0x9af7e958, 0x15e7468f, 0x96b0a273, 0x7c11c7f0, 0xef9f9150, 0x9145655b, 0x6dbb1404, 0xa972dbe5
.word 0x2e20738e, 0x34eec0eb, 0x8e468421, 0x1370b968, 0x3e8a56f6, 0x4695a9db, 0xae081b1f, 0xf57f85f4
.word 0x4f312902, 0x32cb1378, 0xe22a1e26, 0xdaf1eb5e, 0x298ad470, 0xa691e795, 0xf0fd33e9, 0x8b2f5e1e
.word 0xca214449, 0xb39623fe, 0x248afe14, 0xeb50bd6f, 0xb7ca33b1, 0xc9e2d636, 0xb960f5d5, 0xf5124fdb
.word 0x6cac05ac, 0x02a35904, 0xaac38c12, 0x96c3b366, 0xd445cf9a, 0xd688aaf7, 0x50a5a2d7, 0xf8094faa
.popsection;
.pushsection .region_4,"aw",@progbits;
region_4:
.word 0xe7de3ea3, 0x659db8e8, 0xc250959a, 0x34182cfe, 0x4e19932f, 0x98c3ea69, 0xa94ddca9, 0xb10cdd26
.word 0x03220090, 0xde9f7583, 0x0a726548, 0x93959884, 0x651e743b, 0x4b0dc107, 0x35552e57, 0xf1f4f0b1
.word 0xfc4c84b7, 0x069f3932, 0x595e0cc9, 0x2e36092f, 0xe7344576, 0x0bc1987a, 0xee4632e6, 0xba0bc834
.word 0x2762da28, 0x659d401e, 0xde4ded3b, 0x1cf74681, 0x175ec645, 0xa9eab994, 0xea352eab, 0x343bd610
.word 0xcdfc8a6b, 0xf64f7749, 0xfd82cd1f, 0x517cf5f8, 0xd469b2cf, 0x9fe8c2ea, 0x8f49091a, 0xb0ec483a
.word 0xd87a6899, 0x7bee6c1e, 0x122fb531, 0xd7acd519, 0x60dbe0ab, 0x547546fc, 0x73269472, 0x12941b28
.word 0x46cd3549, 0xcc4dd96c, 0x90289e49, 0x595b948d, 0x0073270c, 0x113b0813, 0x0e318e89, 0x0765e6e0
.word 0xd8a401d3, 0xc8de1f45, 0x090ab462, 0x13002ac5, 0x4c36fc71, 0x69793ec6, 0xf02f9bef, 0x4c4933fd
.word 0x7a2ce10d, 0x356f3633, 0xf48304b4, 0xf3fbbbbe, 0x16220ebd, 0xf647c081, 0xb4f9c1e6, 0xe4337829
.word 0xbb51aaa7, 0x29c4e22d, 0x760d8631, 0x5579f615, 0xdc38dc10, 0xf6da2819, 0x9171be1a, 0x03e460bc
.word 0x867bc3f4, 0x84f320ea, 0x51bf431c, 0x039d9233, 0xb470b855, 0x277a82f3, 0x8fe1e8f8, 0x8f818ea3
.word 0x6ba1fdf3, 0xec411c04, 0x60e2b723, 0x5c4a2e75, 0xb8894212, 0x2485da01, 0x64e8a0a9, 0x1326f971
.word 0xae3eaa7f, 0xf6433375, 0x0c2c2a1f, 0x0de63d1e, 0x4a395fe2, 0xcae85ff7, 0x6aa32f0a, 0x87732031
.word 0x407bd57c, 0xd5a5a0d5, 0x7fb316bf, 0xa6476e28, 0x4477768b, 0x1bcd6d44, 0x40e6c336, 0x762cfafb
.word 0x9ebee4d1, 0x5ac95f70, 0x4e356cc7, 0xb8fce771, 0x82a37466, 0xbbab1afd, 0xd7246b67, 0xff056539
.word 0x227f0b98, 0xe0d07f23, 0x12af4810, 0x9328062d, 0x89a5e3e6, 0x7693a107, 0x11b18a5e, 0x8d8a8f71
.word 0xa4a93200, 0x5fec4cf7, 0x82553767, 0x27adddab, 0xe5f05f81, 0x96d26bb5, 0x49bfda2f, 0xe5d89ec0
.word 0x336693ac, 0x3ead973a, 0x28b5e796, 0x0df894bb, 0xd9bd696c, 0x423ea2f1, 0x49e38a86, 0xc4fac608
.word 0x2bde56f0, 0x81b143e5, 0xbd66949b, 0x60fa3283, 0x7efa98c4, 0x71839146, 0xe8c98d7a, 0x1be2f354
.word 0xc236f3cf, 0x81dfa7e0, 0xf41d2d7d, 0x81340f07, 0x0240a828, 0x6ff24e03, 0xf6b18a6d, 0x437ef259
.word 0x3ab4a0c8, 0xbc5fd0e2, 0x0bd0694b, 0x838b5210, 0x4439a0ab, 0xd5a7dae7, 0x1a97c251, 0xad8f4dd8
.word 0xfa00c77d, 0xaab3577d, 0xa2ef4452, 0xdd113035, 0xd57a3abb, 0x33345dd8, 0xc2551a0c, 0x0d052909
.word 0xff6e99d3, 0xede41c57, 0x68d754b6, 0x003db098, 0xc96642fa, 0xe7a1e2ac, 0xfb1e814a, 0x5c2ebd00
.word 0xd149d14e, 0x9b939da6, 0xa8ce0199, 0x2cbee465, 0xff603c14, 0x786120c7, 0x2997044b, 0x59172412
.word 0xe2168677, 0xbc0bbe59, 0xdfcbc3c6, 0x201cc88e, 0x930035db, 0x4880374a, 0xb3f1b85f, 0x74adc843
.word 0x5d090289, 0xd18a05a6, 0x04e54f85, 0x48417887, 0x3f895072, 0x5ded2734, 0x0b57ec64, 0x2b800c49
.word 0x2a4b94d8, 0x3d59f804, 0x0c4e1603, 0x6be36d07, 0x0f4f3231, 0x8553b6a1, 0xda4f6343, 0x937ed91f
.word 0x77b91f2c, 0x852109f7, 0xcf66a399, 0xd653cfd3, 0x25c02fa9, 0x45d85ad9, 0x84d5c2fe, 0x7fd70d3a
.word 0xc0bd392d, 0x84765c83, 0x1fe2c255, 0xc358ac2c, 0x33bc72a4, 0x85720833, 0x02466cd9, 0xddab76e5
.word 0xab06786c, 0x056de073, 0x91cd1e68, 0x35191d4e, 0x6f06ad9d, 0xa86da15e, 0xa7741385, 0x831f402f
.word 0x581040e3, 0x4c37434c, 0xf2464acb, 0x1c522030, 0x8489acd7, 0x971efcb2, 0xb262afaf, 0xf11695ab
.word 0xb7e578a1, 0x3ffde6de, 0x116e9e5a, 0x45c62950, 0xc54d7491, 0x861eeaa6, 0x0857e144, 0xdbae1c5b
.word 0x1105eec9, 0x0c56d15b, 0x6df006a5, 0x92bd6039, 0xfa7ea6a8, 0xc8592346, 0x0b71d56a, 0xb1db7318
.word 0x5d1b23e8, 0x922c8ba7, 0x31a7749d, 0x66a8016a, 0x909b2973, 0x88592a82, 0xb77c5e79, 0xff647353
.word 0x9650a935, 0xf53f55fe, 0xbbee185a, 0xb3923897, 0xb457f673, 0x274987e8, 0xbe56e70b, 0x9c57767b
.word 0xc310ca94, 0x1cc7b805, 0x32ab0ee1, 0xafb5bd7a, 0x2e2bf669, 0x9c02c771, 0x7496f306, 0x0ada69a2
.word 0x5b701f36, 0x8ae75d1f, 0xe8d60687, 0x0ae57b2c, 0xcc54df36, 0xc828e385, 0xb4ecc00b, 0x1013a685
.word 0xca3e9644, 0xe1a38d83, 0x02b28049, 0xf6ae0aa0, 0xb0b3bb90, 0x218624dc, 0xba60c9ee, 0x65a6c4f3
.word 0x6cf9e899, 0xde33837b, 0x7aaaae2b, 0xcb30bea0, 0x35cf743c, 0xed7c8a11, 0xa2bffe0a, 0xbefa1299
.word 0xeb9c8577, 0xc6ca4ef5, 0xabbb412d, 0x7fc03f83, 0x23f3f9cd, 0x09a5812a, 0x62205c27, 0x74c174b5
.word 0x95d4a5ae, 0xef12ad00, 0xea3eebbf, 0x55870fb2, 0x08b106e2, 0x636c36e2, 0x18b10254, 0x7078b3d7
.word 0xfdadbb5b, 0x11274d8f, 0x0b32478b, 0xc07631a1, 0xd59a1efe, 0xdc23dd53, 0xdd68e61d, 0x6350121c
.word 0x2e9f3067, 0xa882bc4d, 0x1e3718b1, 0x01330033, 0x17718685, 0xf1c281f5, 0xe3007ee3, 0x3b0a4124
.word 0x05a905b9, 0x0e825c68, 0xd616c93b, 0x1f231249, 0x6605ef82, 0xa243ac97, 0x324d7598, 0x890bd008
.word 0xaa831446, 0xbd1c5edf, 0xc010140d, 0x602e14e9, 0x8e8c4028, 0x2f0a76ae, 0xe51b89ed, 0x1446716d
.word 0xd4d57c39, 0xd456a88a, 0x46219d3e, 0xc932fd3b, 0xe073d159, 0x2981c6d9, 0x11f73520, 0xf7880bbe
.word 0x4d3d95da, 0x7d60be54, 0x8024e599, 0x39e0b506, 0xe01e9c7b, 0x4355d644, 0x777490a7, 0x1b2ba34b
.word 0x525bc0d9, 0xbf3b2b86, 0xc7508a8a, 0xaac5dcb1, 0xc11220a2, 0x3b1eadbc, 0xa32c5200, 0xc1b2e96a
.word 0xab1d4de8, 0x0c10758d, 0x12795c38, 0xd83585a8, 0xd1090601, 0xbc2b0fa6, 0x0aead9bd, 0x32a636d9
.word 0x276c5ae6, 0x289eaf42, 0xa4025a8c, 0xc8393ada, 0x01c2ca00, 0x8aab5021, 0x26828278, 0x7d8ce9ac
.word 0x9188be6f, 0xb0e078b2, 0x5bb655d3, 0xf849991e, 0x795496e3, 0xdc33f631, 0x2f61060e, 0x37ae8c45
.word 0x50dceab2, 0x08377d2a, 0x2ab98a5f, 0x213ec5f8, 0xc76d710b, 0x45c3e865, 0x30ab5f35, 0x67e5517a
.word 0xb34c0333, 0xc9a431eb, 0x90082387, 0x72a3e396, 0x6c68c947, 0xb204bf0e, 0x508b7046, 0x93890c47
.word 0x795f8336, 0xf5b4bee8, 0x9d8ccc4c, 0x9929f811, 0xc5b0b4c8, 0xe4bc1730, 0xd6e4cfea, 0x7b375b63
.word 0x20af29fe, 0x74a56e96, 0x3433d3c6, 0x6f30eb78, 0xfbbbb1da, 0xb5e2a38b, 0xba55df03, 0x76fe09c1
.word 0x596da7d1, 0x8fa7637f, 0xea3243a0, 0x4314ea6e, 0xc3114674, 0xdaf13575, 0x4de9d6b1, 0xae5827e7
.word 0xda076924, 0x9fdc9c13, 0x09ecf7f1, 0xb03a8a01, 0x4c4191dc, 0x0f278adc, 0xd907511e, 0xa109bb35
.word 0xe6c58742, 0xee8eb1c0, 0x51708802, 0xbc1a84a7, 0xce04b62a, 0xf31c1190, 0x2c5e37dd, 0xe44f89ce
.word 0xe89ce00f, 0x6f1c3f9f, 0x44b818a4, 0xe9e167e0, 0x3687854b, 0x2ecb0e49, 0xb28c4efc, 0x524d808e
.word 0xc3612a48, 0x3537ae40, 0xc3fe7c16, 0x158ca67b, 0x698d4332, 0xb17fff4a, 0xbf4a814f, 0x43dd3d17
.word 0xdf054015, 0x79fc8efd, 0x74a3d2ba, 0x619ea029, 0x2ae25b27, 0x3ff97391, 0x65a4015d, 0x79bbaf32
.word 0xf939402f, 0x76cc074a, 0x4a4f6a32, 0xb4a8a7b1, 0x524c9080, 0x48998242, 0xa93c8f44, 0x950485d1
.word 0x49407aed, 0x37e96e6d, 0xf2ff84dc, 0x4fb89755, 0xd0ed4ca2, 0x12fecc0f, 0xe0733291, 0x5627c02a
.word 0xb9c3dd6f, 0x5cba1ed6, 0xf5d7c33e, 0x37d5162f, 0x4d9e78d8, 0xa064d293, 0x9b8ddac6, 0x4ab7dcac
.word 0x75a5b34c, 0x2c908e2c, 0xd7d2ceeb, 0xcf3ca366, 0x31291a3d, 0x51c940b0, 0xc6c0546f, 0xf9b019bc
.word 0xc0ba7ebb, 0xdef1ece4, 0x76e9b46a, 0xf4aec969, 0x0f87e8b5, 0x497da0e8, 0xd6ba233b, 0x2bdd826b
.word 0x1c5c925c, 0x938b6bcf, 0x5440b596, 0x7691312b, 0x12df7d51, 0x7a07b552, 0x00e17f46, 0x80623a7f
.word 0xa1f5fa88, 0x75c46353, 0x45365347, 0x6c691514, 0x16cb016b, 0xfe3780d1, 0x020f2c39, 0xfd6bd119
.word 0x8137898c, 0x9dbbb303, 0x8d21cd06, 0xf2aaaf1a, 0x168e8419, 0x0eb91ac7, 0x1e403b94, 0xd9ae0a81
.word 0x7fb0282f, 0xc8f72502, 0x481ba459, 0xf8d4aab5, 0x577b3f3b, 0x544588bf, 0x9c90d71d, 0x41ef4d9e
.word 0x84d167f2, 0x99554b94, 0x01284a4c, 0x69662862, 0xb073789a, 0x18471af1, 0x200bb482, 0x075e8c37
.word 0xdf3bbfe2, 0x47f778f0, 0x360e8a1a, 0x2592d743, 0xe90d7404, 0x830e0b46, 0xefb7a6ba, 0xa2391bfb
.word 0xa255f4fa, 0x9a556fdf, 0x8b11dd68, 0x2713d9ec, 0xf17237be, 0x47816f89, 0xa46c0317, 0x2cabab18
.word 0xe6a3ddcc, 0x997c385f, 0x099c436f, 0xd72c1fd7, 0x459120d7, 0xd7ba1c73, 0xfe26ef1b, 0x7c3c92b3
.word 0xa081d824, 0x1d005c2f, 0xe635bb00, 0xcf448e08, 0xfcfc0974, 0xade320f2, 0xdc48c052, 0x38aa0c06
.word 0x32801df3, 0x6256d70b, 0x5e87afc2, 0x6a9a2a25, 0x84e75778, 0x60563375, 0xdde89b38, 0xc9f9eb6b
.word 0x5be9e7ba, 0x751bbbe0, 0xfe75321c, 0x4777cb97, 0x879dd896, 0xf5bfbf08, 0x0b193996, 0xfea7ad15
.word 0x18948a36, 0xd78aec8e, 0x9c516052, 0xe3ecec75, 0x9f40c04c, 0x28e7e581, 0x78a14c30, 0x592adef6
.word 0x13955d6f, 0x701a8894, 0x0f52428b, 0x73aad5ec, 0xa59d3751, 0x42370fd8, 0xa7ed20e0, 0x7a7c1c2e
.word 0xcc140266, 0xf17b355d, 0xef7ab40c, 0xfc9fd73c, 0x018bada7, 0xe9709e23, 0xba767f4f, 0x65aa9ef6
.word 0xe7c1e455, 0x106de9d1, 0xb98d9407, 0x5b9b24e8, 0x7d1c6ced, 0x6adde2b2, 0x61b757a9, 0xaaad9abc
.word 0x9d9b7009, 0xa4b0d49a, 0xb32a38b1, 0x5633b4d2, 0xfb60825d, 0xf363db97, 0xaf56b1af, 0x95c48572
.word 0x94fda5a5, 0x21cd6714, 0x0ef17f19, 0xde17fc1d, 0x0fcf5ce0, 0x7f6c46f1, 0x1eafaf44, 0x84f77fc1
.word 0x1a17b8be, 0xa57a8b0c, 0x0a1569ad, 0x43fd0730, 0x508cb7ed, 0x2edb0298, 0xbddd6b8d, 0x3a9ffc1f
.word 0xb2106ee1, 0x7c91f823, 0xa79e1864, 0xa4cb2dd5, 0x69f47387, 0x5ef57da2, 0x530df7cf, 0xffdad463
.word 0x2871367f, 0xc69a9f4f, 0xc43488af, 0xe2e74a8d, 0x51e71d50, 0x37847906, 0x073b568e, 0x664f2f8e
.word 0x10d02d6f, 0x7c677e98, 0x1422db07, 0xacd7ec95, 0x698eb12a, 0x4c356b1b, 0x1b2be000, 0x222541cb
.word 0xf984a861, 0x087733cb, 0x7776c1c5, 0xdd162612, 0x193bdbf5, 0xa7f1c64b, 0x629b489d, 0xb1be9b05
.word 0x3bf334de, 0x69e2e032, 0xfbe16568, 0x1340c947, 0xad65abea, 0x8f3707a9, 0xc74c84a5, 0x9f113216
.word 0xd248ad4f, 0x306b06ad, 0x6754eae2, 0x7a78c161, 0xe2f42b7a, 0xc47db685, 0x6fda8e4b, 0xf42c8398
.word 0x7350d3a1, 0xec6880e3, 0xfdc7b4aa, 0x5e8b48e5, 0xda9b0d91, 0x139dc15e, 0xc6c27434, 0x7b54a125
.word 0xe255002b, 0x689013b4, 0xe52b512d, 0x3547cc7f, 0x3fbac165, 0x12a74b45, 0xa9f0cffb, 0xceddb3cc
.word 0x89eccecb, 0x12a4ac9d, 0x80f58245, 0xf0d5b33e, 0x877088c7, 0x2b93557d, 0x8c2bc379, 0x6e725f4b
.word 0x39c7bb45, 0xc8609315, 0x1c967a5c, 0xb827fbdb, 0xa09cac17, 0x68f33968, 0x7f15b485, 0x202be62e
.word 0xf399a7a6, 0xc74024dc, 0x31d4ab3e, 0xfe15e097, 0x7be64e71, 0xf75e7e62, 0x39b33a8a, 0x81db955b
.word 0x4b679624, 0xba086263, 0xdf880562, 0xdaba5e22, 0x98b13cb5, 0x967bca7c, 0x2ce5e140, 0x6987da27
.word 0xd4db7978, 0xfedc82b3, 0x63c67749, 0x9536936d, 0x753f6570, 0xd986859f, 0xfd9ed9d9, 0xe0305873
.word 0xccf97f0c, 0xdd371aae, 0x9cde45fd, 0x4f4360f6, 0x6be530e4, 0x98133473, 0xe87fac38, 0x5b3d1159
.word 0xcd31c371, 0x1b19960a, 0x2885f3d7, 0xec07c8a2, 0xec395f52, 0x6cf70f01, 0x9a17429d, 0xc9556645
.word 0x5880c840, 0xf147593d, 0xcb9cece7, 0xce904f8a, 0xa224d34c, 0xd81297f7, 0x83e4730e, 0xc34828d5
.word 0x66e0478d, 0x65629a04, 0xc7f16b5b, 0x9d360739, 0x0ea3d4a4, 0xd27ed9f4, 0x10445c2b, 0xa1f0bfda
.word 0x88ed0650, 0x2014daae, 0xde1625dc, 0x2c1e7d79, 0xb0eb01f7, 0xbc768d64, 0xf3834884, 0x2d2f549e
.word 0xe5ad2f65, 0x2b718271, 0x80c2681e, 0x63e6fdd9, 0x9abd3677, 0x1f7ce908, 0x28989ef2, 0x10a472d5
.word 0x5c9c9226, 0x147dec1c, 0xb0bfcf16, 0x55722e79, 0x2cd35434, 0xa4144e79, 0x2209d890, 0xbd75c148
.word 0xd4336805, 0xa3dbbcc6, 0x20f93b72, 0x6d202ae8, 0x37642946, 0x0779948e, 0x65d8dd9c, 0x0a7af131
.word 0x3bbb3af5, 0xc321ec49, 0xbf20229b, 0x1087bbf9, 0x9a8d7b01, 0xb6663a46, 0x9edee33e, 0x2006c22f
.word 0xbf6c325b, 0x004a1704, 0x693126c4, 0xb028b6ba, 0x99ad17cb, 0xe2f60c30, 0xdcaf0b32, 0x7818f055
.word 0x19990843, 0xe9fc3413, 0xbb5902f6, 0x6e3e2479, 0x87d0e84e, 0xf9c9c958, 0xd498bba2, 0xade43129
.word 0xf7885502, 0x166ef892, 0x7ba7fa5e, 0x19d8a6d2, 0xf70a1695, 0xdcac8ac8, 0xfcf54962, 0x9a5b7c77
.word 0xb4d8da01, 0x20b010f7, 0x8dc23f9e, 0x066a5d19, 0x84e03159, 0x30360c4b, 0xcd9352a2, 0x40ff45c2
.word 0x32c5e39a, 0x7ce0d7ba, 0xd510bf00, 0xc14ee7be, 0x1906c042, 0x441bd557, 0x078240be, 0x886ded10
.word 0x83e60aa1, 0xb9131da5, 0xdebc7d2b, 0xfcda7e4b, 0xe97c5cd4, 0x1b1bf2a8, 0x2f6c41a6, 0x147032f1
.word 0x896f4352, 0x64059e85, 0x00bf619e, 0x671752b5, 0x1bfbec7f, 0x16fd9422, 0x4369b22c, 0x123fe374
.word 0x5a63cc0f, 0x9d69c709, 0x68eb5f6a, 0x8e6fd8db, 0x95af5b2c, 0x359b6c3c, 0x21ef08b5, 0x556ef847
.word 0x77d9d760, 0xb336f0ff, 0x36f973aa, 0x4f45c2e7, 0x827c9c66, 0xa1ebcb25, 0xdc437425, 0x254944e1
.word 0xabcf1dd9, 0x0dce80f6, 0x2450103c, 0x80327496, 0xc74235ed, 0x2b41618b, 0xbf33faee, 0x40baaa26
.word 0xb6f48aee, 0xae460863, 0x87b3fefe, 0xd7702807, 0x4c02004c, 0x2bf771ea, 0x93faac99, 0xf676367b
.word 0xff457d63, 0x3eb8e7b7, 0x56c86f55, 0xa0707235, 0xdb63c0b0, 0x5e69c821, 0x4c122909, 0x1e958c71
.word 0x71899e97, 0x9c5b89e6, 0xb0aa0cc6, 0xde292a7f, 0x8d78e6ee, 0xcfc6d994, 0xf8e473ed, 0xbbbbef74
.word 0xd2868cee, 0xff8cfdd0, 0x29a8a890, 0xe9475d48, 0x742e27dd, 0xb5c52b4d, 0x949e435c, 0xc4762191
.word 0x4839a1b4, 0x5b8ad355, 0x0f2ad8db, 0x727dad31, 0xe8ed2bf2, 0x4da1d662, 0x999b7448, 0xf9752608
.word 0x769e89e4, 0x4c1eecd5, 0x7e376ea2, 0x712179e6, 0x2643e288, 0x55532c41, 0xfe94dbfc, 0xc00d5cf6
.word 0x53b41e8f, 0xd2a2f12c, 0x1ea2bb2a, 0x38aa3bc1, 0xbf23048d, 0xe77c4643, 0xfa602dc1, 0xa3b2b9ab
.word 0x1f44e11a, 0x19381eb0, 0x1e61c28e, 0x118711d9, 0xc3225cfc, 0x13982f83, 0xcb7a4fd9, 0x5ecd4645
.word 0xfeb4da43, 0xf87bf372, 0x60ab644a, 0x82b90572, 0xe5322d5d, 0x144f5067, 0x34d944b5, 0x5b9a635c
.word 0xfc0a4742, 0x2f324bd0, 0xd4e2f876, 0x904e990f, 0x42a282c8, 0xe5590d90, 0xf0cac30f, 0xc954a915
.word 0x9ee78b14, 0xd252bce4, 0x1d2a291d, 0xe91879bd, 0x18b4778e, 0x41ebb45c, 0xa6d9fc37, 0xbee53d42
.word 0x7a0a99eb, 0xd7387199, 0xf04cb8b0, 0x2af8df47, 0x8b089073, 0x49387b8d, 0x0322f317, 0x7962bf6e
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
                  add x2, x23, zero
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
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x14, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x14, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x14, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x14, x17, ecall_handler
                  li x17, 0x1
                  beq x14, x17, instr_fault_handler
                  li x17, 0x5
                  beq x14, x17, load_fault_handler
                  li x17, 0x7
                  beq x14, x17, store_fault_handler
                  li x17, 0xc
                  beq x14, x17, pt_fault_handler
                  li x17, 0xd
                  beq x14, x17, pt_fault_handler
                  li x17, 0xf
                  beq x14, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: jal x1, test_done 

ebreak_handler:   
                  csrr  x14, mepc
                  addi  x14, x14, 4
                  csrw  mepc, x14
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
                  add x23, x2, zero
                  csrrw x2, 0x340, x2
                  mret

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  j write_tohost
illegal_instr_handler:
                  csrr  x14, mepc
                  addi  x14, x14, 4
                  csrw  mepc, x14
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
                  add x23, x2, zero
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
                  add x23, x2, zero
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
                  add x23, x2, zero
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
                  add x23, x2, zero
                  csrrw x2, 0x340, x2
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
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
                  add x23, x2, zero
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
