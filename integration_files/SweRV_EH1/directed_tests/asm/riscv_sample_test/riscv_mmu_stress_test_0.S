.include "user_define.h"
.globl _start
.section .text
_start:
                  li x0, 0x6
                  li x1, 0xff982ea1
                  li x2, 0xc
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0x8
                  li x6, 0x0
                  li x7, 0xf0686b27
                  li x8, 0x232eee48
                  li x9, 0x8
                  li x10, 0xfebda54a
                  li x11, 0xfd375ca3
                  li x12, 0xfebf9c5b
                  li x13, 0xb
                  li x14, 0x0
                  li x15, 0x97948d31
                  li x16, 0xf3ac2014
                  li x17, 0xe
                  li x18, 0x9
                  li x19, 0xe3b84adb
                  li x20, 0xa
                  li x21, 0xf9106bbb
                  li x22, 0x0
                  li x23, 0xf6c00dbe
                  li x24, 0x2b21f941
                  li x25, 0x6
                  li x26, 0x76ef711d
                  li x27, 0xfcb28be9
                  li x28, 0x121eaf89
                  li x29, 0xfff31a0e
                  li x30, 0xb463759
                  li x31, 0x0
                  li x12, 0x40001104
                  csrw misa, x12
kernel_sp:        
                  la x21, _kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 1
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, _init
                  csrw mepc, x12
                  j init_machine_mode

_init:            
                  la x2, _user_stack_end
_main:            la         s3, sub_2
                  mulh       s6, a7, a1
                  sra        t4, t0, s4
                  or         a4, s4, t1
                  c.lui      s9, 25
                  rem        tp, t0, s7
                  addi       s3, s3, -49
                  c.lui      a4, 30
                  nop
                  srai       a3, t2, 22
j__main_sub_2_2:  jalr       ra, s3, 49
                  slli       ra, s4, 7
                  la         a2, sub_1
                  and        s0, t0, s0
                  addi       a2, a2, -544
                  c.addi     t6, -1
                  c.addi     a4, -1
                  c.or       a3, s0
                  sltiu      s1, s8, -690
j__main_sub_1_3:  jalr       ra, a2, 544
                  la         a0, region_0+1867 #start load_store_instr_stream_0
                  la         tp, region_4+331 #start load_store_instr_stream_1
                  sb         t3, 38(a0)
                  lbu        ra, -2(tp)
                  lbu        a4, -30(a0)
                  la         s4, region_2+2201 #start load_store_instr_stream_3
                  lh         s7, -15(tp)
                  la         a1, region_1+7115 #start load_store_instr_stream_2
                  lb         a6, -16(tp)
                  lb         s8, -252(s4)
                  lbu        a7, 212(s4)
                  lbu        t1, -4(tp)
                  lbu        t1, 6(a1)
                  lhu        a2, -7(s4)
                  lb         s10, 46(a0)
                  lbu        gp, -16(a1)
                  sb         t2, 11(tp)
                  lb         t2, -97(s4)
                  lbu        s6, -53(a1)
                  sb         gp, 12(a0)
                  sb         a3, -184(s4)
                  lb         a7, -6(tp)
                  lbu        s10, -68(s4)
                  lbu        s3, 168(s4)
                  lbu        a3, 6(tp)
                  lbu        a7, 0(tp)
                  lbu        s1, -2(a0)
                  lhu        s3, -37(a1)
                  lb         t2, 6(tp) #end load_store_instr_stream_1
                  lb         a7, -30(a1)
                  lb         t4, 29(s4)
                  lbu        s8, -188(s4)
                  sb         t6, 63(a0)
                  lbu        t4, 65(s4) #end load_store_instr_stream_3
                  lbu        t2, -2(a1) #end load_store_instr_stream_2
                  lb         s9, 37(a0) #end load_store_instr_stream_0
                  la         s7, region_3+297 #start riscv_load_store_rand_instr_stream_0
                  c.addi     s4, -1
                  mulh       s11, a5, s11
                  lbu        ra, -155(s7)
                  andi       s3, gp, -612
                  divu       t1, t6, s1
                  lbu        s2, -112(s7)
                  c.sub      a0, a4
                  sb         s11, -36(s7)
                  xori       s9, s7, 507
                  sb         t5, 110(s7)
                  lb         s1, -181(s7)
                  addi       s2, t2, -257
                  xor        a1, s9, s0
                  sb         s6, 37(s7)
                  lui        a7, 852327
                  slti       s4, s11, -634
                  lbu        s2, -152(s7)
                  lbu        a7, -91(s7)
                  sb         a7, -116(s7)
                  lb         a4, 132(s7)
                  sb         zero, -26(s7)
                  c.lui      a5, 8
                  sb         t5, -242(s7)
                  fence.i
                  lh         t1, -9(s7)
                  lb         tp, -147(s7)
                  lhu        t6, -71(s7)
                  sb         s9, -7(s7)
                  lb         s10, -78(s7)
                  sb         t6, 88(s7) #end riscv_load_store_rand_instr_stream_0
                  la         s7, region_2+6175 #start load_store_instr_stream_2
                  la         s0, region_2+1684 #start load_store_instr_stream_1
                  la         s9, region_2+4355 #start load_store_instr_stream_0
                  sb         t5, 1203(s0)
                  sb         tp, -1995(s9)
                  sb         t6, 1393(s0)
                  lb         t2, -230(s7)
                  la         s3, region_2+6842 #start load_store_instr_stream_3
                  lbu        a6, 11(s7)
                  lb         a6, 500(s9)
                  lb         a7, -181(s9)
                  lb         tp, -169(s3)
                  la         t5, region_2+6170 #start load_store_instr_stream_4
                  lbu        t1, -147(s7)
                  sh         t5, -632(s0)
                  sb         s5, -101(s3)
                  sb         s2, 15(t5)
                  lh         a4, -1001(s9)
                  lb         a4, 6(t5)
                  sw         gp, 8(s0)
                  lbu        ra, 422(s9)
                  lbu        t2, 71(s7)
                  lbu        t6, 228(s9)
                  lb         a2, 12(t5)
                  lhu        s2, 1318(s0)
                  sb         tp, 80(s9)
                  lb         t1, -61(s7)
                  lbu        gp, -38(s7)
                  lbu        s8, -1198(s0)
                  lb         s11, 76(s7)
                  lw         gp, -30(s3)
                  lb         t2, 38(s7)
                  sb         s3, 836(s9)
                  lhu        a1, 6(t5)
                  sb         a1, 1066(s9)
                  sb         s6, 1777(s0)
                  sb         a7, 9(t5)
                  sb         t2, 93(s3)
                  lhu        a7, -140(s3)
                  sh         s1, -53(s7)
                  lbu        s1, 238(s7) #end load_store_instr_stream_2
                  lh         a6, 160(s0) #end load_store_instr_stream_1
                  sb         gp, -17(s3) #end load_store_instr_stream_3
                  sw         s0, 10(t5) #end load_store_instr_stream_4
                  lbu        s11, -804(s9) #end load_store_instr_stream_0
                  div        t1, a7, gp
                  sltu       ra, t2, s3
                  mulhu      zero, t0, a3
                  csrrsi     a5, 0x340, 30
                  mul        a2, s5, a6
                  slli       t6, t3, 3
                  bne        s4, s7, 11f
                  mulh       t0, t2, zero
                  c.add      s3, a1
                  xor        gp, s10, s0
                  sltiu      s7, ra, -128
11:               c.slli     t2, 20
                  slt        s8, a1, t1
                  sltu       t1, s1, a3
                  c.nop
                  fence.i
                  sub        t4, a6, zero
                  slli       s4, a2, 7
                  csrrw      s7, 0x340, sp
                  c.sub      s1, a4
                  la         t1, sub_2
                  add        a1, sp, s1
                  srli       a6, a5, 15
                  c.lui      a3, 15
                  or         zero, s10, s2
                  addi       t1, t1, -763
                  fence
                  bne        s10, a5, j__main_sub_2_1 #branch to jump instr
                  srl        s4, s6, s6
j__main_sub_2_1:  jalr       ra, t1, 763
                  nop
                  xor        tp, t2, a2
                  c.srai     a2, 4
                  csrrs      s8, 0x340, gp
                  mulhu      a4, ra, zero
                  divu       a5, t6, t3
                  c.addi     tp, -1
                  mul        t2, zero, s1
                  lui        zero, 257420
                  c.srli     a5, 22
                  bne        sp, gp, 39f
                  c.sub      a3, s0
                  andi       ra, s3, -138
                  xori       a5, s7, -890
                  c.xor      a4, s1
                  auipc      s1, 22862
                  xori       t4, t4, 225
                  c.srai     a3, 28
                  divu       tp, s7, t5
                  c.xor      a3, s1
                  divu       t5, a2, t2
39:               mulhsu     gp, s10, a1
test_done:        
                  li gp, 1
                  ecall
sub_4:            c.and      a4, a5
                  or         s1, s1, zero
                  mulhu      t1, t4, a3
                  addi       sp, sp, -40
                  sw         ra, 4(sp)
                  srl        t4, s7, a3
                  la         t4, region_1+13474 #start riscv_load_store_rand_instr_stream_87
                  rem        a3, sp, sp
                  lb         s0, 8(t4)
                  mul        t0, a0, a3
                  csrrci     a1, 0x340, 23
                  lw         s8, 10(t4)
                  csrrc      a3, 0x340, s9
                  fence
                  srai       s10, gp, 3
                  lh         t2, 6(t4)
                  sb         s3, 1(t4)
                  mulhu      gp, t6, t5
                  sltiu      tp, s1, -133
                  mulhu      s8, s5, s5
                  csrrwi     a4, 0x340, 9
                  sltu       t0, s3, tp
                  auipc      a0, 42144
                  csrrs      a1, 0x340, tp
                  lbu        s7, -3(t4)
                  ori        a3, t6, 770
                  lbu        a6, -3(t4)
                  sh         a4, 8(t4)
                  lhu        a0, 4(t4)
                  fence.i
                  nop
                  sb         ra, 2(t4)
                  sb         gp, 9(t4)
                  sra        s8, ra, gp
                  csrrw      a2, 0x340, t2
                  lui        s8, 409926
                  c.slli     a5, 19
                  andi       s0, t0, -672
                  lb         s11, 9(t4)
                  slt        s6, s7, a5
                  sw         t4, 10(t4) #end riscv_load_store_rand_instr_stream_87
                  la         t6, region_0+3776 #start load_store_instr_stream_1
                  sb         a1, 2(t6)
                  lhu        t5, 16(t6)
                  la         a5, region_4+3089 #start load_store_instr_stream_0
                  lb         t1, 13(t6)
                  lb         s3, 137(a5)
                  lh         t5, 10(t6)
                  lbu        s10, -4(t6)
                  lb         s6, -16(a5)
                  sb         a0, 7(t6)
                  sb         t5, -5(t6)
                  lbu        t2, -182(a5)
                  lhu        t1, -151(a5)
                  sb         a6, -14(t6)
                  sb         a7, -15(t6)
                  sb         t3, 11(t6) #end load_store_instr_stream_1
                  lb         gp, -132(a5) #end load_store_instr_stream_0
                  la         s3, region_0+574 #start load_store_instr_stream_1
                  lbu        s9, 122(s3)
                  la         s7, region_1+5044 #start load_store_instr_stream_2
                  lbu        t1, 49(s7)
                  la         s1, region_3+372 #start load_store_instr_stream_0
                  sb         a0, -224(s3)
                  lhu        t6, 12(s1)
                  lb         a7, -15(s3)
                  lb         t0, -183(s7)
                  sb         s9, 70(s7)
                  lhu        gp, -4(s1)
                  lbu        s6, 6(s1)
                  sb         t4, -13(s1)
                  lhu        a7, -162(s7)
                  sb         s8, -4(s1)
                  lh         s0, 212(s3)
                  lw         a2, 8(s1)
                  lbu        s2, -198(s7)
                  lbu        a6, -143(s7)
                  lw         a3, 34(s3)
                  lbu        t1, -15(s1)
                  sb         a0, -13(s1)
                  lbu        t5, -10(s1)
                  sh         s4, 28(s3)
                  lb         tp, 236(s7)
                  lb         a3, -183(s3)
                  lb         t5, 125(s3) #end load_store_instr_stream_1
                  lb         s4, 209(s7) #end load_store_instr_stream_2
                  lbu        a6, 7(s1) #end load_store_instr_stream_0
                  la         s11, region_4+3932 #start riscv_load_store_rand_instr_stream_62
                  sh         a6, -396(s11)
                  sb         s8, -1053(s11)
                  lbu        a0, -94(s11)
                  lhu        s0, -1302(s11)
                  csrrsi     s6, 0x340, 27
                  slli       a5, s11, 2
                  sb         a6, -189(s11)
                  c.lui      t2, 18
                  lbu        s0, -997(s11)
                  c.li       s8, -1
                  sltu       t1, s2, t1
                  lb         s9, -257(s11)
                  sra        s8, a7, a3
                  xor        a5, t5, a2
                  lhu        s2, -1620(s11)
                  xor        s9, t6, a4
                  sltiu      s10, s3, -1012
                  sb         s9, 79(s11)
                  c.nop
                  rem        t4, a4, a7
                  c.slli     a3, 30
                  sb         gp, -1614(s11)
                  sb         a0, -917(s11)
                  addi       s7, a2, -481
                  c.nop
                  fence
                  csrrci     a7, 0x340, 16
                  sb         t4, -491(s11)
                  sltu       a1, a7, t0
                  xor        a6, zero, s0
                  sb         s9, -147(s11)
                  or         a5, t3, t6
                  mulhsu     a3, a6, t2
                  csrrci     s2, 0x340, 5
                  sb         t6, -2001(s11)
                  c.li       s10, -1
                  sb         a1, 111(s11)
                  lhu        s4, -1232(s11)
                  srai       t4, s11, 28
                  lbu        s9, -1161(s11)
                  srli       s10, s1, 10
                  sb         s5, -1362(s11)
                  lhu        s9, -486(s11)
                  sh         a3, -994(s11) #end riscv_load_store_rand_instr_stream_62
                  la         s0, region_0+381 #start riscv_load_store_rand_instr_stream_65
                  lbu        s11, -158(s0)
                  remu       zero, t3, ra
                  csrrsi     a1, 0x340, 31
                  sb         s6, 177(s0)
                  rem        s6, s0, s4
                  lb         a7, 28(s0)
                  c.nop
                  c.andi     a0, -1
                  ori        gp, t0, -736
                  nop
                  lh         t5, 85(s0)
                  c.add      gp, a6
                  c.slli     s2, 19
                  sb         s8, -16(s0)
                  c.or       a4, a0
                  lhu        s9, -41(s0)
                  csrrsi     s3, 0x340, 0
                  c.slli     a1, 8
                  lbu        s4, 150(s0)
                  c.nop
                  slt        s3, s6, a4
                  csrrw      s6, 0x340, t1
                  c.li       t4, 29
                  lhu        a7, 157(s0)
                  lb         a7, 149(s0)
                  mul        gp, ra, t2
                  srl        t0, t0, s7
                  c.mv       a4, t6
                  csrrci     s3, 0x340, 10
                  slti       gp, a6, 508
                  csrrci     t2, 0x340, 3
                  c.andi     a2, 23
                  mulhu      s4, t1, t2
                  lb         s1, 246(s0)
                  sb         s10, -99(s0) #end riscv_load_store_rand_instr_stream_65
                  la         s9, region_4+3823 #start riscv_load_store_rand_instr_stream_11
                  lbu        t4, 38(s9)
                  c.add      a2, s5
                  lb         s3, -52(s9)
                  csrrwi     s0, 0x340, 13
                  sb         zero, -40(s9)
                  lh         a0, 1(s9)
                  lbu        s1, -22(s9)
                  c.srli     a3, 21
                  sh         s11, 31(s9)
                  sltu       s4, a2, s4
                  sub        a2, s0, t2
                  lbu        a2, -54(s9)
                  lbu        s11, -52(s9)
                  sb         s8, 16(s9)
                  sra        a2, t0, t0
                  sh         a2, 29(s9)
                  lb         a5, -6(s9)
                  c.sub      a4, s1
                  lb         t0, 20(s9)
                  add        t6, a0, s10
                  lbu        t2, -44(s9)
                  lh         t1, -17(s9)
                  sb         s10, -53(s9)
                  sh         a1, 27(s9)
                  lbu        s10, -40(s9)
                  sb         a7, 24(s9)
                  sh         s6, -29(s9)
                  sra        a6, s1, s4
                  c.srai     a0, 28
                  sb         s0, -55(s9)
                  sh         s1, 45(s9)
                  lhu        s8, 41(s9)
                  lbu        s6, 64(s9) #end riscv_load_store_rand_instr_stream_11
                  la         s4, region_1+3051 #start riscv_load_store_rand_instr_stream_85
                  lhu        a0, 45(s4)
                  lhu        s0, -1(s4)
                  lw         s1, 33(s4)
                  rem        s7, s4, a4
                  sb         gp, 30(s4)
                  divu       t6, a7, s5
                  srli       a0, t3, 29
                  lbu        s2, -22(s4)
                  lbu        s3, -62(s4)
                  c.addi     t4, -1
                  lbu        s3, -10(s4)
                  rem        t5, s10, t5
                  lbu        a0, -20(s4)
                  lbu        t5, 35(s4)
                  lbu        s10, 28(s4)
                  sh         a0, -63(s4)
                  slt        zero, s8, s3
                  lb         a1, -1(s4)
                  sb         t2, 27(s4)
                  sb         a7, -44(s4)
                  auipc      a4, 705079
                  c.andi     a3, -1
                  lbu        tp, 40(s4)
                  sb         s9, -37(s4)
                  lh         a1, -37(s4)
                  lbu        a1, 60(s4)
                  c.nop
                  lbu        t5, -59(s4)
                  slti       a6, s11, -788
                  lb         a4, -16(s4)
                  csrrw      s8, 0x340, s3
                  lb         s8, 18(s4)
                  lh         gp, 31(s4)
                  fence.i
                  nop
                  sh         a3, 19(s4)
                  lh         a6, -9(s4)
                  lui        a2, 486281
                  csrrc      tp, 0x340, t3
                  lbu        ra, -54(s4)
                  sb         t5, 20(s4)
                  lb         a0, -38(s4)
                  c.nop
                  lhu        s9, -35(s4)
                  c.slli     t6, 17
                  and        s9, t0, a5
                  lbu        s7, 35(s4) #end riscv_load_store_rand_instr_stream_85
                  la         s0, region_1+8351 #start riscv_load_store_rand_instr_stream_86
                  srli       t0, a5, 17
                  csrrc      s2, 0x340, s11
                  sb         s2, 231(s0)
                  c.lui      a4, 18
                  srl        t5, s5, a5
                  sb         a2, 41(s0)
                  sh         s4, -237(s0)
                  slt        s8, s6, a1
                  lbu        s6, 226(s0)
                  lb         a5, 132(s0)
                  lb         s2, -11(s0)
                  c.slli     t4, 18
                  lb         a0, -210(s0)
                  c.sub      a1, a5
                  lhu        s8, 83(s0)
                  lb         a4, 191(s0)
                  c.li       s11, -1
                  mulhu      t4, s5, s10
                  lhu        s3, 119(s0)
                  lw         s6, -7(s0)
                  nop
                  nop
                  sb         ra, 252(s0)
                  sb         t0, 220(s0)
                  lb         s11, -254(s0)
                  sb         t1, 108(s0)
                  mulh       s4, t6, s10
                  auipc      t0, 95688
                  lhu        s10, -113(s0)
                  sb         t3, 73(s0)
                  lh         t5, -49(s0)
                  lhu        a2, 129(s0)
                  lbu        a4, -110(s0)
                  sb         a1, -196(s0)
                  lbu        s6, 62(s0)
                  lbu        a6, 255(s0)
                  lbu        s4, -154(s0)
                  c.or       a3, a3
                  lh         a2, -217(s0)
                  mul        s7, a3, a1
                  lw         a4, -43(s0)
                  lb         s11, -126(s0)
                  c.and      a4, s0
                  sb         t4, -102(s0)
                  sb         s2, 76(s0)
                  sb         t5, 142(s0) #end riscv_load_store_rand_instr_stream_86
                  la         a1, region_4+933 #start load_store_instr_stream_1
                  la         a6, region_2+6471 #start load_store_instr_stream_0
                  lb         a5, 11(a1)
                  sb         s2, -25(a1)
                  lh         s3, -11(a1)
                  lb         a4, 53(a1)
                  lb         s11, 1(a6)
                  lhu        s6, -1(a6)
                  lb         s6, 24(a1)
                  lhu        t6, -7(a6)
                  sb         a5, 56(a1)
                  lbu        t6, 10(a1)
                  lhu        t1, 11(a6)
                  lhu        a7, 3(a6)
                  lbu        s6, -4(a1)
                  sh         a4, -9(a6)
                  lbu        s6, 12(a6)
                  lb         gp, 16(a1)
                  sh         zero, 57(a1) #end load_store_instr_stream_1
                  lbu        s3, 6(a6) #end load_store_instr_stream_0
                  la         t6, region_0+3934 #start riscv_load_store_rand_instr_stream_33
                  fence
                  andi       zero, t2, 824
                  divu       s10, s5, t2
                  lb         t0, 1(t6)
                  csrrsi     s8, 0x340, 13
                  sb         s5, -15(t6)
                  lb         s10, -35(t6)
                  sb         s10, 47(t6)
                  lb         t0, -14(t6)
                  lbu        zero, 51(t6)
                  lh         a7, 2(t6)
                  c.srli     a2, 21
                  xori       a6, s5, -760
                  srai       s4, t5, 23
                  lb         t5, -56(t6)
                  sltiu      t1, s8, 996
                  csrrs      s1, 0x340, s9
                  lhu        zero, -14(t6)
                  lbu        t1, -3(t6)
                  lb         s11, 49(t6)
                  sll        a0, s9, t2
                  xori       t4, a0, 689
                  mul        s11, a6, s6
                  srl        s8, t6, tp
                  csrrc      a3, 0x340, s6
                  lbu        s8, -33(t6)
                  mulh       a4, s9, a1
                  slli       a3, s1, 29
                  lbu        a3, -63(t6)
                  lbu        s0, 24(t6) #end riscv_load_store_rand_instr_stream_33
                  la         a6, region_3+313 #start riscv_load_store_rand_instr_stream_56
                  c.li       t1, 7
                  lbu        a0, -262(a6)
                  add        a7, ra, a4
                  sw         t6, -69(a6)
                  csrrc      a4, 0x340, a3
                  lhu        t2, 127(a6)
                  lb         a5, 47(a6)
                  lhu        a5, 171(a6)
                  c.mv       tp, a5
                  lh         s10, 61(a6)
                  lbu        a7, -132(a6)
                  or         a1, s1, a4
                  lbu        s1, -148(a6)
                  lb         s11, 194(a6)
                  lb         s8, -141(a6)
                  lb         s9, 92(a6)
                  lbu        s11, -264(a6)
                  auipc      s10, 743044
                  lb         s4, -182(a6)
                  sb         a0, -38(a6)
                  mulh       s11, s1, sp
                  c.nop
                  sltu       a2, gp, a0
                  lb         s10, 162(a6)
                  lbu        t2, -62(a6)
                  sll        a1, t4, tp
                  c.srai     s1, 31
                  sb         t2, 46(a6)
                  and        zero, zero, t6
                  sb         a6, -97(a6)
                  mulh       ra, t3, t3
                  or         s1, t1, s8
                  lhu        s8, -19(a6)
                  lh         t6, 177(a6)
                  lb         t0, -32(a6)
                  sltiu      a0, t4, -558
                  sra        a0, a7, a1
                  auipc      s0, 941871
                  c.srai     a5, 10
                  lbu        t2, -7(a6)
                  lbu        zero, -233(a6)
                  mulhsu     t2, zero, s0
                  csrrci     s1, 0x340, 28
                  or         a2, s2, t2
                  lb         t5, -268(a6)
                  c.or       a3, a1
                  sb         s6, -52(a6)
                  sub        s2, s0, s5
                  lw         a1, -1(a6) #end riscv_load_store_rand_instr_stream_56
                  la         t0, region_3+209 #start riscv_load_store_rand_instr_stream_24
                  sb         t2, 84(t0)
                  auipc      t5, 981264
                  fence
                  c.srli     s1, 11
                  and        s11, t2, s4
                  srli       a1, a4, 23
                  lbu        gp, -172(t0)
                  lb         a0, 160(t0)
                  sb         t5, 108(t0)
                  c.srai     s0, 31
                  lb         a5, 190(t0)
                  rem        s9, a5, s9
                  lbu        s6, 106(t0)
                  sb         ra, -92(t0)
                  sra        a5, t1, s2
                  lbu        s0, 189(t0)
                  sb         s10, 241(t0)
                  lb         s3, 160(t0)
                  divu       s11, a0, s0
                  lbu        a0, 134(t0)
                  sb         a3, -198(t0)
                  csrrwi     t2, 0x340, 11
                  andi       a7, gp, -756
                  c.slli     s2, 7
                  lui        a5, 754737
                  sw         s11, -93(t0)
                  lbu        t6, 237(t0)
                  rem        s4, a4, t3
                  lhu        a2, 109(t0)
                  sb         t4, 218(t0)
                  div        s0, s6, a6
                  mul        s8, t4, ra
                  csrrwi     s3, 0x340, 18
                  sb         gp, 146(t0)
                  fence.i
                  lb         a5, -28(t0)
                  sb         s7, -172(t0)
                  csrrwi     a2, 0x340, 30
                  lh         zero, 51(t0)
                  lbu        s10, -157(t0)
                  lb         s4, -158(t0)
                  xor        ra, t4, s11
                  lbu        t5, 58(t0)
                  lhu        t6, 255(t0)
                  lh         s3, -45(t0)
                  csrrsi     s0, 0x340, 29
                  slti       a3, t4, -560
                  nop
                  c.or       s1, a4
                  csrrci     a1, 0x340, 13
                  nop
                  c.or       a3, s0
                  slt        a6, ra, s5
                  lbu        s10, -102(t0)
                  sub        t4, s3, a5
                  lb         s1, 148(t0) #end riscv_load_store_rand_instr_stream_24
                  la         tp, region_0+3696 #start riscv_load_store_rand_instr_stream_12
                  c.lui      a7, 22
                  sltiu      a7, s1, -979
                  lbu        t5, -5(tp)
                  sltu       s4, t4, t4
                  nop
                  sh         t1, 4(tp)
                  sh         a4, 2(tp)
                  c.lui      t5, 10
                  div        t0, t1, a6
                  auipc      s6, 640334
                  c.srli     a4, 29
                  nop
                  lb         t2, 12(tp)
                  divu       t0, s8, sp
                  lhu        a3, 4(tp)
                  c.sub      a4, a2
                  c.and      a5, a2
                  fence
                  lbu        s8, 13(tp)
                  lui        s1, 932168
                  lb         t0, -1(tp)
                  lbu        s2, 3(tp)
                  lbu        a2, -5(tp)
                  lbu        a2, -11(tp)
                  nop
                  lb         s6, -1(tp)
                  slli       a1, a7, 23
                  lh         s3, -6(tp)
                  lb         s2, -13(tp)
                  fence
                  lbu        s8, -13(tp)
                  lw         s9, 4(tp)
                  lbu        a4, 16(tp)
                  fence.i
                  sltu       a3, s8, a7
                  csrrwi     s0, 0x340, 24
                  c.or       a3, a0
                  sb         s1, -5(tp)
                  c.and      s0, a1
                  lhu        s10, 12(tp) #end riscv_load_store_rand_instr_stream_12
                  la         a0, region_2+7854 #start load_store_instr_stream_2
                  la         s10, region_2+4613 #start load_store_instr_stream_0
                  la         a2, region_2+1032 #start load_store_instr_stream_1
                  lw         a4, -1810(a0)
                  lb         s7, 1670(s10)
                  lb         a7, -839(a0)
                  lh         s0, -12(a2)
                  sw         a7, -16(a2)
                  sb         s2, -911(a0)
                  lbu        s9, -1578(a0)
                  sh         t0, -103(s10)
                  lbu        ra, -1124(a0)
                  lhu        t5, -6(a2)
                  sh         s0, -1048(a0)
                  sw         a3, 1039(s10)
                  lbu        s0, -1623(a0)
                  lbu        gp, -3(a2)
                  sb         s1, -16(a2)
                  lbu        t0, -7(a2)
                  sb         a1, 272(a0)
                  lb         t1, 81(s10)
                  lh         s7, 116(a0) #end load_store_instr_stream_2
                  lhu        s3, -6(a2)
                  lh         s7, 6(a2) #end load_store_instr_stream_1
                  sw         sp, 303(s10) #end load_store_instr_stream_0
                  la         t0, region_2+2975 #start riscv_load_store_rand_instr_stream_76
                  lhu        gp, -1285(t0)
                  lb         t4, -1696(t0)
                  csrrs      zero, 0x340, s2
                  auipc      s7, 152658
                  lh         t5, 543(t0)
                  lbu        s9, -1542(t0)
                  lb         t1, -672(t0)
                  sltiu      a5, s2, 408
                  addi       s3, t4, 796
                  csrrwi     s1, 0x340, 24
                  c.mv       s8, tp
                  sll        ra, s1, s5
                  lbu        s7, -943(t0)
                  csrrwi     t1, 0x340, 4
                  mulhsu     t4, s4, a3
                  lw         s1, -11(t0)
                  c.add      s3, a5
                  lbu        s4, 1792(t0)
                  lb         s6, -1462(t0)
                  lh         s0, 1677(t0)
                  lw         a4, -239(t0)
                  c.sub      a5, a5
                  sb         t1, -1350(t0)
                  div        zero, gp, s2
                  add        ra, s2, t3
                  csrrw      a2, 0x340, a7
                  csrrc      s6, 0x340, s7
                  c.andi     a5, -1
                  fence
                  sw         t5, 857(t0)
                  lb         zero, 1954(t0)
                  c.srai     a2, 25
                  c.li       a5, -1
                  sra        a5, a7, a5
                  sltu       s11, s4, a4
                  and        t5, a3, s10
                  csrrw      s11, 0x340, t6
                  csrrs      s10, 0x340, ra
                  c.nop
                  lbu        a7, -1344(t0)
                  lbu        s9, -992(t0)
                  sb         s6, 1862(t0)
                  csrrs      s2, 0x340, s6
                  sh         a4, -655(t0)
                  div        s9, t4, sp
                  c.andi     a2, -1
                  csrrc      t2, 0x340, a1
                  c.lui      a7, 23
                  lb         a3, -1569(t0)
                  sh         s10, -139(t0)
                  lbu        s7, 1526(t0)
                  sb         t1, 1488(t0)
                  sb         s4, -1806(t0)
                  sb         s3, -482(t0)
                  sb         s3, -207(t0)
                  lbu        a2, -1115(t0) #end riscv_load_store_rand_instr_stream_76
                  la         t0, region_2+1565 #start load_store_instr_stream_1
                  la         s10, region_2+7604 #start load_store_instr_stream_2
                  lhu        a4, 109(t0)
                  la         a7, region_2+1733 #start load_store_instr_stream_3
                  lbu        t5, -9(s10)
                  la         s11, region_2+4870 #start load_store_instr_stream_0
                  sh         t3, -57(a7)
                  sb         s8, -386(t0)
                  lbu        a4, 22(s10)
                  lb         a5, 288(t0)
                  lb         a0, -1960(s11)
                  sb         a1, -194(s10)
                  sh         t1, -685(t0)
                  sb         a1, 21(a7)
                  lb         s3, -199(s10)
                  sh         zero, 68(s10)
                  lbu        t1, -30(a7)
                  lbu        zero, -388(s11)
                  lbu        a4, -194(s10)
                  lbu        s1, -23(a7)
                  lb         t5, -164(t0)
                  sb         s8, -40(a7)
                  sb         s2, 365(s11)
                  lb         a3, 182(t0)
                  lw         s7, 451(t0)
                  sb         s6, 1927(s11)
                  sb         t0, -218(s10)
                  lbu        a3, 820(s11)
                  lb         a4, -10(a7)
                  lbu        s8, -1303(t0)
                  lh         t4, 1359(t0)
                  lb         a3, 1523(t0) #end load_store_instr_stream_1
                  lbu        a0, -27(a7)
                  sb         s3, 147(s10)
                  sb         t2, -3(a7)
                  lb         a4, -210(s10) #end load_store_instr_stream_2
                  lbu        s2, 36(a7)
                  lw         t6, 1214(s11)
                  sb         t2, 58(a7) #end load_store_instr_stream_3
                  sb         t5, -342(s11) #end load_store_instr_stream_0
                  la         tp, region_4+3065 #start riscv_load_store_rand_instr_stream_60
                  csrrci     s9, 0x340, 30
                  c.sub      s1, a4
                  lb         s6, -832(tp)
                  sb         zero, -366(tp)
                  csrrwi     s1, 0x340, 15
                  divu       a3, sp, t2
                  srli       s4, t6, 4
                  c.srai     a4, 23
                  c.sub      a3, s0
                  sb         a3, -1328(tp)
                  c.xor      a0, s1
                  srai       s10, t6, 20
                  sb         s7, -686(tp)
                  sh         a3, -1629(tp)
                  xori       t6, t6, 145
                  csrrsi     s10, 0x340, 10
                  lb         t0, -1854(tp)
                  c.or       a4, s0
                  lb         s1, -1208(tp)
                  sb         t4, 126(tp)
                  mulh       zero, gp, s0
                  fence.i
                  sb         t3, -502(tp)
                  sw         s3, 487(tp)
                  lb         s6, 385(tp)
                  lh         ra, -1051(tp)
                  c.srli     a2, 19
                  lbu        t5, -634(tp)
                  lbu        s7, -778(tp)
                  sb         a2, 992(tp)
                  lui        a1, 134826
                  srl        s1, s7, t2
                  lh         s11, -997(tp)
                  sb         s4, 423(tp)
                  mulhu      s9, a2, s11
                  sb         s0, -1543(tp)
                  nop
                  sb         a5, 888(tp)
                  xor        t1, zero, gp
                  sb         s3, 792(tp)
                  slli       t2, a3, 15
                  sb         t4, 186(tp)
                  sb         t4, -1268(tp)
                  mulhsu     s0, a7, t1
                  c.lui      a2, 15
                  srai       t1, a2, 21
                  lbu        t4, -655(tp)
                  fence
                  csrrwi     s0, 0x340, 24
                  lb         a0, -160(tp)
                  lhu        s8, -1863(tp)
                  csrrwi     a0, 0x340, 10
                  sh         s8, -1545(tp)
                  lbu        s7, 413(tp)
                  c.or       a2, a5
                  lbu        a0, 500(tp)
                  lh         s3, -513(tp) #end riscv_load_store_rand_instr_stream_60
                  la         s3, region_4+3287 #start load_store_instr_stream_3
                  lhu        t1, -95(s3)
                  la         a3, region_4+1456 #start load_store_instr_stream_2
                  la         s2, region_4+2109 #start load_store_instr_stream_1
                  lb         tp, -74(s3)
                  la         t0, region_4+3966 #start load_store_instr_stream_0
                  lh         a0, -35(s3)
                  lbu        t1, -220(s2)
                  lb         ra, 72(s3)
                  lb         a1, 56(s2)
                  lbu        zero, 30(s3)
                  sb         s0, -104(s2)
                  lbu        s7, -131(a3)
                  sw         a0, -14(t0)
                  lb         t6, 139(a3)
                  lbu        s4, -909(a3)
                  lhu        t6, 29(s2)
                  lb         s7, 28(s3)
                  sh         a5, -121(s2)
                  lw         t5, 1020(a3)
                  lh         a1, 187(s3)
                  sh         s1, 0(t0)
                  lbu        s6, -7(t0)
                  sb         ra, 178(s3)
                  sh         a2, 225(s2)
                  lbu        t5, 873(a3)
                  lhu        s6, -179(s2) #end load_store_instr_stream_1
                  lh         s9, -446(a3) #end load_store_instr_stream_2
                  lbu        a0, -65(s3) #end load_store_instr_stream_3
                  lbu        s10, 9(t0)
                  sb         s9, 1(t0) #end load_store_instr_stream_0
                  la         ra, region_0+1297 #start riscv_load_store_rand_instr_stream_50
                  div        s4, s7, a3
                  lbu        t1, -238(ra)
                  rem        s0, a0, t4
                  lhu        s7, -241(ra)
                  lhu        t5, 83(ra)
                  sw         s3, 99(ra)
                  lbu        a5, 190(ra)
                  c.addi     a5, -1
                  slti       s11, a1, -264
                  sb         a2, 212(ra)
                  and        t4, a2, a7
                  div        a7, s7, s3
                  csrrci     a2, 0x340, 16
                  lbu        gp, -46(ra)
                  xori       zero, s2, 565
                  lb         s4, -179(ra)
                  sh         a3, 101(ra)
                  srai       s7, a4, 11
                  sra        t4, a4, a5
                  lh         a2, -1(ra)
                  xori       a6, ra, -195
                  auipc      s0, 762548
                  slli       a3, sp, 7
                  lbu        gp, 250(ra)
                  slt        s9, s1, a2
                  lb         t6, -92(ra)
                  rem        s9, s8, t5
                  lb         t5, 48(ra)
                  lbu        tp, 206(ra)
                  lbu        s7, -212(ra)
                  srai       a7, a0, 16
                  c.addi     s9, -1
                  xori       a3, t3, 174
                  sw         s8, 191(ra)
                  slt        t2, a4, s11
                  sb         a0, -92(ra)
                  sltiu      a1, s6, -653
                  sll        s11, t3, s6
                  sb         t1, 36(ra)
                  lw         a2, 75(ra)
                  nop
                  sra        s9, s1, s1
                  csrrci     s0, 0x340, 18
                  andi       s6, t1, -931
                  lbu        a1, 194(ra)
                  lhu        s2, -201(ra)
                  sh         a7, 191(ra)
                  sb         s5, 194(ra)
                  c.addi     t2, -1
                  c.andi     a5, -1
                  c.xor      a0, a2
                  lbu        t2, 131(ra)
                  lhu        a4, -161(ra) #end riscv_load_store_rand_instr_stream_50
                  la         s4, region_1+5315 #start load_store_instr_stream_0
                  lbu        a5, -30(s4)
                  la         tp, region_1+7540 #start load_store_instr_stream_3
                  la         s0, region_1+14224 #start load_store_instr_stream_2
                  la         s2, region_1+9537 #start load_store_instr_stream_1
                  lw         s3, 8(tp)
                  lb         s10, -874(s0)
                  sb         s3, 32(s4)
                  lbu        zero, 2(tp)
                  lb         t2, -34(s4)
                  lbu        zero, -489(s0)
                  sw         s3, -9(s2)
                  sw         a5, 27(s2)
                  sh         t2, 16(tp)
                  lb         a6, -943(s0)
                  sb         s8, -19(s4)
                  lh         s6, 33(s4)
                  lb         s11, -24(s2)
                  lh         a2, 29(s2)
                  sb         a6, 54(s2)
                  lb         t1, -3(s2)
                  sb         s9, 44(s4)
                  lb         a1, -13(tp)
                  lbu        t6, 9(tp)
                  sb         s4, 615(s0)
                  lb         s6, 35(s2)
                  sh         t3, 10(tp)
                  sh         s0, -2(tp)
                  lbu        a3, -38(s2)
                  sh         s9, -11(s4)
                  sh         t1, -12(tp)
                  lh         t2, -39(s4)
                  lbu        s8, -5(tp)
                  lb         s11, 50(s4)
                  lhu        a4, 9(s2) #end load_store_instr_stream_1
                  sb         s3, 1791(s0) #end load_store_instr_stream_2
                  lb         s1, 13(tp) #end load_store_instr_stream_3
                  lhu        ra, 63(s4) #end load_store_instr_stream_0
                  la         a1, region_0+1063 #start load_store_instr_stream_1
                  la         ra, region_0+542 #start load_store_instr_stream_0
                  lw         s1, -875(a1)
                  lbu        s1, -739(a1)
                  lb         a4, 1645(ra)
                  lbu        gp, -329(a1)
                  sb         s4, -299(ra)
                  lbu        s1, 1480(a1)
                  sb         a1, 509(ra)
                  sh         s4, -453(a1)
                  lhu        t4, -533(a1)
                  lb         t2, 1484(ra)
                  lb         a4, 719(ra)
                  sb         s11, 512(a1)
                  lb         s9, 92(a1)
                  lhu        a4, 1715(a1) #end load_store_instr_stream_1
                  lb         a0, 813(ra) #end load_store_instr_stream_0
                  la         t6, region_4+3272 #start riscv_load_store_rand_instr_stream_36
                  sll        a2, tp, a7
                  remu       s9, s2, s1
                  addi       a3, a2, -232
                  ori        a6, tp, 1012
                  fence
                  xor        s11, tp, a5
                  sb         t4, -34(t6)
                  c.and      s0, a4
                  sb         s10, 59(t6)
                  srl        gp, s3, t3
                  c.mv       s0, s5
                  nop
                  c.addi     tp, 22
                  c.add      s2, ra
                  c.srai     a2, 4
                  sub        a3, t4, s11
                  mulhu      s6, a2, t1
                  c.lui      a0, 20
                  rem        t4, a4, s9
                  c.andi     a4, 20
                  mulhu      s7, tp, s6
                  sltiu      s1, s10, -331
                  lb         a5, 221(t6)
                  csrrc      a2, 0x340, a4
                  sb         s0, -51(t6)
                  lbu        s3, 221(t6)
                  rem        s3, a2, t3
                  sb         a0, -252(t6)
                  sll        t1, t5, a0
                  xor        a1, a5, a3
                  c.sub      a2, a3
                  ori        a2, s5, 848
                  slli       a0, a5, 11
                  sb         s3, -203(t6)
                  sh         ra, -134(t6)
                  lhu        s9, -54(t6)
                  remu       a3, a7, t2
                  xori       a1, s3, 314
                  add        s0, a3, a1
                  sb         a0, 233(t6) #end riscv_load_store_rand_instr_stream_36
                  la         t1, region_2+4940 #start riscv_load_store_rand_instr_stream_53
                  lbu        s2, 81(t1)
                  srl        t5, a1, t5
                  auipc      a0, 268612
                  c.or       a2, s1
                  lbu        t0, 167(t1)
                  c.sub      a0, a1
                  c.add      s8, a4
                  srli       s10, a3, 26
                  lbu        a5, -163(t1)
                  sh         t0, 12(t1)
                  csrrwi     s4, 0x340, 12
                  c.xor      a4, a3
                  or         a0, a1, ra
                  sra        t2, s11, s3
                  sh         t0, 122(t1)
                  csrrw      s9, 0x340, s3
                  ori        a5, a2, 654
                  slli       tp, ra, 27
                  lb         a3, 1(t1)
                  sb         ra, -96(t1)
                  csrrsi     s6, 0x340, 13
                  sb         t5, 241(t1)
                  sub        s3, gp, s0
                  sltiu      a2, t6, -68
                  addi       a0, a5, 573
                  slli       s9, s9, 10
                  sb         t1, 162(t1)
                  add        s8, t6, s10
                  mulhsu     t6, s5, s10
                  lb         t5, -74(t1)
                  sltu       tp, s1, s4
                  fence.i
                  sh         a5, 2(t1)
                  csrrc      t0, 0x340, s7
                  lhu        s2, 86(t1)
                  lbu        s2, 256(t1)
                  sb         s10, 208(t1)
                  lbu        t5, 247(t1)
                  lbu        zero, -44(t1)
                  lb         t2, 131(t1)
                  c.addi     gp, 24
                  csrrwi     s1, 0x340, 0
                  mulh       a0, a0, s5
                  lh         tp, -50(t1)
                  fence.i
                  sh         a6, 194(t1)
                  lb         a0, -22(t1)
                  csrrw      s11, 0x340, t5
                  csrrs      zero, 0x340, t0
                  sb         s8, 183(t1) #end riscv_load_store_rand_instr_stream_53
                  la         s10, region_1+5149 #start riscv_load_store_rand_instr_stream_19
                  fence
                  slt        a3, a3, t2
                  srli       gp, t2, 7
                  lbu        t4, -1495(s10)
                  sb         t6, -550(s10)
                  sb         t2, 1256(s10)
                  lbu        a7, 1354(s10)
                  sub        a1, s0, t0
                  sw         t1, -1109(s10)
                  sb         tp, 940(s10)
                  lh         gp, -755(s10)
                  c.and      a0, a2
                  c.addi     gp, 13
                  lb         s2, 895(s10)
                  div        a4, a0, s6
                  lbu        a0, 1346(s10)
                  or         a3, s8, s3
                  c.lui      s6, 28
                  c.srai     a1, 3
                  lbu        a1, 1890(s10)
                  or         s0, a5, t3
                  lw         s9, -1969(s10)
                  lbu        s4, 476(s10)
                  lui        a0, 907566
                  andi       a4, gp, -682
                  lh         s4, 1525(s10) #end riscv_load_store_rand_instr_stream_19
                  la         s4, region_2+3927 #start riscv_load_store_rand_instr_stream_16
                  lhu        tp, 171(s4)
                  lhu        a3, -13(s4)
                  lhu        t2, -53(s4)
                  sb         s9, -184(s4)
                  lui        t1, 188118
                  csrrci     s9, 0x340, 21
                  or         s2, t0, a7
                  srai       t6, s0, 2
                  lh         t6, 173(s4)
                  sb         s1, -59(s4)
                  lb         t1, 162(s4)
                  lb         t1, 80(s4)
                  csrrci     s11, 0x340, 23
                  c.addi     a4, -1
                  lw         t4, -219(s4)
                  sh         a1, -15(s4)
                  lb         a3, -202(s4)
                  rem        gp, s3, s6
                  sb         a6, -72(s4)
                  lb         t5, 100(s4)
                  sb         a0, -106(s4)
                  remu       t4, s5, s1
                  lbu        s2, -89(s4)
                  sll        tp, ra, gp
                  sw         t6, -55(s4)
                  sll        a6, s9, s11
                  sb         ra, -92(s4)
                  mulhu      s2, t6, s5
                  sra        s10, a3, t0
                  andi       s11, a1, 938
                  sb         a5, -219(s4)
                  sb         t4, 20(s4)
                  lhu        s9, 215(s4)
                  lb         tp, -104(s4)
                  lbu        a2, -80(s4)
                  ori        a7, zero, 797
                  lb         t0, 19(s4)
                  sb         a3, -60(s4)
                  lb         s0, -190(s4)
                  sw         t0, 25(s4)
                  srai       a2, t3, 8
                  sb         a7, -228(s4)
                  c.srai     a3, 23
                  lbu        t4, -2(s4)
                  sb         s10, 219(s4) #end riscv_load_store_rand_instr_stream_16
                  la         ra, region_3+373 #start load_store_instr_stream_0
                  la         s6, region_4+1993 #start load_store_instr_stream_1
                  sb         a6, 6(ra)
                  lb         s4, -9(ra)
                  lbu        a3, 14(ra)
                  sh         a3, 665(s6)
                  lh         t1, -171(s6)
                  lbu        s3, 1521(s6)
                  sh         s2, -3(ra)
                  lbu        s4, 481(s6)
                  lb         a2, 9(ra)
                  sb         t0, -253(s6) #end load_store_instr_stream_1
                  lbu        t1, 16(ra) #end load_store_instr_stream_0
                  la         s2, region_0+1038 #start riscv_load_store_rand_instr_stream_72
                  ori        s4, s2, 182
                  lw         ra, -14(s2)
                  sb         s1, 31(s2)
                  slli       s1, a1, 31
                  and        s9, a7, ra
                  or         s0, s5, a6
                  csrrs      s8, 0x340, a1
                  lb         s7, 37(s2)
                  sb         a1, -42(s2)
                  sb         a4, 3(s2)
                  fence
                  addi       gp, a5, -45
                  lbu        a7, 15(s2)
                  c.andi     a4, -1
                  lbu        zero, 1(s2)
                  xori       t5, tp, -615
                  csrrci     s3, 0x340, 26
                  sb         s1, -3(s2)
                  rem        a2, t1, a7
                  sw         s7, -30(s2)
                  or         t1, a6, s9
                  lbu        s8, -45(s2)
                  divu       a3, s2, zero
                  sb         s8, 43(s2)
                  lb         a7, 3(s2)
                  lb         s8, -28(s2)
                  mul        s9, a3, s0
                  lbu        t1, 22(s2)
                  or         s11, s4, s0
                  lbu        s0, -21(s2)
                  c.srli     a2, 5
                  rem        s7, t2, s3
                  slli       s3, t5, 12
                  lb         t6, 27(s2)
                  lhu        a3, 50(s2)
                  mulh       t1, s7, sp
                  sltu       s1, a2, s6
                  lh         s0, -32(s2)
                  csrrc      zero, 0x340, t2
                  sb         a4, 59(s2)
                  remu       s8, s8, ra
                  sb         s3, 23(s2)
                  sb         a2, 6(s2)
                  c.srai     s1, 29
                  sll        a1, t3, ra
                  ori        a6, s4, -541
                  add        s6, s1, s11
                  sb         t3, 16(s2)
                  lhu        s4, -28(s2) #end riscv_load_store_rand_instr_stream_72
                  la         a7, region_4+2014 #start riscv_load_store_rand_instr_stream_57
                  slli       a3, s6, 17
                  sb         t0, -83(a7)
                  sb         a7, 149(a7)
                  c.addi     s0, 29
                  mulhsu     a0, a0, gp
                  divu       t4, a3, s9
                  rem        s0, a1, s0
                  slti       s10, s0, 327
                  sltiu      s11, s9, -513
                  csrrc      s10, 0x340, s2
                  mulhu      a2, a6, a4
                  lw         s0, -78(a7)
                  srai       t6, tp, 2
                  sw         t3, -210(a7)
                  lbu        s11, 102(a7)
                  c.sub      a4, a4
                  c.and      a1, a3
                  rem        s6, t3, t1
                  sb         t4, 109(a7)
                  lbu        t6, -159(a7)
                  sub        s3, a6, s0
                  sb         zero, 169(a7)
                  lbu        s7, 59(a7)
                  c.add      s4, s6
                  or         s9, ra, a0
                  lhu        s6, -100(a7)
                  c.or       a5, a1
                  lbu        gp, -217(a7)
                  c.sub      a5, a3
                  c.add      t5, s1
                  divu       a4, a6, s3
                  csrrs      s4, 0x340, s8
                  lb         a3, -215(a7)
                  c.srli     a5, 17
                  sltu       t6, a2, ra
                  c.andi     s0, -1
                  remu       s9, tp, s7
                  c.li       a0, -1
                  sb         tp, 213(a7)
                  srl        t0, t2, s5
                  xor        t2, s11, t6
                  c.andi     a5, -1
                  sb         t6, 123(a7)
                  c.mv       a4, sp
                  sb         t0, -98(a7) #end riscv_load_store_rand_instr_stream_57
                  la         s11, region_4+3568 #start load_store_instr_stream_1
                  la         a7, region_3+32 #start load_store_instr_stream_0
                  lb         s7, -5(s11)
                  sw         t6, 4(s11)
                  lbu        a5, -4(s11)
                  lhu        zero, -22(a7)
                  sb         s1, -9(s11)
                  sb         t5, -27(a7)
                  lbu        tp, -8(s11)
                  lb         s3, -10(s11)
                  lbu        a6, 33(a7)
                  lbu        s2, 0(s11)
                  lbu        t6, 60(a7)
                  sb         sp, -7(s11)
                  lbu        a6, -12(s11) #end load_store_instr_stream_1
                  lb         a4, 60(a7)
                  lb         a3, 25(a7) #end load_store_instr_stream_0
                  la         t0, region_4+3905 #start riscv_load_store_rand_instr_stream_43
                  lbu        t1, -1888(t0)
                  or         s1, a7, sp
                  sb         s5, -1522(t0)
                  lbu        s6, -1613(t0)
                  nop
                  csrrw      s10, 0x340, a3
                  lb         t6, -708(t0)
                  lbu        s7, -1977(t0)
                  c.li       s3, 3
                  lb         s6, -1843(t0)
                  lb         a4, -1497(t0)
                  sb         s8, -42(t0)
                  sltu       t5, tp, a4
                  lb         t6, 158(t0)
                  lbu        s4, -519(t0)
                  sb         a4, -454(t0)
                  mulh       s11, t3, t4
                  slli       a2, a6, 15
                  lh         t5, 53(t0)
                  sb         a0, -646(t0)
                  and        a6, s11, s10
                  andi       a3, t2, 563
                  sub        t2, zero, s10
                  lw         s3, 43(t0)
                  or         a6, s0, s11
                  lbu        s8, -1834(t0)
                  lbu        s8, -1595(t0) #end riscv_load_store_rand_instr_stream_43
                  la         gp, region_4+3410 #start riscv_load_store_rand_instr_stream_21
                  csrrwi     s9, 0x340, 20
                  andi       s3, t0, -282
                  lui        a4, 274495
                  ori        a0, t3, 430
                  c.mv       s1, s2
                  lw         a4, 566(gp)
                  c.mv       a3, a4
                  lui        s8, 189789
                  srl        s6, tp, s4
                  sh         a7, -460(gp)
                  csrrs      t5, 0x340, t2
                  c.or       a1, a4
                  lbu        a2, 165(gp)
                  lb         s2, 263(gp)
                  c.addi     t0, 23
                  sb         s8, -1812(gp)
                  auipc      s6, 262800
                  remu       s6, a2, s2
                  csrrwi     s7, 0x340, 21
                  c.srli     a1, 14
                  c.and      a5, s1
                  lb         s2, -875(gp)
                  lw         s8, 34(gp)
                  csrrsi     zero, 0x340, 7
                  c.sub      s1, a1
                  nop
                  sltu       s7, t5, t6
                  slt        a1, t6, s8
                  lb         s1, -1573(gp)
                  lbu        s3, -217(gp)
                  c.lui      s4, 31
                  c.lui      ra, 22
                  sb         a1, -1716(gp)
                  fence
                  lbu        a0, 621(gp)
                  lui        a2, 19293
                  sltu       a2, s2, a2
                  lb         s7, -1662(gp)
                  div        s8, t0, a0
                  csrrci     a1, 0x340, 15
                  c.srai     a0, 28
                  lbu        a1, 289(gp) #end riscv_load_store_rand_instr_stream_21
                  la         s11, region_2+3903 #start riscv_load_store_rand_instr_stream_31
                  c.xor      s0, a5
                  lbu        t2, 6(s11)
                  sb         a4, 12(s11)
                  mulhsu     a7, a4, t3
                  lbu        a2, -14(s11)
                  lbu        s1, -5(s11)
                  lbu        s3, -8(s11)
                  mulhsu     zero, zero, s5
                  c.srli     a1, 29
                  lb         ra, -11(s11)
                  lh         a2, -9(s11)
                  lbu        a3, -4(s11)
                  sb         t2, -8(s11)
                  lb         s2, -16(s11)
                  lbu        t2, -6(s11)
                  sra        s1, s1, t6
                  lh         a6, -5(s11)
                  sh         s9, -3(s11)
                  addi       s1, s0, 911
                  lbu        s8, 8(s11)
                  lbu        t5, -2(s11)
                  lbu        a4, -6(s11)
                  sb         a0, 16(s11)
                  lbu        s4, 0(s11)
                  lhu        s0, -7(s11)
                  csrrwi     a2, 0x340, 24
                  sh         s2, 3(s11)
                  lbu        a3, 7(s11)
                  srli       s4, t2, 5
                  srl        ra, gp, a1
                  lbu        s0, 7(s11)
                  lb         ra, 8(s11)
                  sh         t0, -3(s11)
                  lh         s2, 11(s11)
                  fence
                  sb         t4, -4(s11)
                  ori        tp, a4, 284
                  sub        t6, a0, a3
                  lhu        s7, 5(s11)
                  lb         a1, 10(s11)
                  sh         t0, -1(s11)
                  lhu        s7, 13(s11) #end riscv_load_store_rand_instr_stream_31
                  la         s1, region_1+10325 #start riscv_load_store_rand_instr_stream_9
                  sh         t0, 161(s1)
                  lb         s10, -198(s1)
                  c.slli     s10, 5
                  divu       a6, t2, s1
                  sb         t1, -76(s1)
                  csrrw      s3, 0x340, s2
                  sb         gp, -123(s1)
                  lb         t0, -228(s1)
                  csrrw      s6, 0x340, a2
                  sb         s7, 238(s1)
                  c.lui      a7, 7
                  nop
                  lbu        t0, -238(s1)
                  lb         s6, 55(s1)
                  add        a4, s10, a7
                  c.sub      a2, a1
                  sh         a3, 3(s1)
                  lb         a6, -64(s1)
                  rem        t0, s11, s9
                  srli       a4, t5, 5
                  c.andi     a5, -1
                  sb         a7, -184(s1)
                  sb         a1, -202(s1)
                  sb         t2, 34(s1)
                  c.and      a4, a0
                  csrrci     s2, 0x340, 16
                  sh         zero, -91(s1)
                  sb         ra, -38(s1)
                  lb         s2, 166(s1)
                  lw         a3, 147(s1)
                  sh         ra, -25(s1)
                  add        t5, s1, t1
                  sb         t5, 146(s1)
                  c.addi     t2, -1
                  sb         sp, 171(s1)
                  lbu        t0, 134(s1)
                  or         a6, gp, t6
                  lui        t6, 194069
                  slti       s6, a6, 556
                  c.li       t1, 19
                  or         t1, s8, s3
                  sb         s4, -216(s1)
                  slti       a3, a0, 414
                  lbu        s3, -38(s1)
                  fence.i
                  divu       s8, t4, a0
                  c.slli     ra, 3
                  lb         a7, 188(s1)
                  srli       t0, s10, 17
                  ori        s0, s9, 598
                  lb         a3, -1(s1)
                  lhu        a4, -51(s1)
                  csrrsi     s9, 0x340, 1
                  lbu        s4, 83(s1)
                  mulhsu     s0, gp, a3
                  lh         a5, 245(s1)
                  sw         s5, 47(s1)
                  csrrsi     s9, 0x340, 28
                  lhu        a4, 9(s1) #end riscv_load_store_rand_instr_stream_9
                  la         s9, region_0+3866 #start load_store_instr_stream_1
                  la         t4, region_3+324 #start load_store_instr_stream_0
                  sb         s9, 63(t4)
                  sw         t2, -410(s9)
                  lbu        a3, -158(t4)
                  sh         a6, -784(s9)
                  lbu        s10, -394(s9)
                  lh         a0, 196(s9)
                  lbu        s8, 154(t4)
                  lbu        t5, -281(s9) #end load_store_instr_stream_1
                  lb         s3, -52(t4)
                  lh         s6, 72(t4)
                  lhu        a1, 92(t4)
                  lb         s10, 173(t4)
                  sh         s2, 64(t4)
                  lhu        gp, -18(t4) #end load_store_instr_stream_0
                  la         t5, region_4+3379 #start riscv_load_store_rand_instr_stream_66
                  csrrc      s10, 0x340, t4
                  c.srli     a1, 14
                  sb         s1, -10(t5)
                  rem        a5, s8, ra
                  csrrsi     a3, 0x340, 29
                  lbu        s11, -9(t5)
                  ori        t0, a3, 226
                  sb         gp, 14(t5)
                  lw         a1, -15(t5)
                  c.sub      a0, s0
                  lb         t2, 6(t5)
                  c.and      s1, a1
                  lbu        s7, 3(t5)
                  c.slli     s8, 2
                  and        s2, s7, a5
                  c.and      a0, a2
                  c.xor      s0, a4
                  lb         a5, -9(t5)
                  divu       tp, s6, t5
                  lb         a7, 14(t5)
                  divu       gp, s4, a0
                  lb         t2, -16(t5)
                  slti       s0, zero, -490
                  addi       a5, s3, 703
                  nop
                  sb         t5, 2(t5)
                  lb         gp, 4(t5)
                  lhu        a1, 7(t5)
                  mul        ra, a0, t1
                  mulh       s3, s4, s8
                  divu       t0, s9, t1
                  lbu        a7, 10(t5)
                  lb         a0, 16(t5)
                  srai       t4, zero, 10
                  sb         s1, 13(t5)
                  c.or       s0, s1
                  addi       a2, t5, -366
                  divu       t1, s6, s3
                  csrrsi     gp, 0x340, 4
                  c.sub      a0, a1
                  c.slli     a2, 9
                  lb         ra, -2(t5)
                  lb         a3, -5(t5)
                  div        a5, zero, t3
                  lbu        a4, -16(t5)
                  lbu        t0, -7(t5)
                  rem        ra, a0, s1
                  lbu        t4, -16(t5)
                  lhu        s0, 9(t5)
                  remu       s2, s3, a7
                  sh         zero, 9(t5)
                  lb         a5, 16(t5)
                  sb         t3, -8(t5)
                  sub        s9, s7, s3
                  sb         s7, -6(t5)
                  lb         t6, -11(t5)
                  sb         t3, 10(t5) #end riscv_load_store_rand_instr_stream_66
                  la         a0, region_1+3889 #start riscv_load_store_rand_instr_stream_67
                  sltiu      ra, sp, 650
                  remu       zero, gp, s4
                  lb         gp, -249(a0)
                  ori        ra, t3, -673
                  csrrwi     s3, 0x340, 14
                  slli       s10, s7, 12
                  auipc      s3, 822128
                  srl        t5, gp, s8
                  lbu        tp, -136(a0)
                  lh         t4, -85(a0)
                  c.or       s0, s1
                  lb         s8, 32(a0)
                  lhu        t0, 233(a0)
                  c.sub      a2, a4
                  sh         ra, -225(a0)
                  sb         s3, -164(a0)
                  sb         t1, -71(a0)
                  lbu        a2, 234(a0)
                  lb         t1, 197(a0)
                  rem        a5, s8, a2
                  xor        s6, s1, tp
                  csrrwi     a1, 0x340, 18
                  sb         a6, -132(a0)
                  csrrci     s7, 0x340, 17
                  c.srli     a4, 24
                  lh         s8, -177(a0)
                  lhu        s9, -67(a0)
                  srli       a5, ra, 15
                  sb         tp, -20(a0)
                  nop
                  csrrc      a6, 0x340, a5
                  lbu        zero, 191(a0) #end riscv_load_store_rand_instr_stream_67
                  la         tp, region_3+89 #start riscv_load_store_rand_instr_stream_40
                  lhu        a2, 5(tp)
                  csrrci     t2, 0x340, 22
                  c.and      s1, a0
                  lb         s4, -10(tp)
                  c.srli     a2, 14
                  lb         t1, 2(tp)
                  lbu        s1, -3(tp)
                  c.or       a4, s1
                  lb         s8, -9(tp)
                  srli       t5, t4, 11
                  csrrci     s10, 0x340, 26
                  slti       t5, tp, 635
                  lh         gp, 1(tp)
                  lb         s2, 15(tp)
                  lb         a5, 10(tp)
                  sw         t4, 11(tp)
                  nop
                  lbu        s3, 14(tp)
                  nop
                  srli       a3, s2, 31
                  lb         a4, 3(tp)
                  add        gp, tp, s8
                  sb         s0, 8(tp)
                  lb         s3, 2(tp)
                  lb         s11, -12(tp)
                  addi       a6, a4, -292
                  c.addi     s6, 27
                  srai       a5, a3, 21
                  srli       s10, a7, 21
                  lbu        s10, 2(tp)
                  csrrci     a7, 0x340, 26
                  csrrci     s10, 0x340, 28
                  lbu        s0, 10(tp)
                  csrrw      a3, 0x340, a2
                  xor        s7, s2, ra
                  sb         s8, -5(tp)
                  slt        a7, t3, s5
                  csrrw      a1, 0x340, a1
                  lbu        s9, -12(tp)
                  c.li       s0, -1
                  nop
                  lbu        s0, 2(tp)
                  fence.i
                  lbu        s4, 16(tp)
                  lbu        s9, -16(tp) #end riscv_load_store_rand_instr_stream_40
                  la         t6, region_3+165 #start riscv_load_store_rand_instr_stream_46
                  and        s1, s8, s6
                  divu       a1, t4, s8
                  lb         t1, 17(t6)
                  sb         a1, -76(t6)
                  sltiu      gp, t2, -34
                  addi       gp, gp, -552
                  addi       a1, a1, 12
                  sltu       s10, s3, s0
                  xor        t1, a6, t4
                  sb         s8, 129(t6)
                  csrrc      s9, 0x340, a2
                  c.nop
                  lbu        a1, 149(t6)
                  remu       gp, a7, t2
                  lh         a4, -15(t6)
                  mulhu      a7, t2, zero
                  sltiu      a5, gp, 38
                  sb         a5, 244(t6)
                  lb         s6, 165(t6)
                  slti       s2, s5, 961
                  lb         ra, -86(t6)
                  fence.i
                  sh         t1, 107(t6)
                  sb         t1, 130(t6)
                  c.nop
                  lb         s2, -163(t6)
                  sltu       a7, a6, gp
                  c.xor      s1, a0
                  c.xor      s0, s0
                  c.add      s1, s7
                  lb         s6, 109(t6)
                  lb         t4, 158(t6) #end riscv_load_store_rand_instr_stream_46
                  la         a4, region_1+10327 #start riscv_load_store_rand_instr_stream_48
                  xori       s0, t1, -958
                  lb         a5, -13(a4)
                  sb         sp, -46(a4)
                  lbu        zero, -30(a4)
                  lb         t0, 22(a4)
                  csrrwi     t4, 0x340, 1
                  sb         sp, -52(a4)
                  mul        tp, t3, s1
                  lb         s2, 58(a4)
                  lhu        t0, 17(a4)
                  lbu        a7, -46(a4)
                  lhu        s7, 61(a4)
                  lbu        tp, 55(a4)
                  sh         s0, 57(a4)
                  c.andi     a3, 24
                  fence.i
                  lhu        t1, 25(a4)
                  sw         s6, -59(a4)
                  slli       t4, s11, 28
                  srl        tp, t1, s5
                  c.sub      a0, s1
                  lhu        t6, 43(a4)
                  lb         s9, 58(a4)
                  slti       t6, s10, -981
                  auipc      s3, 814543
                  c.xor      s0, s1
                  sh         s0, 35(a4) #end riscv_load_store_rand_instr_stream_48
                  la         gp, region_4+2229 #start riscv_load_store_rand_instr_stream_44
                  c.nop
                  lhu        s10, -235(gp)
                  lb         a1, 20(gp)
                  sh         t4, -89(gp)
                  sb         s3, 158(gp)
                  remu       a4, gp, sp
                  lbu        t6, -82(gp)
                  lb         ra, 248(gp)
                  c.srli     a2, 8
                  sw         s8, 115(gp)
                  sh         s10, 189(gp)
                  lbu        s3, 57(gp)
                  sb         a7, 58(gp)
                  lbu        zero, 131(gp)
                  sb         s5, 92(gp)
                  sh         t2, -11(gp)
                  lb         a2, -100(gp)
                  sw         t0, 139(gp)
                  c.add      a1, tp
                  lbu        s9, -59(gp)
                  fence.i
                  c.slli     t0, 31
                  sb         gp, -74(gp)
                  lb         ra, -23(gp)
                  c.lui      a2, 6
                  lhu        tp, 209(gp)
                  lb         a6, 138(gp)
                  sb         t0, -120(gp)
                  sb         a7, -90(gp)
                  lb         s4, 249(gp)
                  sub        s7, s5, a6
                  lh         s0, -187(gp)
                  lhu        t1, 51(gp)
                  sb         a0, -236(gp)
                  xor        a4, s10, s2
                  sltiu      a4, s9, -240
                  sh         s5, -11(gp)
                  lbu        s11, -25(gp) #end riscv_load_store_rand_instr_stream_44
                  la         t6, region_0+3023 #start load_store_instr_stream_1
                  la         t2, region_2+3841 #start load_store_instr_stream_0
                  lb         a3, -89(t2)
                  lbu        s2, 250(t2)
                  lbu        s7, -38(t6)
                  sw         gp, 61(t6)
                  lbu        a5, 20(t2)
                  sb         s9, -2(t6)
                  lb         tp, 74(t2)
                  lh         s7, 223(t2)
                  lbu        a6, -88(t2)
                  lb         ra, -62(t6)
                  lb         a7, -204(t2)
                  lbu        s1, 30(t6)
                  lw         zero, 25(t6) #end load_store_instr_stream_1
                  lhu        a0, 85(t2) #end load_store_instr_stream_0
                  la         a6, region_2+6133 #start riscv_load_store_rand_instr_stream_88
                  slt        t0, a5, s11
                  sb         s11, -67(a6)
                  lb         a3, -198(a6)
                  sb         t4, 62(a6)
                  sb         ra, 241(a6)
                  lhu        t2, -157(a6)
                  c.addi     s7, 7
                  sb         a5, -96(a6)
                  lbu        s2, -146(a6)
                  lb         zero, -55(a6)
                  sb         s4, 150(a6)
                  mulhsu     s2, t0, a6
                  srl        s3, s8, a4
                  lb         s7, -68(a6)
                  lbu        t1, -164(a6)
                  lbu        s10, -114(a6)
                  sb         t5, -94(a6)
                  lb         s4, 147(a6)
                  c.li       t2, -1
                  lui        s2, 570392
                  mulh       a2, a0, a7
                  lbu        zero, 122(a6)
                  lh         a5, -135(a6)
                  sh         zero, -79(a6)
                  fence.i
                  c.addi     t0, 22
                  lh         a7, -179(a6)
                  lb         s7, -165(a6)
                  c.srai     s0, 31
                  lbu        a4, 243(a6)
                  srl        gp, ra, a7
                  div        a5, gp, a6
                  lbu        a3, -105(a6)
                  lbu        t1, -138(a6)
                  or         a2, s4, a6
                  c.srai     a2, 4
                  csrrwi     tp, 0x340, 6
                  lbu        t2, 136(a6)
                  lbu        s2, -14(a6)
                  lw         a3, -101(a6)
                  lb         gp, 45(a6)
                  lb         s1, 104(a6)
                  srai       s0, sp, 19
                  lh         t2, -99(a6) #end riscv_load_store_rand_instr_stream_88
                  la         a4, region_4+2373 #start riscv_load_store_rand_instr_stream_18
                  divu       a7, s4, s7
                  srai       t6, a7, 27
                  slt        ra, a7, s10
                  remu       a7, gp, s5
                  c.xor      a3, a2
                  fence.i
                  lb         t1, -2(a4)
                  c.mv       tp, gp
                  lhu        s11, -1(a4)
                  sw         s8, -1(a4)
                  lbu        t1, -8(a4)
                  lhu        tp, 9(a4)
                  sb         a1, 15(a4)
                  sb         s2, -8(a4)
                  mulhsu     t6, t0, t5
                  csrrci     s7, 0x340, 11
                  srli       t2, s9, 28
                  c.sub      a2, a2
                  lhu        t4, -15(a4)
                  sh         s8, 15(a4)
                  fence
                  divu       s10, a1, a7
                  sb         s2, 14(a4)
                  srl        gp, t1, s2
                  lh         a3, -7(a4)
                  sb         a1, -13(a4)
                  mulhu      tp, s7, s11
                  csrrs      s1, 0x340, tp
                  sub        s7, s5, t2
                  ori        s3, t4, 335
                  c.mv       t0, a3
                  c.slli     s8, 25
                  lw         t2, 3(a4)
                  c.and      s0, a1
                  sb         a0, -9(a4)
                  sb         s9, 4(a4) #end riscv_load_store_rand_instr_stream_18
                  la         a0, region_4+3376 #start load_store_instr_stream_2
                  la         s0, region_4+2541 #start load_store_instr_stream_3
                  la         s7, region_4+835 #start load_store_instr_stream_1
                  la         t6, region_4+3661 #start load_store_instr_stream_4
                  lbu        a5, 2(t6)
                  lb         t0, -10(s0)
                  lbu        gp, 70(s7)
                  lb         t1, -139(a0)
                  sb         gp, -10(t6)
                  la         t5, region_4+2432 #start load_store_instr_stream_0
                  sb         zero, 8(s0)
                  lbu        a7, 1285(t5)
                  sb         s7, -53(a0)
                  sb         a3, 10(t6)
                  lb         a5, -208(s7)
                  lb         a3, 44(t5)
                  lh         zero, 234(a0)
                  lhu        a5, -183(s7)
                  lbu        t1, -161(a0)
                  sh         gp, 145(s7)
                  lb         s1, 12(s0)
                  lb         t0, -920(t5)
                  sw         tp, -5(t6)
                  lb         s11, -143(s7)
                  lb         ra, -10(t6)
                  lbu        s4, -84(s7)
                  lbu        s11, -14(t6)
                  sh         a0, -11(s0)
                  lbu        t1, -7(t6)
                  sb         s8, -1805(t5)
                  lhu        a5, -53(s7) #end load_store_instr_stream_1
                  lb         s4, 81(a0) #end load_store_instr_stream_2
                  lhu        s2, 3(s0)
                  lbu        t0, 982(t5)
                  lbu        tp, 8(s0)
                  lw         t0, -1(t6)
                  lb         s10, -1745(t5)
                  lb         s10, 6(s0) #end load_store_instr_stream_3
                  lb         s4, -3(t6) #end load_store_instr_stream_4
                  lb         a2, -1413(t5) #end load_store_instr_stream_0
                  la         a6, region_2+2520 #start riscv_load_store_rand_instr_stream_30
                  sh         tp, 2(a6)
                  c.lui      tp, 8
                  lbu        a5, -9(a6)
                  sb         a0, 3(a6)
                  lb         s8, 3(a6)
                  lb         a0, -11(a6)
                  lbu        a7, -2(a6)
                  lhu        s8, -2(a6)
                  csrrci     a3, 0x340, 2
                  sh         a0, -14(a6)
                  lui        a1, 581288
                  lb         a7, -5(a6)
                  mul        s8, tp, zero
                  lb         zero, 15(a6)
                  sb         t4, -1(a6)
                  csrrwi     s3, 0x340, 5
                  lh         s1, -16(a6)
                  c.srli     a3, 7
                  and        a5, zero, ra
                  sb         t1, -4(a6)
                  lb         s9, -7(a6)
                  sb         t4, -9(a6)
                  c.and      a3, a2
                  sb         a0, -6(a6)
                  lh         a1, -4(a6)
                  sb         ra, 2(a6)
                  sltu       s7, a2, tp
                  lb         s9, -9(a6)
                  slt        s10, t5, zero
                  and        a3, s11, a1
                  c.lui      s8, 7
                  sra        s10, s1, a2
                  lhu        s11, -6(a6)
                  lbu        s1, -9(a6)
                  lhu        s10, 8(a6)
                  xori       s8, a0, -726
                  sb         t5, 15(a6)
                  sb         s9, -7(a6)
                  lbu        s9, -3(a6)
                  c.nop
                  div        s4, s8, a1
                  slti       s6, t2, -1013
                  slt        ra, t3, t1
                  lbu        s9, 11(a6)
                  lb         t6, -15(a6) #end riscv_load_store_rand_instr_stream_30
                  la         gp, region_2+4457 #start riscv_load_store_rand_instr_stream_29
                  nop
                  sub        s6, zero, ra
                  csrrwi     s7, 0x340, 23
                  lbu        t1, 16(gp)
                  lw         s0, 11(gp)
                  sb         s0, -14(gp)
                  lbu        s11, 7(gp)
                  andi       t4, s4, 670
                  mul        s4, s11, tp
                  lbu        a0, -1(gp)
                  lb         a5, 7(gp)
                  lbu        a4, 16(gp)
                  sltu       s6, s8, t0
                  and        s3, s5, a6
                  lbu        s4, 1(gp)
                  lbu        t0, 12(gp)
                  c.and      s1, s1
                  lhu        t5, 5(gp)
                  c.addi     a7, 23
                  sb         t5, 16(gp)
                  c.add      t0, gp
                  c.srli     a2, 11
                  c.add      s3, s11
                  c.li       tp, 5
                  remu       s4, s6, s3
                  lb         s9, 11(gp)
                  sra        s9, s8, t5
                  c.lui      a7, 6
                  lh         s8, -11(gp)
                  sltu       s3, a6, zero
                  nop
                  c.sub      a0, a0
                  srai       s10, a5, 30
                  csrrci     s9, 0x340, 16
                  lb         a6, -14(gp)
                  c.li       ra, 20
                  csrrs      a0, 0x340, a1
                  c.add      a2, s11
                  sh         ra, 13(gp)
                  fence.i
                  add        t4, t2, t4
                  lb         a2, 4(gp)
                  rem        s10, tp, a3
                  sb         t2, 10(gp)
                  lb         s10, -8(gp)
                  c.nop
                  sb         t4, 4(gp) #end riscv_load_store_rand_instr_stream_29
                  la         s8, region_3+174 #start riscv_load_store_rand_instr_stream_34
                  sb         s3, 44(s8)
                  ori        a7, s7, -717
                  remu       zero, a4, t6
                  sw         s8, -30(s8)
                  mulhsu     ra, a3, t0
                  lhu        t1, -44(s8)
                  c.xor      s0, s0
                  and        a7, t2, s6
                  sw         tp, 38(s8)
                  sll        s2, s0, a3
                  lbu        t2, -9(s8)
                  csrrsi     s9, 0x340, 12
                  lbu        s1, 8(s8)
                  lb         gp, -54(s8)
                  sb         t1, 25(s8)
                  lh         s3, -24(s8)
                  and        t6, t0, s4
                  lbu        t0, -49(s8)
                  remu       s6, s6, gp
                  sw         t1, 42(s8)
                  csrrwi     a7, 0x340, 29
                  and        zero, s1, gp
                  c.li       gp, -1
                  lh         s0, -46(s8) #end riscv_load_store_rand_instr_stream_34
                  la         t4, region_3+188 #start load_store_instr_stream_1
                  la         s3, region_3+82 #start load_store_instr_stream_0
                  lb         t0, 387(s3)
                  sh         a3, 48(t4)
                  lbu        a5, -59(s3)
                  sw         a4, 150(s3)
                  lb         s11, -45(t4)
                  sh         t4, -80(s3)
                  lb         s10, -21(t4)
                  lb         zero, 8(s3)
                  lhu        a6, 50(s3)
                  sb         a1, -29(t4)
                  lbu        a1, 33(t4)
                  lhu        s8, 26(t4)
                  sb         t0, 113(s3)
                  lbu        gp, -41(t4) #end load_store_instr_stream_1
                  lb         a3, 278(s3)
                  sb         sp, 313(s3) #end load_store_instr_stream_0
                  la         tp, region_3+144 #start riscv_load_store_rand_instr_stream_32
                  lbu        ra, 77(tp)
                  lb         s8, -127(tp)
                  sb         s1, 321(tp)
                  lb         s10, -125(tp)
                  c.slli     s4, 24
                  sb         a0, -35(tp)
                  lb         s8, -23(tp)
                  sh         a7, 304(tp)
                  lw         gp, 108(tp)
                  lb         t5, -133(tp)
                  sltu       t1, a7, t2
                  c.slli     s2, 7
                  div        a4, s11, gp
                  lbu        a7, -91(tp)
                  lbu        a5, -69(tp)
                  c.nop
                  lb         a1, -124(tp)
                  andi       a3, t0, -672
                  divu       a5, s7, sp
                  mulh       a6, a7, gp
                  c.addi     ra, -1
                  lbu        a6, -33(tp)
                  csrrsi     a3, 0x340, 3
                  lbu        a5, 227(tp)
                  sb         t3, 44(tp)
                  sb         t4, 327(tp)
                  c.lui      s7, 13
                  lbu        a5, 255(tp)
                  lh         s3, -122(tp)
                  remu       s0, a2, s3
                  and        s7, gp, s11
                  lhu        ra, 244(tp)
                  sra        s4, gp, a5
                  lb         s1, 75(tp) #end riscv_load_store_rand_instr_stream_32
                  la         a5, region_0+122 #start riscv_load_store_rand_instr_stream_58
                  sb         sp, 75(a5)
                  sb         a0, 110(a5)
                  c.addi     s1, -1
                  lbu        t0, -73(a5)
                  sb         s2, 255(a5)
                  c.and      a3, a2
                  sh         a7, 192(a5)
                  sb         t4, 252(a5)
                  lui        t0, 265048
                  srli       s9, a5, 1
                  lb         s1, 43(a5)
                  sh         a0, -90(a5)
                  lui        a3, 736830
                  lhu        s0, 256(a5)
                  xori       a4, t1, -481
                  rem        a2, s8, a1
                  fence.i
                  mulhu      s6, t4, s4
                  lb         a0, 135(a5)
                  lb         s4, 240(a5)
                  c.xor      a0, a5
                  lbu        s0, 99(a5)
                  lbu        s10, -49(a5)
                  lw         s6, 158(a5)
                  xor        t0, t4, t2
                  xori       t5, t1, -595
                  ori        a2, a4, -126
                  srli       a2, s4, 11
                  xori       s2, zero, 1018
                  c.sub      a2, a5
                  lb         s10, 21(a5)
                  csrrci     s0, 0x340, 12
                  lbu        t6, -2(a5)
                  lbu        zero, 178(a5)
                  lh         tp, 168(a5)
                  lbu        a1, -8(a5)
                  sltu       s11, a0, sp
                  or         a2, a4, a2
                  mulh       s9, s6, t4
                  c.slli     a4, 27
                  sb         t1, 7(a5)
                  c.and      a4, a4
                  c.addi     a4, 31
                  sll        t6, t3, a1
                  lh         zero, 148(a5)
                  lbu        s1, 40(a5)
                  xori       t1, a1, 4
                  sw         tp, -82(a5)
                  srli       s0, s10, 16
                  lb         s8, 171(a5)
                  csrrwi     a4, 0x340, 24
                  c.add      t5, s9
                  lbu        a6, -9(a5)
                  sb         a2, 8(a5)
                  lh         a2, -66(a5)
                  sh         t4, 54(a5) #end riscv_load_store_rand_instr_stream_58
                  la         a4, region_3+465 #start riscv_load_store_rand_instr_stream_69
                  c.and      a3, a0
                  slli       s8, s4, 21
                  sb         s4, -12(a4)
                  lhu        a7, -9(a4)
                  lb         t6, -8(a4)
                  sb         s10, -2(a4)
                  c.and      a3, a4
                  lb         s3, 6(a4)
                  lbu        s3, -6(a4)
                  and        s8, s5, s9
                  lbu        s2, 3(a4)
                  csrrw      tp, 0x340, t4
                  lb         a3, 5(a4)
                  srli       zero, t6, 20
                  auipc      t6, 236134
                  slti       ra, s9, 271
                  c.add      s4, t2
                  mul        t2, t6, tp
                  csrrwi     a2, 0x340, 21
                  sh         s2, 15(a4)
                  srli       a0, s9, 16
                  csrrwi     s1, 0x340, 17
                  sll        ra, a5, t1
                  sb         t6, -15(a4)
                  lbu        s2, 16(a4)
                  sb         gp, 6(a4)
                  c.xor      s0, a1
                  lb         a5, -11(a4)
                  csrrs      t0, 0x340, s8
                  c.lui      a6, 6
                  rem        a6, sp, s11
                  xori       s11, t2, -810
                  lb         s3, 9(a4)
                  lbu        a0, 13(a4)
                  c.nop
                  lb         s6, -10(a4)
                  sh         s11, 5(a4)
                  lh         s1, 5(a4)
                  c.add      s8, ra
                  or         s1, a3, a3
                  lb         s11, 8(a4)
                  sb         a1, -16(a4)
                  xor        s8, t1, s5
                  lbu        gp, 14(a4)
                  sltu       s7, sp, s8
                  div        a7, a3, s11
                  sb         s11, 8(a4)
                  c.and      a1, s0
                  lbu        a7, 2(a4) #end riscv_load_store_rand_instr_stream_69
                  la         gp, region_2+736 #start riscv_load_store_rand_instr_stream_27
                  lb         s3, -251(gp)
                  sw         zero, 220(gp)
                  sh         s6, 164(gp)
                  fence.i
                  c.mv       s6, a1
                  slt        a7, s4, s9
                  srai       a1, t3, 4
                  xor        ra, sp, zero
                  lb         a3, 249(gp)
                  srai       a5, s6, 5
                  csrrc      s3, 0x340, t4
                  sltiu      s3, s5, 488
                  srli       s10, gp, 23
                  lb         t4, -165(gp)
                  lui        t4, 640543
                  sb         sp, 17(gp)
                  andi       a1, a1, 842
                  mulhsu     a5, t6, sp
                  lb         a1, -252(gp)
                  add        a3, a7, ra
                  csrrwi     s6, 0x340, 30
                  lh         s9, -212(gp)
                  lh         s4, 126(gp)
                  lb         a0, 225(gp)
                  lb         s6, -109(gp)
                  lhu        t1, -88(gp)
                  lh         s11, -202(gp)
                  lh         a4, -122(gp)
                  sb         t0, -199(gp)
                  sb         s10, -207(gp)
                  csrrci     zero, 0x340, 31
                  lbu        a0, -165(gp)
                  csrrwi     a5, 0x340, 20
                  csrrwi     a3, 0x340, 23
                  c.li       t2, -1
                  nop
                  lb         tp, -77(gp)
                  xor        a0, sp, s10
                  sltiu      a7, a7, 117
                  fence
                  c.or       a3, a2
                  c.slli     s1, 7
                  srli       a6, s6, 19
                  sb         gp, 51(gp)
                  lbu        s1, 198(gp)
                  fence
                  sh         a0, 150(gp)
                  lbu        s3, -61(gp)
                  sra        a6, ra, zero
                  lbu        s11, 111(gp) #end riscv_load_store_rand_instr_stream_27
                  la         a5, region_0+1264 #start load_store_instr_stream_1
                  la         ra, region_0+2990 #start load_store_instr_stream_0
                  lbu        s10, 17(a5)
                  sb         s11, -19(ra)
                  lbu        a7, -49(ra)
                  lb         t1, -10(ra)
                  lb         a2, -37(ra)
                  lb         t6, -35(a5)
                  sw         a7, -8(a5)
                  sb         a7, 60(ra)
                  sw         s2, -60(a5)
                  lbu        s8, -36(ra)
                  lbu        s2, 240(a5)
                  lbu        s10, -54(ra)
                  lbu        gp, 19(ra)
                  sh         s8, -232(a5) #end load_store_instr_stream_1
                  sb         s3, 57(ra) #end load_store_instr_stream_0
                  la         s8, region_1+12345 #start load_store_instr_stream_2
                  la         a1, region_2+69 #start load_store_instr_stream_1
                  la         s1, region_4+2124 #start load_store_instr_stream_0
                  sb         s5, 1132(s8)
                  lb         t2, -1426(s8)
                  lh         a4, -49(a1)
                  sb         s2, -10(s1)
                  lh         s9, 1627(s8)
                  sh         zero, 51(a1)
                  lbu        s6, -5(s1)
                  sb         t3, 1798(s8)
                  lhu        s11, -31(a1)
                  lbu        a4, -1422(s8)
                  sb         s5, -16(s1)
                  lhu        s6, -61(a1)
                  sb         s6, -1708(s8)
                  sh         tp, -16(s1)
                  sb         a1, 1698(s8)
                  lb         t0, -19(a1)
                  sh         s9, 14(s1)
                  sb         t4, -397(s8)
                  sb         s0, 14(a1)
                  lbu        s10, 11(s1)
                  lh         s7, -17(a1) #end load_store_instr_stream_1
                  sh         s8, 0(s1)
                  sb         a6, -1164(s8) #end load_store_instr_stream_2
                  lbu        s4, -8(s1) #end load_store_instr_stream_0
                  la         a4, region_3+156 #start riscv_load_store_rand_instr_stream_41
                  lh         s4, 268(a4)
                  sw         s11, -152(a4)
                  c.slli     a1, 27
                  slli       a5, a0, 12
                  mul        t2, a3, s1
                  slt        s0, s9, t4
                  sll        t4, t6, t5
                  lui        s0, 530346
                  lb         s4, -33(a4)
                  c.xor      a5, s1
                  addi       s0, a5, -430
                  c.and      a1, a0
                  lbu        a1, 321(a4)
                  lbu        a0, 9(a4)
                  csrrwi     a7, 0x340, 10
                  fence
                  sb         gp, -155(a4)
                  sb         sp, 1(a4)
                  remu       ra, a6, a3
                  lbu        a1, -77(a4)
                  srai       zero, s1, 13
                  c.lui      s11, 18
                  divu       s4, s3, a6
                  sltu       s4, s1, a4
                  lbu        s1, -127(a4)
                  lhu        a1, 274(a4)
                  sb         a2, -33(a4)
                  mulh       s7, ra, s10
                  csrrsi     a6, 0x340, 27
                  srai       t2, s8, 15
                  sub        zero, a5, s1
                  csrrs      tp, 0x340, t5
                  csrrs      s3, 0x340, s11
                  sltiu      s1, s10, -922
                  remu       s6, t3, a5
                  sb         s5, -56(a4)
                  lb         a2, -46(a4) #end riscv_load_store_rand_instr_stream_41
                  la         s0, region_4+1202 #start riscv_load_store_rand_instr_stream_39
                  c.andi     a1, 1
                  sltiu      s11, tp, -337
                  addi       s11, s3, 954
                  slt        a3, ra, s0
                  lb         a4, 599(s0)
                  lbu        gp, -799(s0)
                  sll        t6, s11, a7
                  c.and      a2, a0
                  lui        s10, 205080
                  csrrwi     gp, 0x340, 25
                  lbu        tp, 1226(s0)
                  fence
                  c.slli     s8, 7
                  xori       t1, tp, -826
                  c.srai     a0, 5
                  lb         s11, 1545(s0)
                  divu       a3, s4, a7
                  lb         a4, -176(s0)
                  sb         s0, -1071(s0)
                  csrrwi     s8, 0x340, 14
                  lb         a0, 521(s0)
                  lb         s3, -520(s0)
                  sb         a7, 1463(s0)
                  lb         zero, -220(s0)
                  c.xor      a2, a0
                  mulhsu     t2, s0, a5
                  c.xor      a1, a2
                  lw         t5, 338(s0)
                  lh         s11, 1330(s0) #end riscv_load_store_rand_instr_stream_39
                  la         t4, region_4+3740 #start load_store_instr_stream_0
                  lbu        s7, 57(t4)
                  la         s4, region_4+3720 #start load_store_instr_stream_3
                  la         ra, region_4+1308 #start load_store_instr_stream_2
                  lh         a0, -1404(s4)
                  la         a4, region_4+1247 #start load_store_instr_stream_1
                  lbu        tp, -1005(s4)
                  lbu        s6, -37(ra)
                  sb         s3, -44(a4)
                  sh         s2, -18(t4)
                  lh         s0, -5(a4)
                  sb         t3, -1959(s4)
                  lbu        t0, 60(t4)
                  lbu        t0, -1118(s4)
                  sb         t1, 23(a4)
                  lb         a1, -377(s4)
                  sw         a5, -59(a4)
                  lb         s7, -30(a4)
                  lb         t5, 19(ra)
                  lbu        s11, -41(ra)
                  lbu        t5, -57(a4)
                  lb         s3, -55(t4)
                  lbu        zero, -611(s4)
                  lhu        s9, 38(ra)
                  lbu        gp, -11(t4)
                  sb         a2, -64(ra)
                  lb         a0, 21(t4)
                  lb         s9, -17(ra)
                  lb         t6, -587(s4)
                  sb         a3, -22(t4)
                  lb         s6, -57(ra)
                  sb         s0, 2(a4)
                  sb         s10, 3(a4)
                  sb         a0, 9(ra)
                  lb         t1, -57(s4)
                  sb         a7, -28(a4) #end load_store_instr_stream_1
                  lh         a1, -460(s4)
                  sb         t1, 11(ra)
                  sb         s2, -1421(s4) #end load_store_instr_stream_3
                  sb         a1, -61(ra) #end load_store_instr_stream_2
                  sb         t2, 21(t4) #end load_store_instr_stream_0
                  la         ra, region_1+6164 #start riscv_load_store_rand_instr_stream_2
                  slli       tp, s3, 17
                  lbu        a2, -17(ra)
                  lui        s7, 40996
                  sb         gp, -50(ra)
                  lhu        zero, -52(ra)
                  csrrwi     gp, 0x340, 15
                  auipc      a4, 660841
                  csrrc      s8, 0x340, s10
                  nop
                  nop
                  lbu        s0, -5(ra)
                  lb         t6, -15(ra)
                  c.or       s1, s0
                  csrrsi     t2, 0x340, 24
                  srai       s6, s5, 19
                  fence.i
                  andi       gp, a6, 715
                  lhu        gp, -50(ra)
                  srai       s0, t0, 29
                  lb         t2, 22(ra)
                  sltiu      s8, a4, 530
                  lb         s1, 44(ra)
                  lbu        s0, 23(ra)
                  lbu        t5, 45(ra)
                  sll        a5, a1, a1
                  lbu        t4, 7(ra)
                  c.or       a5, a3
                  lhu        a5, -22(ra)
                  lh         a6, -50(ra)
                  andi       s8, t0, 978
                  lbu        s10, 19(ra)
                  lb         s2, -26(ra)
                  rem        a2, a1, t0
                  csrrs      s4, 0x340, s8
                  slli       s11, a2, 25
                  xori       a1, zero, 679
                  ori        s1, a6, 860
                  srai       s10, a4, 31
                  sb         s4, -1(ra)
                  c.lui      a5, 23
                  c.sub      s1, a2
                  lb         s2, 11(ra) #end riscv_load_store_rand_instr_stream_2
                  la         t4, region_0+2938 #start riscv_load_store_rand_instr_stream_70
                  lhu        s2, -4(t4)
                  sub        tp, a4, a6
                  auipc      s9, 541937
                  lbu        s6, 9(t4)
                  lb         t1, 10(t4)
                  lbu        ra, 15(t4)
                  lhu        t2, 8(t4)
                  sb         tp, -3(t4)
                  lbu        a5, -6(t4)
                  csrrsi     t2, 0x340, 27
                  lh         s4, 2(t4)
                  rem        s2, s10, s11
                  c.srli     a5, 20
                  sb         t5, -1(t4)
                  mul        a6, a0, s11
                  sltiu      a2, s10, 421
                  lb         a4, 11(t4)
                  and        gp, a4, s6
                  xor        a2, a3, t1
                  lh         gp, 4(t4)
                  lb         s10, 8(t4)
                  lbu        s8, -9(t4)
                  slt        t1, t1, t5
                  ori        a4, s9, -774
                  sltiu      s10, a3, 578
                  lbu        a4, -15(t4)
                  lb         t6, 13(t4)
                  sh         s6, -4(t4)
                  srai       s11, t5, 13
                  mulhu      s4, s8, a7
                  sb         s9, 9(t4)
                  lui        s4, 841610
                  csrrc      a7, 0x340, a3
                  lhu        zero, 2(t4)
                  c.andi     a0, -1
                  lh         a7, 8(t4)
                  csrrci     t6, 0x340, 3
                  lbu        s4, -11(t4)
                  xor        a1, s4, a6
                  c.add      t5, a3
                  mul        s6, zero, t5
                  c.add      a3, t0
                  lw         s11, 6(t4)
                  c.xor      a0, s0
                  remu       ra, t2, t3
                  lb         t6, -16(t4)
                  div        a3, t6, t1
                  lbu        a3, -9(t4)
                  c.or       s1, a5
                  lbu        s9, 9(t4)
                  sh         t3, 4(t4)
                  divu       t1, t4, s9
                  c.srli     a1, 18
                  c.li       t1, -1
                  lb         s2, -15(t4)
                  mulhu      ra, t2, s4
                  lh         t1, -12(t4) #end riscv_load_store_rand_instr_stream_70
                  la         a3, region_1+14613 #start riscv_load_store_rand_instr_stream_84
                  lbu        a0, 2(a3)
                  mulhu      a4, a5, s11
                  srl        zero, t0, s8
                  rem        s9, s6, s6
                  csrrsi     s10, 0x340, 17
                  sb         t4, 11(a3)
                  srl        t2, t3, t6
                  csrrw      s1, 0x340, t6
                  sb         a1, -13(a3)
                  lw         t4, -13(a3)
                  c.or       a2, s1
                  and        gp, t5, s1
                  ori        t2, t3, -209
                  csrrw      s2, 0x340, t4
                  sb         sp, -6(a3)
                  sh         s8, 5(a3)
                  ori        a5, a1, -681
                  c.mv       s9, ra
                  srl        a5, s4, s3
                  sb         s1, 12(a3)
                  slli       s2, a6, 9
                  lb         t0, -15(a3)
                  sb         s5, -7(a3)
                  lh         t6, 1(a3)
                  csrrc      gp, 0x340, s6
                  xor        t0, s11, sp
                  lhu        s0, -13(a3)
                  c.addi     a1, 7
                  lw         a5, 3(a3)
                  lbu        a7, 13(a3)
                  c.lui      gp, 1
                  c.srai     a0, 5
                  sb         a1, -3(a3)
                  lh         t2, -7(a3)
                  srl        t6, a4, s3
                  srl        a4, a7, t0
                  csrrci     a6, 0x340, 14
                  lb         s3, -10(a3)
                  lh         s7, -3(a3)
                  sra        s8, gp, t1
                  sw         a3, 11(a3)
                  sub        a2, s11, s11
                  fence
                  lb         a4, 6(a3)
                  c.addi     t5, -1
                  sb         a3, 16(a3)
                  lbu        s7, 10(a3) #end riscv_load_store_rand_instr_stream_84
                  la         s6, region_0+1893 #start load_store_instr_stream_0
                  la         t0, region_0+3948 #start load_store_instr_stream_1
                  lb         s8, 1358(s6)
                  lbu        s10, 6(t0)
                  lb         a4, 11(t0)
                  lhu        s2, -1719(s6)
                  lh         s11, 12(t0)
                  lbu        t5, -781(s6)
                  lb         s8, 7(t0)
                  lh         s2, 10(t0)
                  lb         s4, -520(s6)
                  lhu        t6, -2(t0)
                  lbu        s3, 6(t0) #end load_store_instr_stream_1
                  lbu        s9, 207(s6) #end load_store_instr_stream_0
                  la         t2, region_0+2747 #start riscv_load_store_rand_instr_stream_79
                  lbu        a2, -10(t2)
                  lbu        t6, 7(t2)
                  slt        a4, a0, s6
                  mulhsu     a4, t5, gp
                  sb         s11, -12(t2)
                  sub        a2, t3, t2
                  c.xor      a5, s0
                  fence.i
                  lbu        s10, 11(t2)
                  lb         s1, -1(t2)
                  c.sub      a5, a5
                  and        s1, s4, s3
                  lbu        s4, 16(t2)
                  csrrsi     zero, 0x340, 19
                  csrrsi     a5, 0x340, 20
                  sltiu      t0, s9, 170
                  lbu        ra, 7(t2)
                  andi       s4, s4, 467
                  lw         s9, 1(t2)
                  sh         t5, -15(t2)
                  c.add      a7, s4
                  lbu        t6, -2(t2)
                  sltu       s9, t6, t4
                  sh         a7, 15(t2)
                  lui        s10, 796229
                  c.sub      a2, a2
                  csrrsi     tp, 0x340, 2
                  lb         s3, 12(t2)
                  lhu        s11, 7(t2)
                  lb         t5, 4(t2)
                  c.li       s4, 10
                  mul        a2, a5, s0
                  sb         t2, -12(t2)
                  lh         s11, 9(t2)
                  c.and      a1, a4
                  or         t1, s6, a0
                  c.addi     s10, 15
                  lb         t1, 14(t2)
                  auipc      gp, 416058
                  sll        a0, s11, a2
                  c.srai     a1, 10
                  srli       s7, s1, 18
                  lui        a7, 142113
                  sb         ra, 15(t2)
                  slli       zero, s10, 8
                  lhu        a2, 11(t2)
                  lb         s4, 10(t2)
                  sb         s6, -16(t2) #end riscv_load_store_rand_instr_stream_79
                  la         s6, region_4+1496 #start load_store_instr_stream_2
                  lhu        s2, 246(s6)
                  la         a2, region_3+493 #start load_store_instr_stream_3
                  lhu        t1, 130(s6)
                  sb         t4, -188(a2)
                  la         gp, region_2+5160 #start load_store_instr_stream_0
                  la         s11, region_0+248 #start load_store_instr_stream_1
                  lb         t5, -138(a2)
                  sb         s3, -43(s6)
                  sb         s0, 15(gp)
                  lhu        s1, -359(a2)
                  lbu        a7, -253(s6)
                  lb         t4, -6(s11)
                  sh         a1, -132(s6)
                  sw         t6, -96(s6)
                  sb         a1, -9(gp)
                  sb         s7, -358(a2)
                  sb         t0, 9(s11)
                  sb         t0, 5(gp)
                  lb         a1, -15(gp)
                  lhu        a3, -299(a2)
                  sw         tp, -12(s11)
                  sb         gp, -334(a2)
                  lhu        a1, -246(s6) #end load_store_instr_stream_2
                  sh         s3, 14(gp)
                  sh         s1, 0(s11)
                  lbu        a7, -453(a2)
                  sb         t5, 7(gp)
                  lbu        t4, -1(s11) #end load_store_instr_stream_1
                  lbu        s7, 14(a2) #end load_store_instr_stream_3
                  lh         a3, 12(gp) #end load_store_instr_stream_0
                  la         t5, region_2+3324 #start riscv_load_store_rand_instr_stream_22
                  lbu        s11, 0(t5)
                  lb         a1, 9(t5)
                  lbu        s4, 4(t5)
                  sb         t4, 5(t5)
                  fence.i
                  lh         s11, -14(t5)
                  lbu        t6, 3(t5)
                  sb         s2, -13(t5)
                  sh         s0, 12(t5)
                  lb         a7, -16(t5)
                  csrrw      s1, 0x340, a0
                  lbu        s7, -13(t5)
                  lb         ra, 1(t5)
                  sh         zero, 8(t5)
                  csrrw      s7, 0x340, s11
                  c.nop
                  fence.i
                  mul        s9, s4, s6
                  lb         s4, 1(t5)
                  xori       t2, s8, -935
                  sb         t6, -3(t5)
                  c.and      a3, a2
                  divu       a6, s9, a3
                  sw         a4, -4(t5)
                  lbu        a1, 11(t5)
                  lhu        a2, -2(t5)
                  lui        s7, 674635
                  sb         t6, -14(t5)
                  sb         s10, -13(t5)
                  lh         zero, -12(t5)
                  slli       s7, s1, 24
                  sw         t5, -8(t5)
                  mulh       s11, sp, sp
                  sh         s2, -12(t5)
                  lb         s3, 10(t5)
                  c.li       s4, -1
                  lbu        t1, 10(t5)
                  sw         t6, -8(t5) #end riscv_load_store_rand_instr_stream_22
                  la         s3, region_2+344 #start riscv_load_store_rand_instr_stream_15
                  fence
                  c.srai     s0, 10
                  srai       a6, s4, 8
                  srai       s0, a3, 2
                  mulhu      t6, a4, t4
                  csrrs      a5, 0x340, s4
                  lhu        s10, 178(s3)
                  sra        s6, a3, t1
                  c.srai     s0, 15
                  lhu        zero, -140(s3)
                  sb         s6, 105(s3)
                  c.add      s10, a3
                  sb         s1, 209(s3)
                  fence
                  lb         s0, 109(s3)
                  andi       t6, tp, -459
                  c.nop
                  lui        a1, 497324
                  lbu        gp, 139(s3)
                  sb         t1, -193(s3)
                  sb         s11, -105(s3)
                  c.addi     s1, 8
                  slti       zero, a4, 531
                  and        ra, tp, a2
                  ori        s6, s11, 294
                  sb         ra, -137(s3)
                  divu       s2, t4, s8
                  sb         t5, -153(s3)
                  lbu        s7, -40(s3)
                  sub        a1, a3, t2
                  div        t1, ra, ra
                  c.sub      s0, a1
                  sb         a0, 147(s3) #end riscv_load_store_rand_instr_stream_15
                  la         gp, region_4+1152 #start riscv_load_store_rand_instr_stream_68
                  lbu        a6, 825(gp)
                  ori        s10, s7, -131
                  c.andi     s1, 31
                  lb         s6, 1664(gp)
                  csrrsi     s0, 0x340, 27
                  nop
                  sll        s6, t5, s5
                  lhu        tp, 366(gp)
                  sw         t0, 1664(gp)
                  c.slli     t6, 13
                  csrrw      a7, 0x340, a5
                  fence.i
                  sltu       ra, a2, tp
                  lbu        s11, 1045(gp)
                  sb         t5, 1989(gp)
                  xori       a1, s0, 882
                  c.li       a2, 0
                  csrrw      s11, 0x340, a2
                  sb         zero, 1578(gp)
                  csrrsi     s4, 0x340, 10
                  c.addi     t0, -1
                  sh         s10, 1144(gp)
                  lb         t4, -165(gp)
                  remu       a3, s7, tp
                  lbu        zero, -523(gp)
                  lhu        s2, 1766(gp)
                  mulhu      a7, a7, s9
                  lhu        s4, 844(gp)
                  c.and      a4, s0
                  sb         a2, 1941(gp)
                  c.addi     t2, -1
                  lb         s7, -1144(gp)
                  and        t4, s2, s0
                  srli       a4, s11, 6
                  remu       s0, s3, a3
                  mulh       t0, s1, s9
                  c.addi     a0, 31
                  lb         a5, 1711(gp)
                  csrrsi     s3, 0x340, 13
                  sb         gp, 1932(gp) #end riscv_load_store_rand_instr_stream_68
                  la         t1, region_3+319 #start load_store_instr_stream_1
                  la         t0, region_3+273 #start load_store_instr_stream_3
                  lb         s3, -200(t0)
                  sh         t4, 1(t1)
                  la         a6, region_3+470 #start load_store_instr_stream_0
                  la         a0, region_3+331 #start load_store_instr_stream_2
                  sb         s5, 6(t1)
                  lbu        s11, -269(t0)
                  sb         s3, -60(a6)
                  sb         s11, -31(t0)
                  lbu        s3, -40(a6)
                  sh         t1, -69(a0)
                  lb         t2, 35(a6)
                  lh         s10, 49(t0)
                  sb         s2, -260(a0)
                  sb         tp, 10(a0)
                  lbu        t4, -12(t1)
                  lb         s4, 62(t0)
                  lb         s6, 4(t1)
                  lbu        a4, -159(t0)
                  sb         s4, 0(t1)
                  lh         s0, -229(a0)
                  lbu        s2, -207(a0)
                  sb         t4, -13(a6)
                  sb         s2, -329(a0)
                  lbu        s3, 25(a6)
                  lbu        s11, 11(t1)
                  lbu        s6, -150(t0)
                  sb         a3, 31(a6)
                  lbu        t6, -98(a0)
                  lbu        a2, -36(a6)
                  lbu        t4, 12(t1)
                  lb         t6, -11(t1) #end load_store_instr_stream_1
                  sb         s3, -44(a0)
                  lb         a7, -62(a6)
                  sw         s8, 119(t0) #end load_store_instr_stream_3
                  sb         s5, 13(a6)
                  lb         a7, -192(a0) #end load_store_instr_stream_2
                  lb         a7, -23(a6) #end load_store_instr_stream_0
                  la         t4, region_3+292 #start riscv_load_store_rand_instr_stream_91
                  sb         gp, -26(t4)
                  srli       s8, a0, 31
                  sb         s4, -125(t4)
                  lb         s7, 169(t4)
                  lb         a1, 42(t4)
                  c.srai     s0, 18
                  sb         zero, -186(t4)
                  xori       a6, s11, -185
                  mulh       a7, t0, sp
                  mulh       s3, s3, a5
                  and        s6, tp, a3
                  mulh       a7, s8, t6
                  c.nop
                  lb         s8, -111(t4)
                  rem        a2, t3, zero
                  div        s9, t5, t5
                  ori        s3, a7, -351
                  sra        tp, t0, t0
                  csrrci     t1, 0x340, 12
                  lbu        s1, 173(t4)
                  lb         s6, -11(t4)
                  lbu        a4, 96(t4)
                  lhu        s3, -252(t4)
                  sub        a1, a0, s3
                  slli       s1, ra, 17
                  rem        s4, a1, a2
                  sb         t6, -169(t4) #end riscv_load_store_rand_instr_stream_91
                  la         s2, region_0+2125 #start load_store_instr_stream_2
                  la         s3, region_0+141 #start load_store_instr_stream_3
                  la         t2, region_0+3774 #start load_store_instr_stream_0
                  lhu        ra, -161(s2)
                  lh         a0, -36(t2)
                  la         a6, region_0+211 #start load_store_instr_stream_1
                  lb         s11, 59(t2)
                  lb         zero, 1916(a6)
                  sb         ra, -55(t2)
                  lb         s4, 7(t2)
                  sb         s4, -189(s2)
                  sh         s6, -223(s2)
                  lh         tp, -22(t2)
                  lbu        t1, 242(s3)
                  sb         t6, 620(a6)
                  sb         a1, -60(s2)
                  sb         a4, 1064(a6)
                  lb         s9, 20(t2)
                  sb         s8, -76(a6)
                  lhu        s6, -25(s2)
                  lb         s8, 222(s3)
                  sw         s6, 127(s3)
                  lh         a4, -46(t2)
                  lb         t5, 989(a6)
                  sb         t1, 1419(a6)
                  lb         a0, 184(s3)
                  lb         s6, 158(s3) #end load_store_instr_stream_3
                  lb         zero, -3(t2)
                  lh         s11, 31(s2)
                  sb         ra, 735(a6)
                  lb         a0, -173(s2) #end load_store_instr_stream_2
                  sh         s7, 1957(a6)
                  lb         t6, 974(a6) #end load_store_instr_stream_1
                  lhu        a7, -4(t2) #end load_store_instr_stream_0
                  la         s4, region_0+3298 #start riscv_load_store_rand_instr_stream_14
                  sh         s4, 192(s4)
                  c.andi     s0, 30
                  c.slli     s3, 22
                  mul        t4, s10, s2
                  lhu        a0, -166(s4)
                  lbu        s2, -35(s4)
                  c.srli     s1, 4
                  c.and      a3, a3
                  lb         gp, 33(s4)
                  rem        s8, t5, s3
                  lw         t1, -102(s4)
                  lbu        s1, 122(s4)
                  c.srli     a0, 24
                  or         a0, s3, s5
                  mul        s2, ra, t4
                  lb         s10, -210(s4)
                  sb         s5, 117(s4)
                  c.nop
                  lbu        ra, -119(s4)
                  c.and      a5, a4
                  sw         s9, -210(s4)
                  lw         t2, -66(s4)
                  lb         s9, -112(s4)
                  sltu       a0, s5, s0
                  lb         t1, 148(s4)
                  add        a7, a0, s6
                  sltu       a2, t0, tp
                  mul        a4, s3, a6
                  xori       t6, a7, 68
                  lbu        s6, 214(s4)
                  lb         s8, 153(s4)
                  sra        t1, s0, s6
                  mulhsu     s1, t4, a0
                  divu       t4, s5, s7
                  csrrwi     a5, 0x340, 12
                  csrrw      zero, 0x340, s6
                  lbu        a4, 243(s4)
                  sh         a2, 96(s4)
                  sra        a1, a0, a0
                  c.nop
                  lh         tp, -134(s4)
                  lb         a2, -186(s4)
                  lb         a4, -113(s4)
                  lb         t4, 31(s4)
                  sb         s11, 93(s4)
                  c.li       t1, -1
                  lb         s7, -79(s4)
                  sb         s6, 59(s4)
                  sw         a0, 238(s4)
                  lhu        gp, -30(s4)
                  csrrw      s9, 0x340, a4
                  or         a6, s8, s9
                  csrrwi     t5, 0x340, 24
                  slt        a0, a2, a3
                  lb         gp, -171(s4)
                  lbu        s1, -31(s4) #end riscv_load_store_rand_instr_stream_14
                  la         a6, region_2+4397 #start riscv_load_store_rand_instr_stream_37
                  lbu        t1, -20(a6)
                  lb         a4, -9(a6)
                  lb         a3, -3(a6)
                  sb         a2, -50(a6)
                  lbu        zero, -28(a6)
                  lw         s6, 3(a6)
                  lbu        a3, 18(a6)
                  lb         zero, -48(a6)
                  sb         s0, -46(a6)
                  slli       t6, s8, 8
                  add        a0, ra, s5
                  auipc      t0, 313067
                  lbu        zero, -56(a6)
                  lh         s4, 23(a6)
                  lbu        t6, 19(a6)
                  c.srai     a0, 14
                  addi       t2, t4, 214
                  srai       a3, t0, 30
                  lb         s2, 26(a6)
                  lhu        t6, 27(a6)
                  addi       a0, sp, 230
                  lbu        s4, -5(a6)
                  sb         sp, -18(a6)
                  sb         t1, 54(a6)
                  lhu        s7, -47(a6)
                  c.sub      a5, a0
                  lbu        s10, 57(a6)
                  lbu        a7, -58(a6)
                  lh         s11, -43(a6)
                  c.nop
                  lb         t4, 56(a6)
                  lbu        s2, 37(a6)
                  lb         s1, 36(a6)
                  lb         t1, 0(a6)
                  sh         gp, 43(a6)
                  sb         a0, -25(a6)
                  lbu        s8, 36(a6)
                  lbu        t1, 50(a6)
                  slti       a4, t0, -300
                  lhu        s1, 21(a6) #end riscv_load_store_rand_instr_stream_37
                  la         s8, region_4+3296 #start load_store_instr_stream_1
                  sb         t2, -135(s8)
                  la         s6, region_0+3968 #start load_store_instr_stream_3
                  lhu        t6, 8(s8)
                  la         a0, region_2+8061 #start load_store_instr_stream_0
                  la         s7, region_3+127 #start load_store_instr_stream_2
                  lbu        s0, -227(s8)
                  sb         s7, -156(s6)
                  sw         sp, -88(s6)
                  sb         a5, -65(s7)
                  sw         s10, 56(s8)
                  lhu        s11, -154(s6)
                  lbu        a5, -54(a0)
                  lw         a6, 205(s7)
                  sw         t2, -172(s6)
                  lbu        a4, -19(a0)
                  lh         s3, 236(s8)
                  lh         tp, -202(s8)
                  lh         t2, 136(s8)
                  lb         t6, 40(s7)
                  sh         a6, 97(a0)
                  lbu        t2, -77(s8)
                  lbu        s3, -201(s6)
                  sb         s6, -84(s6) #end load_store_instr_stream_3
                  lhu        t6, -46(s8)
                  lbu        t0, 152(s7)
                  sb         a3, 111(s7)
                  lbu        a2, -188(a0)
                  sw         t5, -63(s7) #end load_store_instr_stream_2
                  lbu        t2, 161(s8) #end load_store_instr_stream_1
                  lb         a6, 27(a0) #end load_store_instr_stream_0
                  la         s1, region_0+1812 #start riscv_load_store_rand_instr_stream_10
                  lbu        a5, -202(s1)
                  div        s4, a3, tp
                  slti       t4, a4, 101
                  sb         t0, 141(s1)
                  csrrw      s8, 0x340, a1
                  lb         a5, -235(s1)
                  lbu        t5, 57(s1)
                  c.srai     a4, 27
                  c.nop
                  sb         sp, -225(s1)
                  and        a7, ra, s11
                  div        s2, s0, a7
                  c.nop
                  csrrc      s4, 0x340, t4
                  lw         s8, -84(s1)
                  c.lui      a7, 3
                  xor        a3, t3, s5
                  ori        a4, s1, 417
                  sra        a2, tp, gp
                  sb         s11, -205(s1)
                  sb         s8, 15(s1)
                  csrrci     t1, 0x340, 15
                  lbu        a2, -135(s1)
                  xori       a4, gp, 9
                  lbu        t2, -177(s1)
                  lb         t5, -245(s1)
                  xor        a5, s2, a3
                  lbu        s6, 173(s1)
                  sb         s9, -90(s1)
                  c.lw       a1, 4(s1)
                  lb         a7, -235(s1)
                  lb         a6, -161(s1)
                  lb         s0, -209(s1)
                  lbu        s9, -55(s1)
                  lbu        a3, -105(s1)
                  lb         a6, 117(s1)
                  c.srli     a3, 23
                  c.mv       s8, a1
                  lbu        s8, -249(s1) #end riscv_load_store_rand_instr_stream_10
                  la         s7, region_3+379 #start riscv_load_store_rand_instr_stream_71
                  lh         s1, 63(s7)
                  sb         s2, 48(s7)
                  lb         s8, -42(s7)
                  or         t1, a2, s9
                  lh         t5, -1(s7)
                  lbu        t4, 15(s7)
                  mulhsu     gp, zero, s4
                  sb         t4, 6(s7)
                  lw         a5, -43(s7)
                  ori        s9, s3, 60
                  sb         t2, 48(s7)
                  lb         a3, 3(s7)
                  lbu        t5, -45(s7)
                  addi       t6, a1, 360
                  csrrc      s2, 0x340, a1
                  csrrsi     a5, 0x340, 8
                  lbu        zero, -62(s7)
                  lhu        s6, -3(s7)
                  sb         s4, 54(s7)
                  c.li       a4, -1
                  c.nop
                  lb         gp, 0(s7)
                  sw         a1, 9(s7)
                  ori        s1, s4, -291
                  sb         sp, -30(s7)
                  lb         t1, -26(s7)
                  lh         s4, -41(s7)
                  lb         t1, 12(s7)
                  lh         t4, 11(s7)
                  lbu        a6, -21(s7)
                  xori       a6, t5, -117
                  lhu        s1, -41(s7)
                  lbu        t4, -26(s7)
                  sb         t3, -4(s7)
                  c.xor      s1, a2
                  slt        a6, s8, s10
                  lb         t5, 31(s7)
                  lb         t6, 56(s7) #end riscv_load_store_rand_instr_stream_71
                  la         s1, region_4+3297 #start load_store_instr_stream_0
                  la         s8, region_4+2223 #start load_store_instr_stream_3
                  sb         s9, -48(s8)
                  la         a6, region_4+1094 #start load_store_instr_stream_1
                  lb         zero, 25(s8)
                  lbu        a0, -39(a6)
                  lb         t1, -10(s8)
                  lw         s4, 11(s1)
                  sb         s3, 35(a6)
                  sb         tp, -35(a6)
                  sh         tp, -18(a6)
                  la         ra, region_4+346 #start load_store_instr_stream_2
                  lb         a1, 36(s8)
                  lbu        a0, 1325(ra)
                  lb         s0, -7(s1)
                  sb         s3, -14(s8)
                  sb         s7, -37(a6)
                  sb         a0, -36(s8)
                  sw         a2, 902(ra)
                  lbu        gp, 53(a6)
                  lb         t2, 7(s1)
                  lhu        s9, -10(a6)
                  sb         t6, 187(ra)
                  sb         a2, 14(s1)
                  lb         s3, -32(a6)
                  lbu        zero, 5(a6)
                  lh         t4, 1746(ra)
                  lw         zero, 7(s1)
                  lb         t1, 577(ra) #end load_store_instr_stream_2
                  lb         gp, 33(s8) #end load_store_instr_stream_3
                  lw         tp, 6(a6) #end load_store_instr_stream_1
                  sh         s0, -15(s1)
                  lw         tp, 11(s1) #end load_store_instr_stream_0
                  la         s3, region_3+366 #start riscv_load_store_rand_instr_stream_74
                  lb         s1, -28(s3)
                  lb         s8, -289(s3)
                  or         s2, a7, t5
                  lbu        a6, 95(s3)
                  sll        s8, t3, s10
                  lb         t4, -49(s3)
                  c.addi     a0, -1
                  sb         s10, -354(s3)
                  lbu        t5, -87(s3)
                  ori        gp, a1, -53
                  c.li       tp, -1
                  csrrwi     t0, 0x340, 26
                  nop
                  fence
                  remu       t6, zero, s11
                  lb         a5, 124(s3)
                  lb         t2, -219(s3)
                  slti       s6, a5, 922
                  add        s8, ra, s1
                  auipc      tp, 814121
                  c.srli     a3, 6
                  c.nop
                  ori        s10, a3, 912
                  add        a4, t1, t6
                  c.li       s7, 2
                  xor        s0, s10, sp
                  csrrc      s1, 0x340, ra
                  slli       t6, a1, 4
                  c.add      t2, s8
                  csrrci     a6, 0x340, 3
                  sh         s6, 138(s3)
                  lbu        a0, -160(s3)
                  sll        a3, s4, s1
                  addi       s10, t0, 141
                  csrrc      a5, 0x340, s2
                  c.srai     s1, 1
                  lbu        a7, -331(s3)
                  csrrc      a0, 0x340, t0
                  rem        ra, s4, s8
                  lb         a1, -269(s3) #end riscv_load_store_rand_instr_stream_74
                  la         s7, region_3+452 #start load_store_instr_stream_1
                  la         a4, region_3+38 #start load_store_instr_stream_3
                  lbu        s1, -10(s7)
                  la         s11, region_3+296 #start load_store_instr_stream_2
                  la         a1, region_3+253 #start load_store_instr_stream_0
                  lb         gp, -51(s7)
                  lhu        a2, 30(s11)
                  lb         a2, 24(a1)
                  lh         a3, -35(a1)
                  lb         t0, 68(a4)
                  lbu        s0, 25(a4)
                  lb         gp, 34(s7)
                  lb         s6, 3(s11)
                  lh         s4, -19(a1)
                  lbu        gp, 24(s11)
                  lw         s9, -33(a1)
                  lbu        zero, -48(s7)
                  lb         a7, -43(s11)
                  lbu        t4, 42(a1)
                  lb         ra, 39(s11)
                  lbu        a3, -7(s7)
                  lb         s1, 122(a4)
                  sb         tp, -50(a1)
                  lbu        tp, -46(a1)
                  sb         t1, 183(a4)
                  lb         ra, 30(a1)
                  lb         s10, -57(s11)
                  lb         a3, 21(a4) #end load_store_instr_stream_3
                  sh         a4, 60(s11)
                  lb         a5, 54(s11)
                  lbu        t2, -25(s11)
                  lhu        a7, -58(s7) #end load_store_instr_stream_1
                  lbu        zero, 31(s11) #end load_store_instr_stream_2
                  lhu        t1, -31(a1)
                  lbu        t6, -4(a1) #end load_store_instr_stream_0
                  la         s0, region_4+333 #start riscv_load_store_rand_instr_stream_78
                  sll        a0, s5, t4
                  sb         s11, 128(s0)
                  sltiu      a4, s9, 818
                  csrrsi     s1, 0x340, 4
                  c.srli     a3, 10
                  csrrsi     t0, 0x340, 7
                  sra        zero, t6, a1
                  and        t4, t4, a6
                  nop
                  lhu        a1, -77(s0)
                  sw         t6, -49(s0)
                  sub        s1, a5, sp
                  sb         s11, 42(s0)
                  lui        t4, 1016104
                  lh         a7, -95(s0)
                  lbu        s7, 240(s0)
                  lhu        a3, -111(s0)
                  lhu        t4, -59(s0)
                  sb         gp, 122(s0)
                  xor        a2, s1, s6
                  sll        a1, t4, t2
                  mul        t4, a4, a1
                  c.xor      a4, a0
                  rem        s10, gp, s2
                  lbu        tp, 106(s0) #end riscv_load_store_rand_instr_stream_78
                  la         s1, region_2+76 #start load_store_instr_stream_0
                  sh         t4, 118(s1)
                  la         s10, region_3+473 #start load_store_instr_stream_1
                  lbu        ra, -88(s10)
                  lb         a6, -166(s10)
                  sw         a2, 700(s1)
                  lbu        t1, -272(s10)
                  sb         s10, -88(s10)
                  lb         a0, 533(s1)
                  lhu        tp, -73(s10)
                  lbu        gp, 1576(s1)
                  lhu        t5, -103(s10)
                  lb         t0, 409(s1)
                  sb         a5, -209(s10)
                  lhu        t6, 1776(s1)
                  lbu        a0, 963(s1)
                  lb         gp, 919(s1)
                  lb         a0, -11(s10) #end load_store_instr_stream_1
                  lbu        t2, 908(s1)
                  sw         s0, 600(s1) #end load_store_instr_stream_0
                  la         a0, region_4+3905 #start riscv_load_store_rand_instr_stream_77
                  xor        s7, a1, s11
                  lbu        t6, 3(a0)
                  c.and      s0, s1
                  c.mv       s1, gp
                  lbu        a4, -49(a0)
                  lh         a4, 7(a0)
                  c.srli     a4, 22
                  lbu        a5, -16(a0)
                  andi       s9, t4, 781
                  sb         ra, -64(a0)
                  lh         a2, -17(a0)
                  lbu        s11, -20(a0)
                  sb         s9, 60(a0)
                  lhu        a3, 3(a0)
                  sra        a1, s9, s1
                  sb         t5, -24(a0)
                  slli       t5, a4, 0
                  csrrci     s11, 0x340, 16
                  lb         gp, 34(a0)
                  c.srli     s1, 31
                  lbu        s1, 53(a0)
                  sw         a6, -25(a0)
                  sb         sp, -38(a0)
                  c.or       a5, a0
                  sb         gp, -40(a0) #end riscv_load_store_rand_instr_stream_77
                  la         s7, region_1+5568 #start riscv_load_store_rand_instr_stream_0
                  sh         t4, 12(s7)
                  lb         a3, -5(s7)
                  sb         a7, -8(s7)
                  lb         s0, 6(s7)
                  lhu        s9, -10(s7)
                  mul        s8, s9, s5
                  sw         t2, -16(s7)
                  sb         t3, 15(s7)
                  lb         a1, -14(s7)
                  csrrs      a1, 0x340, a0
                  lhu        gp, 0(s7)
                  sb         t0, -3(s7)
                  c.srai     s1, 27
                  lbu        s4, -11(s7)
                  lb         a7, 10(s7)
                  lbu        s8, -7(s7)
                  sb         sp, 13(s7)
                  lbu        s11, 11(s7)
                  sb         s6, -10(s7)
                  lhu        t6, -4(s7)
                  lb         s6, -11(s7)
                  srl        s10, s11, tp
                  srli       t5, t0, 3
                  sra        t6, a4, sp
                  sh         ra, -8(s7)
                  or         ra, s4, t3
                  mulh       a6, tp, s1
                  lb         t5, -2(s7)
                  lb         a0, -9(s7)
                  sltu       a7, sp, t6
                  csrrs      a7, 0x340, ra
                  srai       s0, s7, 31
                  lw         t2, -12(s7)
                  c.addi     a2, 10
                  lh         t1, -16(s7)
                  sh         s0, 10(s7)
                  remu       a1, a4, s10
                  sh         t2, 12(s7)
                  csrrc      s3, 0x340, s5
                  slti       s9, tp, -882
                  lh         s0, 10(s7)
                  c.or       a0, a0
                  c.mv       s4, t2
                  lh         a2, 2(s7)
                  sb         tp, -8(s7)
                  lb         a3, 7(s7) #end riscv_load_store_rand_instr_stream_0
                  la         s8, region_3+354 #start load_store_instr_stream_2
                  la         s2, region_3+425 #start load_store_instr_stream_3
                  la         s9, region_3+400 #start load_store_instr_stream_0
                  lb         s10, -246(s2)
                  lb         a5, -406(s2)
                  lbu        s3, 11(s8)
                  lb         a2, -234(s2)
                  lbu        t1, 12(s8)
                  sb         s6, -106(s2)
                  la         a6, region_3+310 #start load_store_instr_stream_1
                  lb         t1, -326(s2)
                  sh         ra, -6(a6)
                  lbu        s4, 56(s9)
                  lh         a7, -339(s2)
                  lb         t6, -11(s8)
                  sb         a4, 13(a6)
                  sh         a6, -6(a6)
                  sb         t1, -10(a6)
                  sb         s3, 9(s8)
                  lb         s7, 62(s2)
                  lb         a3, -201(s9)
                  lhu        a5, -51(s2) #end load_store_instr_stream_3
                  sb         s10, 2(s8)
                  sb         t0, -41(s9)
                  lb         a1, -12(s8)
                  lbu        a3, -131(s9)
                  sb         s8, -15(a6)
                  lbu        a1, 9(s8)
                  lb         a3, -3(s8)
                  sb         a4, 3(a6) #end load_store_instr_stream_1
                  lbu        t2, 7(s8)
                  sh         a0, 14(s8) #end load_store_instr_stream_2
                  lb         t5, 33(s9) #end load_store_instr_stream_0
                  la         s8, region_1+1360 #start load_store_instr_stream_1
                  la         gp, region_3+149 #start load_store_instr_stream_2
                  la         s11, region_4+2415 #start load_store_instr_stream_0
                  lbu        s4, -4(gp)
                  sb         t2, 16(gp)
                  sb         a4, 3(s8)
                  lb         s0, -56(s8)
                  sh         a2, -5(gp)
                  sb         a0, -15(gp)
                  sb         s1, 37(s8)
                  lbu        s3, -59(s8)
                  lbu        s3, -11(s8)
                  lb         t6, 41(s11)
                  lbu        a0, -188(s11)
                  lbu        t0, 8(gp)
                  sb         t4, -28(s11)
                  lbu        tp, -16(gp)
                  sh         a3, 239(s11)
                  lb         a5, 31(s8)
                  lhu        s4, 35(s11)
                  sb         s8, 218(s11)
                  sw         zero, 16(s8)
                  lb         t1, 4(gp) #end load_store_instr_stream_2
                  lb         s9, 4(s8) #end load_store_instr_stream_1
                  lb         t6, -191(s11) #end load_store_instr_stream_0
                  la         t5, region_0+756 #start riscv_load_store_rand_instr_stream_20
                  lbu        a5, -183(t5)
                  sb         s0, -194(t5)
                  lh         t4, 198(t5)
                  sb         a6, -147(t5)
                  sb         t3, 256(t5)
                  c.nop
                  lb         t6, 237(t5)
                  add        s1, a3, s8
                  c.lui      s3, 7
                  c.and      a2, a5
                  lbu        a7, -217(t5)
                  sb         s6, -21(t5)
                  add        s9, a3, t0
                  sw         s0, -236(t5)
                  lb         t4, 157(t5)
                  lbu        a7, 206(t5)
                  lbu        a4, -7(t5)
                  sb         s8, 47(t5)
                  lbu        a4, 130(t5)
                  lui        a2, 461108
                  lbu        a5, -207(t5)
                  c.mv       a5, ra
                  sb         s2, 79(t5)
                  remu       s0, s11, s4
                  lh         ra, -198(t5)
                  mulhsu     t0, t6, s3
                  auipc      gp, 885263
                  sb         s10, -123(t5)
                  srai       t1, sp, 21
                  sb         t0, -85(t5)
                  csrrsi     t6, 0x340, 13
                  c.mv       t1, s3
                  sw         s5, -256(t5)
                  sb         gp, -85(t5)
                  lbu        s4, -131(t5)
                  lh         s2, 110(t5)
                  mulhu      a6, a6, s2
                  sltu       s7, a3, s1
                  lh         a7, 100(t5)
                  lbu        a3, -171(t5)
                  sltu       t0, t6, s7
                  rem        s3, a4, t3
                  mulh       s8, t0, a3
                  sb         t4, 95(t5)
                  lh         s1, -170(t5) #end riscv_load_store_rand_instr_stream_20
                  la         a0, region_3+181 #start riscv_load_store_rand_instr_stream_49
                  lb         s2, 28(a0)
                  csrrci     s11, 0x340, 2
                  sb         s11, -18(a0)
                  lbu        t1, -50(a0)
                  mulhu      s8, a0, t0
                  csrrsi     t4, 0x340, 3
                  c.li       t4, -1
                  csrrs      s6, 0x340, zero
                  lb         s4, 2(a0)
                  fence
                  sb         a6, -54(a0)
                  sh         a2, 17(a0)
                  sb         a6, -56(a0)
                  sb         sp, 4(a0)
                  sh         ra, 7(a0)
                  c.xor      a2, a3
                  lb         ra, -54(a0)
                  sb         tp, 0(a0)
                  lb         a3, -58(a0)
                  sh         tp, -33(a0)
                  sw         a6, 31(a0)
                  srl        a7, s0, sp
                  slli       s9, a5, 0
                  ori        t4, t4, -599
                  sh         t0, -49(a0) #end riscv_load_store_rand_instr_stream_49
                  la         s2, region_4+110 #start load_store_instr_stream_0
                  la         s4, region_2+7039 #start load_store_instr_stream_1
                  la         s10, region_1+1347 #start load_store_instr_stream_2
                  la         s6, region_3+167 #start load_store_instr_stream_3
                  sb         s6, -4(s4)
                  lb         t5, 51(s2)
                  lb         s11, -18(s10)
                  lh         a0, 7(s4)
                  lw         s3, -35(s6)
                  lhu        s0, 23(s10)
                  sb         s9, 114(s2)
                  sb         t0, 2(s10)
                  lbu        s11, 221(s2)
                  lbu        a5, -56(s6)
                  lbu        t4, 10(s10)
                  lhu        a6, 39(s10)
                  lbu        s1, 237(s2)
                  sb         a4, -15(s6)
                  sb         s5, 56(s10)
                  sb         s6, 42(s6)
                  sb         s9, -44(s2)
                  lbu        a4, 16(s10)
                  lbu        a0, 8(s4)
                  lbu        t4, 21(s6)
                  sh         s5, 15(s6)
                  lb         s3, -36(s10)
                  lh         ra, -43(s10)
                  sb         t5, -8(s10) #end load_store_instr_stream_2
                  lbu        a6, 14(s4)
                  sw         s1, -14(s2)
                  lhu        t6, 3(s4) #end load_store_instr_stream_1
                  sb         a7, -38(s6)
                  lbu        s3, 42(s2)
                  lb         a2, -30(s6)
                  lh         a1, -24(s2)
                  lb         a6, -50(s6) #end load_store_instr_stream_3
                  lb         t6, -87(s2) #end load_store_instr_stream_0
                  la         ra, region_2+7543 #start load_store_instr_stream_1
                  la         a6, region_2+5668 #start load_store_instr_stream_0
                  sh         s9, 128(a6)
                  sb         t0, 30(ra)
                  lb         s8, -54(ra)
                  sb         a2, 39(a6)
                  lh         s1, -18(a6)
                  sb         s8, -32(ra)
                  lbu        t1, 53(ra)
                  lb         s6, -127(a6)
                  lbu        t4, -229(a6)
                  lbu        t2, -4(ra)
                  lw         a7, -11(ra) #end load_store_instr_stream_1
                  lh         s10, -46(a6) #end load_store_instr_stream_0
                  la         a1, region_0+243 #start riscv_load_store_rand_instr_stream_7
                  and        s0, s4, s9
                  sub        a2, t4, a7
                  mul        a7, t1, s4
                  c.andi     a0, 23
                  sh         a0, 31(a1)
                  lbu        a7, 58(a1)
                  sw         gp, -23(a1)
                  lbu        s7, 22(a1)
                  sh         s2, -57(a1)
                  sw         t5, 29(a1)
                  andi       t6, s5, -641
                  lb         tp, -26(a1)
                  c.nop
                  lh         s4, 51(a1)
                  lh         t1, 29(a1)
                  sb         s10, -58(a1)
                  lb         a0, 26(a1)
                  lbu        t0, 42(a1)
                  mul        a4, a0, zero
                  sh         zero, 27(a1)
                  lbu        s3, 57(a1)
                  lbu        s4, -8(a1)
                  lbu        a3, 46(a1)
                  c.li       t6, 31
                  c.add      t0, s1
                  c.or       a3, s0
                  sb         a3, -3(a1)
                  lbu        t6, 3(a1)
                  lb         s10, -6(a1)
                  lui        a6, 32602
                  srl        gp, s3, t3
                  sb         s10, -14(a1)
                  lb         s9, -30(a1)
                  lbu        t2, 9(a1)
                  lh         s2, 63(a1)
                  c.li       t1, -1
                  lbu        t6, 22(a1)
                  sb         s8, -43(a1)
                  c.srai     a4, 8
                  lh         a6, -39(a1)
                  mulhu      t1, s10, a6
                  c.sub      a2, a3
                  lb         a7, -42(a1)
                  sb         s6, -20(a1) #end riscv_load_store_rand_instr_stream_7
                  la         ra, region_0+3194 #start riscv_load_store_rand_instr_stream_38
                  slti       gp, t4, -352
                  lb         s4, -1625(ra)
                  sltu       t2, s3, zero
                  csrrsi     t5, 0x340, 11
                  lb         a3, -161(ra)
                  lb         a2, -18(ra)
                  xor        t5, t4, s6
                  sb         s3, -948(ra)
                  sub        a0, a1, t3
                  c.lui      t0, 1
                  fence
                  lb         s6, -562(ra)
                  ori        s8, s9, -956
                  slli       s2, a7, 18
                  srli       t6, s7, 29
                  lui        a7, 575741
                  lbu        a3, -796(ra)
                  lb         t5, -1166(ra)
                  sb         t0, -1390(ra)
                  lb         s7, -49(ra)
                  addi       s4, gp, 672
                  remu       t1, s5, t1
                  c.xor      a2, a1
                  sb         zero, 336(ra)
                  rem        t1, gp, s8
                  csrrwi     s2, 0x340, 18
                  lbu        t6, 41(ra)
                  csrrw      s7, 0x340, zero
                  lbu        s9, -2012(ra)
                  nop
                  sb         a7, -1724(ra)
                  lb         a3, -689(ra)
                  lh         s8, -1784(ra)
                  lbu        a3, 29(ra)
                  xor        s4, s11, s3
                  lbu        t0, -457(ra)
                  c.nop
                  c.add      s11, s10
                  lb         a6, 456(ra)
                  auipc      a5, 477195
                  lb         t2, -1741(ra)
                  lbu        s1, 834(ra)
                  lbu        a4, -1408(ra) #end riscv_load_store_rand_instr_stream_38
                  la         t0, region_4+1656 #start load_store_instr_stream_2
                  la         a7, region_4+51 #start load_store_instr_stream_1
                  lbu        s7, -97(t0)
                  la         a5, region_4+903 #start load_store_instr_stream_0
                  la         a0, region_4+2850 #start load_store_instr_stream_3
                  sb         a1, -18(a7)
                  sw         a0, 102(a0)
                  lbu        t5, -101(a5)
                  la         a3, region_4+1606 #start load_store_instr_stream_4
                  lb         s7, -34(a7)
                  sb         t0, -37(a3)
                  lh         a1, 193(a7)
                  lb         gp, -178(a0)
                  lw         a6, 58(a3)
                  lbu        a1, 1292(t0)
                  sb         t4, 1648(a5)
                  sh         s11, 115(a7)
                  lbu        a6, -240(a5)
                  lb         gp, -350(t0)
                  sb         s9, -27(a7)
                  lh         t4, 1056(t0)
                  sh         t6, 240(a0)
                  lh         t4, -1538(t0)
                  sb         s4, -51(a0)
                  lbu        s4, 62(a0)
                  sh         t4, 89(a7)
                  lb         s1, -29(a0)
                  lbu        s9, 22(a3)
                  lbu        s8, -1549(t0)
                  lb         a4, 1391(t0)
                  sb         tp, -385(a5)
                  sh         t1, -438(t0)
                  lbu        s7, -44(a7) #end load_store_instr_stream_1
                  lhu        t6, 0(a3)
                  lb         tp, -877(a5)
                  lw         t5, 50(a3)
                  sb         a2, 1893(t0)
                  lh         a2, 28(a3)
                  lbu        s10, 61(a0)
                  lb         a6, -27(a0)
                  sb         s10, 1538(a5)
                  sh         s5, 10(a3) #end load_store_instr_stream_4
                  sb         s0, 229(a0) #end load_store_instr_stream_3
                  sw         s7, 1684(t0) #end load_store_instr_stream_2
                  sb         s2, 1900(a5) #end load_store_instr_stream_0
                  la         t0, region_1+471 #start riscv_load_store_rand_instr_stream_47
                  remu       t2, ra, s11
                  sb         s6, -58(t0)
                  lbu        a4, 42(t0)
                  fence
                  csrrwi     a0, 0x340, 8
                  slti       t5, s3, 790
                  lbu        a1, -38(t0)
                  sh         zero, 37(t0)
                  csrrci     s1, 0x340, 20
                  rem        t5, s5, tp
                  c.slli     t5, 9
                  sltu       a7, ra, gp
                  sh         s9, 49(t0)
                  lhu        a5, -41(t0)
                  addi       t5, a4, -559
                  sh         s5, 63(t0)
                  lw         s9, -55(t0)
                  fence.i
                  sb         s8, -4(t0)
                  lbu        a0, 40(t0)
                  lbu        ra, 50(t0)
                  lbu        s11, 59(t0)
                  lb         a3, -47(t0)
                  sh         sp, -9(t0)
                  divu       s9, s0, s5
                  c.lui      s9, 22
                  lbu        s0, 34(t0)
                  sw         t0, 57(t0)
                  add        a3, s5, sp
                  csrrs      t6, 0x340, a0
                  sb         a3, 5(t0)
                  c.or       a0, a1
                  lh         gp, -57(t0)
                  c.srli     a2, 12
                  c.add      s10, t3
                  sub        s1, a0, t4
                  lbu        a4, 9(t0)
                  sub        s10, t0, a7
                  c.lui      s11, 16
                  sltu       s11, t5, s3
                  mulhsu     a1, t0, a5
                  lbu        s6, -39(t0)
                  sb         zero, 29(t0)
                  srli       a2, s2, 6
                  sltu       s0, s3, s4
                  lbu        gp, -49(t0)
                  xori       s1, t2, -849
                  lb         zero, 62(t0)
                  slli       s6, s8, 6
                  srai       ra, s4, 3
                  lbu        s8, 18(t0)
                  lhu        t5, -5(t0) #end riscv_load_store_rand_instr_stream_47
                  la         t4, region_3+325 #start load_store_instr_stream_2
                  la         s7, region_3+437 #start load_store_instr_stream_3
                  la         s1, region_3+0 #start load_store_instr_stream_0
                  sb         t6, -99(s7)
                  la         s8, region_3+416 #start load_store_instr_stream_4
                  lbu        s4, -10(t4)
                  la         a7, region_3+425 #start load_store_instr_stream_1
                  lbu        a1, 1(s1)
                  sb         s2, -21(a7)
                  lh         a3, -85(s7)
                  lb         t1, -16(t4)
                  sh         s5, -5(a7)
                  lb         s2, 5(s8)
                  lb         t6, -237(s7)
                  lb         s6, -185(s7)
                  sb         t1, -5(s8)
                  sb         t6, 167(s1)
                  lb         a4, -79(s7)
                  lbu        a5, -59(a7)
                  lw         a4, -12(s8)
                  lw         s10, -213(s7)
                  sh         a0, -3(a7)
                  lw         a0, 100(s1)
                  lw         a0, -237(s7)
                  lh         a5, 416(s1)
                  sb         t5, -2(t4)
                  sh         s4, 346(s1)
                  sb         tp, -7(s8)
                  lbu        a4, -7(s8)
                  lhu        s10, -51(a7)
                  lbu        t2, -11(a7)
                  sb         s8, 346(s1)
                  lbu        a3, -64(a7)
                  sw         t4, 47(a7)
                  sb         s5, 13(s8)
                  lh         t5, 3(t4)
                  sb         s5, -184(s7)
                  sb         s2, -16(t4)
                  lh         ra, 16(s8)
                  lbu        a4, 374(s1)
                  sb         s4, -15(s8) #end load_store_instr_stream_4
                  lh         a0, 65(s7) #end load_store_instr_stream_3
                  sh         a6, -3(a7) #end load_store_instr_stream_1
                  sb         s0, 387(s1)
                  sh         a4, 1(t4) #end load_store_instr_stream_2
                  sb         s2, 309(s1) #end load_store_instr_stream_0
                  la         s6, region_2+157 #start riscv_load_store_rand_instr_stream_6
                  addi       gp, s5, -912
                  mulhu      a6, s11, a4
                  c.xor      a2, a4
                  lbu        a5, 10(s6)
                  lb         a5, -4(s6)
                  remu       s3, s1, tp
                  lb         a6, -5(s6)
                  lh         s2, 9(s6)
                  sra        s4, s9, s3
                  csrrc      s2, 0x340, s10
                  c.and      a2, a5
                  sh         a4, 11(s6)
                  c.srli     a2, 27
                  lh         s9, -5(s6)
                  c.andi     s0, 12
                  lhu        t1, -1(s6)
                  fence.i
                  sb         s4, -6(s6)
                  csrrsi     s10, 0x340, 15
                  lhu        tp, 13(s6)
                  slt        s3, ra, t6
                  mulhu      a0, s4, t4
                  lb         t5, -10(s6)
                  lbu        ra, -4(s6)
                  mulh       s11, a4, s10
                  lb         s1, 4(s6)
                  add        a3, s11, a1
                  div        t2, t6, t5
                  lbu        s8, 1(s6)
                  sll        s9, t1, a7
                  lbu        t1, -6(s6)
                  c.andi     a1, -1
                  srai       a6, s2, 24
                  csrrc      a7, 0x340, a4
                  lb         s9, 6(s6)
                  lhu        t5, -7(s6) #end riscv_load_store_rand_instr_stream_6
                  la         t2, region_2+842 #start load_store_instr_stream_1
                  la         s7, region_0+1151 #start load_store_instr_stream_0
                  la         s0, region_4+3220 #start load_store_instr_stream_3
                  lb         s1, -113(s7)
                  lb         t0, 1900(t2)
                  lw         a6, 56(s0)
                  lbu        zero, 152(s7)
                  la         t6, region_3+259 #start load_store_instr_stream_2
                  lbu        s4, -551(t2)
                  lb         t5, -8(t6)
                  lb         s10, -238(s7)
                  lh         a2, 7(t6)
                  lhu        t0, 564(t2)
                  sh         zero, 46(s0)
                  sb         t3, 4(t6)
                  lh         s2, 75(s7)
                  lhu        s10, 1(t6)
                  lb         ra, 22(s0)
                  sb         gp, -180(s7)
                  lbu        a4, -230(s7)
                  lb         s10, 771(t2)
                  lh         a3, 2(s0)
                  sb         a6, 9(t6)
                  lb         t0, 4(s0)
                  lh         gp, 127(s7)
                  lw         t4, -482(t2)
                  lw         s8, 52(s0)
                  lbu        a5, -151(s7)
                  sw         sp, -60(s0)
                  sb         ra, 729(t2)
                  sb         t6, -38(s0)
                  lw         ra, 1378(t2) #end load_store_instr_stream_1
                  lh         s8, 7(t6)
                  lb         a6, 4(t6)
                  lb         t1, 19(s0)
                  sb         sp, 12(t6) #end load_store_instr_stream_2
                  lbu        s9, 11(s0) #end load_store_instr_stream_3
                  sh         zero, -25(s7) #end load_store_instr_stream_0
                  la         s10, region_4+2430 #start riscv_load_store_rand_instr_stream_26
                  srli       s3, t0, 24
                  lb         t1, -11(s10)
                  lh         a2, 54(s10)
                  sltu       s2, t3, t3
                  lbu        t0, -41(s10)
                  lbu        gp, 45(s10)
                  mulh       zero, s2, s8
                  lb         s9, -36(s10)
                  lb         a6, 57(s10)
                  lbu        s7, 49(s10)
                  c.add      s8, gp
                  csrrc      t1, 0x340, s11
                  sb         s6, 58(s10)
                  sb         t4, 5(s10)
                  sb         s6, -7(s10)
                  and        t4, t3, t5
                  c.add      a1, s11
                  lb         a1, 64(s10)
                  c.lui      a6, 10
                  sh         gp, -38(s10)
                  lb         s4, -17(s10)
                  c.addi     a5, -1
                  lb         t6, 28(s10)
                  c.srai     s0, 23
                  c.slli     a1, 18
                  lbu        a0, 40(s10)
                  mulhu      a0, t0, a4
                  c.lui      gp, 17
                  lbu        t6, 31(s10)
                  mulhsu     s9, t4, a0
                  sb         s10, 55(s10)
                  c.xor      a1, a3
                  sb         sp, -11(s10)
                  nop
                  lb         a6, 38(s10) #end riscv_load_store_rand_instr_stream_26
                  la         t2, region_3+242 #start load_store_instr_stream_1
                  la         a1, region_3+304 #start load_store_instr_stream_2
                  la         s9, region_3+506 #start load_store_instr_stream_0
                  lbu        t0, -181(a1)
                  lbu        t0, -208(t2)
                  lb         a4, 16(t2)
                  sb         a1, 243(t2)
                  lb         t6, -9(s9)
                  c.lw       a3, 32(a1)
                  sb         t4, -191(t2)
                  sb         a0, 195(a1)
                  lw         a3, -126(s9)
                  sb         s9, -6(s9)
                  sb         t6, -187(a1)
                  sh         s6, -88(s9)
                  lbu        s4, 65(t2)
                  lbu        s10, 202(a1)
                  lbu        a5, -114(s9)
                  lb         t4, -152(s9)
                  lb         a3, -223(t2)
                  lhu        ra, -10(s9)
                  lb         t1, -191(a1)
                  lh         ra, -202(s9)
                  lb         a2, -251(s9)
                  sb         s1, -100(a1)
                  lbu        ra, -256(a1)
                  sb         t3, 244(t2)
                  lhu        s1, -194(a1) #end load_store_instr_stream_2
                  sb         t1, 9(t2) #end load_store_instr_stream_1
                  sb         tp, -253(s9) #end load_store_instr_stream_0
                  la         tp, region_0+1043 #start riscv_load_store_rand_instr_stream_23
                  sb         s5, -62(tp)
                  c.li       t0, 9
                  mulh       t0, t3, s8
                  c.li       gp, -1
                  lhu        s3, 33(tp)
                  csrrs      t1, 0x340, tp
                  csrrc      a0, 0x340, s0
                  or         a7, s4, s11
                  sb         zero, 6(tp)
                  c.lui      t4, 1
                  lh         t6, -31(tp)
                  srli       a2, s6, 1
                  csrrc      s11, 0x340, t6
                  lbu        a1, 28(tp)
                  slli       t2, t3, 18
                  sb         a7, 64(tp)
                  c.nop
                  sb         s7, -45(tp)
                  sb         a0, -24(tp)
                  sb         t2, 52(tp)
                  csrrwi     t4, 0x340, 30
                  sh         a1, 41(tp)
                  lbu        s9, 61(tp)
                  lbu        t6, 27(tp)
                  sb         s7, -14(tp)
                  fence
                  sb         t2, -24(tp)
                  c.srai     a5, 13
                  lbu        s11, 7(tp)
                  c.slli     a6, 8
                  sb         t5, -19(tp) #end riscv_load_store_rand_instr_stream_23
                  la         t0, region_4+1134 #start riscv_load_store_rand_instr_stream_89
                  rem        s8, sp, t5
                  sb         s3, -15(t0)
                  lb         s3, -16(t0)
                  sh         t6, 2(t0)
                  c.mv       gp, t6
                  slt        s11, s1, t2
                  csrrwi     s10, 0x340, 4
                  lbu        tp, -13(t0)
                  c.andi     a1, 31
                  sb         s7, 11(t0)
                  c.andi     a5, -1
                  sw         a3, -10(t0)
                  csrrc      s2, 0x340, s5
                  lbu        a3, -1(t0)
                  add        s10, s0, s1
                  c.addi     s1, -1
                  lbu        a4, -16(t0)
                  lhu        t4, 0(t0)
                  lbu        s6, -7(t0)
                  srai       s4, t4, 9
                  nop
                  lhu        s3, -16(t0)
                  sra        a6, s6, a5
                  mulhu      s3, s8, t1
                  lh         a7, 2(t0)
                  sb         s3, 5(t0)
                  sb         a3, 7(t0)
                  fence
                  lbu        t1, 5(t0)
                  lhu        s6, 2(t0)
                  fence.i
                  andi       gp, s8, -274
                  lhu        s11, -12(t0)
                  lb         gp, 10(t0)
                  sltiu      t4, s8, -592
                  divu       a1, a6, t1
                  c.nop
                  or         s11, a4, a6
                  c.srai     a5, 8
                  sb         s11, 10(t0)
                  auipc      a1, 509144
                  sb         a7, 11(t0)
                  fence.i
                  slli       a7, a2, 10
                  divu       a6, s2, s11
                  sltu       gp, a6, ra
                  sltu       tp, ra, s1
                  andi       a5, sp, 575
                  c.li       s10, -1
                  lhu        ra, -16(t0)
                  rem        s0, gp, a0
                  lh         tp, 8(t0) #end riscv_load_store_rand_instr_stream_89
                  la         s4, region_4+441 #start riscv_load_store_rand_instr_stream_1
                  lb         s10, -109(s4)
                  sh         t4, -5(s4)
                  rem        s9, s1, s2
                  andi       a0, sp, -518
                  sll        zero, ra, t6
                  lb         a7, 198(s4)
                  auipc      s11, 440303
                  sb         s1, -77(s4)
                  remu       t0, s7, a4
                  sb         s7, 66(s4)
                  sw         t5, 19(s4)
                  sra        t4, a6, t4
                  srli       a1, a3, 14
                  sra        s6, s1, a2
                  lhu        zero, 229(s4)
                  lb         s0, 239(s4)
                  sb         a0, 85(s4)
                  lbu        s3, 114(s4)
                  andi       s11, s10, 412
                  sb         t3, -68(s4)
                  sb         a4, -122(s4)
                  sw         a1, 171(s4)
                  lbu        a7, -245(s4)
                  csrrci     s1, 0x340, 20
                  mul        s2, s9, a2
                  sltiu      s3, a2, -130
                  sb         t5, -256(s4)
                  lbu        a3, -140(s4)
                  lbu        t0, -30(s4)
                  sltiu      s10, sp, 131
                  lhu        a4, -57(s4)
                  lbu        t4, 128(s4)
                  lbu        t0, 181(s4)
                  sb         s1, -12(s4)
                  sw         s10, -217(s4)
                  srli       s8, t1, 13
                  auipc      a6, 913596
                  c.li       s1, -1
                  lb         a0, -200(s4)
                  sub        a1, t6, a1
                  c.slli     t1, 16
                  sra        ra, zero, zero
                  div        zero, s6, ra
                  sb         s4, -30(s4)
                  lbu        s7, 207(s4)
                  lbu        ra, -235(s4)
                  sub        t1, ra, s9
                  csrrwi     s7, 0x340, 17
                  srl        a7, t2, gp
                  sb         s7, -197(s4)
                  lbu        tp, 22(s4)
                  lbu        a2, 117(s4)
                  fence
                  lb         s8, -244(s4) #end riscv_load_store_rand_instr_stream_1
                  la         t2, region_3+149 #start load_store_instr_stream_2
                  la         s6, region_4+1707 #start load_store_instr_stream_1
                  la         a6, region_1+12929 #start load_store_instr_stream_0
                  lb         t1, 246(s6)
                  sh         s2, -39(t2)
                  lb         s11, 38(a6)
                  sb         t4, -47(t2)
                  sw         ra, 3(a6)
                  sh         a6, 85(s6)
                  lb         a2, 223(s6)
                  sh         a5, -57(t2)
                  lb         s7, 36(a6)
                  lb         s11, -17(s6)
                  lb         s9, 11(a6)
                  lbu        s9, -28(t2)
                  sb         a3, -34(s6)
                  sb         zero, 62(t2)
                  lb         a7, 110(s6)
                  sh         s1, 177(s6)
                  lb         t1, 57(a6)
                  lbu        ra, -59(a6)
                  lh         t1, 23(s6) #end load_store_instr_stream_1
                  sb         s7, 50(a6)
                  lb         a0, 4(a6)
                  lbu        s2, -48(t2) #end load_store_instr_stream_2
                  sb         s11, -25(a6) #end load_store_instr_stream_0
                  la         s1, region_0+2996 #start load_store_instr_stream_1
                  lb         zero, 190(s1)
                  la         gp, region_2+7110 #start load_store_instr_stream_2
                  lb         s3, -239(gp)
                  la         a7, region_1+4579 #start load_store_instr_stream_0
                  lhu        a0, -1839(a7)
                  lb         a1, 235(s1)
                  lb         a5, -872(a7)
                  sh         a2, -130(gp)
                  lb         s10, 242(s1)
                  lbu        t1, -116(gp)
                  sh         gp, -1429(a7)
                  lb         s2, -395(a7)
                  lb         t5, -65(gp)
                  sw         s8, -200(s1)
                  lb         t4, 1770(a7)
                  lb         s3, 1846(a7)
                  sh         a3, -58(gp)
                  lb         zero, -203(s1)
                  lb         s7, -454(a7)
                  lh         t0, -212(s1)
                  lh         s10, -121(a7)
                  sh         a4, 146(s1)
                  lb         a2, 51(s1)
                  lh         a6, -4(gp) #end load_store_instr_stream_2
                  lbu        s9, 226(s1) #end load_store_instr_stream_1
                  lbu        a2, 922(a7) #end load_store_instr_stream_0
                  la         t5, region_2+5830 #start riscv_load_store_rand_instr_stream_82
                  sltu       s11, gp, s6
                  lb         a1, -61(t5)
                  srli       s0, sp, 30
                  sb         s8, -239(t5)
                  srai       a1, a1, 9
                  lb         a1, 184(t5)
                  lhu        s9, 58(t5)
                  c.and      a3, a5
                  andi       ra, tp, 422
                  c.li       s3, -1
                  c.xor      a2, s0
                  sb         s2, 53(t5)
                  lb         a1, -184(t5)
                  lbu        s7, 124(t5)
                  lbu        a3, 64(t5)
                  c.addi     ra, -1
                  csrrs      t6, 0x340, a3
                  lh         gp, -20(t5)
                  lb         s6, 142(t5)
                  mulh       t4, a7, s6
                  lhu        s10, -104(t5)
                  div        a2, t2, a5
                  remu       a5, t6, s5
                  c.sub      a1, s1
                  mulhsu     a7, zero, s9
                  lh         s7, 250(t5)
                  c.srli     a5, 11
                  xor        a1, zero, a5
                  c.srli     a3, 29
                  lh         t1, 42(t5)
                  lhu        a4, -194(t5)
                  sb         a7, -128(t5)
                  slt        a5, t5, t3
                  sb         t3, 74(t5)
                  csrrs      s6, 0x340, zero
                  sh         a2, 168(t5)
                  slti       ra, s3, -216
                  sb         ra, 148(t5)
                  and        s11, t6, ra
                  sb         t0, -16(t5)
                  lb         tp, 13(t5) #end riscv_load_store_rand_instr_stream_82
                  la         s7, region_2+392 #start riscv_load_store_rand_instr_stream_64
                  lb         s1, 207(s7)
                  lh         t5, 42(s7)
                  lb         s3, 123(s7)
                  lh         s8, -38(s7)
                  lbu        s3, -27(s7)
                  c.nop
                  sltiu      t5, s2, 924
                  sw         s3, -20(s7)
                  xor        a0, t5, s11
                  sb         a5, 25(s7)
                  lh         s10, 102(s7)
                  lb         ra, 80(s7)
                  lbu        a7, -183(s7)
                  lbu        s4, 71(s7)
                  auipc      s1, 200380
                  lb         ra, 77(s7)
                  sra        s9, a3, a5
                  lb         ra, 43(s7)
                  divu       s4, s4, s6
                  lbu        t4, 202(s7)
                  c.slli     a3, 17
                  lb         s9, 215(s7)
                  div        a7, s7, s7
                  lb         s6, 166(s7)
                  lbu        a6, 53(s7)
                  lui        a1, 319396
                  mulhu      s0, sp, t1
                  lbu        t5, -26(s7)
                  lb         a0, -77(s7)
                  lhu        a5, 222(s7)
                  lbu        t0, -245(s7)
                  lb         a6, 139(s7)
                  lhu        s10, -4(s7)
                  sh         s8, 202(s7)
                  andi       s9, gp, -533
                  srl        ra, s2, zero
                  sb         zero, 151(s7)
                  lbu        s2, -57(s7)
                  sh         a2, -8(s7)
                  fence
                  lb         s8, -23(s7)
                  sltu       s6, a2, ra
                  sb         a0, 171(s7)
                  lbu        s6, -9(s7) #end riscv_load_store_rand_instr_stream_64
                  la         t6, region_2+2819 #start riscv_load_store_rand_instr_stream_73
                  lb         t1, 3(t6)
                  sb         a1, 4(t6)
                  sll        a0, t0, t5
                  mulh       s7, s2, s10
                  csrrsi     t2, 0x340, 1
                  xor        s7, sp, s7
                  srl        tp, a6, sp
                  c.xor      a0, a2
                  lb         tp, 10(t6)
                  lb         s9, -16(t6)
                  sll        t1, s6, s0
                  auipc      s6, 367593
                  lw         s6, 1(t6)
                  srli       s1, s6, 23
                  lbu        a6, 8(t6)
                  andi       s11, ra, 627
                  div        t1, s3, gp
                  c.slli     s7, 1
                  lw         a3, -15(t6)
                  csrrci     a0, 0x340, 18
                  nop
                  lb         s10, 4(t6)
                  sll        s10, s6, ra
                  lbu        a5, -16(t6)
                  sh         s10, 9(t6)
                  c.lui      s0, 22
                  mulhsu     gp, s6, t0
                  c.nop
                  nop
                  mul        a0, s11, s0
                  srli       a3, a3, 26
                  csrrwi     a5, 0x340, 16
                  csrrc      a4, 0x340, tp
                  c.nop
                  lb         t2, 5(t6)
                  lb         t2, 11(t6)
                  slt        s3, a1, s2
                  c.lui      tp, 21
                  sb         a4, 4(t6)
                  sb         a0, 8(t6)
                  sb         s8, -3(t6)
                  slli       a1, t2, 29
                  c.add      s9, a3
                  lh         s10, 11(t6)
                  lb         a0, 8(t6) #end riscv_load_store_rand_instr_stream_73
                  la         t2, region_4+1413 #start riscv_load_store_rand_instr_stream_83
                  and        a7, s2, s4
                  lbu        s2, -10(t2)
                  divu       a4, s3, ra
                  c.sub      a3, a3
                  sh         a3, -199(t2)
                  mulh       a3, zero, ra
                  sb         zero, -144(t2)
                  slt        a1, t5, gp
                  c.mv       a4, s5
                  sll        s10, s1, t4
                  lui        s11, 194529
                  fence
                  remu       a7, s2, a3
                  lbu        s1, 177(t2)
                  or         s9, a5, s1
                  lb         s1, 126(t2)
                  lw         s2, -229(t2)
                  lbu        t0, 213(t2)
                  csrrsi     s7, 0x340, 20
                  div        a7, t3, a6
                  sb         t4, 78(t2)
                  auipc      s7, 580875
                  sb         zero, -176(t2)
                  fence.i
                  lui        a4, 411983
                  csrrw      t4, 0x340, t1
                  sra        s10, s5, s8
                  nop
                  c.addi     s11, -1
                  lbu        a0, -146(t2)
                  sw         a4, -73(t2)
                  csrrw      gp, 0x340, t3
                  sb         gp, -192(t2) #end riscv_load_store_rand_instr_stream_83
                  la         a3, region_2+6913 #start riscv_load_store_rand_instr_stream_3
                  c.sub      a5, a3
                  mulhsu     a0, s1, t1
                  sh         s11, 1067(a3)
                  addi       t2, s11, -97
                  c.srai     s1, 18
                  c.slli     s6, 5
                  div        s8, t2, s0
                  div        t6, s2, s1
                  csrrsi     tp, 0x340, 8
                  ori        s2, gp, -174
                  lbu        a5, 411(a3)
                  lbu        t1, 577(a3)
                  sh         s6, 529(a3)
                  sltiu      t0, t4, -392
                  lb         a0, 493(a3)
                  mulh       t4, s5, sp
                  sb         a4, -521(a3)
                  c.and      a5, a0
                  c.slli     s4, 6
                  lhu        s4, -1673(a3)
                  c.li       a5, -1
                  div        s1, tp, tp
                  mul        t0, gp, s9
                  lb         a0, -1610(a3)
                  lbu        s3, -1221(a3)
                  lh         ra, -1791(a3) #end riscv_load_store_rand_instr_stream_3
                  la         a2, region_1+8031 #start riscv_load_store_rand_instr_stream_17
                  mulh       a7, t0, gp
                  lb         a1, 756(a2)
                  c.or       a0, s0
                  c.or       a3, a1
                  sb         sp, -566(a2)
                  c.addi     s7, -1
                  lb         a3, 870(a2)
                  c.nop
                  csrrs      s0, 0x340, s11
                  lbu        tp, 208(a2)
                  andi       s10, a3, -850
                  csrrwi     s0, 0x340, 1
                  divu       t6, s9, s10
                  sltu       a0, tp, sp
                  lbu        s7, -334(a2)
                  c.slli     a1, 3
                  mulh       a4, t4, t4
                  sb         s0, -1983(a2)
                  auipc      s11, 298639
                  sb         a6, 602(a2)
                  sh         s9, 1621(a2)
                  and        ra, a2, t0
                  lb         a6, -1868(a2)
                  c.li       s3, -1
                  c.andi     s1, -1
                  mulhsu     s6, t1, s1
                  lbu        t5, 50(a2)
                  sltiu      s1, t0, -442
                  srl        a5, s11, s2
                  lbu        s0, -1744(a2)
                  or         t4, t3, t2
                  sb         t6, -852(a2)
                  sra        a6, t1, s11
                  lb         t5, -706(a2)
                  lbu        s8, 832(a2)
                  mulh       s9, zero, zero
                  sltiu      s9, s6, 454
                  lhu        t4, -669(a2)
                  c.addi     a4, 15
                  sb         s10, 1494(a2)
                  lbu        s7, 348(a2)
                  sb         s10, -1229(a2)
                  c.slli     a4, 7
                  lh         s7, -1641(a2)
                  sb         s11, -562(a2)
                  c.and      a1, a5
                  lb         zero, 468(a2) #end riscv_load_store_rand_instr_stream_17
                  la         a2, region_1+693 #start riscv_load_store_rand_instr_stream_8
                  sra        t6, a6, s2
                  lhu        a4, 85(a2)
                  sb         gp, 118(a2)
                  sb         s3, -10(a2)
                  lb         s7, 98(a2)
                  csrrwi     a7, 0x340, 25
                  csrrw      tp, 0x340, ra
                  lb         s3, -95(a2)
                  addi       s6, sp, -6
                  c.slli     a5, 16
                  c.srli     a5, 29
                  andi       s3, s8, -558
                  sb         t1, -9(a2)
                  sw         t5, 163(a2)
                  srli       s9, s6, 31
                  lb         a0, 245(a2)
                  srl        s7, t0, a5
                  c.sub      a0, a3
                  c.lui      t1, 19
                  or         t6, s4, s6
                  sub        s4, t1, a0
                  srli       s2, a3, 17
                  lb         s1, 162(a2)
                  lb         t4, 103(a2)
                  c.li       t6, -1
                  lui        s10, 260443
                  ori        s11, t2, -779
                  sb         s2, 62(a2)
                  c.and      a0, a4
                  auipc      ra, 26173
                  sltiu      gp, t5, -220
                  c.and      a0, a1
                  csrrc      s7, 0x340, a6
                  auipc      gp, 876117
                  sb         a4, -160(a2)
                  mulhu      s0, zero, t3
                  csrrsi     a6, 0x340, 27
                  rem        a3, s2, a0
                  lb         a7, 84(a2)
                  lbu        s10, 86(a2)
                  sh         a7, 103(a2) #end riscv_load_store_rand_instr_stream_8
                  la         a6, region_1+381 #start load_store_instr_stream_1
                  la         s7, region_2+2643 #start load_store_instr_stream_2
                  lhu        s10, 219(s7)
                  la         a5, region_0+552 #start load_store_instr_stream_0
                  lb         zero, 18(a6)
                  sh         a6, -277(a6)
                  sb         t0, -186(s7)
                  lb         s2, -120(s7)
                  lh         s11, 0(a5)
                  lb         s2, -172(s7)
                  lb         a4, -56(a6)
                  lb         s2, -3(a5)
                  lbu        t2, -3(a5)
                  sb         s11, 550(a6)
                  lb         a7, -88(s7)
                  lhu        gp, 10(a5)
                  lhu        a7, 1353(a6)
                  lbu        gp, 16(a5)
                  lb         s9, -93(s7)
                  sb         t3, 199(s7) #end load_store_instr_stream_2
                  lbu        t6, 8(a6)
                  lbu        s4, 1275(a6) #end load_store_instr_stream_1
                  sh         s0, -14(a5) #end load_store_instr_stream_0
                  la         s4, region_2+1648 #start riscv_load_store_rand_instr_stream_55
                  addi       s7, s7, -385
                  srli       t2, zero, 31
                  lbu        t6, -57(s4)
                  lb         s8, -219(s4)
                  sb         s7, -162(s4)
                  csrrsi     a7, 0x340, 4
                  lb         t0, -106(s4)
                  sub        t1, a1, gp
                  auipc      a6, 711768
                  mulhsu     s3, s5, a0
                  sb         s3, 231(s4)
                  lhu        a0, 236(s4)
                  lb         t5, -238(s4)
                  lb         a3, -197(s4)
                  div        t4, t0, a0
                  ori        a0, gp, 779
                  rem        a2, s5, a4
                  lb         t6, -3(s4)
                  lbu        s1, 100(s4)
                  sh         s4, -76(s4)
                  c.li       s8, -1
                  nop
                  lhu        a6, -70(s4)
                  c.or       a2, a0
                  csrrwi     a0, 0x340, 17
                  lbu        a2, 251(s4)
                  add        a1, t1, t6
                  lbu        s1, -127(s4)
                  srai       a0, a6, 15
                  sh         t4, 32(s4)
                  sh         t1, 118(s4)
                  mulhsu     a6, a3, t1
                  div        s3, a7, a2
                  lui        s0, 457827
                  sh         sp, -136(s4)
                  srl        t5, s8, a3
                  lh         a7, 134(s4)
                  sll        t6, s7, s11
                  c.mv       a0, a4
                  srli       a7, a2, 2
                  add        ra, s4, a2
                  sra        a4, t6, t2
                  lhu        s10, -24(s4) #end riscv_load_store_rand_instr_stream_55
                  la         a7, region_4+3256 #start riscv_load_store_rand_instr_stream_42
                  lbu        s0, 43(a7)
                  lhu        s1, 108(a7)
                  sll        s3, s9, sp
                  sltu       s0, a2, a6
                  lui        ra, 258910
                  div        s10, t5, s5
                  sll        tp, s8, a1
                  mulh       s3, gp, zero
                  lh         t4, 174(a7)
                  lbu        a5, 35(a7)
                  c.li       a5, 29
                  sb         tp, -127(a7)
                  lb         s4, 53(a7)
                  sub        s1, t0, s3
                  sub        a0, t6, a5
                  xor        zero, s2, a7
                  ori        s4, s1, -419
                  c.srli     s1, 31
                  sh         s4, 100(a7)
                  lui        t0, 452420
                  sb         s10, -159(a7)
                  c.and      a5, a2
                  c.and      a1, a3
                  sh         s2, -178(a7)
                  andi       t6, s11, -933
                  sll        s6, s7, t1
                  sll        s11, t2, s5
                  mulhsu     a6, s7, s9
                  csrrsi     s11, 0x340, 29
                  divu       s0, s7, a3
                  lbu        ra, -220(a7) #end riscv_load_store_rand_instr_stream_42
                  la         tp, region_0+2012 #start riscv_load_store_rand_instr_stream_28
                  add        s3, ra, s8
                  lhu        a0, 6(tp)
                  sltu       a7, ra, s5
                  sb         a0, 5(tp)
                  c.add      ra, sp
                  fence
                  lb         t5, -11(tp)
                  srl        s2, a1, t2
                  remu       s10, s9, s10
                  divu       a5, s6, a5
                  sh         s2, 4(tp)
                  slt        a6, gp, t5
                  lbu        s10, -11(tp)
                  sh         s10, 12(tp)
                  lh         t4, -2(tp)
                  slli       s10, ra, 15
                  sra        t5, s6, s11
                  c.andi     a2, -1
                  lbu        zero, -4(tp)
                  c.xor      a3, a1
                  csrrci     t4, 0x340, 22
                  sb         a1, 14(tp)
                  c.addi     s6, 31
                  mulhsu     t2, s8, t2
                  srai       s8, gp, 26
                  c.nop
                  csrrs      s0, 0x340, a6
                  lb         t0, -15(tp)
                  addi       a3, s3, 565
                  lb         a0, 6(tp)
                  c.slli     s8, 12
                  lb         s4, -3(tp)
                  lb         a6, -12(tp)
                  sb         t5, -14(tp)
                  c.andi     s1, 31
                  sub        a5, s1, t2
                  sb         t6, 14(tp)
                  csrrs      t1, 0x340, s0
                  lbu        s4, 6(tp)
                  sb         s6, -2(tp)
                  lb         a4, 16(tp)
                  lh         s10, 2(tp)
                  c.mv       s10, ra
                  c.andi     s0, -1
                  c.addi     s1, 17
                  sb         a0, 13(tp)
                  lui        s4, 885784
                  sb         t3, 3(tp)
                  lbu        a5, 8(tp)
                  c.srli     s1, 19
                  c.srli     s1, 20
                  csrrw      t1, 0x340, s7
                  sb         gp, 4(tp) #end riscv_load_store_rand_instr_stream_28
                  la         s8, region_0+1729 #start riscv_load_store_rand_instr_stream_5
                  c.add      a1, s4
                  fence
                  lbu        t0, 41(s8)
                  c.xor      s1, a0
                  c.sub      a5, s0
                  c.srai     a1, 14
                  lbu        a5, 4(s8)
                  c.lui      a1, 23
                  lb         s6, -5(s8)
                  or         s4, a6, a0
                  rem        t6, s2, sp
                  lb         s6, -179(s8)
                  lw         t6, 107(s8)
                  mulhu      a7, a1, s11
                  xor        a1, t6, s5
                  auipc      s11, 920339
                  c.add      a1, tp
                  srl        s0, a0, a7
                  fence
                  fence
                  lhu        t1, 5(s8)
                  lh         s2, 81(s8)
                  sb         tp, 68(s8)
                  lb         t2, -44(s8)
                  lb         s4, 244(s8)
                  lw         gp, -133(s8)
                  fence.i
                  andi       tp, s1, 291
                  div        s2, t4, s4
                  lhu        a0, 61(s8)
                  sltiu      s1, t0, 473
                  sh         t0, 39(s8) #end riscv_load_store_rand_instr_stream_5
                  la         s3, region_0+819 #start riscv_load_store_rand_instr_stream_81
                  mulhu      a2, s0, a2
                  sltiu      t5, t0, -757
                  csrrwi     t0, 0x340, 22
                  lh         t6, -15(s3)
                  addi       s9, t4, 125
                  sltu       t2, s4, s11
                  c.add      s4, s10
                  sub        s1, t3, s2
                  lbu        s1, 12(s3)
                  sb         ra, -6(s3)
                  sh         zero, 15(s3)
                  lbu        a0, 2(s3)
                  sb         zero, 14(s3)
                  lbu        ra, 7(s3)
                  div        tp, a2, s1
                  lb         tp, 3(s3)
                  lb         s8, 15(s3)
                  sb         t0, -12(s3)
                  c.addi     t1, -1
                  c.or       a3, a1
                  lb         s2, 8(s3)
                  lw         t6, -7(s3)
                  lbu        s11, 2(s3)
                  csrrc      s11, 0x340, a5
                  lbu        gp, 0(s3)
                  c.srai     a1, 19
                  lh         a7, -9(s3)
                  slli       a5, a2, 19
                  div        s10, a5, a2
                  and        t2, s0, t5
                  lbu        gp, -10(s3)
                  c.sub      a1, s1
                  xor        ra, s9, t1
                  c.srli     s0, 20
                  lbu        t2, -16(s3)
                  lb         ra, -14(s3)
                  divu       a1, sp, tp
                  sh         t0, -11(s3)
                  sb         s5, -1(s3)
                  sb         zero, -2(s3)
                  auipc      s10, 171580
                  sb         t2, 1(s3)
                  sb         s5, 4(s3)
                  lbu        t6, -2(s3)
                  lhu        a7, -1(s3)
                  lh         gp, -15(s3)
                  nop
                  mulhu      a4, tp, s11
                  slli       a4, t6, 2
                  mul        a6, s4, a4
                  sb         a2, -2(s3) #end riscv_load_store_rand_instr_stream_81
                  la         s3, region_2+5207 #start riscv_load_store_rand_instr_stream_80
                  sb         a5, 6(s3)
                  lbu        t5, -41(s3)
                  c.srai     a5, 10
                  sh         t1, -9(s3)
                  lb         a5, 128(s3)
                  sb         s11, 36(s3)
                  sh         s3, 157(s3)
                  sb         s5, 174(s3)
                  xor        a2, a5, s10
                  lb         s9, 216(s3)
                  sb         s1, -164(s3)
                  sb         s11, -89(s3)
                  lh         a0, -63(s3)
                  andi       s7, ra, -941
                  csrrci     a3, 0x340, 21
                  srai       t0, s10, 18
                  sb         s4, -220(s3)
                  c.li       a4, -1
                  sh         s1, 31(s3)
                  lh         ra, -223(s3)
                  div        s1, t0, t4
                  c.srli     s0, 31
                  c.nop
                  lb         zero, -162(s3)
                  rem        s7, s2, t1
                  lb         s9, -30(s3)
                  remu       a2, s6, s1
                  sll        t6, ra, s9
                  sb         a0, -82(s3)
                  lui        s4, 417289
                  addi       s8, s6, 1002
                  lb         a1, 80(s3)
                  slt        a7, a7, s10
                  xor        s4, a7, a0
                  c.slli     gp, 17
                  sh         s1, -217(s3)
                  lhu        a3, 51(s3)
                  xori       gp, t2, 399
                  lb         s8, -84(s3)
                  mulhu      a3, a7, t1
                  csrrwi     a7, 0x340, 15
                  fence.i
                  lb         zero, 160(s3)
                  sb         s2, 100(s3)
                  fence
                  c.xor      s0, s0
                  sw         tp, -187(s3)
                  csrrw      a6, 0x340, zero
                  lb         t4, -212(s3)
                  c.slli     a1, 13
                  srli       zero, sp, 31
                  add        s4, s4, t6
                  div        t1, t1, s0
                  lbu        a5, 170(s3)
                  or         s4, zero, s8
                  lb         a4, -111(s3)
                  lw         a2, 209(s3)
                  sb         s6, 252(s3)
                  c.mv       ra, t4
                  lbu        a4, -67(s3) #end riscv_load_store_rand_instr_stream_80
                  la         a6, region_1+2328 #start riscv_load_store_rand_instr_stream_4
                  lb         t4, 7(a6)
                  sb         t3, 15(a6)
                  fence
                  lb         s4, -8(a6)
                  srli       s6, s0, 10
                  sh         a2, -10(a6)
                  and        s8, a5, s10
                  sltiu      a2, s8, -502
                  c.addi     a1, 17
                  csrrs      a3, 0x340, s6
                  sub        s6, t6, sp
                  remu       s7, t1, t0
                  lbu        s10, -6(a6)
                  and        t6, s10, s8
                  csrrw      s0, 0x340, s10
                  lui        ra, 513329
                  lbu        t4, 8(a6)
                  sh         a4, 12(a6)
                  sw         sp, -8(a6)
                  sb         t5, 15(a6)
                  slt        s11, t6, t6
                  lh         s10, 10(a6)
                  sltiu      a7, s0, 23
                  lb         t4, 15(a6) #end riscv_load_store_rand_instr_stream_4
                  la         a3, region_3+103 #start load_store_instr_stream_1
                  la         s9, region_1+9581 #start load_store_instr_stream_0
                  sb         s4, -237(s9)
                  lhu        tp, 221(a3)
                  la         t0, region_0+144 #start load_store_instr_stream_2
                  lbu        s4, 46(t0)
                  lb         a1, 128(s9)
                  lbu        t2, -56(t0)
                  sb         a3, 28(a3)
                  sb         s4, 2(s9)
                  lw         s2, 64(t0)
                  lbu        ra, 16(a3)
                  lb         s11, 52(t0)
                  sb         a1, 113(a3)
                  lb         s6, 174(s9)
                  lbu        gp, -64(a3)
                  sb         a7, 236(s9)
                  sb         s6, 29(t0)
                  lb         s2, 202(s9)
                  lbu        s4, -17(t0)
                  sh         t3, 173(a3) #end load_store_instr_stream_1
                  sh         s4, -64(t0) #end load_store_instr_stream_2
                  lb         a4, 182(s9) #end load_store_instr_stream_0
                  la         t0, region_0+3606 #start load_store_instr_stream_1
                  sb         a2, -220(t0)
                  lb         t4, -149(t0)
                  la         a5, region_0+2575 #start load_store_instr_stream_0
                  lb         s6, 191(t0)
                  lhu        t2, -212(t0)
                  lb         zero, 0(a5)
                  sb         s3, 31(t0)
                  sb         t4, 43(a5)
                  lbu        a3, 181(t0)
                  lw         s3, 182(t0)
                  lb         s11, -51(t0)
                  lb         s7, 141(a5)
                  lbu        gp, -155(t0) #end load_store_instr_stream_1
                  sb         s4, 60(a5)
                  lh         a7, -107(a5) #end load_store_instr_stream_0
                  la         a7, region_1+14167 #start riscv_load_store_rand_instr_stream_63
                  srli       a5, s1, 20
                  lb         s11, -12(a7)
                  csrrci     tp, 0x340, 31
                  add        s6, t4, s1
                  sltu       s7, t2, tp
                  lhu        a2, 13(a7)
                  lb         t1, 10(a7)
                  c.addi     s0, -1
                  xori       s8, s8, -479
                  c.xor      a1, s1
                  sh         a0, 11(a7)
                  nop
                  lbu        a5, -2(a7)
                  c.srli     a4, 11
                  c.sub      a5, a2
                  lb         a2, -5(a7)
                  lbu        gp, 16(a7)
                  sra        s2, s0, sp
                  rem        s6, zero, s10
                  fence.i
                  sltiu      t1, t4, 247
                  sh         a1, -9(a7)
                  c.and      s0, s0
                  sb         s11, -2(a7)
                  c.nop
                  lbu        a3, -5(a7)
                  c.li       a2, 4
                  div        s3, a3, s3
                  c.andi     a2, -1
                  sh         s9, 3(a7)
                  lbu        t0, 12(a7)
                  sb         t4, 6(a7)
                  lb         a0, -3(a7)
                  lhu        t5, -7(a7)
                  c.add      s11, s11
                  c.and      a5, a4
                  sra        s11, a5, a3
                  add        a0, t6, s10
                  lb         gp, -4(a7)
                  auipc      t2, 725652
                  lbu        s2, -10(a7)
                  c.add      s7, a0
                  lbu        gp, 8(a7) #end riscv_load_store_rand_instr_stream_63
                  la         s0, region_4+3361 #start riscv_load_store_rand_instr_stream_54
                  slli       s3, a7, 23
                  lbu        t5, -1297(s0)
                  lbu        a0, -103(s0)
                  sb         t2, 688(s0)
                  lw         zero, -449(s0)
                  lh         t5, 11(s0)
                  div        s7, s5, a6
                  lhu        t4, 315(s0)
                  lbu        a0, -1134(s0)
                  csrrw      t1, 0x340, t4
                  lb         a4, -1931(s0)
                  c.li       s1, 31
                  lb         t2, -648(s0)
                  sb         a1, 257(s0)
                  sb         s2, -1134(s0)
                  c.srli     a3, 10
                  lb         t0, -1430(s0)
                  c.srli     a1, 1
                  lb         t1, -305(s0)
                  lbu        a7, -548(s0)
                  sb         t4, -1336(s0)
                  srli       a4, a0, 31
                  sb         t6, 727(s0)
                  addi       s10, gp, -197
                  lbu        ra, -450(s0)
                  sb         s1, -25(s0)
                  c.li       s11, 2
                  c.and      s1, a3
                  lbu        gp, -1904(s0)
                  lbu        t5, 174(s0)
                  lh         s6, -1449(s0)
                  lh         t5, -729(s0)
                  lb         s1, -1390(s0)
                  xor        t5, t6, a5
                  c.slli     t2, 15
                  sh         s3, -1411(s0)
                  c.slli     t2, 2
                  ori        s3, t3, -300
                  sb         s9, -962(s0)
                  c.xor      a5, a4
                  lbu        s11, -138(s0)
                  andi       a6, a5, -22
                  sb         a5, -1454(s0) #end riscv_load_store_rand_instr_stream_54
                  la         t1, region_2+7607 #start load_store_instr_stream_0
                  la         s2, region_1+15316 #start load_store_instr_stream_1
                  sb         t1, 550(t1)
                  lbu        t4, 133(s2)
                  lb         ra, -400(t1)
                  lbu        s9, -125(s2)
                  sb         a5, 53(s2)
                  sw         s0, -1063(t1)
                  lb         a2, -1165(t1)
                  lhu        s4, 120(s2)
                  sb         a0, -596(t1)
                  lb         s9, -15(s2)
                  lhu        s10, 38(s2) #end load_store_instr_stream_1
                  sb         a0, -717(t1)
                  sh         s6, -829(t1)
                  sb         a1, -705(t1)
                  lh         s7, -81(t1)
                  lbu        t2, -533(t1) #end load_store_instr_stream_0
                  la         a4, region_2+748 #start riscv_load_store_rand_instr_stream_13
                  sb         sp, 55(a4)
                  lw         a7, -56(a4)
                  c.add      s11, t3
                  sb         a1, -3(a4)
                  ori        s7, a0, 180
                  lb         a7, -24(a4)
                  auipc      s4, 692659
                  lhu        s6, -22(a4)
                  lb         tp, 44(a4)
                  slli       s9, a7, 11
                  lb         gp, 7(a4)
                  c.lw       s0, 60(a4)
                  nop
                  sh         sp, -58(a4)
                  sb         s7, 5(a4)
                  nop
                  divu       t2, t6, tp
                  lbu        s1, 41(a4)
                  slt        zero, t1, s9
                  c.nop
                  sb         a5, -46(a4)
                  rem        s3, s7, a1
                  lb         s8, -39(a4)
                  rem        s9, t3, a2
                  sb         a1, -8(a4)
                  lbu        s9, 31(a4)
                  c.slli     s4, 1
                  c.and      s0, a0
                  csrrs      s1, 0x340, s4
                  sb         t4, -1(a4)
                  lbu        s6, -53(a4)
                  c.add      a7, a5
                  sb         zero, -2(a4)
                  slli       s6, s8, 4
                  srai       s10, s7, 29
                  sub        ra, s0, s1
                  c.addi     t5, 27
                  lb         a0, -17(a4)
                  slt        zero, gp, s6
                  csrrw      zero, 0x340, s3
                  c.srai     a1, 15
                  lb         a2, 42(a4)
                  sb         t3, -52(a4)
                  c.sw       s1, 8(a4)
                  lbu        s2, 27(a4)
                  and        s1, t2, t1
                  or         s9, sp, s9
                  sb         s7, -1(a4)
                  c.slli     s0, 15
                  lbu        t5, -11(a4) #end riscv_load_store_rand_instr_stream_13
                  la         s6, region_3+458 #start load_store_instr_stream_1
                  sb         ra, -4(s6)
                  la         a7, region_4+2273 #start load_store_instr_stream_0
                  lbu        s11, -5(s6)
                  lb         s4, -5(a7)
                  lb         s10, -2(a7)
                  lh         s2, 12(s6)
                  lbu        s1, 0(s6)
                  sw         t3, -6(s6)
                  sh         s11, -5(a7)
                  lb         t4, -1(s6)
                  lb         s8, -4(a7)
                  sb         t1, 13(a7)
                  sb         a0, -11(s6)
                  lh         s4, -13(a7)
                  lbu        s4, -12(a7)
                  sb         a3, 4(s6)
                  sb         a3, 6(a7)
                  lh         t6, 6(s6)
                  lhu        s9, 4(s6) #end load_store_instr_stream_1
                  lb         t5, 6(a7) #end load_store_instr_stream_0
                  la         gp, region_3+298 #start riscv_load_store_rand_instr_stream_52
                  lw         a6, -10(gp)
                  sh         a1, -16(gp)
                  sb         s4, 8(gp)
                  c.xor      s1, a2
                  slli       s10, tp, 8
                  lb         a1, 7(gp)
                  sh         a4, -4(gp)
                  c.srli     s1, 18
                  lb         a1, 5(gp)
                  sll        t5, s1, t1
                  sh         zero, 14(gp)
                  csrrw      a2, 0x340, s5
                  c.slli     s3, 10
                  ori        a6, t2, 2
                  sb         s7, 0(gp)
                  sb         t2, -15(gp)
                  lh         s7, 8(gp)
                  rem        a2, a7, s2
                  lw         s1, 2(gp)
                  mulh       s2, t5, a1
                  c.or       a0, a3
                  sb         s3, -7(gp)
                  lbu        s3, 14(gp)
                  sb         s7, -1(gp)
                  c.nop
                  lbu        t2, 11(gp)
                  lb         t0, -13(gp) #end riscv_load_store_rand_instr_stream_52
                  la         t6, region_0+944 #start riscv_load_store_rand_instr_stream_59
                  add        t2, s1, t2
                  sltu       t4, s3, sp
                  lbu        a2, -11(t6)
                  lbu        s9, 6(t6)
                  mul        s10, s10, a6
                  nop
                  lb         a5, 9(t6)
                  lb         s7, -7(t6)
                  lhu        s2, 12(t6)
                  sh         s0, -2(t6)
                  lw         s6, -16(t6)
                  lhu        s3, 0(t6)
                  sb         s8, 6(t6)
                  sh         a3, -14(t6)
                  lbu        a3, -1(t6)
                  sltiu      t5, s0, 839
                  lhu        s10, 8(t6)
                  csrrwi     a2, 0x340, 15
                  nop
                  c.srai     a1, 27
                  sb         s1, -15(t6)
                  c.srai     a1, 12
                  sb         a6, -8(t6)
                  c.andi     a2, -1
                  sh         tp, -10(t6)
                  lbu        s0, -8(t6)
                  lh         a7, -6(t6)
                  lbu        s7, -11(t6)
                  sb         sp, 0(t6)
                  c.srli     s0, 31
                  andi       s10, t1, -220
                  lbu        t0, 14(t6)
                  mulh       t1, a2, sp
                  mulhsu     ra, zero, s4
                  sll        zero, s1, a4
                  lbu        a5, -13(t6)
                  lhu        s8, -14(t6)
                  c.nop
                  sb         s1, 14(t6) #end riscv_load_store_rand_instr_stream_59
                  la         ra, region_1+2452 #start riscv_load_store_rand_instr_stream_90
                  lh         t5, 650(ra)
                  mulhsu     t1, a0, s10
                  sll        a3, zero, ra
                  c.or       a5, a5
                  lh         s6, 1062(ra)
                  lb         a5, 1625(ra)
                  srai       s7, a0, 17
                  sra        t6, a7, s1
                  ori        a0, a5, 686
                  slti       a4, s10, -978
                  sb         a1, 435(ra)
                  mulhsu     s3, s11, a3
                  lbu        t1, -1766(ra)
                  lbu        s0, 545(ra)
                  sh         s7, 664(ra)
                  lb         s8, -773(ra)
                  addi       s11, zero, -687
                  sw         s5, -880(ra)
                  sb         a2, -1947(ra)
                  csrrwi     a4, 0x340, 25
                  lhu        t4, 602(ra)
                  c.slli     gp, 20
                  lbu        zero, -927(ra)
                  xori       t2, s1, -214
                  lbu        s10, -831(ra) #end riscv_load_store_rand_instr_stream_90
                  la         s7, region_0+1243 #start riscv_load_store_rand_instr_stream_35
                  lb         s1, 16(s7)
                  sh         zero, -35(s7)
                  lb         a6, 54(s7)
                  csrrw      s4, 0x340, zero
                  srli       a0, a1, 26
                  lbu        s6, 59(s7)
                  sltu       a4, t5, a6
                  sb         s0, 13(s7)
                  sb         t3, -48(s7)
                  lb         s6, -36(s7)
                  lb         s1, -12(s7)
                  sb         tp, 4(s7)
                  sub        a1, s1, a7
                  sh         s3, 15(s7)
                  lbu        a6, 2(s7)
                  sb         t0, -50(s7)
                  lb         a0, -20(s7)
                  divu       s4, s6, s4
                  lb         a3, 62(s7)
                  csrrw      zero, 0x340, a4
                  c.addi     a6, -1
                  mulhu      a7, t0, t3
                  sb         s11, -12(s7)
                  sb         t6, -10(s7)
                  fence.i
                  divu       s8, a0, t2
                  sh         a4, -17(s7)
                  sltiu      ra, a1, 836
                  sw         t2, -3(s7)
                  lb         a4, 55(s7)
                  lbu        t0, 30(s7)
                  c.nop
                  lbu        s11, 52(s7) #end riscv_load_store_rand_instr_stream_35
                  la         t5, region_2+1087 #start load_store_instr_stream_1
                  la         s9, region_3+352 #start load_store_instr_stream_0
                  la         a3, region_1+10840 #start load_store_instr_stream_2
                  la         a0, region_4+2386 #start load_store_instr_stream_3
                  sb         a5, 18(a3)
                  lb         s3, 16(t5)
                  lb         t2, 124(a0)
                  sh         a0, -150(a3)
                  lb         t6, 65(a0)
                  sb         a3, -223(s9)
                  lb         t4, -51(a0)
                  lbu        a1, 8(t5)
                  lbu        s11, -175(a0)
                  lhu        zero, -3(t5)
                  sb         a1, 16(a3)
                  sb         s6, -40(a0)
                  sh         a5, -218(a3)
                  sw         t2, 132(s9)
                  lbu        s4, 175(a0)
                  lbu        ra, 7(t5)
                  sb         ra, 4(t5)
                  lh         s7, 150(s9)
                  sb         a3, -185(a3)
                  sb         s6, 13(t5)
                  lh         tp, 158(a3)
                  sb         t1, -217(a3)
                  lb         s4, 127(s9)
                  lh         s3, -148(a0)
                  lh         tp, 6(a3)
                  lh         a7, -5(t5)
                  lb         s4, -208(a0)
                  lb         t6, -1(t5)
                  lh         s6, 124(a3) #end load_store_instr_stream_2
                  lbu        s4, 29(a0)
                  lb         a2, 115(a0) #end load_store_instr_stream_3
                  lbu        s0, -8(t5)
                  lhu        a4, 11(t5) #end load_store_instr_stream_1
                  lbu        s2, -48(s9) #end load_store_instr_stream_0
                  la         a6, region_1+3553 #start load_store_instr_stream_1
                  la         t6, region_0+352 #start load_store_instr_stream_0
                  la         a2, region_2+3190 #start load_store_instr_stream_2
                  sw         ra, -1457(a6)
                  sh         s7, -164(a2)
                  lb         s8, 192(a2)
                  sb         a3, -1316(a6)
                  lhu        gp, 176(a2)
                  sh         s5, 156(t6)
                  sh         a2, -60(a2)
                  lb         t2, -165(t6)
                  sb         s10, 226(a2)
                  sh         a6, 1833(a6)
                  lb         a5, 2023(a6)
                  lb         s1, -176(t6)
                  lb         s3, 1634(a6)
                  lw         t0, 40(t6)
                  lb         a3, -782(a6)
                  lh         s11, 206(a2)
                  sb         gp, 724(a6) #end load_store_instr_stream_1
                  lbu        s11, -150(a2) #end load_store_instr_stream_2
                  lbu        s9, -177(t6) #end load_store_instr_stream_0
                  la         s11, region_0+2595 #start riscv_load_store_rand_instr_stream_25
                  fence
                  sw         t0, -63(s11)
                  csrrw      a4, 0x340, t0
                  lb         s3, 38(s11)
                  lbu        s8, 50(s11)
                  sub        a0, tp, s2
                  div        a5, sp, zero
                  sb         t5, -23(s11)
                  c.addi     s8, -1
                  csrrwi     s8, 0x340, 16
                  andi       gp, a6, 700
                  csrrsi     s2, 0x340, 20
                  mul        t5, s11, s0
                  sh         s5, 13(s11)
                  lb         s4, -9(s11)
                  c.li       s10, 5
                  lb         s8, 23(s11)
                  lui        a2, 950042
                  xori       a4, ra, 22
                  sb         a5, 4(s11)
                  lh         t4, 51(s11)
                  lb         a0, 11(s11) #end riscv_load_store_rand_instr_stream_25
                  la         t5, region_2+6303 #start riscv_load_store_rand_instr_stream_45
                  remu       a0, a4, s4
                  c.nop
                  lb         a5, -1635(t5)
                  lbu        t2, -746(t5)
                  lbu        t2, 294(t5)
                  lbu        t4, 1850(t5)
                  c.addi     t4, -1
                  xor        a3, s3, zero
                  c.slli     s4, 21
                  sb         a2, -368(t5)
                  sll        ra, t3, zero
                  lhu        t4, 1311(t5)
                  lh         a5, 1571(t5)
                  auipc      s3, 601588
                  lbu        s11, -1969(t5)
                  lb         t2, -571(t5)
                  slli       s9, a6, 17
                  csrrs      s10, 0x340, s5
                  remu       a1, s8, a7
                  lb         a6, -166(t5)
                  addi       s9, s0, -871
                  lbu        s3, -1850(t5)
                  div        t2, s4, a1
                  c.mv       s2, t3
                  c.slli     a2, 27
                  lb         gp, -1368(t5)
                  srli       tp, ra, 21
                  lb         a2, -1040(t5) #end riscv_load_store_rand_instr_stream_45
                  la         tp, region_3+329 #start riscv_load_store_rand_instr_stream_51
                  sh         a2, 135(tp)
                  lb         s10, -217(tp)
                  slli       s8, s1, 16
                  sb         s8, 138(tp)
                  sh         sp, 127(tp)
                  c.or       a4, a2
                  lb         t2, 53(tp)
                  c.slli     s6, 24
                  lbu        a5, -326(tp)
                  sb         s3, -38(tp)
                  sw         t2, -73(tp)
                  srli       s10, a3, 22
                  sub        zero, a6, t4
                  c.add      t1, s4
                  sb         a2, -240(tp)
                  lh         s1, -165(tp)
                  srl        t4, s1, ra
                  srli       s1, a5, 16
                  sb         t6, -277(tp)
                  lb         s3, -91(tp)
                  lb         s1, 111(tp)
                  sb         s3, -314(tp)
                  c.addi     t2, 23
                  lbu        s3, -197(tp)
                  sb         a4, -143(tp)
                  sra        s8, s10, t0
                  div        a6, s6, s0
                  sltiu      a2, s8, 91
                  c.li       gp, -1
                  lb         s2, -328(tp)
                  lbu        s1, -280(tp)
                  nop
                  lb         a7, 106(tp)
                  mulh       t2, a0, s2
                  sb         s9, 32(tp)
                  slti       t5, s1, 14
                  sra        s4, a2, s7
                  lb         s2, -216(tp) #end riscv_load_store_rand_instr_stream_51
                  la         s2, region_4+3376 #start load_store_instr_stream_0
                  lh         s0, -10(s2)
                  la         t1, region_4+3164 #start load_store_instr_stream_3
                  la         ra, region_4+2571 #start load_store_instr_stream_2
                  lb         s11, 15(ra)
                  la         a5, region_4+666 #start load_store_instr_stream_1
                  lbu        tp, 11(t1)
                  lhu        a7, -37(ra)
                  sh         a0, -29(ra)
                  lbu        s0, -2(a5)
                  sb         t1, -6(t1)
                  sb         gp, -62(ra)
                  lb         s1, 5(s2)
                  lbu        a0, 63(ra)
                  lb         t2, 9(t1)
                  lb         s7, -7(a5)
                  lb         a1, -9(a5)
                  lb         s10, -11(a5)
                  sb         a5, 0(ra)
                  lb         t6, -2(t1)
                  sb         s7, -15(a5)
                  lb         a4, -9(s2)
                  lbu        s0, -28(ra)
                  lhu        a6, 4(a5)
                  sb         a7, -40(ra)
                  lb         t2, 7(a5)
                  lb         s9, -8(ra)
                  lbu        s0, 11(s2)
                  lhu        s3, -4(t1) #end load_store_instr_stream_3
                  lhu        a6, 4(s2)
                  lbu        s0, 5(s2)
                  sb         s3, -42(ra) #end load_store_instr_stream_2
                  sb         a6, -5(a5) #end load_store_instr_stream_1
                  lb         s4, 9(s2) #end load_store_instr_stream_0
                  addi       a1, s3, -440
                  xori       a3, t1, -569
                  c.or       a0, a2
                  lui        a3, 590667
                  mulhu      a3, t6, a7
                  addi       t5, t2, -200
                  csrrwi     s6, 0x340, 30
                  andi       zero, s2, 910
                  slti       s9, a6, 141
                  c.mv       a0, a2
                  c.sub      a4, s1
                  andi       a3, s3, 612
                  sub        t4, s4, a5
                  c.xor      a4, a0
                  csrrwi     t5, 0x340, 19
                  csrrc      s1, 0x340, tp
                  csrrwi     s0, 0x340, 8
                  c.mv       t0, t0
                  c.sub      a5, s0
                  slli       s11, tp, 24
                  bgeu       a7, a6, 21f
21:               sltu       s8, gp, s8
                  nop
                  c.li       s1, 3
                  blt        s1, a1, 33f
                  c.li       t1, 8
                  c.add      t6, a1
                  sll        ra, a1, a1
                  srli       s6, a7, 15
                  mul        a6, gp, s8
                  slt        t1, a1, s6
                  fence
                  remu       s7, s10, sp
33:               c.addi     s10, -1
                  xor        zero, s0, t4
                  srli       s6, a3, 11
                  c.beqz     a2, 43f
                  srl        s8, a6, s1
                  bge        s0, a4, 46f
                  c.xor      a4, a2
                  beq        a5, s6, 44f
                  c.add      a0, t5
                  sltu       a1, a4, t6
43:               add        s6, s11, s9
44:               sltiu      t0, zero, 950
                  c.xor      a0, a0
46:               add        s4, a0, s9
                  c.slli     t2, 29
                  auipc      s3, 394284
                  ori        t2, a6, 576
                  c.add      s4, t2
                  andi       s4, s8, 631
                  c.andi     a3, 9
                  mul        t1, t2, tp
                  c.beqz     a1, 64f
                  fence.i
                  fence.i
                  andi       ra, sp, 959
                  c.xor      a1, a3
                  sltu       s4, ra, a4
                  divu       a6, a3, t5
                  blt        t0, a1, 73f
                  c.nop
                  sltiu      t0, t4, 567
64:               rem        s8, a0, s8
                  c.lui      s3, 27
                  slt        t4, a7, s1
                  bge        a5, s3, 70f
                  nop
                  and        t2, a7, a4
70:               srl        s1, t1, a6
                  auipc      t2, 87776
                  c.bnez     s0, 76f
73:               xori       t4, t6, 388
                  sltu       s4, s9, s9
                  c.and      a1, s0
76:               sra        t6, s7, s8
                  mulhsu     tp, gp, s11
                  auipc      s2, 198402
                  csrrs      a0, 0x340, t5
                  c.lui      a1, 2
                  srai       s9, a5, 30
                  csrrc      s2, 0x340, a7
                  c.xor      s1, a5
                  c.srli     a5, 18
                  c.lui      t1, 4
                  andi       s8, s5, -52
                  srl        t2, a6, zero
                  slti       tp, s10, -84
                  lui        s1, 563725
                  c.beqz     a4, 92f
                  remu       a4, a1, s1
92:               auipc      s8, 903615
                  csrrc      a3, 0x340, s5
                  ori        s6, sp, 471
                  divu       s2, t1, s5
                  sltu       a0, a6, t1
                  c.add      tp, a4
                  fence
                  c.xor      s0, s0
                  ori        s11, a5, 534
                  addi       a3, s1, 643
                  bne        a0, s8, 121f
                  xori       tp, s9, 742
                  c.add      a7, s10
                  slt        ra, t2, t4
                  csrrsi     ra, 0x340, 17
                  xor        a4, a0, zero
                  csrrw      gp, 0x340, a4
                  srai       t4, zero, 19
                  auipc      a3, 577876
                  c.srai     a1, 8
                  ori        s4, t3, 618
                  add        tp, s2, s2
                  c.add      t0, a4
                  bgeu       t5, t2, 133f
                  rem        s2, t4, gp
                  c.or       s1, a5
                  xori       s6, s9, 871
                  c.bnez     a4, 120f
120:              csrrs      tp, 0x340, a4
121:              addi       a0, s11, 846
                  xor        s7, gp, s8
                  rem        s2, s6, a3
                  csrrwi     s9, 0x340, 27
                  c.lui      s0, 5
                  csrrsi     a2, 0x340, 27
                  c.sub      a5, a2
                  csrrwi     s8, 0x340, 15
                  csrrsi     a1, 0x340, 25
                  c.srai     a1, 13
                  csrrw      ra, 0x340, s7
                  c.li       t4, -1
133:              sll        a4, s3, t6
                  sub        s7, gp, s0
                  csrrci     zero, 0x340, 25
                  lui        a4, 512280
                  c.srli     a0, 26
                  beq        a6, s11, 140f
                  c.srai     a4, 17
140:              mulh       t5, s10, a2
                  c.srli     a3, 26
                  mulhsu     s2, a3, a4
                  and        a4, t0, t0
                  nop
                  sll        s3, s9, t4
                  csrrw      t5, 0x340, s8
                  c.li       s1, -1
                  srl        s11, s4, s4
                  rem        a2, t1, a6
                  srl        gp, a5, t1
                  c.or       a2, s0
                  beq        a1, s5, 166f
                  bgeu       t0, s10, 167f
                  bgeu       s2, s6, 171f
                  mulhsu     a0, s2, s5
                  csrrc      s2, 0x340, s10
                  lui        t2, 823543
                  bltu       sp, zero, 162f
                  andi       s8, s4, 136
                  xor        s1, t0, t5
                  c.bnez     s1, 173f
162:              mulhsu     t2, t4, a3
                  c.andi     a1, 6
                  ori        s3, zero, -439
                  srli       a3, a1, 4
166:              bgeu       a5, a5, 181f
167:              sltu       s3, a0, a0
                  c.srai     a1, 8
                  blt        gp, s4, 187f
                  addi       a4, a7, 238
171:              addi       a4, a6, 632
                  c.addi     a4, -1
173:              bltu       s3, s4, 175f
                  fence.i
175:              lui        a5, 533963
                  mul        t2, a1, t0
                  bge        s3, sp, 179f
                  c.andi     s1, 25
179:              slt        s10, a2, zero
                  mulh       a2, a1, s10
181:              c.srai     a5, 24
                  rem        s11, t3, s11
                  and        t2, t4, t1
                  beq        s2, ra, 185f
185:              remu       t5, s3, s1
                  c.srai     s1, 27
187:              c.sub      a3, a3
                  slt        a2, t0, a1
                  beq        gp, t2, 202f
                  andi       t6, t5, 744
                  mulhsu     a5, t2, s11
                  c.and      a1, a2
                  bltu       s4, s1, 205f
                  c.addi     s9, -1
                  andi       s11, s9, 107
                  blt        a7, a7, 216f
                  c.mv       s2, s8
                  bgeu       a4, t3, 203f
                  csrrci     s3, 0x340, 26
                  mulh       a7, a4, s4
                  remu       a7, gp, s9
202:              srli       a6, t1, 30
203:              divu       s9, zero, t1
                  blt        a6, t6, 206f
205:              c.bnez     a3, 222f
206:              mulhsu     s3, s1, t2
                  csrrc      tp, 0x340, t0
                  sra        t4, s4, t3
                  srai       s1, s2, 6
                  csrrs      a6, 0x340, s2
                  csrrc      t0, 0x340, s3
                  lui        t4, 587674
                  nop
                  csrrwi     t2, 0x340, 22
                  bge        a2, s1, 227f
216:              bltu       a0, s11, 226f
                  c.and      a3, a5
                  rem        s1, a2, a4
                  xor        zero, zero, a1
                  csrrwi     s1, 0x340, 19
                  div        s3, s6, t6
222:              blt        a6, t5, 235f
                  srl        a3, a4, s2
                  rem        gp, s0, t0
                  slt        a1, s5, s0
226:              divu       s9, tp, s8
227:              c.add      ra, s9
                  mulhsu     t1, tp, sp
                  sra        ra, t0, a6
                  mul        a3, t6, a5
                  csrrci     s8, 0x340, 19
                  xor        s11, s7, s8
                  slt        tp, s1, s6
                  c.slli     s7, 6
235:              ori        t2, sp, -160
                  srli       t1, s6, 3
                  beq        s9, t5, 241f
                  c.xor      a3, s0
                  c.srli     a0, 20
                  srli       a2, a2, 13
241:              c.xor      a5, a5
                  bne        s6, s11, 254f
                  addi       gp, a7, 988
                  mulhsu     a4, a4, tp
                  sub        zero, t0, s4
                  csrrw      a1, 0x340, s2
                  c.add      s1, s0
                  xor        t4, tp, a3
                  sltiu      a5, ra, -434
                  c.add      s9, s6
                  bne        s1, t2, 256f
                  fence.i
                  fence
254:              fence
                  c.addi     s0, 14
256:              csrrwi     tp, 0x340, 8
                  sll        a0, t6, s3
                  srl        t5, a3, ra
                  slli       s1, s11, 19
                  add        a1, s4, t1
                  c.li       s0, -1
                  remu       t2, s0, s8
                  c.xor      a4, a4
                  sll        a6, s8, s4
                  c.bnez     a4, 267f
                  c.beqz     a4, 268f
267:              csrrsi     s8, 0x340, 31
268:              div        tp, a0, s7
                  c.andi     a4, 7
                  xor        s10, s10, t2
                  addi       s8, gp, 465
                  remu       s7, a4, a5
                  c.mv       s9, s7
                  csrrc      s3, 0x340, s8
                  divu       ra, s6, a5
                  c.and      a2, s1
                  srai       s7, t6, 8
                  bne        s10, a5, 295f
                  sll        s1, s1, gp
                  andi       s9, a6, 981
                  c.bnez     s0, 282f
282:              csrrs      s4, 0x340, t4
                  csrrs      a5, 0x340, s8
                  rem        a6, s2, s1
                  mulhu      zero, s8, s6
                  csrrc      tp, 0x340, s10
                  csrrci     s9, 0x340, 12
                  c.nop
j_sub_4_sub_5_7:  jal        ra, sub_5
                  c.andi     s1, -1
                  srai       t1, a3, 17
                  c.xor      s1, s1
                  c.mv       t0, s8
                  auipc      t5, 797499
                  c.lui      a3, 27
                  bne        zero, a1, 292f
                  mul        s0, a0, s3
                  beq        gp, gp, 300f
292:              csrrw      s8, 0x340, s8
                  mulhu      a2, s8, s8
                  c.sub      s0, s1
295:              xor        s9, s0, a7
                  c.and      a0, a4
                  c.andi     a4, 5
                  bltu       t0, s0, 300f
                  c.lui      s3, 23
300:              c.sub      a4, a2
                  beq        t0, a1, 309f
                  sra        t5, ra, s0
                  lui        a6, 710032
                  sll        t1, a2, s1
                  addi       t0, tp, 2
                  slti       a0, t2, 128
                  sltiu      tp, a2, -246
                  and        a1, s7, t2
309:              csrrsi     t5, 0x340, 2
                  mul        a3, t1, a3
                  c.srli     a3, 25
                  nop
                  beq        a6, ra, 325f
                  fence
                  bgeu       a0, t0, 317f
                  c.lui      s8, 14
317:              mulh       s7, a5, s6
                  div        ra, t0, t5
                  c.li       t0, -1
                  c.nop
                  sub        a7, t1, t1
                  c.srai     s1, 8
                  auipc      a0, 286329
                  rem        s10, gp, a7
325:              c.nop
                  srl        t2, s1, t3
                  nop
                  addi       zero, t6, -188
                  sub        s6, s11, a3
                  mulhu      a7, sp, a4
                  fence
                  add        a1, s0, a1
                  c.nop
                  c.mv       s6, a1
                  srli       t2, t5, 13
                  mulhsu     s4, t3, s10
                  c.xor      s1, s1
                  lui        t5, 837492
                  ori        ra, s11, -128
                  c.nop
                  slli       s11, t5, 18
                  mulhsu     s3, s11, t5
                  rem        t2, a6, a2
                  slli       a6, s2, 0
                  bgeu       t3, t4, 349f
                  fence
                  c.srli     a4, 17
                  c.lui      a4, 17
349:              ori        s11, a3, -627
                  slt        a3, a2, t1
                  c.add      a0, s8
                  c.and      a2, a0
                  slt        gp, t5, t6
                  c.nop
                  blt        sp, a2, 375f
                  c.li       a6, -1
                  sltu       s10, sp, a7
                  c.bnez     s1, 372f
                  and        a6, t4, s5
                  csrrw      t1, 0x340, s3
                  sll        a6, s4, s4
                  xor        s8, a3, t4
                  sll        s7, a7, a2
                  c.add      s2, t2
                  andi       s8, s7, 513
                  blt        sp, s7, 380f
                  or         s7, t1, t6
                  c.lui      t0, 22
                  csrrc      tp, 0x340, a0
                  c.slli     t2, 19
                  remu       t2, tp, sp
372:              xor        s9, s4, t0
                  c.or       a3, s1
                  bne        s0, t6, 376f
375:              sra        t1, s2, tp
376:              mulh       s3, s0, s9
                  sra        a2, t2, s7
                  andi       s8, a7, -664
                  or         s6, t4, a2
380:              c.addi     s10, -1
                  mulh       a0, t4, t0
                  sra        s3, s9, s4
                  mulh       s9, a6, s9
                  csrrsi     zero, 0x340, 31
                  slti       t0, s1, 108
                  c.slli     s8, 21
                  divu       s4, sp, s11
                  nop
                  xori       t5, ra, 995
                  bge        s2, a6, 391f
391:              slti       s3, a5, 1003
                  csrrsi     a4, 0x340, 19
                  c.or       s0, a1
                  c.xor      s0, a3
                  csrrsi     a5, 0x340, 5
                  sll        gp, s6, t2
                  blt        s7, s0, 416f
                  sra        s4, ra, zero
                  c.srli     a3, 15
                  srl        t0, t0, s0
                  fence
                  c.bnez     s1, 419f
                  csrrs      a4, 0x340, s2
                  c.slli     a7, 4
                  sra        t2, a0, a6
                  c.sub      s0, a0
                  slt        t6, a3, s7
                  bge        a3, s0, 423f
                  c.sub      a4, a2
                  c.andi     s1, -1
                  slti       s9, s8, -547
                  c.andi     a1, -1
                  c.lui      a4, 10
                  rem        a2, s2, a3
                  c.xor      s0, s1
416:              sltiu      s3, sp, 627
                  beq        t2, s2, 435f
                  div        a3, a6, ra
419:              c.nop
                  c.mv       s9, t1
                  c.add      s3, t3
                  fence
423:              bge        t6, s2, 424f
424:              lui        a6, 801576
                  sltu       t1, a3, a5
                  mulhsu     t2, a3, s9
                  c.and      a0, a4
                  auipc      t0, 750155
                  c.or       s0, a3
                  mulh       s2, tp, t1
                  ori        a6, a7, -656
                  remu       a5, sp, gp
                  blt        sp, t5, 440f
                  mulhsu     s9, s11, a6
435:              c.or       a5, a3
                  lui        s1, 743839
                  addi       t6, a5, -685
                  div        t4, a6, a3
                  csrrci     a6, 0x340, 13
440:              c.srli     a3, 13
                  c.lui      a4, 5
                  c.bnez     a3, 460f
                  csrrw      t2, 0x340, s4
                  sltiu      gp, t4, -211
                  ori        zero, s3, -502
                  bltu       t6, t1, 450f
                  c.mv       gp, a4
                  c.slli     t0, 14
                  fence
450:              div        gp, a7, t3
                  c.and      a0, a5
                  add        zero, sp, t3
                  sltu       t6, s10, a2
                  divu       a5, a4, a7
                  srl        s1, s11, t4
                  fence.i
                  c.andi     a2, -1
                  addi       a2, a2, 835
                  csrrsi     t0, 0x340, 26
460:              c.add      a7, s5
                  sra        s2, t3, s6
                  mul        tp, a3, ra
                  add        s11, a1, s6
                  nop
                  c.nop
                  addi       a5, t2, 609
                  bltu       t4, s8, 471f
                  c.add      a5, s3
                  c.nop
                  srli       s7, s11, 4
471:              or         a4, s10, zero
                  mulh       s7, t2, tp
                  c.srli     a5, 4
                  sltiu      a3, t2, -459
                  c.mv       s0, t4
                  fence
                  xor        t6, s6, t0
                  srai       s8, s1, 30
                  c.slli     s4, 3
                  ori        s8, t0, 30
                  c.beqz     a4, 483f
                  ori        s8, a0, -749
483:              bltu       t6, a7, 487f
                  ori        s3, t3, 944
                  slti       t4, a1, -298
                  csrrs      a4, 0x340, s0
487:              c.lui      s2, 9
                  c.xor      a1, s0
                  xori       ra, ra, 255
                  fence
                  csrrc      t6, 0x340, t2
                  bge        sp, t0, 502f
                  c.slli     s6, 29
                  c.srai     a2, 21
                  srli       s7, t0, 2
                  or         tp, a3, a0
                  c.addi     a4, 10
                  c.slli     tp, 4
                  c.add      t2, s7
                  csrrsi     t5, 0x340, 8
                  c.lui      t2, 13
502:              c.srai     a3, 21
                  c.and      a5, a4
                  or         a1, s4, s6
                  nop
                  lui        s11, 124281
                  auipc      a6, 446060
                  div        t1, gp, s5
                  c.mv       s11, a0
                  rem        s3, t1, a0
                  add        s1, s9, s11
                  andi       s0, s7, -328
                  remu       t2, t6, s10
                  c.and      a1, a5
                  bne        a0, a6, 532f
                  rem        s8, a1, sp
                  and        s0, a2, s4
                  c.sub      a0, a3
                  srli       s4, s9, 18
                  mulh       ra, s4, s0
                  c.bnez     a1, 525f
                  c.mv       gp, s9
                  fence.i
                  fence
525:              bge        gp, s10, 534f
                  c.sub      a1, a5
                  c.srai     a0, 16
                  fence.i
                  remu       a0, a0, ra
                  mulh       t1, a4, t6
                  div        s6, s11, a0
532:              csrrs      ra, 0x340, gp
                  andi       a5, s0, -624
534:              c.sub      s0, a5
                  c.or       s0, a5
                  addi       s10, a3, -827
                  c.li       a5, -1
                  xori       s7, s8, 188
                  xori       s11, sp, 870
                  c.lui      a7, 27
                  auipc      a4, 699779
                  c.add      a0, a6
                  addi       t1, s3, -620
                  mul        t1, ra, s2
                  csrrwi     s6, 0x340, 3
                  c.beqz     a4, 548f
                  nop
548:              fence
                  blt        tp, s10, 552f
                  csrrwi     t4, 0x340, 3
                  bge        a3, a6, 553f
552:              csrrwi     s7, 0x340, 24
553:              mulhsu     s7, s11, t6
                  c.srli     a0, 5
                  c.lui      s6, 20
                  slt        a4, t1, a1
                  mulhu      t2, s6, zero
                  c.mv       s6, s1
                  c.beqz     a3, 571f
                  c.bnez     a0, 574f
                  sll        a1, sp, sp
                  blt        gp, sp, 580f
                  slli       t5, zero, 5
                  andi       t1, s5, -505
                  and        t0, t6, a1
                  div        tp, t1, s8
                  c.xor      a3, s0
                  c.andi     a3, 9
                  divu       a6, a6, t3
                  csrrci     a0, 0x340, 27
571:              c.beqz     a2, 588f
                  csrrw      s6, 0x340, t3
                  csrrsi     s7, 0x340, 9
574:              sltiu      s6, s6, -254
                  fence
                  divu       zero, t2, t5
                  div        a3, a0, sp
                  divu       a3, sp, a4
                  c.sub      a2, s1
580:              mul        a7, s4, s5
                  csrrw      s0, 0x340, s10
                  bge        a6, a0, 594f
                  csrrwi     ra, 0x340, 7
                  slt        s6, t1, ra
                  c.nop
                  c.xor      a1, a2
                  remu       a5, s11, a2
588:              c.li       s4, -1
                  add        t5, t4, a3
                  csrrs      s9, 0x340, s8
                  c.srai     a4, 12
                  c.andi     a1, -1
                  sll        s1, a7, s3
594:              sltu       s6, t0, a1
                  sltiu      a0, a5, 296
                  slli       ra, t0, 13
                  c.li       s0, -1
                  c.sub      a1, a4
                  srai       s2, s8, 17
                  srai       t0, t3, 16
                  slti       s3, s8, 38
                  c.xor      s1, a4
                  auipc      a1, 846978
                  c.lui      tp, 4
                  c.mv       a0, ra
                  rem        a6, t6, s9
                  c.add      s9, a0
                  xor        ra, s8, s10
                  xori       a5, ra, 385
                  bgeu       a7, a4, 615f
                  sub        zero, t3, s8
                  xori       t1, sp, -363
                  blt        s0, s4, 632f
                  c.li       s1, 14
615:              csrrci     ra, 0x340, 9
                  c.add      s8, t6
                  c.sub      a2, s0
                  div        gp, s2, s10
                  div        t0, t6, ra
                  c.and      s1, a3
                  bgeu       a3, a7, 623f
                  nop
623:              remu       a2, t4, a2
                  sub        t6, ra, s11
                  addi       s10, t2, -961
                  c.sub      a3, a4
                  sltiu      s11, s6, -883
                  sltu       s0, gp, s6
                  la         t4, region_2+3967 #start load_store_instr_stream_0
                  la         s8, region_4+1805 #start load_store_instr_stream_3
                  la         s2, region_1+5315 #start load_store_instr_stream_4
                  la         t2, region_3+399 #start load_store_instr_stream_1
                  lbu        s3, -1874(s2)
                  lhu        s9, -43(s8)
                  sb         t3, -12(s8)
                  la         a0, region_0+3849 #start load_store_instr_stream_2
                  lb         gp, 174(t4)
                  lb         a1, -136(t2)
                  lhu        s7, -585(s2)
                  lb         s1, 0(s8)
                  lbu        s0, 1040(t4)
                  lhu        s9, -191(t2)
                  lbu        s9, 9(s8)
                  lb         s10, 1080(t4)
                  lbu        a4, -91(t2)
                  lhu        a1, 209(s2)
                  lb         a2, 40(a0)
                  sb         t1, 61(s8)
                  sb         s11, 18(s8)
                  lh         zero, 385(s2)
                  sb         zero, 40(s8)
                  lw         s1, 1093(s2)
                  lb         a6, -210(a0)
                  sb         zero, 146(a0)
                  sb         s3, 796(t4)
                  sh         t6, 37(a0)
                  lhu        t1, 65(t2)
                  sb         t6, -49(s8)
                  lb         t5, -52(a0)
                  lh         t6, -327(t2) #end load_store_instr_stream_1
                  lbu        a3, 154(s2)
                  lb         s9, 241(a0) #end load_store_instr_stream_2
                  lbu        s3, -54(s8)
                  lb         zero, -62(s8) #end load_store_instr_stream_3
                  lbu        s9, 1442(s2) #end load_store_instr_stream_4
                  lb         ra, 167(t4)
                  sb         a3, -1358(t4)
                  lb         a1, -286(t4) #end load_store_instr_stream_0
                  c.andi     s1, 0
                  nop
                  sll        s1, s8, s11
632:              mul        t5, t1, sp
                  remu       t6, t0, a4
                  sll        t5, s10, s5
                  add        s0, s6, a5
                  srai       s1, a3, 11
                  xor        ra, ra, sp
                  fence
                  blt        s7, s11, 641f
                  slt        zero, a6, t1
641:              or         s3, tp, t6
                  c.or       s1, s1
                  c.nop
                  remu       t6, t3, s11
                  c.bnez     a3, 660f
                  srai       t6, s1, 27
                  add        a7, gp, tp
                  xor        tp, a3, s0
                  mulhu      a2, a7, ra
                  addi       s7, s11, 572
                  andi       a0, t2, -59
                  bne        sp, s7, 672f
                  mul        t0, t0, ra
                  c.or       s0, s1
                  rem        tp, a5, gp
                  fence
                  csrrs      s0, 0x340, a4
                  sub        s1, s10, gp
                  sltu       gp, tp, a1
660:              xor        s7, t1, s3
                  sra        s4, zero, a4
                  bgeu       s11, t6, 669f
                  or         t6, a7, t5
                  nop
                  or         s10, a5, a3
                  div        a6, s4, s4
                  csrrwi     tp, 0x340, 25
                  c.slli     a2, 30
669:              csrrw      zero, 0x340, s7
                  mulhu      gp, s11, zero
                  nop
672:              csrrwi     tp, 0x340, 20
                  lui        s2, 930061
                  remu       s0, a2, a1
                  slli       t1, a1, 25
                  srli       t5, s3, 17
                  bltu       s3, s11, 695f
                  div        a3, s7, s3
                  c.li       t0, 16
                  bge        t3, a6, 681f
681:              addi       t5, t2, 415
                  srl        a7, a4, s3
                  csrrci     s3, 0x340, 23
                  sltu       a7, zero, s1
                  csrrci     s9, 0x340, 25
                  fence
                  mul        a3, tp, s9
                  sll        s8, t1, s0
                  c.xor      s1, a4
                  c.beqz     a5, 704f
                  fence
                  c.and      s0, s1
                  csrrsi     ra, 0x340, 20
                  c.and      a5, a0
695:              xor        t2, s7, s3
                  xor        a2, s7, tp
                  c.or       a3, a3
                  sra        t0, s8, s2
                  sll        a4, a7, s7
                  c.bnez     a2, 701f
701:              xor        t0, s6, s2
                  mul        ra, s10, s4
                  and        gp, t0, t3
704:              csrrci     s11, 0x340, 25
                  c.nop
                  and        a2, tp, s8
                  mul        s3, s2, a3
                  add        s1, s6, s1
                  c.add      s6, s8
                  xori       s10, s0, 297
                  fence.i
                  csrrs      a2, 0x340, sp
                  lui        s6, 919660
                  add        a5, a3, s9
                  lui        a5, 482814
                  andi       s11, s11, -954
                  csrrc      ra, 0x340, t2
                  nop
                  c.slli     a0, 3
                  sltiu      t2, t4, 403
                  csrrc      a1, 0x340, ra
                  ori        tp, s6, 572
                  c.addi     t6, 29
                  sltu       s11, s10, zero
                  c.srli     a5, 29
                  c.xor      a0, a5
                  c.sub      a1, s1
                  sltu       gp, a1, t5
                  xori       s0, gp, 47
                  andi       s4, s4, -737
                  c.and      s1, s1
                  xori       s7, s2, 702
                  lui        t0, 252771
                  c.add      ra, s0
                  sltiu      a6, sp, 901
                  sll        a4, s8, t4
                  sltiu      s1, a3, 196
                  c.nop
                  xori       t1, a7, 429
                  xori       t1, s1, -895
                  slti       s7, t4, 197
                  srli       a5, s9, 7
                  and        a3, zero, s2
                  slt        zero, t5, s3
                  mul        t6, s8, s0
                  c.lui      t2, 4
                  c.slli     gp, 18
                  c.li       t0, -1
                  andi       s0, s0, -313
                  auipc      tp, 655285
                  csrrci     a1, 0x340, 29
                  mulh       a3, s10, t0
                  c.add      s4, s1
                  add        t5, zero, s10
                  sltiu      s2, tp, -438
                  nop
                  c.mv       a1, s6
                  c.andi     a5, -1
                  slli       s0, zero, 6
                  csrrsi     s3, 0x340, 15
                  slt        t5, a0, s3
                  div        a7, a2, a4
                  mul        s6, s0, a1
                  csrrc      a7, 0x340, t0
                  sub        tp, s7, t4
                  bltu       t0, t0, 778f
                  fence.i
                  mulhsu     zero, ra, a2
                  c.nop
                  beq        t5, a4, 771f
771:              c.or       a4, s1
                  rem        t5, s0, zero
                  blt        a7, tp, 786f
                  slli       s1, s5, 10
                  mulh       t0, gp, s3
                  c.lui      t2, 13
                  c.nop
778:              c.or       a4, a1
                  mulh       s3, s11, s8
                  bltu       s4, s3, 788f
                  sltu       a0, t3, s1
                  sltu       a7, s10, s10
                  nop
                  c.xor      a2, s0
                  c.and      s0, a0
786:              fence.i
                  c.nop
788:              mul        zero, sp, tp
                  csrrci     s3, 0x340, 1
                  rem        t5, t2, ra
                  c.li       gp, -1
                  csrrsi     a1, 0x340, 24
                  c.nop
                  bge        a5, t5, 798f
                  blt        gp, s5, 809f
                  mul        s0, a0, s4
                  addi       t2, s4, 846
798:              lui        t4, 699882
                  c.lui      a4, 31
                  andi       s6, a5, 927
                  bgeu       t0, s1, 804f
                  csrrsi     t5, 0x340, 16
                  bltu       t0, gp, 821f
804:              xori       tp, t5, -685
                  srli       s0, gp, 4
                  slt        s10, t1, sp
                  c.srai     a5, 7
                  ori        zero, s8, 561
809:              xor        s11, s11, s6
                  mulhu      t6, t1, s4
                  c.bnez     a4, 830f
                  c.lui      a4, 24
                  c.andi     a0, -1
                  sltu       t6, a3, sp
                  sll        s1, a1, s1
                  csrrw      s0, 0x340, a3
                  nop
                  c.lui      s2, 5
                  c.or       a4, a3
                  c.beqz     a0, 832f
821:              andi       a7, t1, 797
                  srl        t0, a2, s1
                  csrrwi     a7, 0x340, 22
                  c.xor      s1, a5
                  sltu       s8, a5, t4
                  and        s10, a2, s11
                  fence.i
                  srli       a2, s11, 8
                  c.add      s8, s4
830:              c.xor      a3, a4
                  bgeu       a5, a3, 836f
832:              sltiu      a5, t1, 346
                  c.nop
                  add        a3, a1, a3
                  c.slli     s3, 2
836:              c.addi     a3, -1
                  auipc      ra, 287240
                  c.nop
                  auipc      s10, 353485
                  xori       t4, s10, -777
                  c.bnez     a1, 854f
                  bltu       s7, s4, 846f
                  add        s4, a6, t6
                  csrrsi     s1, 0x340, 1
                  c.mv       s2, t0
846:              csrrsi     t0, 0x340, 24
                  sub        t0, s2, s1
                  c.bnez     s1, 852f
                  c.addi     t1, 8
                  ori        s6, a0, 967
                  srai       s11, tp, 8
852:              remu       a5, s7, zero
                  ori        a7, a2, 501
854:              c.srli     s0, 4
                  lui        a0, 57552
                  fence
                  c.srli     a3, 28
                  c.bnez     a2, 872f
                  lui        ra, 383430
                  xori       s6, t4, 385
                  csrrc      s10, 0x340, gp
                  c.srli     a3, 17
                  c.slli     s6, 20
                  srai       s7, a0, 17
                  divu       s6, t0, s9
                  csrrwi     s6, 0x340, 9
                  beq        t4, t4, 869f
                  c.bnez     a5, 870f
869:              slli       s6, a0, 28
870:              slti       t6, sp, -145
                  sltu       s7, s7, t1
872:              c.and      a5, a2
                  csrrsi     s8, 0x340, 1
                  div        gp, a4, zero
                  xor        ra, s3, t1
                  csrrc      ra, 0x340, a4
                  blt        a4, s7, 886f
                  fence.i
                  c.li       t6, -1
                  slt        s3, s9, t2
                  c.xor      s1, s0
                  csrrw      ra, 0x340, zero
                  srli       s4, a6, 28
                  mulh       tp, s9, zero
                  remu       s2, s1, t4
886:              csrrw      s9, 0x340, tp
                  or         a5, a1, a2
                  divu       a5, s3, a7
                  c.sub      a2, a3
                  srl        t1, s4, s7
                  and        a6, s1, s0
                  c.mv       a1, s7
                  bne        tp, a2, 910f
                  slti       ra, sp, 534
                  c.nop
                  slli       a5, s9, 31
                  fence.i
                  and        s2, a6, a0
                  c.or       a0, a2
                  c.beqz     a2, 901f
901:              c.andi     a1, 13
                  c.srli     a3, 21
                  c.nop
                  rem        s6, s10, zero
                  c.srai     a5, 25
                  bltu       t5, a3, 914f
                  nop
                  c.srai     s1, 28
                  csrrw      s0, 0x340, zero
910:              mulhsu     t6, zero, a2
                  blt        a4, tp, 923f
                  bgeu       a3, t6, 913f
913:              csrrwi     ra, 0x340, 8
914:              c.srli     a0, 5
                  nop
                  mulhu      a1, s0, s2
                  andi       s7, a3, 508
                  add        a2, s2, s1
                  srli       s1, t5, 1
                  srai       t6, a7, 25
                  c.nop
                  slli       a4, s10, 27
923:              srl        t6, sp, t3
                  c.bnez     a0, 926f
                  divu       t6, a5, tp
926:              and        t4, t2, s3
                  bltu       a1, s3, 937f
                  mul        s11, s2, s3
                  csrrwi     a7, 0x340, 23
                  bge        s9, s7, 945f
                  csrrsi     t1, 0x340, 28
                  xor        t6, a7, s11
                  c.slli     a4, 11
                  c.mv       t1, a3
                  ori        gp, a4, -639
                  srl        s9, gp, a3
937:              srli       a6, a1, 6
                  c.addi     s6, 15
                  c.addi     s6, 12
                  c.li       s1, -1
                  slli       zero, s4, 19
                  or         a5, gp, s2
                  srl        a2, s1, t0
                  addi       t4, a0, 612
945:              c.lui      s2, 1
                  mulh       s9, s5, t3
                  slti       a6, s10, 460
                  c.mv       gp, tp
                  nop
                  sub        s7, s9, s10
                  andi       tp, t4, 674
                  fence
                  c.xor      a4, a0
                  sra        s7, a5, a3
                  sll        a0, zero, sp
                  c.add      s10, a3
                  mulhsu     s8, gp, s2
                  slli       t4, s3, 11
                  csrrci     s11, 0x340, 8
                  fence
                  c.srli     a1, 7
                  sltu       s9, t6, sp
                  nop
                  c.srai     a2, 21
                  mul        a7, a2, a5
                  add        a0, t6, s0
                  csrrs      a3, 0x340, s5
                  mul        ra, t6, s2
                  c.mv       a3, t4
                  mulh       s1, s4, s10
                  nop
                  srli       t4, t1, 21
                  bne        s9, s10, 980f
                  srai       a3, s4, 27
                  slti       a4, a3, 287
                  sltiu      a7, s3, -709
                  beq        s3, s7, 979f
                  c.xor      a4, a0
979:              sub        a4, tp, a2
980:              c.beqz     a1, 982f
                  bltu       ra, s0, 993f
982:              divu       s10, t4, s10
                  csrrsi     ra, 0x340, 21
                  c.andi     a0, -1
                  divu       s1, tp, s0
                  mulhsu     t5, s9, s3
                  xor        s7, tp, a3
                  sub        a3, s0, gp
                  c.andi     s0, -1
                  srl        s7, a1, gp
                  lui        s9, 390639
                  andi       s9, a3, 767
993:              auipc      s4, 406377
                  fence.i
                  c.srai     s1, 4
                  bne        a5, s11, 1014f
                  c.srai     a4, 19
                  c.andi     a1, 26
                  c.andi     a1, -1
                  c.beqz     a1, 1020f
                  blt        a4, sp, 1002f
1002:             c.bnez     a1, 1019f
                  mulhu      s8, a3, s1
                  sltiu      s10, s4, -962
                  xori       s1, t6, -914
                  blt        s9, s2, 1010f
                  and        s0, t1, s6
                  c.sub      a4, a5
                  c.sub      s1, a0
1010:             c.xor      s1, a5
                  bltu       a7, tp, 1023f
                  c.add      a3, t6
                  csrrc      t0, 0x340, tp
1014:             bne        s0, t0, 1016f
                  nop
1016:             c.sub      a1, a5
                  fence
                  c.and      a3, a2
1019:             c.li       a0, -1
1020:             bgeu       s8, t1, 1033f
                  nop
                  c.lui      tp, 30
1023:             c.lui      a5, 10
                  c.xor      s0, a2
                  lui        s1, 800991
                  csrrw      a7, 0x340, s2
                  fence
                  and        s6, s9, t4
                  andi       t6, s1, -407
                  fence
                  bne        s11, a2, 1035f
                  csrrs      s11, 0x340, t6
1033:             c.xor      s0, a2
                  c.nop
1035:             bltu       s11, s3, 1054f
                  srai       s9, a1, 15
                  c.slli     gp, 1
                  andi       a5, tp, -244
                  slti       s4, a2, 29
                  mulhsu     a6, a3, gp
                  csrrci     a6, 0x340, 2
                  c.addi     a2, -1
                  slti       s7, t3, -606
                  c.or       s1, a3
                  srai       s1, a7, 14
                  c.andi     a4, -1
                  csrrs      s3, 0x340, t2
                  c.srai     a0, 29
                  srl        s3, tp, s10
                  slli       a2, a4, 10
                  c.addi     s3, -1
                  csrrw      s3, 0x340, a3
                  c.bnez     a5, 1065f
1054:             sll        t5, a6, a4
                  csrrci     t2, 0x340, 26
                  auipc      t1, 734277
                  mul        t0, sp, a4
                  bltu       s3, a1, 1072f
                  c.mv       s3, ra
                  divu       gp, sp, a6
                  c.xor      a2, a4
                  and        a6, a4, ra
                  c.and      a5, a4
                  c.slli     a4, 14
1065:             c.beqz     a3, 1066f
1066:             lui        ra, 697687
                  slli       zero, s5, 30
                  srai       t6, a1, 12
                  c.srli     a0, 23
                  csrrwi     t4, 0x340, 9
                  la         s6, sub_5
                  c.add      t1, a3
                  bge        a7, t0, j_sub_4_sub_5_8 #branch to jump instr
                  csrrwi     zero, 0x340, 14
                  c.srai     a1, 26
                  mulhsu     zero, tp, a6
j_sub_4_sub_5_8:  c.jalr     s6
                  blt        sp, s2, 1076f
                  div        s11, s10, t2
                  c.srai     s1, 5
                  beq        t3, tp, 1087f
                  csrrw      a3, 0x340, s1
1072:             sltiu      a5, s3, -45
                  csrrw      t0, 0x340, a6
                  csrrs      ra, 0x340, a5
                  xori       s0, ra, -358
1076:             csrrwi     t1, 0x340, 1
                  or         s11, a3, tp
                  csrrsi     s1, 0x340, 22
                  srl        s8, s9, s3
                  add        s2, t3, a2
                  fence.i
                  c.slli     gp, 24
                  csrrsi     a5, 0x340, 16
                  csrrs      t0, 0x340, gp
                  c.nop
                  c.add      t5, s8
1087:             fence
                  remu       a0, sp, s2
                  and        t5, a1, zero
                  slli       a5, t6, 24
                  add        s4, a5, tp
                  c.xor      a3, a0
                  c.sub      a5, a5
                  mulhu      t2, s0, a1
                  slli       a7, t5, 4
                  bgeu       t3, t6, 1099f
                  or         t4, zero, t4
                  fence
1099:             srl        t2, s6, a6
                  c.mv       t0, tp
                  c.lui      a4, 18
                  divu       t5, s7, s11
                  sll        a1, a2, a4
                  mul        t6, s9, t2
                  c.srli     a0, 26
                  and        s3, t2, ra
                  sltiu      tp, t1, 759
                  c.addi     s3, 13
                  rem        tp, s5, s7
                  c.and      a5, a3
                  csrrc      zero, 0x340, a7
                  c.li       gp, 0
                  slti       t2, gp, -800
                  slt        t2, s11, s11
                  blt        t5, t2, 1120f
                  c.li       gp, 2
                  c.addi     a0, -1
                  div        a6, t1, t2
                  c.bnez     s0, 1126f
1120:             srli       a0, a6, 30
                  sltu       s4, t4, s8
                  beq        gp, s2, 1124f
                  c.or       a5, a2
1124:             c.mv       s8, s5
                  mulhsu     t2, s11, a1
1126:             bge        a6, t2, 1127f
1127:             add        zero, s6, a2
                  slti       a7, a3, 468
                  xori       s7, s5, -293
                  fence.i
                  csrrwi     s11, 0x340, 9
                  and        a2, s6, s5
                  div        s4, sp, s11
                  rem        t5, tp, gp
                  xori       s9, t4, -143
                  lui        s10, 597360
                  srl        s9, t4, s0
                  bge        s2, s10, 1152f
                  xor        s3, a4, s8
                  add        a7, a2, s4
                  sll        s9, sp, a6
                  c.slli     t4, 27
                  srl        a4, s9, t6
                  rem        zero, sp, s5
                  sltu       a3, s2, tp
                  c.srli     a3, 6
                  c.srli     a1, 7
                  divu       t4, t2, zero
                  c.srai     s0, 19
                  ori        a0, s1, 3
                  csrrc      s10, 0x340, a0
1152:             sltu       t5, gp, s1
                  addi       t0, s9, -738
                  sra        s11, t5, s10
                  remu       gp, s4, tp
                  srli       t4, t2, 4
                  srli       t2, s7, 29
                  sll        s11, a0, a3
                  c.xor      a4, s1
                  c.sub      a5, a1
                  sll        gp, t2, s2
                  csrrs      a4, 0x340, s3
                  xori       s7, s9, 418
                  csrrwi     s0, 0x340, 15
                  sltu       t6, t4, a1
                  nop
                  c.nop
                  c.beqz     s0, 1183f
                  csrrw      t6, 0x340, tp
                  c.and      a5, s0
                  csrrc      s1, 0x340, t4
                  c.beqz     a2, 1180f
                  div        a1, sp, s1
                  auipc      zero, 862688
                  sltiu      a7, t1, 349
                  c.sub      a4, a3
                  ori        t0, a1, -256
                  addi       t4, a5, 857
                  c.and      s1, s1
1180:             csrrci     s10, 0x340, 10
                  slt        gp, a1, s9
                  blt        a4, s2, 1200f
1183:             c.and      a3, s0
                  divu       a0, a5, t4
                  slt        s1, s7, s6
                  nop
                  mulhu      ra, a0, t0
                  srl        a5, a5, ra
                  c.bnez     s1, 1193f
                  sll        a4, a1, a4
                  slt        t0, a6, s6
                  c.nop
1193:             xori       t1, a7, -303
                  csrrsi     t6, 0x340, 14
                  c.slli     t2, 30
                  or         a1, s5, t2
                  csrrci     a1, 0x340, 17
                  c.mv       a4, t3
                  csrrw      a0, 0x340, a1
1200:             andi       t4, s1, 693
                  csrrwi     a7, 0x340, 14
                  ori        s3, t4, -934
                  c.mv       t4, a1
                  remu       s8, s8, t4
                  fence
                  xor        s4, tp, tp
                  remu       t2, s10, s11
                  add        t4, s3, t3
                  mulhu      a2, sp, tp
                  srl        a5, a5, t2
                  beq        s5, s6, 1221f
                  addi       t5, s2, -228
                  fence
                  divu       s4, t4, s8
                  slt        a4, a4, ra
                  csrrc      t0, 0x340, s11
                  ori        zero, s11, 578
                  sltiu      s10, s7, -961
                  sra        t2, zero, s0
                  ori        s6, ra, -687
1221:             mulh       t6, s7, gp
                  slli       a5, s4, 6
                  mulh       a7, t3, t5
                  rem        a6, ra, s5
                  srl        t6, t4, tp
                  add        s9, t6, t2
                  div        a4, s6, s11
                  slti       t4, t3, 713
                  bgeu       a0, s0, 1231f
                  c.nop
1231:             remu       a6, s10, t6
                  sll        t4, t0, s5
                  beq        zero, t4, 1235f
                  la         s9, region_3+229 #start load_store_instr_stream_3
                  lb         s4, -6(s9)
                  la         a7, region_3+259 #start load_store_instr_stream_2
                  lbu        s6, 12(a7)
                  la         a5, region_3+35 #start load_store_instr_stream_4
                  la         t4, region_3+281 #start load_store_instr_stream_1
                  la         a3, region_3+174 #start load_store_instr_stream_0
                  lbu        a6, 10(s9)
                  lb         s3, 9(s9)
                  lbu        s1, 9(a5)
                  sb         s2, -16(a7)
                  sb         s8, 16(a5)
                  lbu        ra, 25(a3)
                  lh         s4, 11(t4)
                  lbu        a1, -12(a5)
                  sh         a2, 3(a5)
                  sb         a1, 10(s9)
                  sb         s7, 8(a5)
                  sh         s0, 7(t4)
                  lbu        a6, -7(a3)
                  lhu        s7, -9(t4)
                  lbu        s2, 21(a3)
                  lh         t2, -9(t4)
                  sb         t1, 2(a7)
                  sb         a4, 12(a3)
                  sw         s8, -1(s9)
                  lbu        a6, -4(a7)
                  sb         sp, -15(t4)
                  lhu        t5, -13(a5)
                  lbu        s0, 7(t4)
                  lb         gp, -2(a7)
                  sb         sp, 23(a3)
                  lh         s1, -15(s9)
                  sb         s9, 38(a3)
                  sb         s7, -12(a7)
                  lhu        tp, 15(s9)
                  sw         s9, -15(a5)
                  sh         t5, -7(t4) #end load_store_instr_stream_1
                  lh         a0, 7(a7) #end load_store_instr_stream_2
                  sb         t4, 0(s9)
                  sb         s11, 4(s9)
                  lb         s6, 14(a5) #end load_store_instr_stream_4
                  lb         s7, 51(a3)
                  lbu        s11, 2(s9) #end load_store_instr_stream_3
                  sb         a5, -59(a3) #end load_store_instr_stream_0
                  c.slli     s4, 15
1235:             addi       a5, s4, -981
                  c.li       a2, -1
                  xori       s1, s8, -104
                  bge        s4, a4, 1258f
                  sltiu      a4, a0, -876
                  sra        tp, t1, a1
                  lui        t5, 269352
                  c.or       a2, a3
                  c.srai     a1, 12
                  c.and      a0, a3
                  slli       a6, sp, 18
                  andi       s9, s2, 429
                  add        t2, s11, s6
                  bgeu       a1, s1, 1266f
                  add        t4, s0, t5
                  c.add      ra, ra
                  and        s3, t5, sp
                  c.addi     s8, 16
                  csrrc      t0, 0x340, a0
                  or         s2, tp, t6
                  csrrci     t0, 0x340, 15
                  c.srai     a3, 13
                  beq        s5, a7, 1274f
1258:             c.li       s3, 17
                  srai       t6, s1, 13
                  la         s2, region_4+1241 #start riscv_load_store_rand_instr_stream_61
                  c.srli     a3, 21
                  lh         s1, -5(s2)
                  lhu        s7, 9(s2)
                  c.nop
                  lb         a3, 14(s2)
                  lbu        t4, 5(s2)
                  auipc      t1, 891400
                  xor        s7, s8, a7
                  lb         s8, -1(s2)
                  sh         t0, -1(s2)
                  sw         sp, 3(s2)
                  csrrci     s8, 0x340, 7
                  sub        s6, t4, ra
                  lb         t0, 8(s2)
                  sw         s2, 3(s2)
                  lbu        t4, 5(s2)
                  rem        t4, s11, a5
                  sh         a6, 13(s2)
                  c.li       s4, 22
                  auipc      s4, 713689
                  sw         s4, -13(s2)
                  sb         s2, 14(s2)
                  slli       a6, s10, 15
                  lbu        s4, -10(s2)
                  c.and      a0, a2
                  and        s0, a3, tp
                  csrrw      a4, 0x340, gp
                  lbu        s11, 14(s2)
                  lw         s11, 15(s2)
                  csrrsi     s3, 0x340, 1
                  lbu        s1, 8(s2)
                  lhu        ra, 5(s2)
                  sb         t2, -4(s2)
                  lb         s6, 3(s2)
                  lbu        a5, 12(s2)
                  c.xor      a0, a4
                  auipc      t6, 270885
                  lbu        s7, -8(s2)
                  lbu        s11, -14(s2)
                  sltu       gp, s11, tp
                  lbu        a7, 16(s2)
                  lb         t1, 13(s2)
                  nop
                  remu       a7, a3, zero
                  sb         s6, 16(s2)
                  lh         a0, -11(s2) #end riscv_load_store_rand_instr_stream_61
                  csrrc      tp, 0x340, s3
                  c.xor      a3, a3
                  slli       a7, t5, 22
                  bne        t6, s6, 1265f
                  c.nop
1265:             sltiu      zero, s0, -560
1266:             csrrw      a2, 0x340, s5
                  fence
                  c.nop
                  fence.i
                  bltu       a2, t4, 1271f
1271:             sub        t6, a1, zero
                  c.slli     a5, 22
                  slt        a6, s11, a3
1274:             bge        t4, gp, 1286f
                  c.sub      a2, a2
                  rem        s10, s0, a4
                  c.srai     s1, 3
                  c.lui      s1, 6
                  andi       s0, t4, -238
                  fence.i
                  c.srli     a1, 30
                  srli       a0, t5, 21
                  xor        s3, ra, s9
                  lui        t4, 314352
                  c.sub      a3, a4
1286:             blt        s8, t5, 1299f
                  fence
                  c.addi     a7, 22
                  mulhu      t6, t5, gp
                  csrrc      s8, 0x340, s11
                  c.addi     a4, 23
                  sub        zero, t3, sp
                  c.li       s7, -1
                  fence.i
                  mul        gp, s2, t0
                  slt        s1, s9, t2
                  c.lui      s7, 5
                  srai       zero, t4, 10
1299:             or         s10, sp, s7
                  remu       s3, t0, t0
                  slti       gp, t2, -244
                  c.srli     a1, 15
                  remu       t2, sp, s9
                  fence
                  c.bnez     a1, 1312f
                  divu       s10, t0, s1
                  addi       t6, a6, 890
                  c.slli     s8, 6
                  c.lui      t6, 22
                  c.bnez     s0, 1311f
1311:             srai       s9, a4, 16
1312:             csrrci     s2, 0x340, 10
                  auipc      a0, 363147
                  c.andi     a1, 15
                  mul        t1, a1, s10
                  beq        s9, t0, 1334f
                  add        s0, t2, s4
                  c.xor      a5, a1
                  sll        s2, s10, s4
                  beq        s11, a1, 1322f
                  c.xor      a0, a0
1322:             csrrsi     a0, 0x340, 30
                  sltu       s11, t2, sp
                  addi       s0, s9, 99
                  blt        a6, tp, 1342f
                  sltu       a7, a3, t3
                  srli       t4, s5, 9
                  nop
                  mulhu      zero, a6, a7
                  mulhsu     s0, s8, tp
                  lui        s4, 820262
                  mulhu      s11, s9, s5
                  c.addi     s2, 9
1334:             sltiu      s0, t6, -236
                  sltiu      s8, ra, -847
                  csrrwi     a3, 0x340, 12
                  bge        s4, a6, 1339f
                  andi       s2, s3, 59
1339:             c.beqz     a0, 1351f
                  mulhu      s9, t2, s8
                  csrrsi     t0, 0x340, 2
1342:             sra        ra, t0, s5
                  bgeu       s8, zero, 1346f
                  c.add      a7, t6
                  or         a3, t5, s9
1346:             csrrc      s0, 0x340, s9
                  auipc      gp, 184604
                  c.addi     s1, -1
                  ori        a3, t0, 223
                  xori       ra, zero, 451
1351:             mulhu      a7, t0, s9
                  c.bnez     a2, 1367f
                  mulhu      s1, zero, t2
                  srli       a3, s5, 21
                  mulhu      t6, t4, s6
                  c.slli     s0, 11
                  addi       s8, s4, -35
                  bgeu       s1, a1, 1375f
                  c.sub      s1, a5
                  c.bnez     a2, 1380f
                  andi       a3, gp, 119
                  fence.i
                  mul        a2, a5, t6
                  mulhsu     t5, a7, s4
                  c.nop
                  c.sub      a0, a1
1367:             sltu       s9, a2, t5
                  div        a6, s1, a0
                  sra        t2, t6, a3
                  csrrc      t4, 0x340, s0
                  csrrc      a1, 0x340, a4
                  auipc      a5, 535066
                  slt        s0, a5, s1
                  slti       s11, s9, 656
1375:             c.sub      s0, a2
                  bge        t1, s11, 1394f
                  blt        s6, sp, 1385f
                  c.li       t5, 17
                  mulhsu     a4, s11, s5
1380:             c.xor      a0, a5
                  div        t6, a6, a3
                  sltiu      a6, s1, 79
                  c.beqz     s1, 1384f
1384:             fence.i
1385:             and        t6, a5, a7
                  remu       t6, t1, a7
                  addi       ra, t5, 1015
                  c.mv       t4, tp
                  mulhsu     s11, s7, t6
                  c.li       s11, -1
                  xori       a6, sp, -9
                  csrrc      s4, 0x340, a6
                  div        t1, t3, a6
1394:             slli       a7, s11, 2
                  bge        zero, t1, 1399f
                  c.srli     a1, 18
                  srai       t4, t6, 19
                  slti       s0, sp, 269
1399:             xor        s6, s7, t6
                  c.add      s2, s5
                  slli       gp, t2, 3
                  srl        a7, a7, t4
                  srli       a5, t1, 18
                  xor        t6, s7, t0
                  srl        s8, s8, tp
                  csrrs      gp, 0x340, t1
                  c.addi     s4, 31
                  mulhsu     t5, a7, a4
                  xor        s9, s0, ra
                  xori       a1, t4, 268
                  addi       zero, t0, -846
                  csrrci     zero, 0x340, 15
                  srl        t1, s0, a4
                  c.mv       t1, s11
                  and        s11, s1, a6
                  bne        s11, s11, 1428f
                  sub        a4, sp, a1
                  nop
                  slti       s0, s1, -476
                  slt        a5, s0, a4
                  mulhsu     s8, a1, t2
                  c.sub      a2, s1
                  csrrci     a6, 0x340, 3
                  srai       s3, sp, 21
                  c.nop
                  divu       s6, a7, s9
                  divu       s10, s6, s6
1428:             bge        a2, s7, 1430f
                  bge        a4, a6, 1433f
1430:             csrrc      s2, 0x340, t2
                  beq        s0, a3, 1443f
                  rem        s10, s0, t2
1433:             c.srli     s1, 2
                  c.bnez     a3, 1436f
                  mulhsu     s2, t4, s7
1436:             mulh       s11, s9, gp
                  slli       t5, s0, 3
                  sltu       s1, t5, t1
                  lui        t4, 785508
                  csrrwi     a0, 0x340, 16
                  sltu       t5, s8, t3
                  nop
1443:             sltiu      ra, t0, -352
                  or         s4, zero, a3
                  bgeu       a5, a2, 1446f
1446:             c.and      a2, a2
                  c.nop
                  and        s0, s1, a1
                  c.andi     a5, -1
                  xor        s2, t5, s6
                  andi       s9, sp, 311
                  beq        a2, tp, 1471f
                  or         a7, a4, s9
                  srl        s9, a3, ra
                  mul        gp, s4, t6
                  c.bnez     a3, 1470f
                  csrrci     s7, 0x340, 19
                  mulhsu     gp, s3, s4
                  divu       s1, s11, s0
                  csrrsi     ra, 0x340, 31
                  csrrci     s9, 0x340, 25
                  mul        t5, s2, a0
                  c.mv       s1, s5
                  beq        a5, s10, 1473f
                  bge        a2, s3, 1479f
                  bgeu       t5, a7, 1470f
                  sra        a2, s4, a3
                  c.lui      ra, 18
                  xori       s2, a5, -967
1470:             lui        s11, 909591
1471:             bgeu       t0, s7, 1481f
                  bltu       a3, s7, 1474f
1473:             andi       t0, a6, 525
1474:             c.lui      t6, 31
                  mulh       s0, t1, s0
                  srai       t4, sp, 21
                  and        s1, a6, sp
                  srli       s10, gp, 14
1479:             c.nop
                  remu       tp, a1, t0
1481:             nop
                  remu       a7, s5, tp
                  c.sub      a3, a2
                  auipc      s6, 892689
                  blt        a6, s4, 1490f
                  fence
                  bne        gp, s9, 1501f
                  srli       s9, s10, 8
                  beq        t1, s4, 1491f
1490:             sll        s4, s9, s4
1491:             or         a3, s8, s0
                  c.beqz     a0, 1507f
                  mulhu      gp, s9, ra
                  or         a7, s0, t5
                  mulh       s3, s7, t2
                  csrrs      s9, 0x340, s7
                  srl        s7, a4, s7
                  c.srai     s1, 11
                  srli       s2, s6, 24
                  rem        s10, s2, t1
1501:             c.nop
                  bgeu       t1, s9, 1521f
                  csrrs      a2, 0x340, a1
                  c.add      t4, t6
                  csrrs      s10, 0x340, a5
                  nop
1507:             nop
                  csrrsi     t1, 0x340, 1
                  c.nop
                  nop
                  c.sub      a2, a2
                  bgeu       a7, a7, 1524f
                  csrrw      t2, 0x340, ra
                  blt        a7, a0, 1518f
                  auipc      t4, 685839
                  slli       zero, t3, 15
                  csrrw      t4, 0x340, a4
1518:             blt        t0, a1, 1530f
                  sub        tp, s4, t2
                  srl        a6, s5, a2
1521:             c.srai     a5, 26
                  slt        s9, tp, a2
                  remu       a2, s5, s4
1524:             c.slli     a6, 30
                  c.and      a3, a1
                  c.li       t2, -1
                  bgeu       s6, s0, 1529f
                  sub        a0, s2, a0
1529:             sll        a0, a6, tp
1530:             bltu       s0, t4, 1533f
                  c.bnez     a2, 1535f
                  c.lui      t1, 14
1533:             c.srai     a2, 7
                  mulhu      zero, s7, a4
1535:             mul        ra, gp, t6
                  nop
                  mul        s10, tp, t3
                  mulhsu     t0, ra, s0
                  bge        s6, t4, 1540f
1540:             srl        s3, t6, t5
                  c.and      a5, a3
                  rem        s2, t4, s9
                  sll        a7, t2, a5
                  c.addi     s10, 23
                  remu       s1, t6, t2
                  xori       a0, a0, -471
                  or         zero, s8, a0
                  blt        s3, a2, 1568f
                  or         t4, s4, s0
                  c.xor      a3, a3
                  sub        s8, zero, s7
                  blt        a0, s4, 1562f
                  div        s7, s4, zero
                  c.add      ra, t1
                  csrrw      a4, 0x340, s5
                  srai       a3, t0, 15
                  add        t0, s5, s7
                  bge        s1, t5, 1572f
                  csrrsi     s8, 0x340, 19
                  sra        t1, ra, s3
                  sltiu      a4, s10, 490
1562:             c.and      a2, a1
                  c.nop
                  c.beqz     a0, 1569f
                  add        s1, s4, t1
                  mulhsu     s7, t1, s2
                  mulhsu     s0, a6, a4
1568:             c.bnez     a3, 1572f
1569:             div        t4, gp, a2
                  addi       a6, a0, -844
                  c.srli     s1, 7
1572:             c.srai     s1, 21
                  mul        s8, ra, s11
                  c.beqz     a0, 1592f
                  ori        a0, a6, -391
                  c.srli     a5, 4
                  slli       t5, t3, 4
                  srai       a3, s7, 17
                  ori        t4, sp, 999
                  andi       a6, t3, -354
                  beq        zero, t3, 1598f
                  c.add      s0, t5
                  c.nop
                  csrrc      t0, 0x340, s7
                  auipc      tp, 341065
                  c.slli     t6, 12
                  sra        s8, t3, s9
                  c.nop
                  or         tp, s3, t5
                  srai       s8, s10, 24
                  c.srai     a5, 25
1592:             c.bnez     s0, 1601f
                  slt        t6, t5, ra
                  c.srai     a4, 4
                  nop
                  remu       s1, s5, s4
                  xori       gp, s4, 396
1598:             srl        a4, s3, s9
                  c.beqz     a1, 1617f
                  slli       s0, a2, 27
1601:             and        a5, t6, a7
                  lui        ra, 759121
                  sltu       t6, ra, s3
                  slt        a6, t4, a1
                  srl        s0, a3, s10
                  c.sub      a0, a2
                  csrrc      a2, 0x340, t0
                  and        ra, tp, s8
                  addi       t4, t3, 939
                  c.li       s10, -1
                  xor        t1, a6, s8
                  addi       a2, a2, 517
                  div        s6, a3, a2
                  c.srai     a3, 20
                  blt        a4, sp, 1616f
1616:             slti       a6, a3, 79
1617:             beq        a2, t1, 1619f
                  c.srli     s1, 13
1619:             csrrsi     t1, 0x340, 11
                  c.li       a1, 20
                  sub        a2, t6, a7
                  auipc      tp, 277145
                  bgeu       t1, s3, 1624f
1624:             c.slli     s6, 29
                  srai       t2, a0, 15
                  c.nop
                  blt        s3, a7, 1634f
                  srli       s9, t2, 28
                  csrrw      a2, 0x340, tp
                  c.addi     s7, 23
                  bltu       s5, s7, 1644f
                  bltu       s0, a1, 1634f
                  c.li       s6, -1
1634:             beq        s4, s3, 1642f
                  bgeu       a4, a3, 1647f
                  or         a1, t2, s5
                  c.sub      a5, a4
                  andi       s3, a2, 785
                  auipc      gp, 798376
                  c.beqz     a0, 1642f
                  addi       s1, t4, 9
1642:             mulhsu     a5, sp, t0
                  csrrc      t0, 0x340, a1
1644:             c.lui      a1, 7
                  lui        a1, 899326
                  c.sub      a1, a0
1647:             csrrs      a2, 0x340, t5
                  mulhu      t6, t2, s11
                  andi       a2, s11, 54
                  auipc      s4, 694960
                  srai       t5, s2, 27
                  srli       tp, tp, 24
                  c.beqz     s1, 1670f
                  slli       a0, a3, 20
                  c.or       a1, a0
                  remu       s4, t5, a5
                  sll        a1, a7, a2
                  auipc      s10, 931320
                  ori        s6, s7, 809
                  csrrw      a4, 0x340, sp
                  auipc      a1, 988070
                  addi       a4, s2, -749
                  ori        s4, a2, -62
                  csrrsi     s2, 0x340, 4
                  sltu       s10, t1, s4
                  add        s6, a1, s10
                  srli       tp, a1, 22
                  and        s0, s11, t0
                  ori        t5, zero, -15
1670:             csrrs      zero, 0x340, s5
                  c.slli     tp, 5
                  c.sub      s1, a4
                  fence
                  rem        t2, a7, a3
                  csrrwi     s4, 0x340, 29
                  csrrwi     t0, 0x340, 4
                  xori       t0, a0, 70
                  c.li       s0, -1
                  sub        a0, a3, s8
                  slt        a7, gp, s11
                  remu       a5, a3, s8
                  lui        s0, 908783
                  and        s7, ra, t1
                  csrrc      a7, 0x340, s11
                  remu       s7, a6, a0
                  srl        s8, t5, s6
                  xor        tp, ra, s5
                  csrrwi     a3, 0x340, 11
                  c.lui      s3, 22
                  c.beqz     a4, 1692f
                  ori        s6, s9, -186
1692:             c.mv       a2, s7
                  xori       t6, s11, 865
                  srai       a5, a4, 12
                  div        a4, a3, t0
                  c.sub      a0, a4
                  sltiu      ra, a5, 845
                  mulhu      s8, s7, s10
                  csrrwi     zero, 0x340, 26
                  c.lui      a5, 30
                  c.lui      a4, 11
                  lui        a6, 688121
                  mul        a7, s1, t2
                  divu       s4, a5, t5
                  srl        ra, s7, t3
                  c.andi     a0, 12
                  slli       a5, s7, 29
                  divu       s0, a2, s3
                  bltu       t0, a3, 1724f
                  srli       ra, s3, 9
                  div        s1, t4, a7
                  blt        s4, s2, 1732f
                  c.srli     a0, 9
                  slli       t4, a1, 2
                  csrrwi     a7, 0x340, 21
                  addi       t4, t3, -728
                  bge        t1, a3, 1719f
                  bge        tp, s1, 1732f
1719:             c.slli     s10, 3
                  divu       s0, t1, t5
                  c.nop
                  mulhu      a0, s3, ra
                  or         s10, s7, zero
1724:             srai       t5, t0, 20
                  c.addi     t4, -1
                  bge        a1, s1, 1727f
1727:             csrrsi     a6, 0x340, 2
                  slli       t6, a0, 14
                  slt        s2, ra, a7
                  bltu       t0, t4, 1743f
                  xor        gp, s11, s3
1732:             c.xor      a5, s1
                  slti       s3, s5, 586
                  c.mv       t4, s7
                  remu       t0, s4, a1
                  c.sub      a5, s1
                  nop
                  lui        s7, 190454
                  nop
                  sra        t5, a3, a5
                  addi       s1, a5, 402
                  xor        t4, a3, gp
1743:             srli       a5, t2, 26
                  bge        t0, t3, 1747f
                  mul        a0, s0, ra
                  divu       t1, a2, gp
1747:             csrrc      s11, 0x340, sp
                  c.add      a4, sp
                  c.and      s0, a2
                  c.sub      a1, s1
                  csrrsi     s2, 0x340, 10
                  fence.i
                  mulh       a5, s6, s2
                  c.andi     s0, -1
                  csrrs      tp, 0x340, a6
                  slti       a5, t1, -14
                  xor        a6, a7, s5
                  mulhu      ra, s2, a0
                  or         a6, a4, gp
                  c.slli     s6, 10
                  c.addi     s11, 8
                  ori        a6, a0, -299
                  sra        ra, a5, s4
                  and        a7, a1, t6
                  auipc      s7, 618012
                  remu       a3, a0, a4
                  add        s9, s6, t5
                  c.addi     s9, 14
                  sra        gp, s10, s4
                  c.nop
                  c.lui      a5, 28
                  sub        t0, t2, t5
                  c.sub      a0, a4
                  bgeu       zero, s10, 1792f
                  c.li       a4, -1
                  ori        gp, t3, 625
                  or         gp, a5, a5
                  xor        a1, s5, t2
                  csrrw      s8, 0x340, s5
                  bltu       s2, t4, 1794f
                  and        tp, s5, gp
                  add        s6, s6, a5
                  lui        ra, 931153
                  c.andi     a0, 15
                  csrrwi     a0, 0x340, 30
                  slti       a5, s10, -473
                  c.and      s0, a4
                  rem        a5, s9, s3
                  slt        s7, s10, s6
                  nop
                  csrrsi     t4, 0x340, 12
1792:             auipc      s7, 775111
                  xor        t0, a7, s8
1794:             c.nop
                  bge        t3, t0, 1800f
                  sltu       s3, s1, s6
                  c.bnez     a3, 1799f
                  csrrc      t5, 0x340, t1
1799:             blt        a5, t5, 1800f
1800:             c.srli     a2, 20
                  c.mv       a1, s1
                  sub        s9, s9, zero
                  sltiu      a5, t1, 892
                  csrrc      t1, 0x340, s2
                  c.add      a0, t2
                  c.bnez     a3, 1818f
                  sll        s9, ra, zero
                  csrrwi     s0, 0x340, 0
                  c.andi     s0, 5
                  csrrci     a2, 0x340, 21
                  c.and      s0, a0
                  fence
                  bne        s7, s0, 1817f
                  c.beqz     a2, 1823f
                  addi       t6, t4, -132
                  srai       s1, s5, 11
1817:             csrrci     s8, 0x340, 18
1818:             srl        tp, s10, s9
                  remu       gp, t1, t5
                  nop
                  ori        tp, tp, 739
                  bgeu       a7, t1, 1839f
1823:             andi       t4, t5, -958
                  remu       s2, a7, s3
                  c.sub      a3, s0
                  divu       a1, s4, s6
                  c.li       s8, -1
                  xor        t5, a6, sp
                  sra        s7, t2, s3
                  xor        s9, s3, t5
                  c.slli     ra, 11
                  slti       s0, s6, -648
                  c.addi     s6, 10
                  andi       t6, a3, 637
                  slt        s7, a0, t2
                  mulhsu     a0, t6, a2
                  slti       s6, sp, 884
                  sll        tp, s5, t3
1839:             sltiu      t1, s5, -193
                  c.xor      a4, s1
                  c.mv       a5, a6
                  beq        s2, s8, 1844f
                  rem        a6, s8, a5
1844:             and        a3, a6, s2
                  csrrwi     s1, 0x340, 28
                  slti       s1, s0, 434
                  mulh       tp, tp, t0
                  la         t2, region_2+3967 #start load_store_instr_stream_1
                  la         t5, region_2+1303 #start load_store_instr_stream_2
                  la         ra, region_2+1533 #start load_store_instr_stream_0
                  lbu        gp, 1308(ra)
                  lhu        s1, 25(ra)
                  sb         s6, 912(t2)
                  la         t1, region_2+1452 #start load_store_instr_stream_4
                  sb         t5, 1756(ra)
                  la         a6, region_2+7881 #start load_store_instr_stream_3
                  lbu        a4, 54(t1)
                  lbu        s0, -617(ra)
                  sb         s0, -1014(t2)
                  lbu        s4, -53(a6)
                  sb         t4, 593(t2)
                  sb         a3, 106(t2)
                  lb         s10, -1252(ra)
                  sb         s1, -622(ra)
                  lw         a7, -5(a6)
                  lw         s1, -457(ra)
                  lbu        s2, -1026(t5)
                  lbu        s0, -47(t1)
                  sb         t1, 1035(t2)
                  lbu        s4, -59(t1)
                  lb         a0, -129(t5)
                  lh         s1, -41(a6)
                  lh         s11, -239(ra)
                  sb         s3, 149(t2)
                  lbu        s7, 96(t2)
                  lh         t4, 12(t1)
                  lb         a4, -30(t1)
                  lbu        a2, -7(a6)
                  lb         a4, 965(t5)
                  sb         t1, 2042(ra)
                  lw         s9, -1087(t2)
                  lb         s2, -730(t2)
                  lhu        gp, -19(a6) #end load_store_instr_stream_3
                  sb         zero, -2019(t2) #end load_store_instr_stream_1
                  lb         zero, 171(t5)
                  lbu        a1, 1536(t5)
                  lb         zero, -5(t1) #end load_store_instr_stream_4
                  lbu        gp, 1466(t5) #end load_store_instr_stream_2
                  lbu        s8, -376(ra) #end load_store_instr_stream_0
                  bne        a1, s3, 1866f
                  slti       t2, a4, 224
                  c.sub      a2, a0
                  bge        gp, t3, 1863f
                  andi       t2, s1, 269
                  and        s6, a4, t6
                  c.slli     s3, 10
                  bltu       s9, s3, 1856f
1856:             srli       gp, s4, 26
                  bltu       s1, a6, 1865f
                  c.xor      a4, a3
                  fence
                  c.bnez     a3, 1867f
                  c.nop
                  div        s1, gp, gp
1863:             c.addi     s9, -1
                  c.bnez     a0, 1881f
1865:             c.mv       s9, s5
1866:             c.addi     a4, 17
1867:             mul        a6, a6, sp
                  sub        a1, s0, zero
                  nop
                  xor        s10, a0, gp
                  mulhu      a0, t1, t0
                  slt        s6, s9, sp
                  c.bnez     a5, 1892f
                  sub        s7, t6, a6
                  mul        s8, s1, zero
                  sra        zero, a0, s11
                  c.nop
                  c.srli     s1, 25
                  csrrsi     t5, 0x340, 7
                  xori       s6, a6, -786
1881:             c.lui      a2, 3
                  slti       a7, s3, -604
                  c.srli     a2, 3
                  div        a1, t6, ra
                  ori        s9, t0, 716
                  add        t6, a1, a1
                  rem        s2, a1, a5
                  csrrs      tp, 0x340, t0
                  srai       t2, s3, 23
                  mulh       a2, s2, gp
                  blt        s9, a7, 1901f
1892:             c.nop
                  c.li       a6, -1
                  csrrsi     s1, 0x340, 13
                  bgeu       t5, s5, 1899f
                  bltu       t2, t0, 1898f
                  c.bnez     a2, 1901f
1898:             fence
1899:             srai       t4, t2, 2
                  slti       s3, s10, 888
1901:             srli       a1, s1, 14
                  sltu       s1, zero, a3
                  csrrs      s0, 0x340, s3
                  c.li       s1, -1
                  csrrc      zero, 0x340, s8
                  c.srli     s1, 29
                  mulhu      a2, s7, s1
                  c.lui      ra, 17
                  c.beqz     a2, 1921f
                  srai       s3, a7, 12
                  mulhsu     t0, s2, t4
                  srai       a7, t0, 13
                  c.lui      t1, 4
                  div        ra, s9, s2
                  c.sub      a5, a2
                  c.addi     s0, 11
                  c.bnez     a5, 1934f
                  xor        t0, s4, s3
                  bne        sp, s9, 1921f
                  andi       s11, s9, -693
1921:             auipc      s1, 198844
                  mulhu      s0, t5, t0
                  c.or       a3, s1
                  c.andi     a0, -1
                  mulh       a4, t6, ra
                  and        a4, tp, a2
                  beq        a7, s1, 1932f
                  csrrwi     s7, 0x340, 3
                  c.mv       s8, t6
                  c.or       a5, a1
                  c.srai     a4, 19
1932:             c.add      s4, t3
                  csrrwi     s7, 0x340, 16
1934:             rem        tp, s7, s7
                  c.slli     gp, 30
                  addi       s6, s10, 893
                  c.and      a4, a0
                  mulhsu     s11, a7, s2
                  beq        t1, a6, 1952f
                  bgeu       tp, a1, 1960f
                  c.nop
                  nop
                  csrrc      t1, 0x340, a3
                  srai       t1, a1, 4
                  xori       s10, a6, 501
                  csrrw      s8, 0x340, t6
                  slti       s11, a0, -436
                  beq        zero, a2, 1960f
                  c.and      a0, a3
                  csrrw      t0, 0x340, ra
                  auipc      zero, 682234
1952:             andi       t0, t5, -206
                  csrrwi     a7, 0x340, 30
                  c.srai     a0, 21
                  bge        a2, s6, 1957f
                  srai       t1, s1, 30
1957:             c.xor      a3, a0
                  slli       s3, a7, 24
                  xor        a6, s8, t2
1960:             lui        t1, 546223
                  c.mv       a4, s7
                  mulhsu     a3, s4, s11
                  blt        a5, s9, 1975f
                  c.beqz     a4, 1966f
                  sub        s7, s8, tp
1966:             c.mv       s2, a3
                  csrrsi     t1, 0x340, 9
                  c.beqz     a3, 1969f
1969:             c.nop
                  c.bnez     a0, 1985f
                  bltu       s11, a6, 1989f
                  csrrw      s9, 0x340, s5
                  slt        s3, s2, gp
                  divu       t1, s1, a7
1975:             bge        t2, a3, 1979f
                  c.addi     s2, -1
                  and        s4, s5, s1
                  c.xor      a4, a1
1979:             and        a1, ra, gp
                  bge        a6, a3, 1984f
                  c.andi     a0, 26
                  csrrc      t2, 0x340, s5
                  c.add      s4, a5
1984:             sltu       a6, s0, s2
1985:             or         s11, a6, s6
                  xori       s9, s7, -618
                  sub        s10, s3, s11
                  nop
1989:             c.slli     a4, 20
                  addi       s2, s8, -1010
                  c.and      a0, a3
                  auipc      s2, 555179
                  beq        s10, ra, 1994f
1994:             c.srli     a4, 9
                  c.bnez     a4, 1997f
                  sll        s6, t0, zero
1997:             addi       a5, a3, 852
                  blt        a6, s9, 2007f
                  div        t6, s8, s2
                  c.lui      s7, 30
                  remu       a6, s11, t6
                  nop
                  rem        s7, a4, a0
                  c.addi     s0, -1
                  bgeu       t4, s6, 2009f
                  addi       t4, s8, 516
2007:             sub        gp, t6, t3
                  andi       a5, a5, -266
2009:             auipc      s6, 1003431
                  srl        zero, a0, ra
                  bne        t6, zero, 2025f
                  mul        t1, zero, a6
                  xori       a0, s4, 483
                  ori        a7, t4, -690
                  c.add      t4, tp
                  sra        gp, a0, t1
                  ori        a6, gp, -502
                  csrrw      s8, 0x340, s6
                  fence
                  srli       t2, t4, 1
                  c.bnez     a3, 2040f
                  remu       t5, s9, zero
                  c.xor      a3, a3
                  ori        a5, t4, -799
2025:             xori       a6, s6, 483
                  c.slli     s2, 2
                  addi       gp, a2, 480
                  mulhsu     s1, s10, a4
                  csrrsi     gp, 0x340, 0
                  csrrsi     a5, 0x340, 7
                  bne        s9, zero, 2032f
2032:             bltu       t0, s5, 2042f
                  c.and      a5, a2
                  c.srli     s0, 18
                  fence.i
                  c.mv       a5, tp
                  c.sub      a4, s1
                  ori        t5, a0, 656
                  or         t4, gp, a7
2040:             ori        t2, a1, 427
                  srli       gp, gp, 21
2042:             slt        ra, t3, sp
                  remu       a7, t1, s0
                  auipc      s6, 209925
                  addi       a3, s10, -83
                  and        ra, s8, s1
                  addi       s10, t1, -824
                  xori       tp, a3, 827
                  bge        s11, s5, 2051f
                  csrrs      s3, 0x340, s9
                  la         s8, region_0+1335 #start riscv_load_store_rand_instr_stream_75
                  lbu        s9, -172(s8)
                  c.and      a3, s1
                  or         s7, a7, zero
                  lbu        s9, 108(s8)
                  c.mv       t1, t0
                  c.mv       t5, t2
                  addi       t0, s10, 481
                  lbu        s2, 872(s8)
                  mul        a3, s4, a2
                  lw         t5, 1897(s8)
                  and        t4, s11, s6
                  sh         tp, 699(s8)
                  c.mv       tp, s10
                  c.li       a0, -1
                  lbu        a6, -86(s8)
                  sra        t4, a2, t4
                  sub        a0, a7, a0
                  sh         s4, 1279(s8)
                  sb         a4, 879(s8)
                  sb         t1, 790(s8)
                  csrrw      s10, 0x340, t5
                  c.sub      a5, a5
                  fence.i
                  mulh       tp, s7, t4
                  csrrs      a6, 0x340, t3
                  sb         s4, 1672(s8)
                  fence
                  lhu        t2, 577(s8)
                  c.and      s0, s0
                  fence.i
                  c.or       a5, a5
                  csrrc      s6, 0x340, a3
                  ori        t1, t0, 711
                  sub        a1, s9, zero
                  sltiu      a4, s10, -417
                  c.andi     a1, -1
                  mul        s10, a3, s10
                  c.sub      a0, a3
                  mul        tp, s3, zero
                  sh         t3, -241(s8) #end riscv_load_store_rand_instr_stream_75
2051:             csrrc      zero, 0x340, a3
                  mulh       a0, a6, zero
                  addi       a7, a4, 69
                  sltu       a5, a4, s6
                  c.andi     a2, -1
                  mulh       s1, a7, tp
                  blt        s2, s6, 2060f
                  sub        s6, s7, t0
                  srl        gp, a7, s9
2060:             c.srai     s1, 30
                  c.andi     a3, 20
                  div        t1, a6, s5
                  sltu       gp, s3, s7
                  andi       a6, sp, -859
                  bgeu       t6, ra, 2082f
                  addi       a6, zero, -509
                  c.srli     s1, 14
                  mul        s3, s2, s11
                  c.or       s1, a4
                  rem        s0, s4, s9
                  sra        t6, a5, t6
                  c.mv       a2, a2
                  bne        sp, s11, 2081f
                  srli       s11, sp, 1
                  c.addi     a2, -1
                  slt        a6, ra, s5
                  sltu       s3, s4, tp
                  c.xor      a4, a4
                  beq        s8, s2, 2093f
                  c.srli     a1, 2
2081:             csrrw      a6, 0x340, a6
2082:             addi       s2, a7, 278
                  c.mv       s9, s9
                  mulhu      s4, a5, t6
                  sltu       s1, t2, a5
                  divu       zero, s0, t0
                  c.slli     s10, 22
                  rem        s1, a0, a2
                  sltiu      a3, s5, 987
                  c.li       t0, -1
                  ori        t6, s5, 487
                  srai       a3, s11, 2
2093:             srai       s11, s11, 26
                  bge        a6, s6, 2106f
                  mulh       a6, s9, a5
                  slli       s10, t3, 6
                  c.lui      a4, 20
                  addi       s11, s3, 335
                  rem        s11, gp, s10
                  slt        a7, sp, a2
                  c.srai     a4, 9
                  div        s6, ra, t5
                  c.slli     s7, 29
                  mulhu      s3, a4, a7
                  mulh       a0, t4, a7
2106:             or         s6, a6, s10
                  c.srli     s1, 18
                  csrrwi     ra, 0x340, 24
                  slt        a1, a5, a3
                  srai       s1, a4, 23
                  c.or       a0, a1
                  divu       t1, s1, a3
                  remu       gp, s0, s11
                  csrrw      a7, 0x340, s7
                  c.sub      a0, a0
                  divu       a4, t3, s7
                  csrrci     a6, 0x340, 0
                  or         s7, s5, s4
                  mul        a1, ra, t2
                  c.add      t1, a5
                  mulhsu     t6, s1, s9
                  bltu       s2, s0, 2140f
                  bltu       t4, a5, 2130f
                  slt        t6, t3, s2
                  csrrs      ra, 0x340, t1
                  andi       a1, t3, -646
                  c.srai     a1, 29
                  c.lui      s6, 14
                  bgeu       ra, s5, 2143f
2130:             mulh       a1, a3, s3
                  slt        tp, s8, a5
                  bltu       a4, a3, 2150f
                  c.and      a3, a2
                  csrrci     t4, 0x340, 29
                  srai       a3, a1, 18
                  csrrw      tp, 0x340, t5
                  ori        s9, s10, -579
                  sll        ra, s6, a2
                  c.li       a5, 25
2140:             srli       s6, a4, 24
                  csrrw      tp, 0x340, t0
                  auipc      s2, 803083
2143:             csrrw      a4, 0x340, t6
                  ori        s7, t5, 249
                  addi       gp, t4, -526
                  andi       t1, a7, -681
                  c.srai     a1, 19
                  slti       s4, t4, 166
                  srli       s11, t5, 30
2150:             mul        a0, a1, t5
                  rem        s9, a6, s8
                  csrrw      t4, 0x340, s1
                  remu       s7, s11, a3
                  auipc      s0, 722299
                  srai       a0, a1, 31
                  csrrsi     s9, 0x340, 25
                  csrrsi     s11, 0x340, 29
                  lui        a6, 590996
                  c.bnez     s1, 2176f
                  csrrs      t1, 0x340, s5
                  fence.i
                  auipc      s3, 214910
                  c.nop
                  c.lui      gp, 19
                  c.addi     tp, 31
                  c.andi     s1, -1
                  c.xor      a0, a0
                  divu       t1, s0, a2
                  nop
                  c.slli     s11, 9
                  bgeu       a6, a3, 2172f
2172:             c.addi     ra, -1
                  c.slli     t6, 6
                  c.mv       ra, a2
                  fence
2176:             or         t2, zero, t3
                  mulh       t2, a3, tp
                  c.srli     a1, 25
                  c.slli     s8, 25
                  blt        tp, s1, 2195f
                  or         a6, s10, a4
                  c.srai     a2, 13
                  srli       t2, s4, 25
                  sltu       tp, t0, s11
                  andi       s11, tp, 241
                  div        tp, a6, s5
                  rem        a4, s6, a6
                  c.xor      s0, a2
                  bgeu       s11, s4, 2202f
                  c.li       a5, -1
                  mulhu      tp, t4, t4
                  sltu       t6, s2, s8
                  fence
                  ori        a2, t0, 211
2195:             mulhsu     s11, a6, ra
                  xori       s11, s10, 548
                  sltu       t5, zero, s8
                  remu       gp, t3, s2
                  csrrw      t4, 0x340, s7
                  and        t6, s8, a6
                  sub        a5, s8, s5
2202:             div        t1, s7, a6
                  sltiu      s8, t1, 913
                  fence.i
                  c.bnez     a2, 2213f
                  auipc      s3, 556466
                  sltiu      s6, sp, 239
                  add        ra, a4, t4
                  mul        s8, t5, s3
                  beq        zero, tp, 2212f
                  bltu       s1, s8, 2223f
2212:             or         a5, ra, s9
2213:             c.lui      gp, 5
                  srl        a7, s9, t4
                  ori        s6, a3, 431
                  c.li       a3, 8
                  c.sub      a1, a1
                  sll        s0, gp, s7
                  slli       s6, s0, 30
                  c.mv       s1, s8
                  xor        s9, t5, t2
                  slli       a3, tp, 19
2223:             c.li       a6, -1
                  or         s8, s4, s1
                  addi       t6, s9, -908
                  rem        s0, s5, zero
                  sltiu      ra, a1, 619
                  mulhu      t0, t2, s11
                  c.addi     a2, 6
                  ori        t0, t6, -436
                  xori       a0, t6, 571
                  mulhu      s1, s7, sp
                  remu       s10, a3, sp
                  sltiu      s0, a4, -751
                  slli       a0, t2, 30
                  lui        s7, 695114
                  srl        t2, s11, s1
                  c.srai     s1, 19
                  c.lui      a1, 28
                  mulhu      t2, a4, s0
                  andi       a7, ra, 758
                  xor        s3, a7, a3
                  c.bnez     a0, 2244f
2244:             csrrci     a6, 0x340, 24
                  c.lui      s11, 6
                  sltu       a4, t1, a1
                  lui        s0, 38288
                  srai       a0, a4, 16
                  c.lui      s11, 2
                  srl        zero, s11, t4
                  andi       a5, s4, 883
                  srai       s9, s2, 9
                  csrrci     a5, 0x340, 2
                  srai       s11, a1, 24
                  sltu       s2, s7, s7
                  csrrsi     ra, 0x340, 1
                  c.or       a1, a1
                  bge        t2, s7, 2270f
                  c.nop
                  c.srai     a2, 24
                  slli       s6, a5, 15
                  or         t0, a4, t5
                  csrrsi     s7, 0x340, 30
                  and        s1, t1, zero
                  bne        ra, s0, 2267f
                  xor        a5, a0, s3
2267:             bne        a0, t0, 2269f
                  slli       t0, sp, 6
2269:             sltiu      s1, s1, 60
2270:             c.and      a0, a4
                  c.and      a2, a5
                  sra        s9, s8, t6
                  sra        s9, a5, s1
                  srai       gp, a3, 30
                  srli       a0, s10, 26
                  mulhu      s1, t6, a4
                  mul        a5, s6, s9
                  c.sub      a0, a3
                  mul        s8, s0, s3
                  mulhsu     t4, t3, a7
                  div        tp, a0, t2
                  div        zero, t0, a1
                  remu       gp, s6, s7
                  and        s1, gp, t2
                  mul        s6, t1, s5
                  srli       gp, t1, 23
                  blt        a2, tp, 2288f
2288:             c.or       a1, a0
                  mulh       s11, t1, a6
                  bne        t3, s0, 2295f
                  addi       t5, t5, -911
                  fence.i
                  sra        s10, a6, t3
                  lui        a0, 546088
2295:             c.lui      a6, 28
                  csrrwi     s7, 0x340, 6
                  c.li       a4, -1
                  bltu       a2, t3, 2299f
2299:             add        t0, t0, a0
                  c.slli     t5, 10
                  lui        tp, 65512
                  lw         ra, 4(sp)
                  csrrwi     tp, 0x340, 20
                  addi       sp, sp, 40
                  c.addi     gp, 11
                  div        t1, s11, t2
                  c.and      a2, a5
7476:             c.jr x1
sub_2:            c.addi     s8, 7
                  sra        a5, sp, s8
                  addi       sp, sp, -36
                  csrrs      a2, 0x340, t6
                  fence.i
                  srl        s9, s8, zero
                  c.li       s7, -1
                  nop
                  rem        a5, s7, ra
                  sw         ra, 4(sp)
                  addi       a7, t3, 686
                  mulhu      a5, s0, s10
                  la         s4, region_1+4598 #start riscv_load_store_rand_instr_stream_1
                  sll        s2, t3, t0
                  csrrwi     zero, 0x340, 18
                  sb         s4, -46(s4)
                  sh         a2, 48(s4)
                  csrrc      a3, 0x340, t6
                  lbu        t0, -11(s4)
                  lbu        a3, 22(s4)
                  lh         s0, 40(s4)
                  c.andi     a5, 28
                  c.lui      a1, 3
                  lbu        tp, -7(s4)
                  sh         s2, 4(s4)
                  sh         s8, -12(s4)
                  lbu        a0, -50(s4)
                  lbu        a7, 47(s4)
                  c.xor      a5, a1
                  lbu        a3, -13(s4)
                  add        s10, t5, s7
                  lh         a2, 58(s4)
                  lb         gp, 55(s4)
                  slli       gp, t1, 25
                  lbu        t1, 39(s4)
                  lb         a4, -61(s4)
                  andi       s11, s11, -257
                  sb         t6, 31(s4)
                  c.mv       s10, t3
                  lbu        s10, -3(s4)
                  lh         ra, -6(s4)
                  add        s7, a1, t6
                  c.xor      a0, a1
                  lbu        s6, 15(s4)
                  lb         s8, 1(s4)
                  c.xor      a4, a1
                  sb         t2, -8(s4)
                  lb         s2, -51(s4)
                  c.sub      a5, s0
                  auipc      a4, 948694
                  lb         a1, -7(s4)
                  lhu        t0, 60(s4)
                  or         t0, s1, s2
                  slti       t6, t4, 571
                  and        s0, ra, gp
                  remu       t4, s10, s9
                  c.lui      a5, 27
                  lb         t6, 2(s4)
                  lbu        s8, 25(s4)
                  c.and      a4, a0
                  sub        t0, a7, s4
                  lui        tp, 61362
                  sb         t6, 49(s4)
                  lbu        s2, 13(s4)
                  sltiu      s1, zero, -209
                  lb         t1, 18(s4) #end riscv_load_store_rand_instr_stream_1
                  la         s1, region_3+498 #start load_store_instr_stream_1
                  la         s11, region_0+2794 #start load_store_instr_stream_4
                  sb         t0, -75(s11)
                  la         s3, region_2+1210 #start load_store_instr_stream_2
                  la         s2, region_1+2555 #start load_store_instr_stream_3
                  lhu        t1, -4(s11)
                  lw         s10, 5(s2)
                  lbu        s9, 1(s1)
                  lw         s8, -14(s3)
                  lb         s8, 239(s11)
                  la         a7, region_4+2996 #start load_store_instr_stream_0
                  lbu        zero, 11(a7)
                  lbu        t2, 7(s3)
                  lb         tp, 27(s2)
                  sh         s7, -2(a7)
                  lbu        s10, -57(s1)
                  lbu        a4, -7(a7)
                  sw         zero, 17(s2)
                  sb         s9, -229(s11)
                  sb         ra, -14(s3)
                  lb         a5, 58(s2)
                  sb         a0, -155(s11)
                  lh         s4, -36(a7)
                  lbu        s0, -61(s2)
                  lb         s9, -46(s1)
                  lb         s0, -61(a7)
                  lbu        s4, -11(s3)
                  lh         t4, 12(s1)
                  sw         a3, -24(a7)
                  sb         sp, 36(s2)
                  sh         ra, 6(s3)
                  lhu        s10, -16(s3)
                  lbu        a6, -39(s1)
                  lhu        s10, 2(s3) #end load_store_instr_stream_2
                  lbu        zero, -33(s1)
                  lbu        gp, -27(s1) #end load_store_instr_stream_1
                  lh         t5, -47(s2) #end load_store_instr_stream_3
                  lb         s6, -129(s11)
                  lb         s4, 13(s11) #end load_store_instr_stream_4
                  lb         a6, -35(a7) #end load_store_instr_stream_0
                  la         s9, region_0+1000 #start riscv_load_store_rand_instr_stream_0
                  xori       ra, s5, 460
                  lbu        t0, 63(s9)
                  srli       s6, ra, 6
                  sb         a3, 63(s9)
                  slli       t1, s11, 7
                  lbu        s0, -31(s9)
                  lb         s4, 25(s9)
                  sltiu      s0, s9, 702
                  lb         a4, 49(s9)
                  lh         s8, 12(s9)
                  lhu        s7, 52(s9)
                  div        zero, s2, t5
                  lb         a0, 62(s9)
                  sll        s10, t0, s4
                  xor        s8, a5, t3
                  c.nop
                  csrrwi     gp, 0x340, 1
                  sltiu      t2, gp, 224
                  sb         a6, 39(s9)
                  lbu        s6, -1(s9)
                  srl        s4, s11, a7
                  lh         s0, -20(s9) #end riscv_load_store_rand_instr_stream_0
                  la         t2, region_0+4071 #start riscv_load_store_rand_instr_stream_3
                  lw         a3, 13(t2)
                  c.li       s7, -1
                  csrrc      a1, 0x340, t0
                  addi       t6, a6, -901
                  lb         t0, -13(t2)
                  sb         gp, -16(t2)
                  srl        t6, tp, a1
                  csrrwi     a0, 0x340, 21
                  lb         s10, 0(t2)
                  lbu        t4, -12(t2)
                  sltiu      s8, a2, -206
                  lbu        a5, 2(t2)
                  c.lui      s11, 5
                  c.or       a0, a3
                  rem        t4, t5, a0
                  mul        gp, s10, a7
                  lbu        a3, 10(t2)
                  nop
                  csrrw      s0, 0x340, a1
                  lbu        s9, -9(t2)
                  srli       s3, sp, 16
                  sb         t6, -9(t2)
                  c.add      s10, s0
                  rem        s9, a4, ra
                  c.add      a6, a2
                  auipc      t6, 826834
                  c.addi     a5, -1
                  div        t1, zero, s7
                  andi       zero, s2, 524
                  lb         s1, -4(t2)
                  lbu        t1, -14(t2)
                  lbu        s9, 15(t2)
                  sb         a5, -11(t2)
                  sw         s10, 5(t2)
                  divu       t4, sp, a3
                  lb         s8, -7(t2)
                  sb         s0, -7(t2)
                  lbu        gp, -14(t2)
                  sb         t0, 7(t2)
                  c.srai     a5, 21
                  sh         t5, -13(t2)
                  lb         t5, 2(t2)
                  csrrc      t1, 0x340, t5
                  c.mv       s9, s8
                  sh         a0, 3(t2)
                  lbu        s2, -4(t2)
                  lh         t5, -13(t2)
                  lhu        a4, -7(t2) #end riscv_load_store_rand_instr_stream_3
                  la         s10, region_0+3132 #start riscv_load_store_rand_instr_stream_4
                  ori        tp, s9, 40
                  mulhsu     s4, s5, s11
                  c.xor      a0, a2
                  slt        a5, t6, a3
                  lui        a7, 97914
                  csrrwi     a5, 0x340, 20
                  sub        a6, s11, a1
                  auipc      s1, 425522
                  ori        s0, t1, 97
                  csrrci     s0, 0x340, 23
                  lbu        a5, 24(s10)
                  sh         sp, 52(s10)
                  lhu        s11, 208(s10)
                  sb         a5, -15(s10)
                  sb         t0, -63(s10)
                  lb         t5, -239(s10)
                  lh         a0, -222(s10)
                  sub        a4, t1, gp
                  lb         t4, 55(s10)
                  lb         s4, 98(s10)
                  and        t5, t6, s6
                  remu       s6, a6, tp
                  sb         s5, -109(s10)
                  mul        a1, s4, s8
                  sb         s7, -25(s10)
                  sb         t5, -138(s10)
                  sh         a1, 154(s10)
                  mulhsu     a7, a3, s3
                  lhu        s6, -158(s10)
                  slt        a6, a0, s0
                  c.nop
                  c.xor      a2, s1
                  lb         a3, 15(s10)
                  sb         tp, -229(s10)
                  c.addi     t0, 11
                  srl        s3, s10, a3
                  sb         a4, -14(s10)
                  csrrs      t0, 0x340, s10
                  remu       s7, t5, t0
                  slt        s6, a6, tp
                  ori        t1, a5, 907
                  lbu        a7, -239(s10)
                  lbu        a5, -107(s10)
                  lb         s4, -71(s10)
                  andi       s8, s11, -409
                  lbu        s8, 95(s10)
                  csrrwi     t5, 0x340, 5
                  c.mv       s2, gp
                  remu       a0, s1, s10
                  sb         a5, 193(s10) #end riscv_load_store_rand_instr_stream_4
                  la         gp, region_1+15846 #start riscv_load_store_rand_instr_stream_2
                  addi       s8, a4, -216
                  and        t6, gp, a6
                  lb         t1, 136(gp)
                  sltu       s6, t4, s10
                  sb         s2, 218(gp)
                  sb         t6, 74(gp)
                  sh         s6, -184(gp)
                  lw         s6, -126(gp)
                  lh         s10, -86(gp)
                  lbu        s4, -226(gp)
                  srl        s8, a6, zero
                  lb         zero, -81(gp)
                  lhu        t1, -64(gp)
                  c.nop
                  lbu        s8, -235(gp)
                  lbu        t2, -175(gp)
                  lb         zero, 234(gp)
                  and        s8, ra, s9
                  lbu        t1, 103(gp)
                  c.xor      s0, a4
                  remu       t0, s8, s6
                  andi       s10, s11, 757
                  c.addi     s1, 3
                  mul        a4, a1, t2
                  sh         a1, 126(gp)
                  sw         a0, -18(gp)
                  sw         a0, -178(gp)
                  lh         s0, -244(gp) #end riscv_load_store_rand_instr_stream_2
                  la         s11, region_0+1543 #start load_store_instr_stream_0
                  la         a0, region_0+3901 #start load_store_instr_stream_1
                  lh         t0, -1225(a0)
                  sw         t5, -1201(a0)
                  sb         ra, 42(s11)
                  sb         sp, -1824(a0)
                  lb         zero, -102(a0)
                  sb         a6, -27(s11)
                  lbu        t5, -742(a0)
                  sb         ra, 36(s11)
                  lb         s4, -1085(a0)
                  sh         t1, -41(s11)
                  lhu        t4, -497(a0)
                  lb         s10, -551(a0)
                  lb         s8, 34(s11)
                  lb         s2, 49(s11)
                  sh         s11, -1185(a0)
                  lbu        s4, -1068(a0) #end load_store_instr_stream_1
                  lb         ra, 56(s11)
                  sh         a2, -57(s11) #end load_store_instr_stream_0
                  c.nop
                  csrrsi     a1, 0x340, 20
                  c.andi     a1, -1
                  c.mv       t6, s8
                  csrrsi     a0, 0x340, 11
                  c.andi     s1, -1
                  c.beqz     a2, 12f
                  mul        t0, t4, t0
                  c.add      tp, ra
                  c.nop
                  c.andi     a0, -1
                  c.srli     a2, 7
12:               sltu       a2, s7, a1
                  c.srli     s0, 21
                  csrrci     s11, 0x340, 22
                  csrrw      s4, 0x340, t1
                  c.li       tp, -1
                  c.sub      a3, a5
                  sra        s2, gp, t4
                  c.sub      a0, a1
                  c.bnez     s1, 32f
                  c.li       s6, -1
                  mulhsu     t2, s10, s1
                  sltu       s10, s1, a4
                  srli       t2, s7, 11
                  c.or       s0, a4
                  c.nop
                  add        s2, t1, a0
                  divu       s9, s1, s1
                  slli       t4, a2, 1
                  c.li       s9, 21
                  and        a4, t4, a4
32:               slti       s7, s0, 94
                  c.beqz     s1, 38f
                  c.and      a4, a4
                  c.bnez     a4, 51f
                  c.li       t0, 20
                  beq        t2, t1, 48f
38:               sltiu      s6, gp, -248
                  mulhu      s0, a2, a3
                  c.lui      s7, 9
                  mulhsu     a6, a1, s7
                  add        ra, s0, s1
                  mulh       a4, s9, s1
                  c.sub      a0, a4
                  xori       t0, s9, 781
                  or         s1, s8, a5
                  c.nop
48:               c.nop
                  csrrs      s8, 0x340, s4
                  c.sub      a5, a4
51:               c.add      t2, t4
                  addi       s7, t3, 868
                  slti       ra, t2, -249
                  sltiu      a3, a4, 680
                  fence
                  lui        a3, 714740
                  mul        a6, s3, s5
                  srai       s6, s5, 6
                  c.slli     gp, 27
                  c.srli     a1, 28
                  mulhsu     s7, a2, a1
                  beq        a4, a4, 82f
                  sll        a1, s0, gp
                  c.andi     s0, 17
                  nop
                  xori       s11, a7, -435
                  auipc      a3, 169599
                  auipc      a4, 1023507
                  slli       t2, sp, 3
                  xori       a5, sp, -504
                  add        t6, a4, s10
                  lui        s1, 574231
                  or         a1, tp, s2
                  and        a6, gp, s6
                  c.nop
                  bltu       s2, s5, 92f
                  c.li       t4, 12
                  c.or       s0, a2
                  nop
                  blt        sp, a2, 83f
                  csrrw      tp, 0x340, t2
82:               auipc      t1, 474165
83:               c.bnez     s0, 98f
                  c.or       a2, a4
                  bgeu       ra, a5, 92f
                  sra        tp, s6, a3
                  sub        zero, a7, s8
                  slti       a2, zero, -668
                  c.addi     t4, -1
                  c.or       a5, s1
                  c.bnez     a5, 104f
92:               or         t1, t0, s7
                  c.xor      a1, a2
                  c.srai     a0, 21
                  srl        s9, s8, s6
                  lui        a6, 604865
                  slli       t2, s4, 20
98:               addi       t1, a1, 1
                  csrrwi     a6, 0x340, 19
                  andi       t1, s0, -337
                  srli       t5, t1, 0
                  c.nop
                  csrrci     s4, 0x340, 23
104:              add        s6, t0, t3
                  auipc      s1, 709032
                  csrrwi     s10, 0x340, 0
                  xori       t5, s4, -841
                  c.srli     a0, 10
                  sll        s2, s10, s7
                  c.nop
                  divu       s11, s10, zero
                  lui        a6, 629267
                  slli       a3, t3, 28
                  c.mv       a0, t3
                  c.srai     a2, 31
                  csrrc      zero, 0x340, s7
                  c.add      gp, s6
                  bltu       tp, a3, 136f
                  csrrwi     s7, 0x340, 17
                  auipc      t0, 977382
                  and        ra, t0, a0
                  c.lui      s6, 18
                  sub        a0, a6, tp
                  c.lui      s8, 17
                  mulhu      t4, s6, s9
                  fence
                  c.addi     gp, 26
                  c.addi     t6, 3
                  nop
                  c.nop
                  srl        s11, s6, s9
                  sltu       s8, t0, ra
                  fence
                  csrrci     a0, 0x340, 17
                  andi       s8, s10, 463
136:              bgeu       a6, t3, 139f
                  c.bnez     s1, 139f
                  slti       t2, a4, -652
139:              sll        t0, a2, s2
                  mul        a2, tp, t6
                  lw         ra, 4(sp)
                  auipc      t4, 2628
                  addi       sp, sp, 36
                  mulh       s7, s10, sp
                  mulh       a6, t3, a4
424:              c.jr x1
sub_5:            bne        s7, t3, sub_5_stack_p
                  add        a5, t0, s2
                  divu       a4, t0, t5
                  srl        t0, a4, t5
sub_5_stack_p:    addi       sp, sp, -12
                  div        s3, s11, t2
                  addi       s2, t6, -571
                  xori       tp, t3, 843
                  slt        a2, ra, sp
                  fence.i
                  sw         ra, 4(sp)
                  sub        s6, zero, s7
                  and        s1, s9, s3
                  la         s2, region_2+1124 #start riscv_load_store_rand_instr_stream_7
                  lbu        t1, -189(s2)
                  lb         a0, 28(s2)
                  srl        t1, s10, a0
                  lb         a2, 147(s2)
                  lbu        ra, -5(s2)
                  lb         s9, 47(s2)
                  srai       t2, a7, 17
                  lbu        a4, -71(s2)
                  c.or       a5, a3
                  lh         zero, -108(s2)
                  c.add      s10, s2
                  sw         s7, -116(s2)
                  sw         t1, 204(s2)
                  csrrwi     a0, 0x340, 12
                  csrrwi     t6, 0x340, 27
                  lw         s9, -128(s2)
                  sb         s7, -237(s2)
                  c.lui      s6, 30
                  fence
                  sw         a2, 108(s2)
                  c.lui      s9, 9
                  lh         t1, -62(s2)
                  lb         s7, 59(s2)
                  lhu        s3, 208(s2)
                  sh         s10, -254(s2)
                  and        s11, gp, tp
                  auipc      a0, 967549
                  lb         ra, -33(s2)
                  sb         t2, 243(s2)
                  lh         a7, 6(s2)
                  sb         s2, -44(s2)
                  lh         a4, -54(s2)
                  lw         a4, -12(s2)
                  mulh       a0, s2, s4
                  sb         sp, -55(s2)
                  lh         s3, 48(s2)
                  csrrs      a3, 0x340, t5
                  lbu        s0, -168(s2)
                  lhu        s0, -58(s2)
                  lbu        s0, 107(s2) #end riscv_load_store_rand_instr_stream_7
                  la         t4, region_3+75 #start load_store_instr_stream_1
                  la         t2, region_0+3021 #start load_store_instr_stream_4
                  la         s10, region_2+3182 #start load_store_instr_stream_3
                  sw         s0, -11(t4)
                  lhu        s2, -213(t2)
                  la         t0, region_1+5377 #start load_store_instr_stream_2
                  lbu        a1, -8(s10)
                  lbu        tp, -1582(t0)
                  lbu        s2, -13(s10)
                  la         s7, region_4+2671 #start load_store_instr_stream_0
                  lb         a4, -304(t0)
                  lb         ra, -12(t4)
                  lb         a5, -100(t0)
                  lb         gp, 192(s7)
                  sb         s4, -16(t4)
                  lb         gp, 258(t0)
                  sb         zero, -54(s7)
                  sb         s11, 86(t2)
                  lhu        s9, 8(s10)
                  sb         s6, -8(s10)
                  sb         s2, 1(s10) #end load_store_instr_stream_3
                  sh         s10, -5(t4)
                  lh         s8, 123(t2)
                  sw         a5, 197(s7)
                  lb         s0, -178(s7)
                  lb         ra, 1332(t0)
                  lbu        s8, 14(t4)
                  lbu        s9, 1710(t0)
                  lbu        a6, 245(t2)
                  sb         s7, 1792(t0)
                  lb         s4, 1136(t0)
                  lh         a5, 5(t4)
                  lhu        zero, 613(t0)
                  lb         a2, 110(s7)
                  lbu        a1, 178(t2)
                  lb         zero, 524(t0) #end load_store_instr_stream_2
                  sb         s4, -10(t2) #end load_store_instr_stream_4
                  lbu        s11, -14(t4) #end load_store_instr_stream_1
                  lbu        t1, 156(s7)
                  lh         a2, -209(s7) #end load_store_instr_stream_0
                  la         s9, region_1+13029 #start load_store_instr_stream_0
                  la         t1, region_3+25 #start load_store_instr_stream_4
                  la         a5, region_2+4598 #start load_store_instr_stream_3
                  lbu        t5, 28(t1)
                  la         a1, region_4+3917 #start load_store_instr_stream_1
                  lb         a6, 64(a1)
                  la         s4, region_0+863 #start load_store_instr_stream_2
                  lbu        s0, 38(t1)
                  lbu        a3, 18(t1)
                  sb         t5, 1992(s4)
                  lbu        s1, -974(s9)
                  lhu        a0, 33(t1)
                  lb         s10, 1020(s4)
                  sb         ra, 163(a1)
                  sh         s10, 715(s4)
                  sb         a7, -24(t1)
                  sb         a2, 37(a5)
                  lb         s2, 26(a5)
                  sh         s5, 641(s4)
                  lb         a7, 112(s9)
                  lbu        t6, 1494(s9)
                  lbu        a7, -19(t1)
                  lw         s8, -50(a5)
                  lbu        s10, -16(t1)
                  lbu        t5, -156(a1)
                  sw         s7, 54(a5)
                  lbu        a4, -5(t1)
                  lh         t0, -135(a1)
                  lb         a6, 18(t1)
                  lh         s0, 1119(s4)
                  lh         t4, 1581(s9)
                  lbu        gp, -9(t1) #end load_store_instr_stream_4
                  lhu        s2, 343(s9)
                  sb         t2, -244(a1)
                  sw         t4, 18(a5) #end load_store_instr_stream_3
                  lb         s1, 106(a1) #end load_store_instr_stream_1
                  lb         s7, -108(s4) #end load_store_instr_stream_2
                  lhu        zero, -1159(s9) #end load_store_instr_stream_0
                  la         a2, region_2+6533 #start riscv_load_store_rand_instr_stream_12
                  andi       a0, t1, -149
                  c.lui      s9, 20
                  lui        s2, 172219
                  csrrc      a1, 0x340, a5
                  lbu        a0, -2018(a2)
                  lbu        s4, 1076(a2)
                  nop
                  lh         s0, -187(a2)
                  lbu        a1, -886(a2)
                  lb         s6, 1384(a2)
                  sra        s0, a2, ra
                  and        t6, a7, t1
                  sltiu      t6, s9, 74
                  lbu        t1, -996(a2)
                  slli       t4, a4, 15
                  div        s7, t2, s3
                  c.add      a3, gp
                  lbu        s4, -391(a2)
                  c.or       s1, a3
                  lb         s0, 1362(a2)
                  sh         s5, -897(a2)
                  slti       t0, sp, 158
                  mulhsu     s7, s3, s9
                  auipc      s0, 641953
                  c.andi     a3, 13
                  lb         s2, -1582(a2)
                  c.srli     a3, 12
                  mul        s4, s2, zero
                  add        t2, sp, t1
                  csrrci     t4, 0x340, 12
                  lbu        t6, 1493(a2)
                  c.lui      s3, 13
                  lb         a1, -160(a2)
                  and        t6, ra, ra
                  sltu       t2, zero, t1
                  c.xor      a4, a2
                  c.srai     a4, 21
                  sb         t5, -2048(a2)
                  lb         s7, -1051(a2) #end riscv_load_store_rand_instr_stream_12
                  la         t2, region_1+8296 #start riscv_load_store_rand_instr_stream_5
                  lbu        s11, 442(t2)
                  lbu        s9, 1783(t2)
                  sh         s1, -1488(t2)
                  lbu        t5, 1712(t2)
                  c.and      a3, a2
                  lui        a1, 150388
                  c.lui      ra, 5
                  lbu        s9, -3(t2)
                  sll        a2, tp, a6
                  lb         a0, -541(t2)
                  lb         t0, 1751(t2)
                  lb         s8, -1815(t2)
                  addi       a1, s3, -1010
                  sh         s11, -256(t2)
                  rem        a7, s2, a3
                  sh         s5, 1850(t2)
                  lb         t6, -496(t2)
                  sb         s8, 99(t2)
                  addi       s6, gp, -314
                  lb         s10, -2046(t2)
                  c.srai     a5, 6
                  srl        s11, tp, s7
                  c.xor      a3, a1
                  csrrs      t4, 0x340, t5
                  lbu        zero, -13(t2)
                  lb         s0, 1227(t2)
                  srli       zero, s3, 24
                  lb         ra, -203(t2)
                  sb         a3, 553(t2)
                  lbu        s8, -1411(t2)
                  sb         s4, -1368(t2)
                  c.mv       s7, t1
                  lb         t6, 1173(t2)
                  div        s8, t2, a3
                  lbu        s0, 431(t2)
                  sb         s2, -173(t2)
                  lhu        s6, 542(t2)
                  lb         s7, 311(t2) #end riscv_load_store_rand_instr_stream_5
                  la         s9, region_2+3139 #start riscv_load_store_rand_instr_stream_0
                  csrrwi     a7, 0x340, 6
                  slti       s3, s10, -439
                  lui        t6, 698273
                  csrrci     a7, 0x340, 28
                  lh         s6, -5(s9)
                  mulh       t2, s10, t3
                  c.nop
                  sh         t0, 31(s9)
                  csrrci     t0, 0x340, 28
                  lb         s11, 12(s9)
                  sra        s0, s9, a0
                  sb         t2, 45(s9)
                  slti       a7, a4, -528
                  c.or       a4, s1
                  addi       gp, a7, 106
                  c.and      a1, a5
                  lbu        ra, -48(s9)
                  c.and      a5, s0
                  c.slli     t4, 9
                  or         s2, a7, t1
                  c.or       a3, s0
                  sb         s2, -8(s9)
                  sb         s9, -10(s9)
                  c.nop
                  auipc      a5, 186260
                  c.srli     a1, 10
                  srli       a5, s1, 16
                  xor        zero, t5, zero
                  ori        a4, s7, 695
                  lb         t0, -26(s9)
                  sll        t6, t5, t6
                  csrrs      a0, 0x340, a3
                  c.and      a5, s0
                  srli       zero, sp, 22
                  sb         zero, 26(s9)
                  lbu        a6, -12(s9)
                  mulhsu     a3, a7, s6
                  sltu       s6, t2, t3
                  mulhsu     a0, a2, a4
                  lbu        s2, 26(s9) #end riscv_load_store_rand_instr_stream_0
                  la         a4, region_4+672 #start load_store_instr_stream_4
                  la         s3, region_4+1209 #start load_store_instr_stream_1
                  sh         s0, 16(a4)
                  la         t4, region_4+417 #start load_store_instr_stream_2
                  sb         ra, 13(a4)
                  la         s11, region_4+1528 #start load_store_instr_stream_0
                  la         a3, region_4+2831 #start load_store_instr_stream_3
                  lbu        s10, 11(a4)
                  lbu        s9, 163(s11)
                  lhu        a6, -8(a4)
                  lb         t5, -37(a3)
                  lh         t1, -19(s3)
                  lb         s7, 49(a3)
                  sb         a5, 52(s3)
                  lbu        t5, 13(a4)
                  lbu        t0, -5(s11)
                  sb         a2, 7(a3)
                  lh         s2, -206(s11)
                  lbu        zero, 28(t4)
                  lb         a0, -14(a3)
                  lbu        s8, 56(t4)
                  lb         tp, -9(a4)
                  sb         a4, 1(s3)
                  lh         a5, -43(s3)
                  lb         s1, 15(a4)
                  sh         zero, -218(s11)
                  lbu        a1, 28(t4)
                  sb         t2, 54(t4)
                  sh         zero, 5(t4)
                  sb         s11, -52(a3)
                  lbu        a1, -15(a4)
                  lb         t5, 6(s3) #end load_store_instr_stream_1
                  lw         a7, 0(a4)
                  lb         tp, 208(s11)
                  lbu        t6, 54(t4) #end load_store_instr_stream_2
                  lb         t6, 3(a4) #end load_store_instr_stream_4
                  lb         t0, 46(a3) #end load_store_instr_stream_3
                  sb         s3, 165(s11) #end load_store_instr_stream_0
                  la         s1, region_1+15379 #start riscv_load_store_rand_instr_stream_6
                  sh         s4, -243(s1)
                  divu       t4, s8, s3
                  lh         t6, -211(s1)
                  c.and      a5, a5
                  csrrw      s10, 0x340, s0
                  sb         t5, 22(s1)
                  lhu        a3, 241(s1)
                  mul        a4, s8, a3
                  lb         gp, 112(s1)
                  sb         s5, -196(s1)
                  slli       t4, gp, 5
                  srl        t1, s10, s2
                  lbu        s4, 4(s1)
                  addi       s0, s2, 187
                  c.srli     a3, 10
                  sw         t3, -235(s1)
                  lb         s10, -237(s1)
                  c.slli     s11, 23
                  sw         gp, 29(s1)
                  lui        s7, 517089
                  c.add      a3, a6
                  lbu        a3, -118(s1)
                  sb         t1, 234(s1)
                  div        s8, s9, s6
                  mulhsu     s4, s10, a3
                  sh         s7, -201(s1)
                  c.and      a3, a5
                  sb         s3, -101(s1)
                  rem        s10, s1, t0
                  c.addi     s0, -1
                  rem        t1, a2, t1
                  lhu        t2, 253(s1)
                  lbu        a5, 81(s1)
                  csrrci     t5, 0x340, 10
                  sb         a4, -2(s1)
                  sub        a3, s10, t4
                  lhu        a6, -97(s1)
                  ori        gp, s8, -160
                  sb         ra, 180(s1) #end riscv_load_store_rand_instr_stream_6
                  la         t0, region_3+138 #start riscv_load_store_rand_instr_stream_8
                  lb         a1, 235(t0)
                  c.nop
                  lb         s10, -11(t0)
                  lhu        a0, 234(t0)
                  lbu        a5, 52(t0)
                  srl        a3, a0, a3
                  lb         s10, 245(t0)
                  lbu        t4, -49(t0)
                  or         a6, t3, s10
                  c.srai     s1, 23
                  sb         t1, 183(t0)
                  lh         ra, 156(t0)
                  rem        a6, s7, s10
                  lhu        t2, -32(t0)
                  c.slli     a0, 1
                  c.mv       a3, a7
                  lb         a6, -111(t0)
                  ori        a6, t0, 949
                  c.add      a1, s2
                  lbu        s9, 107(t0)
                  sub        t6, t3, zero
                  sb         a6, 171(t0) #end riscv_load_store_rand_instr_stream_8
                  la         t1, region_4+2286 #start riscv_load_store_rand_instr_stream_4
                  ori        a5, gp, 477
                  lb         s3, 215(t1)
                  csrrsi     a4, 0x340, 17
                  lb         a0, 1201(t1)
                  xori       tp, a1, -836
                  sb         gp, 867(t1)
                  c.srai     a3, 21
                  c.sub      a5, a5
                  sb         tp, 468(t1)
                  nop
                  lh         s11, 112(t1)
                  add        s0, a4, s1
                  sb         t4, -1573(t1)
                  lbu        s9, 928(t1)
                  srli       s7, a4, 15
                  lh         s1, -470(t1)
                  c.srai     a1, 10
                  lb         s0, -2039(t1)
                  csrrs      s7, 0x340, a0
                  lh         s1, 758(t1)
                  lb         t4, -61(t1)
                  sb         s10, -1549(t1)
                  csrrs      a4, 0x340, s8
                  lb         s4, 532(t1)
                  lbu        a2, 727(t1)
                  lbu        s6, -1873(t1)
                  lbu        s1, -1563(t1) #end riscv_load_store_rand_instr_stream_4
                  la         t6, region_1+15335 #start riscv_load_store_rand_instr_stream_14
                  csrrs      zero, 0x340, a7
                  c.srli     a5, 30
                  sb         s2, -13(t6)
                  fence
                  c.srai     s0, 15
                  csrrw      a2, 0x340, zero
                  c.xor      a3, s1
                  csrrc      s4, 0x340, s2
                  c.mv       a0, t0
                  srl        zero, a6, s10
                  lbu        s8, -10(t6)
                  c.li       a2, 21
                  div        s10, a3, s7
                  csrrsi     t2, 0x340, 31
                  sb         t5, 3(t6)
                  srai       s6, s1, 9
                  csrrc      t0, 0x340, a2
                  srli       s4, t6, 27
                  csrrwi     s1, 0x340, 29
                  lb         t0, 2(t6)
                  lb         ra, 8(t6)
                  and        t1, s5, sp
                  lbu        s2, -12(t6)
                  sb         s11, -9(t6)
                  mulhu      s11, a5, s0
                  c.nop
                  ori        tp, gp, 782
                  c.xor      s1, a3
                  c.or       a4, s0
                  div        ra, a0, a4
                  sb         a1, 15(t6)
                  addi       a0, t1, -40
                  sub        a5, zero, ra
                  nop
                  sb         s6, -4(t6)
                  sb         s5, -4(t6)
                  auipc      s7, 32412
                  sb         a3, -6(t6) #end riscv_load_store_rand_instr_stream_14
                  la         a5, region_1+14430 #start load_store_instr_stream_1
                  sb         t4, 6(a5)
                  sb         t6, 1(a5)
                  la         a7, region_3+89 #start load_store_instr_stream_0
                  lh         s2, 56(a5)
                  lb         gp, 9(a5)
                  sb         t4, 10(a7)
                  lbu        s2, -6(a7)
                  sb         s10, 8(a5)
                  sb         s3, -12(a5)
                  lbu        s0, 13(a7)
                  lb         gp, 0(a7)
                  lbu        t2, -3(a5)
                  lb         t4, 37(a5)
                  sb         a7, -7(a7)
                  sh         sp, -24(a5) #end load_store_instr_stream_1
                  sb         a5, 10(a7) #end load_store_instr_stream_0
                  la         s11, region_3+414 #start load_store_instr_stream_1
                  la         s4, region_3+501 #start load_store_instr_stream_0
                  la         a7, region_3+39 #start load_store_instr_stream_2
                  la         s10, region_3+33 #start load_store_instr_stream_3
                  lbu        a1, -351(s11)
                  lh         t2, 251(s10)
                  lbu        s2, -130(s4)
                  lbu        s1, -18(s11)
                  lbu        t1, -271(s11)
                  sb         tp, 220(s10)
                  lb         s6, -32(a7)
                  lbu        ra, -263(s11)
                  lbu        a1, -303(s11)
                  lhu        s7, 405(a7)
                  lh         t1, -231(s4)
                  sb         t1, -29(s11)
                  lbu        t5, -113(s4)
                  lbu        s2, 394(a7)
                  lh         s2, 45(s10)
                  lb         t0, 47(s11)
                  lh         a6, 407(a7)
                  lb         s6, -140(s4)
                  lbu        gp, -6(s10)
                  lbu        a2, -4(s11)
                  lb         s0, -255(s4)
                  lb         t6, 246(s10) #end load_store_instr_stream_3
                  lb         s0, 85(a7)
                  lb         a4, 88(s11)
                  lb         s2, -38(s11) #end load_store_instr_stream_1
                  lb         ra, 110(a7) #end load_store_instr_stream_2
                  sb         s9, -76(s4)
                  lhu        gp, -145(s4)
                  lb         s2, -64(s4) #end load_store_instr_stream_0
                  la         gp, region_0+329 #start riscv_load_store_rand_instr_stream_2
                  srai       t4, a4, 6
                  mulh       s3, t1, s8
                  lbu        s3, 16(gp)
                  sb         s7, -13(gp)
                  csrrci     a4, 0x340, 4
                  sb         s8, -12(gp)
                  lb         s1, 11(gp)
                  nop
                  lw         s8, 7(gp)
                  sb         a0, 8(gp)
                  andi       zero, a4, -776
                  c.addi     s0, -1
                  sb         a1, -5(gp)
                  sb         a5, 14(gp)
                  c.lui      s11, 16
                  c.xor      a5, s0
                  sb         s1, 4(gp)
                  and        a5, a7, t0
                  lb         a3, -11(gp)
                  lb         a5, 0(gp)
                  lbu        zero, -7(gp)
                  sb         tp, -16(gp)
                  lbu        zero, 10(gp)
                  csrrc      a3, 0x340, t5
                  lbu        a4, -8(gp)
                  lbu        a0, 2(gp)
                  c.mv       tp, a6
                  lbu        a3, 6(gp)
                  c.srai     a2, 30
                  auipc      s4, 130445
                  sh         a7, -13(gp)
                  lhu        ra, -15(gp)
                  sub        a7, t3, t1
                  lb         t2, 12(gp)
                  lw         t1, 7(gp)
                  csrrwi     a4, 0x340, 27
                  fence
                  c.srli     a4, 4
                  mul        a0, s6, t5
                  csrrc      t2, 0x340, s3
                  mul        a4, s0, s2
                  lbu        t1, -16(gp)
                  mul        a6, s9, s4
                  lbu        t4, 8(gp)
                  xori       ra, t5, 627
                  lb         s0, -8(gp)
                  auipc      zero, 561818
                  lb         t2, -15(gp)
                  lhu        ra, -7(gp)
                  sll        s2, s8, s2
                  lbu        t0, -12(gp)
                  fence.i
                  lb         s10, -6(gp)
                  lhu        a1, -11(gp)
                  sll        t6, a0, t1
                  div        s6, tp, t2
                  c.or       a5, a0
                  c.srli     a2, 21
                  sw         zero, 15(gp) #end riscv_load_store_rand_instr_stream_2
                  la         s3, region_4+3188 #start riscv_load_store_rand_instr_stream_10
                  lbu        s4, -23(s3)
                  sb         a7, 94(s3)
                  lh         ra, -16(s3)
                  csrrw      a7, 0x340, t0
                  csrrs      a6, 0x340, a1
                  sh         a4, 226(s3)
                  lbu        t5, -197(s3)
                  srai       s7, a0, 26
                  fence.i
                  csrrs      a0, 0x340, sp
                  sb         s7, 51(s3)
                  sh         s7, -100(s3)
                  lb         a4, -107(s3)
                  lbu        s10, -121(s3)
                  csrrwi     ra, 0x340, 27
                  sh         a7, 210(s3)
                  sb         a0, 69(s3)
                  andi       a2, t5, 620
                  lh         gp, -218(s3)
                  lb         a6, -129(s3)
                  c.nop
                  lh         gp, 146(s3)
                  sb         a3, -239(s3)
                  mulhsu     s0, s10, s10
                  lw         t4, -68(s3)
                  csrrs      t1, 0x340, t1
                  divu       s0, s10, s10
                  csrrs      a3, 0x340, t6
                  ori        t1, t0, -563
                  lbu        a1, -157(s3)
                  lbu        a1, -126(s3)
                  lbu        a1, 164(s3)
                  div        s9, gp, t0
                  lbu        s1, 121(s3)
                  remu       s9, s10, s10
                  c.and      a4, s0
                  c.srli     a3, 30
                  nop
                  c.srli     a5, 23
                  lb         a6, 32(s3)
                  sll        t4, a1, a3
                  sb         a4, -85(s3)
                  sb         a1, 153(s3)
                  lb         a5, -102(s3)
                  andi       a7, s6, -580
                  csrrw      t4, 0x340, s10
                  sh         a2, 42(s3)
                  lh         s11, -210(s3)
                  sub        a2, zero, t2
                  lb         a3, -33(s3)
                  mulhu      s10, s11, tp
                  auipc      a4, 399425
                  srl        t6, sp, a2
                  srl        t4, s2, s7
                  lh         s4, 190(s3)
                  lb         t4, -225(s3) #end riscv_load_store_rand_instr_stream_10
                  la         a6, region_4+69 #start riscv_load_store_rand_instr_stream_13
                  lbu        a0, -28(a6)
                  c.andi     a0, -1
                  sb         a3, 51(a6)
                  lbu        s2, -13(a6)
                  remu       a1, s5, t6
                  lb         s9, -23(a6)
                  sh         s3, -15(a6)
                  lbu        s1, -48(a6)
                  c.xor      a3, a5
                  lbu        t5, -22(a6)
                  lb         t6, 16(a6)
                  c.srli     s0, 16
                  sll        s2, t6, t2
                  lb         s8, 9(a6)
                  lb         t0, 13(a6)
                  lb         t5, -6(a6)
                  sll        t4, s8, s10
                  c.srai     s1, 9
                  mul        a4, a6, t2
                  lbu        s2, 54(a6)
                  lb         t0, 54(a6)
                  c.add      s4, tp
                  lbu        a0, -8(a6)
                  c.lui      t5, 1
                  lbu        s11, 1(a6)
                  div        a3, a3, t1
                  mulh       s9, a0, t6
                  lbu        s4, 41(a6) #end riscv_load_store_rand_instr_stream_13
                  la         a0, region_4+1363 #start riscv_load_store_rand_instr_stream_3
                  slt        a4, a1, s8
                  lbu        a7, 13(a0)
                  lb         s11, -16(a0)
                  lhu        t4, -13(a0)
                  lh         s11, 11(a0)
                  csrrs      s2, 0x340, s4
                  addi       s2, t6, 139
                  lbu        s8, 9(a0)
                  lui        s2, 668570
                  xori       s2, a7, -284
                  csrrc      s8, 0x340, ra
                  rem        t5, a6, a5
                  lbu        a1, 0(a0)
                  mul        gp, t1, a2
                  sb         t2, 7(a0)
                  sra        t5, s10, gp
                  slli       s7, s3, 27
                  c.and      a4, a3
                  xor        ra, gp, sp
                  lb         s4, 2(a0)
                  sb         s3, -8(a0)
                  csrrci     a2, 0x340, 6
                  add        t2, s8, a3
                  xori       t6, t4, 930
                  lb         s2, -12(a0)
                  lb         a6, -16(a0)
                  lbu        s4, 13(a0)
                  sb         s9, -9(a0)
                  c.lui      t4, 13
                  lh         t6, -15(a0)
                  csrrc      gp, 0x340, a1
                  mulh       a5, s6, a3
                  sw         a0, 9(a0)
                  c.sub      s0, s1
                  and        s10, a1, s7
                  c.srli     a5, 28
                  c.addi     t4, 9
                  lw         t4, 1(a0)
                  mulhu      t0, s9, s2
                  lbu        s7, 4(a0)
                  mulhsu     gp, t6, a0
                  lb         a2, -12(a0) #end riscv_load_store_rand_instr_stream_3
                  la         a3, region_4+766 #start riscv_load_store_rand_instr_stream_9
                  c.mv       a5, s11
                  lb         t5, -13(a3)
                  rem        s4, a4, s7
                  lw         t4, -10(a3)
                  lw         s1, -10(a3)
                  sltu       t1, ra, s7
                  csrrsi     t0, 0x340, 31
                  sll        s3, a7, a1
                  xor        a4, sp, s9
                  nop
                  lb         s10, 7(a3)
                  sb         a4, -11(a3)
                  c.srli     a4, 12
                  divu       s8, t1, t5
                  lb         t5, -15(a3)
                  sh         s0, -6(a3)
                  c.sub      s1, s0
                  lb         zero, 13(a3)
                  andi       s3, a3, 389
                  c.li       s9, -1
                  lh         a1, 12(a3)
                  lbu        t0, 11(a3)
                  sltiu      zero, ra, -420
                  lbu        s6, 4(a3)
                  csrrwi     s2, 0x340, 10
                  lbu        s11, 7(a3) #end riscv_load_store_rand_instr_stream_9
                  la         a3, region_3+476 #start load_store_instr_stream_1
                  la         s10, region_3+292 #start load_store_instr_stream_3
                  la         t4, region_3+466 #start load_store_instr_stream_2
                  lb         s8, -131(s10)
                  sb         s6, -125(t4)
                  la         s4, region_3+44 #start load_store_instr_stream_0
                  sh         s11, -6(a3)
                  lbu        s11, 417(s4)
                  sh         sp, 210(s10)
                  lb         s7, -61(t4)
                  lh         a5, -152(t4)
                  lbu        tp, 32(a3)
                  lbu        tp, -87(t4)
                  sb         s4, 369(s4)
                  sh         s4, 2(a3)
                  sb         s9, 34(s10)
                  sb         a5, -121(t4)
                  lb         a7, 309(s4)
                  lb         s6, 154(s10)
                  lbu        s2, -11(a3)
                  lbu        t1, -67(t4)
                  lw         tp, -190(t4)
                  sb         s0, 446(s4)
                  lh         a5, 446(s4)
                  lbu        s6, 21(s10) #end load_store_instr_stream_3
                  sb         s6, -237(t4) #end load_store_instr_stream_2
                  lw         t1, -16(a3) #end load_store_instr_stream_1
                  lbu        a2, 5(s4) #end load_store_instr_stream_0
                  la         s9, region_0+2381 #start riscv_load_store_rand_instr_stream_1
                  or         t5, s2, s0
                  andi       t4, gp, -789
                  lhu        zero, 1675(s9)
                  sb         s11, -1563(s9)
                  sb         s11, -563(s9)
                  lui        a5, 688465
                  lbu        s11, -1646(s9)
                  sltu       s10, s4, t2
                  lbu        gp, -267(s9)
                  sub        s10, t1, a7
                  lbu        t4, -1532(s9)
                  ori        s6, a1, 8
                  lhu        t5, -1749(s9)
                  sb         sp, 856(s9)
                  c.xor      a3, a2
                  sra        a0, t6, a5
                  csrrwi     s4, 0x340, 22
                  lh         a1, 17(s9)
                  csrrs      t5, 0x340, gp
                  slt        a7, a7, s0
                  c.addi     a3, -1
                  sll        s6, s1, s1
                  lh         s11, -131(s9)
                  and        ra, sp, a5
                  add        t4, zero, t3
                  xori       gp, a5, -453
                  csrrc      a0, 0x340, a2
                  div        s10, a4, t3
                  c.xor      a0, a3
                  srl        t4, t0, s0
                  mulh       s10, t5, s4
                  c.mv       a6, s11
                  sb         s8, -8(s9)
                  csrrsi     a1, 0x340, 17
                  sb         s5, 1643(s9)
                  andi       a7, a6, 926
                  csrrc      s0, 0x340, s8
                  sb         t0, -1682(s9)
                  sh         s2, 1027(s9) #end riscv_load_store_rand_instr_stream_1
                  c.li       tp, -1
                  sltu       tp, a0, s0
                  lui        s8, 101689
                  c.andi     s1, 31
                  fence
                  srl        ra, s9, s2
                  remu       t2, s1, s4
                  mulh       t0, s10, a6
                  mul        zero, t5, t4
                  mul        a2, s0, s1
                  c.bnez     s1, 28f
                  ori        t1, t2, -502
                  beq        s3, s7, 17f
                  c.and      a4, s1
                  fence.i
                  sltu       a6, t1, s0
                  beq        a1, s4, 36f
17:               c.li       s6, -1
                  c.srli     a2, 18
                  c.nop
                  fence.i
                  bne        t3, a3, 36f
                  slti       a6, s2, 734
                  mulhu      s11, zero, a7
                  divu       a4, a2, s1
                  slt        s8, s11, s2
                  sub        s7, t1, a2
                  csrrc      a3, 0x340, t5
28:               auipc      s3, 834006
                  slt        t1, zero, tp
                  csrrci     a2, 0x340, 11
                  sll        ra, t2, a4
                  bge        t4, t4, 52f
                  csrrsi     ra, 0x340, 25
                  sltiu      s0, zero, -483
                  c.lui      t0, 2
36:               csrrc      t6, 0x340, t1
                  or         s6, s10, s2
                  bne        s8, t0, 39f
39:               c.add      a6, gp
                  or         s2, s4, tp
                  c.srai     a4, 5
                  c.beqz     a1, 57f
                  c.or       a4, a0
                  csrrc      s6, 0x340, s3
                  csrrwi     t4, 0x340, 3
                  mul        a6, t0, s0
                  csrrwi     s6, 0x340, 22
                  blt        a0, s11, 58f
                  c.add      s7, s8
                  c.bnez     a5, 52f
                  c.li       a0, 28
52:               add        t4, t4, s2
                  slti       s7, a3, 606
                  fence
                  c.and      a3, a4
                  beq        gp, a7, 66f
57:               fence.i
58:               andi       a4, zero, -75
                  srl        s9, a1, t1
                  fence.i
                  c.nop
                  lui        t5, 928414
                  c.add      a1, t6
                  c.add      t6, gp
                  srl        s4, a7, s7
66:               c.addi     s3, -1
                  c.nop
                  c.andi     s0, -1
                  divu       a3, t3, s11
                  fence.i
                  c.xor      a3, a2
                  lui        zero, 981231
                  c.mv       gp, t6
                  and        s8, s2, a4
                  sltu       t2, a6, t2
                  c.slli     s10, 28
                  sltu       a7, s2, t3
                  beq        a1, t4, 79f
79:               c.nop
                  c.mv       s11, s4
                  c.or       a2, a4
                  csrrc      gp, 0x340, a3
                  c.add      ra, a2
                  auipc      s10, 697657
                  c.xor      s0, a5
                  csrrci     s10, 0x340, 7
                  xori       a0, t2, -551
                  slti       t2, t5, -513
                  c.or       a3, a2
                  slti       s11, a2, 173
                  c.li       t5, 0
                  slti       t0, a0, -195
                  beq        s7, a4, 107f
                  bltu       ra, s9, 95f
95:               c.srli     a2, 12
                  csrrc      s11, 0x340, a3
                  c.or       s0, a2
                  c.and      a4, a5
                  mulhsu     s9, s1, zero
                  sra        a1, t2, t6
                  sltu       s9, a6, s9
                  c.xor      a3, a5
                  mulh       t4, s5, s2
                  fence
                  sll        s0, s9, t5
                  slli       s11, s11, 31
107:              c.xor      a2, s0
                  c.slli     a1, 16
                  ori        s2, a7, -802
                  bltu       a3, zero, 125f
                  fence.i
                  addi       a3, t0, -581
                  fence
                  c.beqz     a0, 128f
                  c.mv       s4, s3
                  c.li       t1, -1
                  and        a5, s4, t4
                  slti       s10, s8, 847
                  slti       t0, s2, 284
                  blt        s7, t3, 131f
                  c.sub      s0, a3
                  lui        a2, 725467
                  xor        s7, t4, s8
                  csrrw      a7, 0x340, s1
125:              c.addi     t4, -1
                  srl        s11, t2, t3
                  remu       a7, t0, s4
128:              xori       s10, s1, -439
                  auipc      a3, 2446
                  bge        t4, sp, 145f
131:              xor        a0, tp, s7
                  mulhsu     a2, s3, s4
                  c.beqz     s1, 153f
                  lui        a0, 32446
                  mul        t5, a0, t0
                  or         s7, s11, s8
                  sra        s6, s6, a2
                  andi       gp, s10, -839
                  csrrsi     a4, 0x340, 1
                  csrrw      s7, 0x340, a0
                  slti       t5, a0, 455
                  c.bnez     a0, 157f
                  fence
                  bge        s3, a5, 153f
145:              auipc      s8, 511405
                  srai       s1, s0, 24
                  addi       t0, a6, -632
                  srai       s9, a7, 15
                  csrrw      tp, 0x340, s0
                  c.sub      a3, a1
                  slti       a5, t6, -477
                  rem        s11, a4, t3
153:              c.andi     s0, 11
                  fence
                  fence
                  srl        t4, t0, s4
157:              fence.i
                  bne        s6, t5, 176f
                  csrrwi     gp, 0x340, 1
                  fence
                  mulhsu     t4, t0, s7
                  div        a2, a5, t0
                  mulhu      a2, s1, a2
                  csrrci     a3, 0x340, 29
                  and        a1, t1, s5
                  add        ra, ra, a4
                  and        gp, sp, gp
                  c.mv       t5, a4
                  sra        a0, s2, ra
                  la         s1, region_0+1725 #start riscv_load_store_rand_instr_stream_11
                  csrrwi     s8, 0x340, 21
                  lb         gp, -2(s1)
                  csrrwi     t1, 0x340, 30
                  remu       s3, t0, s1
                  csrrc      t5, 0x340, a2
                  mulh       zero, t6, s5
                  divu       s6, a6, tp
                  slli       s11, s7, 27
                  rem        s6, a6, s6
                  c.xor      a4, a2
                  c.sub      a5, a4
                  auipc      s8, 15241
                  xor        zero, a2, t5
                  sb         s4, 8(s1)
                  ori        gp, s3, -269
                  c.lui      s3, 29
                  csrrci     gp, 0x340, 0
                  lb         a5, -6(s1)
                  lbu        a2, 0(s1)
                  c.li       s4, -1
                  slli       s9, a5, 4
                  c.mv       s7, s0
                  fence
                  sb         a5, 11(s1)
                  sltiu      s0, a6, 260
                  fence
                  fence
                  sb         t0, 8(s1)
                  sltu       s2, sp, a2
                  lb         gp, 3(s1)
                  c.and      s0, s1
                  srai       s11, s11, 12
                  c.sub      a3, a3
                  fence
                  lhu        a7, 5(s1)
                  lui        a2, 526840
                  sll        s7, t3, s0
                  lh         s3, -15(s1)
                  lb         s6, -4(s1) #end riscv_load_store_rand_instr_stream_11
                  divu       zero, gp, s4
                  add        s1, zero, s9
                  csrrw      t4, 0x340, s11
                  andi       a4, s9, -491
                  fence.i
                  c.lui      a0, 25
176:              andi       tp, zero, 60
                  nop
                  xori       t2, s1, 41
                  rem        s7, t4, s5
                  remu       t1, a4, s1
                  mulhsu     zero, zero, s4
                  bltu       a2, s4, 193f
                  srli       a0, s3, 26
                  ori        s8, a4, -64
                  slli       a0, a2, 13
                  slli       s1, a2, 17
                  csrrsi     tp, 0x340, 5
                  sll        gp, t1, a4
                  csrrsi     s11, 0x340, 5
                  c.lui      a5, 14
                  c.slli     a1, 28
                  sub        a5, s1, s2
193:              ori        s8, a3, -985
                  addi       s9, t4, -595
                  divu       s3, t6, s5
                  c.add      t4, s4
                  srl        s7, s8, s10
                  c.srai     s1, 9
                  or         s1, s9, s9
                  c.beqz     s0, 202f
                  bne        s3, t2, 217f
202:              c.sub      a4, a1
                  c.andi     a0, 8
                  csrrsi     s9, 0x340, 4
                  or         a4, s7, t1
                  mul        zero, a3, a2
                  beq        ra, a3, 224f
                  c.nop
                  srai       t0, s0, 9
                  andi       s11, s6, 822
                  mulh       t4, t3, a4
                  c.bnez     a0, 218f
                  beq        s0, a0, 231f
                  ori        a1, a1, -422
                  addi       s1, t3, -547
                  sltu       a7, s0, ra
217:              ori        s11, a4, -103
218:              c.srai     a0, 18
                  and        s8, a4, a3
                  c.lui      s3, 6
                  c.addi     a4, 9
                  div        s11, a4, s7
                  srl        a0, s3, t0
224:              csrrw      s9, 0x340, a3
                  ori        s9, t6, 823
                  div        s4, a1, s3
                  auipc      s8, 1013819
                  c.xor      a1, a0
                  slti       s9, s10, -782
                  csrrs      s3, 0x340, gp
231:              c.lui      t6, 16
                  srai       tp, a0, 12
                  xor        a2, sp, s2
                  bne        a7, s9, 253f
                  srl        t1, t0, s5
                  c.srli     s1, 17
                  slti       t0, ra, 120
                  div        t0, s0, s9
                  blt        s0, a7, 258f
                  c.add      s3, t2
                  csrrw      t1, 0x340, t5
                  c.srli     a3, 6
                  lui        zero, 1018640
                  csrrsi     a7, 0x340, 19
                  mulh       a4, a2, sp
                  mul        a3, t3, s6
                  sltiu      a1, zero, 362
                  sub        a0, t1, s2
                  csrrci     t4, 0x340, 20
                  csrrci     a3, 0x340, 12
                  c.lui      s1, 8
                  or         a2, s10, s2
253:              c.add      gp, t4
                  csrrc      gp, 0x340, s4
                  bltu       s11, a3, 257f
                  csrrc      t1, 0x340, s2
257:              csrrs      a5, 0x340, s9
258:              srli       a6, s1, 29
                  c.slli     a3, 18
                  c.mv       a4, a0
                  fence
                  c.srli     a1, 8
                  remu       a0, a2, s6
                  blt        t5, s6, 282f
                  mulhsu     t1, ra, a1
                  div        t5, tp, a4
                  sltu       a5, t1, ra
                  auipc      ra, 348736
                  csrrsi     s10, 0x340, 11
                  mul        s8, a5, gp
                  andi       s8, a5, 272
                  blt        a3, s1, 274f
                  blt        s9, t2, 293f
274:              slt        t6, a5, t0
                  sub        t4, a5, t3
                  and        a3, a1, s9
                  sub        t2, t5, s8
                  c.mv       s10, s8
                  c.beqz     s0, 294f
                  add        ra, tp, gp
                  sra        s7, a0, s0
282:              c.srai     s1, 18
                  xori       t1, a0, 563
                  sra        t2, s2, gp
                  csrrwi     a2, 0x340, 4
                  andi       s2, t6, 634
                  andi       a0, s11, -607
                  bgeu       a6, a1, 303f
                  addi       a6, tp, -955
                  nop
                  beq        s9, a5, 306f
                  csrrc      s3, 0x340, a5
293:              slli       s6, s11, 11
294:              mul        tp, t5, a1
                  srli       t5, a6, 18
                  c.or       s0, a4
                  ori        gp, zero, 447
                  divu       a3, a2, a0
                  csrrc      a1, 0x340, s5
                  addi       t2, zero, -177
                  mulhu      a7, ra, t0
                  c.and      a1, s0
303:              sltu       s1, a6, gp
                  c.xor      a2, s1
                  slli       s8, t5, 21
306:              csrrwi     s0, 0x340, 21
                  c.bnez     a4, 321f
                  add        a5, t3, s1
                  bge        t6, a5, 323f
                  mulhu      s0, t0, gp
                  srai       a5, s7, 29
                  c.slli     t4, 16
                  c.slli     ra, 14
                  bne        s9, t1, 333f
                  mulhu      s9, sp, a5
                  c.sub      a4, a5
                  c.add      s6, s2
                  c.srai     a1, 2
                  csrrs      s9, 0x340, a5
                  mulh       s7, s10, s9
321:              beq        a6, t0, 341f
                  bge        a1, a4, 331f
323:              sra        a4, s6, a0
                  mul        s4, t1, a5
                  csrrs      t2, 0x340, s4
                  c.srai     a5, 28
                  sra        zero, a3, s4
                  srai       s2, a6, 5
                  bne        zero, s5, 344f
                  c.mv       t2, a1
331:              c.nop
                  xor        a4, a5, t5
333:              c.srli     a0, 24
                  c.slli     t1, 5
                  xor        a7, s0, a3
                  bne        s4, zero, 337f
337:              sra        s7, sp, a3
                  slt        a7, t1, s3
                  ori        t2, s9, -256
                  addi       gp, t2, -358
341:              c.slli     s11, 28
                  andi       s3, a4, 1006
                  lui        a6, 89776
344:              rem        s8, t6, s7
                  c.nop
                  xor        s9, t5, t0
                  lui        gp, 855987
                  sltiu      a6, a2, -743
                  csrrwi     gp, 0x340, 14
                  sll        s10, s7, zero
                  div        s7, s3, tp
                  slli       s11, a1, 18
                  and        s8, s6, a3
                  csrrci     t4, 0x340, 11
                  c.slli     t4, 16
                  csrrsi     a2, 0x340, 21
                  bge        gp, s0, 372f
                  csrrc      s0, 0x340, s3
                  csrrwi     s7, 0x340, 25
                  ori        t6, t5, -263
                  andi       tp, a3, 878
                  andi       s11, zero, -1006
                  sra        a2, t4, a1
                  add        s1, s7, s1
                  sra        s7, s8, ra
                  nop
                  c.mv       s11, t6
                  csrrci     a7, 0x340, 10
                  slt        s0, t5, s10
                  c.srai     s0, 30
                  sra        s8, sp, a0
372:              beq        s8, tp, 377f
                  slti       s8, s9, -913
                  csrrci     t4, 0x340, 4
                  c.bnez     a0, 377f
                  xor        s7, t5, s9
377:              and        a2, s1, t2
                  or         s0, s5, s3
                  c.andi     a1, 10
                  or         t2, a6, s0
                  lw         ra, 4(sp)
                  c.nop
                  fence
                  auipc      s10, 554322
                  addi       sp, sp, 12
                  mulhu      s7, s6, t4
                  csrrs      s2, 0x340, t0
                  sltu       a4, s5, s3
1183:             c.jr x1
sub_1:            nop
                  bgeu       tp, gp, sub_1_stack_p
                  c.and      s0, s1
                  csrrci     zero, 0x340, 24
                  c.addi     t5, 13
sub_1_stack_p:    addi       sp, sp, -52
                  fence
                  sw         ra, 4(sp)
                  c.add      t6, s11
                  c.sub      a3, a2
                  la         s0, region_2+6421 #start riscv_load_store_rand_instr_stream_47
                  xor        t1, a4, s1
                  lbu        t4, 14(s0)
                  sw         s10, 15(s0)
                  sh         a6, 5(s0)
                  lbu        tp, -13(s0)
                  lh         t2, 7(s0)
                  add        a1, s8, t2
                  c.mv       tp, s10
                  sb         a5, 14(s0)
                  sh         a7, -9(s0)
                  srl        t5, s7, gp
                  lb         a3, -11(s0)
                  lhu        s9, 1(s0)
                  lhu        tp, 13(s0)
                  c.srli     a4, 1
                  c.nop
                  lui        t4, 725300
                  lb         s7, -6(s0)
                  andi       s10, ra, 197
                  ori        a3, s11, 572
                  srl        s9, a6, t0
                  mulh       zero, a5, t0
                  csrrw      s7, 0x340, a4
                  sb         ra, -4(s0)
                  c.nop
                  c.xor      a1, a4
                  sb         s7, -3(s0)
                  lhu        s9, -11(s0)
                  lb         zero, 1(s0)
                  slti       s8, s2, -504
                  sb         s1, -11(s0)
                  mul        s4, gp, s4
                  c.andi     s1, -1
                  lbu        a1, 7(s0)
                  c.mv       s8, s2
                  sb         t5, -12(s0)
                  lw         t1, -1(s0)
                  lh         a6, 1(s0)
                  sb         s5, 16(s0)
                  slli       s9, s3, 9
                  xori       s6, a0, 377
                  auipc      t5, 184671
                  lbu        s7, 13(s0)
                  xor        zero, tp, t6
                  addi       s8, t6, 587
                  sb         s11, 4(s0)
                  lb         a4, -10(s0)
                  sh         t0, -9(s0)
                  sh         a6, 15(s0)
                  lh         a2, 1(s0)
                  c.mv       t0, t3
                  lb         zero, -12(s0)
                  c.mv       a1, s3
                  sltu       s1, a5, sp
                  c.xor      s1, a4
                  lh         s6, -15(s0)
                  mulhu      a1, a7, s9
                  lh         tp, -5(s0) #end riscv_load_store_rand_instr_stream_47
                  la         s2, region_2+4059 #start load_store_instr_stream_2
                  la         s3, region_4+751 #start load_store_instr_stream_1
                  la         a6, region_1+5520 #start load_store_instr_stream_0
                  la         t2, region_0+1946 #start load_store_instr_stream_3
                  lb         a2, -392(s3)
                  sh         s9, 1755(s3)
                  lb         t4, -2(t2)
                  lbu        s6, 43(a6)
                  lbu        s1, 1922(s3)
                  sb         gp, 3(t2)
                  sb         zero, 55(a6)
                  sb         a3, 0(t2)
                  lbu        zero, 42(a6)
                  lh         s8, 11(s2)
                  sb         a4, 4(s2)
                  sh         t2, 8(t2)
                  sw         t5, 1745(s3)
                  lbu        s7, 61(a6)
                  lbu        a1, 1981(s3)
                  lhu        a0, -2(t2)
                  lbu        t0, 214(s3)
                  sh         s11, -13(s2)
                  lb         t6, 6(s2)
                  lbu        t6, 46(a6)
                  lb         s11, 12(s2)
                  lb         s9, 7(a6)
                  lbu        a7, 9(t2)
                  sb         t4, 12(t2) #end load_store_instr_stream_3
                  sb         a1, 530(s3)
                  sb         t0, -14(s2)
                  sb         t0, -610(s3)
                  sb         t4, 12(s2) #end load_store_instr_stream_2
                  lb         t0, -57(a6)
                  sh         t3, 1103(s3) #end load_store_instr_stream_1
                  lb         s9, 3(a6) #end load_store_instr_stream_0
                  la         t0, region_0+2064 #start riscv_load_store_rand_instr_stream_51
                  xor        a3, s10, a0
                  lhu        s3, 284(t0)
                  lh         a3, -1072(t0)
                  c.addi     s1, -1
                  lb         s6, 1229(t0)
                  lhu        a6, -154(t0)
                  lb         s4, -1948(t0)
                  lbu        zero, -1667(t0)
                  sh         t5, -370(t0)
                  slli       s9, a6, 10
                  srli       s7, s6, 31
                  c.and      s0, a3
                  lbu        zero, 1110(t0)
                  lb         a3, 177(t0)
                  nop
                  lbu        s10, -875(t0)
                  auipc      tp, 225317
                  lbu        s7, 1081(t0)
                  lb         a5, 1867(t0)
                  sb         s11, 1091(t0)
                  sb         s5, -1793(t0)
                  lbu        s2, 1025(t0)
                  lbu        s10, 666(t0)
                  sh         s2, 1334(t0)
                  c.slli     ra, 13
                  mulhsu     s8, zero, s4
                  or         t5, s9, a7
                  sb         t3, 1912(t0)
                  sb         t1, -1743(t0)
                  sb         a6, -1755(t0)
                  sh         a1, -1018(t0)
                  lb         ra, -1807(t0)
                  lbu        s7, 1541(t0) #end riscv_load_store_rand_instr_stream_51
                  la         t0, region_1+1048 #start load_store_instr_stream_2
                  la         s6, region_1+15454 #start load_store_instr_stream_4
                  la         a3, region_1+11190 #start load_store_instr_stream_0
                  lw         a2, -22(s6)
                  la         s4, region_1+4912 #start load_store_instr_stream_3
                  la         s7, region_1+10216 #start load_store_instr_stream_1
                  sw         t4, -60(t0)
                  lbu        t2, 7(t0)
                  lbu        a4, 36(s7)
                  sb         a7, 812(a3)
                  sb         tp, -52(s6)
                  sh         gp, -54(s7)
                  sb         t4, 49(s6)
                  lb         t4, -15(t0)
                  sb         a3, 21(s6)
                  lb         t4, 62(t0)
                  sb         a6, -13(s4)
                  lb         t5, 27(s7)
                  sb         sp, 37(t0)
                  sb         t0, 1637(a3)
                  sw         s3, 6(s6)
                  lbu        t2, 5(s7)
                  lb         s11, 1(s4)
                  lb         s10, -64(t0)
                  lbu        s3, 3(s4)
                  sh         t4, -48(s7)
                  lw         s2, 16(t0)
                  lhu        zero, 30(t0)
                  lbu        s11, -55(t0)
                  sh         a2, -1350(a3)
                  sb         t1, 60(s6)
                  sh         s9, 12(s4)
                  lh         t4, 46(s6) #end load_store_instr_stream_4
                  lb         s0, -214(a3)
                  sb         a5, 39(s7)
                  lbu        a7, -11(s4) #end load_store_instr_stream_3
                  lhu        s11, 62(t0) #end load_store_instr_stream_2
                  sb         s5, 9(s7) #end load_store_instr_stream_1
                  lbu        s8, 463(a3) #end load_store_instr_stream_0
                  la         a0, region_3+363 #start riscv_load_store_rand_instr_stream_56
                  lbu        zero, -54(a0)
                  c.sub      a5, a0
                  csrrsi     a4, 0x340, 1
                  c.nop
                  div        a3, s6, sp
                  c.xor      a1, s1
                  div        s3, s5, s8
                  c.srai     a3, 26
                  c.xor      a1, a2
                  csrrw      s6, 0x340, a2
                  c.mv       t6, s2
                  addi       a6, t2, -241
                  lw         a7, -211(a0)
                  csrrwi     zero, 0x340, 6
                  add        t1, s5, ra
                  and        a2, s5, s11
                  rem        s6, a1, s7
                  lb         tp, -122(a0)
                  sltu       s2, a1, a4
                  sb         a0, -160(a0)
                  sra        zero, s4, s5
                  csrrwi     t5, 0x340, 24
                  sub        tp, a0, s1
                  c.addi     s6, -1
                  remu       a5, s3, s6
                  c.lui      s11, 8
                  srl        s4, s3, sp
                  sltiu      zero, t4, -659
                  csrrwi     s3, 0x340, 28
                  c.slli     s1, 14
                  and        a7, s1, zero
                  sb         s7, -240(a0)
                  div        s11, a2, gp
                  lb         t4, -317(a0)
                  sb         s0, -274(a0)
                  lhu        t0, 59(a0)
                  c.mv       a2, a1
                  c.mv       s1, s6
                  lh         t5, -265(a0)
                  lb         s7, -16(a0) #end riscv_load_store_rand_instr_stream_56
                  la         a2, region_2+1803 #start load_store_instr_stream_3
                  la         t5, region_2+6557 #start load_store_instr_stream_1
                  la         s2, region_2+207 #start load_store_instr_stream_2
                  lhu        a7, 29(a2)
                  la         s3, region_2+6292 #start load_store_instr_stream_0
                  lb         s9, -11(t5)
                  lh         s1, 14(s3)
                  sb         s8, 7(a2)
                  sh         a3, -10(s3)
                  lh         tp, -21(a2)
                  sb         s4, -15(s2)
                  lbu        a5, 23(a2)
                  sb         tp, 11(t5)
                  sb         a3, 44(a2)
                  lb         s1, 0(s3)
                  lbu        t0, -28(s2)
                  sh         t5, 14(s3)
                  lhu        s7, -61(s2)
                  lbu        zero, -60(s2)
                  lh         s7, 47(a2)
                  lh         tp, -10(s3)
                  lhu        a1, -1(t5)
                  lbu        s10, 16(t5)
                  lb         zero, -10(t5)
                  sb         a6, -49(a2) #end load_store_instr_stream_3
                  lw         s8, 12(s3)
                  lbu        a3, -3(s3)
                  lb         tp, 10(t5) #end load_store_instr_stream_1
                  lb         zero, -7(s3)
                  lbu        zero, 63(s2) #end load_store_instr_stream_2
                  lbu        s11, -4(s3)
                  lb         a4, 4(s3) #end load_store_instr_stream_0
                  la         t2, region_0+445 #start load_store_instr_stream_2
                  la         s4, region_0+135 #start load_store_instr_stream_0
                  la         t5, region_0+2129 #start load_store_instr_stream_1
                  lb         t1, -16(s4)
                  sb         s5, -5(t2)
                  lbu        tp, -64(s4)
                  sb         sp, -15(t2)
                  lbu        s6, -16(s4)
                  lbu        s10, 9(t2)
                  lbu        ra, -6(t5)
                  lbu        a7, 2(s4)
                  sb         a2, 4(t2)
                  sb         t3, 16(t5)
                  sh         a6, 7(t2)
                  lbu        s2, -4(t2)
                  lbu        t6, 6(t5)
                  sb         t0, -2(t5)
                  sb         a0, 58(s4)
                  sw         a7, -39(s4)
                  sh         s9, -15(t2) #end load_store_instr_stream_2
                  lb         a5, 12(t5)
                  lhu        s8, 13(t5) #end load_store_instr_stream_1
                  sh         s10, 63(s4)
                  lw         a2, -51(s4) #end load_store_instr_stream_0
                  la         s6, region_0+3361 #start load_store_instr_stream_0
                  la         s8, region_2+7996 #start load_store_instr_stream_1
                  la         t2, region_3+130 #start load_store_instr_stream_2
                  lbu        t0, 11(s8)
                  sb         a7, 14(s6)
                  lbu        a2, 2(s8)
                  lb         a6, 12(t2)
                  lbu        a6, -12(s6)
                  sb         t4, 6(s6)
                  sh         gp, 13(s6)
                  sb         s1, -22(s8)
                  lh         t1, 10(t2)
                  lb         a7, 15(s6)
                  sb         s3, -23(s8)
                  lh         zero, 9(s6)
                  sh         s8, -12(s8)
                  lw         a5, -12(s8)
                  sb         a3, 12(s6)
                  sb         tp, 5(t2)
                  lb         s7, 26(s8)
                  lbu        s0, -7(s8)
                  lb         s4, 1(t2)
                  sb         t2, 16(s6)
                  lb         s4, 11(s6)
                  sb         s8, 8(t2)
                  lb         a0, -5(t2) #end load_store_instr_stream_2
                  sb         a2, 45(s8) #end load_store_instr_stream_1
                  sb         t5, 7(s6) #end load_store_instr_stream_0
                  la         t0, region_2+7146 #start riscv_load_store_rand_instr_stream_57
                  xori       s0, a4, 668
                  lh         t2, -1156(t0)
                  lbu        a4, 366(t0)
                  srl        s11, t1, s3
                  lh         a0, -1150(t0)
                  lhu        a2, 718(t0)
                  c.and      s0, a0
                  srl        a6, a7, a5
                  sw         a3, -238(t0)
                  sb         s0, 213(t0)
                  sb         a0, -827(t0)
                  sb         s0, 991(t0)
                  lb         s0, -835(t0)
                  sb         t5, 1005(t0)
                  lw         zero, -794(t0)
                  lhu        a6, 102(t0)
                  lb         a5, -1437(t0)
                  c.add      s10, ra
                  lb         s0, 651(t0)
                  sb         s2, -294(t0)
                  c.and      a0, a0
                  csrrw      s11, 0x340, a1
                  lbu        t4, 136(t0)
                  sb         s11, -401(t0)
                  andi       s7, s6, -905
                  sub        a5, t4, a2
                  sb         s8, -1389(t0)
                  sb         t4, -1905(t0)
                  sra        t6, a1, a0
                  sb         ra, 524(t0)
                  lbu        t2, 693(t0)
                  mulh       s7, t4, s4
                  c.addi     tp, 25
                  sh         sp, -1200(t0)
                  sb         a3, 648(t0)
                  sh         sp, -262(t0)
                  div        t4, a7, t6
                  divu       s6, a2, tp
                  sb         s6, -1639(t0)
                  sh         ra, -432(t0)
                  sb         a0, -1479(t0) #end riscv_load_store_rand_instr_stream_57
                  la         s4, region_2+1835 #start load_store_instr_stream_0
                  lbu        tp, 26(s4)
                  la         a5, region_2+7619 #start load_store_instr_stream_1
                  lbu        s8, 34(a5)
                  sb         s11, 6(a5)
                  lbu        t0, 0(s4)
                  sw         a5, 17(a5)
                  lb         t6, -18(s4)
                  lb         gp, 18(s4)
                  lb         s3, -188(a5)
                  sb         a2, -50(s4)
                  lbu        a0, 55(a5)
                  lb         a1, 170(a5)
                  lb         s9, -177(a5)
                  lh         a1, -221(a5)
                  lb         s3, -1(s4)
                  lb         t5, 29(s4)
                  lbu        s8, -213(a5) #end load_store_instr_stream_1
                  sh         s3, 3(s4) #end load_store_instr_stream_0
                  la         t4, region_0+1430 #start load_store_instr_stream_3
                  la         a3, region_0+2101 #start load_store_instr_stream_1
                  sh         a2, -750(t4)
                  la         a7, region_0+364 #start load_store_instr_stream_2
                  lbu        s8, -50(a7)
                  la         a4, region_0+1587 #start load_store_instr_stream_0
                  lbu        a2, 1353(t4)
                  lhu        t5, 5(a3)
                  lb         t2, 249(a7)
                  lbu        s10, 0(a3)
                  lb         s6, 16(a4)
                  lb         a0, -15(a3)
                  lb         t2, -17(a7)
                  lw         s9, -9(a3)
                  lb         s8, 14(a3)
                  lb         s7, 16(a4)
                  lb         s9, -15(a3)
                  sh         s7, 9(a4)
                  sb         a2, 215(a7)
                  sb         gp, -10(a4)
                  lbu        s3, 1207(t4)
                  lw         s1, -1(a3)
                  sb         s4, 5(a4)
                  lb         s9, -121(a7)
                  lhu        ra, -238(t4)
                  lh         s4, 9(a4)
                  lbu        a5, 15(a7)
                  lbu        s0, 14(a3)
                  sh         a0, -704(t4)
                  lbu        s8, 10(a4)
                  lb         s9, -150(a7)
                  lb         a6, 1481(t4)
                  sb         a0, -1(a3)
                  lhu        zero, -230(a7) #end load_store_instr_stream_2
                  lhu        s11, -1(a3) #end load_store_instr_stream_1
                  sh         ra, -618(t4) #end load_store_instr_stream_3
                  lbu        s3, 16(a4) #end load_store_instr_stream_0
                  la         a7, region_1+4321 #start riscv_load_store_rand_instr_stream_1
                  sh         t3, -137(a7)
                  sub        zero, s1, sp
                  c.lui      s0, 25
                  c.nop
                  sb         s0, 236(a7)
                  sra        ra, a6, a3
                  c.add      s4, s9
                  lhu        s1, -75(a7)
                  lb         s3, 206(a7)
                  div        s6, s8, s4
                  csrrwi     s1, 0x340, 29
                  lh         t5, 137(a7)
                  lb         s4, -256(a7)
                  and        zero, t2, a2
                  c.slli     s2, 11
                  c.add      s9, sp
                  sltu       a0, sp, zero
                  and        a4, s8, t4
                  c.mv       t2, a7
                  sll        s2, s10, t5
                  srl        s9, a5, t2
                  fence.i
                  slti       a1, a7, -908
                  c.li       a2, 9
                  sub        a5, t0, a0
                  lb         t2, -128(a7)
                  lbu        a2, 255(a7)
                  lbu        s2, 205(a7)
                  slli       a6, s4, 17
                  divu       s4, t5, sp
                  lw         s11, -153(a7)
                  sltiu      s10, s11, -509
                  lbu        t4, 190(a7) #end riscv_load_store_rand_instr_stream_1
                  la         t4, region_0+4047 #start riscv_load_store_rand_instr_stream_25
                  c.nop
                  lui        s11, 805152
                  slt        t2, s9, ra
                  lbu        gp, 16(t4)
                  csrrs      s9, 0x340, zero
                  auipc      s11, 591766
                  c.srli     s0, 27
                  sub        a3, sp, a7
                  lbu        a1, 0(t4)
                  sb         s10, -6(t4)
                  csrrci     t6, 0x340, 31
                  csrrsi     gp, 0x340, 13
                  xori       t2, s5, 218
                  lb         s6, 3(t4)
                  auipc      a6, 189821
                  lhu        a4, -5(t4)
                  fence
                  sh         t0, -13(t4)
                  lb         t0, 12(t4)
                  c.sub      s1, a3
                  c.mv       a7, s8
                  nop
                  sb         s10, 6(t4)
                  sh         s6, -13(t4)
                  lb         ra, -11(t4)
                  lui        t6, 604970
                  c.addi     s8, 18
                  sb         tp, -8(t4)
                  lui        t6, 801286
                  lb         a1, -2(t4)
                  sltu       tp, s0, t1
                  andi       a6, a0, 293
                  mulhsu     ra, s8, tp
                  c.li       a3, 12
                  srli       s2, s6, 17
                  sub        a2, s11, a2
                  c.or       a3, s0
                  sll        a1, s8, t4
                  add        a7, s3, s11
                  lb         s3, -12(t4)
                  lb         a7, -1(t4)
                  csrrci     s2, 0x340, 25
                  slti       s1, a5, -697
                  sb         s1, -16(t4) #end riscv_load_store_rand_instr_stream_25
                  la         s1, region_2+3443 #start riscv_load_store_rand_instr_stream_4
                  lhu        s7, -413(s1)
                  c.add      t0, s11
                  lh         gp, -489(s1)
                  lbu        t5, 1194(s1)
                  or         s7, s9, t6
                  nop
                  lhu        t2, -897(s1)
                  lw         a6, 857(s1)
                  sb         t2, 1445(s1)
                  fence
                  sb         tp, 734(s1)
                  divu       s2, s8, s11
                  lb         a3, 639(s1)
                  lhu        s6, 1263(s1)
                  c.add      a3, a6
                  lb         s10, -722(s1)
                  lhu        t2, 1621(s1)
                  sb         t1, -18(s1)
                  lb         gp, 1683(s1)
                  c.or       a1, a1
                  sb         s5, 30(s1)
                  lb         a2, -76(s1)
                  srl        a1, t5, sp
                  sh         s9, -1981(s1)
                  lb         s9, 480(s1)
                  sltiu      s2, s11, 499
                  sb         a1, 798(s1)
                  lbu        a5, -258(s1)
                  sh         s10, -691(s1)
                  sh         a0, 1135(s1)
                  sltiu      a6, s5, 111
                  lb         s9, -974(s1)
                  sb         t6, 352(s1)
                  lb         a1, 184(s1)
                  lh         t1, -1845(s1)
                  lhu        s9, 1127(s1)
                  lb         t6, -88(s1)
                  sub        t5, s0, t3
                  lbu        s10, -1319(s1)
                  lbu        a1, 1687(s1)
                  sb         s8, 169(s1) #end riscv_load_store_rand_instr_stream_4
                  la         s8, region_2+1723 #start load_store_instr_stream_1
                  lbu        zero, 16(s8)
                  la         s1, region_2+1827 #start load_store_instr_stream_3
                  la         tp, region_2+7432 #start load_store_instr_stream_2
                  lh         a4, -15(s8)
                  la         t2, region_2+2031 #start load_store_instr_stream_0
                  sb         a0, -1145(tp)
                  lbu        s11, 1994(s1)
                  sw         a1, 1093(s1)
                  lb         s7, 1733(t2)
                  lbu        ra, 794(s1)
                  lb         t6, 2(s8)
                  sb         s8, 645(tp)
                  lhu        t5, 9(s8)
                  sb         a0, 1744(t2)
                  sb         a0, 7(s8)
                  lbu        zero, -1105(tp)
                  lb         a5, 1290(t2)
                  lb         zero, -112(s1)
                  lbu        zero, -612(s1)
                  lw         zero, -1072(tp)
                  lb         a2, 15(s8)
                  sh         s5, -96(tp)
                  sw         s5, 13(s8) #end load_store_instr_stream_1
                  sh         a0, 608(tp)
                  sb         a0, -1502(t2)
                  lbu        gp, 2010(s1)
                  sw         s10, -1611(t2)
                  sb         s10, -550(t2)
                  lbu        zero, -415(t2)
                  sb         s9, -1177(tp) #end load_store_instr_stream_2
                  lhu        a5, -1327(t2)
                  sb         ra, 387(s1) #end load_store_instr_stream_3
                  sb         tp, 959(t2) #end load_store_instr_stream_0
                  la         t1, region_3+154 #start load_store_instr_stream_1
                  la         t5, region_1+1940 #start load_store_instr_stream_3
                  la         tp, region_2+7217 #start load_store_instr_stream_2
                  sb         a2, -202(tp)
                  sh         sp, -8(t5)
                  lhu        a7, -16(t1)
                  la         s9, region_4+2382 #start load_store_instr_stream_0
                  lbu        s10, -130(tp)
                  lhu        s6, 8(t5)
                  lw         a7, -77(tp)
                  lhu        s0, 31(tp)
                  sh         t4, 10(t5)
                  sb         s9, 98(t1)
                  lhu        t0, 39(tp)
                  sb         s0, 8(t5)
                  lb         gp, -9(t5)
                  sb         s5, 2(s9)
                  lbu        a1, -44(s9)
                  sb         s3, 32(tp)
                  lhu        s2, -111(tp)
                  lh         s4, 158(t1)
                  sh         t6, 16(t5)
                  lhu        t2, 116(t1)
                  sb         s9, -95(t1)
                  sb         t6, -13(t5)
                  lhu        t2, 16(s9)
                  lb         a7, 109(t1)
                  lbu        s0, 160(tp)
                  sb         s8, 67(t1)
                  lh         a1, 54(s9)
                  sb         t5, -13(t5)
                  lb         zero, 51(t1)
                  sb         t2, -226(tp)
                  sh         s9, 2(t5) #end load_store_instr_stream_3
                  sh         t2, 30(s9)
                  sb         s5, -74(tp) #end load_store_instr_stream_2
                  sb         s9, 217(t1) #end load_store_instr_stream_1
                  sw         s4, 14(s9)
                  sh         a3, -10(s9) #end load_store_instr_stream_0
                  la         a0, region_3+344 #start riscv_load_store_rand_instr_stream_65
                  sb         tp, -25(a0)
                  lb         ra, 31(a0)
                  lbu        a7, -13(a0)
                  sb         gp, 38(a0)
                  lb         a5, -11(a0)
                  lb         a4, -41(a0)
                  sltu       a4, s10, t6
                  lb         zero, 44(a0)
                  sw         a1, -16(a0)
                  lbu        s10, -53(a0)
                  remu       s11, s11, t4
                  xori       s8, s0, 195
                  slt        t1, a6, s2
                  sb         s0, 32(a0)
                  c.lui      s6, 16
                  auipc      a4, 574228
                  slli       zero, s4, 23
                  fence
                  c.srai     s0, 8
                  sll        s10, t0, s11
                  sw         s3, -56(a0)
                  nop
                  csrrw      s1, 0x340, t3
                  c.slli     gp, 2
                  sb         s11, 13(a0)
                  lbu        t4, -50(a0)
                  csrrci     a6, 0x340, 3
                  lbu        a2, -27(a0)
                  csrrs      a2, 0x340, s3
                  lh         a6, -36(a0)
                  c.and      s0, a4
                  lw         a3, -4(a0)
                  lhu        s11, 10(a0)
                  sb         a7, 51(a0)
                  and        tp, a3, s8
                  c.nop
                  sb         t1, -62(a0)
                  lbu        t4, -52(a0)
                  add        t4, tp, sp
                  lbu        t4, 55(a0)
                  lb         s8, -21(a0)
                  csrrs      s10, 0x340, s2
                  c.or       a1, s1
                  nop
                  or         s11, a5, t1
                  sb         a1, 47(a0)
                  c.srai     s1, 11
                  sw         t3, 28(a0) #end riscv_load_store_rand_instr_stream_65
                  la         s8, region_2+1035 #start load_store_instr_stream_0
                  la         gp, region_1+2686 #start load_store_instr_stream_1
                  la         t0, region_3+353 #start load_store_instr_stream_2
                  lb         s2, 1506(s8)
                  lb         a1, -10(t0)
                  sh         s1, -27(t0)
                  sh         a7, 16(gp)
                  lb         t1, 1326(s8)
                  lhu        s10, 1103(s8)
                  sb         tp, -11(gp)
                  lhu        s3, -113(t0)
                  lbu        s0, -5(gp)
                  lw         t4, 6(gp)
                  sh         a0, 33(t0)
                  sb         t0, 808(s8)
                  sb         t2, -42(t0)
                  lhu        t6, 0(gp)
                  lb         a5, -173(t0)
                  sb         a4, 1143(s8)
                  sb         s1, 15(gp)
                  sh         sp, 59(t0)
                  lhu        s3, 153(t0) #end load_store_instr_stream_2
                  lbu        t6, -3(gp) #end load_store_instr_stream_1
                  lb         s10, 1621(s8)
                  lhu        t5, 1803(s8) #end load_store_instr_stream_0
                  la         s0, region_2+5426 #start load_store_instr_stream_2
                  la         s10, region_2+1383 #start load_store_instr_stream_1
                  lbu        a6, -149(s0)
                  la         a1, region_2+3640 #start load_store_instr_stream_4
                  lh         t2, -13(s10)
                  sb         t5, -10(s10)
                  la         gp, region_2+2815 #start load_store_instr_stream_0
                  la         s2, region_2+3758 #start load_store_instr_stream_3
                  lb         s3, -6(s10)
                  lb         t0, 133(s2)
                  lbu        a0, 14(s10)
                  lbu        s1, 8(s10)
                  sb         s8, -139(s0)
                  lw         s6, 246(s0)
                  lhu        a7, 1567(gp)
                  lb         s3, -1811(a1)
                  sb         sp, 422(a1)
                  lhu        s11, -148(s0)
                  sh         s5, 7(s10)
                  lhu        s6, 720(a1)
                  lhu        t2, -244(s0)
                  lb         t1, 1733(gp)
                  lbu        a5, 781(gp)
                  lbu        tp, -4(s10)
                  lhu        zero, 625(gp)
                  sb         a7, 16(s10)
                  sb         a2, -253(s2)
                  sh         s10, -3(s10)
                  lhu        s8, -52(s2)
                  lbu        a5, -36(s2)
                  sb         t2, 1931(a1)
                  lbu        s1, 1495(a1)
                  sb         a6, -218(gp)
                  lb         a6, 650(gp)
                  sb         s11, -14(s2)
                  lbu        a3, 238(s0) #end load_store_instr_stream_2
                  lbu        a5, 71(s2) #end load_store_instr_stream_3
                  lbu        s8, -2(s10) #end load_store_instr_stream_1
                  lb         t6, 94(gp)
                  lb         s4, -283(a1) #end load_store_instr_stream_4
                  lbu        a4, 422(gp)
                  sh         tp, 301(gp) #end load_store_instr_stream_0
                  la         t0, region_4+3637 #start riscv_load_store_rand_instr_stream_45
                  sb         ra, -23(t0)
                  sltiu      tp, a2, -59
                  xor        s9, s4, s2
                  mul        a0, s4, tp
                  sltu       t2, gp, t5
                  sll        s0, s2, s11
                  sb         s11, 33(t0)
                  slti       t1, a7, 402
                  lb         a4, 7(t0)
                  c.li       t1, 17
                  lh         s11, 15(t0)
                  fence.i
                  add        zero, s2, t2
                  c.and      a1, a5
                  lbu        tp, 40(t0)
                  fence
                  lh         a1, -41(t0)
                  c.xor      s1, s0
                  lb         s9, -23(t0)
                  sb         s8, 57(t0)
                  c.and      a1, s0
                  c.and      a2, a1
                  lbu        a3, -46(t0)
                  sltu       s2, t4, s8
                  mul        s7, ra, s4
                  fence
                  lbu        a1, 2(t0)
                  sltu       zero, s6, s0
                  lb         a0, 28(t0)
                  sb         a7, 16(t0)
                  lbu        ra, 34(t0)
                  andi       a2, s2, 473
                  slli       s2, t6, 4
                  sb         a4, 48(t0)
                  nop
                  lui        s10, 562292
                  sw         zero, -25(t0)
                  lbu        s9, 64(t0)
                  sltiu      s4, ra, -819
                  slt        a2, tp, s10
                  lbu        s4, -44(t0)
                  slti       s11, a1, -344
                  fence
                  lbu        s10, -50(t0)
                  sh         s4, 39(t0) #end riscv_load_store_rand_instr_stream_45
                  la         s8, region_1+7294 #start riscv_load_store_rand_instr_stream_34
                  lhu        s10, -42(s8)
                  c.nop
                  auipc      t0, 99271
                  lh         t1, -44(s8)
                  mul        a1, s0, t6
                  c.add      t2, t5
                  lbu        s4, 62(s8)
                  lb         s10, -64(s8)
                  srli       t0, t1, 9
                  sll        s4, a4, s0
                  lhu        s9, -2(s8)
                  andi       t5, a4, 473
                  sb         s0, -40(s8)
                  mul        t4, a0, sp
                  csrrs      t0, 0x340, s4
                  sb         a7, 35(s8)
                  sb         a4, -37(s8)
                  c.nop
                  lb         s2, 12(s8)
                  c.addi     s4, -1
                  c.add      gp, t2
                  csrrci     a6, 0x340, 28
                  lbu        a6, -53(s8)
                  lbu        s7, 45(s8)
                  c.andi     s1, -1
                  slti       a0, a0, 964
                  sb         zero, -33(s8)
                  lb         a3, 23(s8) #end riscv_load_store_rand_instr_stream_34
                  la         s10, region_4+1141 #start riscv_load_store_rand_instr_stream_29
                  lbu        s9, -293(s10)
                  lb         t0, -1045(s10)
                  sltu       s8, tp, a0
                  mul        a0, a6, s8
                  sb         zero, 1422(s10)
                  srli       s8, s7, 24
                  lbu        gp, 1657(s10)
                  mulhu      t6, s9, t3
                  c.nop
                  add        s4, s10, s4
                  lbu        a7, 848(s10)
                  sb         a5, 356(s10)
                  slti       t1, s2, -426
                  or         s9, gp, a1
                  lbu        t0, 2009(s10)
                  lb         t4, -82(s10)
                  c.add      s2, s8
                  lb         s6, 1142(s10)
                  lb         ra, -504(s10)
                  sb         t0, -693(s10)
                  csrrs      s9, 0x340, ra
                  xor        t0, s9, a0
                  lui        a6, 237325
                  slt        t5, a5, s8
                  andi       a0, sp, 317
                  csrrwi     t0, 0x340, 31
                  lbu        t6, 1020(s10)
                  sh         t2, 2001(s10)
                  lb         t5, 1972(s10)
                  lbu        a3, 1705(s10)
                  sb         t3, -780(s10) #end riscv_load_store_rand_instr_stream_29
                  la         s8, region_2+6445 #start riscv_load_store_rand_instr_stream_37
                  sb         t2, -16(s8)
                  csrrw      a2, 0x340, s11
                  csrrw      s9, 0x340, s0
                  lb         a4, 2(s8)
                  sb         a5, 16(s8)
                  srai       t6, s3, 27
                  lbu        s9, -2(s8)
                  csrrci     s9, 0x340, 18
                  xor        a0, a6, s8
                  srai       t6, a1, 22
                  csrrwi     s3, 0x340, 5
                  csrrw      s9, 0x340, a2
                  sb         a3, 7(s8)
                  sll        s10, a2, sp
                  nop
                  sub        t2, a2, s3
                  lbu        ra, 14(s8)
                  lb         a6, -9(s8)
                  c.addi     a7, -1
                  lbu        a0, 10(s8)
                  lb         s10, -4(s8)
                  lh         a5, -13(s8) #end riscv_load_store_rand_instr_stream_37
                  la         s4, region_4+1474 #start riscv_load_store_rand_instr_stream_15
                  slt        t2, s3, zero
                  c.add      a7, s11
                  c.mv       s6, s8
                  c.sub      a5, a2
                  lhu        a0, 216(s4)
                  add        t5, sp, t2
                  sb         t1, 141(s4)
                  csrrs      a7, 0x340, a4
                  lbu        s2, 113(s4)
                  lbu        s6, -55(s4)
                  c.add      s2, s8
                  sb         tp, -77(s4)
                  lb         t6, 67(s4)
                  sh         t0, -64(s4)
                  sltu       t6, s9, t5
                  slti       t5, ra, 673
                  sb         s10, -160(s4)
                  c.and      a5, a2
                  csrrs      a0, 0x340, a1
                  auipc      s11, 979339
                  add        s3, t3, gp
                  sb         s0, 68(s4)
                  nop
                  xor        s2, tp, s1
                  sb         a6, 169(s4)
                  sb         sp, -103(s4)
                  sltu       a4, ra, s8
                  c.sub      a3, a2
                  c.addi     a4, 10
                  sb         a5, 69(s4)
                  c.lui      s1, 5
                  lbu        a0, -196(s4)
                  c.or       a1, a0
                  slti       a0, s0, 115
                  sb         tp, 75(s4)
                  sub        a0, sp, a0
                  fence.i
                  ori        s9, s5, -952
                  lb         t5, 241(s4) #end riscv_load_store_rand_instr_stream_15
                  la         t6, region_4+686 #start riscv_load_store_rand_instr_stream_55
                  sb         s2, 37(t6)
                  lhu        a5, -36(t6)
                  c.srai     a0, 20
                  c.nop
                  mul        t5, s4, s9
                  c.or       a5, a5
                  c.srli     a2, 14
                  c.srli     a1, 15
                  c.slli     t5, 2
                  lbu        a7, -49(t6)
                  lbu        t4, 9(t6)
                  xori       a5, a0, -483
                  lbu        t1, -6(t6)
                  sb         a2, -64(t6)
                  fence
                  sb         s11, -28(t6)
                  mulhu      s4, tp, gp
                  c.srli     a4, 15
                  div        t0, t3, t5
                  c.srli     a2, 24
                  divu       a7, a1, a7
                  c.addi     s4, -1
                  lhu        s1, -54(t6)
                  mulhu      t0, t1, t3
                  nop
                  lbu        t1, -24(t6)
                  mulhsu     a4, t0, s8
                  csrrs      tp, 0x340, s3
                  sb         s7, 31(t6)
                  div        tp, a5, s7
                  srli       s7, t2, 9
                  lbu        s7, -27(t6)
                  srl        ra, a3, s5
                  nop
                  c.srli     a3, 2
                  sll        s9, s2, a6
                  sw         a6, 50(t6)
                  csrrs      s10, 0x340, t5
                  lb         tp, 50(t6)
                  c.add      s0, s1
                  lhu        a1, 50(t6) #end riscv_load_store_rand_instr_stream_55
                  la         t4, region_3+414 #start load_store_instr_stream_3
                  lbu        a5, -4(t4)
                  la         s4, region_3+300 #start load_store_instr_stream_2
                  la         s1, region_3+123 #start load_store_instr_stream_1
                  la         t6, region_3+374 #start load_store_instr_stream_0
                  la         t1, region_3+95 #start load_store_instr_stream_4
                  lh         s9, -246(s4)
                  lbu        gp, 3(s1)
                  lw         s3, 1(t1)
                  sb         gp, -9(t1)
                  lb         a3, -5(t6)
                  lb         a5, -9(t4)
                  sb         a2, -7(t1)
                  sh         s0, -2(s4)
                  lhu        t0, -4(s4)
                  lb         a6, 2(s4)
                  lb         a1, -4(t4)
                  lb         a3, 97(s4)
                  lbu        a6, 4(t6)
                  lh         s10, 51(s1)
                  lb         s11, 16(t4)
                  lb         a1, 9(t6)
                  lb         t0, 119(s4)
                  lb         a2, -29(s1)
                  sb         t0, 153(s4)
                  lhu        s8, -12(t6)
                  lb         s0, 11(t6)
                  sh         ra, -4(t4)
                  sb         t4, 54(s1)
                  sh         t2, -176(s4)
                  sh         tp, -8(t6)
                  sb         tp, -11(t4)
                  sb         tp, 7(t4)
                  lb         s10, -15(t6)
                  lbu        t5, 29(s1)
                  lbu        gp, 1(t6)
                  sw         t5, -10(t6)
                  lbu        t2, -5(t1)
                  lb         a3, 48(s1)
                  lb         a1, 40(s1) #end load_store_instr_stream_1
                  lb         s3, 8(t1) #end load_store_instr_stream_4
                  lbu        a3, -13(t4)
                  lb         zero, 99(s4) #end load_store_instr_stream_2
                  lb         a0, -4(t4) #end load_store_instr_stream_3
                  sb         t5, 11(t6) #end load_store_instr_stream_0
                  la         t5, region_2+4765 #start riscv_load_store_rand_instr_stream_2
                  xor        s4, s6, t0
                  srai       gp, a4, 21
                  sub        a4, s6, ra
                  lb         s11, -11(t5)
                  sb         t0, 6(t5)
                  lbu        zero, 10(t5)
                  auipc      a7, 1006505
                  lb         s11, 9(t5)
                  lbu        a0, 4(t5)
                  csrrsi     a1, 0x340, 10
                  sltiu      t1, t1, 866
                  lui        a3, 943062
                  c.nop
                  slt        t4, a3, s4
                  andi       s1, t3, 506
                  lbu        a4, -16(t5)
                  lhu        t2, 1(t5)
                  c.sub      a1, a3
                  fence.i
                  csrrwi     zero, 0x340, 24
                  sb         ra, 16(t5)
                  xor        s2, gp, ra
                  lbu        ra, 5(t5)
                  lbu        s11, 5(t5) #end riscv_load_store_rand_instr_stream_2
                  la         a3, region_4+2465 #start riscv_load_store_rand_instr_stream_61
                  c.add      s2, t2
                  sb         s10, -1242(a3)
                  lbu        s10, 306(a3)
                  csrrc      tp, 0x340, s5
                  sw         a0, 1111(a3)
                  slti       t6, t0, 220
                  c.li       a7, 1
                  sb         s2, -360(a3)
                  sb         t3, -12(a3)
                  lb         s2, 402(a3)
                  c.and      s0, s0
                  lb         a2, -1902(a3)
                  csrrs      s11, 0x340, t3
                  sh         s4, -867(a3)
                  slt        s9, s7, t4
                  lhu        s10, 1467(a3)
                  lw         t6, 339(a3)
                  or         a7, a6, a2
                  lbu        a0, -1266(a3)
                  sh         a7, -1147(a3)
                  sb         s3, 1476(a3)
                  lb         s11, 120(a3)
                  sw         s11, -261(a3)
                  andi       s10, a3, -511
                  c.srai     a1, 27
                  lw         a0, -1561(a3)
                  c.nop
                  sb         s0, 444(a3)
                  lbu        s9, -1719(a3)
                  lb         a1, -1759(a3)
                  lb         s0, 80(a3)
                  c.li       a0, -1
                  lbu        a5, -1554(a3)
                  slli       s6, s2, 30
                  sb         a1, 793(a3)
                  lbu        zero, 192(a3)
                  div        t4, s6, s8
                  mul        a1, t6, s10
                  sb         s11, -1234(a3)
                  sb         a5, 728(a3)
                  sub        s10, t0, t1
                  sb         t3, 804(a3)
                  xori       a4, s10, 29
                  sb         s10, -1203(a3)
                  c.nop
                  lbu        t5, -962(a3)
                  fence.i
                  auipc      a0, 638400
                  ori        a7, gp, -80
                  csrrsi     s7, 0x340, 21
                  sw         s1, -305(a3)
                  lhu        a5, -1643(a3) #end riscv_load_store_rand_instr_stream_61
                  la         a7, region_2+5812 #start riscv_load_store_rand_instr_stream_9
                  lb         s9, 37(a7)
                  addi       t1, s1, 372
                  c.mv       a1, s1
                  c.mv       s3, s5
                  sb         s0, 39(a7)
                  sltu       s10, t2, gp
                  lbu        t6, 56(a7)
                  lhu        a2, -36(a7)
                  lbu        a1, -54(a7)
                  xor        t0, s2, a2
                  lh         s6, -24(a7)
                  divu       t6, a2, s2
                  lh         a0, 64(a7)
                  lbu        s0, -47(a7)
                  div        s1, t2, a0
                  addi       ra, a3, 909
                  sltiu      a2, s4, -872
                  lw         t5, -44(a7)
                  lbu        a6, -5(a7)
                  sb         gp, 55(a7)
                  sh         a2, 58(a7)
                  lb         s3, 1(a7)
                  mul        a6, s11, s2
                  sll        a5, s5, ra
                  lbu        s10, 18(a7)
                  sltu       s9, t5, a3
                  lb         a2, 52(a7)
                  mul        a5, s3, s10
                  sb         s11, 19(a7)
                  lbu        t6, -50(a7)
                  lbu        a4, 5(a7)
                  lb         s0, 60(a7)
                  lbu        a6, 64(a7)
                  nop
                  lbu        a4, 9(a7)
                  div        t5, t5, a7
                  lbu        s8, 25(a7)
                  lbu        s1, 23(a7)
                  nop
                  c.srli     a1, 11
                  lb         t5, -31(a7)
                  sb         a6, -35(a7)
                  c.lui      t4, 28
                  lbu        s6, -29(a7) #end riscv_load_store_rand_instr_stream_9
                  la         ra, region_1+2245 #start load_store_instr_stream_1
                  la         a7, region_1+14282 #start load_store_instr_stream_2
                  la         t6, region_1+6255 #start load_store_instr_stream_4
                  lb         s10, 12(ra)
                  lh         s4, -1918(a7)
                  la         t2, region_1+10786 #start load_store_instr_stream_3
                  sb         s10, -1052(t6)
                  sh         a3, -1(ra)
                  lh         s9, 2(t2)
                  lb         s7, 374(t6)
                  sb         s11, -464(a7)
                  sw         sp, 58(t2)
                  la         a0, region_1+3714 #start load_store_instr_stream_0
                  lw         s0, 1309(t6)
                  lbu        tp, 1011(a0)
                  lb         a6, -820(t6)
                  lbu        tp, 16(t2)
                  lb         a4, -1489(a0)
                  sb         s4, -602(a0)
                  sb         s4, 4(t2)
                  sb         ra, 29(t2)
                  sb         t0, 1419(a0)
                  lbu        s1, -1263(t6)
                  sh         a6, 62(t2)
                  lbu        a2, 2011(a0)
                  lb         tp, -1359(a0)
                  lb         t1, 991(a0)
                  sh         s2, -565(t6)
                  lbu        a5, -10(ra)
                  lw         a4, -26(t2)
                  lb         s4, 835(a0)
                  sw         a3, -18(t2) #end load_store_instr_stream_3
                  lhu        s10, 1767(t6)
                  lhu        a4, 1354(a7)
                  sb         t1, -1(ra)
                  sb         a7, -1740(t6)
                  sb         s8, -1897(a7)
                  sb         t2, 1715(a0)
                  sb         s9, 15(ra) #end load_store_instr_stream_1
                  lbu        a3, -1180(t6)
                  lbu        t4, 1177(a7) #end load_store_instr_stream_2
                  lbu        s1, -1388(t6) #end load_store_instr_stream_4
                  lbu        t0, -951(a0) #end load_store_instr_stream_0
                  la         a3, region_1+2919 #start load_store_instr_stream_1
                  la         s10, region_2+2850 #start load_store_instr_stream_2
                  sh         s11, -25(a3)
                  lh         s7, 456(s10)
                  la         t4, region_3+54 #start load_store_instr_stream_0
                  sw         gp, 18(t4)
                  lw         s0, 26(t4)
                  lhu        t1, -1980(s10)
                  sb         a5, 28(a3)
                  lbu        s6, 937(s10)
                  lbu        a2, -30(a3)
                  lw         s1, 1854(s10)
                  lb         s7, -44(a3)
                  sh         t2, -1492(s10)
                  lbu        t2, -1949(s10)
                  sb         t6, 49(s10)
                  lbu        s4, 36(t4)
                  sw         s8, 57(a3)
                  lbu        tp, 30(t4)
                  lbu        ra, -815(s10)
                  lb         gp, 28(a3)
                  sb         gp, 19(t4)
                  lbu        a4, 32(a3)
                  lb         t5, 61(a3) #end load_store_instr_stream_1
                  lbu        t6, 45(s10) #end load_store_instr_stream_2
                  sb         t5, 15(t4) #end load_store_instr_stream_0
                  la         s0, region_1+12569 #start riscv_load_store_rand_instr_stream_12
                  srai       t6, zero, 22
                  sb         sp, 2032(s0)
                  sb         s9, -1809(s0)
                  lbu        a2, -1661(s0)
                  div        a3, s2, s11
                  slti       a0, s10, 481
                  mulhu      zero, s5, t0
                  sh         a4, 173(s0)
                  sb         zero, 1152(s0)
                  sb         a6, 1443(s0)
                  lbu        a0, 1670(s0)
                  sh         s9, -1181(s0)
                  fence
                  lui        s9, 924623
                  lh         t0, 1921(s0)
                  lhu        zero, -1837(s0)
                  lb         s11, -1528(s0)
                  lb         a5, 457(s0)
                  xor        t0, t2, s7
                  lb         a0, -799(s0)
                  lbu        s8, 484(s0)
                  c.li       t0, 29
                  lhu        a2, -433(s0)
                  lh         a6, 1315(s0)
                  lbu        gp, -1119(s0)
                  lbu        s11, -976(s0)
                  sb         s7, 82(s0)
                  lbu        a4, 1370(s0)
                  c.nop
                  lbu        t1, 1004(s0)
                  c.li       a2, -1
                  sb         t1, -740(s0)
                  lbu        s4, 1988(s0)
                  lbu        t4, 1852(s0)
                  lbu        s2, 673(s0)
                  sra        t5, s7, a2
                  lb         a6, -623(s0)
                  ori        t2, a5, -805
                  csrrs      a6, 0x340, t2
                  sh         a4, 867(s0)
                  lhu        s3, -1505(s0)
                  lbu        a6, -1792(s0) #end riscv_load_store_rand_instr_stream_12
                  la         a0, region_2+3934 #start riscv_load_store_rand_instr_stream_54
                  c.or       a5, s0
                  c.li       s6, -1
                  sub        t0, t5, sp
                  sh         s11, -2000(a0)
                  sb         a3, -549(a0)
                  lb         t4, -408(a0)
                  lbu        a5, 74(a0)
                  lw         a7, 702(a0)
                  add        a6, t4, t5
                  sh         s9, -312(a0)
                  mul        s2, s3, s0
                  lbu        a3, 1298(a0)
                  addi       s4, a5, -1020
                  lb         s9, -503(a0)
                  mulhu      a7, s11, t5
                  lh         a4, -244(a0)
                  addi       a3, s6, 191
                  lb         s11, -1489(a0)
                  sh         s2, -1250(a0)
                  srl        s11, s6, s10
                  lb         s4, 1150(a0)
                  ori        s3, a7, 90
                  sub        a4, a2, sp
                  sra        a2, a6, a2
                  sb         s4, 563(a0)
                  divu       s8, gp, t5
                  nop
                  slli       zero, t2, 27
                  lb         t5, -1394(a0)
                  mulhu      t6, s7, ra
                  lhu        s9, -380(a0)
                  lbu        s10, 495(a0)
                  c.andi     a3, -1
                  c.nop
                  lhu        gp, 528(a0)
                  lb         ra, -183(a0)
                  sb         s10, -271(a0)
                  lhu        t1, -1960(a0)
                  xori       s1, a1, 425
                  lb         s2, -1649(a0) #end riscv_load_store_rand_instr_stream_54
                  la         s0, region_2+6475 #start riscv_load_store_rand_instr_stream_20
                  lbu        s7, -15(s0)
                  c.and      a5, a4
                  lbu        a7, 12(s0)
                  lb         s9, -13(s0)
                  lbu        t5, -3(s0)
                  sb         s5, -12(s0)
                  lb         t2, -8(s0)
                  lbu        gp, -14(s0)
                  lh         s3, -5(s0)
                  c.sub      s1, s0
                  c.mv       a6, gp
                  sb         a5, -15(s0)
                  sb         s6, -8(s0)
                  add        ra, a4, sp
                  lb         s7, 12(s0)
                  csrrs      s1, 0x340, a0
                  lb         gp, -15(s0)
                  remu       s1, a3, s10
                  csrrc      zero, 0x340, zero
                  lbu        gp, 9(s0)
                  lb         s4, 8(s0)
                  lbu        ra, -16(s0)
                  sw         a1, 5(s0)
                  xori       a3, gp, -268
                  lb         s2, 15(s0)
                  xor        s11, s3, s8
                  or         s1, zero, t0
                  lb         s4, -12(s0)
                  sh         s9, -9(s0) #end riscv_load_store_rand_instr_stream_20
                  la         t4, region_0+1169 #start riscv_load_store_rand_instr_stream_52
                  csrrsi     s7, 0x340, 28
                  lb         s9, -10(t4)
                  sb         a1, -11(t4)
                  c.slli     a1, 5
                  lb         s0, 11(t4)
                  lbu        tp, -15(t4)
                  c.add      a2, s7
                  lb         s1, -14(t4)
                  csrrci     a5, 0x340, 11
                  rem        s10, tp, s9
                  lh         a3, 13(t4)
                  sra        s10, s11, ra
                  sra        s7, s6, s2
                  lh         t0, 15(t4)
                  add        a0, tp, s6
                  lb         zero, -10(t4)
                  c.andi     a5, -1
                  c.and      s1, a2
                  sb         s2, 14(t4)
                  sh         s3, 9(t4) #end riscv_load_store_rand_instr_stream_52
                  la         s8, region_2+8080 #start riscv_load_store_rand_instr_stream_18
                  fence.i
                  csrrw      t2, 0x340, t4
                  c.or       s0, a2
                  c.slli     t1, 21
                  sh         zero, -138(s8)
                  srl        s0, sp, s3
                  sub        t2, t4, a6
                  mul        zero, s5, s11
                  sltu       t1, s11, s6
                  sh         s4, -1078(s8)
                  mulhu      t0, a1, s0
                  lh         t6, -1060(s8)
                  sh         a5, -664(s8)
                  lbu        s7, -617(s8)
                  srl        t2, s7, s4
                  nop
                  xor        tp, a6, t4
                  lbu        t0, -549(s8)
                  fence.i
                  csrrs      gp, 0x340, a6
                  sb         s2, -424(s8)
                  sb         t0, -1418(s8)
                  c.lui      t1, 18
                  c.li       ra, -1
                  lbu        a7, -251(s8)
                  lbu        t1, -523(s8)
                  sb         ra, -495(s8)
                  lb         s7, -1479(s8)
                  srl        zero, a7, s11
                  lhu        t5, -1960(s8)
                  xori       a1, s8, -270
                  lbu        t1, -1479(s8)
                  lh         a5, -520(s8)
                  sb         s7, -1417(s8)
                  ori        t1, t0, 135
                  lhu        ra, -1526(s8)
                  sb         t0, -937(s8)
                  c.lui      t5, 11
                  lbu        t6, -1985(s8)
                  addi       t2, s8, -937
                  c.li       a5, 13
                  lb         s10, -1150(s8)
                  lb         s7, -527(s8)
                  and        a2, tp, s4
                  ori        a2, tp, 608
                  csrrci     a1, 0x340, 17
                  sh         a6, -650(s8)
                  srl        s10, s5, a7
                  c.xor      a4, a4
                  lbu        s0, -1346(s8)
                  srai       a4, s1, 12
                  sb         s1, -810(s8)
                  lb         s3, -616(s8) #end riscv_load_store_rand_instr_stream_18
                  la         a0, region_2+5800 #start riscv_load_store_rand_instr_stream_30
                  lb         gp, -1251(a0)
                  sw         t0, 1848(a0)
                  lw         a2, -1936(a0)
                  andi       s11, sp, 781
                  c.and      a2, a0
                  sb         t6, 1324(a0)
                  srli       tp, gp, 10
                  srli       s10, ra, 3
                  c.add      s11, s5
                  c.xor      a3, s0
                  lbu        t6, -1585(a0)
                  c.srai     a5, 27
                  c.xor      a3, a0
                  csrrs      s1, 0x340, zero
                  csrrs      t2, 0x340, s11
                  csrrw      a1, 0x340, t2
                  slli       s2, sp, 14
                  c.or       a3, a0
                  lw         t1, 1576(a0)
                  c.li       tp, -1
                  mulh       s7, s5, a1
                  fence.i
                  c.nop
                  c.sub      s0, s0
                  c.addi     a2, 9
                  add        s8, t2, t5
                  lhu        gp, 358(a0)
                  lhu        gp, -772(a0)
                  lb         s4, 1227(a0)
                  remu       a6, a3, t6
                  remu       t5, s4, a0
                  sh         a4, 1186(a0)
                  lb         s11, -19(a0)
                  c.mv       tp, t4
                  sb         a0, 1318(a0) #end riscv_load_store_rand_instr_stream_30
                  la         t6, region_3+210 #start load_store_instr_stream_1
                  lb         s11, -53(t6)
                  la         s8, region_3+374 #start load_store_instr_stream_3
                  la         t4, region_3+25 #start load_store_instr_stream_0
                  lbu        t0, -9(t6)
                  la         a6, region_3+419 #start load_store_instr_stream_2
                  lw         t2, -46(t6)
                  lhu        gp, -256(s8)
                  lb         s11, 6(a6)
                  lw         ra, 83(t4)
                  lb         s4, -275(s8)
                  lbu        s10, 16(a6)
                  lbu        gp, -11(a6)
                  lb         t2, 121(s8)
                  lhu        t2, -9(a6)
                  lb         tp, 101(t4)
                  lbu        gp, 121(s8)
                  sb         s4, 10(t6)
                  lw         a4, -11(a6)
                  sb         s11, -19(t6)
                  sb         t5, -16(s8)
                  sh         t1, 173(t4)
                  lbu        s2, -24(t6)
                  sh         gp, -9(a6)
                  sb         t0, 36(t6)
                  sb         s5, -13(a6)
                  sb         a2, 398(t4)
                  lb         t2, -33(t6)
                  lbu        ra, -369(s8)
                  lbu        t5, 1(a6) #end load_store_instr_stream_2
                  lb         a4, 74(s8)
                  lb         gp, 26(t6) #end load_store_instr_stream_1
                  lw         a5, -198(s8) #end load_store_instr_stream_3
                  lb         a7, 330(t4)
                  lbu        zero, 451(t4)
                  lb         s10, 11(t4)
                  lbu        s6, 438(t4) #end load_store_instr_stream_0
                  la         a1, region_1+3716 #start load_store_instr_stream_0
                  la         a5, region_1+7898 #start load_store_instr_stream_2
                  la         s1, region_1+8901 #start load_store_instr_stream_3
                  lb         a3, 1325(a1)
                  lb         a6, -1694(s1)
                  sb         t6, 1341(a5)
                  sb         t6, -733(s1)
                  sh         a2, -38(a5)
                  lb         t4, 1974(s1)
                  la         s4, region_1+5920 #start load_store_instr_stream_1
                  lbu        s2, 5(s4)
                  lb         t1, -1624(a5)
                  lh         s0, -1188(a1)
                  lbu        s6, 1584(s1)
                  lbu        t6, 605(a1)
                  lbu        ra, -1090(s1)
                  sb         s6, 16(s4)
                  lbu        s2, -7(s4)
                  lbu        t4, -518(a5)
                  lhu        a7, -2035(s1)
                  lbu        t4, -1203(a5)
                  lhu        t6, 1311(s1)
                  sb         a4, -1508(a1)
                  sb         s11, -1371(a5)
                  sb         t0, 293(a1)
                  lh         s9, -14(s4)
                  sb         s10, -1530(a5)
                  lbu        s11, 118(s1)
                  lw         s10, 1720(a1)
                  lhu        s11, 10(s4)
                  sb         a1, -961(s1)
                  lh         t6, -218(a5)
                  sb         t2, 1057(a1)
                  sh         s10, -1231(s1) #end load_store_instr_stream_3
                  lh         s0, -10(s4) #end load_store_instr_stream_1
                  sb         tp, -1041(a5) #end load_store_instr_stream_2
                  sw         t6, 1660(a1) #end load_store_instr_stream_0
                  la         a6, region_4+798 #start riscv_load_store_rand_instr_stream_42
                  andi       s0, zero, -246
                  lb         a1, 12(a6)
                  lbu        t2, 5(a6)
                  lb         gp, -13(a6)
                  sub        s1, s10, s9
                  divu       gp, a6, ra
                  slti       s3, t0, -153
                  sh         a0, 4(a6)
                  lbu        s6, -11(a6)
                  lbu        s7, -8(a6)
                  lbu        t6, 6(a6)
                  lb         s10, -15(a6)
                  slli       ra, s8, 18
                  lb         zero, -3(a6)
                  lbu        s6, 13(a6)
                  xori       t0, zero, 680
                  sb         s11, 2(a6)
                  sh         s4, -10(a6)
                  sb         t5, 8(a6)
                  sra        s1, s7, s8
                  lb         t5, 16(a6)
                  lh         a5, 16(a6)
                  lb         s3, -13(a6)
                  lbu        s7, -5(a6)
                  lh         a4, 16(a6)
                  mulhsu     t6, t0, s1
                  c.addi     a5, -1
                  csrrci     t6, 0x340, 1
                  lb         t2, -7(a6) #end riscv_load_store_rand_instr_stream_42
                  la         a7, region_1+13405 #start load_store_instr_stream_2
                  la         s1, region_1+1553 #start load_store_instr_stream_4
                  la         tp, region_1+4565 #start load_store_instr_stream_1
                  la         t0, region_1+5859 #start load_store_instr_stream_3
                  lb         a0, 24(t0)
                  lbu        a4, 12(tp)
                  lb         s9, -165(a7)
                  sb         s8, -249(a7)
                  la         a3, region_1+5360 #start load_store_instr_stream_0
                  lw         s0, -35(t0)
                  lw         s6, 3(s1)
                  sb         s3, -1(a3)
                  sh         s8, -41(t0)
                  sb         s0, -76(a7)
                  lbu        s3, -10(s1)
                  lb         t6, 52(t0)
                  lbu        a5, -188(a7)
                  sb         tp, 14(s1)
                  lbu        zero, 166(a7)
                  lw         s9, 11(tp)
                  sb         a0, -8(tp)
                  sw         s7, -53(a7)
                  sb         s3, -10(tp)
                  sb         s3, 1(a7)
                  lhu        ra, 21(a7)
                  lhu        zero, 26(a3)
                  lbu        ra, -12(s1)
                  lhu        a0, 11(tp)
                  c.sw       s1, 20(a3)
                  sb         s11, -184(a7)
                  sh         t2, -19(t0)
                  sh         tp, 5(tp)
                  lb         s8, -61(a3)
                  lb         s10, -204(a7) #end load_store_instr_stream_2
                  lbu        s6, -12(s1) #end load_store_instr_stream_4
                  lbu        s3, -39(t0)
                  sb         t2, -1(tp)
                  lhu        zero, -47(t0) #end load_store_instr_stream_3
                  lbu        s4, -4(tp)
                  lbu        s10, -8(tp)
                  lbu        s8, 3(a3)
                  lbu        s2, -14(tp) #end load_store_instr_stream_1
                  sb         a0, 31(a3) #end load_store_instr_stream_0
                  la         s7, region_2+5693 #start riscv_load_store_rand_instr_stream_0
                  div        s1, s9, t0
                  c.addi     s6, -1
                  csrrw      t4, 0x340, s10
                  lbu        gp, -22(s7)
                  lbu        a2, -9(s7)
                  csrrsi     t0, 0x340, 13
                  lbu        s0, -64(s7)
                  remu       a4, t0, a4
                  lbu        tp, 40(s7)
                  lh         s8, -21(s7)
                  sw         t0, 11(s7)
                  lhu        a4, 59(s7)
                  andi       tp, a2, -1023
                  lbu        s6, 12(s7)
                  c.slli     gp, 14
                  sb         ra, -30(s7)
                  or         a4, sp, a5
                  lh         zero, 15(s7)
                  lbu        a3, 36(s7)
                  xori       t1, a1, 1013
                  remu       t4, a6, t1
                  slt        tp, t4, s10
                  lbu        zero, -43(s7)
                  csrrsi     a7, 0x340, 12
                  lb         s6, -52(s7)
                  sll        t5, a2, zero
                  lbu        t0, 56(s7)
                  sb         s0, -48(s7)
                  sb         s0, 20(s7) #end riscv_load_store_rand_instr_stream_0
                  la         s9, region_4+3335 #start load_store_instr_stream_2
                  la         t1, region_1+12515 #start load_store_instr_stream_0
                  sh         t5, 169(t1)
                  sb         a2, 250(s9)
                  la         s8, region_0+1293 #start load_store_instr_stream_1
                  sh         a7, 137(s9)
                  lbu        s4, 226(t1)
                  sb         t5, 26(t1)
                  lbu        s10, 20(t1)
                  sb         t5, -180(s9)
                  lb         a2, 232(s9)
                  sb         s9, -192(s8)
                  lb         a6, 192(s8)
                  sw         t1, -163(s9)
                  lbu        s6, -255(t1)
                  lb         a2, -228(s9)
                  lh         a4, 109(s8)
                  lb         ra, -140(s9) #end load_store_instr_stream_2
                  sh         zero, -119(s8)
                  lb         s6, 32(s8)
                  sb         t6, 172(s8) #end load_store_instr_stream_1
                  lbu        s11, 162(t1) #end load_store_instr_stream_0
                  la         a1, region_2+2810 #start riscv_load_store_rand_instr_stream_40
                  lbu        s10, 13(a1)
                  sw         a3, -2(a1)
                  lbu        s7, 0(a1)
                  c.sub      a5, s1
                  xori       s6, a6, 484
                  rem        t2, a7, s4
                  csrrc      t1, 0x340, s7
                  lb         a4, 11(a1)
                  c.srli     a3, 3
                  auipc      s9, 899162
                  c.slli     s9, 10
                  c.nop
                  sb         s9, -6(a1)
                  lbu        gp, 1(a1)
                  c.nop
                  csrrwi     a5, 0x340, 6
                  mulh       a4, tp, s0
                  csrrci     s10, 0x340, 28
                  c.srai     a2, 25
                  lbu        tp, -4(a1)
                  csrrci     t0, 0x340, 18
                  sb         a0, 0(a1)
                  lbu        s6, -11(a1)
                  srli       t1, s2, 4
                  c.mv       s7, s10
                  c.xor      a3, a4
                  sb         s7, 15(a1)
                  lb         a5, 5(a1)
                  div        s11, s10, gp
                  sh         s7, 12(a1)
                  slti       t1, s4, -29
                  add        ra, s8, t2
                  c.add      t6, a6
                  sh         t6, 14(a1)
                  mulhu      a7, a5, t2
                  sw         s10, 6(a1)
                  lb         s4, -12(a1)
                  fence.i
                  sub        a2, t4, zero
                  csrrwi     a4, 0x340, 8
                  lbu        s7, -15(a1)
                  ori        s10, a4, -280
                  lbu        t4, 4(a1)
                  sb         a4, -14(a1) #end riscv_load_store_rand_instr_stream_40
                  la         s6, region_2+5564 #start load_store_instr_stream_1
                  la         s3, region_1+2625 #start load_store_instr_stream_0
                  lb         tp, -837(s6)
                  lbu        s7, 1342(s3)
                  sh         a0, 862(s6)
                  lbu        ra, 887(s3)
                  lbu        s2, 441(s3)
                  sh         a2, 1534(s6)
                  sb         t2, 44(s3)
                  lh         s1, 1446(s6)
                  lb         s10, -180(s3)
                  lhu        s0, -1326(s6)
                  lh         a7, -1211(s3)
                  lb         a0, 195(s6)
                  lh         t6, 1422(s6) #end load_store_instr_stream_1
                  sb         s11, 1776(s3)
                  sb         t1, -1736(s3) #end load_store_instr_stream_0
                  la         t4, region_4+514 #start riscv_load_store_rand_instr_stream_62
                  remu       gp, t6, a4
                  lb         s10, 129(t4)
                  mul        tp, t4, a3
                  c.andi     a2, 14
                  sb         a6, 29(t4)
                  nop
                  sb         a5, 81(t4)
                  sb         t6, -244(t4)
                  c.slli     gp, 5
                  sra        s0, t4, s0
                  lbu        a1, 42(t4)
                  lb         a2, -147(t4)
                  sra        a6, t1, a4
                  lbu        zero, -207(t4)
                  c.li       t6, 24
                  lb         s0, 37(t4)
                  lhu        a0, -186(t4)
                  sb         s6, 27(t4)
                  mulhu      s10, t1, s4
                  c.nop
                  c.mv       s3, s5
                  lbu        s8, 253(t4)
                  lh         zero, 100(t4)
                  lbu        t5, 225(t4)
                  sb         t2, 64(t4)
                  c.or       a3, a2
                  sh         s8, -246(t4)
                  sh         a7, -8(t4)
                  csrrw      s10, 0x340, gp
                  slti       t6, a2, 577
                  ori        s11, ra, 668
                  add        zero, zero, s9
                  c.srai     a0, 31
                  sw         s9, -126(t4)
                  rem        s0, a7, zero
                  lhu        t1, 84(t4)
                  c.or       a4, a1
                  lh         a6, 226(t4)
                  lb         a6, 153(t4)
                  fence
                  lb         a2, 87(t4)
                  lhu        a0, -212(t4)
                  slli       s4, gp, 23
                  mulhsu     ra, a6, a7
                  lbu        a5, -178(t4)
                  remu       s0, s10, a6
                  sb         a3, -1(t4)
                  c.addi     a2, 20
                  c.lui      s10, 14
                  lh         a1, -178(t4)
                  lb         zero, -85(t4)
                  sh         s6, 8(t4)
                  lbu        t5, 197(t4)
                  c.or       a2, a1
                  lb         a4, 237(t4)
                  add        a2, s3, a0
                  nop
                  fence.i
                  sb         s3, -240(t4) #end riscv_load_store_rand_instr_stream_62
                  la         a2, region_2+2806 #start riscv_load_store_rand_instr_stream_64
                  sra        a5, s1, ra
                  csrrs      a1, 0x340, t5
                  csrrw      ra, 0x340, s8
                  divu       t2, a6, a1
                  xor        s4, s0, s5
                  csrrc      t6, 0x340, s10
                  sb         s3, 59(a2)
                  lh         s4, -54(a2)
                  lbu        a3, -54(a2)
                  lhu        a6, 38(a2)
                  sb         a7, -12(a2)
                  lh         a7, -38(a2)
                  sb         s6, -41(a2)
                  lhu        a5, 28(a2)
                  xori       s2, a6, -985
                  sw         a5, -6(a2)
                  lbu        s3, -44(a2)
                  sb         a3, -40(a2)
                  sb         a6, -39(a2)
                  sb         sp, 51(a2)
                  lbu        s2, 61(a2)
                  c.nop
                  srli       s9, s3, 18
                  lh         t0, -62(a2)
                  lbu        s7, 15(a2)
                  sb         s5, 15(a2)
                  lb         a6, -57(a2)
                  c.addi     a4, 28
                  sb         a5, 61(a2)
                  lb         a0, -17(a2)
                  sh         t3, -28(a2)
                  auipc      t0, 957132
                  sb         t1, -42(a2)
                  slli       gp, a3, 1
                  sh         ra, -30(a2)
                  lbu        a5, -34(a2)
                  sb         t2, -63(a2) #end riscv_load_store_rand_instr_stream_64
                  la         s9, region_2+2041 #start riscv_load_store_rand_instr_stream_31
                  lb         a1, -413(s9)
                  lh         t5, -1569(s9)
                  xor        t2, s2, ra
                  or         s7, t1, ra
                  lb         zero, 872(s9)
                  lb         t5, -789(s9)
                  mulhu      s10, t1, a5
                  addi       s4, a5, -92
                  lbu        t6, 1604(s9)
                  c.andi     a0, 0
                  sb         a5, 1373(s9)
                  remu       zero, s2, t1
                  fence
                  lb         s10, 1030(s9)
                  sb         s3, -144(s9)
                  andi       a2, s4, -893
                  csrrw      a2, 0x340, s1
                  addi       a0, t1, 690
                  xor        tp, t2, a2
                  lbu        s6, 1701(s9)
                  ori        zero, s4, 47
                  lb         a6, 1218(s9)
                  sb         s10, 1525(s9)
                  lb         s1, -1080(s9)
                  or         s8, s4, t5
                  lbu        ra, -365(s9)
                  lb         s4, -90(s9)
                  sra        s4, sp, s0
                  div        s11, zero, a1
                  sb         s3, -1687(s9)
                  lbu        gp, -1598(s9) #end riscv_load_store_rand_instr_stream_31
                  la         s3, region_1+12466 #start riscv_load_store_rand_instr_stream_38
                  slt        t6, t5, t2
                  sb         s2, -41(s3)
                  lbu        a7, -117(s3)
                  lbu        t6, -94(s3)
                  lb         zero, 118(s3)
                  lbu        s10, 178(s3)
                  auipc      s0, 867341
                  andi       a5, t4, 917
                  csrrci     t0, 0x340, 18
                  sb         a0, -188(s3)
                  csrrsi     a2, 0x340, 26
                  csrrwi     gp, 0x340, 28
                  csrrci     t5, 0x340, 20
                  lb         a4, 115(s3)
                  sltu       s11, s3, s4
                  lbu        zero, 40(s3)
                  lbu        ra, -161(s3)
                  rem        a0, a7, s0
                  csrrw      t2, 0x340, t2
                  mulhsu     ra, a3, t3
                  sh         a7, -62(s3)
                  sra        t2, ra, s4
                  lb         t5, 63(s3)
                  c.li       a3, -1
                  xori       t4, s6, 1002
                  sw         s1, -10(s3)
                  c.addi     t4, 1
                  sb         t1, 88(s3)
                  add        zero, gp, gp
                  sb         a3, 7(s3)
                  auipc      gp, 966109
                  sb         a1, -244(s3)
                  lbu        s7, -126(s3)
                  ori        a3, a6, 332
                  sub        s10, s2, s5
                  lb         a0, 81(s3)
                  sb         t4, 32(s3)
                  lbu        s8, -151(s3)
                  lbu        s10, 119(s3)
                  lb         a2, 205(s3)
                  sltu       a7, s11, sp
                  lhu        a0, -6(s3)
                  sub        a4, a1, t2
                  remu       t4, s5, s10
                  nop
                  lui        s2, 731209
                  c.andi     a1, -1
                  srli       s10, t1, 16
                  sb         a4, -8(s3)
                  sb         a1, 75(s3)
                  srai       s7, s10, 8
                  c.andi     s1, 24
                  lb         a1, 92(s3)
                  sb         s4, -26(s3)
                  slt        s0, t2, s9
                  lbu        a1, 146(s3)
                  xor        s8, a0, a4
                  lbu        t6, -50(s3) #end riscv_load_store_rand_instr_stream_38
                  la         s7, region_2+6097 #start riscv_load_store_rand_instr_stream_19
                  lhu        t4, 1451(s7)
                  lbu        s3, 368(s7)
                  sb         t2, 624(s7)
                  xori       s9, a1, 590
                  sh         s2, -931(s7)
                  lui        s2, 326771
                  lb         a6, -1906(s7)
                  slti       s8, ra, -746
                  c.lui      gp, 25
                  lbu        a4, 462(s7)
                  c.mv       s9, s7
                  add        s2, s1, t0
                  c.andi     a4, -1
                  slt        s10, a2, a7
                  lb         t2, -248(s7)
                  lb         zero, 1812(s7)
                  mulhu      a5, a0, ra
                  sb         t5, -1640(s7)
                  lb         s11, 39(s7)
                  sb         a1, -1160(s7)
                  c.xor      a4, a1
                  and        a5, s6, s3
                  xor        gp, zero, s3
                  lb         s1, 1900(s7)
                  sltiu      s3, s10, -757
                  c.add      t0, a6
                  lhu        t6, 953(s7)
                  c.nop
                  c.li       a4, 23
                  c.nop
                  slti       ra, s3, 461
                  sh         t6, -793(s7)
                  lb         t1, -1476(s7)
                  sb         s8, -1834(s7)
                  andi       s2, t2, 102
                  lb         a7, 1742(s7)
                  sb         zero, -1098(s7)
                  lh         s11, 1433(s7)
                  fence.i
                  and        t4, zero, s9
                  c.or       a2, a0
                  mulhsu     a5, a0, t6
                  sh         s1, -1637(s7)
                  auipc      a0, 691876
                  c.add      a2, t6
                  sltu       a7, s10, s7
                  andi       gp, s3, 954
                  sw         a5, -565(s7)
                  lbu        a6, -1572(s7) #end riscv_load_store_rand_instr_stream_19
                  la         a2, region_2+1007 #start riscv_load_store_rand_instr_stream_24
                  auipc      t4, 771067
                  lb         s2, -714(a2)
                  slt        s2, t3, sp
                  lb         t4, 1427(a2)
                  lbu        s7, -184(a2)
                  add        s6, t1, s4
                  lh         a3, -783(a2)
                  lb         zero, 1374(a2)
                  div        s4, s6, a6
                  srli       tp, t3, 15
                  lhu        t2, -687(a2)
                  mul        s9, t6, s0
                  lbu        a1, -667(a2)
                  c.add      ra, tp
                  and        s7, s7, a3
                  auipc      gp, 555743
                  lbu        a1, 1885(a2)
                  slti       a1, s0, 987
                  sb         a3, 1924(a2)
                  lw         s2, -599(a2)
                  sb         s0, -858(a2)
                  sb         s8, 1380(a2)
                  or         s7, a3, s3
                  sb         t6, 364(a2)
                  lb         t6, 1244(a2)
                  srli       s1, sp, 23
                  c.srai     a5, 19
                  c.lui      t2, 21
                  lbu        a7, 386(a2) #end riscv_load_store_rand_instr_stream_24
                  la         s8, region_2+5818 #start riscv_load_store_rand_instr_stream_41
                  sb         s8, 53(s8)
                  lbu        s11, 18(s8)
                  c.add      a4, s9
                  remu       gp, tp, s11
                  c.nop
                  lb         gp, 15(s8)
                  lb         s3, -56(s8)
                  c.addi     ra, 10
                  c.or       a1, s0
                  add        t2, a6, s4
                  srl        a3, t1, s9
                  c.mv       s3, s6
                  sb         a7, -52(s8)
                  sb         zero, 0(s8)
                  divu       t5, sp, s8
                  xor        t4, t2, tp
                  xori       t2, s5, -1018
                  xori       zero, s10, 301
                  csrrc      a7, 0x340, ra
                  c.li       gp, -1
                  sra        a5, tp, s4
                  sb         a0, 56(s8)
                  slli       a7, s9, 20
                  c.addi     a1, -1
                  remu       ra, t3, t0
                  lbu        s2, 29(s8)
                  sra        t0, s10, s2
                  srli       s10, a6, 21
                  sra        tp, t0, a7
                  c.xor      s0, a1
                  addi       s6, s3, -249
                  sb         a7, 40(s8)
                  lb         t1, -49(s8)
                  lbu        t5, 7(s8)
                  sra        a2, a7, s4
                  lhu        gp, -4(s8)
                  and        t2, zero, gp
                  sb         t0, -21(s8)
                  sltiu      a7, a3, -632
                  sb         a2, 60(s8)
                  lbu        s4, 19(s8)
                  slt        a6, tp, s11
                  sb         s1, 27(s8)
                  lbu        a6, 61(s8) #end riscv_load_store_rand_instr_stream_41
                  la         s6, region_0+341 #start riscv_load_store_rand_instr_stream_6
                  sw         a5, 127(s6)
                  sb         s1, -4(s6)
                  sltu       a2, a1, s2
                  xor        s9, s10, s2
                  c.xor      a1, a3
                  slti       t0, s8, -887
                  nop
                  lhu        s8, 17(s6)
                  csrrs      s10, 0x340, a1
                  lbu        gp, 17(s6)
                  sra        s2, s2, t0
                  srli       t6, s4, 9
                  lb         gp, 6(s6)
                  c.sub      a5, s1
                  sltiu      a1, s11, 246
                  srai       s4, s11, 24
                  lb         a5, -113(s6)
                  xor        a4, a1, a1
                  lbu        a5, 165(s6)
                  lh         t6, -201(s6)
                  slli       a7, t0, 27
                  lbu        a1, -56(s6)
                  c.addi     ra, -1
                  sb         s1, 63(s6)
                  remu       s0, s0, tp
                  c.or       a3, a5
                  auipc      a6, 591844
                  c.xor      s0, a5
                  lb         t6, 99(s6)
                  srl        a3, tp, s8
                  c.add      s0, gp
                  c.li       a6, -1
                  sb         gp, -60(s6)
                  sltiu      s2, s10, -894
                  lb         zero, -70(s6)
                  srai       zero, s6, 7
                  andi       a1, s3, -618
                  andi       a6, zero, 18
                  and        t2, a0, t3
                  lb         tp, 188(s6) #end riscv_load_store_rand_instr_stream_6
                  la         a1, region_3+471 #start riscv_load_store_rand_instr_stream_63
                  lb         a6, -8(a1)
                  slti       gp, s1, 381
                  csrrw      t6, 0x340, ra
                  sb         s9, 8(a1)
                  lb         a4, 11(a1)
                  lbu        a0, -2(a1)
                  lb         s4, 13(a1)
                  sh         s3, 13(a1)
                  sb         a4, -16(a1)
                  sb         tp, -10(a1)
                  andi       s1, t3, 492
                  or         tp, s8, a5
                  lbu        s7, -16(a1)
                  xori       s9, a0, -433
                  sb         t3, -12(a1)
                  lbu        s0, -16(a1)
                  lbu        a7, -8(a1)
                  lw         s1, -15(a1)
                  sw         s7, 1(a1)
                  sb         s0, 13(a1)
                  lw         s6, 1(a1)
                  sb         t6, 1(a1)
                  sb         a4, -4(a1)
                  c.srai     a5, 28
                  lb         s11, 8(a1)
                  c.addi     tp, 6
                  lb         s0, 7(a1)
                  lbu        s1, 0(a1)
                  lb         t6, -6(a1)
                  lbu        s10, 9(a1)
                  lbu        s8, 10(a1)
                  c.srai     a3, 25
                  sltiu      s7, tp, 387
                  lbu        s7, -7(a1)
                  sw         t5, 1(a1)
                  lb         s11, -12(a1)
                  and        t4, s9, s0
                  lb         s0, 11(a1)
                  lb         ra, -13(a1) #end riscv_load_store_rand_instr_stream_63
                  la         tp, region_4+2030 #start riscv_load_store_rand_instr_stream_10
                  sw         gp, -358(tp)
                  lb         s2, -627(tp)
                  sltiu      t6, s9, 328
                  sltu       a1, s7, s11
                  c.li       s2, -1
                  c.srai     a2, 14
                  nop
                  divu       a7, a3, a1
                  c.srli     a3, 31
                  c.andi     s1, 12
                  lh         s3, -1120(tp)
                  c.addi     a1, 22
                  c.or       a4, a5
                  fence
                  sb         s0, 813(tp)
                  mul        s3, a2, gp
                  sltu       t0, a5, s6
                  csrrwi     s9, 0x340, 6
                  mul        a7, t6, t0
                  sw         t2, -1478(tp)
                  srl        s9, s9, ra
                  lb         t2, -460(tp)
                  lb         gp, -459(tp)
                  lbu        s10, 194(tp)
                  lbu        a4, 2012(tp)
                  rem        s1, t5, s2
                  sb         t6, -803(tp)
                  lbu        s7, -1183(tp)
                  lb         s4, 1883(tp)
                  add        a5, s5, t6
                  mulhsu     ra, sp, a6
                  fence
                  lb         a2, -332(tp) #end riscv_load_store_rand_instr_stream_10
                  la         t5, region_3+457 #start riscv_load_store_rand_instr_stream_13
                  mul        a4, s10, a6
                  sw         s1, 51(t5)
                  c.mv       a0, s0
                  srli       ra, s1, 9
                  sltu       zero, s2, s4
                  lb         a4, -62(t5)
                  c.and      s0, a1
                  lb         t4, 36(t5)
                  and        a0, a1, s3
                  lbu        s10, -2(t5)
                  divu       zero, s2, s1
                  lbu        zero, 38(t5)
                  srl        a6, a4, gp
                  fence.i
                  c.srli     a0, 29
                  lb         a2, -18(t5)
                  auipc      s2, 539420
                  c.srli     a4, 21
                  sub        s1, s1, tp
                  add        s7, s10, t5
                  sb         a1, -7(t5)
                  sb         gp, 21(t5)
                  lh         s11, -15(t5)
                  c.lui      t0, 22
                  xori       s7, s6, -507
                  csrrc      a5, 0x340, t1
                  auipc      s11, 214318
                  sltu       s2, s6, t0
                  sb         tp, -60(t5)
                  lhu        t6, -41(t5)
                  sb         s0, -19(t5)
                  c.slli     s3, 3
                  sb         s5, 12(t5)
                  csrrc      a0, 0x340, s10
                  c.mv       s2, a2
                  c.andi     a4, -1
                  sub        s0, t0, s1
                  mulh       s10, ra, t0
                  sh         zero, 53(t5) #end riscv_load_store_rand_instr_stream_13
                  la         s4, region_0+1157 #start load_store_instr_stream_0
                  la         s8, region_1+3876 #start load_store_instr_stream_3
                  la         s1, region_4+3417 #start load_store_instr_stream_2
                  sh         s4, -33(s4)
                  lbu        t6, -562(s4)
                  la         s3, region_3+267 #start load_store_instr_stream_4
                  la         a7, region_2+3756 #start load_store_instr_stream_1
                  sw         a6, -48(s8)
                  lh         gp, 120(s8)
                  lh         a1, -9(s3)
                  sb         s7, 12(s3)
                  lhu        a0, 1889(s4)
                  sb         gp, 167(s8)
                  lb         ra, 195(s8)
                  lb         a3, 1886(s4)
                  lb         s0, 16(s3)
                  sb         tp, -3(a7)
                  lh         a0, 122(s8)
                  lbu        a4, 10(s3)
                  lbu        a2, 5(a7)
                  sb         sp, -11(s3)
                  lhu        a0, -14(a7)
                  lhu        a4, 719(s4)
                  lh         t2, -5(s3)
                  lh         ra, 38(s8)
                  lbu        zero, 11(a7)
                  sb         ra, 13(s1)
                  sb         t6, 2(s3)
                  lw         ra, 15(s1)
                  lbu        a2, 7(s3)
                  lbu        s10, -16(s3)
                  lh         a6, 212(s8)
                  lb         s7, 16(s1)
                  sw         a2, -161(s4)
                  lbu        zero, -23(s8)
                  lw         t2, -244(s8)
                  lb         a3, 61(s8) #end load_store_instr_stream_3
                  lbu        t5, 3(s1)
                  lb         a0, 6(a7) #end load_store_instr_stream_1
                  lbu        a6, 1478(s4)
                  sb         a6, 12(s1) #end load_store_instr_stream_2
                  lb         ra, 391(s4)
                  lh         a1, -11(s3) #end load_store_instr_stream_4
                  sb         a4, -650(s4) #end load_store_instr_stream_0
                  la         s8, region_0+2389 #start riscv_load_store_rand_instr_stream_43
                  lb         s6, 14(s8)
                  lbu        s6, -2(s8)
                  nop
                  lb         a6, -5(s8)
                  lbu        t4, 14(s8)
                  srli       ra, s10, 22
                  sb         s5, 4(s8)
                  lb         s7, -6(s8)
                  sb         s9, -10(s8)
                  sb         t4, 12(s8)
                  lb         a5, -15(s8)
                  c.addi     s4, -1
                  lhu        t4, 1(s8)
                  lbu        s1, 2(s8)
                  lw         a0, -1(s8)
                  lb         s7, -14(s8)
                  sb         t6, 5(s8)
                  sw         t3, 7(s8)
                  xor        t4, s8, t3
                  sra        s10, sp, a0
                  srai       s6, t1, 26
                  c.slli     a1, 18
                  lbu        s6, -8(s8)
                  c.li       a7, 10
                  csrrw      a6, 0x340, s5
                  sb         gp, 1(s8)
                  and        t2, s1, a4
                  lb         tp, 8(s8)
                  c.addi     ra, 2
                  xor        s1, s5, a0
                  slti       s9, t2, -701
                  lbu        s0, 11(s8)
                  lbu        gp, 8(s8)
                  csrrs      a6, 0x340, t2
                  lbu        t2, 10(s8) #end riscv_load_store_rand_instr_stream_43
                  la         t0, region_2+6244 #start riscv_load_store_rand_instr_stream_39
                  lh         s7, 10(t0)
                  or         s9, s3, a5
                  lhu        s3, 50(t0)
                  c.srai     a5, 15
                  and        s7, s7, a6
                  lb         s2, 31(t0)
                  lb         t1, 24(t0)
                  lbu        s2, -8(t0)
                  add        t6, a5, t4
                  lb         s8, 32(t0)
                  lbu        zero, 55(t0)
                  lbu        s2, -6(t0)
                  mulhsu     a6, a2, t6
                  fence.i
                  addi       s9, a6, 573
                  xori       ra, s7, -566
                  srli       s9, s1, 28
                  mul        s6, t2, gp
                  lh         t5, 42(t0)
                  lb         zero, 7(t0) #end riscv_load_store_rand_instr_stream_39
                  la         t0, region_2+2954 #start riscv_load_store_rand_instr_stream_21
                  xor        s1, zero, s7
                  mulhu      s11, s1, s0
                  lh         a6, 56(t0)
                  andi       s10, ra, 453
                  sb         t2, 24(t0)
                  sb         s1, -53(t0)
                  c.srai     a1, 30
                  sh         t4, -2(t0)
                  lh         s1, 52(t0)
                  lh         a0, 28(t0)
                  lbu        s7, -37(t0)
                  csrrs      a0, 0x340, a6
                  lb         a5, 56(t0)
                  c.mv       s10, a1
                  c.sub      a2, s0
                  lb         s4, 29(t0)
                  sltu       tp, t6, a5
                  sh         a7, 20(t0)
                  csrrci     a6, 0x340, 26
                  c.slli     t5, 14
                  srl        a4, s5, a7
                  sb         a2, 21(t0)
                  andi       a0, a4, -382
                  lh         s9, -60(t0)
                  slti       s10, t1, -366
                  remu       s8, s4, t6
                  remu       s0, s1, ra
                  srai       s1, s4, 23
                  or         t4, sp, s8
                  c.lui      s9, 23
                  sb         s10, 43(t0)
                  xor        a0, t3, ra
                  sb         s2, 7(t0)
                  lb         a4, 33(t0)
                  c.sub      a5, s1
                  lh         s8, 40(t0)
                  srai       t4, a7, 16
                  lw         a6, 26(t0)
                  fence
                  csrrs      s9, 0x340, s6
                  sh         a3, -16(t0)
                  lb         s6, 27(t0)
                  lbu        tp, -5(t0)
                  slt        a7, a5, s1
                  sub        s7, ra, s0
                  srli       s11, zero, 26
                  lb         s7, -1(t0)
                  sh         t1, -44(t0)
                  rem        gp, s6, t5
                  sw         s10, 14(t0)
                  lhu        t1, 60(t0)
                  xori       s2, s4, 46
                  mulh       s6, zero, t4
                  lb         s0, 39(t0)
                  lbu        t1, 29(t0)
                  lhu        s6, -38(t0) #end riscv_load_store_rand_instr_stream_21
                  la         t5, region_2+6999 #start riscv_load_store_rand_instr_stream_36
                  lbu        t2, -2004(t5)
                  c.xor      s1, a4
                  fence
                  lbu        a4, -40(t5)
                  divu       a6, s0, sp
                  c.or       s1, s1
                  srl        a3, s11, s6
                  sb         sp, -652(t5)
                  nop
                  lbu        s9, 380(t5)
                  sb         s6, -1838(t5)
                  c.li       ra, -1
                  sb         zero, -1262(t5)
                  sw         t4, 445(t5)
                  sra        tp, a5, a4
                  lb         s2, -786(t5)
                  c.srli     a0, 30
                  slt        s9, s0, s1
                  sw         ra, 425(t5)
                  sltu       s10, a7, s9
                  lbu        gp, 547(t5)
                  sh         tp, 1085(t5)
                  c.srai     a2, 23
                  slli       a4, a6, 5
                  and        t4, s3, a2
                  lbu        t4, 363(t5)
                  csrrsi     s4, 0x340, 31
                  csrrs      a7, 0x340, s9
                  sh         s11, -999(t5)
                  lb         s4, 86(t5)
                  slt        t4, s0, t6
                  c.sub      a1, a2
                  sb         a6, -1141(t5)
                  auipc      a1, 351178
                  srl        a3, t1, s4
                  sb         s10, -1565(t5)
                  slli       zero, s10, 0
                  srli       s9, a6, 17
                  sh         a4, 865(t5)
                  srli       a4, s11, 13
                  lw         ra, 385(t5)
                  lbu        a6, 540(t5)
                  lb         a7, -1(t5)
                  sh         tp, 1113(t5)
                  lh         s2, 1115(t5) #end riscv_load_store_rand_instr_stream_36
                  la         t0, region_4+956 #start load_store_instr_stream_1
                  la         t5, region_1+5407 #start load_store_instr_stream_0
                  lhu        s4, 1788(t0)
                  lbu        s10, -4(t5)
                  lb         a3, 16(t5)
                  lbu        tp, -364(t0)
                  sb         a5, 3(t5)
                  sb         sp, 1163(t0)
                  lh         a2, 1420(t0)
                  lbu        s7, 3(t5)
                  sb         a1, 11(t5)
                  lbu        s11, 889(t0)
                  lbu        s0, 14(t5)
                  lbu        s7, 10(t5)
                  lb         s2, 653(t0)
                  sb         tp, -4(t5)
                  sw         gp, 908(t0)
                  lb         s8, 1(t5)
                  lhu        a3, -562(t0) #end load_store_instr_stream_1
                  sb         a5, -13(t5) #end load_store_instr_stream_0
                  la         tp, region_4+451 #start load_store_instr_stream_1
                  la         ra, region_2+4240 #start load_store_instr_stream_3
                  lbu        s1, 144(tp)
                  sh         t1, 12(ra)
                  lhu        a1, 10(ra)
                  la         t2, region_1+7526 #start load_store_instr_stream_0
                  sb         t2, -130(t2)
                  la         a3, region_0+263 #start load_store_instr_stream_2
                  lb         a5, 184(t2)
                  sh         s0, 27(a3)
                  lhu        t0, -8(ra)
                  lh         zero, 47(a3)
                  lbu        zero, 1730(tp)
                  lbu        s3, -1(ra)
                  lb         s10, 196(t2)
                  sb         t3, 3(ra)
                  sb         sp, 197(t2)
                  sb         s0, 1990(tp)
                  lbu        gp, 162(t2)
                  sh         t3, 0(ra)
                  lhu        s10, 2021(tp)
                  lb         s7, -37(a3)
                  sb         a0, 18(a3)
                  lbu        s4, -14(ra)
                  lb         t6, 57(t2)
                  lbu        s0, -6(ra)
                  lb         gp, 8(a3) #end load_store_instr_stream_2
                  sb         a2, 904(tp)
                  lbu        t1, 7(ra)
                  sb         t0, 1128(tp) #end load_store_instr_stream_1
                  lb         s6, 12(ra) #end load_store_instr_stream_3
                  lbu        t0, -151(t2) #end load_store_instr_stream_0
                  la         s0, region_4+2132 #start riscv_load_store_rand_instr_stream_26
                  lui        s3, 745650
                  slti       ra, a5, 13
                  lhu        s3, 10(s0)
                  lb         t1, -5(s0)
                  sw         s1, 0(s0)
                  sb         s5, 0(s0)
                  lw         a7, 32(s0)
                  remu       s11, s7, a6
                  lb         s7, 5(s0)
                  or         s6, zero, s9
                  and        s11, s10, tp
                  andi       tp, a3, 559
                  lbu        t0, 54(s0)
                  sb         s1, 57(s0)
                  slli       s11, zero, 28
                  csrrwi     ra, 0x340, 14
                  csrrwi     s2, 0x340, 3
                  csrrwi     a2, 0x340, 26
                  c.srli     s1, 20
                  sltiu      a2, a0, 396
                  lw         zero, 44(s0)
                  sltu       t6, s8, s8
                  csrrs      a7, 0x340, a7
                  c.nop
                  andi       a1, a1, 811
                  auipc      zero, 173830
                  lbu        zero, 19(s0)
                  slt        t0, s2, s7
                  lbu        s7, -50(s0)
                  c.slli     t5, 25
                  lbu        s9, 8(s0)
                  slli       s1, s4, 5
                  c.addi     s4, 28
                  xori       a5, a5, 842
                  c.and      s1, a2
                  c.mv       s7, s10
                  or         a3, s9, s4
                  sw         a2, -4(s0)
                  c.srli     a5, 6
                  sh         t6, 60(s0)
                  c.srli     a2, 16
                  c.nop
                  slti       s7, a4, -244
                  sb         t5, 53(s0)
                  sb         s2, -26(s0)
                  c.srli     a2, 15
                  lb         a3, -61(s0)
                  lhu        s1, 22(s0) #end riscv_load_store_rand_instr_stream_26
                  la         a6, region_0+1578 #start riscv_load_store_rand_instr_stream_3
                  lb         a3, -1231(a6)
                  sb         s9, 1198(a6)
                  sb         s9, 98(a6)
                  lh         a3, -970(a6)
                  and        t0, a4, s9
                  lbu        s8, -986(a6)
                  sh         s8, -684(a6)
                  c.srai     a3, 23
                  c.nop
                  sb         a6, -1310(a6)
                  sh         s11, 1652(a6)
                  remu       s9, zero, gp
                  lbu        t1, 462(a6)
                  sb         t2, 1679(a6)
                  sw         s1, -638(a6)
                  c.add      s0, s10
                  lui        a3, 382715
                  andi       t4, s9, 832
                  mulhsu     a1, a5, s5
                  sb         sp, -359(a6)
                  lui        t0, 835433
                  add        a5, t4, t5
                  sra        s6, a0, a5
                  sh         a2, -470(a6)
                  lb         a3, 1647(a6)
                  lb         a0, -751(a6)
                  add        t5, s9, zero
                  xor        t6, s1, a3
                  srai       t6, t0, 6
                  sh         gp, -1556(a6)
                  lw         a1, -918(a6)
                  sra        a4, t3, a2
                  lw         a3, 726(a6)
                  sh         gp, 1808(a6)
                  sb         sp, 1379(a6)
                  div        tp, tp, ra
                  lb         s2, 1453(a6)
                  c.andi     s1, 30
                  csrrc      zero, 0x340, zero
                  sh         a6, -984(a6)
                  sh         s1, -168(a6)
                  lb         s3, 874(a6)
                  c.srai     s0, 25
                  lb         a2, -544(a6) #end riscv_load_store_rand_instr_stream_3
                  la         t1, region_1+4586 #start load_store_instr_stream_0
                  la         a5, region_0+387 #start load_store_instr_stream_2
                  la         s11, region_3+443 #start load_store_instr_stream_1
                  lb         a1, 54(a5)
                  sh         t4, -164(t1)
                  lb         gp, 21(a5)
                  lb         zero, -153(t1)
                  lw         t5, -167(s11)
                  sb         t0, -53(a5)
                  sh         s7, 5(s11)
                  sb         t5, 92(t1)
                  sb         s7, -11(a5)
                  sb         s5, 52(s11)
                  lb         t4, 52(a5)
                  lb         s8, 205(t1)
                  lb         t2, -209(s11)
                  sh         t0, 59(a5)
                  lb         t6, -27(s11)
                  lbu        t6, -204(s11)
                  lb         ra, -52(a5)
                  lh         s8, -18(t1)
                  lhu        t6, 53(s11)
                  sb         t2, -6(s11)
                  lbu        s9, -17(a5)
                  sb         sp, 68(s11)
                  lbu        s10, -131(s11) #end load_store_instr_stream_1
                  lbu        s9, 117(t1)
                  lh         s3, 114(t1)
                  lb         s6, 33(a5)
                  sb         t3, 3(a5) #end load_store_instr_stream_2
                  sh         a2, 174(t1) #end load_store_instr_stream_0
                  la         gp, region_4+932 #start riscv_load_store_rand_instr_stream_44
                  sll        s10, a2, s11
                  lbu        s4, -23(gp)
                  slti       a1, t2, 792
                  c.mv       s4, s4
                  sb         zero, -57(gp)
                  c.li       a6, -1
                  lbu        ra, -12(gp)
                  sb         a0, 39(gp)
                  slli       s7, a2, 8
                  lb         a7, -25(gp)
                  ori        s3, t5, -530
                  sltu       s6, t4, s2
                  lbu        s6, -39(gp)
                  c.and      a2, s0
                  lbu        a2, 22(gp)
                  or         a4, gp, s2
                  lbu        t5, -52(gp)
                  fence.i
                  sra        s2, a2, a4
                  c.andi     a4, 10
                  lh         s11, 28(gp)
                  sb         gp, 17(gp)
                  mulhu      t6, t2, sp
                  mul        a0, t2, a3
                  c.slli     s10, 21
                  andi       s2, t0, 267
                  lbu        ra, -3(gp)
                  sb         t2, 23(gp)
                  sltiu      s9, t0, -139
                  srai       zero, s0, 12
                  sb         s11, -52(gp)
                  lb         a6, -32(gp)
                  lb         a1, -27(gp)
                  xori       a4, a2, -327
                  mulhsu     s4, t1, tp
                  sb         s7, -61(gp)
                  xori       a3, a3, -779
                  sll        s2, a4, s0
                  csrrci     s0, 0x340, 30
                  csrrw      t6, 0x340, a1
                  lbu        t6, -9(gp)
                  sb         s8, -53(gp)
                  lbu        a1, -19(gp)
                  sb         t4, 3(gp)
                  lbu        s0, -9(gp) #end riscv_load_store_rand_instr_stream_44
                  la         a7, region_2+7175 #start riscv_load_store_rand_instr_stream_58
                  c.mv       s0, t4
                  lui        t0, 71333
                  nop
                  lh         s1, -1053(a7)
                  sh         ra, -37(a7)
                  lb         s6, 897(a7)
                  srl        s11, t1, s6
                  lh         s6, -1343(a7)
                  c.lui      s0, 8
                  lui        a1, 6397
                  lbu        s2, -140(a7)
                  sb         s8, -1612(a7)
                  sb         t0, -1190(a7)
                  lhu        t5, -1513(a7)
                  c.srli     s0, 10
                  slt        a0, zero, sp
                  lui        t6, 443179
                  c.and      s1, a0
                  mul        s2, ra, t3
                  c.srai     s1, 12
                  c.nop
                  lb         t0, -485(a7)
                  c.lui      a1, 18
                  sb         a4, -1330(a7)
                  lb         tp, 440(a7)
                  xori       t6, s2, 179
                  sb         t5, -2014(a7)
                  lhu        t6, 297(a7)
                  lb         a1, -1552(a7)
                  c.sub      a2, a2
                  lw         a5, -1415(a7) #end riscv_load_store_rand_instr_stream_58
                  la         s2, region_3+254 #start riscv_load_store_rand_instr_stream_46
                  addi       t4, s8, -36
                  lbu        a0, -192(s2)
                  lhu        a0, -240(s2)
                  lbu        ra, -40(s2)
                  lb         s6, -227(s2)
                  lb         tp, 252(s2)
                  andi       gp, t2, -80
                  c.slli     a6, 29
                  srl        a5, t6, s0
                  srai       a1, gp, 8
                  lb         tp, 53(s2)
                  c.slli     a0, 10
                  c.or       a3, a2
                  c.andi     s1, -1
                  lh         a6, 132(s2)
                  lhu        a7, 56(s2)
                  lb         ra, -234(s2)
                  c.sub      s0, a4
                  c.srli     s1, 27
                  sb         s11, -173(s2)
                  lb         s1, -69(s2)
                  mulhu      t6, a4, s5
                  sh         t6, -48(s2)
                  and        ra, t4, a0
                  sb         a4, -143(s2)
                  lb         a1, 203(s2)
                  csrrc      zero, 0x340, t2
                  c.mv       a2, t5
                  sb         a2, 174(s2)
                  lh         t4, -76(s2)
                  c.sub      a0, a0
                  lb         s10, -181(s2) #end riscv_load_store_rand_instr_stream_46
                  la         gp, region_1+12206 #start load_store_instr_stream_1
                  la         s11, region_2+4396 #start load_store_instr_stream_0
                  lh         tp, -12(gp)
                  sb         a7, -338(s11)
                  lbu        tp, -101(gp)
                  lbu        a2, 246(gp)
                  lh         s4, -1830(s11)
                  sb         s5, 238(gp)
                  lb         s9, 1672(s11)
                  lbu        s0, 166(s11)
                  sh         a6, 488(s11)
                  lb         t4, -9(gp)
                  sb         s10, -36(gp)
                  lhu        t2, -702(s11)
                  sh         gp, -66(gp) #end load_store_instr_stream_1
                  lbu        a6, -927(s11)
                  lb         s7, 789(s11)
                  lbu        s3, -527(s11) #end load_store_instr_stream_0
                  la         ra, region_3+301 #start riscv_load_store_rand_instr_stream_53
                  lbu        s0, -114(ra)
                  c.add      t5, a0
                  csrrsi     tp, 0x340, 23
                  sb         s6, 22(ra)
                  lbu        a0, -252(ra)
                  sb         a7, 160(ra)
                  c.mv       a5, s10
                  lb         t5, -104(ra)
                  fence
                  slti       a2, a1, 1015
                  lbu        t1, 36(ra)
                  lbu        s4, -23(ra)
                  fence.i
                  lhu        gp, -179(ra)
                  sb         ra, -29(ra)
                  sb         zero, 52(ra)
                  slli       s2, a6, 28
                  c.srli     s1, 2
                  sra        zero, tp, t3
                  c.add      a4, s1
                  lb         s3, -204(ra)
                  lbu        t0, -232(ra)
                  add        t2, s10, t4
                  lbu        s10, -184(ra)
                  lbu        a3, -225(ra)
                  csrrw      a6, 0x340, t0
                  ori        s4, s10, 663
                  slti       a5, t5, -925
                  c.mv       t4, s8
                  sw         t1, 107(ra)
                  csrrci     s4, 0x340, 0
                  sb         s8, 90(ra)
                  lw         t4, 11(ra)
                  add        t0, t6, a3
                  srli       s9, s2, 29
                  sra        s11, a1, sp
                  lb         t6, -88(ra)
                  lw         t1, -209(ra)
                  lb         a2, 170(ra)
                  mulhsu     a4, ra, a1
                  lbu        t2, 56(ra)
                  sb         s7, -85(ra)
                  lb         a4, -218(ra) #end riscv_load_store_rand_instr_stream_53
                  la         a3, region_1+16345 #start riscv_load_store_rand_instr_stream_14
                  mulh       s8, t0, a3
                  auipc      s10, 950202
                  xori       s1, s10, 344
                  lbu        s10, -200(a3)
                  c.srai     a5, 10
                  slti       t0, zero, -19
                  xor        t2, s0, a1
                  lbu        s0, 6(a3)
                  lb         t2, -134(a3)
                  mulh       t2, a2, t0
                  sb         t1, -24(a3)
                  lh         s1, 11(a3)
                  sb         s7, -63(a3)
                  lbu        s3, -33(a3)
                  lb         s9, -110(a3)
                  lhu        a7, -87(a3)
                  mulhu      ra, s3, s8
                  lbu        s3, -26(a3)
                  sw         s9, 19(a3)
                  nop
                  lb         s8, 28(a3)
                  lw         s1, -33(a3)
                  c.srli     s0, 18
                  sub        a0, t4, a3
                  lbu        t2, -6(a3)
                  lbu        t2, -103(a3)
                  lh         t4, -101(a3)
                  sb         s8, -172(a3)
                  add        a0, t6, t3
                  sb         a7, -14(a3)
                  sb         t6, -82(a3)
                  mulhu      t1, a6, a3
                  srai       t4, a2, 2
                  lb         zero, -128(a3) #end riscv_load_store_rand_instr_stream_14
                  la         s4, region_0+2529 #start load_store_instr_stream_1
                  la         s3, region_0+537 #start load_store_instr_stream_0
                  sh         t2, -101(s4)
                  sb         a3, 77(s4)
                  lb         a4, 50(s3)
                  sh         t1, 17(s4)
                  lbu        s7, 2(s3)
                  sb         s7, -188(s4)
                  sb         s4, -6(s3)
                  sb         a1, -98(s4)
                  sh         a3, -49(s3)
                  lbu        a5, -236(s4) #end load_store_instr_stream_1
                  lhu        s1, -47(s3) #end load_store_instr_stream_0
                  la         a4, region_0+2881 #start load_store_instr_stream_0
                  sb         t2, 30(a4)
                  la         a1, region_4+3026 #start load_store_instr_stream_1
                  la         s6, region_1+9865 #start load_store_instr_stream_2
                  sb         a4, 57(a4)
                  lbu        t4, -255(s6)
                  lbu        s1, -17(a1)
                  lh         a7, -43(a4)
                  lh         tp, -20(a1)
                  lb         ra, -1500(s6)
                  sb         a1, -620(s6)
                  lb         t4, 30(a4)
                  lbu        s2, -7(a1)
                  lbu        a5, -698(s6)
                  lh         t0, 41(a4)
                  lbu        a7, -3(a1)
                  lbu        t5, 43(a1)
                  lb         t4, 11(a1)
                  lb         a0, 480(s6)
                  sb         tp, -17(a4)
                  lbu        s7, 46(a1) #end load_store_instr_stream_1
                  sb         s0, -1024(s6) #end load_store_instr_stream_2
                  lhu        a0, 27(a4)
                  lbu        zero, 30(a4) #end load_store_instr_stream_0
                  la         a1, region_0+941 #start load_store_instr_stream_1
                  la         s3, region_3+365 #start load_store_instr_stream_0
                  lb         s0, -46(s3)
                  lb         zero, -30(a1)
                  lbu        s4, -3(a1)
                  sb         s5, 44(a1)
                  lb         zero, 2(s3)
                  lw         a6, 7(s3)
                  lb         zero, -20(a1)
                  lb         s4, -22(s3)
                  lbu        s4, -11(a1)
                  lb         s11, -5(s3)
                  lhu        s10, 29(s3)
                  lbu        s0, 64(a1)
                  lb         t5, 32(a1)
                  lbu        t2, 24(a1) #end load_store_instr_stream_1
                  sb         zero, 46(s3)
                  sb         a0, 48(s3)
                  lb         s11, 27(s3)
                  lh         a2, -35(s3) #end load_store_instr_stream_0
                  la         s1, region_3+287 #start riscv_load_store_rand_instr_stream_48
                  c.srai     s0, 14
                  xori       a7, t5, 29
                  xor        s10, t2, t5
                  lb         s10, 48(s1)
                  xor        t1, s10, a4
                  mul        ra, a0, s8
                  lbu        a0, 16(s1)
                  sra        t6, t6, s10
                  c.srli     a4, 26
                  lhu        a0, 3(s1)
                  fence.i
                  c.slli     t0, 1
                  srl        a0, s2, t1
                  lb         a0, -54(s1)
                  c.srli     a5, 18
                  c.and      s0, a2
                  sb         t3, -10(s1)
                  csrrsi     s9, 0x340, 25
                  div        a3, s4, s10
                  lbu        s9, -20(s1)
                  lb         t4, -13(s1)
                  lbu        t2, -58(s1)
                  lbu        s2, 21(s1)
                  c.slli     t0, 13
                  c.andi     a2, 12
                  sh         s6, -35(s1) #end riscv_load_store_rand_instr_stream_48
                  la         a0, region_1+7346 #start riscv_load_store_rand_instr_stream_11
                  lb         s1, 1191(a0)
                  c.xor      a2, a1
                  sb         sp, -332(a0)
                  c.srli     s1, 29
                  c.srai     a1, 17
                  srai       t6, t3, 28
                  c.srai     a5, 27
                  lbu        gp, -395(a0)
                  sb         a1, 1567(a0)
                  c.srli     s0, 1
                  lbu        gp, -731(a0)
                  lb         a4, -1045(a0)
                  sb         ra, 797(a0)
                  sh         s6, -474(a0)
                  lbu        t5, 499(a0)
                  c.srli     a2, 9
                  lh         t5, -1028(a0)
                  lbu        s11, 370(a0)
                  sb         ra, -1147(a0)
                  lbu        ra, 1022(a0)
                  csrrw      a7, 0x340, a5
                  sb         s11, -1822(a0)
                  div        s3, t1, t4
                  sh         s4, 936(a0)
                  csrrc      a3, 0x340, t4
                  lbu        t5, -103(a0)
                  lbu        gp, 583(a0)
                  sb         s10, -509(a0)
                  lb         s0, -1169(a0)
                  lhu        t0, 1664(a0)
                  lbu        s2, 1457(a0) #end riscv_load_store_rand_instr_stream_11
                  la         s10, region_1+8599 #start riscv_load_store_rand_instr_stream_8
                  sb         s3, -199(s10)
                  sb         s7, -224(s10)
                  add        gp, a3, t3
                  sra        a2, ra, a5
                  xor        a4, s2, s1
                  sb         gp, 46(s10)
                  c.li       a1, 24
                  lbu        t1, 228(s10)
                  csrrci     s7, 0x340, 3
                  lh         a3, -105(s10)
                  add        a5, s3, a6
                  c.sub      a2, a1
                  lhu        t4, -55(s10)
                  csrrs      t4, 0x340, tp
                  mulhu      a3, s6, a4
                  remu       s1, s8, gp
                  csrrs      t0, 0x340, s5
                  mulhsu     t5, tp, t0
                  auipc      gp, 870792
                  mul        s1, s9, sp
                  sub        t2, s8, s0
                  lb         a3, 22(s10)
                  sh         sp, 149(s10)
                  c.li       gp, -1
                  sb         a4, 100(s10)
                  lb         t4, 104(s10)
                  lhu        a6, -173(s10)
                  csrrsi     s9, 0x340, 30
                  sb         s4, 90(s10)
                  xori       a6, a7, 958
                  sltiu      s0, a0, -595
                  lb         s7, 206(s10)
                  sb         tp, -24(s10)
                  sh         sp, -195(s10)
                  lb         s6, 240(s10)
                  lb         a6, -54(s10)
                  sb         t2, 168(s10)
                  c.srli     a4, 1
                  fence.i
                  lb         s2, -214(s10)
                  lb         ra, 14(s10)
                  sltu       t5, t2, a1
                  fence.i
                  sh         s9, -109(s10) #end riscv_load_store_rand_instr_stream_8
                  la         ra, region_2+545 #start riscv_load_store_rand_instr_stream_7
                  div        s8, s0, s3
                  sra        t1, a7, t6
                  nop
                  fence.i
                  lb         a4, -230(ra)
                  div        a4, s11, t2
                  c.sub      a2, s0
                  add        s7, s4, s7
                  sb         ra, -50(ra)
                  lb         zero, -190(ra)
                  lbu        t4, -36(ra)
                  fence
                  andi       s4, a5, 800
                  sb         s10, -12(ra)
                  lbu        s9, 214(ra)
                  lhu        s2, -73(ra)
                  lb         s8, -20(ra)
                  c.sub      s1, a3
                  lbu        s6, 200(ra)
                  sb         t3, 129(ra)
                  lw         s4, -113(ra)
                  lbu        tp, 221(ra)
                  lb         t1, 42(ra)
                  sb         zero, 228(ra)
                  c.xor      s1, a1
                  lbu        t4, -146(ra)
                  csrrw      a7, 0x340, s6
                  sb         s10, -140(ra)
                  sltu       s7, t6, s5
                  lh         t1, -213(ra)
                  lb         gp, 106(ra)
                  lbu        s10, 111(ra)
                  sb         s2, -141(ra)
                  c.and      s0, a3
                  sb         s11, -33(ra)
                  csrrwi     s2, 0x340, 25
                  lhu        s9, 59(ra)
                  c.lui      s7, 6
                  lbu        a4, 48(ra)
                  lb         a5, -82(ra)
                  lhu        a0, 61(ra)
                  sb         s10, -54(ra)
                  lb         s0, 115(ra)
                  sw         s10, -209(ra) #end riscv_load_store_rand_instr_stream_7
                  la         s4, region_1+6670 #start riscv_load_store_rand_instr_stream_60
                  mulhu      s9, s0, gp
                  nop
                  sb         a7, 251(s4)
                  lb         tp, -114(s4)
                  sb         s10, 167(s4)
                  lbu        s3, -188(s4)
                  lbu        gp, 163(s4)
                  sh         t2, 122(s4)
                  lhu        t1, 40(s4)
                  xor        gp, ra, a7
                  lb         s6, 206(s4)
                  slli       s1, gp, 8
                  c.or       a2, a3
                  c.nop
                  lh         a3, 180(s4)
                  csrrs      ra, 0x340, s1
                  c.sub      s1, a2
                  sb         s7, 57(s4)
                  lhu        a3, 48(s4)
                  lw         ra, 34(s4)
                  lbu        a7, -169(s4)
                  sw         s2, 54(s4)
                  sra        t0, a1, s6
                  rem        tp, t2, t6
                  sw         a6, 78(s4)
                  lb         ra, -235(s4)
                  nop
                  lhu        s6, 88(s4)
                  sh         s0, -116(s4)
                  lbu        a0, -65(s4)
                  rem        tp, s5, a2
                  c.mv       t6, s11
                  sb         a3, 164(s4)
                  rem        t2, ra, a2
                  addi       t6, a4, -797
                  xor        gp, s11, a2
                  div        s7, s9, ra
                  lbu        t5, 228(s4)
                  c.slli     a6, 19
                  lbu        s7, -37(s4)
                  divu       s11, a7, sp
                  c.andi     a2, 15
                  sh         s10, -148(s4)
                  lbu        s11, -113(s4) #end riscv_load_store_rand_instr_stream_60
                  la         a1, region_0+241 #start riscv_load_store_rand_instr_stream_17
                  xori       s10, zero, -470
                  sb         s9, -6(a1)
                  sltu       s0, zero, t0
                  mul        a5, sp, t6
                  lb         a5, 6(a1)
                  lb         s9, 10(a1)
                  fence.i
                  mulhu      a3, a7, a3
                  lbu        s3, 10(a1)
                  sh         t1, 13(a1)
                  lhu        a4, 7(a1)
                  lbu        a2, 10(a1)
                  sh         a6, -15(a1)
                  c.addi     a5, -1
                  c.mv       s2, s4
                  lhu        s2, -11(a1)
                  sb         s7, -16(a1)
                  sb         t3, 6(a1)
                  csrrci     a6, 0x340, 31
                  c.lui      a2, 3
                  lb         t1, 8(a1)
                  sb         t6, 4(a1)
                  lbu        s7, 14(a1)
                  lbu        t4, -14(a1)
                  srli       s10, s11, 23
                  lbu        a7, -11(a1)
                  csrrc      s11, 0x340, s7
                  sub        ra, a5, s11
                  csrrc      s6, 0x340, s4
                  addi       s2, a3, 682
                  csrrs      a3, 0x340, s7
                  lhu        a4, -15(a1)
                  lb         s0, 12(a1)
                  slt        zero, s5, s4
                  sb         a0, 8(a1)
                  c.li       a5, 16
                  slli       s4, t5, 12
                  c.addi     a3, 7
                  and        t1, tp, s9
                  csrrs      t6, 0x340, s0
                  sb         t5, -14(a1)
                  lh         s9, -1(a1)
                  slli       a0, a4, 11
                  slt        s8, a0, zero
                  sb         t3, 6(a1)
                  sh         zero, 1(a1)
                  lbu        s6, 1(a1)
                  fence
                  lbu        t4, -5(a1)
                  lbu        s4, -12(a1)
                  sw         s4, -13(a1)
                  mulhu      ra, t3, s3
                  csrrs      a0, 0x340, a4
                  c.and      a3, s0
                  c.xor      s0, a0
                  sb         a7, 0(a1)
                  lb         ra, 11(a1)
                  lh         a3, -3(a1) #end riscv_load_store_rand_instr_stream_17
                  la         a0, region_3+94 #start riscv_load_store_rand_instr_stream_32
                  sb         s2, 250(a0)
                  sb         s1, 191(a0)
                  and        s9, a7, zero
                  csrrci     zero, 0x340, 16
                  sb         t2, -14(a0)
                  lb         ra, 149(a0)
                  sb         a5, -87(a0)
                  lb         a2, 79(a0)
                  lbu        a6, 77(a0)
                  sb         a1, 65(a0)
                  lhu        s9, 114(a0)
                  c.slli     s11, 10
                  sw         t1, 162(a0)
                  c.addi     s0, 24
                  lb         tp, 25(a0)
                  sb         s9, 88(a0)
                  sb         sp, 201(a0)
                  sw         s6, 254(a0)
                  lb         a1, -60(a0)
                  lb         s9, 177(a0)
                  lh         s1, 20(a0)
                  lb         zero, -15(a0)
                  sb         a1, -46(a0)
                  lhu        s11, -88(a0)
                  rem        t4, a0, a4
                  ori        t0, a7, 511
                  lb         s4, -50(a0)
                  sh         t3, 170(a0)
                  c.mv       s10, s11
                  lb         a5, 91(a0)
                  auipc      s7, 57948
                  sltiu      t0, t4, 860
                  lbu        ra, 23(a0)
                  lw         s6, -42(a0)
                  auipc      t0, 91978
                  lhu        s7, -18(a0)
                  lh         tp, 146(a0)
                  c.srai     a2, 8
                  sb         sp, 169(a0) #end riscv_load_store_rand_instr_stream_32
                  la         a6, region_3+420 #start riscv_load_store_rand_instr_stream_27
                  csrrsi     a5, 0x340, 12
                  slli       t0, s7, 4
                  lh         s2, -8(a6)
                  lh         s1, 2(a6)
                  lb         t0, -5(a6)
                  lh         tp, -2(a6)
                  c.lui      a5, 13
                  lb         s3, 13(a6)
                  sb         s3, -9(a6)
                  or         s1, s8, s2
                  sb         tp, 12(a6)
                  sb         a4, 9(a6)
                  lb         tp, 14(a6)
                  c.nop
                  sb         a0, 1(a6)
                  or         a3, a3, a7
                  lbu        a1, 3(a6)
                  c.srai     a4, 14
                  lb         ra, -9(a6)
                  c.and      s1, a0
                  lb         a0, -11(a6)
                  fence
                  c.li       t2, -1
                  c.srli     s0, 25
                  sb         sp, -8(a6)
                  nop
                  sb         tp, 0(a6)
                  sh         a6, 2(a6)
                  csrrc      a0, 0x340, s10
                  lbu        t1, -16(a6)
                  slli       s7, s9, 21
                  csrrsi     a2, 0x340, 5
                  lhu        t1, -14(a6)
                  lbu        s9, -14(a6)
                  lb         a1, -2(a6)
                  lw         gp, 12(a6)
                  sb         s2, 3(a6)
                  srai       t2, a6, 19
                  sb         a4, 0(a6) #end riscv_load_store_rand_instr_stream_27
                  la         a0, region_1+15074 #start riscv_load_store_rand_instr_stream_28
                  srai       t1, s9, 4
                  sb         a6, 21(a0)
                  lb         tp, -23(a0)
                  lh         t5, -20(a0)
                  slli       a1, t1, 11
                  c.srli     a4, 8
                  mulh       t1, a4, ra
                  lbu        s6, 1(a0)
                  sb         a0, 12(a0)
                  lb         t4, -58(a0)
                  srai       t6, s0, 10
                  c.add      s4, s2
                  lbu        a5, -21(a0)
                  lbu        t5, -35(a0)
                  xor        s10, zero, a3
                  lbu        ra, 19(a0)
                  sb         t3, -39(a0)
                  c.srai     a1, 29
                  mul        s2, s9, t0
                  sb         gp, -52(a0)
                  sll        tp, a3, s1
                  fence.i
                  lw         a2, -50(a0)
                  sltu       a2, s0, t1
                  sh         sp, 6(a0)
                  sh         t3, 52(a0)
                  srli       t0, s3, 24
                  srai       t1, s10, 5
                  lbu        gp, -60(a0)
                  lh         a2, 40(a0) #end riscv_load_store_rand_instr_stream_28
                  la         s7, region_3+426 #start load_store_instr_stream_3
                  la         s1, region_0+3176 #start load_store_instr_stream_1
                  la         tp, region_4+826 #start load_store_instr_stream_0
                  sb         s2, 454(s1)
                  sb         s11, 14(s7)
                  sb         t5, -492(tp)
                  la         t2, region_1+9203 #start load_store_instr_stream_2
                  lh         s4, 1802(tp)
                  lb         t1, -24(t2)
                  lbu        a4, 883(tp)
                  lb         s10, 28(t2)
                  lbu        a7, -11(s7)
                  lb         a7, -1524(s1)
                  lb         a5, 43(t2)
                  lbu        s3, 15(s7)
                  lbu        s9, -1133(s1)
                  lb         zero, -82(s1)
                  sh         s3, 1062(tp)
                  lhu        t4, -302(tp)
                  sw         a1, 1310(tp)
                  lbu        a5, -30(t2)
                  lh         a1, -332(s1)
                  lbu        a3, -22(t2)
                  sh         s0, 690(s1)
                  sh         s9, -55(t2)
                  lbu        a5, -12(s7)
                  lbu        zero, 1509(tp)
                  sb         t5, -833(s1)
                  lbu        ra, -1357(s1)
                  lhu        s10, 23(t2)
                  lbu        s3, -36(t2)
                  sb         s10, -5(s7)
                  sh         a6, -14(s7)
                  lb         a4, -215(tp)
                  sb         gp, 5(s7)
                  lh         a7, 0(s7)
                  sb         a0, -852(s1)
                  lb         gp, 475(tp)
                  lbu        zero, -1575(s1) #end load_store_instr_stream_1
                  sh         t2, 31(t2) #end load_store_instr_stream_2
                  sw         a1, -10(s7) #end load_store_instr_stream_3
                  lbu        ra, 856(tp) #end load_store_instr_stream_0
                  la         s9, region_1+13261 #start riscv_load_store_rand_instr_stream_33
                  sll        s3, a7, t5
                  lhu        t1, 9(s9)
                  csrrs      s10, 0x340, s11
                  c.andi     a3, 18
                  and        a5, sp, s4
                  c.srli     a2, 19
                  sb         s0, 2(s9)
                  c.slli     s7, 2
                  c.sub      a0, a4
                  divu       a3, s10, s9
                  c.mv       s10, s10
                  remu       a1, s3, t0
                  sra        t6, s11, zero
                  lbu        s4, 9(s9)
                  c.sub      a0, a0
                  lb         a2, 4(s9)
                  or         t5, t2, gp
                  csrrw      s0, 0x340, sp
                  lb         s2, -3(s9)
                  sw         s11, -9(s9)
                  srl        a1, zero, a3
                  lh         a5, 3(s9)
                  sb         s9, -15(s9)
                  sltu       a2, a0, t2
                  c.or       a4, a1
                  lbu        s8, 6(s9)
                  sb         t1, -14(s9)
                  c.slli     a1, 1
                  xor        zero, a0, t6
                  mulhsu     t0, t0, t4
                  csrrci     gp, 0x340, 21
                  mulh       a5, t0, s8
                  and        zero, zero, zero
                  c.li       s8, 9
                  sb         ra, 2(s9)
                  mulh       s1, t3, a7
                  addi       s10, a7, -652
                  divu       a1, a3, a6
                  srli       gp, a3, 10
                  csrrs      t1, 0x340, s3
                  c.li       s8, 28
                  lb         gp, -15(s9) #end riscv_load_store_rand_instr_stream_33
                  la         t0, region_2+583 #start load_store_instr_stream_0
                  la         ra, region_3+164 #start load_store_instr_stream_1
                  lhu        s0, 18(ra)
                  sb         s9, -453(t0)
                  lbu        a6, 972(t0)
                  sb         t2, -63(ra)
                  sb         a0, 1214(t0)
                  lw         s7, 377(t0)
                  sh         t4, 18(ra)
                  sb         s3, -59(ra)
                  sh         s6, -46(ra)
                  lbu        a2, 794(t0)
                  sb         ra, -33(ra)
                  sh         tp, -48(ra)
                  lhu        a1, 64(ra) #end load_store_instr_stream_1
                  lb         s7, 397(t0) #end load_store_instr_stream_0
                  la         a7, region_1+9713 #start riscv_load_store_rand_instr_stream_22
                  sb         s0, -207(a7)
                  lb         t6, 89(a7)
                  c.srai     a0, 8
                  sb         t1, -170(a7)
                  lui        t4, 867371
                  sb         s1, 156(a7)
                  divu       tp, ra, s1
                  fence
                  sb         s4, 78(a7)
                  sll        s7, s7, a6
                  nop
                  lb         t0, 246(a7)
                  c.li       a4, -1
                  divu       t2, a5, s7
                  xor        a5, t3, s3
                  lb         s1, 115(a7)
                  lbu        t0, 46(a7)
                  c.add      gp, s5
                  lh         t4, -3(a7)
                  sb         s2, 170(a7)
                  lb         a2, -85(a7)
                  lb         s6, 142(a7)
                  srai       t4, s1, 27
                  fence
                  lbu        a6, 125(a7)
                  csrrsi     a6, 0x340, 25
                  c.xor      a5, a2
                  srli       a2, s9, 2
                  lb         t1, -195(a7)
                  xori       t6, ra, 274
                  lbu        s9, -147(a7)
                  sw         a5, 59(a7)
                  csrrc      s0, 0x340, s2
                  or         s11, s6, s3
                  auipc      a5, 931239
                  mul        t6, s6, a2
                  srli       a6, a5, 0
                  srl        s0, a0, ra
                  lhu        t4, -235(a7)
                  sb         t4, -103(a7)
                  lb         s4, -47(a7)
                  sb         s5, 202(a7)
                  lbu        a1, 62(a7)
                  c.li       t6, 22
                  sll        t2, s9, s4
                  sb         sp, 191(a7)
                  sb         t4, -115(a7)
                  lbu        s9, -15(a7)
                  sb         a5, 69(a7) #end riscv_load_store_rand_instr_stream_22
                  la         s8, region_1+4000 #start riscv_load_store_rand_instr_stream_50
                  lb         s9, -41(s8)
                  lb         s6, 9(s8)
                  srai       t6, a0, 25
                  sb         s11, 1(s8)
                  csrrsi     tp, 0x340, 28
                  srli       t0, s10, 28
                  lhu        s4, -2(s8)
                  lb         tp, 23(s8)
                  lbu        a5, -47(s8)
                  xor        t6, s6, zero
                  c.lui      a7, 5
                  lb         a4, 11(s8)
                  lb         t5, 6(s8)
                  csrrc      s2, 0x340, t4
                  slt        s11, t6, a6
                  rem        s9, ra, gp
                  c.srai     a2, 7
                  lui        a7, 928220
                  sb         ra, -32(s8)
                  csrrc      s7, 0x340, s7
                  csrrs      a7, 0x340, t5
                  or         t0, s6, zero
                  ori        s6, s7, -653
                  sb         tp, -5(s8)
                  slti       a4, s10, -775
                  sltiu      t0, a2, -409
                  andi       a0, s3, 818
                  lbu        gp, -11(s8)
                  slli       s11, s8, 26
                  lbu        a7, -54(s8)
                  lui        s2, 762659
                  sub        t4, a3, t3
                  lbu        s3, -49(s8) #end riscv_load_store_rand_instr_stream_50
                  la         s4, region_0+2362 #start load_store_instr_stream_3
                  la         a2, region_0+3220 #start load_store_instr_stream_1
                  la         a5, region_0+552 #start load_store_instr_stream_2
                  lw         t1, 212(a5)
                  la         s6, region_0+1992 #start load_store_instr_stream_0
                  lb         a1, 87(s6)
                  sw         s6, 2(s4)
                  la         a6, region_0+1139 #start load_store_instr_stream_4
                  sb         a6, -59(a2)
                  lw         s10, -80(a5)
                  lbu        gp, 3(a2)
                  sw         s8, 160(a5)
                  sh         a7, -15(a6)
                  lbu        a4, 15(s6)
                  lbu        s1, 80(s6)
                  sh         tp, 3(a6)
                  lb         s9, 13(s4)
                  lb         s0, 7(a2)
                  lb         a0, -4(a6)
                  sb         t6, -16(s4)
                  lbu        t0, -118(s6)
                  sb         a1, -35(a2)
                  lbu        ra, 43(a5)
                  lb         s3, -9(a2)
                  lhu        t6, 110(a5) #end load_store_instr_stream_2
                  lbu        s11, 1(s4)
                  sb         sp, -5(a6)
                  lh         zero, -190(s6)
                  sh         t1, 5(a6)
                  lbu        s0, -23(a2)
                  sb         sp, 31(a2)
                  lhu        s11, -106(s6)
                  lbu        t2, -7(s4)
                  lbu        t1, -4(s4)
                  lb         t5, 53(a2)
                  lbu        s10, -13(s4) #end load_store_instr_stream_3
                  lb         s1, 23(a2)
                  lbu        a0, -5(a6)
                  lb         s11, 241(s6)
                  lb         s7, -44(a2) #end load_store_instr_stream_1
                  sh         a6, -15(a6) #end load_store_instr_stream_4
                  lw         a1, 216(s6) #end load_store_instr_stream_0
                  la         s6, region_1+9103 #start riscv_load_store_rand_instr_stream_16
                  lui        t5, 169101
                  csrrwi     s4, 0x340, 29
                  lbu        a0, -468(s6)
                  lh         t2, 1693(s6)
                  slli       a2, s2, 6
                  lbu        t4, -1028(s6)
                  lhu        a5, 1933(s6)
                  lw         a7, 825(s6)
                  sb         s5, 1238(s6)
                  c.sub      s0, a2
                  lb         a2, -64(s6)
                  lbu        ra, -1888(s6)
                  lh         a7, -1549(s6)
                  mulhu      a0, zero, zero
                  c.sub      s0, a2
                  lhu        a2, -1387(s6)
                  lb         a5, -216(s6)
                  sb         a3, 695(s6)
                  sb         t4, 1933(s6)
                  csrrsi     t5, 0x340, 25
                  sh         t5, 1961(s6)
                  c.li       a4, -1
                  c.srli     s0, 12
                  lh         a2, 1271(s6)
                  lbu        a3, -870(s6)
                  mul        s7, t6, a6
                  lbu        a1, -2012(s6)
                  sb         a6, -1398(s6)
                  sub        t2, a7, t0
                  lbu        t4, 520(s6)
                  sw         ra, 581(s6)
                  ori        a1, ra, 436
                  sb         t5, -1803(s6)
                  mul        tp, s3, a1
                  sb         t4, 1691(s6)
                  sh         t5, 647(s6)
                  lbu        a3, -352(s6) #end riscv_load_store_rand_instr_stream_16
                  la         s6, region_1+9424 #start riscv_load_store_rand_instr_stream_35
                  nop
                  c.and      a5, a2
                  mulh       t4, ra, a6
                  sll        s2, s6, s10
                  and        s7, s3, a6
                  lh         t0, 116(s6)
                  lb         a6, 36(s6)
                  fence
                  csrrsi     s2, 0x340, 9
                  c.srli     a2, 17
                  lbu        t2, 113(s6)
                  c.srli     s1, 30
                  rem        t2, a2, a5
                  fence.i
                  c.add      gp, s6
                  lw         s9, -68(s6)
                  xori       s4, s10, -97
                  c.and      a4, s0
                  c.addi     a6, 12
                  ori        a0, t1, -423
                  c.srli     a4, 16
                  addi       s1, a6, -496
                  sb         s8, 127(s6)
                  sb         s9, -91(s6)
                  lb         t5, -214(s6)
                  lb         t4, 17(s6)
                  sb         zero, 189(s6)
                  div        s1, tp, s3
                  sb         t1, 91(s6)
                  lbu        s1, 105(s6)
                  ori        t1, s1, -402
                  lb         t4, 231(s6)
                  addi       tp, t6, -884
                  or         s7, a6, s8
                  ori        a3, s11, 267
                  sw         s0, -28(s6)
                  lw         s3, -204(s6)
                  lb         a6, 31(s6)
                  csrrwi     s7, 0x340, 20
                  or         a1, s0, s1
                  lb         s4, 149(s6)
                  srai       zero, t5, 7
                  lb         a3, -229(s6)
                  lb         t6, 232(s6)
                  c.li       s10, 19
                  csrrsi     gp, 0x340, 14
                  sb         a3, 120(s6) #end riscv_load_store_rand_instr_stream_35
                  la         s9, region_0+2782 #start riscv_load_store_rand_instr_stream_5
                  sub        s3, s8, t5
                  sb         t1, 6(s9)
                  lh         gp, 0(s9)
                  lb         t4, 15(s9)
                  lw         t5, -14(s9)
                  lb         s7, -4(s9)
                  csrrsi     s3, 0x340, 31
                  c.li       a1, 19
                  auipc      zero, 131302
                  mul        s8, t2, t3
                  lb         a1, -15(s9)
                  sra        s6, sp, sp
                  lhu        ra, 16(s9)
                  sltu       gp, s6, tp
                  c.nop
                  lb         a0, -11(s9)
                  csrrsi     t5, 0x340, 18
                  sll        a7, sp, s10
                  sltu       a2, s7, s4
                  c.and      a5, a3
                  div        a5, s6, t1
                  lh         t1, 12(s9)
                  sra        s4, a1, a7
                  sb         a3, -9(s9)
                  lh         t4, -4(s9)
                  lw         s10, 14(s9)
                  srai       t4, s7, 0
                  sb         ra, -13(s9)
                  srli       s0, a7, 21
                  sh         a5, 2(s9)
                  sb         s5, 1(s9)
                  sb         zero, 11(s9)
                  sw         t4, -2(s9)
                  sltiu      ra, s5, 703
                  lhu        s0, 8(s9) #end riscv_load_store_rand_instr_stream_5
                  la         a5, region_0+832 #start riscv_load_store_rand_instr_stream_49
                  csrrw      s9, 0x340, s6
                  lb         a1, -82(a5)
                  lbu        s10, -72(a5)
                  slti       s9, s4, -659
                  sb         s1, -228(a5)
                  c.or       s0, a5
                  csrrs      s8, 0x340, s1
                  lb         t1, -135(a5)
                  sb         s7, -211(a5)
                  mul        t6, s8, s4
                  sb         s5, 213(a5)
                  slli       t5, s7, 20
                  sw         t0, -256(a5)
                  slli       s6, s3, 30
                  lbu        s4, 3(a5)
                  lb         zero, -157(a5)
                  c.andi     a4, 4
                  lb         s0, -7(a5)
                  sb         t5, -7(a5)
                  csrrci     a2, 0x340, 8
                  lb         s1, -103(a5)
                  mul        zero, t2, tp
                  sb         t4, 75(a5)
                  ori        a2, t1, 757
                  srai       tp, a4, 11
                  slli       ra, t2, 23
                  lbu        t4, 183(a5)
                  slli       t1, a7, 31
                  slt        s11, t2, sp
                  c.sub      a1, s1
                  lb         s7, 165(a5)
                  lb         s1, -11(a5)
                  c.mv       t2, a1
                  lhu        s10, -180(a5)
                  lb         s11, 105(a5)
                  c.andi     a3, 5
                  lb         gp, -164(a5)
                  mul        s6, t6, a0
                  lbu        s11, 219(a5)
                  mulh       a3, t0, t0
                  xori       s3, t0, -905
                  lbu        t0, 65(a5)
                  lbu        t4, 185(a5)
                  lbu        a4, 8(a5)
                  sh         a1, 126(a5)
                  nop
                  sw         s3, 72(a5) #end riscv_load_store_rand_instr_stream_49
                  la         s2, region_0+2980 #start load_store_instr_stream_1
                  la         s1, region_0+761 #start load_store_instr_stream_3
                  la         t4, region_0+1485 #start load_store_instr_stream_2
                  lb         s9, 33(s2)
                  la         t5, region_0+2478 #start load_store_instr_stream_0
                  sh         t1, 21(s1)
                  lbu        s7, 12(t4)
                  sb         a2, 35(s2)
                  lbu        gp, 20(s1)
                  lb         a6, 4(t4)
                  sb         s10, 329(t5)
                  lb         s0, -4(t4)
                  lbu        s11, 432(t5)
                  lbu        s3, 1(s2)
                  sb         s4, -16(t4)
                  lb         a7, 44(s2)
                  sb         a2, 1217(t5)
                  sh         a6, -33(s1)
                  lbu        a4, 14(t4)
                  lbu        t0, -3(s2)
                  lhu        s6, 13(t4)
                  sb         t1, 0(s1)
                  lbu        a7, -23(s2)
                  lbu        zero, -1778(t5)
                  sb         s0, -14(t4)
                  sb         s6, 1397(t5)
                  lw         zero, 15(t4)
                  sb         t0, 9(s2)
                  lhu        a3, -5(t4)
                  lbu        a7, 13(t4) #end load_store_instr_stream_2
                  lbu        s8, -10(s1)
                  lbu        a0, 829(t5)
                  lb         s9, -55(s1) #end load_store_instr_stream_3
                  lb         t6, 33(s2) #end load_store_instr_stream_1
                  lbu        s0, -1495(t5)
                  sb         gp, 15(t5) #end load_store_instr_stream_0
                  slt        s0, s2, s8
                  or         a5, s0, s10
                  sub        s0, a3, tp
                  c.beqz     s1, 8f
                  slti       s9, s10, -139
                  sltiu      s1, s10, 500
                  c.li       s3, -1
                  bltu       t5, a7, 15f
8:                beq        s0, gp, 18f
                  bne        tp, tp, 27f
                  c.and      a1, a0
                  andi       zero, s10, 147
                  srli       s7, s3, 10
                  c.mv       s6, ra
                  c.andi     a2, -1
15:               xori       t2, s6, 850
                  xori       t1, s6, -502
                  c.and      a3, a4
18:               c.bnez     s1, 20f
                  fence
20:               bne        t4, gp, 28f
                  sra        ra, s5, s11
                  remu       a3, s10, s3
                  c.nop
                  sub        ra, s11, t2
                  andi       s1, s11, -405
                  mulhu      a3, s10, s11
27:               div        s2, a3, s6
28:               xor        s8, ra, a6
                  c.slli     s7, 5
                  rem        s1, s8, s0
                  c.andi     s0, 8
                  c.slli     t1, 7
                  c.add      s11, s11
                  remu       t4, s7, ra
                  fence
                  csrrci     s11, 0x340, 0
                  bne        a4, a3, 42f
                  mul        s1, t0, a3
                  sra        ra, a1, t6
                  c.nop
                  c.beqz     a1, 43f
42:               beq        s11, a7, 54f
43:               fence
                  c.andi     s1, 24
                  c.srli     s0, 21
                  sub        t5, a3, tp
                  bge        t1, s9, 60f
                  csrrwi     a4, 0x340, 7
                  xori       a3, a6, -19
                  c.srli     a0, 30
                  c.srli     a2, 6
                  c.and      a3, a2
                  csrrw      a7, 0x340, s7
54:               xori       s3, s7, -350
                  divu       t6, a5, s11
                  add        t4, s0, s2
                  c.beqz     a1, 75f
                  c.lui      s4, 13
                  mul        t6, t2, sp
60:               c.li       a6, 20
                  c.nop
                  c.or       a0, a0
                  div        a3, a3, s0
                  c.mv       tp, a3
                  addi       s4, a5, 453
                  andi       t4, ra, -186
                  slt        s8, a5, s10
                  c.mv       a6, s2
                  bgeu       s7, a1, 70f
70:               c.mv       tp, t0
                  xori       zero, a4, 401
                  c.add      a3, t2
                  blt        a7, s8, 88f
                  slti       s4, a6, 999
75:               c.or       a4, a5
                  sra        s4, s11, a4
                  fence.i
                  c.and      a3, a4
                  slti       s1, s11, -220
                  csrrci     a3, 0x340, 27
                  c.or       a5, a0
                  xori       s2, s6, 983
                  nop
                  xori       s3, sp, 883
                  fence
                  la         s7, region_1+929 #start riscv_load_store_rand_instr_stream_23
                  sb         a1, -48(s7)
                  lw         t5, 31(s7)
                  c.srli     s1, 9
                  lh         s4, -17(s7)
                  sb         a6, 41(s7)
                  lbu        s10, 16(s7)
                  mulh       a5, s8, s3
                  lbu        a3, 10(s7)
                  sltu       t0, ra, tp
                  sb         tp, -31(s7)
                  sb         s10, -41(s7)
                  sb         t5, -18(s7)
                  mulhu      s0, a7, a4
                  lh         s2, 19(s7)
                  slt        a0, s11, a4
                  csrrci     tp, 0x340, 18
                  lw         t1, -25(s7)
                  sb         a4, 46(s7)
                  sb         a3, -26(s7)
                  lw         a0, 19(s7)
                  lb         zero, -6(s7)
                  lb         a6, 48(s7)
                  slti       ra, s7, -218
                  lbu        s8, 18(s7)
                  fence.i
                  sra        s3, t2, a6
                  lw         t2, -25(s7)
                  sb         tp, 6(s7)
                  lbu        s0, -29(s7)
                  lbu        ra, -7(s7)
                  c.mv       s3, a2
                  lbu        s9, 44(s7)
                  lb         t6, -36(s7)
                  slli       a4, s11, 13
                  lbu        s6, -48(s7)
                  mulh       a3, a5, s4
                  c.andi     a1, 2
                  sh         t3, 45(s7) #end riscv_load_store_rand_instr_stream_23
                  c.sub      s1, s0
                  c.lui      a0, 1
88:               slti       a5, s2, 543
                  fence.i
                  csrrci     tp, 0x340, 31
                  srl        a1, a5, a0
                  c.bnez     a5, 105f
                  c.srli     a1, 24
                  sra        s7, gp, a0
                  c.slli     s1, 10
                  fence
                  auipc      a0, 919461
                  bne        s3, a6, 117f
                  mulhu      s7, a6, gp
                  mul        s3, tp, zero
                  remu       s10, a5, s4
                  div        s6, a6, s3
                  and        s0, sp, t1
                  c.sub      a4, a3
105:              auipc      a2, 575911
                  csrrsi     s7, 0x340, 7
                  mulhsu     a2, s8, a5
                  c.srli     a4, 15
                  csrrci     t0, 0x340, 19
                  c.beqz     a1, 119f
                  rem        s9, s1, t4
                  sltu       a7, a3, s4
                  auipc      t0, 276379
                  xor        s9, s8, t0
                  c.li       t5, 29
                  c.bnez     s0, 127f
117:              blt        sp, a1, 125f
                  slt        a2, s1, a4
119:              addi       s11, s7, -35
                  mulhsu     s6, s9, t2
                  mulh       s6, s1, s5
                  slti       s3, t1, 570
                  srl        s0, s9, t2
                  mulh       a1, a1, s4
125:              c.srai     a1, 29
                  c.add      s3, s8
127:              mulh       t0, t5, ra
                  c.srai     a5, 1
                  c.addi     t2, -1
                  xor        a7, s6, s10
                  beq        tp, ra, 146f
                  csrrwi     a3, 0x340, 7
                  csrrsi     s1, 0x340, 19
                  c.lui      s0, 15
                  srl        gp, t3, a4
                  sll        s6, t1, t0
                  auipc      s2, 1018720
                  ori        a7, t2, 610
                  c.andi     a2, 15
                  sltiu      a6, a6, 81
                  c.addi     t4, 2
                  sltiu      gp, s0, -201
                  srai       s9, t1, 16
                  lui        s9, 673668
j_sub_1_sub_3_5:  jal        ra, sub_3
                  mul        zero, s7, s0
                  c.srai     a0, 21
                  sra        s10, t5, a6
                  c.srli     a1, 26
                  bltu       s6, gp, 157f
                  c.add      gp, tp
                  sll        a1, a0, s11
                  c.li       a2, 4
                  c.sub      a4, a1
                  blt        tp, a6, 156f
146:              xor        tp, s6, s6
                  c.sub      a5, a1
                  srl        s2, ra, a0
                  srl        a1, a6, s1
                  srai       s4, a2, 17
                  c.andi     a0, -1
                  mulhu      a6, s9, gp
                  c.addi     t2, 10
                  c.srli     a4, 13
                  divu       s11, ra, s3
156:              slli       a3, s11, 17
157:              div        t6, a7, s1
                  divu       s9, zero, sp
                  c.xor      a3, a3
                  c.or       a2, a4
                  bge        s2, s7, 165f
                  slt        s2, a1, a5
                  sub        a5, a6, s9
                  and        s7, s6, s0
165:              srl        zero, a7, a2
                  bne        a7, s9, 185f
                  ori        s10, a1, 483
                  slt        t1, a4, t0
                  nop
                  c.mv       s10, a0
                  csrrsi     a0, 0x340, 6
                  slti       s4, ra, -226
                  mulhsu     a4, s6, s2
                  csrrs      ra, 0x340, a4
                  mulh       s10, s7, s11
                  srli       a3, s7, 19
                  xor        s10, a2, s1
                  addi       s3, s1, -339
                  c.beqz     a4, 181f
                  c.bnez     a5, 192f
181:              c.mv       s0, s9
                  srl        zero, t1, zero
                  c.slli     t5, 2
                  fence.i
185:              csrrwi     a4, 0x340, 25
                  fence.i
                  c.li       s6, -1
                  csrrc      a7, 0x340, a3
                  c.srli     a2, 6
                  c.srai     a2, 28
                  c.addi     a6, 10
192:              srli       s3, zero, 2
                  c.slli     s4, 26
                  srli       a3, gp, 9
                  xor        s2, t3, s5
                  ori        s10, s9, -308
                  csrrwi     s9, 0x340, 6
                  ori        t5, a7, 436
                  srli       s10, t6, 6
                  c.addi     a5, -1
                  remu       ra, s4, s6
                  slli       s6, a4, 28
                  xor        t0, s10, zero
                  sll        s2, a6, t3
                  andi       t6, s4, -188
                  nop
                  c.nop
                  nop
                  c.nop
                  srli       s4, t0, 17
                  remu       t1, sp, a6
                  slli       s1, t0, 24
                  c.mv       s10, a0
                  c.mv       s10, s7
                  sra        zero, t1, zero
                  ori        s9, s4, 758
                  c.and      a2, s1
                  c.srai     a1, 2
                  c.or       a2, s0
                  c.lui      t4, 16
                  slt        tp, zero, s1
                  div        a1, a2, s4
                  auipc      a6, 287833
                  slti       s4, a6, 433
                  c.xor      a3, a2
                  srai       s8, ra, 25
                  add        s10, t4, a6
                  bltu       a5, a3, 236f
                  andi       s8, a7, 346
                  sub        a6, s2, a0
                  fence.i
                  slli       s1, a2, 21
                  bne        t5, s4, 251f
                  srl        ra, a7, sp
                  mulhu      t4, a5, s11
236:              sub        t1, t0, ra
                  sltiu      s10, s3, 1000
                  c.li       s2, -1
                  c.or       s0, a1
                  c.lui      t6, 23
                  c.and      a4, a1
                  slli       t1, t6, 18
                  andi       s9, s8, -204
                  c.srai     a0, 18
                  and        t6, s1, s5
                  c.slli     a0, 11
                  mulhsu     tp, a5, t5
                  csrrsi     s0, 0x340, 16
                  csrrci     a4, 0x340, 3
                  c.xor      a2, a3
251:              bne        zero, s5, 270f
                  mulh       a2, s9, t3
                  c.beqz     a3, 271f
                  c.mv       a4, t2
                  lui        s7, 818567
                  srli       s4, s0, 25
                  c.xor      a0, a3
                  add        t6, t1, s2
                  xori       a2, t1, 479
                  remu       ra, a2, t5
                  bltu       ra, t3, 276f
                  andi       t6, s0, 727
                  mulhu      s7, s1, s11
                  sub        tp, a1, a6
                  slli       ra, t6, 5
                  nop
                  sll        t1, t4, a7
                  bne        s2, s1, 283f
                  nop
270:              c.srli     a3, 10
271:              bgeu       s6, t5, 279f
                  xor        a0, a6, s7
                  c.lui      a7, 15
                  bgeu       a5, t6, 292f
                  fence.i
276:              c.or       a1, s1
                  srai       s10, s2, 7
                  addi       s4, a7, 176
279:              bltu       t3, s11, 297f
                  c.add      s3, a6
                  c.li       s4, 19
                  div        t5, s7, a4
283:              bgeu       s4, s1, 291f
                  c.addi     s3, 3
                  rem        t2, s3, s7
                  c.andi     a3, -1
                  blt        a7, a4, 302f
                  add        s2, a6, a4
                  c.beqz     s1, 293f
                  lui        tp, 190855
291:              csrrs      a1, 0x340, t3
292:              bgeu       a4, tp, 303f
293:              mulhu      a4, t1, s1
                  divu       a7, t2, a2
                  srai       zero, a4, 19
                  sltiu      a7, a2, -288
297:              bne        t2, t1, 307f
                  srl        t5, tp, s7
                  beq        s0, a1, 308f
                  c.li       a7, 17
                  bgeu       a4, s3, 313f
302:              c.srli     a4, 25
303:              c.sub      a4, s1
                  beq        s11, s8, 309f
                  csrrsi     t1, 0x340, 22
                  and        a5, a7, a7
307:              andi       t2, t3, 625
308:              mulhsu     s11, gp, tp
309:              c.and      s1, a2
                  xor        a2, a2, s11
                  srai       s1, a6, 5
                  lui        a2, 314101
313:              sltu       s10, a5, s9
                  remu       a5, s1, t3
                  srl        t5, s6, a4
                  c.srai     a1, 31
                  c.mv       a4, s5
                  divu       a4, a0, a6
                  c.lui      s1, 15
                  xori       s6, tp, -620
                  slti       s6, a7, 615
                  sltiu      a7, ra, 51
                  c.sub      a2, s0
                  blt        a1, a1, 342f
                  blt        s6, t0, 336f
                  csrrci     a6, 0x340, 8
                  or         a7, s8, a3
                  xori       s10, t0, 91
                  sltu       t6, zero, a4
                  csrrs      s3, 0x340, s11
                  divu       s1, s5, s11
                  andi       t4, a6, -445
                  c.add      tp, a0
                  remu       a5, zero, s1
                  div        s7, a3, s2
336:              srli       a4, a5, 3
                  bne        a1, t2, 356f
                  fence
                  csrrs      s1, 0x340, t5
                  c.addi     s2, 19
                  xori       s7, a0, -158
342:              csrrc      s7, 0x340, s9
                  andi       s1, s8, 777
                  c.nop
                  csrrci     t1, 0x340, 9
                  sra        s9, zero, t1
                  srli       ra, t4, 24
                  c.lui      a5, 27
                  c.slli     a4, 20
                  auipc      s8, 752052
                  c.or       a1, a4
                  slli       a7, a2, 6
                  div        s8, t2, s4
                  ori        s11, a2, -888
                  mulhsu     s6, s9, t5
356:              remu       a6, s4, s8
                  c.addi     t4, 14
                  bge        t1, sp, 377f
                  c.nop
                  mulh       t2, t6, s1
                  srai       zero, s11, 22
                  csrrc      s3, 0x340, t2
                  fence
                  csrrci     gp, 0x340, 31
                  andi       a5, gp, -39
                  csrrw      zero, 0x340, a6
                  csrrw      t4, 0x340, t4
                  c.nop
                  slt        t1, a4, t6
                  lui        a3, 387544
                  c.and      s0, s0
                  c.srli     s0, 27
                  xori       zero, s2, 128
                  c.nop
                  c.or       s1, s1
                  slt        a4, sp, t5
377:              sub        a4, zero, s4
                  div        a7, a2, s9
                  fence
                  c.srli     a2, 2
                  c.bnez     s0, 382f
382:              and        gp, a7, a4
                  fence.i
                  or         a5, a3, a0
                  sll        s1, tp, t6
                  c.li       t0, -1
                  fence.i
                  rem        t4, t3, s6
                  sra        a2, s4, a3
                  csrrw      a1, 0x340, t3
                  c.beqz     a0, 404f
                  c.nop
                  bge        s4, t4, 412f
                  c.andi     s1, 0
                  c.sub      s0, s1
                  c.lui      s1, 4
                  fence
                  csrrwi     t1, 0x340, 23
                  c.andi     a3, 23
                  mul        ra, t2, a6
                  csrrc      s7, 0x340, tp
                  csrrw      gp, 0x340, a2
                  and        s9, t0, s8
404:              fence.i
                  mul        zero, gp, a4
                  c.or       s1, s0
                  ori        a5, zero, -1012
                  div        zero, s11, gp
                  c.or       s1, a4
                  sll        a3, s6, s7
                  c.li       a0, -1
412:              srai       s10, t1, 12
                  div        t2, a5, t3
                  addi       a5, s9, 13
                  srai       t2, s0, 27
                  sll        t5, a0, s1
                  auipc      s11, 704255
                  add        s6, zero, s1
                  slt        s3, s5, s10
                  c.and      a3, s0
                  andi       s0, a2, -514
                  and        s10, s2, a7
                  c.add      s11, t3
                  sll        s2, t4, a5
                  c.beqz     s0, 433f
                  csrrs      gp, 0x340, s1
                  srl        a5, a7, a0
                  add        s9, t0, sp
                  nop
                  c.xor      a2, a0
                  csrrci     s2, 0x340, 30
                  or         s10, a0, a3
433:              bltu       ra, t2, 445f
                  c.andi     a2, 4
                  mul        s4, s5, s3
                  sra        s3, s0, t1
                  andi       s2, s10, -42
                  andi       s3, s2, -295
                  blt        a1, s9, 456f
                  auipc      gp, 94600
                  csrrwi     s6, 0x340, 13
                  srai       s8, s10, 9
                  c.nop
                  c.andi     a4, 30
445:              div        t0, t5, s10
                  nop
                  srli       t0, t2, 7
                  beq        t2, s9, 456f
                  c.or       a3, a2
                  andi       t4, ra, -686
                  srai       s1, s8, 29
                  fence.i
                  bne        t4, s8, 455f
                  csrrs      ra, 0x340, a6
455:              slti       a0, s0, -803
456:              srl        zero, s6, s0
                  rem        ra, a5, s7
                  c.sub      a1, a1
                  srai       a2, s9, 13
                  blt        s11, s1, 473f
                  c.or       a4, a0
                  csrrsi     a0, 0x340, 14
                  mul        zero, gp, s9
                  c.srai     s0, 21
                  c.slli     tp, 15
                  c.lui      t1, 21
                  mul        t5, t5, s8
                  la         a7, region_1+3476 #start riscv_load_store_rand_instr_stream_59
                  c.srli     a2, 15
                  csrrs      t1, 0x340, gp
                  sub        t5, s10, s11
                  lb         t2, -19(a7)
                  lbu        a6, 22(a7)
                  sb         gp, 49(a7)
                  lb         a3, -16(a7)
                  sb         s8, 11(a7)
                  csrrci     t0, 0x340, 19
                  csrrci     s0, 0x340, 29
                  div        a4, s8, ra
                  lw         a1, 20(a7)
                  addi       a6, s5, -978
                  sb         s0, -23(a7)
                  sltiu      s0, s11, 270
                  c.sub      a2, a4
                  lbu        s10, 37(a7)
                  lhu        s4, -28(a7)
                  sb         s4, -37(a7)
                  mulhsu     a6, t5, a0
                  lh         gp, -58(a7)
                  c.li       s1, 30
                  lb         s8, 16(a7)
                  sh         s11, 24(a7)
                  lb         s10, 41(a7)
                  lh         s1, 36(a7)
                  sh         gp, -62(a7)
                  rem        a1, s5, a1
                  c.add      t2, s6
                  ori        s3, s0, 770
                  sb         a3, 47(a7)
                  divu       s4, a1, s4
                  lh         gp, -62(a7)
                  mulh       t2, t2, s1
                  sh         s8, -30(a7)
                  ori        t0, a0, -766
                  lhu        s0, -8(a7)
                  lhu        s3, -42(a7)
                  remu       zero, t6, s5
                  lbu        s10, 50(a7)
                  slt        t6, s5, t0
                  divu       a3, t1, t1
                  c.li       t0, 30
                  c.sub      a1, a4
                  srl        t0, a6, a5
                  andi       s2, s1, -861
                  lh         s10, -58(a7)
                  lb         s3, 55(a7)
                  lb         t6, 54(a7) #end riscv_load_store_rand_instr_stream_59
                  slli       a7, gp, 3
                  c.xor      a2, s0
                  c.li       a1, 13
                  xor        s6, sp, t1
                  rem        a7, sp, s2
473:              csrrw      t1, 0x340, gp
                  srai       a4, t4, 9
                  csrrci     a7, 0x340, 28
                  nop
                  sub        s2, a5, s8
                  c.slli     a3, 6
                  slli       t1, s4, 5
                  c.nop
                  slli       t5, ra, 21
                  mul        zero, t2, a2
                  sub        t2, a2, s0
                  c.mv       s2, a3
                  csrrci     t1, 0x340, 24
                  mulhsu     a5, s5, s9
                  c.add      a2, a4
                  c.xor      a2, a0
                  blt        s0, t0, 504f
                  divu       a3, ra, s0
                  mul        s9, tp, s3
                  csrrci     t2, 0x340, 1
                  xori       s0, s6, 257
                  c.mv       a7, s0
                  sra        a0, gp, a2
                  srli       s1, a1, 20
                  slli       zero, s10, 2
                  bge        s10, zero, 500f
                  c.addi     s9, -1
500:              beq        ra, ra, 505f
                  xori       s7, ra, -135
                  c.xor      a1, a2
                  sll        t5, t3, s1
504:              auipc      s10, 265406
505:              sltiu      gp, s2, 870
                  c.xor      a5, a1
                  srl        t5, s10, a1
                  c.and      a3, s1
                  bgeu       s11, s5, 527f
                  bge        t4, s10, 512f
                  xori       t2, t2, 256
512:              slti       t1, a0, -685
                  andi       t5, a7, 728
                  sltu       a2, s4, a3
                  divu       ra, t0, t1
                  c.sub      s0, a0
                  remu       a5, t4, s9
                  slti       t6, gp, -62
                  mulhu      s10, s2, s9
                  beq        a3, t3, 537f
                  c.bnez     a4, 526f
                  mulhsu     s2, s2, t0
                  c.nop
                  csrrwi     s9, 0x340, 29
                  c.andi     a2, 30
526:              c.lui      gp, 27
527:              andi       t6, a3, 1008
                  or         a4, a5, sp
                  csrrci     s3, 0x340, 19
                  div        s3, s0, s6
                  csrrsi     t4, 0x340, 20
                  c.xor      a5, a1
                  csrrs      a6, 0x340, s8
                  c.srli     a1, 13
                  xor        a7, t6, s6
                  srai       s8, s2, 22
537:              mulhu      t2, s4, a4
                  addi       s8, s1, 171
                  bge        s10, s8, 544f
                  bgeu       a0, a7, 541f
541:              c.srai     a2, 15
                  div        s1, t4, s10
                  c.andi     a5, 26
544:              c.srai     a2, 27
                  slt        a6, s11, t1
                  and        a2, s1, zero
                  fence
                  remu       a2, t1, s7
                  csrrwi     s2, 0x340, 12
                  blt        s0, zero, 554f
                  divu       s9, zero, s3
                  c.slli     t1, 17
                  c.slli     s6, 3
554:              c.bnez     a5, 562f
                  add        s7, a1, a7
                  mulh       t0, s5, t1
                  csrrs      t0, 0x340, s1
                  srli       s4, t1, 0
                  blt        a3, s11, 567f
                  csrrci     a2, 0x340, 6
                  srli       a0, a7, 3
562:              bne        a2, sp, 564f
                  remu       s4, a6, s10
564:              div        a3, zero, s2
                  mulhu      s9, s2, a7
                  sll        a7, s6, t0
567:              xor        s0, s6, a1
                  fence.i
                  fence
                  c.srai     a1, 27
                  sub        t4, s10, s10
                  c.li       s2, -1
                  c.slli     s2, 10
                  divu       t0, sp, s6
                  c.andi     s0, 3
                  mulhsu     t5, ra, sp
                  sra        ra, a6, t5
                  auipc      s8, 388876
                  sll        t2, s1, s4
                  c.addi     a3, -1
                  c.andi     s0, -1
                  lui        s8, 177694
                  c.li       a3, -1
                  rem        s0, s8, a7
                  xor        a6, a5, s7
                  and        s0, t3, a0
                  c.sub      a2, a2
                  csrrwi     a5, 0x340, 20
                  c.bnez     s0, 602f
                  bge        a6, a7, 608f
                  csrrs      a1, 0x340, zero
                  divu       a7, t3, tp
                  fence
                  addi       a4, s8, -383
                  c.slli     a5, 2
                  xor        s8, t2, t1
                  mul        t0, a3, sp
                  remu       a4, zero, a1
                  mulhu      t0, t6, sp
                  srai       a2, sp, 2
                  sll        gp, s3, gp
602:              c.beqz     s0, 620f
                  div        t2, a6, s9
                  c.srai     a0, 19
                  c.addi     t1, -1
                  c.li       s9, -1
                  and        a5, s11, t1
608:              c.bnez     s0, 627f
                  xor        a2, t6, t0
                  xor        t4, a3, sp
                  sra        s1, s7, s0
                  csrrc      a4, 0x340, t2
                  csrrsi     s3, 0x340, 17
                  auipc      ra, 153390
                  c.lui      s1, 20
                  c.srli     a3, 12
                  div        ra, ra, s5
                  nop
                  andi       s0, s10, 773
620:              blt        gp, a3, 632f
                  srli       s0, t2, 1
                  c.mv       a3, t2
                  nop
                  c.beqz     a2, 639f
                  xor        a7, t6, gp
                  c.lui      a5, 5
627:              lui        t5, 359194
                  bgeu       a1, zero, 646f
                  remu       s7, t0, t0
                  c.srli     a3, 26
                  csrrsi     t6, 0x340, 19
632:              bne        s6, s0, 650f
                  rem        s1, ra, s4
                  c.slli     s10, 29
                  sra        s2, s1, t4
                  bne        t3, a5, 647f
                  c.and      a2, a0
                  and        zero, a3, tp
639:              c.bnez     a5, 654f
                  and        s8, t5, s9
                  bltu       s10, t3, 656f
                  mulhsu     t6, a2, s1
                  sltiu      s2, t6, 877
                  csrrwi     s2, 0x340, 7
                  remu       s2, s8, a6
646:              divu       s2, s5, s11
647:              rem        zero, s2, a2
                  or         s3, sp, t0
                  or         a0, t6, ra
650:              nop
                  div        a2, a2, a5
                  srli       t1, s0, 22
                  c.nop
654:              bne        s11, s6, 664f
                  xor        s10, a5, a6
656:              fence.i
                  c.beqz     a3, 670f
                  c.nop
                  c.srai     a4, 23
                  and        s4, s7, ra
                  ori        a3, sp, 206
                  bltu       t2, s9, 674f
                  bge        a1, a7, 671f
664:              sub        s11, t1, s11
                  add        a4, a3, s6
                  csrrs      s7, 0x340, s9
                  ori        s8, t2, 875
                  csrrci     zero, 0x340, 19
                  sltu       tp, a0, s10
670:              fence
671:              c.mv       s3, s1
                  ori        s8, a5, 276
                  rem        ra, t3, s9
674:              remu       s8, s3, a7
                  blt        a6, t6, 677f
                  c.mv       t1, ra
677:              auipc      s7, 121829
                  ori        s11, s0, -743
                  c.li       a1, 18
                  csrrc      s9, 0x340, zero
                  addi       a4, s8, -396
                  div        ra, s1, a2
                  sll        a4, s5, s1
                  slli       a7, a6, 11
                  bne        ra, s5, 704f
                  divu       a3, a1, s5
                  bge        gp, zero, 695f
                  c.slli     s2, 17
                  csrrci     a6, 0x340, 6
                  lui        gp, 355577
                  c.mv       a4, gp
                  andi       s2, s5, -398
                  csrrc      s8, 0x340, t5
                  fence.i
695:              xori       t1, a5, 435
                  rem        s8, a0, s10
                  slli       s7, gp, 28
                  sra        s3, t2, s2
                  csrrs      t0, 0x340, t5
                  addi       s6, a1, 164
                  bge        s3, s9, 703f
                  sll        s7, t1, gp
703:              srai       s7, s11, 18
704:              div        s4, ra, a4
                  ori        t4, t4, -585
                  c.srli     a2, 7
                  bne        a3, a6, 718f
                  xori       t2, t3, 656
                  mulh       t1, s1, t4
                  add        s9, a5, a6
                  c.andi     a3, -1
                  lui        a7, 569562
                  rem        t1, a4, s9
                  auipc      gp, 140007
                  slli       zero, t5, 5
                  nop
                  c.add      s8, s8
718:              sltu       a4, sp, a7
                  divu       s9, t1, s10
                  remu       s1, zero, s4
                  c.xor      a4, s1
                  c.bnez     s0, 741f
                  c.andi     a5, -1
                  bltu       s11, s7, 733f
                  c.li       t6, 6
                  blt        a7, a7, 737f
                  sltu       a7, s5, t4
                  c.lui      t2, 29
                  c.add      t1, s4
                  slli       ra, s0, 15
                  or         a1, a4, s5
                  csrrci     a0, 0x340, 1
733:              c.addi     s4, 24
                  csrrci     s9, 0x340, 11
                  slli       tp, a1, 16
                  c.bnez     s1, 753f
737:              c.srai     a4, 28
                  slt        gp, t5, s9
                  c.xor      s0, a4
                  c.srli     a3, 2
741:              addi       s4, gp, -706
                  csrrci     s0, 0x340, 13
                  mulhu      t5, s5, s7
                  nop
                  srli       t0, a4, 9
                  sra        s6, s6, s11
                  add        a1, a2, t2
                  beq        s5, sp, 753f
                  c.li       t1, -1
                  andi       t6, s2, 401
                  csrrs      ra, 0x340, s2
                  sltiu      s0, s4, -36
753:              andi       s2, a3, 161
                  beq        a6, t4, 762f
                  mulhu      gp, s5, t4
                  csrrc      t4, 0x340, sp
                  c.srli     s0, 3
                  c.or       a4, a0
                  blt        s8, t0, 771f
                  fence.i
                  c.srai     a0, 24
762:              srl        a2, s1, a5
                  sltu       a2, s10, s6
                  c.bnez     a2, 772f
                  rem        zero, s11, a3
                  srl        t1, s10, t3
                  and        s4, a5, t2
                  c.add      s8, gp
                  remu       s9, t0, t2
                  andi       s8, a2, -93
771:              mulhsu     s0, tp, s6
772:              fence
                  csrrs      a7, 0x340, t3
                  c.li       s2, -1
                  bgeu       gp, a6, 777f
                  mul        ra, tp, s9
777:              blt        a1, a2, 788f
                  and        t5, t5, a3
                  bgeu       s9, a0, 794f
                  csrrw      t6, 0x340, t4
                  andi       a3, ra, -142
                  csrrci     s2, 0x340, 2
                  bltu       tp, a1, 802f
                  c.xor      a3, a1
                  or         s0, a4, a5
                  c.sub      s1, a1
                  lui        a1, 136501
788:              xor        tp, t3, t5
                  srai       a3, a4, 5
                  c.lui      a7, 1
                  remu       a7, a0, s10
                  remu       t1, zero, s11
                  addi       t1, a4, -117
794:              srl        a5, s6, a2
                  fence
                  add        tp, s2, a6
                  c.lui      ra, 7
                  c.beqz     a5, 816f
                  csrrw      zero, 0x340, s10
                  fence
                  c.lui      a4, 22
802:              mul        t1, s10, sp
                  fence.i
                  c.lui      a7, 10
                  srli       s4, gp, 29
                  c.andi     a4, -1
                  c.and      s0, a0
                  csrrs      s8, 0x340, s9
                  srl        a1, t5, t5
                  and        s11, t4, s2
                  c.or       a0, a5
                  bge        a6, t0, 827f
                  csrrsi     a0, 0x340, 17
                  remu       t5, a4, ra
                  srl        a1, s3, s10
816:              bge        s9, s0, 817f
817:              slti       s10, t5, -740
                  csrrs      tp, 0x340, s3
                  divu       t5, t2, a4
                  lui        a3, 878373
                  csrrsi     s1, 0x340, 3
                  c.li       t6, 17
                  mulhsu     s11, s11, s5
                  c.add      a2, gp
                  c.or       s1, a5
                  c.lui      a0, 22
827:              fence
                  or         a4, s1, t3
                  c.andi     a3, 23
                  sltiu      t6, t1, -655
                  rem        tp, ra, a5
                  sra        s2, tp, s3
                  csrrsi     ra, 0x340, 23
                  c.and      a5, a4
                  sub        s1, t0, s7
                  csrrwi     gp, 0x340, 16
                  c.nop
                  csrrc      a3, 0x340, a6
                  bltu       s6, s11, 858f
                  andi       s4, t6, 985
                  div        zero, s9, s5
                  bltu       t3, s3, 850f
                  nop
                  c.mv       t4, a7
                  csrrs      s6, 0x340, gp
                  c.mv       t4, t2
                  sltiu      s7, s10, -6
                  bge        t5, ra, 861f
                  srli       s11, t5, 28
850:              auipc      s6, 444889
                  bltu       s0, t3, 869f
                  c.nop
                  csrrsi     gp, 0x340, 20
                  csrrc      s9, 0x340, a4
                  c.or       a2, a4
                  divu       s2, a3, s2
                  bne        a1, s4, 861f
858:              and        s10, s5, a0
                  csrrs      s8, 0x340, a5
                  c.beqz     a1, 869f
861:              divu       s2, s4, s11
                  c.bnez     a2, 880f
                  bge        s8, t5, 881f
                  blt        t5, s8, 872f
                  c.sub      a2, s1
                  fence.i
                  and        s8, s5, s5
                  srli       s0, s1, 1
869:              c.xor      s1, a2
                  xor        zero, s6, sp
                  bge        a4, s3, 884f
872:              divu       s1, gp, s3
                  srl        tp, sp, a1
                  sltu       a7, t0, t1
                  rem        s6, zero, a2
                  slli       s2, s8, 11
                  add        t1, t6, s10
                  srai       tp, s5, 11
                  div        gp, a1, s0
880:              csrrwi     a4, 0x340, 24
881:              srl        a4, t5, t3
                  bltu       t1, sp, 894f
                  c.bnez     a3, 893f
884:              c.lui      tp, 30
                  c.addi     a3, -1
                  divu       a5, a2, t3
                  or         t5, a7, a4
                  divu       s11, a7, zero
                  add        s9, sp, s7
                  nop
                  sll        a3, t3, a2
                  c.or       s0, a0
893:              divu       s1, a4, t0
894:              c.li       s10, -1
                  or         a5, s7, a5
                  mulhsu     a3, t6, s2
                  c.sub      a0, a0
                  c.addi     t0, -1
                  srai       a6, s9, 29
                  div        s11, t6, s4
                  add        s0, t2, sp
                  nop
                  bgeu       a0, s5, 908f
                  c.andi     s0, -1
                  beq        s10, t6, 920f
                  csrrc      s8, 0x340, ra
                  bge        a5, s10, 909f
908:              sub        s9, sp, s10
909:              srl        s4, t0, s4
                  c.add      s2, s5
                  c.bnez     s0, 930f
                  sub        s8, sp, a4
                  remu       s7, s0, a0
                  add        a0, sp, s7
                  ori        t5, s7, -1022
                  div        s3, t4, s8
                  bge        s0, t6, 919f
                  xor        s3, zero, s7
919:              bne        t1, t3, 938f
920:              csrrc      t2, 0x340, s10
                  csrrwi     s7, 0x340, 15
                  c.beqz     s1, 935f
                  ori        t0, s7, 252
                  div        s9, s9, t5
                  srli       t1, t5, 19
                  csrrw      tp, 0x340, s3
                  srl        t1, s11, t3
                  csrrw      zero, 0x340, t4
                  srli       s4, t1, 11
930:              fence
                  c.srai     a5, 8
                  fence
                  c.andi     a2, 6
                  slli       s9, s9, 30
935:              srai       s0, a0, 25
                  c.slli     tp, 29
                  fence
938:              c.mv       t2, s11
                  csrrci     s6, 0x340, 15
                  slli       t4, gp, 25
                  csrrsi     s3, 0x340, 30
                  c.bnez     a1, 954f
                  xor        ra, s10, s9
                  slti       t2, s0, 603
                  c.srai     a0, 2
                  lui        a3, 169814
                  and        a3, t5, a1
                  c.bnez     s0, 961f
                  addi       s7, gp, -1009
                  bge        a7, t0, 968f
                  ori        s7, a1, -774
                  sltu       s3, tp, t6
                  csrrwi     s4, 0x340, 3
954:              c.add      a1, gp
                  c.slli     t6, 7
                  xori       a5, t1, -25
                  csrrwi     t4, 0x340, 22
                  c.xor      a4, s1
                  bne        s2, s9, 961f
                  csrrsi     a4, 0x340, 19
961:              ori        a2, tp, 752
                  srai       s3, gp, 5
                  c.srai     a1, 16
                  csrrci     a6, 0x340, 10
                  c.slli     s4, 30
                  mul        tp, ra, t4
                  ori        s2, a4, 125
968:              csrrsi     a0, 0x340, 0
                  c.andi     s1, 31
                  c.addi     s6, 24
                  c.add      t1, s4
                  lui        tp, 570106
                  sltiu      s3, t3, 680
                  fence.i
                  bne        t4, s4, 976f
976:              csrrc      t5, 0x340, s5
                  sll        s4, sp, s6
                  csrrwi     s0, 0x340, 2
                  rem        s8, ra, s0
                  sra        a1, s5, s10
                  add        s11, t4, ra
                  div        t2, tp, s0
                  sltiu      a1, s11, 747
                  csrrsi     s8, 0x340, 11
                  srl        ra, s4, s10
                  csrrci     ra, 0x340, 6
                  csrrwi     s7, 0x340, 2
                  srl        tp, a1, s3
                  xori       s10, zero, -481
                  c.srli     s0, 27
                  c.mv       s9, a7
                  andi       gp, t0, 860
                  c.slli     ra, 16
                  bne        s8, zero, 1002f
                  mulh       a3, t5, a6
                  srl        a2, s7, s0
                  sltu       a4, t2, s10
                  slli       zero, s3, 25
                  rem        t1, s6, a1
                  sltiu      s11, s10, -16
                  srl        s10, s9, t6
1002:             sltu       a3, s6, zero
                  addi       ra, s0, -546
                  slti       s0, s6, 695
                  c.lui      ra, 28
                  csrrwi     t5, 0x340, 7
                  c.andi     s0, -1
                  andi       a6, s2, 344
                  bltu       s4, a2, 1017f
                  c.mv       t1, t2
                  auipc      s6, 823602
                  c.add      t0, a1
                  c.add      s8, a4
                  c.lui      a4, 26
                  csrrsi     a0, 0x340, 21
                  c.addi     s10, -1
1017:             nop
                  c.and      s0, s1
                  andi       ra, t5, 282
                  c.slli     t6, 11
                  div        gp, s8, s4
                  fence
                  remu       s3, s6, zero
                  bne        zero, a3, 1033f
                  srli       a3, t1, 12
                  csrrc      a5, 0x340, s4
                  c.lui      ra, 2
                  csrrw      t4, 0x340, a7
                  addi       a1, t4, 372
                  csrrc      a7, 0x340, t2
                  sltu       ra, t5, t0
                  c.add      a4, s4
1033:             addi       a2, t3, 933
                  sll        s1, gp, ra
                  c.li       s9, -1
                  srli       s2, a7, 22
                  mul        s2, tp, s1
                  c.nop
                  csrrw      s3, 0x340, t1
                  srl        s8, a2, tp
                  fence.i
                  mulhsu     gp, t4, tp
                  sll        s1, t5, ra
                  nop
                  divu       a5, s0, t5
                  add        s3, s11, a7
                  c.slli     a1, 18
                  mulhu      t1, ra, s7
                  c.mv       s10, s2
                  csrrw      a5, 0x340, s7
                  c.srai     a0, 27
                  c.slli     t1, 4
                  fence.i
                  xori       s6, s6, 869
                  c.nop
                  xori       ra, a1, -365
                  bltu       s8, s4, 1076f
                  mulh       gp, a3, sp
                  mulhsu     s11, a5, s11
                  csrrsi     a3, 0x340, 21
                  or         t2, zero, s11
                  sll        t5, s0, sp
                  add        t5, ra, a6
                  csrrci     s7, 0x340, 8
                  addi       a1, t6, -692
                  div        a2, s7, s3
                  c.sub      a3, s1
                  rem        tp, a0, a6
                  sll        zero, s3, t0
                  bltu       t1, sp, 1074f
                  blt        s7, s1, 1079f
                  mulh       tp, a3, a7
                  add        t1, t5, a1
1074:             c.slli     s3, 16
                  csrrs      s4, 0x340, t0
1076:             auipc      s11, 821170
                  sltu       a4, t0, a5
                  ori        s9, s7, -7
1079:             divu       a6, tp, s2
                  csrrsi     t6, 0x340, 25
                  addi       s11, s6, 636
                  blt        a0, s3, 1101f
                  remu       gp, t0, s8
                  srli       t6, tp, 13
                  c.nop
                  divu       t6, s10, a5
                  sltu       s1, a3, s2
                  xori       s2, a4, 447
                  rem        a7, s6, t3
                  csrrw      s2, 0x340, zero
                  mulhsu     t5, s1, s9
                  add        s7, s11, t2
                  auipc      t1, 482163
                  mulh       s6, t0, s7
                  mul        t0, t4, s6
                  c.slli     a0, 18
                  div        s9, s9, t3
                  auipc      zero, 747753
                  c.nop
                  c.andi     s1, -1
1101:             c.beqz     a4, 1106f
                  mulhsu     t0, a2, t0
                  slti       s6, t4, -964
                  mulh       t1, s11, ra
                  or         s3, s4, tp
1106:             andi       gp, a7, 507
                  c.li       s8, -1
                  bgeu       s2, t0, 1123f
                  c.xor      a1, s1
                  c.slli     t4, 18
                  ori        a2, s3, -695
                  sll        s6, s9, s11
                  c.addi     s11, 22
                  sltu       s4, s0, a1
                  c.xor      a3, a5
                  bgeu       s0, s1, 1121f
                  csrrs      t1, 0x340, t3
                  c.li       s1, 22
                  xor        s10, s2, a3
                  c.nop
1121:             c.and      a4, s1
                  csrrs      s2, 0x340, s1
1123:             c.srai     a1, 9
                  add        s1, s2, s1
                  c.srli     a0, 13
                  xor        t0, s2, t3
                  divu       s11, t4, ra
                  c.add      a2, gp
                  c.slli     s7, 21
                  sltu       gp, a4, s3
                  fence
                  c.srai     a0, 9
                  xori       t2, a3, -98
                  mul        a7, sp, s5
                  mulh       a3, a7, t4
                  bgeu       a4, t4, 1138f
                  rem        t4, zero, a6
1138:             csrrs      s4, 0x340, t1
                  srai       a2, s9, 10
                  bgeu       t2, s5, 1158f
                  bltu       s6, s10, 1156f
                  csrrw      s6, 0x340, s4
                  bltu       s9, tp, 1161f
                  c.srli     s0, 13
                  blt        s9, a6, 1153f
                  addi       s8, tp, 702
                  bltu       t4, s10, 1162f
                  srli       a7, ra, 6
                  sub        zero, tp, t2
                  sltu       a1, a0, s0
                  c.srli     s1, 14
                  c.mv       tp, t5
1153:             c.addi     s1, 29
                  beq        a0, a3, 1164f
                  sltu       zero, t1, a5
1156:             add        s0, a1, s5
                  auipc      zero, 885903
1158:             srl        s10, s10, s4
                  csrrci     a4, 0x340, 12
                  bne        a3, s0, 1178f
1161:             xor        a5, s8, t1
1162:             csrrw      a2, 0x340, s1
                  slli       s0, a7, 0
1164:             sltu       s11, t2, s4
                  c.li       s0, -1
                  fence
                  c.srai     a5, 26
                  c.or       a1, a3
                  c.srai     a4, 31
                  rem        a5, a0, s1
                  and        gp, t1, ra
                  bge        t3, t3, 1189f
                  mulh       a4, s5, t3
                  auipc      s10, 1034692
                  divu       a1, s10, a4
                  csrrw      a7, 0x340, gp
                  mulhu      s10, s10, gp
1178:             addi       s2, t5, 807
                  fence.i
                  c.or       s0, a2
                  div        s3, s2, sp
                  mulh       s8, s11, a6
                  fence
                  c.sub      a1, a4
                  csrrwi     s9, 0x340, 13
                  c.slli     a3, 7
                  lui        t5, 957630
                  c.mv       gp, a0
1189:             andi       s7, a2, -128
                  lui        s8, 222683
                  c.lui      tp, 2
                  sltiu      t5, s2, 262
                  csrrw      s0, 0x340, a7
                  c.bnez     a5, 1205f
                  mulhu      s9, t0, s7
                  rem        a1, a5, s1
                  fence
                  andi       s0, s11, -751
                  rem        a1, a1, s1
                  srai       s8, s11, 11
                  la         ra, sub_3
                  mulhu      s4, t4, s1
                  csrrsi     s10, 0x340, 2
                  c.lui      s9, 20
                  addi       ra, ra, 554
                  c.srli     s1, 24
                  fence.i
j_sub_1_sub_3_4:  jalr       ra, ra, -554
                  rem        a6, s3, t2
                  csrrc      a4, 0x340, a5
                  mul        a0, t0, gp
                  slli       gp, t2, 2
                  c.sub      s0, a3
                  ori        a7, t5, 1003
                  slli       tp, a1, 20
1205:             c.srai     s0, 12
                  c.beqz     a5, 1218f
                  slli       a3, s8, 13
                  mul        t2, t0, a0
                  srai       t0, t0, 24
                  c.srai     a1, 10
                  c.andi     a3, -1
                  fence.i
                  xor        s11, t3, a4
                  lui        s11, 182335
                  slli       a0, tp, 13
                  bne        s7, s11, 1218f
                  lui        t5, 787783
1218:             bge        a7, t2, 1229f
                  csrrci     tp, 0x340, 27
                  c.sub      a5, a4
                  beq        s8, t4, 1233f
                  mulhsu     s11, s3, sp
                  bltu       s11, s11, 1233f
                  csrrci     s7, 0x340, 2
                  andi       zero, s5, 584
                  add        a5, t1, a1
                  c.li       t2, 16
                  nop
1229:             sltu       s6, a4, t0
                  srli       t1, t1, 13
                  remu       s1, sp, t1
                  andi       a3, s3, 265
1233:             beq        s0, a7, 1242f
                  beq        a6, s11, 1236f
                  lui        s2, 847583
1236:             c.srai     a4, 22
                  nop
                  c.li       s7, -1
                  c.add      s3, a7
                  c.srli     a5, 20
                  c.li       s10, -1
1242:             srai       gp, s1, 16
                  c.add      s1, s3
                  remu       tp, a2, s9
                  csrrs      s3, 0x340, t6
                  c.sub      s1, a1
                  csrrsi     s2, 0x340, 6
                  sra        a2, t0, a5
                  auipc      s6, 920679
                  mulhsu     a1, a3, t5
                  beq        s4, t0, 1259f
                  div        tp, a3, sp
                  mulhu      t5, a1, t5
                  or         tp, s3, a2
                  csrrsi     a6, 0x340, 6
                  sub        t4, a5, a0
                  ori        ra, s7, 887
                  c.xor      a4, a1
1259:             slti       t6, a7, 346
                  c.and      s0, a1
                  csrrsi     a7, 0x340, 17
                  mulhsu     a6, tp, s8
                  c.srai     a1, 28
                  remu       s4, s8, sp
                  bge        t6, a1, 1280f
                  c.mv       t2, a5
                  csrrw      zero, 0x340, a7
                  c.mv       s2, s2
                  srli       s8, t3, 19
                  c.mv       tp, a2
                  bne        a1, t1, 1290f
                  add        a0, a3, t2
                  add        t6, s11, a1
                  sll        a6, a0, a7
                  c.sub      a2, a0
                  rem        s1, t2, tp
                  remu       a2, a7, s10
                  rem        s8, a7, t0
                  and        s6, a4, t6
1280:             slti       a0, zero, 36
                  sltu       s2, ra, s5
                  sll        s1, s10, t2
                  blt        a4, s9, 1288f
                  csrrs      a1, 0x340, a0
                  xor        s8, s10, s1
                  csrrc      s6, 0x340, a0
                  c.bnez     a5, 1302f
1288:             c.beqz     a3, 1300f
                  sltiu      a1, a3, -935
1290:             xor        gp, s6, s8
                  slti       s10, a1, 819
                  c.srli     a2, 16
                  c.bnez     a3, 1311f
                  bne        s11, a3, 1305f
                  fence.i
                  andi       s6, tp, 100
                  remu       s10, a0, a6
                  sltu       ra, t2, a3
                  csrrsi     s2, 0x340, 2
1300:             auipc      s0, 536481
                  sll        a5, s6, s6
1302:             fence
                  xor        s9, s11, t5
                  sub        s2, s10, t4
1305:             mulhsu     s0, t5, t1
                  c.andi     a4, -1
                  xor        a4, t0, s11
                  mulhsu     zero, t5, t0
                  c.nop
                  slti       s1, gp, -786
1311:             divu       a2, s5, s10
                  c.srai     s1, 30
                  bgeu       s6, t0, 1324f
                  c.lui      t6, 21
                  c.xor      a0, a4
                  bne        t2, sp, 1324f
                  csrrsi     t5, 0x340, 7
                  and        s2, s9, s3
                  nop
                  mulh       a3, a2, gp
                  c.li       s4, -1
                  csrrci     a4, 0x340, 31
                  csrrw      a0, 0x340, s4
1324:             mul        s9, s4, s7
                  csrrsi     t2, 0x340, 0
                  csrrc      t6, 0x340, s2
                  c.srai     a2, 31
                  slli       a1, sp, 16
                  beq        gp, t2, 1347f
                  c.xor      a1, s0
                  ori        s0, gp, 695
                  fence
                  c.addi     a1, 10
                  or         a3, a5, t2
                  c.nop
                  c.xor      a1, a4
                  c.and      a1, a2
                  sub        s1, s4, s10
                  csrrwi     a5, 0x340, 29
                  mulh       a3, s8, t6
                  mul        tp, s8, t0
                  slti       ra, s9, -969
                  c.srli     s0, 21
                  addi       gp, t3, -556
                  mul        a3, s9, sp
                  lui        a6, 348053
1347:             slt        t4, s1, a4
                  lui        s10, 730763
                  auipc      s10, 274631
                  and        a4, sp, s2
                  mul        t5, ra, a3
                  c.nop
                  andi       s0, a7, 311
                  c.xor      a5, a4
                  div        t2, gp, s11
                  div        gp, t0, s7
                  csrrci     s10, 0x340, 11
                  c.addi     a6, -1
                  mulhsu     s11, a7, t2
                  slt        tp, s11, s10
                  rem        t1, a0, gp
                  fence.i
                  c.srli     a0, 30
                  slti       a2, sp, -935
                  and        s3, t2, t5
                  c.or       a2, s1
                  addi       zero, t6, 810
                  c.xor      s0, a4
                  c.andi     a0, -1
                  c.add      a6, a7
                  auipc      ra, 206027
                  c.or       a3, a1
                  csrrci     ra, 0x340, 11
                  beq        s8, s4, 1387f
                  c.add      tp, sp
                  c.sub      a2, a0
                  bge        s7, s0, 1379f
                  c.and      s0, a1
1379:             bltu       t1, s2, 1380f
1380:             mulh       s3, s4, t6
                  fence.i
                  slti       s11, t3, 271
                  c.bnez     a5, 1401f
                  beq        a1, a0, 1389f
                  c.and      a4, a2
                  c.andi     a2, -1
1387:             andi       a1, t5, 291
                  bge        a2, a0, 1407f
1389:             sll        s3, s5, s8
                  andi       a7, a5, -294
                  c.nop
                  c.add      tp, s1
                  c.andi     a2, -1
                  xori       a0, sp, -496
                  c.srai     s0, 4
                  slli       t1, gp, 30
                  xor        s0, tp, a6
                  mul        a7, ra, a4
                  andi       t0, s11, 592
                  ori        t4, a5, -154
1401:             bgeu       t3, ra, 1416f
                  slti       s4, t6, -898
                  or         t0, a0, s11
                  add        s4, a5, s8
                  mulhu      s8, s1, t6
                  c.addi     ra, 9
1407:             sll        s9, t2, s5
                  c.beqz     a4, 1416f
                  bge        t6, s0, 1411f
                  c.addi     t0, -1
1411:             mulh       ra, a2, s2
                  and        a6, s9, t0
                  rem        a2, s2, s10
                  mul        s8, s5, s11
                  ori        tp, s10, 847
1416:             srai       a3, t0, 25
                  srl        s11, tp, s10
                  c.lui      ra, 8
                  csrrwi     s0, 0x340, 1
                  fence.i
                  csrrci     tp, 0x340, 3
                  add        a0, a7, a5
                  sub        s7, t4, s9
                  srai       a3, a0, 28
                  nop
                  mulhu      t5, s10, a5
                  csrrw      tp, 0x340, s8
                  auipc      a4, 336255
                  auipc      t6, 882559
                  srai       t5, t1, 6
                  c.add      t0, t5
                  c.and      s0, a3
                  auipc      a1, 998816
                  sra        t5, s11, a5
                  mulhu      a0, ra, a0
                  add        s11, s9, s4
                  rem        t6, s9, s7
                  c.lui      s9, 14
                  mulh       a5, t5, a4
                  div        a0, s3, s5
                  c.bnez     s0, 1445f
                  c.li       a7, -1
                  mulhsu     s10, t0, t4
                  slt        s7, ra, a5
1445:             ori        a1, s8, -747
                  csrrsi     s11, 0x340, 7
                  remu       a4, a6, sp
                  srai       s1, a2, 25
                  sra        a1, a4, a5
                  sltu       a6, zero, a0
                  beq        s11, t2, 1468f
                  div        s2, t2, t0
                  bgeu       a1, s7, 1466f
                  sll        gp, a1, s11
                  csrrwi     s1, 0x340, 18
                  c.add      a6, s4
                  xori       s6, a7, 934
                  csrrwi     ra, 0x340, 18
                  sltu       s7, zero, s9
                  bgeu       t4, tp, 1468f
                  c.bnez     a5, 1480f
                  csrrci     s7, 0x340, 15
                  c.mv       s1, s3
                  c.sub      s0, a0
                  csrrs      a2, 0x340, s1
1466:             mulh       a5, t1, a0
                  sra        a0, a5, t3
1468:             srli       t1, a0, 12
                  c.mv       t2, s11
                  c.xor      a2, a1
                  srli       t2, a2, 7
                  mulh       a4, s8, s8
                  slli       s6, a6, 9
                  fence
                  sra        a4, a0, t1
                  srli       s4, t2, 31
                  csrrw      ra, 0x340, a3
                  bltu       sp, s2, 1496f
                  csrrci     s6, 0x340, 24
1480:             c.bnez     s0, 1493f
                  sltu       a1, t5, sp
                  fence.i
                  remu       zero, t5, s4
                  nop
                  mul        s7, s6, s0
                  sra        t1, s2, t3
                  srli       t4, s5, 6
                  csrrsi     t1, 0x340, 15
                  slt        a4, t4, a3
                  csrrci     s3, 0x340, 9
                  divu       t1, a4, s0
                  bltu       t3, sp, 1504f
1493:             c.mv       a0, s0
                  c.srai     a1, 7
                  srai       a7, s1, 18
1496:             add        a6, t3, s3
                  csrrs      a0, 0x340, tp
                  la         t2, region_0+3019 #start load_store_instr_stream_1
                  la         s2, region_0+1958 #start load_store_instr_stream_0
                  la         s10, region_0+3910 #start load_store_instr_stream_2
                  la         ra, region_0+3909 #start load_store_instr_stream_4
                  lb         gp, -3(s2)
                  sb         s1, 53(t2)
                  la         a2, region_0+3702 #start load_store_instr_stream_3
                  lh         a6, -16(a2)
                  lhu        a6, -59(ra)
                  lb         s11, -32(ra)
                  sb         s9, -5(s2)
                  sw         zero, -130(s10)
                  lbu        tp, 31(a2)
                  lb         gp, 62(t2)
                  lb         a0, 7(s2)
                  lbu        s3, -814(s10)
                  sb         t2, 34(t2)
                  sb         zero, -14(s2)
                  lb         t5, 13(s2)
                  lw         s4, 7(ra)
                  lb         s3, -61(a2)
                  sb         a7, -285(s10)
                  sb         t1, 55(t2)
                  sb         a3, -15(a2)
                  lbu        a1, 37(ra)
                  sb         t0, -1213(s10)
                  lbu        s3, -1(s2)
                  lb         a7, -4(ra)
                  sb         t1, -1571(s10)
                  sb         a3, 15(s2)
                  sb         sp, 26(ra)
                  lbu        t4, 6(s2)
                  sh         a7, -43(t2)
                  sh         t2, 4(a2)
                  lhu        t5, -5(t2)
                  lh         s3, 27(t2) #end load_store_instr_stream_1
                  lbu        t5, -22(ra) #end load_store_instr_stream_4
                  lb         gp, 11(s2)
                  lhu        a4, -1572(s10) #end load_store_instr_stream_2
                  lbu        s3, 1(a2)
                  lh         t5, 52(a2) #end load_store_instr_stream_3
                  sb         s10, 1(s2) #end load_store_instr_stream_0
                  c.sub      a1, a3
                  c.add      a0, a3
                  div        s7, ra, t0
                  blt        s0, s0, 1520f
                  mulhu      s10, s7, a5
                  mul        tp, s3, t3
1504:             c.lui      s0, 4
                  csrrs      s0, 0x340, t5
                  c.nop
                  c.andi     s1, -1
                  fence
                  add        a5, s2, zero
                  bge        tp, a3, 1512f
                  sltu       a0, t4, t1
1512:             sra        a0, t0, a2
                  c.andi     s1, -1
                  bge        s1, a4, 1529f
                  csrrs      gp, 0x340, t2
                  csrrsi     ra, 0x340, 8
                  add        t1, s10, a6
                  c.li       a1, -1
                  c.or       a1, a5
1520:             c.li       tp, 20
                  beq        t5, a3, 1539f
                  ori        t6, a6, -191
                  c.andi     a4, 16
                  nop
                  csrrs      t0, 0x340, s10
                  blt        s0, a4, 1545f
                  sltiu      a0, s1, -334
                  sltu       t1, a0, t2
1529:             beq        gp, a7, 1531f
                  csrrs      a2, 0x340, s3
1531:             c.nop
                  c.addi     ra, 26
                  csrrci     s2, 0x340, 14
                  lui        s11, 353724
                  c.beqz     a0, 1544f
                  c.or       a0, a1
                  add        a7, s4, a6
                  c.add      s6, s1
1539:             and        gp, a5, a4
                  fence
                  xori       t0, s7, 92
                  slli       t1, t2, 22
                  sltiu      s9, t0, 959
1544:             srl        zero, a2, s8
1545:             auipc      s8, 871100
                  c.bnez     a4, 1564f
                  csrrci     a7, 0x340, 2
                  c.mv       s2, t3
                  divu       a4, a1, s11
                  rem        tp, tp, s6
                  csrrc      s11, 0x340, s6
                  remu       s1, s8, t5
                  c.srai     a5, 14
                  slt        a0, t2, t1
                  rem        a3, a0, s0
                  and        s7, a4, sp
                  xor        s9, s6, t0
                  c.mv       t6, s9
                  add        t0, s9, s5
                  csrrc      s9, 0x340, tp
                  div        s1, s10, s9
                  andi       a2, a3, 651
                  bge        a4, ra, 1581f
1564:             srl        s10, a7, gp
                  srl        t2, gp, s10
                  fence.i
                  sltu       s11, t0, s5
                  divu       a1, a2, s4
                  c.and      s0, s0
                  csrrs      t1, 0x340, s8
                  auipc      s4, 351057
                  add        a0, t5, zero
                  c.and      a1, a2
                  sra        s7, t6, s2
                  c.mv       a6, a2
                  slti       s3, s2, 774
                  csrrc      s1, 0x340, t6
                  bne        t3, a1, 1586f
                  and        t5, t3, a5
                  c.srli     a4, 21
1581:             csrrsi     s6, 0x340, 12
                  fence.i
                  csrrsi     t5, 0x340, 0
                  c.lui      t4, 15
                  addi       ra, s3, 641
1586:             c.lui      s0, 15
                  c.and      a0, s1
                  csrrwi     s1, 0x340, 26
                  slli       t1, tp, 18
                  bgeu       t1, s4, 1603f
                  divu       a3, tp, ra
                  slt        s10, tp, ra
                  addi       s3, t3, 1008
                  srli       a0, t2, 16
                  lui        t2, 71694
                  csrrc      t5, 0x340, s5
                  sltu       a5, s9, s0
                  c.lui      t6, 14
                  blt        t4, s2, 1607f
                  c.xor      a3, a5
                  rem        s6, s8, ra
                  csrrc      t6, 0x340, s7
1603:             slt        gp, t4, zero
                  andi       s6, s4, -96
                  c.sub      a2, s1
                  bge        s3, s4, 1617f
1607:             auipc      a4, 560597
                  sltu       t4, t3, s6
                  csrrc      s4, 0x340, a4
                  c.or       a0, a2
                  csrrwi     s8, 0x340, 5
                  xor        t5, t0, a4
                  c.addi     s4, -1
                  bgeu       t5, a1, 1629f
                  addi       s10, zero, -78
                  csrrw      a4, 0x340, s7
1617:             bne        s0, a4, 1618f
1618:             bne        t1, s6, 1629f
                  csrrci     t5, 0x340, 13
                  csrrwi     t4, 0x340, 17
                  andi       s3, a0, -727
                  ori        t5, a0, 923
                  c.li       tp, 9
                  c.slli     s11, 28
                  nop
                  c.andi     a3, 29
                  c.lui      a6, 8
                  xori       s9, zero, 398
1629:             c.mv       s0, a6
                  csrrci     s10, 0x340, 21
                  c.add      t4, a5
                  bne        s1, s4, 1649f
                  csrrwi     s8, 0x340, 11
                  blt        s0, s7, 1649f
                  csrrc      t1, 0x340, a4
                  sub        t1, t1, zero
                  csrrs      s11, 0x340, sp
                  slti       tp, s10, 980
                  c.srai     a0, 14
                  slt        a3, zero, t0
                  addi       t4, zero, 170
                  blt        a2, s0, 1650f
                  divu       t0, a3, a6
                  xori       s10, a2, -141
                  or         s9, s1, s0
                  c.nop
                  ori        t6, tp, -785
                  blt        t0, a0, 1653f
1649:             beq        s8, a4, 1656f
1650:             fence.i
                  c.sub      a3, a3
                  c.addi     a3, 6
1653:             csrrw      t0, 0x340, s0
                  or         s0, s0, a5
                  lui        a5, 85524
1656:             addi       a1, s8, -424
                  and        a4, a4, a6
                  andi       s9, s7, -345
                  lw         ra, 4(sp)
                  fence
                  andi       t6, s5, 259
                  auipc      a3, 715171
                  c.li       t5, 11
                  csrrc      a4, 0x340, s2
                  and        a4, t0, s10
                  addi       sp, sp, 52
                  slli       a6, sp, 0
                  mulhsu     s8, a7, s5
5378:             c.jr x1
sub_3:            bge        a2, t0, sub_3_stack_p
                  c.slli     s1, 31
                  mulhu      s0, a6, t4
                  c.lui      t1, 31
                  c.andi     a1, -1
sub_3_stack_p:    addi       sp, sp, -64
                  csrrw      a4, 0x340, a6
                  sw         ra, 4(sp)
                  c.and      a0, a5
                  la         s4, region_1+7676 #start riscv_load_store_rand_instr_stream_8
                  lbu        a5, -123(s4)
                  sb         a5, 1609(s4)
                  lbu        t2, -1967(s4)
                  lbu        s10, 1179(s4)
                  sb         a1, 489(s4)
                  lbu        a6, -391(s4)
                  or         s2, ra, a1
                  c.slli     gp, 25
                  csrrci     a2, 0x340, 11
                  mul        t2, s0, s3
                  xori       s1, zero, 214
                  c.sub      s1, a2
                  and        t4, s1, gp
                  addi       s10, s11, -530
                  lb         a2, 890(s4)
                  fence.i
                  lbu        tp, -277(s4)
                  srl        a0, s0, s8
                  sh         s4, 572(s4)
                  sh         s6, 1444(s4)
                  xor        t4, s4, s3
                  sb         a4, -1234(s4)
                  sb         a1, 515(s4)
                  lbu        s1, -1853(s4)
                  sb         sp, -671(s4)
                  andi       a6, s7, -496
                  sb         s2, -1819(s4)
                  lbu        t2, 523(s4)
                  c.li       a0, -1
                  divu       a2, s9, a0
                  csrrsi     a2, 0x340, 28
                  csrrwi     a5, 0x340, 9
                  lhu        s3, 850(s4)
                  lui        gp, 379852
                  c.srai     a5, 20
                  slti       tp, zero, 495
                  srl        a6, sp, t4
                  lh         t2, 762(s4)
                  lbu        t6, 417(s4)
                  lbu        a7, 1483(s4)
                  c.andi     a0, 1
                  c.mv       s8, t2
                  sb         t1, 327(s4)
                  mul        a1, t4, a3
                  sh         a1, -212(s4)
                  c.or       a2, s1
                  lb         s6, 823(s4)
                  c.add      a4, t2
                  lbu        s7, -287(s4) #end riscv_load_store_rand_instr_stream_8
                  la         s4, region_1+6415 #start riscv_load_store_rand_instr_stream_4
                  lb         t6, 5(s4)
                  lw         t2, 13(s4)
                  lb         s11, -14(s4)
                  lb         t6, -14(s4)
                  add        a4, s10, s7
                  lbu        a0, -9(s4)
                  sltiu      a6, s9, -937
                  sra        a3, s3, a2
                  slti       s10, s6, 995
                  mulh       s1, s9, s4
                  lb         a3, -16(s4)
                  mulhsu     s2, s10, s10
                  mulhsu     gp, s4, a4
                  csrrs      s10, 0x340, s8
                  mulh       a4, s3, tp
                  c.andi     a5, -1
                  lh         t0, 11(s4)
                  xor        s2, t6, zero
                  srai       t4, s8, 24
                  sh         zero, 9(s4)
                  lw         s3, -11(s4)
                  lhu        s11, -15(s4)
                  sltiu      a1, gp, 402
                  sll        a0, a0, s4
                  xori       a3, a6, 910
                  rem        zero, s0, s9
                  divu       ra, sp, t1
                  csrrs      a6, 0x340, a5
                  slli       s8, s10, 1
                  or         s11, a0, a7
                  sb         a1, 2(s4)
                  lb         a6, 0(s4)
                  csrrw      s11, 0x340, s11
                  lb         gp, -8(s4) #end riscv_load_store_rand_instr_stream_4
                  la         tp, region_4+2708 #start load_store_instr_stream_2
                  la         a5, region_4+361 #start load_store_instr_stream_1
                  la         s2, region_4+1433 #start load_store_instr_stream_0
                  lw         s9, 64(tp)
                  lbu        a0, 49(a5)
                  sh         zero, -18(tp)
                  lh         s4, 85(a5)
                  lbu        a6, 245(s2)
                  lb         a3, -61(tp)
                  lb         ra, -198(s2)
                  sh         t3, -153(s2)
                  sb         t3, 11(tp)
                  lh         t2, -241(a5)
                  lbu        s4, -199(s2)
                  lbu        a6, 102(s2)
                  lb         a3, 42(s2)
                  lhu        t5, -19(a5)
                  lhu        s3, 50(tp)
                  sh         t6, 203(s2)
                  lhu        ra, -64(tp)
                  lbu        t0, 45(tp)
                  lhu        s8, -56(tp)
                  lb         a4, -72(a5) #end load_store_instr_stream_1
                  lh         s6, 26(tp) #end load_store_instr_stream_2
                  lb         a7, 137(s2) #end load_store_instr_stream_0
                  la         a1, region_2+1979 #start load_store_instr_stream_1
                  la         s0, region_2+1189 #start load_store_instr_stream_2
                  la         s4, region_2+6755 #start load_store_instr_stream_3
                  sb         s11, 11(s4)
                  sb         tp, -170(a1)
                  lb         gp, -2(s4)
                  lh         s7, 235(s0)
                  la         a6, region_2+545 #start load_store_instr_stream_0
                  lb         s10, -130(s0)
                  sb         a6, 50(a1)
                  lh         a7, -15(a6)
                  sb         ra, 2(s4)
                  sh         zero, -49(a1)
                  lh         tp, 135(s0)
                  lb         zero, -8(s4)
                  lb         t4, 199(a1)
                  sb         s4, 70(s0)
                  lb         s6, 2(s4)
                  lbu        a3, -232(s0)
                  lh         s8, -253(a1)
                  sb         t0, 238(s0)
                  lbu        zero, 32(a6)
                  lhu        s10, 101(a6)
                  lb         gp, -163(a1)
                  lb         t4, -36(a1)
                  lbu        a0, 121(a6)
                  lbu        gp, -103(a1)
                  lbu        t2, 58(a6)
                  lbu        s8, -13(s4)
                  sb         s11, 136(s0)
                  lhu        a3, -13(s4)
                  lbu        a2, 184(a1) #end load_store_instr_stream_1
                  lb         t5, -14(s0)
                  lbu        t6, -55(s0) #end load_store_instr_stream_2
                  sb         s9, -158(a6)
                  lhu        ra, -3(s4) #end load_store_instr_stream_3
                  sb         t1, -116(a6) #end load_store_instr_stream_0
                  la         s3, region_1+3197 #start load_store_instr_stream_0
                  la         a3, region_4+2686 #start load_store_instr_stream_1
                  lhu        t6, 273(s3)
                  lhu        t2, 941(s3)
                  sb         s9, -708(s3)
                  lbu        t6, -773(a3)
                  lbu        a2, 807(a3)
                  sb         sp, -1661(s3)
                  lb         a2, -1268(a3)
                  sb         sp, -85(a3)
                  sh         s4, -1683(s3)
                  lbu        s11, -1499(a3)
                  sb         a2, -957(a3) #end load_store_instr_stream_1
                  sb         a2, 1514(s3) #end load_store_instr_stream_0
                  la         t4, region_0+1362 #start riscv_load_store_rand_instr_stream_18
                  sb         sp, 201(t4)
                  rem        s2, a2, a2
                  c.sub      a3, a3
                  sb         s2, -69(t4)
                  andi       a5, ra, -848
                  lb         t2, -150(t4)
                  slli       a3, a3, 13
                  lbu        s2, 249(t4)
                  c.xor      a2, a5
                  sb         ra, -35(t4)
                  div        s4, a1, a4
                  or         s11, s5, s11
                  csrrsi     a4, 0x340, 12
                  srl        s0, zero, s9
                  mulhu      s6, s2, s4
                  or         a7, s10, t0
                  nop
                  lw         a2, -86(t4)
                  srli       s2, t3, 8
                  c.sub      s0, a1
                  c.xor      a1, a2
                  c.sub      a5, a1
                  lb         s2, -103(t4)
                  sw         a0, 126(t4)
                  lbu        t1, -199(t4)
                  csrrci     a6, 0x340, 17
                  lbu        s7, 71(t4)
                  srai       t2, s5, 16
                  lh         s1, -110(t4)
                  c.and      a1, a1
                  remu       s8, a6, zero
                  csrrw      a3, 0x340, a1
                  csrrsi     s11, 0x340, 20
                  csrrc      s8, 0x340, s10
                  c.nop
                  sra        s3, s8, s6
                  sub        gp, a1, a1
                  lbu        s4, 17(t4) #end riscv_load_store_rand_instr_stream_18
                  la         t5, region_3+332 #start riscv_load_store_rand_instr_stream_12
                  c.li       a7, 4
                  sltiu      s10, t2, -1007
                  c.lui      s10, 8
                  lbu        t1, -62(t5)
                  divu       zero, t5, s6
                  csrrs      s6, 0x340, a2
                  sh         t4, -40(t5)
                  lw         s9, -60(t5)
                  remu       t0, t6, s7
                  sh         s8, 42(t5)
                  lbu        a4, 63(t5)
                  c.li       tp, -1
                  lbu        a1, 23(t5)
                  div        a7, gp, s0
                  csrrc      a5, 0x340, s6
                  sb         t5, 45(t5)
                  lbu        s4, -38(t5)
                  xori       gp, a5, -593
                  lbu        s9, 37(t5)
                  sh         tp, -14(t5) #end riscv_load_store_rand_instr_stream_12
                  la         a1, region_4+3662 #start load_store_instr_stream_0
                  la         a0, region_1+12205 #start load_store_instr_stream_1
                  lhu        t6, 14(a1)
                  lb         s8, 34(a0)
                  sb         a3, -5(a1)
                  lbu        s0, 231(a0)
                  la         s6, region_0+1783 #start load_store_instr_stream_2
                  lbu        t2, -1(a1)
                  lb         a4, 15(a1)
                  sh         s9, -81(a0)
                  lbu        t5, -3(a1)
                  lb         s4, -13(a1)
                  lb         t0, -6(s6)
                  lbu        a5, 5(a1)
                  lb         t1, 0(s6)
                  sh         s9, -16(a1)
                  sb         a0, 8(s6)
                  lb         s10, 130(a0)
                  lbu        gp, 5(s6)
                  lbu        gp, -4(s6)
                  lb         s2, 17(a0) #end load_store_instr_stream_1
                  lbu        zero, -2(s6)
                  sb         s10, 5(a1)
                  lh         s4, -13(s6) #end load_store_instr_stream_2
                  lbu        s3, 9(a1) #end load_store_instr_stream_0
                  la         ra, region_4+3385 #start riscv_load_store_rand_instr_stream_2
                  lh         s9, 9(ra)
                  sh         a5, 9(ra)
                  srl        t5, s11, a1
                  lbu        a0, -7(ra)
                  sh         t4, -13(ra)
                  c.or       a3, s1
                  sra        t4, a6, a3
                  sh         t6, 9(ra)
                  fence.i
                  lb         t5, 8(ra)
                  sb         s0, 8(ra)
                  lbu        t4, -12(ra)
                  lh         a7, -11(ra)
                  slli       tp, s4, 14
                  lhu        t2, -5(ra)
                  lhu        a0, -5(ra)
                  xor        t6, tp, s3
                  sb         a5, 15(ra)
                  lh         t6, 1(ra)
                  sb         a0, 0(ra)
                  nop
                  lbu        s1, -3(ra)
                  lbu        s10, -12(ra)
                  csrrw      s3, 0x340, sp
                  csrrwi     s3, 0x340, 22
                  lbu        s11, -12(ra)
                  lh         s8, 9(ra)
                  div        gp, a3, s4
                  c.sub      s1, a5
                  sb         t3, 0(ra)
                  c.lui      t0, 20
                  lbu        tp, 3(ra) #end riscv_load_store_rand_instr_stream_2
                  la         s11, region_4+2997 #start riscv_load_store_rand_instr_stream_16
                  sb         s6, -1(s11)
                  sb         s4, 15(s11)
                  andi       s1, t3, 305
                  lb         a2, -10(s11)
                  fence
                  sltu       t0, s0, s9
                  csrrsi     tp, 0x340, 21
                  lb         a3, -11(s11)
                  sb         s8, 5(s11)
                  lbu        t5, -2(s11)
                  sh         s5, -1(s11)
                  lb         a4, 15(s11)
                  lb         s10, 15(s11)
                  lhu        t4, -3(s11)
                  lb         t2, 0(s11)
                  lh         s6, 1(s11)
                  lbu        s2, 14(s11)
                  slli       t4, s9, 8
                  sb         zero, 5(s11)
                  lbu        s9, 16(s11)
                  rem        ra, s7, zero
                  rem        a4, tp, t0
                  lb         s8, 14(s11)
                  sb         s6, 7(s11)
                  c.xor      a2, a2
                  lb         tp, 4(s11)
                  lbu        s3, 16(s11)
                  csrrci     s1, 0x340, 4
                  lb         s1, 0(s11)
                  sb         a2, -12(s11)
                  sb         s1, -9(s11)
                  slti       a1, a2, 504
                  lbu        t1, -3(s11)
                  c.or       s0, a2
                  sw         t1, 3(s11)
                  lb         zero, -6(s11)
                  sll        zero, t6, t3
                  lbu        zero, -12(s11) #end riscv_load_store_rand_instr_stream_16
                  la         t4, region_3+328 #start load_store_instr_stream_4
                  la         t6, region_3+96 #start load_store_instr_stream_3
                  la         a6, region_3+448 #start load_store_instr_stream_2
                  lbu        gp, -65(t6)
                  la         s10, region_3+98 #start load_store_instr_stream_1
                  lbu        a4, 397(t6)
                  sh         s1, -246(t4)
                  lbu        s2, -30(a6)
                  sb         s11, -81(t4)
                  sb         s11, -94(t4)
                  lbu        gp, 43(a6)
                  lb         s9, 5(t6)
                  la         t2, region_3+453 #start load_store_instr_stream_0
                  lb         ra, -30(t2)
                  lb         a3, 9(a6)
                  lbu        a3, 91(s10)
                  lb         a2, 55(t4)
                  lhu        t0, 25(t2)
                  sb         a5, 135(s10)
                  lbu        s8, -78(t4)
                  lbu        a1, 62(a6)
                  sh         tp, 194(s10)
                  sb         s6, -176(t4)
                  lb         s8, 37(a6)
                  lb         gp, -42(t2)
                  sb         a5, -24(t2)
                  lhu        s11, 62(a6)
                  lhu        t1, 114(s10)
                  sh         t4, -50(s10)
                  lb         a2, 41(a6)
                  lb         a4, 221(t6)
                  sw         a2, 35(t2)
                  lb         gp, -25(t2)
                  lb         t1, -17(a6)
                  lbu        s0, 38(t2)
                  lbu        a1, 212(s10)
                  sh         s10, -64(a6)
                  lw         s11, -53(t2)
                  lbu        t0, -19(t4)
                  lb         s9, -44(s10)
                  lbu        ra, -247(t4)
                  sh         s3, -41(t2)
                  sb         s8, -79(t6) #end load_store_instr_stream_3
                  lb         a7, 103(s10) #end load_store_instr_stream_1
                  lh         s2, -18(a6) #end load_store_instr_stream_2
                  lb         s7, 24(t4) #end load_store_instr_stream_4
                  sw         t4, 27(t2) #end load_store_instr_stream_0
                  la         s1, region_4+2899 #start riscv_load_store_rand_instr_stream_5
                  csrrsi     t2, 0x340, 9
                  xori       t1, t6, 76
                  csrrs      zero, 0x340, gp
                  lui        ra, 617056
                  c.add      t4, a5
                  sb         a4, 1(s1)
                  c.srai     a2, 30
                  lbu        s6, 14(s1)
                  divu       s2, tp, s10
                  srai       ra, s6, 3
                  csrrsi     t1, 0x340, 9
                  lh         a1, 13(s1)
                  c.xor      a4, a2
                  srai       a5, a0, 15
                  sub        s4, s2, a1
                  andi       gp, s9, -677
                  remu       ra, s6, a0
                  c.lui      s6, 26
                  mulhu      a2, t3, s4
                  mulh       s6, a4, s5
                  srli       s7, a6, 2
                  sh         a0, 9(s1)
                  fence.i
                  lhu        s2, 5(s1)
                  add        s0, a6, tp
                  mulhsu     a2, s7, s6
                  csrrw      t6, 0x340, s3
                  xor        a4, t4, s2
                  c.srli     a4, 29
                  sh         t5, 9(s1)
                  c.andi     s0, 8
                  or         t2, s6, a0
                  c.srai     a3, 16
                  sb         s9, 12(s1)
                  xor        s10, zero, s5
                  sb         zero, -14(s1)
                  lb         s7, -15(s1)
                  ori        ra, a7, -970
                  sb         t2, -5(s1)
                  lb         s8, 6(s1) #end riscv_load_store_rand_instr_stream_5
                  la         s10, region_0+2814 #start riscv_load_store_rand_instr_stream_7
                  lhu        t0, 146(s10)
                  sb         s0, 238(s10)
                  andi       t5, s6, -802
                  sh         ra, 200(s10)
                  c.mv       gp, s3
                  lh         s7, 188(s10)
                  c.lui      s7, 20
                  sll        a2, t4, a1
                  csrrc      s11, 0x340, a6
                  lhu        ra, -116(s10)
                  auipc      a7, 158694
                  sw         s6, 98(s10)
                  c.sub      a3, a0
                  c.slli     s2, 23
                  c.sub      a5, a3
                  lb         t1, -240(s10)
                  and        a6, s7, s9
                  lbu        a3, -229(s10)
                  lbu        a7, 239(s10)
                  sb         t2, -39(s10)
                  lbu        s6, 60(s10)
                  fence.i
                  andi       a6, a6, 397
                  csrrsi     s6, 0x340, 7
                  lbu        a7, 179(s10)
                  c.slli     a2, 8
                  slti       a2, s6, -165
                  sb         zero, 183(s10)
                  addi       s11, s1, -992
                  c.mv       s9, a4
                  ori        a7, s8, 825
                  lb         a1, 239(s10)
                  sb         a4, -240(s10)
                  sh         s1, -102(s10)
                  lb         t5, 123(s10)
                  lb         a0, -24(s10)
                  lh         s2, -146(s10)
                  andi       t2, s0, -240
                  divu       s8, s2, t4
                  lbu        s9, 15(s10)
                  csrrc      a1, 0x340, a6
                  lbu        a3, 5(s10)
                  sh         ra, 2(s10)
                  add        gp, zero, t3
                  lb         t5, 161(s10)
                  lb         s7, -222(s10)
                  mulhsu     s1, a0, s7
                  lbu        t0, 103(s10)
                  lbu        a0, -157(s10)
                  sh         t2, 176(s10) #end riscv_load_store_rand_instr_stream_7
                  la         a3, region_4+427 #start riscv_load_store_rand_instr_stream_15
                  lh         a7, -27(a3)
                  sb         t3, -28(a3)
                  sb         a1, 58(a3)
                  sll        s2, s8, a6
                  c.or       s0, s0
                  div        t4, s10, s11
                  sw         s7, -59(a3)
                  sb         s7, -26(a3)
                  lb         s6, 10(a3)
                  c.add      s9, t4
                  csrrci     t5, 0x340, 15
                  or         a1, a2, s3
                  lbu        s0, -22(a3)
                  srai       s9, t6, 30
                  lb         a2, 3(a3)
                  sb         t5, -27(a3)
                  csrrs      s8, 0x340, a5
                  lbu        s0, 12(a3)
                  c.xor      a0, s1
                  lb         t0, -37(a3)
                  sb         t2, 35(a3)
                  lh         ra, 49(a3)
                  srl        t4, ra, a3
                  lb         s2, -27(a3)
                  lbu        t6, 58(a3)
                  sb         a4, -63(a3)
                  lb         t4, 26(a3)
                  lbu        gp, -52(a3)
                  lbu        t1, 1(a3) #end riscv_load_store_rand_instr_stream_15
                  la         s2, region_4+3143 #start riscv_load_store_rand_instr_stream_14
                  sb         s2, -16(s2)
                  sb         s10, -24(s2)
                  lui        t1, 109742
                  lb         a7, 58(s2)
                  lb         gp, 58(s2)
                  sb         a1, 12(s2)
                  lb         a2, -12(s2)
                  lhu        a6, -21(s2)
                  c.li       s1, -1
                  fence
                  lbu        zero, 58(s2)
                  lbu        a2, 56(s2)
                  sh         sp, 19(s2)
                  lbu        s1, 20(s2)
                  lui        a3, 1018739
                  lbu        s7, -2(s2)
                  lbu        s10, 52(s2)
                  and        s0, s8, a6
                  sb         s0, -54(s2)
                  lbu        a5, -2(s2)
                  lw         s0, 21(s2)
                  lhu        a7, 3(s2)
                  sub        t1, a7, t2
                  lb         t2, 3(s2)
                  addi       s1, a0, 126
                  slli       t1, a6, 25
                  lb         s3, 36(s2)
                  lh         ra, 55(s2)
                  and        t4, s11, a6
                  c.add      t1, t1
                  csrrci     a1, 0x340, 26
                  fence.i
                  lb         a3, -17(s2)
                  lb         s0, -58(s2)
                  c.slli     a4, 3
                  sb         s5, -24(s2)
                  lbu        a7, -50(s2)
                  sb         t1, -30(s2)
                  sb         s6, -12(s2) #end riscv_load_store_rand_instr_stream_14
                  la         t1, region_3+388 #start riscv_load_store_rand_instr_stream_17
                  c.srai     a4, 31
                  lhu        a1, -248(t1)
                  lui        s2, 884102
                  slti       s6, a4, 578
                  srli       s11, a5, 1
                  sb         s8, -171(t1)
                  lb         t5, -99(t1)
                  csrrs      s2, 0x340, a6
                  mulhsu     s8, a1, s8
                  slti       t4, t6, 129
                  lbu        zero, 119(t1)
                  sub        s8, t3, a6
                  lbu        gp, -101(t1)
                  xor        a2, a6, a2
                  sb         t3, 5(t1)
                  c.nop
                  c.lui      tp, 10
                  sll        s1, s0, s4
                  lbu        zero, -97(t1)
                  sb         t3, 2(t1)
                  mulhsu     s10, zero, zero
                  c.or       a5, a2
                  csrrci     t5, 0x340, 25
                  lh         a4, 122(t1)
                  lb         a1, 59(t1)
                  sb         a6, 8(t1)
                  csrrw      a4, 0x340, t4
                  csrrc      s0, 0x340, s5
                  sltu       s8, s1, a0
                  auipc      zero, 973807
                  fence
                  c.sub      a5, s0
                  lbu        zero, 62(t1)
                  sb         t4, -216(t1)
                  lbu        s4, 122(t1)
                  xor        a3, s11, t6
                  lb         gp, 65(t1) #end riscv_load_store_rand_instr_stream_17
                  la         a5, region_2+3343 #start riscv_load_store_rand_instr_stream_1
                  csrrci     a6, 0x340, 30
                  lhu        t1, 11(a5)
                  lhu        s7, -3(a5)
                  c.lui      a3, 4
                  rem        a3, t4, a3
                  sb         zero, 8(a5)
                  lbu        s3, 12(a5)
                  mulh       t6, s11, a1
                  lhu        t2, 15(a5)
                  slt        a2, s4, s6
                  sb         s8, -10(a5)
                  lb         a7, -6(a5)
                  lbu        a0, 6(a5)
                  csrrw      a2, 0x340, t1
                  c.sub      a0, a0
                  xori       t4, gp, -32
                  srai       t5, a1, 18
                  lb         t6, -9(a5)
                  ori        s3, a7, -861
                  lb         a4, -6(a5)
                  lbu        a7, -1(a5)
                  lbu        t4, 2(a5)
                  lb         s6, 0(a5)
                  lhu        a1, 3(a5)
                  c.xor      a2, a5
                  lb         t4, -10(a5)
                  c.slli     s2, 12
                  sh         s4, -9(a5)
                  auipc      t5, 835334
                  lui        s0, 59678
                  divu       ra, t3, a5
                  lui        a3, 423892
                  srl        s4, t2, s10
                  lbu        s4, -5(a5) #end riscv_load_store_rand_instr_stream_1
                  la         s8, region_3+35 #start riscv_load_store_rand_instr_stream_0
                  sb         s10, -6(s8)
                  lb         s10, 170(s8)
                  sb         s2, 26(s8)
                  lb         tp, 156(s8)
                  sh         s11, -9(s8)
                  lb         a4, 154(s8)
                  lhu        a5, 247(s8)
                  lb         a4, -34(s8)
                  c.addi     s1, -1
                  lbu        a4, 235(s8)
                  lbu        tp, -27(s8)
                  lbu        a0, -25(s8)
                  lbu        s6, -22(s8)
                  c.add      s1, a2
                  c.li       t6, -1
                  lb         a7, 151(s8)
                  sll        tp, s10, t1
                  c.nop
                  sb         s0, 16(s8)
                  c.lui      t4, 20
                  sh         t1, 207(s8)
                  srli       t6, zero, 5
                  sb         t6, 68(s8)
                  lbu        zero, -8(s8)
                  lbu        s4, 111(s8)
                  lhu        zero, 11(s8)
                  c.li       a7, -1
                  sb         tp, 23(s8)
                  sw         s0, -3(s8)
                  sb         tp, 256(s8)
                  ori        s4, s4, 594
                  slli       t4, a1, 12
                  lbu        t5, 190(s8)
                  lhu        a7, -9(s8)
                  lhu        s7, 61(s8)
                  lb         s0, 178(s8)
                  lw         ra, 213(s8)
                  lb         a2, 151(s8)
                  csrrs      a1, 0x340, a3
                  mul        t1, t4, s6
                  sh         t2, 79(s8)
                  or         s3, s0, a0
                  csrrwi     t6, 0x340, 13
                  ori        t1, a0, -797
                  auipc      a5, 591266
                  sb         a1, 92(s8) #end riscv_load_store_rand_instr_stream_0
                  la         s10, region_4+1907 #start riscv_load_store_rand_instr_stream_6
                  fence.i
                  c.srai     a1, 6
                  lb         t1, 4(s10)
                  lbu        s0, -6(s10)
                  slli       gp, t4, 3
                  or         s4, t2, s0
                  andi       a1, t5, -239
                  sb         s4, -13(s10)
                  lbu        a2, 14(s10)
                  sh         t6, -3(s10)
                  lbu        gp, -12(s10)
                  lb         s7, 5(s10)
                  lbu        t1, 8(s10)
                  c.xor      a4, a3
                  lh         s11, -1(s10)
                  xori       ra, t6, -868
                  slli       a3, a6, 30
                  slt        s8, tp, a4
                  c.lui      t4, 1
                  c.addi     a2, -1
                  lh         a5, 5(s10)
                  lbu        t2, 6(s10)
                  remu       s11, s1, t3
                  sb         t3, 4(s10)
                  addi       t1, s0, 278
                  andi       s8, gp, -631
                  lh         a6, 11(s10)
                  slt        a3, s6, a3
                  mulhsu     s4, a0, a7
                  lb         s2, -6(s10)
                  mulh       s9, a0, a2
                  c.nop
                  c.add      a1, ra
                  csrrs      a5, 0x340, a7
                  c.nop
                  lbu        s0, -6(s10)
                  c.srli     a4, 27
                  remu       gp, a5, zero
                  mulhu      s8, gp, s0
                  c.srli     a0, 27
                  lb         s0, 15(s10)
                  srai       s1, s8, 27
                  lbu        s8, 10(s10)
                  c.mv       a6, a5
                  lbu        t4, 6(s10)
                  lb         a2, 4(s10)
                  lb         s1, -14(s10)
                  lbu        a2, 8(s10)
                  sb         s11, -6(s10)
                  sb         s5, -13(s10)
                  sb         s10, -10(s10)
                  csrrwi     tp, 0x340, 25
                  lui        t1, 38024
                  lbu        t4, 10(s10)
                  lbu        a6, 2(s10)
                  c.addi     tp, 23
                  sb         t5, -6(s10) #end riscv_load_store_rand_instr_stream_6
                  la         s4, region_3+122 #start load_store_instr_stream_3
                  la         t4, region_0+3679 #start load_store_instr_stream_1
                  la         s6, region_2+1467 #start load_store_instr_stream_2
                  la         t1, region_4+1286 #start load_store_instr_stream_0
                  lbu        t6, -8(s6)
                  sb         s11, 4(t4)
                  lh         a3, 312(s4)
                  sw         s11, -123(s6)
                  lbu        t0, -2(t4)
                  lbu        s10, 59(s6)
                  lbu        s0, 279(s4)
                  sb         a5, 13(t1)
                  sb         t1, -191(s6)
                  lb         s10, 16(t4)
                  lbu        a7, -10(t4)
                  lbu        tp, 124(s6)
                  sb         t1, -70(s6)
                  lhu        a1, 380(s4)
                  sh         s10, 30(t1)
                  sb         t2, 31(t1)
                  sb         s10, 41(s4)
                  lhu        a0, -7(t4)
                  sh         t4, 84(s4)
                  lbu        s2, 71(s6)
                  sh         a0, 262(s4)
                  lbu        t0, -32(t1)
                  sb         s11, 12(t4)
                  lbu        a4, -174(s6) #end load_store_instr_stream_2
                  lb         gp, -32(s4)
                  lbu        s8, -15(s4)
                  lb         t5, 253(s4) #end load_store_instr_stream_3
                  lb         a2, 4(t4) #end load_store_instr_stream_1
                  sb         s7, 48(t1) #end load_store_instr_stream_0
                  la         s7, region_4+3488 #start riscv_load_store_rand_instr_stream_10
                  div        a2, s2, s2
                  sh         t4, 100(s7)
                  sll        s4, tp, a3
                  xor        s4, s10, tp
                  c.or       a0, a4
                  sw         a0, -44(s7)
                  sb         zero, -219(s7)
                  lb         s0, 23(s7)
                  c.andi     a5, 20
                  fence.i
                  div        a2, gp, s0
                  c.and      a0, a1
                  sll        tp, s1, s1
                  lbu        ra, -25(s7)
                  lbu        a4, -79(s7)
                  srai       s6, s1, 18
                  sb         s3, 38(s7)
                  lbu        ra, -207(s7)
                  lb         a4, -92(s7)
                  c.nop
                  andi       a5, a2, 761
                  sb         s5, -89(s7)
                  c.mv       a7, t0
                  remu       s8, gp, a6
                  csrrs      a3, 0x340, sp
                  lbu        a2, 111(s7)
                  lui        t1, 391829
                  c.addi     s10, -1
                  lw         a4, 176(s7)
                  lb         a3, 73(s7)
                  remu       a2, s4, t3
                  lb         gp, -81(s7)
                  nop
                  c.srli     a4, 2
                  sh         a5, -198(s7)
                  lhu        s9, 40(s7)
                  nop
                  sb         gp, 152(s7)
                  sb         zero, -149(s7) #end riscv_load_store_rand_instr_stream_10
                  la         s0, region_0+2819 #start riscv_load_store_rand_instr_stream_11
                  lbu        a6, 121(s0)
                  sw         s5, -31(s0)
                  fence
                  lb         tp, 112(s0)
                  sb         s9, 76(s0)
                  c.and      s1, a2
                  c.andi     a3, 3
                  mulhsu     t2, t4, s10
                  lb         t5, -148(s0)
                  sh         a7, -177(s0)
                  lb         s3, -218(s0)
                  lh         a1, -35(s0)
                  srai       t4, s6, 2
                  sb         s7, -194(s0)
                  srli       t2, t3, 13
                  mul        t6, s1, gp
                  lb         s1, -170(s0)
                  lb         t4, 66(s0)
                  slt        zero, t4, sp
                  ori        gp, s3, 780
                  sh         s1, 85(s0)
                  sh         s6, -197(s0)
                  lb         t2, -95(s0)
                  sh         t4, -145(s0)
                  sh         t4, 151(s0)
                  sub        s3, s4, t6
                  lbu        s1, -203(s0)
                  xori       zero, a0, -557
                  sb         sp, 128(s0)
                  lui        tp, 532979
                  lbu        s11, -152(s0)
                  lhu        a6, 211(s0)
                  sb         a2, -88(s0)
                  sw         t3, -175(s0)
                  lh         a6, -243(s0)
                  rem        s7, s9, s7
                  lui        t2, 169183
                  sb         a0, 83(s0)
                  rem        t6, a0, a1
                  mulhu      tp, t1, s8
                  sh         a4, -149(s0)
                  csrrc      s7, 0x340, t3
                  sh         t5, 229(s0)
                  c.srli     a0, 2
                  divu       s7, a2, a3
                  c.or       s1, a4
                  sb         a6, 136(s0)
                  sh         s7, 169(s0)
                  lh         t0, -35(s0)
                  lui        a3, 286392
                  ori        t4, a5, 41
                  sltiu      s6, a7, -813
                  srli       s10, s9, 14
                  lbu        gp, 102(s0) #end riscv_load_store_rand_instr_stream_11
                  la         s6, region_4+3203 #start riscv_load_store_rand_instr_stream_9
                  lh         t5, -29(s6)
                  sb         s8, -39(s6)
                  sh         s8, -49(s6)
                  srli       t5, s8, 29
                  lb         a1, -32(s6)
                  csrrs      t4, 0x340, s10
                  lhu        s0, -23(s6)
                  sb         s6, 31(s6)
                  lb         t5, 24(s6)
                  or         t1, t5, sp
                  c.mv       gp, t1
                  c.srli     a4, 28
                  xor        t4, s11, s4
                  lb         a2, -14(s6)
                  csrrc      a6, 0x340, s4
                  mul        s4, t1, s9
                  mulhu      a0, a1, gp
                  rem        s1, zero, sp
                  lhu        a0, -25(s6)
                  sra        zero, s2, t5
                  lbu        a7, -28(s6)
                  srli       a3, zero, 9
                  lb         s3, -49(s6)
                  and        zero, t0, t6
                  lbu        t6, 45(s6)
                  lh         t6, 17(s6)
                  sb         s6, 14(s6)
                  addi       t1, s5, 755
                  sb         t3, 55(s6)
                  lb         t1, -58(s6)
                  c.slli     a1, 7
                  lui        s0, 358903
                  csrrci     t4, 0x340, 6
                  srl        a4, a5, s8
                  or         s3, t6, t6
                  c.lui      s3, 26
                  c.andi     a2, -1
                  and        s1, a7, s8
                  lbu        t2, -24(s6)
                  sb         a3, -53(s6)
                  sb         t2, -22(s6)
                  lbu        a2, 23(s6)
                  lbu        a0, 35(s6)
                  c.add      s7, t0
                  c.srai     a4, 15
                  sltu       s3, s7, s2
                  lh         s8, -17(s6)
                  sll        a5, s11, s2
                  lb         t4, -59(s6)
                  c.slli     t2, 14
                  c.slli     s9, 12
                  sb         s10, 6(s6)
                  c.slli     s9, 20
                  sb         t4, -43(s6)
                  lbu        gp, 15(s6)
                  c.add      a4, s4
                  sh         s11, -41(s6) #end riscv_load_store_rand_instr_stream_9
                  la         t2, region_1+7102 #start riscv_load_store_rand_instr_stream_3
                  xor        a2, s7, a6
                  sh         s11, -4(t2)
                  lb         zero, -11(t2)
                  csrrs      s11, 0x340, s5
                  fence.i
                  lw         s7, -6(t2)
                  sltu       s3, a4, s10
                  sltiu      a7, a1, -199
                  srl        t4, s3, sp
                  lhu        a4, -16(t2)
                  fence
                  c.addi     a7, 24
                  sw         t1, 2(t2)
                  lbu        s1, 7(t2)
                  lbu        t1, -5(t2)
                  sb         s9, 1(t2)
                  lb         a6, -11(t2)
                  lb         tp, 16(t2)
                  mulh       a0, zero, s9
                  lbu        t4, -7(t2)
                  lb         s8, 4(t2)
                  lb         a0, 11(t2)
                  lh         t6, -8(t2)
                  lb         a2, 11(t2)
                  lh         s7, -10(t2)
                  auipc      zero, 760359
                  mulhu      gp, a0, a6
                  csrrwi     a3, 0x340, 2
                  lhu        a3, -10(t2)
                  sh         a0, 4(t2)
                  sb         s7, 11(t2)
                  c.mv       s8, s11
                  csrrs      a3, 0x340, a4
                  sb         t5, 9(t2)
                  lbu        t0, -16(t2)
                  sb         s6, 4(t2)
                  c.andi     a5, 16
                  lb         a1, -7(t2)
                  auipc      s0, 491318
                  lbu        s2, 1(t2)
                  fence
                  sb         t3, 4(t2)
                  lh         s1, 0(t2)
                  sb         a7, 8(t2)
                  c.add      s6, s0
                  lb         s11, -12(t2)
                  lb         s9, 12(t2) #end riscv_load_store_rand_instr_stream_3
                  la         t5, region_3+466 #start load_store_instr_stream_0
                  sb         s4, -40(t5)
                  la         s7, region_0+4001 #start load_store_instr_stream_3
                  lb         s3, -667(s7)
                  la         s8, region_1+4771 #start load_store_instr_stream_1
                  lhu        a6, -151(s7)
                  la         t0, region_2+4836 #start load_store_instr_stream_2
                  sb         t6, -786(s7)
                  lh         s0, -2(t0)
                  lbu        a4, -909(s7)
                  lh         a1, 197(s8)
                  sb         s7, 12(t0)
                  lbu        gp, -1137(s7)
                  sb         a5, -17(t5)
                  lb         a2, -710(s7)
                  lb         t2, 146(s8)
                  lbu        t2, -52(s8)
                  lw         s10, 6(t5)
                  lbu        a2, 37(t5)
                  lbu        s2, -1878(s7)
                  lw         s10, 22(t5)
                  lbu        s4, -51(t5)
                  lhu        s10, -229(s8)
                  lb         a2, -15(t0)
                  lh         gp, -187(s8)
                  lb         a4, 36(t5)
                  lhu        a6, 12(t5)
                  sw         s9, 209(s8)
                  sb         t0, -173(s8)
                  lb         zero, -146(s8)
                  lb         s4, -14(t0)
                  lb         a3, -963(s7)
                  sw         t0, -413(s7)
                  lhu        a2, -217(s8) #end load_store_instr_stream_1
                  lb         s9, 4(t0) #end load_store_instr_stream_2
                  sb         s10, -300(s7) #end load_store_instr_stream_3
                  lb         zero, -9(t5) #end load_store_instr_stream_0
                  la         a3, region_1+6274 #start riscv_load_store_rand_instr_stream_13
                  lh         a7, 26(a3)
                  c.nop
                  lui        t1, 140041
                  mulhu      s8, a0, s8
                  csrrs      s1, 0x340, a6
                  sra        ra, t2, s8
                  auipc      s11, 827175
                  lh         t2, 32(a3)
                  lb         t5, 59(a3)
                  c.xor      a5, a3
                  sltiu      a0, s10, 308
                  andi       s10, a3, 298
                  lh         t5, 34(a3)
                  sb         ra, -33(a3)
                  lb         t1, -45(a3)
                  lb         t2, -29(a3)
                  sra        a6, t0, t3
                  lb         a7, 35(a3)
                  sb         s10, -27(a3)
                  lb         s3, -44(a3)
                  lhu        s11, -44(a3)
                  mulhu      a6, a5, a7
                  or         t2, a6, s8
                  lbu        tp, -59(a3)
                  xori       s11, sp, -459
                  sll        s10, gp, s10
                  lbu        t5, 8(a3)
                  lbu        t1, 57(a3)
                  lb         a2, -5(a3) #end riscv_load_store_rand_instr_stream_13
                  la         a2, region_3+347 #start load_store_instr_stream_1
                  la         a3, region_3+484 #start load_store_instr_stream_4
                  la         s8, region_3+334 #start load_store_instr_stream_3
                  lbu        a0, -249(a3)
                  la         t2, region_3+180 #start load_store_instr_stream_2
                  lb         s4, -192(a2)
                  sb         ra, -279(a3)
                  lb         a0, -7(t2)
                  sb         tp, -241(a2)
                  lb         s1, 3(t2)
                  la         a5, region_3+345 #start load_store_instr_stream_0
                  lhu        a1, 0(t2)
                  sb         ra, 5(t2)
                  lh         a4, -232(a3)
                  lh         t0, -227(a2)
                  sb         a3, -378(a3)
                  sh         s2, -106(s8)
                  lh         a1, 42(s8)
                  sb         t5, -60(a5)
                  sb         t2, -6(a2)
                  lbu        s9, -276(a3)
                  lbu        s2, -94(a5)
                  lhu        gp, -135(a5)
                  lw         s6, -220(a3)
                  sh         s10, 101(a5)
                  sw         zero, -273(a5)
                  lbu        t1, -140(a5)
                  lb         s3, -439(a3)
                  lbu        t1, -135(s8)
                  lw         zero, 12(t2) #end load_store_instr_stream_2
                  lb         a0, -445(a3)
                  lhu        s6, -236(s8)
                  sb         t6, -82(a2)
                  sb         a2, 44(a2) #end load_store_instr_stream_1
                  lb         a7, -363(a3) #end load_store_instr_stream_4
                  lbu        t6, -250(s8) #end load_store_instr_stream_3
                  sb         s2, -345(a5) #end load_store_instr_stream_0
                  sltu       s1, a5, t4
                  csrrci     s3, 0x340, 2
                  sltiu      a4, s11, 573
                  sll        s2, tp, tp
                  beq        t1, s3, 15f
                  c.beqz     s1, 12f
                  srl        s9, zero, t1
                  c.srli     a4, 20
                  sltu       a7, a7, s5
                  bltu       t6, a0, 25f
                  c.and      a3, a2
                  slt        a0, zero, ra
12:               csrrc      t6, 0x340, s5
                  c.add      s1, t0
                  csrrwi     a6, 0x340, 6
15:               c.and      a0, a3
                  sra        a4, a7, s4
                  blt        s5, s5, 32f
                  remu       a2, t1, a6
                  divu       ra, a0, t0
                  c.srli     a2, 4
                  sra        s9, sp, s4
                  bgeu       s7, a6, 24f
                  nop
24:               mul        a6, ra, s11
25:               srl        s7, a4, s9
                  sra        a2, s8, t2
                  mul        s0, t4, s9
                  and        s9, s9, zero
                  sub        t6, a4, a5
                  nop
                  c.slli     a0, 9
32:               sra        a4, t4, s0
                  add        t0, t2, zero
                  mulhsu     s4, s4, t6
                  ori        s9, s3, -110
                  c.xor      a3, a0
                  sra        s0, a4, a7
                  sub        s3, s11, a3
                  c.or       s0, a4
                  bltu       s5, t3, 51f
                  sltiu      s11, a1, 680
                  sub        s2, t3, s10
                  mulh       t5, t0, s0
                  remu       s10, a1, s11
                  add        s11, t0, s0
                  sub        s2, a6, t2
                  bltu       t3, t0, 48f
48:               fence
                  mulhu      a2, a7, s8
                  bge        s10, t4, 52f
51:               mul        t2, a2, s5
52:               beq        s0, a5, 62f
                  csrrci     ra, 0x340, 31
                  sra        ra, t1, s3
                  nop
                  or         s2, a2, t4
                  auipc      t1, 298828
                  csrrwi     s11, 0x340, 22
                  sll        s10, a4, a6
                  csrrci     tp, 0x340, 1
                  c.beqz     a4, 68f
62:               c.xor      a1, a1
                  c.sub      a3, a1
                  auipc      s0, 404705
                  bgeu       a3, a0, 71f
                  andi       t1, s2, -979
                  slli       s8, a4, 7
68:               c.lui      s6, 26
                  sltiu      s10, sp, 417
                  xori       a2, t6, 608
71:               xori       ra, s1, 61
                  c.xor      a2, a0
                  addi       tp, a6, -645
                  slli       s6, s8, 7
                  lui        t5, 404236
                  xori       a0, t4, 123
                  sub        s8, t3, t0
                  c.li       a4, 5
                  c.srai     s0, 21
                  bgeu       sp, sp, 88f
                  blt        t5, s5, 82f
82:               remu       t6, a1, a0
                  remu       a7, s2, a0
                  div        s6, a6, s2
                  sll        a7, a3, s4
                  ori        t0, s11, -465
                  add        t5, s7, a3
88:               xori       zero, s11, 851
                  and        a6, s3, sp
                  c.add      t1, a4
                  mulhu      s10, s11, s5
                  sll        s1, s5, t0
                  c.andi     s1, 5
                  sub        a7, s4, zero
                  slt        tp, a0, a7
                  csrrsi     s11, 0x340, 7
                  srai       a2, s7, 15
                  slt        tp, t6, a6
                  and        s1, s1, s2
                  c.srli     a3, 14
                  csrrci     a2, 0x340, 6
                  c.and      a0, s0
                  blt        s1, s2, 117f
                  c.or       a5, a2
                  c.addi     tp, -1
                  addi       gp, a6, 283
                  csrrs      s7, 0x340, s2
                  c.andi     s0, -1
                  slti       ra, s6, 981
                  c.and      a3, a3
                  c.andi     s1, -1
                  addi       t0, s0, 873
                  c.slli     s9, 7
                  c.srai     a2, 25
                  c.srai     a5, 7
                  c.mv       t6, s5
117:              c.slli     s8, 9
                  c.srai     a5, 31
                  mulh       a2, s11, s0
                  bltu       a5, s10, 136f
                  divu       a7, s3, s0
                  csrrci     a6, 0x340, 24
                  slt        ra, t6, a7
                  sra        a7, ra, t4
                  c.add      t1, a1
                  and        a3, ra, a5
                  sltu       tp, s1, s7
                  srai       a2, a7, 12
                  lui        t5, 126881
                  c.slli     a2, 25
                  c.slli     s4, 28
                  c.add      s6, t4
                  c.li       s10, -1
                  or         a5, gp, a3
                  bgeu       a5, t5, 154f
136:              csrrs      a1, 0x340, t0
                  remu       a3, s10, s5
                  slt        s8, s7, a4
                  or         t0, ra, tp
                  addi       a4, s4, 302
                  lui        s10, 226901
                  fence.i
                  rem        ra, s8, a6
                  nop
                  rem        a2, s1, s3
                  blt        s2, s4, 154f
                  blt        a5, a2, 165f
                  srai       s3, s5, 13
                  srli       s3, t6, 16
                  slli       gp, a7, 1
                  andi       a5, s8, 53
                  bgeu       s4, a1, 155f
                  and        s6, s1, s3
154:              c.nop
155:              slli       a1, s7, 21
                  slli       s8, t0, 23
                  csrrci     s0, 0x340, 31
                  sub        a0, s4, t1
                  c.and      s0, a0
                  csrrwi     a2, 0x340, 24
                  c.nop
                  bne        t6, zero, 165f
                  slti       a5, a2, 815
                  c.slli     t4, 13
165:              srli       a6, s8, 14
                  fence
                  nop
                  c.or       a0, s0
                  mulhu      t2, s9, s7
                  bne        s4, s5, 179f
                  mulh       a4, s7, s8
                  sltiu      s10, a0, 3
                  blt        a4, a7, 185f
                  sltiu      zero, s3, -620
                  c.mv       a6, t0
                  and        s7, t2, s1
                  bge        t4, t5, 196f
                  c.add      s8, a1
179:              nop
                  c.lui      t6, 24
                  blt        t5, t0, 196f
                  slti       s10, t1, 636
                  csrrs      tp, 0x340, a0
                  c.addi     ra, -1
185:              remu       s3, a3, t4
                  c.beqz     a2, 197f
                  c.srli     a3, 23
                  mulhsu     gp, ra, t2
                  csrrw      a3, 0x340, s6
                  c.or       a2, a0
                  mulh       t0, s3, a6
                  c.add      t2, ra
                  bltu       s6, a2, 207f
                  c.srai     s1, 28
                  c.bnez     a2, 210f
196:              slti       a0, s4, 580
197:              nop
                  addi       a0, tp, 658
                  xori       a2, t2, -420
                  c.addi     a7, -1
                  mulhu      a1, a1, t3
                  xor        s7, a7, s11
                  auipc      s11, 952057
                  csrrs      s1, 0x340, t1
                  c.or       a4, a3
                  srai       a2, s3, 7
207:              blt        ra, s10, 215f
                  srli       s9, s2, 17
                  divu       a6, s0, s3
210:              addi       s10, a5, -791
                  beq        s3, s3, 227f
                  sll        s2, s10, ra
                  mul        t5, s8, tp
                  ori        s8, s5, -399
215:              sltiu      t5, s2, 1012
                  sltiu      s11, s6, 975
                  xori       t4, tp, -728
                  bge        zero, t5, 219f
219:              ori        s2, a3, 774
                  auipc      a6, 612110
                  csrrc      t2, 0x340, t4
                  c.bnez     a5, 236f
                  nop
                  slt        t4, s10, t1
                  c.li       s10, 26
                  lui        t0, 53521
227:              c.andi     a4, 9
                  c.mv       t0, s1
                  c.or       a1, a4
                  srai       gp, ra, 14
                  bltu       s1, s6, 241f
                  bgeu       t2, t5, 233f
233:              c.slli     tp, 30
                  csrrc      a0, 0x340, a5
                  auipc      t5, 578764
236:              slli       a1, s10, 30
                  div        s11, s9, a2
                  bge        a1, tp, 254f
                  slli       s2, s5, 10
                  c.andi     a4, -1
241:              div        a0, a6, a3
                  c.srai     a0, 2
                  c.add      a1, s10
                  c.mv       s8, s9
                  andi       a1, s7, 181
                  c.bnez     a3, 261f
                  ori        t2, s4, -116
                  rem        s1, zero, a4
                  c.addi     a7, 27
                  xori       s6, s2, 80
                  csrrw      a3, 0x340, s8
                  c.addi     s1, -1
                  c.addi     t6, 22
254:              csrrc      t4, 0x340, t0
                  mul        t2, s8, a4
                  c.slli     a2, 5
                  csrrs      a0, 0x340, s2
                  addi       a0, s6, 999
                  csrrwi     a7, 0x340, 22
                  c.srai     s0, 28
261:              srl        tp, s10, a7
                  mulh       a2, a1, s8
                  sltiu      a1, ra, -434
                  c.lui      a2, 4
                  beq        a5, s8, 276f
                  andi       t4, s10, 144
                  c.add      a6, s3
                  mul        s6, t2, t3
                  sub        s8, a4, t6
                  csrrc      s0, 0x340, a3
                  bgeu       s0, s8, 272f
272:              sltu       t4, a1, t0
                  add        t0, ra, tp
                  sltiu      a5, s9, -195
                  csrrs      a0, 0x340, t6
276:              c.srai     s0, 20
                  srli       t1, s10, 0
                  csrrwi     a0, 0x340, 8
                  csrrs      a2, 0x340, s11
                  mulhsu     s11, s4, sp
                  auipc      a2, 852566
                  sltiu      a1, t6, -337
                  c.slli     s1, 7
                  bltu       s4, s9, 299f
                  rem        a6, s11, s0
                  mulhu      t2, s4, a7
                  andi       a2, zero, 221
                  slli       t6, t1, 8
                  nop
                  mul        tp, sp, zero
                  mulh       a1, a2, a2
                  csrrs      s9, 0x340, t3
                  remu       tp, s7, s0
                  bge        s11, t5, 305f
                  csrrsi     a5, 0x340, 2
                  c.xor      s0, a1
                  slli       s2, a3, 23
                  c.xor      a0, s0
299:              c.li       ra, 25
                  xori       ra, a7, -931
                  fence
                  c.or       s0, a1
                  mulhu      gp, a6, s5
                  mulhsu     t4, a0, t1
305:              srli       a4, s11, 12
                  bgeu       t5, zero, 309f
                  bgeu       s9, s1, 315f
                  mulhsu     s9, s3, a1
309:              c.srai     a5, 4
                  c.xor      a3, a5
                  sll        zero, a3, sp
                  c.nop
                  rem        a2, s5, gp
                  bge        a0, t5, 333f
315:              fence
                  srai       a4, a0, 1
                  slti       t2, s3, 425
                  csrrc      s3, 0x340, s3
                  sltu       a5, a7, a5
                  and        s2, zero, s2
                  c.and      s0, a2
                  beq        s6, s0, 330f
                  bltu       ra, t0, 335f
                  blt        t4, ra, 331f
                  c.li       a6, -1
                  mul        a0, a1, s4
                  sra        t0, t1, t0
                  divu       t4, a3, a4
                  sll        t0, a4, a5
330:              c.add      s0, s5
331:              bltu       a7, ra, 338f
                  mulhsu     s7, s4, t4
333:              sll        a4, t4, s7
                  fence
335:              slt        t1, zero, t1
                  bgeu       a5, s9, 338f
                  sll        t4, s3, zero
338:              bgeu       a2, s10, 347f
                  nop
                  auipc      tp, 900405
                  beq        t5, s2, 342f
342:              srai       gp, a4, 14
                  sll        t4, t3, t0
                  bge        t0, gp, 360f
                  bgeu       a0, s1, 364f
                  slli       s4, s0, 16
347:              c.srai     a1, 25
                  xori       s4, s3, -245
                  bne        a0, zero, 367f
                  remu       a3, a1, s3
                  andi       s11, ra, 756
                  lui        s10, 400354
                  csrrw      a0, 0x340, sp
                  csrrw      s9, 0x340, t2
                  mulhu      gp, t2, s1
                  sll        s3, s0, t3
                  bne        zero, a1, 373f
                  c.lui      a6, 10
                  andi       a1, s10, -303
360:              c.and      s0, a1
                  c.nop
                  csrrci     s4, 0x340, 31
                  nop
364:              slli       s9, s11, 8
                  srli       s6, t0, 6
                  andi       a5, a5, 715
367:              c.sub      s0, a3
                  fence
                  mul        a4, s5, s8
                  c.addi     s8, -1
                  rem        a4, t3, a5
                  c.nop
373:              c.bnez     a0, 376f
                  c.bnez     a5, 380f
                  and        s4, s8, s7
376:              nop
                  srl        a0, a0, tp
                  and        a2, a5, s1
                  csrrc      t6, 0x340, s0
380:              c.sub      a4, s0
                  bltu       a4, s4, 389f
                  xor        a0, t4, s5
                  addi       s10, a4, -836
                  beq        a6, a2, 395f
                  csrrci     a2, 0x340, 13
                  sltu       s1, t1, zero
                  sra        a3, a4, a4
                  c.beqz     a3, 403f
389:              xori       s10, t2, 575
                  c.beqz     s1, 404f
                  sltiu      s2, t6, 32
                  add        t5, t1, a2
                  c.srli     s1, 13
                  c.and      a5, a3
395:              slti       t1, s2, -201
                  remu       tp, a7, s2
                  fence
                  sltu       a1, s8, gp
                  mulhu      s8, t1, a1
                  c.nop
                  sra        t1, s6, s8
                  c.beqz     a5, 404f
403:              c.xor      a3, a5
404:              csrrs      gp, 0x340, t0
                  c.sub      a0, a0
                  srai       t6, s5, 21
                  lui        t1, 156409
                  blt        s4, s0, 416f
                  sltu       ra, s9, a5
                  slti       a7, s4, -273
                  slti       a7, s3, -184
                  c.slli     s1, 18
                  csrrsi     zero, 0x340, 5
                  mul        a6, a2, s3
                  c.xor      s1, a3
416:              slli       a1, t3, 17
                  mul        tp, zero, a7
                  csrrsi     s3, 0x340, 18
                  xori       a1, s1, -322
                  div        s7, a4, s9
                  bne        s9, sp, 423f
                  c.nop
423:              c.xor      a0, s0
                  xori       zero, s11, 363
                  srai       s3, gp, 20
                  bgeu       s9, s6, 437f
                  or         a2, s9, gp
                  bltu       s6, s9, 436f
                  slli       gp, a1, 15
                  c.srai     a4, 26
                  or         s8, t4, s3
                  lui        gp, 714799
                  c.nop
                  c.nop
                  c.or       a3, s0
436:              c.xor      s1, a3
437:              beq        a5, a7, 448f
                  sltu       s10, s6, gp
                  xori       s8, a0, -512
                  csrrci     s8, 0x340, 14
                  mulh       a3, s10, t4
                  csrrsi     t2, 0x340, 10
                  c.bnez     a4, 458f
                  or         a2, s1, a6
                  sltiu      a0, s10, 600
                  mulh       t1, t5, t0
                  div        s1, a3, a0
448:              csrrci     s8, 0x340, 20
                  sll        t6, sp, tp
                  lui        t2, 609690
                  sra        s3, s2, s3
                  c.mv       s1, t5
                  c.nop
                  sub        s8, s3, s6
                  c.bnez     a3, 456f
456:              c.srai     s1, 8
                  srl        t2, gp, a2
458:              csrrs      s11, 0x340, s5
                  blt        sp, s4, 468f
                  or         a7, s4, t2
                  c.slli     a4, 9
                  c.mv       s8, a5
                  andi       t5, zero, 193
                  c.and      s0, a4
                  and        a1, s3, s1
                  auipc      s11, 561405
                  add        t4, s1, s0
468:              auipc      a1, 836227
                  c.add      t0, a6
                  c.sub      a2, a1
                  addi       a3, s6, 109
                  c.srai     a1, 10
                  fence.i
                  div        a4, s9, s1
                  c.xor      a5, a4
                  bne        a1, a4, 484f
                  c.mv       s3, s3
                  mul        s9, t4, t1
                  bne        s5, tp, 484f
                  lui        s0, 213045
                  c.srli     s1, 10
                  xor        s10, s8, s7
                  la         a4, sub_4
                  c.and      a2, a5
                  xor        a6, t5, s7
                  sub        zero, t4, a4
                  auipc      s11, 616642
                  c.addi     t0, -1
                  c.sub      a0, a5
                  bltu       t0, s10, j_sub_3_sub_4_6 #branch to jump instr
                  c.nop
                  srl        s7, sp, s7
                  srli       s11, a6, 16
j_sub_3_sub_4_6:  c.jalr     a4
                  srl        ra, s4, a4
                  xor        s7, a0, a4
484:              slti       zero, t1, -401
                  lw         ra, 4(sp)
                  srl        s3, s10, s9
                  addi       sp, sp, 64
                  sltu       a7, t0, s4
                  csrrs      a3, 0x340, s5
                  c.addi     a7, -1
                  srli       t0, s8, 14
                  c.li       s10, -1
                  fence.i
                  nop
1560:             c.jr x1
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

init_machine_mode:
                  li x12, 0xc1800
                  csrw 0x300, x12 # MSTATUS
                  li x12, 0x0
                  csrw 0x304, x12 # MIE
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
mmode_intr_vector_1:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_2:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_3:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_4:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_5:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_6:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_7:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_8:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_9:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_10:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_11:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_12:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_13:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_14:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_15:
                  csrrw x2, 0x340, x2
                  add x2, x21, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
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
                  add x2, x21, zero
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
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x12, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x12, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x12, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x12, x29, ecall_handler
                  li x29, 0x1
                  beq x12, x29, instr_fault_handler
                  li x29, 0x5
                  beq x12, x29, load_fault_handler
                  li x29, 0x7
                  beq x12, x29, store_fault_handler
                  li x29, 0xc
                  beq x12, x29, pt_fault_handler
                  li x29, 0xd
                  beq x12, x29, pt_fault_handler
                  li x29, 0xf
                  beq x12, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: jal x1, test_done 

ebreak_handler:   
                  csrr  x12, mepc
                  addi  x12, x12, 4
                  csrw  mepc, x12
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
                  add x21, x2, zero
                  csrrw x2, 0x340, x2
                  mret

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  j write_tohost
illegal_instr_handler:
                  csrr  x12, mepc
                  addi  x12, x12, 4
                  csrw  mepc, x12
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
                  add x21, x2, zero
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
                  add x21, x2, zero
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
                  add x21, x2, zero
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
                  add x21, x2, zero
                  csrrw x2, 0x340, x2
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
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
                  add x21, x2, zero
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
